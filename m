From: Sasha Levin <sashal-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: [PATCH AUTOSEL 4.14 030/170] drm/rockchip: fix for mailbox read size
Date: Mon, 28 Jan 2019 11:09:40 -0500
Message-ID: <20190128161200.55107-30-sashal@kernel.org>
References: <20190128161200.55107-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190128161200.55107-1-sashal-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, stable-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Sasha Levin <sashal-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Damian Kos <dkos-vna1KIf7WgpBDgjK7y7TUQ@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Damian Kos <dkos-vna1KIf7WgpBDgjK7y7TUQ@public.gmane.org>

[ Upstream commit fa68d4f8476bea4cdf441062b614b41bb85ef1da ]

Some of the functions (like cdn_dp_dpcd_read, cdn_dp_get_edid_block)
allow to read 64KiB, but the cdn_dp_mailbox_read_receive, that is
used by them, can read only up to 255 bytes at once. Normally, it's
not a big issue as DPCD or EDID reads won't (hopefully) exceed that
value.
The real issue here is the revocation list read during the HDCP
authentication process. (problematic use case:
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-4.4/drivers/gpu/drm/rockchip/cdn-dp-reg.c#1152)
The list can reach 127*5+4 bytes (num devs * 5 bytes per ID/Bksv +
4 bytes of an additional info).
In other words - CTSes with HDCP Repeater won't pass without this
fix. Oh, and the driver will most likely stop working (best case
scenario).

Signed-off-by: Damian Kos <dkos-vna1KIf7WgpBDgjK7y7TUQ@public.gmane.org>
Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Link: https://patchwork.freedesktop.org/patch/msgid/1541518625-25984-1-git-send-email-dkos-vna1KIf7WgpBDgjK7y7TUQ@public.gmane.org
Signed-off-by: Sasha Levin <sashal-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
---
 drivers/gpu/drm/rockchip/cdn-dp-reg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-reg.c b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
index b14d211f6c21..0ed7e91471f6 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-reg.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
@@ -147,7 +147,7 @@ static int cdn_dp_mailbox_validate_receive(struct cdn_dp_device *dp,
 }
 
 static int cdn_dp_mailbox_read_receive(struct cdn_dp_device *dp,
-				       u8 *buff, u8 buff_size)
+				       u8 *buff, u16 buff_size)
 {
 	u32 i;
 	int ret;
-- 
2.19.1
