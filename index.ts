import Discord from "discord.js";
import process from "process";

const client = new Discord.Client();

client.on("ready", () => {
  console.log(`Logged in as ${client.user.tag}!`);
});


const developers = "\
```\n\
mouse\n\
ato lash\n\
...\n\
```\
"

client.on("message", message => {
  if (message.content === "sandbox-dev") {
    message.reply(developers);
  }
});

client.login(process.env["DISCORD_BOT_TOKEN"]);
