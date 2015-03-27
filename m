From: Russell King <rmk+kernel-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>
Subject: [PATCH 3/3] drm: bridge/dw_hdmi: adjust n/cts setting order
Date: Fri, 27 Mar 2015 11:13:56 +0000
Message-ID: <E1YbSD6-0007z9-2B@rmk-PC.arm.linux.org.uk>
References: <20150327111320.GA4019@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20150327111320.GA4019-l+eeeJia6m9vn6HldHNs0ANdhmdF6hFW@public.gmane.org>
Content-Disposition: inline
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Fabio Estevam <fabio.estevam-KZfg59tc24xl57MIdRCFDg@public.gmane.org>, mmind00-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, djkurtz-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, marcheu-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Patch derived from one from Yakir Yang.  Yakir Yang says:
For Designerware HDMI, the following write sequence is recommended:
1. aud_n3 (set bit ncts_atomic_write if desired)
2. aud_cts3 (set CTS_manual and CTS value if desired/enabled)
3. aud_cts2 (required in CTS_manual)
4. aud_cts1 (required in CTS_manual)
5. aud_n3 (bit ncts_atomic_write with same value as in step 1.)
6. aud_n2
7. aud_n1

However, avoid the ncts_atomic_write_bit and CTS_manual settings in this
patch, both of which are marked reserved in the iMX6 documentation.  All
iMX6 code in the wild seems to want CTS_manual cleared.

Having requested clarification from FSL, it appears that neither of
these bits are implemented in their version of the IP.

Signed-off-by: Russell King <rmk+kernel-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>
---
 drivers/gpu/drm/bridge/dw_hdmi.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/bridge/dw_hdmi.c b/drivers/gpu/drm/bridge/dw_hdmi.c
index b75922d4901e..cca1c3d165e2 100644
--- a/drivers/gpu/drm/bridge/dw_hdmi.c
+++ b/drivers/gpu/drm/bridge/dw_hdmi.c
@@ -182,20 +182,20 @@ static void hdmi_mask_writeb(struct dw_hdmi *hdmi, u8 data, unsigned int reg,
 static void hdmi_set_cts_n(struct dw_hdmi *hdmi, unsigned int cts,
 			   unsigned int n)
 {
-	hdmi_writeb(hdmi, n & 0xff, HDMI_AUD_N1);
-	hdmi_writeb(hdmi, (n >> 8) & 0xff, HDMI_AUD_N2);
-	hdmi_writeb(hdmi, (n >> 16) & 0x0f, HDMI_AUD_N3);
+	/* Must be set/cleared first */
+	hdmi_modb(hdmi, 0, HDMI_AUD_CTS3_CTS_MANUAL, HDMI_AUD_CTS3);
 
 	/* nshift factor = 0 */
 	hdmi_modb(hdmi, 0, HDMI_AUD_CTS3_N_SHIFT_MASK, HDMI_AUD_CTS3);
 
-	/* Must be set/cleared first */
-	hdmi_modb(hdmi, 0, HDMI_AUD_CTS3_CTS_MANUAL, HDMI_AUD_CTS3);
-
-	hdmi_writeb(hdmi, cts & 0xff, HDMI_AUD_CTS1);
-	hdmi_writeb(hdmi, (cts >> 8) & 0xff, HDMI_AUD_CTS2);
 	hdmi_writeb(hdmi, ((cts >> 16) & HDMI_AUD_CTS3_AUDCTS19_16_MASK) |
 		    HDMI_AUD_CTS3_CTS_MANUAL, HDMI_AUD_CTS3);
+	hdmi_writeb(hdmi, (cts >> 8) & 0xff, HDMI_AUD_CTS2);
+	hdmi_writeb(hdmi, cts & 0xff, HDMI_AUD_CTS1);
+
+	hdmi_writeb(hdmi, (n >> 16) & 0x0f, HDMI_AUD_N3);
+	hdmi_writeb(hdmi, (n >> 8) & 0xff, HDMI_AUD_N2);
+	hdmi_writeb(hdmi, n & 0xff, HDMI_AUD_N1);
 }
 
 static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk,
-- 
1.8.3.1
