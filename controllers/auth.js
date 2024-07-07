import { compareSync, hashSync } from "bcrypt";
import { prismaClient } from "../index.js";
import jwt from "jsonwebtoken";

export const incNormalPage = async (req, res, next) => {
  try {
    const { name } = req.query; // Use req.query for GET request

    // Find the user who referred the given user
    let user = await prismaClient.user.findFirst({ where: { name } });
    console.log(user);
    // if (!user) {
    //   throw new Error("User not found");
    // }
    // let referrer = await prismaClient.user.findFirst({
    //   where: { name: user.referredBy },
    // });
    // if (!referrer) {
    //   throw new Error("Referrer not found");
    // }

    // // Update the referrer's incNormalPage count
    user = await prismaClient.user.update({
      where: { id: user.id },
      data: {
        incNormalPage: user.incNormalPage + 1,
      },
    });

    res.json({
      incNormalPage: user.incNormalPage,
      incVisitPage: user.incVisitPage,
    });
  } catch (error) {
    next(error);
  }
};

export const names=async(req,res,next)=>{
  try {
    const { name } = req.query; 

    let user = await prismaClient.user.findFirst({ where: { name } });
    // console.log(user);

    let user2 = await prismaClient.referral.findMany({ where: { userId:user.id } });
    console.log(user2.length);
    let ab=[]
    for (let index = 0; index < user2.length; index++) {
      console.log(user2[index].referredToName);
      ab.push(user2[index].referredToName)      
    }
    console.log(ab);
    res.send(ab)
  } catch (error) {
    next(error);
  }
}

export const incVisitPage = async (req, res, next) => {
  try {
    const { name } = req.query;

    let user = await prismaClient.user.findFirst({ where: { name } });
    // console.log(user);
    user = await prismaClient.user.update({
      where: { id: user.id },
      data: {
        incNormalPage: user.incNormalPage + 1,
        incVisitPage: user.incVisitPage + 1,
      },
    });

    res.json({
      incNormalPage: user.incNormalPage,
      incVisitPage: user.incVisitPage,
    });
  } catch (error) {
    next(error);
  }
};

export const login = async (req, res, next) => {
  try {
    const { email, password } = req.body;
    let user = await prismaClient.user.findFirst({ where: { email } });
    if (!user) {
      throw Error("User does not exist");
    }
    if (!compareSync(password, user.password)) {
      throw Error("Passwords don't match");
    }

    const token = jwt.sign(
      {
        userId: user.id,
      },
      process.env.JWT_SECRET
    );

    res.json({ user, token });
  } catch (error) {
    next(error);
  }
};

export const register = async (req, res, next) => {
  try {
    const { name, email, password, referredBy } = req.body;

    // Check if the user already exists
    let user = await prismaClient.user.findFirst({ where: { email } });
    if (user) {
      throw new Error("User already exists");
    }

    // Create the new user
    user = await prismaClient.user.create({
      data: {
        name,
        email,
        password: hashSync(password, 12), // Hash the password
        referredBy,
      },
    });

    // If there is a referrer, update their referredTo array
    if (referredBy) {
      const referrer = await prismaClient.user.findFirst({
        where: {
          name: referredBy,
        },
      });
      console.log(referrer);

      if (referrer) {
        await prismaClient.referral.create({
          data: {
            referredToName: name,
            userId: referrer.id,
          },
        });
      }
    }

    res.json(user); // Respond with the created user
  } catch (error) {
    next(error);
  }
};
