Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDEB9C10F15
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Apr 2024 10:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3zXbvpO+PPFqa07jHkr5UQuNZPYhK7DLAoG1RC8PiU=; b=wDhpFXT8TpEFT0
	5l5Sak3OpyszbJzkfwyEyC8mi3/b5CumBZIXv3O3NVpTrilpAASjnXHBnxU6Ov97uskUn06o2dZVv
	OJK6OIFAUBHoSzJ2r5RhXzAXAWTd5jUs6IZ27WeRL4EddUE5pnZl2ekyMnk60h+DS0Hi314D/0/ra
	I3c1TLvxm2rkqyUYVNn5/kYu9GrafniIWLTyMyVv2AoQbcY3ibPSg0C24iv8p33k4tAOAVd42hpBW
	lc1JqpWbkOhjUpwqe4RfpSwNvaPAVD1nexcKty4gygjtbmPeRc/e7ODcBbHPjc8CqppINPOFouH5D
	ZhGYHrGh9DXr8JvnyPpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryqmF-0000000D7GK-0UFC;
	Mon, 22 Apr 2024 10:19:59 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryqm5-0000000D7CG-3SrY;
	Mon, 22 Apr 2024 10:19:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=p2ORg
	ZDzSKVifuuO/4694cN5BzMQozrvf4hgWYIQay0=; b=gk8bVHbCll4il7G5c+K8e
	fPSYPWXboelLycremu9396QGozJZywTHOj/3HbM+w4Aozz1KqdgHL1BB0elDGegP
	NlUmgQ19uM1Tu6KK+VUsBKoW1N9fxb+gnoCoBmruvhVIp9zNWIZpf3MRZJolpJGD
	lp22RovFMEWP5UwpcclMW8=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g1-3 (Coremail) with SMTP id _____wB3fymbOSZmRwO9Bw--.23790S3;
	Mon, 22 Apr 2024 18:19:10 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: tzimmermann@suse.de,
	mripard@kernel.org,
	hjc@rock-chips.com,
	s.hauer@pengutronix.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 1/1] drm/rockchip: vop2: Fix the port mux of VP2
Date: Mon, 22 Apr 2024 18:19:05 +0800
Message-Id: <20240422101905.32703-2-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240422101905.32703-1-andyshrk@163.com>
References: <20240422101905.32703-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wB3fymbOSZmRwO9Bw--.23790S3
X-Coremail-Antispam: 1Uf129KBjvdXoW7Jw13Gw1fWF4fZF4rXFW8JFb_yoWDCFc_Ga
	y7XrnxWa1kuwnxAw1UCw4fGrW2y3ZFkF4vya10vF9IvanxJ3Wvqa4Sv3y7XF1UAF13Wr1D
	Was0gr1xZFnxCjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUeb6pDUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEAPIXmVODidz9QAAsB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_031950_231755_0C81270B 
X-CRM114-Status: UNSURE (   9.80  )
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

The port mux of VP2 should be RK3568_OVL_PORT_SET__PORT2_MUX.

Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 97b0ab4b6db8..1f4250de570f 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2377,7 +2377,7 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
 		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT2_MUX,
 			(vp2->nlayers + vp1->nlayers + vp0->nlayers - 1));
 	else
-		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT1_MUX, 8);
+		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT2_MUX, 8);
 
 	layer_sel = vop2_readl(vop2, RK3568_OVL_LAYER_SEL);
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
