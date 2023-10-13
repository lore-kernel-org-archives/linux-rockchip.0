Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 086AFCDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 12:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=roDQTz/NIwlWso+c6m50Vr4Mb0/pqlS2ZWJnGzULr7s=; b=uDzyFgj8b3cKBD
	zCSCRAgmH2bs6G3PRKu1BuMxOUOgfTmrjKrRhgF9shJs40DfbKBos+DrHh/DERT431HRqKCF3cXpD
	EF4OCf1Oq2/VkaT9VcDBs4xvP7Ovd178yYtT7uSDXHfc7C795TzJeo9Gh4Rpo3RrSXMemAOWWsWm/
	NRS4H5O+kF3du4C33gB93sBh3WEv96WEb6kVAE1GciNvo/zy19U+Y8F6emmhBBKKvUYGYn/CR+rvW
	/xpXZtIa3cNJ7GYPKuzB+XeWNltTYE+Ad2hrx8C6tQV9TwllsFP+9zmKq81fE85po3lgj3bXx9rU6
	qXbv3v8La3NtgC+mM3dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrHAF-003PII-2s;
	Fri, 13 Oct 2023 12:21:11 +0000
Received: from m12.mail.163.com ([220.181.12.216])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrHAC-003PH4-0t
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 12:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=yhEQj
	W9QxKi+Z9UeIXry2hAaUPbAMdnPcufJwdhVnYo=; b=mkzEbJAYSW5e7+Seot+34
	lud88N3qjpkP7YZ//djX8VpF0bN7QvnWQDe6FeQCzBz4ynhY74cAbutVGvUKpEGR
	K25N+L2yqPGsDHeM87HyrNgiCy9ZylC8B/CxGqPavnB8hQR8KmBD/n24ywLLCN7e
	JLCqUixU0FSL3pRlH0tu5Y=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-0 (Coremail) with SMTP id _____wDnj9YkNill4B2_AQ--.8050S2;
	Fri, 13 Oct 2023 20:20:55 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de
Cc: s.hauer@pengutronix.de,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	sjoerd.simons@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 2/4] drm/rockchip: remove NR_LAYERS macro on vop2
Date: Fri, 13 Oct 2023 20:20:51 +0800
Message-Id: <20231013122051.1594164-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231013122001.1594009-1-andyshrk@163.com>
References: <20231013122001.1594009-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDnj9YkNill4B2_AQ--.8050S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7XF45CryfWw43WryDJw18Krg_yoWkWwcE93
	W7urnxGr4kWrn5Aw4DCrWfGF97KanF9F18Za10qas8ZF1kJ347t3s2q3y7WFy5AFnrWFnF
	g3Wqgry3CFn3GjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU058n5UUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiOwkIXmC5n1jCzAAAs0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_052108_678974_4453E021 
X-CRM114-Status: UNSURE (   9.39  )
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

There are 8 layers on rk3588, so a fix defined macro is
not appropriate.
Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 3c524ca23d53..57c05c6b246c 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2251,8 +2251,6 @@ static struct vop2_video_port *find_vp_without_primary(struct vop2 *vop2)
 	return NULL;
 }
 
-#define NR_LAYERS 6
-
 static int vop2_create_crtcs(struct vop2 *vop2)
 {
 	const struct vop2_data *vop2_data = vop2->data;
@@ -2371,7 +2369,7 @@ static int vop2_create_crtcs(struct vop2 *vop2)
 		struct vop2_video_port *vp = &vop2->vps[i];
 
 		if (vp->crtc.port)
-			vp->nlayers = NR_LAYERS / nvps;
+			vp->nlayers = vop2_data->win_size / nvps;
 	}
 
 	return 0;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
