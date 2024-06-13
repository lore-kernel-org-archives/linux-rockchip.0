Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56E97C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 11:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ne5ZSo3zGE4bcYeI61x+KjoG9pft2nHThnvK/QLu154=; b=VINFPbPw4Gl/Y3
	nkAeiIg/gzo7NMH6tzouoX8G4ysAEUhONPGxvAXa6EFDOYrYqPfXOZjYrdWGuzXQBcb62K8Qjpz4n
	WgY+TCliV6ZsljMX/uxoprVaJu2UT7tXHRxlPiS0uRLI3c4QvaJ67KAW2/8r2pwTXDF6yGwx31SZt
	KORJWqWvxVJzoioJTpvJnfjsHQxl8MNaVSgF9i95iPq/bIu2U3jWdq2TetLty8Anq30tTqflA4zdl
	8ykbnz+cDGw9at2LvOxwnRY87X2rywdSNIA8dA5wkFDT1l8OUNi7ySIhlKXIlB/AKHR0OYP5CHUSe
	s9ndj/3s+RLMa1C1o1EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHj6r-0000000GPTy-2tiX;
	Thu, 13 Jun 2024 11:59:17 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHj6k-0000000GPO1-0yX1
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jun 2024 11:59:13 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-2c3051aee3fso745932a91.3
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2024 04:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718279949; x=1718884749; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6xHqGzbGEnyXYOufhYAT+1jOvdAL9AF1EdfNf7hRahk=;
        b=KtcC2jIbzYuJ6zGnONS3YR51hUKznUxbE0Z7MQKI5MfLaF+uo6NZD0Q1ytTtNAZM3h
         FPfJiY/zutAAJDPuWLkwpgeeGNkT+de9I8+9xINNalb4qtjC05vYQFrMNnt3+s7MBuz5
         Y5iD2LxKDLKfZ/JF1k8KrCrjxxEOFK9rAbEE8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718279949; x=1718884749;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6xHqGzbGEnyXYOufhYAT+1jOvdAL9AF1EdfNf7hRahk=;
        b=VfvG0G8pPkfUUh9lL4fSC546t6FvdFbk6zaq9LQQ2C/QfDLA1npLBakV3yil8WWrAK
         U7+pjpk19M4/nfkp2o7QowKocubMQu/iq8IlMhadNApkEvwVuc+iBUo18cxkjBtdTuTH
         waYDTuQtZISNyMUsANcM5gtQ7tBJUjrXulnuOA6LGMvXgYW86AkyP15HcY0E9ff6NrlV
         jm1lrxlatCIC+cp+0JeO29ccRPSi4vZddpKkf8mq3azkgqJxcL9jgnMC+zQvGSnDHfOJ
         T5rFQKLae8H2w0/XyTqcGeya9qKKBeiGAb0a8+hxslKyB/5Bzf/fyyKaapJbT7ki5EbD
         C/5w==
X-Forwarded-Encrypted: i=1; AJvYcCXDEAx1oHexD8J0QDcZgK3H2ESWNBvHqjc2AfedyuzcHIpUiCYRkB9P+G5qjVFjJHPyQ3VlePLabvc1XHkhdz3QGxTGEZM/wL2HWK802z+NPvA3
X-Gm-Message-State: AOJu0Ywx9e6yJwj08YdKdm4IxKA6rOc3wS8KmKaBhKkPzgg/CaoMjiM3
	gIzdrg6TJ4kj39G755Who6zp6YyyDVMvxcyEtuyd5KRdwwLFPJkjpMCl2zBJeg==
X-Google-Smtp-Source: AGHT+IEUzLyoz7lt27fPBDlUwSbmLIUoS+0m0haC8TQCTmDUAzTepAUQd32xctUWuwr+KsV5RI+pwg==
X-Received: by 2002:a17:90a:5d98:b0:2c2:4107:1fc3 with SMTP id 98e67ed59e1d1-2c4a76d3777mr4729921a91.38.1718279948594;
        Thu, 13 Jun 2024 04:59:08 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (60.252.199.104.bc.googleusercontent.com. [104.199.252.60])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c4c466c3desm1453505a91.46.2024.06.13.04.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 04:59:08 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Thu, 13 Jun 2024 11:58:55 +0000
Subject: [PATCH v2 2/2] arm64: dts: rockchip: rk3399-gru: Fix the value of
 `dlg,jack-det-rate` mismatch
MIME-Version: 1.0
Message-Id: <20240613-jack-rate-v2-2-ebc5f9f37931@chromium.org>
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
X-CRM114-CacheID: sfid-20240613_045910_375672_9F01D5A6 
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
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 789fd0dcc88b..3cd63d1e8f15 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -450,7 +450,7 @@ da7219_aad {
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
