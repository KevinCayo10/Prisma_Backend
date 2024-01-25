import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  // const newUser = await prisma.user.create({
  //   data: {
  //     name: "Rafael",
  //     email: "Rafael2002@gmail.com",
  //   },
  // });
  // console.log(newUser);
  // const listUser = await prisma.user.findMany();
  // console.log(listUser);
  // const updateUser = await prisma.user.updateMany({
  //   where: {
  //     name: "Rafael",
  //   },
  //   data: {
  //     lastname: "Plua",
  //   },
  // });
  // console.log(updateUser);
  /*
  const userDelete = await prisma.user.delete({
    where: {
      id: 1,
    },
  });
*/
  // console.log(userDelete);
  // const deleteMany = await prisma.user.deleteMany({
  //   where: {
  //     name: "Rafael",
  //   },
  // });
  // console.log(deleteMany);
  // const resultUpsert = await prisma.user.upsert({
  //   where: { email: "darwin@gmail.com" },
  //   create: { name: "Darwin", email: "darwin@gmail.com" },
  //   update: { lastname: "Melano" },
  // });
  // const listUser = await prisma.user.findMany();
  // console.log(listUser);
  // const newUser = await prisma.user.create({
  //   data: {
  //     name: "Dalton",
  //     email: "Dalton@gmail.com",
  //   },
  // });
  // const post = await prisma.post.create({
  //   data: {
  //     title: "Prisma ORM",
  //     content: "My first post",
  //     authorId: newUser.id,
  //   },
  // });
  // console.log(post);
  // const newUser = await prisma.user.create({
  //   data: {
  //     name: "Mario",
  //     email: "mario@gmail.com",
  //     posts: {
  //       create: {
  //         title: "Tutorial Prisma ORM",
  //         content: "Description tutorial prisma orm",
  //       },
  //     },
  //   },
  // });
  // console.log(newUser);
  // const infoPost = await prisma.post.findMany();
  // console.log(infoPost);

  const users = await prisma.user.findMany({
    include: {
      posts: true,
    },
  });
  users.forEach((user) => {
    console.log("NAME : ", user.name);
    user.posts.forEach((post) => {
      console.log("POST TITLE : ", post.title);
    });
  });
}

main();
