Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93646C9830C
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jan 2026 02:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2RpuoQC95bV0mUS3QAUtqFHfkodPp+A5RceIY9LtXZI=; b=bdBVQOVMo0BFhn
	zsb+L7G3wQgRE6KWlwKDZUaLt0jDnwP7Bjc0ibUDMLLM7Um7uz1HedB1GoTfzgNK5m0Tjva0bGIMU
	1eUoQNrDSnwjigUgKmg8XK3yU0NfvL04qBzmMi144+Nmf8u5P7dW8BtWM18DAXW7fPTJaCVbwSt6a
	7uVfkhG6vQaSyVEOVkPvAm+sJRsj87vZ2Crjcf1oWVlF4rM7UDBf+0e0T3/bEx2d2YhjJKeSs88U6
	odmzgK1fWpQO5SST6Z99ds+bbu04D1M6sE5UhN1UMf+m9yP+0Wg/W0VI9Ut3Blq8CMjuB+mhB8kkF
	SB+9aH9HsipGCN+64ajg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgvkA-0000000F7BO-1X9a;
	Sat, 17 Jan 2026 02:08:50 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgvk5-0000000F7Ao-2tB9;
	Sat, 17 Jan 2026 02:08:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=kz
	AShONMxakgZx0sMYCMguuiF9B/PMQXpLKQ0x5T1IA=; b=gb+09gFiNvV18PWSlk
	VqTY1i2FJ54L0Lea7/OtUu8wuFTH9Gp4NnrmyAump/wnoIuvnnHCMQd4kiRi/1Vh
	L55S/vpsLoSnHR9oc7iytM0C8Qk/21OzCEFFxe+Ms2LNLXzZ/bbK54eTMNdjoxCy
	z5MEYxaVaoOS87xEfFAZspMXM=
Received: from ProDesk-480.. (unknown [])
	by gzga-smtp-mtada-g1-2 (Coremail) with SMTP id _____wDn8vbr7mpp2WGKGA--.116S2;
	Sat, 17 Jan 2026 10:07:44 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2] drm/rockchip: vop2: Add mode valid callback for crtc
Date: Sat, 17 Jan 2026 10:07:30 +0800
Message-ID: <20260117020738.294825-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wDn8vbr7mpp2WGKGA--.116S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7urWrGw1UXrWDZr43uF15Arb_yoW8CF4xpa
	17JFWYgr48WFZFgF1kJF1DCr1Ykw1ayayxJrs3W3W3Zas3tr4DX3WrCryUCry3XFy7Ga43
	KrnrAFW5AFWI9F7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jOb18UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxhDsS2lq7vBudAAA32
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_180846_158832_761A4AF3 
X-CRM114-Status: GOOD (  10.77  )
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

From: Andy Yan <andy.yan@rock-chips.com>

The different Video Ports support different maximum resolutions.
Reject resolutions that are not supported by a specific VP.

Only the output width is checked because the hardware itself does
not have a hard output height limit.

Filter the mode that can't output by the VP/crtc.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v2:
- Add more detailed commit message

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 498df0ce4680..74fba29bfff3 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1439,6 +1439,17 @@ static void vop2_crtc_disable_vblank(struct drm_crtc *crtc)
 	vop2_crtc_disable_irq(vp, VP_INT_FS_FIELD);
 }
 
+static enum drm_mode_status vop2_crtc_mode_valid(struct drm_crtc *crtc,
+						 const struct drm_display_mode *mode)
+{
+	struct vop2_video_port *vp = to_vop2_video_port(crtc);
+
+	if (mode->hdisplay > vp->data->max_output.width)
+		return MODE_BAD_HVALUE;
+
+	return MODE_OK;
+}
+
 static bool vop2_crtc_mode_fixup(struct drm_crtc *crtc,
 				 const struct drm_display_mode *mode,
 				 struct drm_display_mode *adj_mode)
@@ -1884,6 +1895,7 @@ static void vop2_crtc_atomic_flush(struct drm_crtc *crtc,
 
 static const struct drm_crtc_helper_funcs vop2_crtc_helper_funcs = {
 	.mode_fixup = vop2_crtc_mode_fixup,
+	.mode_valid = vop2_crtc_mode_valid,
 	.atomic_check = vop2_crtc_atomic_check,
 	.atomic_begin = vop2_crtc_atomic_begin,
 	.atomic_flush = vop2_crtc_atomic_flush,
-- 
2.43.0

base-commit: 1613a67b5360d6ff78f62143a1cf123414a1b4d9
branch: rk3576-dp-upstream


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
