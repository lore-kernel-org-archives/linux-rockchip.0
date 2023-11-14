Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C285C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Nov 2023 11:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qR3+cjTzIBaFzYmKpmrbAS7HIKQ3NIf0rWdEjdwUPMM=; b=pJMcurNyQz2hmT
	b0thfyIR9C7zt3JXROva0ZwleaeK1n5B1mgrJDtU1RxCkj62sJDtGMNQ++N8IjZ9OrV85tggVQzqI
	t3no+cZTAvKXOsfp8B8HOpXeV9+VeyHG0H3FB+akBSU51KtotpD8Cp4ARjBM86U2504M4y3okDTjv
	pJ0wA/ZqqMNQJWNJz/WQNXchdw69hfnyj0iYbErfjK/ytxU7C8+iqNKnFDMXDEKv8X2Qb0WiGAm56
	DB3oDRBBY01aqemJEGeA3gdcWmIR/SvIbuqzHbe78ffkz8PtSg3OCMI7te08YJeB/vNh6w8FWhi/r
	xl1G+vk2VJruJod4yNkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2rad-00Ffjd-1a;
	Tue, 14 Nov 2023 11:28:19 +0000
Received: from m12.mail.163.com ([220.181.12.214])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2raa-00FfgM-0F
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Nov 2023 11:28:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=4fsvH
	LLIllNYap7ogZZzNxpS2uJ/Rut3Yt8ehtoDXa0=; b=hsFgS82T83GZCZHG0FVzS
	8ZYIIGgbDm3f+tNjwg9FpqHUYpxdnxMPTPnnH8blHPpSdREClScQirojumyzlvM4
	P1I1Jg+O2vqcHNb6UWTzHnf8WO46/iuyfhW/O3zagwRJwkKv+Yfydq+M1XJ+qGqj
	Axr+SvJPit0yhbSScponCM=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-3 (Coremail) with SMTP id _____wB3H6uvWVNl3TYPBQ--.53935S2;
	Tue, 14 Nov 2023 19:27:47 +0800 (CST)
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
Subject: [PATCH 04/11] drm/rockchip: vop2: clear afbc en and transform bit for cluster window at linear mode
Date: Tue, 14 Nov 2023 19:27:42 +0800
Message-Id: <20231114112742.1771060-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231114112534.1770731-1-andyshrk@163.com>
References: <20231114112534.1770731-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wB3H6uvWVNl3TYPBQ--.53935S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKr47Aw18Jr1fZryrur1DGFg_yoWkGrX_Wa
	47uwnxGF1v9wn8Cw1UA343CrZFyan29F4rGa18t3Z8XF1kZw40y3s7Xw17Wr45uF4rCr4D
	GayUWF13uFnxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0AMaUUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnBcoXlghlUyfxQAAsH
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_032816_460854_4C615022 
X-CRM114-Status: UNSURE (   8.51  )
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

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 0f7b68c5fdf2..02b76a85f22f 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1307,6 +1307,11 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
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
