From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH] pstore/ram: Improve backward compatibility with older Chromebooks
Date: Mon, 6 May 2019 14:40:40 -0700
Message-ID: <CA+ASDXOkHxYumCBv-T0gxTjdMVTu-c=33Lk-0TUgJ3WGUn2DVQ@mail.gmail.com>
References: <20190503174730.245762-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190503174730.245762-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Kees Cook <keescook@chromium.org>, Anton Vorontsov <anton@enomsg.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, Guenter Roeck <groeck@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, Colin Cross <ccross@android.com>, Tony Luck <tony.luck@intel.com>, Linux Kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, May 3, 2019 at 10:48 AM Douglas Anderson <dianders@chromium.org> wrote:
> When you try to run an upstream kernel on an old ARM-based Chromebook
> you'll find that console-ramoops doesn't work.

Ooh, nice! I still get annoyed by old depthcharge firmware. It's
almost as if we should have gotten an upstream binding approved before
baking it into firmware...

> --- a/fs/pstore/ram.c
> +++ b/fs/pstore/ram.c

> @@ -703,6 +704,23 @@ static int ramoops_parse_dt(struct platform_device *pdev,
>
>  #undef parse_size
>
> +       /*
> +        * Some old Chromebooks relied on the kernel setting the console_size
> +        * and pmsg_size to the record size since that's what the downstream
> +        * kernel did.  These same Chromebooks had "ramoops" straight under
> +        * the root node which isn't according to the upstream bindings.

The last part of the sentence technically isn't true -- the original
bindings (notably, with no DT maintainer Reviewed-by) didn't specify
where such a node should be found:

35da60941e44 pstore/ram: add Device Tree bindings

so child-of-root used to be a valid location. But anyway, this code is
just part of a heuristic for "old DT" (where later bindings clarified
this), so it still seems valid.

>  Let's
> +        * make those old Chromebooks work by detecting this and mimicing the

s/mimicing/mimicking/

> +        * expected behavior.
> +        */
> +       parent_node = of_get_parent(of_node);
> +       if (of_node_is_root(parent_node) &&
> +           !pdata->console_size && !pdata->ftrace_size &&
> +           !pdata->pmsg_size && !pdata->ecc_info.ecc_size) {
> +               pdata->console_size = pdata->record_size;
> +               pdata->pmsg_size = pdata->record_size;
> +       }
> +       of_node_put(parent_node);
> +
>         return 0;
>  }
>

Otherwise, looks good to me:

Reviewed-by: Brian Norris <briannorris@chromium.org>
