package com.winworldpc.winbot.Commands.commands.Miscellaneous;


import com.winworldpc.winbot.Commands.CommandContext;
import com.winworldpc.winbot.Config;
import com.winworldpc.winbot.Interfaces.ICommand;
import net.dv8tion.jda.api.entities.TextChannel;

import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

public class DiceCommand implements ICommand {
    @Override
    public void handle(CommandContext ctx) {
        int sides = 6;
        int dices = 1;
        TextChannel channel = ctx.getChannel();
        List<String> args = ctx.getArgs();
        if(!args.isEmpty()){
            sides = Integer.parseInt(args.get(0));

            if(args.size() > 1){
                dices = Integer.parseInt(args.get(1));
            }
        }

        if(sides > 100){
            channel.sendMessage("The maximum sides is 100").queue();

            return;
        }

        if(dices > 20){
            channel.sendMessage("The maximum dices is 20").queue();

            return;
        }

        ThreadLocalRandom random = ThreadLocalRandom.current();
        StringBuilder builder = new StringBuilder()
                .append("Results:\n");

        for(int d = 0; d <dices; ++d){
            builder.append("\uD83C\uDFB2 #")
                    .append(d)
                    .append(": **")
                    .append(random.nextInt(1, sides))
                    .append("**\n");
        }

        channel.sendMessage(builder.toString()).queue();
    }

    @Override
    public String getName() {
        return "dice";
    }

    @Override
    public String getCategory() {
        return "Miscellaneous";
    }

    @Override
    public String getHelp() {
        return "Rolls a dice.\n" +
                "Usage: `" + Config.PREFIX + getName() + "[sides] [dices]";
    }
}
