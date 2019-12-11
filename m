From: Soeren Moch <smoch-S0/GAf8tV78@public.gmane.org>
Subject: [PATCH v2 6/9] brcmfmac: add RSDB condition when setting interface
 combinations
Date: Thu, 12 Dec 2019 00:52:50 +0100
Message-ID: <20191211235253.2539-7-smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191211235253.2539-1-smoch-S0/GAf8tV78@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: brcm80211-dev-list.pdl-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, Arend van Spriel <arend.vanspriel-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Chi-Hsien Lin <chi-hsien.lin-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Hante Meuleman <hante.meuleman-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Soeren Moch <smoch-S0/GAf8tV78@public.gmane.org>, Wright Feng <wright.feng-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, brcm80211-dev-list-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Franky Lin <franky.lin-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Wright Feng <wright.feng-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>

With firmware RSDB feature
1. The maximum support interface is four.
2. The maximum difference channel is two.
3. The maximum interfaces of {station/p2p client/AP} are two.
4. The maximum interface of p2p device is one.

Signed-off-by: Wright Feng <wright.feng-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>
Signed-off-by: Soeren Moch <smoch-S0/GAf8tV78@public.gmane.org>
Reviewed-by: Chi-Hsien Lin <chi-hsien.lin-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>
---
changes in v2:
- add missing s-o-b
- add review tag received for v1

Cc: Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Arend van Spriel <arend.vanspriel-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Cc: Franky Lin <franky.lin-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Cc: Hante Meuleman <hante.meuleman-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Cc: Chi-Hsien Lin <chi-hsien.lin-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>
Cc: Wright Feng <wright.feng-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>
Cc: linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: brcm80211-dev-list.pdl-dY08KVG/lbpWk0Htik3J/w@public.gmane.org
Cc: brcm80211-dev-list-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org
Cc: netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
---
 .../broadcom/brcm80211/brcmfmac/cfg80211.c    | 54 ++++++++++++++++---
 1 file changed, 46 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
index 0cf13cea1dbe..9d9dc9195e9e 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
@@ -6520,6 +6520,9 @@ brcmf_txrx_stypes[NUM_NL80211_IFTYPES] = {
  *	#STA <= 1, #AP <= 1, channels = 1, 2 total
  *	#AP <= 4, matching BI, channels = 1, 4 total
  *
+ * no p2p and rsdb:
+ *	#STA <= 2, #AP <= 2, channels = 2, 4 total
+ *
  * p2p, no mchan, and mbss:
  *
  *	#STA <= 1, #P2P-DEV <= 1, #{P2P-CL, P2P-GO} <= 1, channels = 1, 3 total
@@ -6531,6 +6534,10 @@ brcmf_txrx_stypes[NUM_NL80211_IFTYPES] = {
  *	#STA <= 1, #P2P-DEV <= 1, #{P2P-CL, P2P-GO} <= 1, channels = 2, 3 total
  *	#STA <= 1, #P2P-DEV <= 1, #AP <= 1, #P2P-CL <= 1, channels = 1, 4 total
  *	#AP <= 4, matching BI, channels = 1, 4 total
+ *
+ * p2p, rsdb, and no mbss:
+ *	#STA <= 2, #P2P-DEV <= 1, #{P2P-CL, P2P-GO} <= 2, AP <= 2,
+ *	 channels = 2, 4 total
  */
 static int brcmf_setup_ifmodes(struct wiphy *wiphy, struct brcmf_if *ifp)
 {
@@ -6538,13 +6545,14 @@ static int brcmf_setup_ifmodes(struct wiphy *wiphy, struct brcmf_if *ifp)
 	struct ieee80211_iface_limit *c0_limits = NULL;
 	struct ieee80211_iface_limit *p2p_limits = NULL;
 	struct ieee80211_iface_limit *mbss_limits = NULL;
-	bool mbss, p2p;
+	bool mbss, p2p, rsdb;
 	int i, c, n_combos;

 	mbss = brcmf_feat_is_enabled(ifp, BRCMF_FEAT_MBSS);
 	p2p = brcmf_feat_is_enabled(ifp, BRCMF_FEAT_P2P);
+	rsdb = brcmf_feat_is_enabled(ifp, BRCMF_FEAT_RSDB);

-	n_combos = 1 + !!p2p + !!mbss;
+	n_combos = 1 + !!(p2p && !rsdb) + !!mbss;
 	combo = kcalloc(n_combos, sizeof(*combo), GFP_KERNEL);
 	if (!combo)
 		goto err;
@@ -6555,16 +6563,36 @@ static int brcmf_setup_ifmodes(struct wiphy *wiphy, struct brcmf_if *ifp)

 	c = 0;
 	i = 0;
-	c0_limits = kcalloc(p2p ? 3 : 2, sizeof(*c0_limits), GFP_KERNEL);
+	if (p2p && rsdb)
+		c0_limits = kcalloc(4, sizeof(*c0_limits), GFP_KERNEL);
+	else if (p2p)
+		c0_limits = kcalloc(3, sizeof(*c0_limits), GFP_KERNEL);
+	else
+		c0_limits = kcalloc(2, sizeof(*c0_limits), GFP_KERNEL);
 	if (!c0_limits)
 		goto err;
-	c0_limits[i].max = 1;
-	c0_limits[i++].types = BIT(NL80211_IFTYPE_STATION);
-	if (p2p) {
+	if (p2p && rsdb) {
+		combo[c].num_different_channels = 2;
+		wiphy->interface_modes |= BIT(NL80211_IFTYPE_P2P_CLIENT) |
+					  BIT(NL80211_IFTYPE_P2P_GO) |
+					  BIT(NL80211_IFTYPE_P2P_DEVICE);
+		c0_limits[i].max = 2;
+		c0_limits[i++].types = BIT(NL80211_IFTYPE_STATION);
+		c0_limits[i].max = 1;
+		c0_limits[i++].types = BIT(NL80211_IFTYPE_P2P_DEVICE);
+		c0_limits[i].max = 2;
+		c0_limits[i++].types = BIT(NL80211_IFTYPE_P2P_CLIENT) |
+				       BIT(NL80211_IFTYPE_P2P_GO);
+		c0_limits[i].max = 2;
+		c0_limits[i++].types = BIT(NL80211_IFTYPE_AP);
+		combo[c].max_interfaces = 5;
+	} else if (p2p) {
 		if (brcmf_feat_is_enabled(ifp, BRCMF_FEAT_MCHAN))
 			combo[c].num_different_channels = 2;
 		else
 			combo[c].num_different_channels = 1;
+		c0_limits[i].max = 1;
+		c0_limits[i++].types = BIT(NL80211_IFTYPE_STATION);
 		wiphy->interface_modes |= BIT(NL80211_IFTYPE_P2P_CLIENT) |
 					  BIT(NL80211_IFTYPE_P2P_GO) |
 					  BIT(NL80211_IFTYPE_P2P_DEVICE);
@@ -6573,16 +6601,26 @@ static int brcmf_setup_ifmodes(struct wiphy *wiphy, struct brcmf_if *ifp)
 		c0_limits[i].max = 1;
 		c0_limits[i++].types = BIT(NL80211_IFTYPE_P2P_CLIENT) |
 				       BIT(NL80211_IFTYPE_P2P_GO);
+		combo[c].max_interfaces = i;
+	} else if (rsdb) {
+		combo[c].num_different_channels = 2;
+		c0_limits[i].max = 2;
+		c0_limits[i++].types = BIT(NL80211_IFTYPE_STATION);
+		c0_limits[i].max = 2;
+		c0_limits[i++].types = BIT(NL80211_IFTYPE_AP);
+		combo[c].max_interfaces = 3;
 	} else {
 		combo[c].num_different_channels = 1;
 		c0_limits[i].max = 1;
+		c0_limits[i++].types = BIT(NL80211_IFTYPE_STATION);
+		c0_limits[i].max = 1;
 		c0_limits[i++].types = BIT(NL80211_IFTYPE_AP);
+		combo[c].max_interfaces = i;
 	}
-	combo[c].max_interfaces = i;
 	combo[c].n_limits = i;
 	combo[c].limits = c0_limits;

-	if (p2p) {
+	if (p2p && !rsdb) {
 		c++;
 		i = 0;
 		p2p_limits = kcalloc(4, sizeof(*p2p_limits), GFP_KERNEL);
--
2.17.1
