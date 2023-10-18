Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17FCDCDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 15:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GaG/jDUc2gym+kcJ2ciIjTDiwc/856eAS53Q730MVUc=; b=ewBtqY0TK5rhkl
	Sl8ZDgqxecAYkaLYbH2YxpVOMJCRo6XxhMqX+hasD7hJZG/6OIJ0o4ArWVbJ7ISWGm+6dg/hYqqss
	zUp2sP74XCebfIjtCWzUGbyTvChLMnLoNKVyHKGscEipDrOENIH1ljeInoi3vAjhK9QNnLImu+HDW
	QigEShj9m3Dk3wjxcnDGoADscpZ3Ii8M1B7x4n2b4mqNYGYouX+5J4J9v/3y1n3xo8YJnhHVTNqiX
	ePiebWwL8YIwt6PpDM07pKUxqcdyDKDt9QQnPM+ZZN9xCX0D8+vA+5xAJhHR2lakArevBomA0k3Bl
	zTWZ76FO/+3f6oFye0EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt8Yw-00F3gA-1q;
	Wed, 18 Oct 2023 15:34:22 +0000
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt8Yu-00F3fE-1b
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 15:34:21 +0000
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-57babef76deso3854521eaf.0
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Oct 2023 08:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697643259; x=1698248059; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/KzXz3q7UxD8yzrIaZqXLlJtzg+A1VIwmVfWbANSNxk=;
        b=JKqxv6s+ipXWHEOZmnRpUzip4uR8hVZQxImZ6T9BZ9hO3W2byjSFzfWyr9cTOnRMha
         nfTdy+0T0S9q1ZtsglkLievfGuYZ3pCVvZQZA5r8uaM9xJCJX9Ix3/jp/CR4EcRGvoVb
         /lhJR97pQKKH8SWTYVXua1IMZmkOWkJJMzOmfZ1BpINfluNctpljM9UOHVh7Bk8dlusK
         AAO+wOIxYTbjtWRM87+dVW2JqtSDVxJVipGWTeJIrAJjfLmpzFIqFAr+CeIp44xaUh0/
         nIvV2YwyL9J89VgBgNqK7MSy9sYeEjtABRDCOe5vlN2Zo8CVqS5OKDkdWaLaBy9KXRcC
         2T6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697643259; x=1698248059;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/KzXz3q7UxD8yzrIaZqXLlJtzg+A1VIwmVfWbANSNxk=;
        b=kIcHijaQqEDxgOeOYmaIdirz/nIFS3f6K2zrdJa72QJqTDibEgVKuIJBnGx1raRA/T
         6covvx9UtV/4v7w82nxPbujHqE/sQuComeMhq9M+RRHlZ+hfMEdBY4X0jBiyDVE7zN9L
         milAGfu4eIAmeffzodG+skEbcrF+UW1vBhrUkXxtrJyWQ4VYvVcG/fIvfeclNfSqyFpI
         HCi/9O081AiI3jJ1Bf+LltyHWy1q8zLPQ6JRwjmr6Z87Jd8LtHy/jgJbvRVo0dLZi4y5
         HS4MW7RLxJtzNTPKuetw2Z9nbgM7Dp7ZT2WxPr42tJKj5/zzCorZ7+bmO9ft9IKaHw5X
         j2VA==
X-Gm-Message-State: AOJu0Ywvb1JCbqS52UeqK+ODv7aarmIoYbfl5aA5138Oy0pdKagtmQgg
	Jt2ygJXNYXMbSJDwLOk1XZyoAT1DHeI=
X-Google-Smtp-Source: AGHT+IEL1iEm/4noFAPKBHY/aZb1xaW7voyUJp5gaU5xNsKksALHSoYPn96HXOSnmMvff6IagNC7tg==
X-Received: by 2002:a4a:4304:0:b0:581:3e09:2623 with SMTP id k4-20020a4a4304000000b005813e092623mr5207123ooj.2.1697643259195;
        Wed, 18 Oct 2023 08:34:19 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id h16-20020a4ad750000000b00581e090fd1fsm523782oot.8.2023.10.18.08.34.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 08:34:17 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: Update VPLL Frequency for RGB30
Date: Wed, 18 Oct 2023 10:33:56 -0500
Message-Id: <20231018153357.343142-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018153357.343142-1-macroalpha82@gmail.com>
References: <20231018153357.343142-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_083420_536877_2C057743 
X-CRM114-Status: GOOD (  11.69  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Set the VPLL frequency for the RGB30 to 292.5MHz to support running
the 720x720 display panel at 59.97hz. Without this change, the panel
runs at 59.08hz.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
index c7828c99a1bb..3ebc21608213 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
@@ -68,7 +68,7 @@ &cru {
 	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
 			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
 	assigned-clock-rates = <32768>, <1200000000>,
-			       <200000000>, <108000000>;
+			       <200000000>, <292500000>;
 };
 
 &gpio_keys_control {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
