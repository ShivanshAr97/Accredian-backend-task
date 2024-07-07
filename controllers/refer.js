import { prismaClient } from "../index.js";

export const referCnt = async (req, res, next) => {
  try {
    const { name, email, referredBy } = req.body;
    if (referredBy) {
      const referrer = await prismaClient.user.findFirst({
        where: {
          name: referredBy,
        },
      });
      console.log({name,email,referredBy});
      console.log(referrer);
      //   if (referrer) {
      //     await prismaClient.referral.create({
      //       data: {
      //         referredToName: name,
      //         userId: referrer.id
      //       }
      //     });
      //   }
    }
    // res
    //   .status(201)
    //   .json({ message: "User created successfully", user: newUser });
  } catch (error) {
    next(error);
  }
};
