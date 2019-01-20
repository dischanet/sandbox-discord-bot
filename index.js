const Discord = require("discord.js");
const process = require("process");

const client = new Discord.Client();

client.on("ready", () => {
  console.log(`Logged in as ${client.user.tag}!`);
});

const developers =
  "\
```\n\
discha公式ボットは以下のデベロッパーの協力で作成されました\n\
mouse\n\
ato lash\n\
...\n\
```\
";

client.on("message", message => {
  if (message.content === "sandbox-dev") {
    message.reply(developers);
  }
});

client.login(process.env["DISCORD_BOT_TOKEN"]);
