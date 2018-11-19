From: Damian Kos <dkos-vna1KIf7WgpBDgjK7y7TUQ@public.gmane.org>
Subject: [PATCH] drm/rockchip: fix for mailbox read validation.
Date: Mon, 19 Nov 2018 15:14:14 +0000
Message-ID: <1542640463-18332-1-git-send-email-dkos@cadence.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Sandy
 Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Damian Kos <dkos-vna1KIf7WgpBDgjK7y7TUQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

This is basically the same fix as in
commit fa68d4f8476b ("drm/rockchip: fix for mailbox read size")
but for cdn_dp_mailbox_validate_receive function.

See patchwork.kernel.org/patch/10671981/ for details.

Signed-off-by: Damian Kos <dkos-vna1KIf7WgpBDgjK7y7TUQ@public.gmane.org>
---
 drivers/gpu/drm/rockchip/cdn-dp-reg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-reg.c b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
index 5a485489a1e2..6c8b14fb1d2f 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-reg.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
@@ -113,7 +113,7 @@ static int cdp_dp_mailbox_write(struct cdn_dp_device *dp, u8 val)
 
 static int cdn_dp_mailbox_validate_receive(struct cdn_dp_device *dp,
 					   u8 module_id, u8 opcode,
-					   u8 req_size)
+					   u16 req_size)
 {
 	u32 mbox_size, i;
 	u8 header[4];
-- 
2.17.1
