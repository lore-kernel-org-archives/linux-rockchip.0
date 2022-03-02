Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30D82C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 21:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qF2R14lz5BSkuY2ynuky3Cfmy7VldxTFfKyCi41mOd0=; b=q4g8ybpfxMuUhq
	pxCmRxOzbImV+nolYPRvCuHRA8MkqdL5KfNdSDWTDWHho1us8P9vGmDwI7mPYv0IFfp0QHDTUjpeD
	dRMfyL0E+rgofRfuPtTxhhkRjbbJNBYEO7jzDY6vAMHFS/DfDYyKDB5dDcB+PolckU4XesxFsgaeg
	Be+64TimQ7JrGdX9ehBMn6KmEF1V4yLLNxFXDIoj6eFqOEvCSDVrEiwt8/jEULz2cwxJ6nRZgZO7n
	svc5r2i1KVAP48p6SLDEVZNUTT9aFxgOwEEUn+g2SVEg4sDrjIM7PEf0xUc0PmPalFGUz3YXpz8FA
	8NkyWwzRPEHGE+flszuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPWNP-004FmB-O7; Wed, 02 Mar 2022 21:19:15 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPWFr-004BgQ-PW
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 21:11:30 +0000
Received: by mail-wr1-x42c.google.com with SMTP id n14so4744792wrq.7
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 13:11:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mEFtl1Tv/8nxJX+EKBZcS0Lbq1ln6/kUirDV/Y73Tsk=;
 b=BGC8nrmMzBNASLXkYa2JNo0/+8z6t4pK8iDFZsnFwNbRNywY9MSW+in1XAfzhpduHG
 M90eCf634zQDtoqa+KxYP+4Q/F9NrnUwkV0Hq71kfygDD9iDFhDTHeVYM8n8ancu8Wro
 q9/ekreyuQmJOIiEAHj2lugGcj8qN6donBz7TnBgMRMjnxKurRav02a5XZt0s7bdm37f
 jOPee5RfiLPG/58Cp4IT85T9UADV/4UDPF/HI21FDDDpr6paXJoX+WUysCA/MpY9mPG4
 ow3IXPTXuH8j0L7sjRZWe+DrZywMI/VqaQ9slo4SDoglDlfHEfFdESIhiJ1pYZCEv+VJ
 JhYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mEFtl1Tv/8nxJX+EKBZcS0Lbq1ln6/kUirDV/Y73Tsk=;
 b=Ng9EUyqDauNKcdXGXZAuScJ+0YF874t3fcrD7C2Z/6b6vzzz6RTj8LolE3m9olgmaL
 h+YliFyL5b5QxLdHmpT0goKXNh/5jk6jU19PPhC92+4f4nVA0gyGEmE0mU7/P8BA1AAm
 9935QQ6Euf04biVBW7eYbveigtuyhXnhuw4BsCZKinZb151Qyt+nE/hQ05Y5+L9vxj9P
 aGOgk3sImrrXMH1pV16R08eThOvu/al96JDw9wJ64qDb9DzvC5XraYdOVEwsP1lsGb79
 dVp4uZGAvwtjfC3UqD2IlxrLmn8SHsSE2rXuuIrhsUQXqncLWEFfBqhgWW269m42QQqX
 7EVQ==
X-Gm-Message-State: AOAM533lrNRGck3Mk4KyxAv2wVcFPcMn3Q3nf9yi6HpXfwpzxM64eWyL
 aMVdYXV6qggBBwzOQM11KhOksQ==
X-Google-Smtp-Source: ABdhPJy3A1W9tLBSCIWiQnLMKAnn7XqQUscUgC/xxLeQMr8lptDLl6mme9vRIINzoq6iIM5uwmaMFg==
X-Received: by 2002:a5d:64c4:0:b0:1f0:36ee:15c with SMTP id
 f4-20020a5d64c4000000b001f036ee015cmr3143058wri.126.1646255486175; 
 Wed, 02 Mar 2022 13:11:26 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 z5-20020a05600c0a0500b0037fa93193a8sm145776wmp.44.2022.03.02.13.11.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 13:11:25 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, john@metanate.com,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 04/18] crypto: rockchip: fix privete/private typo
Date: Wed,  2 Mar 2022 21:10:59 +0000
Message-Id: <20220302211113.4003816-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302211113.4003816-1-clabbe@baylibre.com>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_131127_863249_1BD41549 
X-CRM114-Status: GOOD (  10.85  )
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
