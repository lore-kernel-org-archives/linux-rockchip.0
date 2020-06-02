From: Emil Velikov <emil.l.velikov@gmail.com>
Subject: Re: [PATCH 1/7] drm/rockchip: prepare common code for cdns and rk
 dpi/dp driver
Date: Tue, 2 Jun 2020 14:55:52 +0100
Message-ID: <CACvgo52NeUSQV5p8+4DkCjpkv12cs8fCkQqy4MFn8pVaorVaHg@mail.gmail.com>
References: <cover.1590982881.git.Sandor.yu@nxp.com> <d3d707cf37e7928a839071242c752779061cc094.1590982881.git.Sandor.yu@nxp.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <d3d707cf37e7928a839071242c752779061cc094.1590982881.git.Sandor.yu@nxp.com>
Sender: linux-kernel-owner@vger.kernel.org
To: sandor.yu@nxp.com
Cc: Andrzej Hajda <a.hajda@samsung.com>, Neil Armstrong <narmstrong@baylibre.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, dkos@cadence.com, ML dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>, LAKML <linux-arm-kernel@lists.infradead.org>, NXP Linux Team <linux-imx@nxp.com>
List-Id: linux-rockchip.vger.kernel.org

HI Sandor Yu

On Mon, 1 Jun 2020 at 07:29, <sandor.yu@nxp.com> wrote:
>
> From: Sandor Yu <Sandor.yu@nxp.com>
>
> - Extracted common fields from cdn_dp_device to a new cdns_mhdp_device
>   structure which will be used by two separate drivers later on.
> - Moved some datatypes (audio_format, audio_info, vic_pxl_encoding_format,
>   video_info) from cdn-dp-core.c to cdn-dp-reg.h.
> - Changed prefixes from cdn_dp to cdns_mhdp
>     cdn -> cdns to match the other Cadence's drivers
>     dp -> mhdp to distinguish it from a "just a DP" as the IP underneath
>       this registers map can be a HDMI (which is internally different,
>       but the interface for commands, events is pretty much the same).
> - Modified cdn-dp-core.c to use the new driver structure and new function
>   names.
> - writel and readl are replaced by cdns_mhdp_bus_write and
>   cdns_mhdp_bus_read.
>
The high-level idea is great - split, refactor and reuse the existing drivers.

Although looking at the patches themselves - they seems to be doing
multiple things at once.
As indicated by the extensive list in the commit log.

I would suggest splitting those up a bit, roughly in line of the
itemisation as per the commit message.

Here is one hand wavy way to chunk this patch:
 1) use put_unalligned*
 2) 'use local variable dev' style of changes (as seem in cdn_dp_clk_enable)
 3) add writel/readl wrappers
 4) hookup struct cdns_mhdp_device, keep dp->mhdp detail internal.
The cdn-dp-reg.h function names/signatures will stay the same.
 5) finalize the helpers - use mhdp directly, rename

HTH
Emil

Examples:
4)
 static int cdn_dp_mailbox_read(struct cdn_dp_device *dp)
 {
+"  struct cdns_mhdp_device *mhdp = dp->mhdp;
   int val, ret;

-  ret = readx_poll_timeout(readl, dp->regs + MAILBOX_EMPTY_ADDR,
+  ret = readx_poll_timeout(readl, mhdp->regs_base + MAILBOX_EMPTY_ADDR,
...
   return fancy_readl(dp, MAILBOX0_RD_DATA) & 0xff;
 }

5)
-static int cdn_dp_mailbox_read(struct cdn_dp_device *dp)
+static int mhdp_mailbox_read(struct cdns_mhdp_device *mhdp)
 {
-  struct cdns_mhdp_device *mhdp = dp->mhdp;
   int val, ret;
...
-  return fancy_readl(dp, MAILBOX0_RD_DATA) & 0xff;
+  return cdns_mhdp_bus_read(mhdp, MAILBOX0_RD_DATA) & 0xff;
 }
