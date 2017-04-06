From: Your Name <you@example.com>
Subject: [PATCH v4 09/12] drm/rockchip: analogix_dp: Disable clock when
 unbinding
Date: Thu,  6 Apr 2017 20:22:20 +0800
Message-ID: <1491481343-11025-10-git-send-email-you@example.com>
References: <1491481343-11025-1-git-send-email-you@example.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1491481343-11025-1-git-send-email-you@example.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-kernel@vger.kernel.org
Cc: Jeffy Chen <jeffy.chen@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Your Name <you@example.com>, briannorris@chromium.org, dianders@chromium.org, dri-devel@lists.freedesktop.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, zyw@rock-chips.com, linux-arm-kernel@lists.infradead.org, mark.yao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

From: Jeffy Chen <jeffy.chen@rock-chips.com>

The clock is enabled when binding cdn dp.

Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
Signed-off-by: Your Name <you@example.com>
---

Changes in v4: None
Changes in v3: None
Changes in v2: None

 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 91ebe5c..c3b9f1d 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -417,7 +417,8 @@ static void rockchip_dp_unbind(struct device *dev, struct device *master,
 
 	rockchip_drm_psr_unregister(&dp->encoder);
 
-	return analogix_dp_unbind(dev, master, data);
+	analogix_dp_unbind(dev, master, data);
+	clk_disable_unprepare(dp->pclk);
 }
 
 static const struct component_ops rockchip_dp_component_ops = {
-- 
2.1.4
