Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49131CDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 12:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwRl8lNYRYloRx7annZNqSLp49eB9NzbX38w91oo1zA=; b=sSQyAxkvXCD1eN
	ngWjxYlRTVTQcw8YDQDRFl1XlNw5JEfoUL/ZktzbPRUWMDNGmV5Z0N3LBQzjxZ4oS2vdPjrklDli8
	6U5rphskpSAY8FleR6vKKkgUdg1ALZWA9Y6AYe+eVYK738J+58j/9LABfrjUbwsvM8YFl5aQ7Fh2y
	jtjyQzvmN5IOjAp1ibMWyGvoftxAoECh7HVz2u/HHa2+T8MKfGYRJXFM9+D9hOnd1hChA9AWxZqlX
	yDTzWl33mYTBaBMumDgaiULcrzKLUnySTVmN7IdEnEBUmHpp5OP/Mx7DS5BKCY+hJeZJG1cCOKFvz
	0IfjKwZsEOrxThsDaHww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrHA7-003PGn-0S;
	Fri, 13 Oct 2023 12:21:03 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrHA4-003PFg-0h
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 12:21:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=s8yb1
	2Hf+rhU0ZtbvrV2FJ0jB5SD/SdydsH2waGwU/I=; b=K2ku7Y0oVqh2E+bvtrsUf
	36tO3qIHimTwDOD+too7b7Y2XQ6n0Wmp1PVNhOTffqYuB+6hnDaymq3rDT5IipwU
	gkUjI8dUkSkttiocOSB/CpI9y9y0AZrp/BBZW9Np456s7s4FvrY0BCSBaawdpa2t
	cVRmTqbkhkmpUg3EiYg21M=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-4 (Coremail) with SMTP id _____wD3X3cWNillrunEAQ--.20789S2;
	Fri, 13 Oct 2023 20:20:41 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de
Cc: s.hauer@pengutronix.de,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	sjoerd.simons@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 1/4] drm/rockchip: remove unused struct in vop2
Date: Fri, 13 Oct 2023 20:20:36 +0800
Message-Id: <20231013122036.1594090-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231013122001.1594009-1-andyshrk@163.com>
References: <20231013122001.1594009-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3X3cWNillrunEAQ--.20789S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7trWUKrW3Kw4fArWDWrWrAFb_yoW8Zr4rpa
	98A34jvrWxKrWjgr1DJF4Dur4SywnFkay2kFs7G3ZIqFyIgr1DA3W5Kr1rArsxZF129rW7
	trnrt34UJF429r7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jk9N3UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiTB4IXmI0bglZGAABs1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_052100_726730_A6F541EE 
X-CRM114-Status: UNSURE (   8.28  )
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
Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

---

(no changes since v1)

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
