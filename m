Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EE82CDD0DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 19:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TmoHR816pBfYvSqosA+rTHMUY4J6iK96NifZrGHzjuk=; b=EF6lkXjWwLLrqD
	K+2+1cKsS9i9MHuobx5QmQgSahZ8XVtBarveTv7JbNoqsKBGsuomG93e7f5A+E5U8irPNVYCktWDg
	QErp6RKrUJsw3iXooIHOsSTuCtTuh61AGmnUhl+yyG41uAPsIQE+YGq3Lyn55pASYKvpwEXHslN/o
	lO9s/lHpsG77yHOpXPmKyzUV+BrDrtGuIk1k6wRHx5eT8Q6eSoazb9bgYxS6uLs8vGsYDHjPBtyUp
	ZgCdpZ6gYXfNDY+XVY8aGmlteoAFBc8xp/Y5f5CjOgGwsM6w6NV8qrfUcOqYaF2nuF/WMbWxSM4Zg
	OakPB5+KJVdG8jFp1pjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Km4-0000000BypU-3FzG;
	Tue, 22 Oct 2024 19:42:36 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Kfv-0000000BxcO-0vvV;
	Tue, 22 Oct 2024 19:36:16 +0000
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-7ea76a12c32so4879958a12.1;
        Tue, 22 Oct 2024 12:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729625774; x=1730230574; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZATNHLu7ryXLlEMWdw/soQewkOcMuE+6eXALk2zJ/y8=;
        b=b94lF01XzZ5GvAQsHY5iLaetjBqxeKkFsckSFiuTgEZSOpjJ+TNCcKny3MMxJSyQ1D
         WCe61BpYIMxEvGm4JDmmwXh0Dl+VhWbHIyMWFnro6ChSUSUOIUUhAutRCUS4f3AwnVkP
         e7Csl0HiwOlhByceheuuVx9/5QJ6EP0NdNTxQq/ON0uF7T3YC4TTQNQ87/0DnybS4OV8
         /eoYFwtW9ibWGkF+kOE9l0lUwIxUtqHjCNJVceJvpdlLk7aw6Z8i4Fw8MGwO26IbojFI
         Iq2lOj69A7E7fiKXuFs1XvXKYq1+7sva+SsCU+tfnzgu8+M23w7M6cJywueIhu/8bbQd
         0nFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729625774; x=1730230574;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZATNHLu7ryXLlEMWdw/soQewkOcMuE+6eXALk2zJ/y8=;
        b=vFrsejmBIGT3J4N1fuiDTy0BFjzEqKa7PMqBxur5YNNE2uQ90l4czaO/o8DRYzdv+X
         MRIUV9RgdMT6aXk/KppnNaXtmDzIJ9Klv105OYwG8SHit+5/+M4/wc78tqy1fGGdr3fB
         /JfleSozc8LFujQGoi8U/z9VhTkoQ09Y1OgJD44mIndeOnbyfXsPPyIYDooIYufB75kc
         z4zWy1gk6UaCxdJGDoZ7aNvyRzVt4wA6uJzTGUHrQK3GJz2Hpzk/L5H38XaDcfDeMCTo
         t2ToNvEcnU+sahi1FmzPfzm6y97Rgp4av4mfXcYI1PDTzom++8X+ToFB9HerSyaKc0Gi
         loBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWM+4ywdjfOIbyK54t7H8KVRMNXAZ09QXwP97PRAX8JM1bCR5AFJFidroQj1bjLx7XeALLhkaogM/kgWLb8asg=@lists.infradead.org, AJvYcCX7AUmzdDt8o+1ayyBvuQNmb9h/7BOngME5nTdIVgHuiHL55ZSEqN+8hPSOe/+e51HPUtxoXOCtymKfeG7mrP0D@lists.infradead.org
X-Gm-Message-State: AOJu0YwD25XqcHgz4b75/TRXHaoGKZXguyQQR8lOnvFfeNdvAK+Ir82J
	ANt85BF7PG+70FIaI5miMW25GUzc4frEQhTiCp5wqMXKTkhpdxnk
X-Google-Smtp-Source: AGHT+IGuEr0jw3gysbwK6xAgXQVAp73Rxim5u5IqSonSQ50FehaQdZxMf9RI5ejAh/MnH32asL036w==
X-Received: by 2002:a05:6a21:168e:b0:1d9:2a0e:971e with SMTP id adf61e73a8af0-1d978bb27c5mr96065637.46.1729625773809;
        Tue, 22 Oct 2024 12:36:13 -0700 (PDT)
Received: from CNSZTL-DEB.lan ([2408:8262:245d:4d65:bc4b:53ff:fead:2725])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7eaeaafb1e0sm5467316a12.3.2024.10.22.12.36.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 12:36:13 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] arm64: dts: rockchip: sort props in pmu_io_domains node for NanoPi R3S
Date: Wed, 23 Oct 2024 03:35:28 +0800
Message-ID: <20241022193537.1117919-4-cnsztl@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241022193537.1117919-1-cnsztl@gmail.com>
References: <20241022193537.1117919-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_123615_285336_1ADC345A 
X-CRM114-Status: GOOD (  12.50  )
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

The status prop is typically the last prop.

Fixes: 50decd493c83 ("arm64: dts: rockchip: Add FriendlyARM NanoPi R3S board")
Suggested-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts b/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
index 66a00cddda0c..243574f8da78 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
@@ -476,7 +476,6 @@ vcc5v0_usb_host_en: vcc5v0-usb-host-en {
 };
 
 &pmu_io_domains {
-	status = "okay";
 	pmuio1-supply = <&vcc3v3_pmu>;
 	pmuio2-supply = <&vcc3v3_pmu>;
 	vccio1-supply = <&vccio_acodec>;
@@ -486,6 +485,7 @@ &pmu_io_domains {
 	vccio5-supply = <&vcc_1v8>;
 	vccio6-supply = <&vcc_3v3>;
 	vccio7-supply = <&vcc_3v3>;
+	status = "okay";
 };
 
 &sdhci {
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
