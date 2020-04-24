From: Zheng Bin <zhengbin13@huawei.com>
Subject: [PATCH] drm/rockchip: Remove unneeded semicolon
Date: Fri, 24 Apr 2020 15:44:10 +0800
Message-ID: <20200424074410.1070-1-zhengbin13@huawei.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: hjc@rock-chips.com, heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: zhengbin13@huawei.com
List-Id: linux-rockchip.vger.kernel.org

Fixes coccicheck warning:

drivers/gpu/drm/rockchip/cdn-dp-reg.c:604:2-3: Unneeded semicolon
drivers/gpu/drm/rockchip/cdn-dp-reg.c:622:2-3: Unneeded semicolon
drivers/gpu/drm/rockchip/cdn-dp-reg.c:703:2-3: Unneeded semicolon

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Zheng Bin <zhengbin13@huawei.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-reg.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-reg.c b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
index 7361c07cb4a7..9d2163ef4d6e 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-reg.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
@@ -601,7 +601,7 @@ static int cdn_dp_get_msa_misc(struct video_info *video,
 	case YCBCR_4_2_0:
 		val[0] = 5;
 		break;
-	};
+	}

 	switch (video->color_depth) {
 	case 6:
@@ -619,7 +619,7 @@ static int cdn_dp_get_msa_misc(struct video_info *video,
 	case 16:
 		val[1] = 4;
 		break;
-	};
+	}

 	msa_misc = 2 * val[0] + 32 * val[1] +
 		   ((video->color_fmt == Y_ONLY) ? (1 << 14) : 0);
@@ -700,7 +700,7 @@ int cdn_dp_config_video(struct cdn_dp_device *dp)
 	case 16:
 		val = BCS_16;
 		break;
-	};
+	}

 	val += video->color_fmt << 8;
 	ret = cdn_dp_reg_write(dp, DP_FRAMER_PXL_REPR, val);
--
2.26.0.106.g9fadedd
