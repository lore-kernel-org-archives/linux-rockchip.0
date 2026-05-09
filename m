Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8A7ECD343F
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 04:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Message-ID:
	Subject:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t+E0Mu2sTqS+ToiCNn2aBU7TdwZHRGysgvdP5Hj5wv4=; b=W7bbevVApaTvgk
	wDlv6dmfFkDf03ORQT+nQu5fnQxYby7JFXCoafpbG0Jp9XglX+L0VOo2PlQY3g4Qe80xykrq9xHVd
	Y0MBZsc+a2ZaaXShJGii5vajussuLe3itQPDrqKAaLfaVaIm23dVpr5uoPB72DvzeeL9JleKOu2Jg
	Ow99PzLs7jWUMejjLb9Kbt5wDLNHGVYFZlMZJxc+3hNHzTzk72q3OLFZVaEkVikcH18UPUqfW+mog
	cFooSB25Wi2DFaWT5ESqtHQCSjmPU3OFvKRRNvxJWQqwDleNrGXFO1vxka8sVFbFJ3KpxdUEnbYsn
	EMYS/QI+6fjoDbb2tapw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLZ8D-00000008B5e-3DCR;
	Sat, 09 May 2026 04:17:37 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLZ8B-00000008B23-0wst;
	Sat, 09 May 2026 04:17:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Content-Type:MIME-Version:From:To:Subject:
	Message-ID:Date; bh=muL5Odg1PL2YBCDTHx39Smx59B2CA6afwPBNACoANYU=;
	b=qTuNjmkqxOmEgQ8T89bjSJTWb8bq5NpJXLJwBffc7IZeP9ctDSnVDYSY7rAtkn
	UuUZmTM2p8QPKe1cbCMTik2rCMVv1pD2yfb3er9BPigPBN4/VgFpqPSOi/MTMQTB
	dlb9p9/6HCdxtXiID1QmmrBkJmj3tlotkuEZqLn4RdHp4=
Received: from [127.0.1.1] (unknown [])
	by gzga-smtp-mtada-g1-1 (Coremail) with SMTP id _____wDndNtTtf5p8oVGAQ--.38891S2;
	Sat, 09 May 2026 12:17:24 +0800 (CST)
MIME-Version: 1.0
From: Jiaqi <shijiaqi_develop@163.com>
To: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/6 v2] drm/rockchip: Fix vop2_create_crtcs() error path cleanup in vop2_bind()
Message-ID: <177830024278.246051.2541513211000360573@openclaw.local>
Date: Sat, 09 May 2026 12:17:22 +0800
In-Reply-To: <177830021804.246051.8309807801406217751@openclaw.local>
References: <177830021804.246051.8309807801406217751@openclaw.local>
X-CM-TRANSID: _____wDndNtTtf5p8oVGAQ--.38891S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7tr1kAF18ur1rCryxKry8Xwb_yoW8GF4kpw
	4kJrWUZr4DKr40qF1kAF1kuF4F9w4SyayfJFn2k343uFnrKr1qyr1Y9a4Fyr43XF4xCFyj
	vFZrJ3y5XF1j9r7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07U_CzNUUUUU=
X-Originating-IP: [43.248.8.92]
X-CM-SenderInfo: xvklyxpdtlsvxhyhz0rs6rljoofrz/xtbCzhWc72n+tVWMoAAA3z
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_211735_590756_CC9E910C 
X-CRM114-Status: GOOD (  11.37  )
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

In vop2_bind(), when vop2_create_crtcs() fails, the function returns
immediately without calling vop2_destroy_crtcs(). This means any
of_node references stored in vp->crtc.port by vop2_create_crtcs() are
leaked, as they are only released in vop2_destroy_crtcs().

Fix by ensuring vop2_create_crtcs() failures go through the err_crtcs
label, which calls vop2_destroy_crtcs() to properly release all
resources including of_node references.

Note: the IRQ registered via devm_request_irq() earlier in vop2_bind()
is managed by devres and must NOT be manually freed in the error path.
Devres will automatically release it when the device is unbound or
released by the component framework.

Signed-off-by: Jiaqi <shijiaqi_develop@163.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 8afabe2118a9..1234567890ab 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2735,7 +2735,7 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
 
 	ret = vop2_create_crtcs(vop2);
 	if (ret)
-		return ret;
+		goto err_crtcs;
 
 	ret = vop2_find_rgb_encoder(vop2);
 	if (ret >= 0) {
--
2.40.0
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
