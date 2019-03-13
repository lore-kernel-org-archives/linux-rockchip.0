From: Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: fix rk3328 rgmii high tx error rate
Date: Wed, 13 Mar 2019 18:45:36 +0000
Message-ID: <20190313184535.15759-1-pgwipeout@gmail.com>
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
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>, Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org, "Leonidas P . Papadakos" <papadakospan@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Resubmitting, after further research, review, comments, and suggestions.

Several rk3328 based boards experience high rgmii tx error rates.
This is due to several pins in the rk3328.dtsi rgmii pinmux that are
missing a defined pull strength setting.
This causes the pinmux driver to default to 2ma (bit mask 00).

These pins are only defined in the rk3328.dtsi, and are not listed in
the rk3328 specification.
The TRM only lists them as "Reserved"
(RK3328 TRM V1.1, 3.3.3 Detail Register Description, GRF_GPIO0B_IOMUX,
GRF_GPIO0C_IOMUX, GRF_GPIO0D_IOMUX).
However, removal of these pins from the rgmii pinmux definition causes
the interface to fail to transmit.

Also, the rgmii tx and rx pins defined in the dtsi are not consistent
with the rk3328 specification, with tx pins currently set to 12ma and
rx pins set to 2ma.

Fix this by setting tx pins to 8ma and the rx pins to 4ma, consistent
with the specification.
Defining the drive strength for the undefined pins eliminated the high
tx packet error rate observed under heavy data transfers.
Aligning the drive strength to the TRM values eliminated the occasional
packet retry errors under iperf3 testing.
This allows much higher data rates with no recorded tx errors.

Tested on the rk3328-roc-cc board.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 44 ++++++++++++------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 84f14b132e8f..c55a3f1a87ff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1642,50 +1642,50 @@
 			rgmiim1_pins: rgmiim1-pins {
 				rockchip,pins =
 					/* mac_txclk */
-					<1 RK_PB4 2 &pcfg_pull_none_12ma>,
+					<1 RK_PB4 2 &pcfg_pull_none_8ma>,
 					/* mac_rxclk */
-					<1 RK_PB5 2 &pcfg_pull_none_2ma>,
+					<1 RK_PB5 2 &pcfg_pull_none_4ma>,
 					/* mac_mdio */
-					<1 RK_PC3 2 &pcfg_pull_none_2ma>,
+					<1 RK_PC3 2 &pcfg_pull_none_4ma>,
 					/* mac_txen */
-					<1 RK_PD1 2 &pcfg_pull_none_12ma>,
+					<1 RK_PD1 2 &pcfg_pull_none_8ma>,
 					/* mac_clk */
-					<1 RK_PC5 2 &pcfg_pull_none_2ma>,
+					<1 RK_PC5 2 &pcfg_pull_none_4ma>,
 					/* mac_rxdv */
-					<1 RK_PC6 2 &pcfg_pull_none_2ma>,
+					<1 RK_PC6 2 &pcfg_pull_none_4ma>,
 					/* mac_mdc */
-					<1 RK_PC7 2 &pcfg_pull_none_2ma>,
+					<1 RK_PC7 2 &pcfg_pull_none_4ma>,
 					/* mac_rxd1 */
-					<1 RK_PB2 2 &pcfg_pull_none_2ma>,
+					<1 RK_PB2 2 &pcfg_pull_none_4ma>,
 					/* mac_rxd0 */
-					<1 RK_PB3 2 &pcfg_pull_none_2ma>,
+					<1 RK_PB3 2 &pcfg_pull_none_4ma>,
 					/* mac_txd1 */
-					<1 RK_PB0 2 &pcfg_pull_none_12ma>,
+					<1 RK_PB0 2 &pcfg_pull_none_8ma>,
 					/* mac_txd0 */
-					<1 RK_PB1 2 &pcfg_pull_none_12ma>,
+					<1 RK_PB1 2 &pcfg_pull_none_8ma>,
 					/* mac_rxd3 */
-					<1 RK_PB6 2 &pcfg_pull_none_2ma>,
+					<1 RK_PB6 2 &pcfg_pull_none_4ma>,
 					/* mac_rxd2 */
-					<1 RK_PB7 2 &pcfg_pull_none_2ma>,
+					<1 RK_PB7 2 &pcfg_pull_none_4ma>,
 					/* mac_txd3 */
-					<1 RK_PC0 2 &pcfg_pull_none_12ma>,
+					<1 RK_PC0 2 &pcfg_pull_none_8ma>,
 					/* mac_txd2 */
-					<1 RK_PC1 2 &pcfg_pull_none_12ma>,
+					<1 RK_PC1 2 &pcfg_pull_none_8ma>,
 
 					/* mac_txclk */
-					<0 RK_PB0 1 &pcfg_pull_none>,
+					<0 RK_PB0 1 &pcfg_pull_none_8ma>,
 					/* mac_txen */
-					<0 RK_PB4 1 &pcfg_pull_none>,
+					<0 RK_PB4 1 &pcfg_pull_none_8ma>,
 					/* mac_clk */
-					<0 RK_PD0 1 &pcfg_pull_none>,
+					<0 RK_PD0 1 &pcfg_pull_none_4ma>,
 					/* mac_txd1 */
-					<0 RK_PC0 1 &pcfg_pull_none>,
+					<0 RK_PC0 1 &pcfg_pull_none_8ma>,
 					/* mac_txd0 */
-					<0 RK_PC1 1 &pcfg_pull_none>,
+					<0 RK_PC1 1 &pcfg_pull_none_8ma>,
 					/* mac_txd3 */
-					<0 RK_PC7 1 &pcfg_pull_none>,
+					<0 RK_PC7 1 &pcfg_pull_none_8ma>,
 					/* mac_txd2 */
-					<0 RK_PC6 1 &pcfg_pull_none>;
+					<0 RK_PC6 1 &pcfg_pull_none_8ma>;
 			};
 
 			rmiim1_pins: rmiim1-pins {
-- 
2.20.1
