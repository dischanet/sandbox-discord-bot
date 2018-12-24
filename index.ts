import Discord from "discord.js";
import process from "process";

const client = new Discord.Client();

client.on("ready", () => {
  console.log(`Logged in as ${client.user.tag}!`);
});

client.on("message", message => {
  if (message.content === "ping") {
    message.reply("mouse!!!");
  }
});

client.login(process.env["DISCORD_BOT_TOKEN"]);
