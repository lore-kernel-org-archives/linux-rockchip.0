Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 565AFC61D97
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 12:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wb/U9fPL/xIcA6nbLgKGOMFvFaeJQuUH6HPa4QboNXw=; b=Ci29wWawABzGi+
	J1ORMait+gQrnRhpK24ADv8+QWx4TQ5fZdBtFOQzr6/goNVv7A0Omf3GXBaeMqLuZTr+fBBTpzjAi
	8Y2OllInEa8RUgLm3kzb4UlQwvuQ2fqQLvK509dqGCUY06lqtmQqIsc4Hyz8fPcplUXvcrR71yUkK
	HtEpMMktkEyk3G4qv0uvQv7/ceSI2bcGN8+yRDMEbqQqtV4vPRkGk/xRsdCB5XapaT50k2BFdOC3t
	Ebqnjfat/2GpVwRLi5Ghoa/BrF2ek6bm9re2Xr769ogpLGZga8blZ38ztFH+Hl848dwe8WGfB4UdS
	3NwQtpOSgT0qkfojnyNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mks-001sDw-2W;
	Wed, 22 Nov 2023 12:54:58 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mkp-001sA0-0E
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Nov 2023 12:54:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=6otUM
	/47Tf3xP3DWibrhyyFMgkpC7ZW06/QSkEgQJjQ=; b=JWAxZ5kHif3HgKYhiECJW
	tBdkra2uE1y5II7GxxyjRsZfYyNq5uJvzYfPmp6buxD5bJkdC2M3QTZS1UR7kQXu
	TPymlgxdnVdHNGtNzx96pxZ8AfZNxaKLVU+Uyx7KXlM9hg2QmgJPokxhjP6TCZ0j
	XeBMKCOq0ZNZ7elxhWf0ps=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g1-0 (Coremail) with SMTP id _____wDn784C+l1lfIunAw--.35392S2;
	Wed, 22 Nov 2023 20:54:30 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	s.hauer@pengutronix.de,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 04/12] drm/rockchip: vop2: clear afbc en and transform bit for cluster window at linear mode
Date: Wed, 22 Nov 2023 20:54:25 +0800
Message-Id: <20231122125425.3454549-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231122125316.3454268-1-andyshrk@163.com>
References: <20231122125316.3454268-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDn784C+l1lfIunAw--.35392S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKr47Aw18Jr1fCr4kAw1xAFb_yoWkWrc_Wa
	47uwn8GF1vgwn8Cw1UA343C39Fyan29F4rGa1ktas8ZF1vvw40y3s7Xw1UWr15uFWrCr4D
	GayUWF13uFnxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0AMaUUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnAowXlghlh76hQAAs2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_045455_484220_E05F0A02 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
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

The enable bit and transform offset of cluster windows should be
cleared when it work at linear mode, or we may have a iommu fault
issue.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 639dfebc6bd1..a019cc9bbd54 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1312,6 +1312,11 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		vop2_win_write(win, VOP2_WIN_AFBC_ROTATE_270, rotate_270);
 		vop2_win_write(win, VOP2_WIN_AFBC_ROTATE_90, rotate_90);
 	} else {
+		if (vop2_cluster_window(win)) {
+			vop2_win_write(win, VOP2_WIN_AFBC_ENABLE, 0);
+			vop2_win_write(win, VOP2_WIN_AFBC_TRANSFORM_OFFSET, 0);
+		}
+
 		vop2_win_write(win, VOP2_WIN_YRGB_VIR, DIV_ROUND_UP(fb->pitches[0], 4));
 	}
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
