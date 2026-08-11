Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B78BC5AC67
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 04:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sz8GDz2D0gHHXHWQ3Nr4q5LczBRiiFQzDJRP7T17RGk=; b=L+0X9piNr22bgZ
	i1h/Dk6tlE0e6vrAPoiR9eI/7jHuEFq6K8E5n5x5JkXFddcZHKfuSnzzfCEqSusC0qrbvh+4CCC5a
	oO3cHkE22n+tdLNssudCm6M7XvbrLE11/fpuVFzJW8IbfgqhPxK2AKf3lGhLUB3pfOhSQcXaRjQIz
	kFtuH+o/fPjuHnvObg7JK7gY1ywIlcl2mR3v57IyHWa1emMk39cAAog1kD3e5g7z8OC6vBQLIYQd7
	N2frC5yvMmu4PXv2UA9TwahQ5z6gEyzzAGFBGUKhkxNkfTRmFeYsEnYq6yvLgO8N8ORyAzBkK4pU/
	pSxOsmS623o5/AJUIrDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wteQT-0000000DIA4-39pf;
	Tue, 11 Aug 2026 04:49:21 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wteQR-0000000DI98-0aT6
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Aug 2026 04:49:20 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2cace91f112so30097545ad.0
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 21:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786423758; x=1787028558; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=fmKjP9IjT2hrwlvsGyuoqviwfW/j7e2tW9dKMk7ti4s=;
        b=j73q5nHb+9wNxEr3QJUJ/OfuY+puYMGRpxsN1cVSlhv0Ub66qGTlx0adGVYEHXPpBd
         56GiPamJgpLYxc9d4O/UG1x3+o4AhAVN/9yGPnMQZ8XElU/9vW5+13s4pkas0WVhijhO
         xHqdmMw8hfmCvzqhOrF7VAJzEr1KUmk+TofkFlTdQYj5Nu5ARYCwjMiO/se2MC8W97Ey
         bRMUWqAq3tcg6SFNxgdhQ+IvaG+DnUoH27rLS80qdslj4oGygm+TXUSz3fg3OoVGTym6
         2D5MVCkUKXUPtFKrwCIbOk8ssnxORNdgEiTNjn03pq2OBiDyEtmFiYC4Pu3TUMvpr/Md
         sEtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786423758; x=1787028558;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fmKjP9IjT2hrwlvsGyuoqviwfW/j7e2tW9dKMk7ti4s=;
        b=tV6scndBooBw2SWN48iKciIuAqJvQ3/tEa+elpjgvzPX/nduPOADjx+4RoP0KMm+Bt
         aAj3kZkMJlHKws4u0n5x8BBQscy3WevzuVCOAguaBLAR0fnjq6lrL7anOJTp80WAPUx6
         fPP832N4WJD03+Y9dLAOwIMmmnUqunkzDFcIN4o0l9UBSCzA9/2xbkbdROYEmJQG+mFC
         hqeUNScxwD4LNa/SATd9z3+F9S6oM4Kk7sMs0uUFYmgA3HJlN6JkRipK1AtuM1bq0arl
         8AlwiDPT6aRVqYYd2GdNHGrQc3tI864gWPPw3oJeQcrR6FOoejPm3G65DIA9bLSNSd/3
         ubjw==
X-Forwarded-Encrypted: i=1; AHgh+Rq1P9rQB/lASAwxEJIEstgGtXWjqk4YYkdUwveLAxJWfJdsW0hcWLbQgDvQa4viziWdRRspxtckrK/H6AAZWw==@lists.infradead.org
X-Gm-Message-State: AOJu0YynyiwfkOwD/lnoEmugiHtZ2LGw5HF+B9dllx4RdCkZEVgKBh0O
	NDjtSNmuGTUUm47QGIx7ORTs929GlT/Y+NJxbwfp5xjlephWm8pD25qX
X-Gm-Gg: AR+sD10kMfIehg/+zsTlo0P176zJ0QFKJa4I+nLWMbnPS4zZ3CopTarCjAk4RnAVmzP
	IydITH3ei0z7bhkjG8W9Ne9qS4S1n2KIAgycYWEypjivUGUe95HfE56SXcrVGukWefP1+Ynweo9
	rb+xpCem5TU20mSeOEn8u1ejxbt1419B9UP01kOYd99Tta+IomlmsxJOTC/Z3eNYt/tHJ+XIy4T
	thvZA/w1LNQMRGzmfqVpthMoYTk73qrYEd5wr2ulHHQEn/wnRsmRbejm95NQt24rnwXVNuTOeQR
	++5gHwg8IBTSo3mMNgTwOScUB6SYXi4NAmNQCswdjhjrl/z0hg1O5eWvoN14iAgGFyq83Zjaxck
	uItG9xoU1b/iRRNB8sSqomYvskmmhSped15GXh6KIcEYQqaFTcS/TtmdHZEIzSG3aGQR9NMjeWt
	XqRV2s3WgTC411aG5ykq1A0ywQ/2yE17TzbCH3myJ3DHebaukC2gdCJOymFjjSMhBeUcumDgyC6
	CGvmkpDUNOjnbEgdkd8MzoszkrhjFY5mOiEI5Lc8hDuPQO4T8u0TccxE1bz7iCJjOhtImwrta5t
	0nfQh7iiTwCrzoNbNWyxf+i+9lsCKqlmk9dLaMGF9DnC/2TE1w==
X-Received: by 2002:a17:903:1ac3:b0:2c9:b8b7:5d27 with SMTP id d9443c01a7336-2d317776218mr11372625ad.1.1786423758109;
        Mon, 10 Aug 2026 21:49:18 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:7a86::e35])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d3160cf975sm1344365ad.48.2026.08.10.21.49.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 21:49:17 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-crypto@vger.kernel.org
Cc: Corentin Labbe <clabbe@baylibre.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] crypto: rockchip: pass crypto_info to irq handler
Date: Mon, 10 Aug 2026 21:49:16 -0700
Message-ID: <20260811044916.160856-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_214919_180281_62805FB9 
X-CRM114-Status: GOOD (  13.88  )
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

The irq handler takes the platform device and calls
platform_get_drvdata() to recover the driver data.  Pass the
driver data directly as the devm_request_irq() argument instead,
dropping the platform_get_drvdata() call.

Assisted-by: opencode:deepseek-v4-flash-free
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 7cb1316b6f18..b2b629fffc05 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -163,7 +163,7 @@ static void rk_crypto_pm_exit(struct rk_crypto_info *rkdev)
 
 static irqreturn_t rk_crypto_irq_handle(int irq, void *dev_id)
 {
-	struct rk_crypto_info *dev  = platform_get_drvdata(dev_id);
+	struct rk_crypto_info *dev = dev_id;
 	u32 interrupt_status;
 
 	interrupt_status = CRYPTO_READ(dev, RK_CRYPTO_INTSTS);
@@ -363,7 +363,7 @@ static int rk_crypto_probe(struct platform_device *pdev)
 
 	err = devm_request_irq(&pdev->dev, crypto_info->irq,
 			       rk_crypto_irq_handle, IRQF_SHARED,
-			       "rk-crypto", pdev);
+			       "rk-crypto", crypto_info);
 
 	if (err)
 		goto err_crypto;
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
