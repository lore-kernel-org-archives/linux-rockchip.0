Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEEB5CD37AC
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 02:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Message-ID:
	Subject:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+vOVigGE6US9dlfbN5WWaayXqJeQYWEL+47m25KqV9c=; b=f1tywnNtb+oiFB
	TQI7Hpj4gUbEdRO542NkCx2ZeetN9yVmunduFhccV1tRPwj1k4oL78AUc8++RyW5eetEpt1iRWlEh
	zrfCa6EZNWbm5LIry5EySoo9N1JIKkHjSgUVGzd76Lpyv5WQ6TiwWTrF6dMm45mcdcWGcooB8qdQZ
	jUc2fdynPF8NJ81KC3JOizcHXvi9wzeUqpaV6VIpm8SlpVdB4d9rXz03g/2Eti3pQqBIIgFNdOx1R
	Kkh7mOzyAFmgt1Cc02RFmrjkh269hFjHkSf+FvmQ6CetP9uXqUhDQ5IXXRuxxDGcgZbcQ2ZfURcYc
	Y2b1fHB6B/yEp0fcwmow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLXKp-00000007zhI-0Nup;
	Sat, 09 May 2026 02:22:31 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLXKl-00000007zci-2IQN;
	Sat, 09 May 2026 02:22:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Content-Type:MIME-Version:From:To:Subject:
	Message-ID:Date; bh=avdKvoGJRAuQ/G1nFjj02K4Uj83fbTKqWhjTGahl/7o=;
	b=Cr64Osv9T83iz/CxiWFBCsaSVzBbmNQdVX58HaL8TiZTNt6PXHfhBhpdtP6D7T
	+wP0UWEmutiiM167mgVTBqyrsrsPy+H9aLR9Ph+nbS3fNCCsc+6FCEp0wx6Pz7ac
	IJugrIlYzii0iWmV4GcE+X8z+j+P2dmU0R96sjP/xi3y0=
Received: from [127.0.1.1] (unknown [])
	by gzga-smtp-mtada-g0-3 (Coremail) with SMTP id _____wDHZMtWmv5psi07AQ--.29113S2;
	Sat, 09 May 2026 10:22:16 +0800 (CST)
MIME-Version: 1.0
From: Jiaqi <shijiaqi_develop@163.com>
To: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] drm/rockchip: Fix vop2_create_crtcs() error path cleanup in vop2_bind()
Message-ID: <177829333389.202156.8952879725754526045@openclaw.local>
Date: Sat, 09 May 2026 10:22:13 +0800
In-Reply-To: <177829330856.202156.9366848570650672090@openclaw.local>
References: <177829330856.202156.9366848570650672090@openclaw.local>
X-CM-TRANSID: _____wDHZMtWmv5psi07AQ--.29113S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7tr1DJr1DWr4kGF4DZryUGFg_yoW8WF4Upw
	4kJFWjvr4UKr40qF1kAr1DuFWFka1IyayxJrn2k343uFnFkr1qyr1Y934rAw45XF97CFyj
	yFZrJ3y5JF1Uur7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jbEfOUUUUU=
X-Originating-IP: [43.248.8.92]
X-CM-SenderInfo: xvklyxpdtlsvxhyhz0rs6rljoofrz/xtbC7xjWKmn+mlgO7gAA3+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_192227_951925_CE145AE3 
X-CRM114-Status: GOOD (  11.84  )
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

Additionally, if the component framework retries the bind (e.g., due to
-EPROBE_DEFER from downstream components), the previously registered
IRQ via devm_request_irq() will cause subsequent attempts to return
-EBUSY, permanently breaking the driver.

Fix by ensuring vop2_create_crtcs() failures go through the err_crtcs
label, which calls vop2_destroy_crtcs() to properly release all
resources including of_node references.

Signed-off-by: Jiaqi <shijiaqi_develop@163.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

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
@@ -2758,8 +2758,8 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
 	return 0;

 err_crtcs:
+	devm_free_irq(dev, vop2->irq, vop2);
 	vop2_destroy_crtcs(vop2);
-
 	return ret;
 }

--
2.40.0
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
