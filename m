Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADEA1C27C75
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 11:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WQs4Ty7lTPz9ylyX5e5nPQjH6Y/hwDN26mTdvo/rFxM=; b=mHrwXj2FCXKSr9
	YDDV0AEaQdP1U+igpu9aMiFJ3lIMbBHWygdQiq07Z8lcgqP6I3E5dsXlP9DSOarnGlBQDMYjwPF4h
	fLatSUiQHnCVf4GXKQI0OnbjNne6raObU9BFJdguuS/JxDhRI/uBy6Nf4w0SgOYJtO8SkwJe+YP6s
	lj9Kg+/5lRtETF3Qqd5Xar4CIveEs21DClFGq46cYY2d6VJOSX8jakcPvB1eWUnfmKy7PqXpgrVXN
	BfR45/5MAtGQhz4iGAXyff24JxHggaTfz+5u2iwwb64tlrXgoFT+Xr1zS2IXcvvKCuwfYou9cn6rS
	h9yE0TzT9jD1KHK7A4Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHj6k-0000000GPPE-3kJM;
	Thu, 13 Jun 2024 11:59:10 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHj6g-0000000GPLd-0eZM
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jun 2024 11:59:08 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-2c2dee9d9cfso761659a91.3
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2024 04:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718279945; x=1718884745; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lFWI3DDItyQVutRiXO8RX6hmLD8qSv3rrOP6UnExo6o=;
        b=DDYGqh1G3S3FOrkBx04JWyhfCNuUXKLjHYhKXCe/cYS7MhihOCGZBRvyTILhp+/Yvv
         j/4N8uiETuLx615pBZSGLBH6MdLvCNUytK9FD1jW9kjSoxDLJt/K1WYTW/0pZ8kM+eW2
         NjWiY9RL0VpCupQl3cytcFlm+eHmvBlWC70xk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718279945; x=1718884745;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lFWI3DDItyQVutRiXO8RX6hmLD8qSv3rrOP6UnExo6o=;
        b=DANr7p4NMJLLfoIZ3kLSpqjtd48KfS29YD9NUGSwY/b1MWlV9ZPo4IYad4cJAEgbbn
         knAjkF3yReJrNc3e2gA1e1RySKmahHqA8XHt1qSaimDv+0mG5kBkg07xBX/0kul02bFf
         aF2j8vJiRjJS5ELRu01PlIlq39k3DXodLxFziYThxi06knBu8TTQ/+2Zofz5j23s4AJN
         bFT7Kwa0FlshQ0ZDohTHUWWDF0SrhpJLjhmK1+oxBo1SxZlX3xpzSn75MCEpsxlcbNp6
         hKcnRlC12fGp8jgCQaPocB0Wm0yvGAr6ybdocxcr1EZrImGK/1sl9rG1lsJzb/gM3DXk
         Oquw==
X-Forwarded-Encrypted: i=1; AJvYcCW2NfAH4mMuIHy+rYen29NPWvT0O7HFfb4ndrbEu9wd8Q7kvL38W0W+OOFp71nnpv+PgWCaM/Ni1Wa+SgWBs4kkcJ/r67o4Ja3UVH4EL491YawV
X-Gm-Message-State: AOJu0YygN8sD+9ywAX4ZBT3wf4qF8ettHB6I479JMgu3eFUrfgNvk9Fq
	mIJkoppeEDWBMdjSHKHXD1opGSBNAQivzPlQ5DDZnbHmH58QPew/3bs6+48nKA==
X-Google-Smtp-Source: AGHT+IHD/wwLAZVG66P7MmZbAQ5abkZDMU6aSnV1YmSQrBqnGyhFTlyZLbFUkzCum+77t6hfBH2SyA==
X-Received: by 2002:a17:90b:391:b0:2c1:9892:8fb with SMTP id 98e67ed59e1d1-2c4a760a325mr4845537a91.5.1718279944696;
        Thu, 13 Jun 2024 04:59:04 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (60.252.199.104.bc.googleusercontent.com. [104.199.252.60])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c4c466c3desm1453505a91.46.2024.06.13.04.59.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 04:59:04 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Thu, 13 Jun 2024 11:58:54 +0000
Subject: [PATCH v2 1/2] arm64: dts: mediatek: mt8183-kukui: Fix the value
 of `dlg,jack-det-rate` mismatch
MIME-Version: 1.0
Message-Id: <20240613-jack-rate-v2-1-ebc5f9f37931@chromium.org>
References: <20240613-jack-rate-v2-0-ebc5f9f37931@chromium.org>
In-Reply-To: <20240613-jack-rate-v2-0-ebc5f9f37931@chromium.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_045906_245044_6A49DF3F 
X-CRM114-Status: GOOD (  11.40  )
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

According to Documentation/devicetree/bindings/sound/dialog,da7219.yaml,
the value of `dlg,jack-det-rate` property should be "32_64" instead of
"32ms_64ms".

Fixes: dc0ff0fa3a9b ("ASoC: da7219: Add Jack insertion detection polarity")
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi
index 8b57706ac814..586eee79c73c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi
@@ -27,7 +27,7 @@ da7219_aad {
 			dlg,btn-cfg = <50>;
 			dlg,mic-det-thr = <500>;
 			dlg,jack-ins-deb = <20>;
-			dlg,jack-det-rate = "32ms_64ms";
+			dlg,jack-det-rate = "32_64";
 			dlg,jack-rem-deb = <1>;
 
 			dlg,a-d-btn-thr = <0xa>;

-- 
2.45.2.505.gda0bf45e8d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
