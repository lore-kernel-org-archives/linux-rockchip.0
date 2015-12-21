From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko.stuebner@collabora.com>
Subject: [PATCH 1/3] ARM: multi_v7_defconfig: enable Rockchip io-domain driver
Date: Mon, 21 Dec 2015 22:21:14 +0100
Message-ID: <2111669.2aeXLpXsWE@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: arm@kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The io-domain driver is necessary to notify the soc about voltages changes
happening on supplying regulators. Probably the most important user right
now is the mmc tuning code, where the soc needs to get notified when the
voltage is dropped to the 1.8V point.

As this option is necessary to sucessfully tune UHS cards etc, it should
get built in.

Signed-off-by: Heiko Stuebner <heiko.stuebner@collabora.com>
---
When booting a Veyron-Jerry from an sd-card it got stuck, as the tuning
failed due to the missing voltage notification and the mmc completely
fails initialization of the card, if this happens.
With this option enabled, I could again boot from my sd-card.

This is based on the 

 arch/arm/configs/multi_v7_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 69a22fd..be57898 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -371,6 +371,8 @@ CONFIG_POWER_RESET_GPIO=y
 CONFIG_POWER_RESET_GPIO_RESTART=y
 CONFIG_POWER_RESET_KEYSTONE=y
 CONFIG_POWER_RESET_RMOBILE=y
+CONFIG_POWER_AVS=y
+CONFIG_ROCKCHIP_IODOMAIN=y
 CONFIG_SENSORS_LM90=y
 CONFIG_SENSORS_LM95245=y
 CONFIG_SENSORS_NTC_THERMISTOR=m
-- 
2.6.4
