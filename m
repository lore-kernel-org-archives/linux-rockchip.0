Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD04CCDB465
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Oct 2023 02:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6aobfxQFtRN2y4HCShw5GqALIaW8yk8TiutviER8Q4=; b=Pfe1LA6nQv9PZN
	TAqjF6l7IkQkPha7zftVzb0AyBefM/Jm3AWrZwwa2h8hUNDhVrH+IzXv8hTC61dY5ET/5A5M7zXwQ
	LHWLe3qnpp7wbVKO/xjYzJDdNwkNmR97zal5RGaPPQwAXWemws8AAlbPq7FfLpuECxpMBG6RAlWvr
	WK52iH946vSGCMhb+5BnPURfPzQlY1jypT/8V9uokdAt/qh6XGtCs8tOR65Un3fj7fzHvHveA/8SU
	X0IzsW9FcPRE6kPBseJ3sP6+BzQsim1bTG4z+4e7dbaTUVY/ozOWYOdV2CEi5ySi1mvIwZRcc7/th
	pBNyuuSIptJK4gY4tEow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqlZb-00HCYn-2H;
	Thu, 12 Oct 2023 02:37:15 +0000
Received: from m12.mail.163.com ([220.181.12.196])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqlZZ-00HCY1-23
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Oct 2023 02:37:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=KJQPI
	JNNz5TybaQPkseB57wueWUVNWfwhY7sgUvbTGk=; b=CXeSv8bRwE0J8BJiFk/RO
	EnLkPgJmpfI5PhgjRbKv7snEdubdMnYZWz9nKn4vAfzbHlCp1TeXs3cL79Meol/Z
	jIWrcEjl0NspzRz1mi0KlZZvYay3cOzuXNe/dVHoz/VUdE21xfYaPlvfkz4KdUvi
	dTLTDGq6oxIXUf9EsGa79c=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-2 (Coremail) with SMTP id _____wD3_+XGWydlPrpMAQ--.22452S2;
	Thu, 12 Oct 2023 10:36:57 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de
Cc: s.hauer@pengutronix.de,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	sjoerd.simons@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 1/3] drm/rockchip: remove unused struct in vop2
Date: Thu, 12 Oct 2023 10:36:53 +0800
Message-Id: <20231012023653.1497576-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231012023439.1497304-1-andyshrk@163.com>
References: <20231012023439.1497304-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3_+XGWydlPrpMAQ--.22452S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7trWUKrW3Kw4fArWDWrWrAFb_yoW8CF1Dpa
	yDA34jqrWxKFWjgr1DJF4Dur1SywnFkay2kFs7G3ZIqFyIgr1DA3W5Kr1rArsxZF129rW7
	tFnFq34UXF429r7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jk18PUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiTBkHXmI0beLBsgACsk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_193714_031979_9E147DB6 
X-CRM114-Status: UNSURE (   8.45  )
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

These structs are undefined and un used.
Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 --
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h | 3 ---
 2 files changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 583df4d22f7e..3c524ca23d53 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -160,7 +160,6 @@ struct vop2_video_port {
 	struct vop2 *vop2;
 	struct clk *dclk;
 	unsigned int id;
-	const struct vop2_video_port_regs *regs;
 	const struct vop2_video_port_data *data;
 
 	struct completion dsp_hold_completion;
@@ -2274,7 +2273,6 @@ static int vop2_create_crtcs(struct vop2 *vop2)
 		vp = &vop2->vps[i];
 		vp->vop2 = vop2;
 		vp->id = vp_data->id;
-		vp->regs = vp_data->regs;
 		vp->data = vp_data;
 
 		snprintf(dclk_name, sizeof(dclk_name), "dclk_vp%d", vp->id);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index f1234a151130..56fd31e05238 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -134,16 +134,13 @@ struct vop2_video_port_data {
 	u16 cubic_lut_len;
 	struct vop_rect max_output;
 	const u8 pre_scan_max_dly[4];
-	const struct vop2_video_port_regs *regs;
 	unsigned int offset;
 };
 
 struct vop2_data {
 	u8 nr_vps;
-	const struct vop2_ctrl *ctrl;
 	const struct vop2_win_data *win;
 	const struct vop2_video_port_data *vp;
-	const struct vop_csc_table *csc_table;
 	struct vop_rect max_input;
 	struct vop_rect max_output;
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
