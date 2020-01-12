From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Subject: siimple-framebuffer rockchip persistent logo
Date: Sun, 12 Jan 2020 18:16:30 +0100
Message-ID: <CAOf5uwmPMRq4v9=5-Z=XLH7hATC-AhXQWthfy_uvYTXSo6V+CA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Kever Yang <kever.yang@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Cc: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, LKML <linux-kernel@vger.kernel.org>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Kever

Trying to have a persistent banner from uboot to linux-kernel. I'm
right now working on linux-rockchip kernel but I think that the
problem is even on mainline

+               framebuffer: framebuffer@7f800000 {
+                       compatible = "rockchip,simple-framebuffer",
+                                    "simple-framebuffer";
+                       reg = <0x7f800000 (1920 * 1080 * 4)>;
+                       width = <1920>;
+                       height = <1080>;
+                       stride = <(1920 * 4)>;
+                       format = "a8b8g8r8";
+                       clocks = <&cru  PCLK_HDMI_CTRL>, <&cru SCLK_HDMI_HDCP>,
+                                <&cru SRST_LCDC0_AXI>, <&cru
SRST_LCDC0_AHB>, <&cru SRST_LCDC0_DCLK>,
+                                <&cru ACLK_VOP0>, <&cru HCLK_VOP0>;
+                       status = "okay";
+               };

Seems that it get off before I reach the drm registration

[    2.077495] simple-framebuffer 7f800000.framebuffer: framebuffer at
0x7f800000, 0x7e9000 bytes, mapped to 0xf0900000
[    2.077519] simple-framebuffer 7f800000.framebuffer:
format=a8b8g8r8, mode=1920x1080x32, linelength=7680
[    2.161225] simple-framebuffer 7f800000.framebuffer: fb0: simplefb
registered!
[    3.433847] fb: switching to rockchip-drm-fb from simple

I don't find all the clocks and if those are the only think that I
need to stay on. Any suggestion?

Michael
