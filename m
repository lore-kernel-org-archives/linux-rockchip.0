From: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v2] pstore/ram: Improve backward compatibility with older Chromebooks
Date: Wed, 8 May 2019 11:10:03 -0700
Message-ID: <CAGXu5jLhmvRbZOhNPkGr9=oSn-aA1CempctTyM3hfW3uOf8DpQ@mail.gmail.com>
References: <20190508154832.241525-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190508154832.241525-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Kees Cook <keescook@chromium.org>, Anton Vorontsov <anton@enomsg.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Brian Norris <briannorris@chromium.org>, Guenter Roeck <groeck@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, Frank Rowand <frowand.list@gmail.com>, Julius Werner <jwerner@chromium.org>, Rob Herring <robh+dt@kernel.org>, Colin Cross <ccross@android.com>, Tony Luck <tony.luck@intel.com>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, May 8, 2019 at 8:49 AM Douglas Anderson <dianders@chromium.org> wrote:
> When you try to run an upstream kernel on an old ARM-based Chromebook
> you'll find that console-ramoops doesn't work.
>
> Old ARM-based Chromebooks, before <https://crrev.com/c/439792>
> ("ramoops: support upstream {console,pmsg,ftrace}-size properties")
> used to create a "ramoops" node at the top level that looked like:
>
> / {
>   ramoops {
>     compatible = "ramoops";
>     reg = <...>;
>     record-size = <...>;
>     dump-oops;
>   };
> };
>
> ...and these Chromebooks assumed that the downstream kernel would make
> console_size / pmsg_size match the record size.  The above ramoops
> node was added by the firmware so it's not easy to make any changes.
>
> Let's match the expected behavior, but only for those using the old
> backward-compatible way of working where ramoops is right under the
> root node.
>
> NOTE: if there are some out-of-tree devices that had ramoops at the
> top level, left everything but the record size as 0, and somehow
> doesn't want this behavior, we can try to add more conditions here.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Thanks! I've applied this to my testing tree and I'll push to Linus in
a couple days.

-Kees

> ---
>
> Changes in v2:
> - s/mimicing/mimicking/ (Brian Norris)
> - Slight rewording of the comment (Brian Norris)
> - Check name rather than relying on of_node_is_root() (Frank Rowand)
>
>  fs/pstore/ram.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>
> diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
> index c5c685589e36..5195a3a3daec 100644
> --- a/fs/pstore/ram.c
> +++ b/fs/pstore/ram.c
> @@ -669,6 +669,7 @@ static int ramoops_parse_dt(struct platform_device *pdev,
>                             struct ramoops_platform_data *pdata)
>  {
>         struct device_node *of_node = pdev->dev.of_node;
> +       struct device_node *parent_node;
>         struct resource *res;
>         u32 value;
>         int ret;
> @@ -703,6 +704,26 @@ static int ramoops_parse_dt(struct platform_device *pdev,
>
>  #undef parse_size
>
> +       /*
> +        * Some old Chromebooks relied on the kernel setting the
> +        * console_size and pmsg_size to the record size since that's
> +        * what the downstream kernel did.  These same Chromebooks had
> +        * "ramoops" straight under the root node which isn't
> +        * according to the current upstream bindings (though it was
> +        * arguably acceptable under a prior version of the bindings).
> +        * Let's make those old Chromebooks work by detecting that
> +        * we're not a child of "reserved-memory" and mimicking the
> +        * expected behavior.
> +        */
> +       parent_node = of_get_parent(of_node);
> +       if (!of_node_name_eq(parent_node, "reserved-memory") &&
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
> --
> 2.21.0.1020.gf2820cf01a-goog
>
