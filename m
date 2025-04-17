Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8C10C369B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 07:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsUL/nodjo4BPpPGoblPaistfPMdyMFuYBGllu0p07w=; b=nABSDX6XPtj82r
	zLN0N+6YgCvMKPAen1NalG1N568oL5fIudskjhxKDch9TsV+TWFEWRo5mXvGtoB7ch9vD8mEAYEmX
	Qy8UepYWRFHE7OVVyMIYjBnU8VuxgOuv11vhqLm108RHVGAT6T8x4uWt/d9P5bIBr6WUpyx0rmz8z
	fGJv1Hcb5kSf9fqwjJL3WCYqbCz4vdGMOF2Cdi+4Ft+fnJCkuzFPQ7VrvRP5nsIaxXExFydxfxcMI
	9LCeHM+LdKVx1vsnif+nXhhp25nA9lW273RW26V8cSIWgZNbH4JmRtamPmtEyk9btrR9V0WGf0xp9
	Zkn5kYBcNPW24L1ob7hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5JFz-0000000C0dr-1X6X;
	Thu, 17 Apr 2025 07:01:55 +0000
Received: from p-west1-cluster3-host1-snip4-10.eps.apple.com ([57.103.66.123] helo=outbound.pv.icloud.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5JCV-0000000BzVF-2ev5
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Apr 2025 06:58:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=etehtsea.me; s=sig1;
	bh=2Ww4hpp+z6fgi+nJK6FyaJfCKTs87q137A6aiYcfvEc=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:x-icloud-hme;
	b=kRJLB/2rV6qKWhiRvYq1W/QRIhp8ThfVUSEGHb4sbhgLpFogsuV79f38wqoxC3nl+
	 N1ajnwRaBAa8fh546L8DmgWtTsTGrQvav5+FqGlUnCujhi1jYOgDmun5QphkvnjztC
	 NiIBQ0rdP5Q5l9FRQran2dkkW8Z7YOHPwtWh2j3J2N+WNA712vSB5bfaUwGCBgdG9z
	 OOS8xi97GDWJRP3bfQLWv/GjIb1BIZMwSR1mutQiLaS6B6TRl5dyxjJQUT9wt19qWl
	 Y5O2TLQLMf1dzqaxU8OpY39+3oEiYf15dpplEtI+VOvB5q0/iKCz+Q/YyMjHeDVdam
	 Op7XbW3b9j9aA==
Received: from localhost (pv-asmtp-me-k8s.p00.prod.me.com [17.56.9.36])
	by outbound.pv.icloud.com (Postfix) with ESMTPSA id 9762B18001FD;
	Thu, 17 Apr 2025 06:58:08 +0000 (UTC)
From: Konstantin Shabanov <mail@etehtsea.me>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: Konstantin Shabanov <mail@etehtsea.me>,
	Daniel Stone <daniel@fooishbar.org>,
	Andy Yan <andyshrk@163.com>,
	Dan Callaghan <djc@djc.id.au>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4] drm/rockchip: Disable AFBC for res >2560 on rk3399
Date: Thu, 17 Apr 2025 06:57:58 +0000
Message-ID: <20250417065759.5948-1-mail@etehtsea.me>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250414095332.9674-1-mail@etehtsea.me>
References: <20250414095332.9674-1-mail@etehtsea.me>
MIME-Version: 1.0
X-Proofpoint-GUID: rwAzO9rQriuU_yzyVXMfa2RlWH8B6Ckm
X-Proofpoint-ORIG-GUID: rwAzO9rQriuU_yzyVXMfa2RlWH8B6Ckm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-17_01,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 bulkscore=0
 malwarescore=0 adultscore=0 suspectscore=0 phishscore=0 mlxlogscore=999
 clxscore=1030 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2504170053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_235819_706397_4A101E23 
X-CRM114-Status: GOOD (  11.91  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

As it isn't supported by hardware. At least, RK3399 doesn't support
it. From the datasheet[1]
("1.2.10 Video IN/OUT", "Display Interface", p. 17):

  Support AFBC function co-operation with GPU
    * support 2560x1600 UI

Manually tested on RockPro64 (rk3399):
- ARM_AFBC modifier is used for 1920x1080
- DRM_FORMAT_MOD_LINEAR modifier us used for 3840x2160
- No noise on the screen when sway is running in 4k
- Dynamic resolution switching works correctly in sway

Signed-off-by: Konstantin Shabanov <mail@etehtsea.me>
Cc: Daniel Stone <daniel@fooishbar.org>
Cc: Andy Yan <andyshrk@163.com>
Reported-by: Dan Callaghan <djc@djc.id.au>
Closes: https://gitlab.freedesktop.org/mesa/mesa/-/issues/7968

[1]: https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf
---
V3 -> V4: Correct redundant header inclusion
V2 -> V3: Run check only on rk3399
V1 -> V2: Move the check to the fb_create callback

 drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
index dcc1f07632c3..45e1619b5c97 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
@@ -5,6 +5,7 @@
  */

 #include <linux/kernel.h>
+#include <linux/of.h>

 #include <drm/drm.h>
 #include <drm/drm_atomic.h>
@@ -18,6 +19,8 @@
 #include "rockchip_drm_fb.h"
 #include "rockchip_drm_gem.h"

+#define RK3399_AFBC_MAX_WIDTH		2560
+
 static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
 	.destroy       = drm_gem_fb_destroy,
 	.create_handle = drm_gem_fb_create_handle,
@@ -52,6 +55,15 @@ rockchip_fb_create(struct drm_device *dev, struct drm_file *file,
 	}

 	if (drm_is_afbc(mode_cmd->modifier[0])) {
+		if (of_machine_is_compatible("rockchip,rk3399")) {
+			if (mode_cmd->width > RK3399_AFBC_MAX_WIDTH) {
+				DRM_DEBUG_KMS("AFBC is not supported for the width %d (max %d)\n",
+					      mode_cmd->width,
+					      RK3399_AFBC_MAX_WIDTH);
+				return ERR_PTR(-EINVAL);
+			};
+		}
+
 		int ret, i;

 		ret = drm_gem_fb_afbc_init(dev, mode_cmd, afbc_fb);

base-commit: 4890d68db651562ea80250f2c93205a5c0327a6a
--
2.48.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
