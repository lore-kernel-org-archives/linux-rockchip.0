Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E420C48BC4
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Feb 2024 22:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KMqhZRQVcANdxDzyhBgv/V9XcceuOmyAhMbnB6X2pME=; b=0W4y1VuZ2URG/8
	mOU4VnJhd7YI9FPctKourng9zhdl9DhFBqGeqbrDKJAQQsywmMM7SwYvAj1An9dUw+9t4ywGSoyma
	jt+nS47cXy3ZglFz05oA4GszSd7WqiExPl2LO0g1zU1UzNccBDbUX0cw+AyBQ2C0Ck67+KCxbxfSw
	OaF5PNi/XteOEns7sJQc42Est6SiugNt96Li2yPiBYuvbcz0ocSTlmM0eVvXZoTi8LOPNuoRZ0VrT
	7PjI5bGCkz2456AMq27WISExU1BnxYF0QiRFtaligWfdiEshli/wIgG2dqw5qWp4HA8b3FvbXqi7x
	z2hqnFIwBbo4EsPTkh2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbpTi-00000008Wgm-1PRE;
	Sun, 18 Feb 2024 22:17:42 +0000
Received: from shout02.mail.de ([2001:868:100:600::217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbpTf-00000008WfT-0R8S;
	Sun, 18 Feb 2024 22:17:40 +0000
Received: from postfix01.mail.de (postfix01.bt.mail.de [10.0.121.125])
	by shout02.mail.de (Postfix) with ESMTP id CA911240D76;
	Sun, 18 Feb 2024 23:17:22 +0100 (CET)
Received: from smtp01.mail.de (smtp01.bt.mail.de [10.0.121.211])
	by postfix01.mail.de (Postfix) with ESMTP id ABD9480145;
	Sun, 18 Feb 2024 23:17:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1708294642;
	bh=N3H39/B4i2sFZWcEBwc/gNTosE/eDkGZGZvxmMONy6s=;
	h=From:To:Cc:Subject:Date:Message-Id:From:To:CC:Subject:Reply-To;
	b=b0Oz+t444Iy/mMVCQexZJsa1Ia2Us0mQOjygXNPbAUtL0T1Vnku6T40CJffkGJaGz
	 6OgqXvUed2qmuU38ESaV/Eu8UQcWJQzWpZl2f5b2Y2vQERbpDRyH6NRCYu9BJRaldy
	 l+4T4zSOoujJARpo1FOeXKakoqmTGPOP2W4Kc7qAAVvaLjK/RuET9y6Dos2bd/vMth
	 tnXH3FBckSIBKs3ayyn8TyJKdzeMtLFW0L1OdtbRgpTxeme1sfQ9H8hAp3mDZj3geU
	 kctTBYYaFUE6h1C2oz2mOKssrpPbNDkJix5hylwE8LGHKxIN6oZPm0ETupwO2ZdlHT
	 xO9NEBDI2i3iw==
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id 23479240550;
	Sun, 18 Feb 2024 23:17:04 +0100 (CET)
From: Kilian Zinnecker <kilian.zinnecker@mail.de>
To: Corentin Labbe <clabbe@baylibre.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-crypto@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kilian Zinnecker <kilian.zinnecker@mail.de>
Subject: [PATCH] crypto: rockchip - fix to check return value
Date: Sun, 18 Feb 2024 23:16:58 +0100
Message-Id: <20240218221658.131043-1-kilian.zinnecker@mail.de>
MIME-Version: 1.0
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 1095
X-purgate-ID: 154282::1708294642-065BF670-B0B11907/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_141739_331259_9B3B67AA 
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

crypto_engine_alloc_init may fail, e.g., as result of a fail of
devm_kzalloc or kthread_create_worker. Other drivers (e.g.,
amlogic-gxl-core.c, aspeed-acry.c, aspeed-hace.c, jr.c, etc.) check
crypto_engine_alloc_init's return value and return -ENOMEM in case
a NULL pointer is returned. This patch inserts a corresponding
return value check to rk3288_crypto.c.

Signed-off-by: Kilian Zinnecker <kilian.zinnecker@mail.de>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 70edf40bc523..f74b3c81ba6d 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -371,6 +371,11 @@ static int rk_crypto_probe(struct platform_device *pdev)
 	}
 
 	crypto_info->engine = crypto_engine_alloc_init(&pdev->dev, true);
+	if (!crypto_info->engine) {
+		err = -ENOMEM;
+		goto err_crypto;
+	}
+
 	crypto_engine_start(crypto_info->engine);
 	init_completion(&crypto_info->complete);
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
