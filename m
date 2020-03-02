From: =?UTF-8?q?Myl=C3=A8ne=20Josserand?=
        <mylene.josserand@collabora.com>
Subject: [PATCH 0/2] ARM: Add Rockchip rk3288w support
Date: Mon,  2 Mar 2020 16:57:01 +0100
Message-ID: <20200302155703.278421-1-mylene.josserand@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-clk-owner@vger.kernel.org>
Sender: linux-clk-owner@vger.kernel.org
To: linux@armlinux.org.uk, heiko@sntech.de, mturquette@baylibre.com, sboyd@kernel.org
Cc: mylene.josserand@collabora.com, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-clk@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hello everyone,

This series adds the support for the Rockchip RK3288w which
is a revision of the RK3288. It is mostly the same SOC except
for, at least, one clock tree which is different. This difference
is only known by the BSP kernel repository [1].

Currently, the mainline kernel will not hang on rk3288w but it is
probably by "chance" because we got an issue on a lower kernel version.

According to Rockchip's U-Boot [2], the rk3288w can be detected using
the HDMI revision number (= 0x1A) in this version of the SOC.
Not to rely on U-Boot about the compatible, the patch 01 will handle
the detection of the HDMI version in the rockchip subsystem.

Let me know what you think!

Best regards,
Mylène Josserand

[1] https://github.com/rockchip-linux/kernel/blob/develop-4.4/drivers/clk/rockchip/clk-rk3288.c#L960..L964
[2] https://github.com/rockchip-linux/u-boot/blob/next-dev/arch/arm/mach-rockchip/rk3288/rk3288.c#L378..L388

Mylène Josserand (2):
  ARM: Rockchip: Handle rk3288/rk3288w revision
  clk: rockchip: rk3288: Handle clock tree for rk3288w

 arch/arm/mach-rockchip/rockchip.c | 45 +++++++++++++++++++++++++++++++
 drivers/clk/rockchip/clk-rk3288.c | 21 +++++++++++++--
 include/soc/rockchip/revision.h   | 22 +++++++++++++++
 3 files changed, 86 insertions(+), 2 deletions(-)
 create mode 100644 include/soc/rockchip/revision.h

-- 
2.25.1
