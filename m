Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB3E1CF58EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Sep 2024 08:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5RLy5AFzhyzMNGmh0QNO/nGyXp9s7qXMIjG2KxaIzU=; b=j8EoDwd1JknEo8
	LflLVB+vfAcJyCf33HXCkmJ+5fpLIrdIo46isS0eYihBXh4loEy9pFksPvdiw1qhTT9y8WTfffLSj
	28LF9WkrFx1judqBAo2X5UAr5ItusZA461rnffH1fGLwioPVwwg7gq9EMu3wCd3A0E7LCg6At3Vw1
	Ek4Izq5Tq0ZRPjxO5bnuxITKRVwdXuGOSG/A9htLfaG8vjwPULTTmx+UXnxCjoizcildrbBJ7RvXe
	uI79TYdQezmdcGqNRg5vYqYpyzIqMJKOb7pdTvvs+dncf8s9J+R1DpfP1YklrRU1+ILor0oC/EnFt
	fLaYnQ56k13+u4aW/Jww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srZ53-0000000BmfC-4Bc7;
	Fri, 20 Sep 2024 08:33:34 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srYtM-0000000Bjoe-0Pwz;
	Fri, 20 Sep 2024 08:21:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=0GYSG
	+chUw6Ysv1qyoAIdKhyk6i2g6/WZX6U7MclNH0=; b=TGGmPIpdvvXtsugOEABzZ
	/I8bOStNtgaFjjNuuYCoL2cRqbQXK2SMdQieRctHtlUT+WOIRXHwcNY+m/KYCoFD
	1OvtuQxSm1GCKCg6ZIzEUpzNXk5RSXv2np3aQbdG3bynpnZ8AwLfW6nEsd5XktS7
	a50W+lLehX2fASanH1cXeU=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g3-1 (Coremail) with SMTP id _____wDX3_dtMO1mi4uaBQ--.13042S2;
	Fri, 20 Sep 2024 16:21:05 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	s.hauer@pengutronix.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	minhuadotchen@gmail.com,
	detlev.casanova@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 04/15] drm/rockchip: vop2: Fix the mixer alpha setup for layer 0
Date: Fri, 20 Sep 2024 16:20:58 +0800
Message-ID: <20240920082100.6683-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240920081626.6433-1-andyshrk@163.com>
References: <20240920081626.6433-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDX3_dtMO1mi4uaBQ--.13042S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7XF4rXr13WF4kZr45GFWfKrg_yoWkKFg_G3
	4fWrn3Grn7GFn8Jw1jka1fGFZ2yan2kF18Ga1DtF90yFykA3Wxta4rXryxX34UCF4rAr97
	G3W8Xw1rCrnxWjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8AWrJUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMxJgXmbtL08ijAACsY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240920_012128_443098_03CF09AB 
X-CRM114-Status: GOOD (  10.46  )
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

The alpha setup should start from the second layer, the current calculation
starts incorrectly from the first layer, a negative offset will be obtained
in the following formula:

offset = (mixer_id + zpos - 1) * 0x10

Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Tested-by: Derek Foreman <derek.foreman@collabora.com>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index bff190151ae8..c50d93df8404 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2282,6 +2282,12 @@ static void vop2_setup_alpha(struct vop2_video_port *vp)
 		struct vop2_win *win = to_vop2_win(plane);
 		int zpos = plane->state->normalized_zpos;
 
+		/*
+		 * Need to configure alpha from second layer.
+		 */
+		if (zpos == 0)
+			continue;
+
 		if (plane->state->pixel_blend_mode == DRM_MODE_BLEND_PREMULTI)
 			premulti_en = 1;
 		else
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
