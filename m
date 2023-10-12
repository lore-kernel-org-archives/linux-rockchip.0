Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86971CDB465
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Oct 2023 02:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvA7PS97pbBHaYRNN81u3HGiqWStQkcQtew7/ykd3+k=; b=31773lr/I4J4X0
	0Bu5V5nRNXTk12e9gzLQWWkpY8Yo9onGpWe6uHv/ONIwPgztmoGfuUXR0zBPIFopOU/mdq0Yrd+kL
	kt+opcEGqOpNjf7jlJ3ahjTu+lFhIRUuCuovcoRMqxRmyT0qx+qayVn+BaKiKIGFFvoTHV+9l2Zu1
	eX+E6pOMcjhHKlADcgsDRIMYK9wr5OekadW0i74/5rAPKEY2U3vwZZZTY6fPCDDX+cmJrGepOW2Yk
	fDVbhOLDQOM1gKSDaZMxXWek0WRNaq8n5UMNFtyO8KoCpanGmdws4ZY2HM/dult3FUG6m0P+tg+je
	VKOjhjVQh5lCg2oKFJEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqlZG-00HCWT-0f;
	Thu, 12 Oct 2023 02:36:54 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqlZC-00HCVm-2u
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Oct 2023 02:36:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=qwKAK
	Yj+at97vp/dZZhMcvfPdPnSJotWH98ffVHtzrU=; b=KCAr9DDmD2M7ECl7v71A0
	Ruz1OO2T3xclKVkj2CpfJL1QhHwPy46IVFDm1eownQlq0JiJ/KR7C1URaBYMoQTg
	ZJwk8aWXFjCTtIIhNT8JQMy24z+PH0Wm9qHAXkDnzZp5VSTCEp88tgwgqTAeLclr
	xjTNw+OVoDBvYPoDkDuCqc=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-0 (Coremail) with SMTP id _____wDHL8mvWydlY0ZDAQ--.59239S2;
	Thu, 12 Oct 2023 10:36:34 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de
Cc: s.hauer@pengutronix.de,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	sjoerd.simons@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 2/3] drm/rockchip: remove NR_LAYERS macro on vop2
Date: Thu, 12 Oct 2023 10:36:30 +0800
Message-Id: <20231012023630.1497499-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231012023439.1497304-1-andyshrk@163.com>
References: <20231012023439.1497304-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDHL8mvWydlY0ZDAQ--.59239S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7XF45CryfAr4fAr47JF17GFg_yoWDuFbEk3
	W7Wrn8GF4kurn5Aw4DCrWfJF9rKanruF1kZa10qa45ZF1kJw1xt3s2q3y7WFy5AF1xWFnF
	93WYqry3CFn3GjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU058n5UUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiTBkHXmI0beLBsgAAsm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_193651_328821_20D8A6AC 
X-CRM114-Status: UNSURE (   9.62  )
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
---

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
