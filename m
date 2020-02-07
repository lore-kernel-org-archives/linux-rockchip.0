From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Subject: Re: siimple-framebuffer rockchip persistent logo
Date: Fri, 7 Feb 2020 20:14:04 +0100
Message-ID: <CAOf5uwnRLn7tXFRxjPGASuCnmOwooA4Ytk28Zc+A0kp=UZDQWw@mail.gmail.com>
References: <CAOf5uwmPMRq4v9=5-Z=XLH7hATC-AhXQWthfy_uvYTXSo6V+CA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAOf5uwmPMRq4v9=5-Z=XLH7hATC-AhXQWthfy_uvYTXSo6V+CA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kever Yang <kever.yang@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Cc: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, LKML <linux-kernel@vger.kernel.org>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Hi all

I move a bit on this

On Sun, Jan 12, 2020 at 6:16 PM Michael Nazzareno Trimarchi
<michael@amarulasolutions.com> wrote:
>
> Hi Kever
>
> Trying to have a persistent banner from uboot to linux-kernel. I'm
> right now working on linux-rockchip kernel but I think that the
> problem is even on mainline
>
> +               framebuffer: framebuffer@7f800000 {
> +                       compatible = "rockchip,simple-framebuffer",
> +                                    "simple-framebuffer";
> +                       reg = <0x7f800000 (1920 * 1080 * 4)>;
> +                       width = <1920>;
> +                       height = <1080>;
> +                       stride = <(1920 * 4)>;
> +                       format = "a8b8g8r8";
> +                       clocks = <&cru  PCLK_HDMI_CTRL>, <&cru SCLK_HDMI_HDCP>,
> +                                <&cru SRST_LCDC0_AXI>, <&cru
> SRST_LCDC0_AHB>, <&cru SRST_LCDC0_DCLK>,
> +                                <&cru ACLK_VOP0>, <&cru HCLK_VOP0>;
> +                       status = "okay";
> +               };
>

Now I can allocate the parameter using the bootloader and create the
right mapping for the simple framebuffer. I don't even understand
how sunxi and meson can work if they don't create a reserved memory
using no-map. This is fixed on my side so the log is totally clean.
I have added the deregister of simple fb and handover to the drm

Now my boot parameters are:
Kernel command line: console=ttyS2,115200n8 root=/dev/mmcblk0p1
rootwait pd_ignore_unused clk_ignore_unused

Still I have display go off on tinker during boot. Any suggestion?

Michael


> Seems that it get off before I reach the drm registration
>
> [    2.077495] simple-framebuffer 7f800000.framebuffer: framebuffer at
> 0x7f800000, 0x7e9000 bytes, mapped to 0xf0900000
> [    2.077519] simple-framebuffer 7f800000.framebuffer:
> format=a8b8g8r8, mode=1920x1080x32, linelength=7680
> [    2.161225] simple-framebuffer 7f800000.framebuffer: fb0: simplefb
> registered!
> [    3.433847] fb: switching to rockchip-drm-fb from simple
>
> I don't find all the clocks and if those are the only think that I
> need to stay on. Any suggestion?
