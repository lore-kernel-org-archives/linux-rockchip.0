From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 02/18] ram: rk3399: Clear PI_175 interrupts in data training
Date: Mon, 15 Jul 2019 23:58:40 +0530
Message-ID: <20190715182856.21688-3-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190715182856.21688-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Clear the PI_175 interrupts before processing actual
data training in all relevant calls.

This would help to clear interrupt from previous training.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index e9c0fdf2d4..fe26144f27 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -627,6 +627,9 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 	u32 obs_0, obs_1, obs_2, obs_err = 0;
 	u32 rank = params->ch[channel].cap_info.rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
@@ -681,6 +684,9 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
 	u32 rank = params->ch[channel].cap_info.rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
@@ -740,6 +746,9 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
 	u32 rank = params->ch[channel].cap_info.rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
@@ -799,6 +808,9 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 	u32 i, tmp;
 	u32 rank = params->ch[channel].cap_info.rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
@@ -844,6 +856,9 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 	u32 i, tmp;
 	u32 rank = params->ch[channel].cap_info.rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
-- 
2.18.0.321.gffc6fa0e3
