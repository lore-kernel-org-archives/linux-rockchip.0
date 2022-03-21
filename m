Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F034C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 20:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qF2R14lz5BSkuY2ynuky3Cfmy7VldxTFfKyCi41mOd0=; b=0E0+am7Lu/8VZ6
	PUOnW5zSLSE2wDmWCPC7YRqZYB9cwzpOZ09WZjf/XpknmfzWT2UE/gEc5t8T3SndQy5aK7edqkOW7
	OCCXhcON1vqetNvIcHg3kHg7Z3JrQxoK8iPi5SlDKn9w8DDbW0PaY5WRQ7zN7Pp2fD/O4gE0tMpUZ
	Pyx4rxfN8oY1r1gQ7PM36JMZEqSD4miC36NwSvtznDU29TXf3W3FteRvll78DVcVtnMYPCDv8oFVv
	goOnRfabkec7yuSbJNPy+N007rHyFXJ17ppG29eQStL+j/JR3rcvtC4EK7Wm31awac6NmN/GbXS56
	lZBsM+KIj6DU7iu4ZL0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWOKu-008u9k-Ua; Mon, 21 Mar 2022 20:09:05 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOJl-008tRD-FB
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 20:07:57 +0000
Received: by mail-wr1-x42f.google.com with SMTP id a1so20845404wrh.10
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Mar 2022 13:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mEFtl1Tv/8nxJX+EKBZcS0Lbq1ln6/kUirDV/Y73Tsk=;
 b=F3u4P2haN80NrYC3ry5184pwPLJ/YQ3Giy8swGovoQmMsCQ6epOO6PnK/ZYYrgUlG4
 XrFw44QYsT+1XIdOx8Apq84YhG+Bmip+iW14+CfVb5HO9Up36ocNDiqUqWFpxlCcVnYU
 MXentJLxLq1zjQ5EbW+iCgXlPPXr06Js/lSjzmXhCa9Tzp9iEqGMsgbr7PWoFB3HyB+j
 olxsoLTCA3bzP73p2v4DC4Vn7SqT+htvS3Bw/Ynaje3tRX7TcNRePnKo9XOyBJOsN05q
 Y+iplil8uOnefQb9/1ELEnNGEP73Nt+vqB1dpisFP2PQC7sTR15IYQBp+ejIJyfjcuAK
 EYKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mEFtl1Tv/8nxJX+EKBZcS0Lbq1ln6/kUirDV/Y73Tsk=;
 b=2f8GagTs2yzpwwMmdxO/ylUhhOlBo/HKzo9rqfbA1Sfw7zxUElM/5MlpkDnP7HDBpD
 H4NP2ni8k6tbtpUPEamk2q9hRs8ViBZjTrqgcSMq8+qgIhYAOMB9QWEPCxMP4z5Z0xc9
 B+C0snOyB/ZneNiHDvoxwV587v9sVZlSX47HDQOBle2qCSe8VCoPicWpYCAm5pda1Crg
 MpSxBQf0R8UFxPUoHs7LOBcFTkUwLMk0sZkZL4IijoXiOIROYsGmij9ugDHv+JpFTaj1
 Qel1gBuKBCadSDgV1s8KbvmGHOSiG+4VBqGudS8a4g4NVZqvYcX/9OD6gcjei3hrSwKu
 sCNw==
X-Gm-Message-State: AOAM531IK61EPoW5A5yfBGkwIHKkg1gHaKdL958tBT+HUms2Z4BnOy85
 qAj/xFlJdwxVIDcNNyi5hHy7lw==
X-Google-Smtp-Source: ABdhPJxkRI1qN0mzT6Z/8NVjt0akO5/CVOtecvW98ZeN8iahdZXAXfJOQaJBPSBncrIHwFoZBScOrQ==
X-Received: by 2002:a5d:59a1:0:b0:204:1777:fc08 with SMTP id
 p1-20020a5d59a1000000b002041777fc08mr3923959wrr.545.1647893272263; 
 Mon, 21 Mar 2022 13:07:52 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.07.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 13:07:51 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 04/26] crypto: rockchip: fix privete/private typo
Date: Mon, 21 Mar 2022 20:07:17 +0000
Message-Id: <20220321200739.3572792-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_130753_529209_617C0F0E 
X-CRM114-Status: GOOD (  10.15  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

This fix a simple typo on private word.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index 2fa7131e4060..656d6795d400 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -235,7 +235,7 @@ struct rk_ahash_ctx {
 	struct crypto_ahash		*fallback_tfm;
 };
 
-/* the privete variable of hash for fallback */
+/* the private variable of hash for fallback */
 struct rk_ahash_rctx {
 	struct ahash_request		fallback_req;
 	u32				mode;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
