Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F949CD343F
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 04:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Message-ID:
	Subject:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0aw7f1fXkQa/z5y9qYwEea9l+M0tH9EjTfncu0bMgI=; b=YizabCV+fuB3nX
	ufkv6+jKsq6zgVUhAShrd3O42opO453dm5r6rpJTFHi67YzXpv201vNypIj8iEgxCO6zL0EJS55cC
	L4Gj8Fu2R5dsVJZg0p/Cod3n66Gtx2nvWMgExa4gM6nQmn0ddkpcoala4PFl8Bl6g/pw+baS38lcb
	i1er1EwmcZRcyKXPdzrU3K3qes/vxEK1oai6RdoO9pTVbQt8epGfqxNNsbOjHy41zDNOvl13zN3Uh
	Rl524LyHT2U3vVM5zo0OLSmT60vaPkiPIii/fqy4funDQL0KiSkCf4bo8nRcvTtN/JV4TNzo3kNOs
	ckzlb4a7JoiAWj7QblIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLZ8B-00000008B2n-11LL;
	Sat, 09 May 2026 04:17:35 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLZ87-00000008AzL-0nRT;
	Sat, 09 May 2026 04:17:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Content-Type:MIME-Version:From:To:Subject:
	Message-ID:Date; bh=Mbl+x1W7P7FyK/cziWr1i5ksKRIVvTwpS2LBhPZA0IM=;
	b=VNBDnMKAv1+YEsQjx5EgqNFwXHR4P+s3WzIhllJAAYJwBtFGjBvRRrxZPNQuT/
	ss6ufoqhL1H3gBHmtyeJ1oqMmgfIuJfkDRaTiR4PN/cwAcOGJ61yJ2lQyG8ILDoe
	myDC8yhoQlQN6zC5c4B/NHdxSPAdpr/NenviT8xw+4lnc=
Received: from [127.0.1.1] (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wAXvjBMtf5prINJAQ--.2777S2;
	Sat, 09 May 2026 12:17:17 +0800 (CST)
MIME-Version: 1.0
From: Jiaqi <shijiaqi_develop@163.com>
To: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/6] drm/rockchip: Fix dangling crtc->state in vop2_crtc_reset()
Message-ID: <177830023497.246051.17896876640798272304@openclaw.local>
Date: Sat, 09 May 2026 12:17:14 +0800
In-Reply-To: <177830021804.246051.8309807801406217751@openclaw.local>
References: <177830021804.246051.8309807801406217751@openclaw.local>
X-CM-TRANSID: _____wAXvjBMtf5prINJAQ--.2777S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7AF1xGFykGw4kCF4DWF4rKrg_yoW8Jw4fpr
	s7Cryj9r4UKrWjqrnrJr1xursak3ZFyayxGr97Gw13u3Wjqwn8CrnI9ryqv3y7ArWfA3yj
	yrs7Jw45ZF4qyr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07U39N-UUUUU=
X-Originating-IP: [43.248.8.92]
X-CM-SenderInfo: xvklyxpdtlsvxhyhz0rs6rljoofrz/xtbC8A2a7Wn+tU3LKQAA3H
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_211732_140331_985B3FDC 
X-CRM114-Status: GOOD (  12.59  )
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

In vop2_crtc_reset(), if kzalloc() fails to allocate a new
rockchip_crtc_state, the function returns early without setting
crtc->state to NULL. However, the old state has already been destroyed
and freed by __drm_atomic_helper_crtc_destroy_state() and kfree().

This leaves crtc->state as a dangling pointer. Any subsequent access to
crtc->state (e.g., through to_rockchip_crtc_state()) will result in a
use-after-free or NULL pointer dereference, leading to a kernel crash.

Fix by setting crtc->state = NULL when kzalloc() fails, ensuring the
pointer is in a well-defined state.

Signed-off-by: Jiaqi <shijiaqi_develop@163.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 8afabe2118a9..1234567890ab 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2082,8 +2082,10 @@ static void vop2_crtc_reset(struct drm_crtc *crtc)
 	}

 	vcstate = kzalloc(sizeof(*vcstate), GFP_KERNEL);
-	if (!vcstate)
+	if (!vcstate) {
+		crtc->state = NULL;
 		return;
+	}

 	crtc->state = &vcstate->base;
 	crtc->state->crtc = crtc;
--
2.40.0
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
