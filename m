From: Otavio Salvador <otavio@ossystems.com.br>
Subject: [PATCH 01/13] ARM: multi_v7_defconfig: Select PHY_ROCKCHIP_INNO_USB2
Date: Sun, 25 Nov 2018 19:18:55 -0200
Message-ID: <20181125211907.9895-1-otavio@ossystems.com.br>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Otavio Salvador <otavio@ossystems.com.br>, =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>, Arnd Bergmann <arnd@arndb.de>, Eric Anholt <eric@anholt.net>, Alexandre Torgue <alexandre.torgue@st.com>, Stefan Wahren <stefan.wahren@i2se.com>, Stefan Agner <stefan@agner.ch>, Tony Lindgren <tony@atomide.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Olof Johansson <olof@lixom.net>, Russell King <linux@armlinux.org.uk>, Simon Horman <horms+renesas@verge.net.au>
List-Id: linux-rockchip.vger.kernel.org

Select the CONFIG_PHY_ROCKCHIP_INNO_USB2 option by default, so that
USB can be functional on RV1108.

Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
---

 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 63af6234c1b6..a8ec309d182a 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -947,6 +947,7 @@ CONFIG_PHY_CPCAP_USB=m
 CONFIG_PHY_QCOM_APQ8064_SATA=m
 CONFIG_PHY_RCAR_GEN2=m
 CONFIG_PHY_ROCKCHIP_DP=m
+CONFIG_PHY_ROCKCHIP_INNO_USB2=y
 CONFIG_PHY_ROCKCHIP_USB=y
 CONFIG_PHY_SAMSUNG_USB2=m
 CONFIG_PHY_MIPHY28LP=y
-- 
2.19.1
