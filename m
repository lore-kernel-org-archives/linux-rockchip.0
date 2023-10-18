Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28510C41513
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 15:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KkZXT2FgLvoe8BGwz3y8XT+JvrgRtSFcS4k7Qrr4I9w=; b=FBgNBEPuGH8ByX
	A/TtKoYls9+LMpC2whLUs+3LVyCLW/jBhnQf2lTF71ccDjhRIHZ2IU8uqFbQCskJvvxNGuBE4nEcz
	yuyFGz1bzAEESMBeJ6MLFya41xVLUWHhBSTw+1zCw90PJGIcLed/k6ew2MO22+NJ1msEvYAyANn5x
	NLBI4Kx9p9Sth7GtR1eet84rS3vli16r0x1padXCcYiULsShOe3Luh3tGb4sRi6GmGyEhtXUQnF7v
	C3RYNjqlVTlM0C4EvAzNJxtgZNg6vMijVR85YnzQavGZ2zt+0o9KCUBsycM/WeJZjoC5OCFydL6ab
	sFRvD34t4KcVqpPHhJDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt8Z1-00F3i1-0G;
	Wed, 18 Oct 2023 15:34:27 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt8Yy-00F3gq-2n
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 15:34:26 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-57b5f0d658dso4061832eaf.0
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Oct 2023 08:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697643263; x=1698248063; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jIiKTx5IOMw+xS6ILlA9ImHqJslhy4Q4M/1NT+5NQHI=;
        b=mHHMIyoWWDWw81Nx8X31Cz/DVCOW2TZe/uze+GM+NHPDfAB/z8EU3i/+2+CSJZKp89
         gxsm9JSYMuQi5BW+hWgFjH5Qb3v7Te9kXyYD0u5aJMjqkBGsgs5hQiJYyqvTbkFr1/qJ
         fvcU+jGa/88UR9dgA9w4beZxdV9TTwxeZzzFCI6rMZMp4C7IkftVNmYebvPp3fNUhrMD
         pnReVc+jGBno111h9trIq9tb7iZHgYRsvJtr1zxYqk8wgIrf/jSJoOAgcVSEcCy+/MmN
         DefETHqD7pQT6QBL571wbIwWpud5rHZ2GIjjKyPMS+4YdC2hg4yZ81kzfcisDaau7aLe
         JMZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697643263; x=1698248063;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jIiKTx5IOMw+xS6ILlA9ImHqJslhy4Q4M/1NT+5NQHI=;
        b=W8WvZSlkBS4obVgGbqVyDMyeB07x/LWzbKfeJYSb7wcJLS3JyhgSMJyPw9X59cYn7y
         UnrhaAe7w5CRAF8ov84I4VZfZY79seoPx1yz93uwn7zQvXRXgBXG/PIt+rSuarfzO2/Z
         F+VxdtCBOM/PVEPof1Dav2bOrhLvtByj8A++8GSQ1JWiLsiYAuBDtsGOXHEqKK2t2d6E
         HMfosQlI/WLTSRMhmWahNuWTj0fM7RlOw1WhNrb0u8CZzBYV/IURLqbt6ty5H03s0aj5
         ieEV/wL5+6HKwJus+Jg7QI5UrxpnEA5doeHb9P0dXY1NA7rWp+/ryZRp96XpS/NMhue2
         wyoQ==
X-Gm-Message-State: AOJu0Yyomwrdxlhl4LZ7lFp9KhVH+UbT7DHME7dG8zYVErkAnPDHvFPv
	iarbnVUruwEqySvx12QPHLbkJmULVss=
X-Google-Smtp-Source: AGHT+IFN49iYKj94sO+Ii7NyZhe0uPOWsh2AzoBd1cwspGvFw5CSngytJLUvZOSbCwldCkXh2Jbjpw==
X-Received: by 2002:a4a:bf0b:0:b0:581:ed12:98c6 with SMTP id r11-20020a4abf0b000000b00581ed1298c6mr3410894oop.4.1697643263134;
        Wed, 18 Oct 2023 08:34:23 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id h16-20020a4ad750000000b00581e090fd1fsm523782oot.8.2023.10.18.08.34.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 08:34:21 -0700 (PDT)
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
Subject: [PATCH 3/3] arm64: dts: rockchip: Remove UART2 from RGB30
Date: Wed, 18 Oct 2023 10:33:57 -0500
Message-Id: <20231018153357.343142-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018153357.343142-1-macroalpha82@gmail.com>
References: <20231018153357.343142-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_083424_903111_8007395B 
X-CRM114-Status: GOOD (  10.15  )
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

The Powkiddy RGB30 has no onboard UART header, so remove the reference
to it in the device tree. This was left on by mistake in the initial
commit.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
index 3ebc21608213..1ead3c5c24b3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
@@ -64,6 +64,10 @@ simple-audio-card,cpu {
 
 /delete-node/ &adc_keys;
 
+&chosen {
+	/delete-property/ stdout-path;
+};
+
 &cru {
 	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
 			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
@@ -149,4 +153,9 @@ rk817_charger: charger {
 	};
 };
 
+/* There is no UART header visible on the board for this device. */
+&uart2 {
+	status = "disabled";
+};
+
 /delete-node/ &vibrator;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
