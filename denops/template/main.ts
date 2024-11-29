import { Denops } from "jsr:@denops/std@7.4.0";
import { isString } from "jsr:@core/unknownutil@4.3.0";

export async function main(denops: Denops): Promise<void> {
  await denops.cmd(
    `command! -nargs=1 Hello call denops#notify("${denops.name}", "hello", [<f-args>])`,
  );

  denops.dispatcher = {
    async hello(arg: unknown): Promise<void> {
      if (isString(arg)) {
        console.log("hello", arg);
      }
      await Promise.resolve();
    },
  };
}
