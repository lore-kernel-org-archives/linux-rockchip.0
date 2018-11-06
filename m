From: Damian Kos <dkos@cadence.com>
Subject: [PATCH] drm/rockchip: fix for mailbox read size
Date: Tue, 6 Nov 2018 15:37:05 +0000
Message-ID: <1541518625-25984-1-git-send-email-dkos@cadence.com>
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
To: Chris Zhong <zyw@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Damian Kos <dkos@cadence.com>
List-Id: linux-rockchip.vger.kernel.org

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

Signed-off-by: Damian Kos <dkos@cadence.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-reg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-reg.c b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
index 3105965fc260..5a485489a1e2 100644
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
2.17.1
