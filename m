From: sunil@amarulasolutions.com
Subject: [PATCH] arm64: defconfig: Enable REGULATOR_MP8859
Date: Thu, 20 Feb 2020 18:57:39 +0530
Message-ID: <1582205259-15274-1-git-send-email-sunil@amarulasolutions.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>, Markus Reichl <m.reichl@fivetechno.de>
List-Id: linux-rockchip.vger.kernel.org

From: Jagan Teki <jagan@amarulasolutions.com>

RK3399 boards like ROC-RK3399-PC is using MP8859 DC/DC converter
for 12V supply.

roc-rk3399-pc initially used 12V fixed regulator for this supply,
but the below commit has switched to use MP8859.

commit <1fc61ed04d309b0b8b3562acf701ab988eee12de> "arm64: dts: rockchip:
Enable mp8859 regulator on rk3399-roc-pc"

So, enable bydefault on the defconfig.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Cc: Markus Reichl <m.reichl@fivetechno.de>
Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
Note:
This change set is applied on top of linux-rockchip, branch v5.7-armsoc/dts64.
(git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git -b v5.7-armsoc/dts64)
This change set was tested on ROC-RK3399-PC, an rk3399 based target.
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0f21288..973a493 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -505,6 +505,7 @@ CONFIG_REGULATOR_QCOM_RPMH=y
 CONFIG_REGULATOR_QCOM_SMD_RPM=y
 CONFIG_REGULATOR_QCOM_SPMI=y
 CONFIG_REGULATOR_RK808=y
+CONFIG_REGULATOR_MP8859=y
 CONFIG_REGULATOR_S2MPS11=y
 CONFIG_REGULATOR_VCTRL=m
 CONFIG_RC_CORE=m
-- 
2.7.4
