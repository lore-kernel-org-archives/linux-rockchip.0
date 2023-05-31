Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F705C7EE2D
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 May 2023 16:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3+q556B/nHtCXN5Bs8MHEbypbyzyc+kDkHuU1Cyn88=; b=IQyVDEh579pWTc
	pw+ic6FRZECltD53eBvkUm6SWhSIzQponxSaafR3+624AKdetBF43PDwktwL+1CgvVGgTfnpjR6HC
	GRnTD30O0jbMP/p0wdZ+CRKoJXJ2Dz1VmMw1Kh8w4aJ85dQULzlgXldqcT0L3sOamF5O8m/WBO5A9
	zIdzvlZ7xi6LNn0Cy4AxIR85mRKeSybrUeWLrrkQROzXAaU7EfSXS7motjYVfCYMc+jyIQdrUJgol
	r65C5zOuoMFSlHPnX56JIfYTuwnuwXmbOS9i3HlPhheR1X6uhxtc6dHHH/A58c024sNY1/JHCNs1U
	RmUedKYM+wkO8HopM18w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4ORL-000Qai-1o;
	Wed, 31 May 2023 16:12:47 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4ORC-000QX5-30
	for linux-rockchip@lists.infradead.org;
	Wed, 31 May 2023 16:12:46 +0000
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-39a4eb67c5fso566141b6e.0
        for <linux-rockchip@lists.infradead.org>; Wed, 31 May 2023 09:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685549555; x=1688141555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xRGMbc5CA5gbApr8byJzGma0rBdn83NoACULX/tdSoY=;
        b=UgF4EaOFC3RYspDE4hGw3cb6qSJvaaspfu6nbPynoHhra2QZjNDtC1FaTeYTWLNMvs
         EticXO1E3yE5vhmdFt6Lo3yAq2nxxtQ1TxFvPXMy6hbmTH4L2yxvj9+aDBHyL1SBomGx
         RDgzr3uKKJaT441zyGEFAAhvErjEXKiXR7VZa10+rnHEDOBXGHy9xwNGXdkxcL0A5dZ9
         xyrYEA0yDfjd2gbVODN/0Pxx3iZf406Dc8gaTv7oVKw7/Td2Ffbi75VENGP29NphgeI1
         DQ0QP+7yyZ/Q8XrkpwHVYzTxKwF2ccTNBa87JtHhNI5PoVsRC+unc9imYWgSfEc6Qsk6
         8LqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685549555; x=1688141555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xRGMbc5CA5gbApr8byJzGma0rBdn83NoACULX/tdSoY=;
        b=iwVlxQqFmR5GN/vmtvsVyiEqYhlAPKX6YXzumgS4HbSWXgcoMqMgPTTEHiuX1bKLXQ
         jzJgZDiIOvfHsUcCxyiZt3ATGko6M/8JhuC8wyJ3EITR+gh1hjIcngfjdXNyXNc0YbUe
         jQKVHh/aOFA5gpIhNtRfVZGibeAkJDTEVWjAW7oAnB7I10ZTgfjMZaYNwjKiSWU1qFob
         /oho+fzUOvzgKuRyG9yb/YhXLOJWEwL95LSz9W1FQLFcytlj4pWvgwFr8EQ2Xf4b/JsP
         radyfYKX9aprT6Py2XgveHtT/bpp/Wj8WpDiuzSK5DjjsfkavP91RgkzDf1eVO0Ieuf6
         xRaQ==
X-Gm-Message-State: AC+VfDyQG0K9B2ybvPoLd0QNX73OqeQo88mGFjeaqgqY86nOyG9ymalR
	tupaH7wgmyBfs3cobKwrqYuofafjPvU=
X-Google-Smtp-Source: ACHHUZ7CCuVp+qmQuRbUpmhvQEFBGVbfpbIc5QjXdZYaR0WEldQXrwDPBe3y4FyE22xDr+QPnV85Wg==
X-Received: by 2002:a54:4190:0:b0:398:e4c:d5c2 with SMTP id 16-20020a544190000000b003980e4cd5c2mr3542268oiy.9.1685549555174;
        Wed, 31 May 2023 09:12:35 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id c3-20020a544e83000000b0039a21e8c620sm684633oiy.3.2023.05.31.09.12.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 09:12:34 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	lucas.tanure@collabora.com,
	kever.yang@rock-chips.com,
	yifeng.zhao@rock-chips.com,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@amarulasolutions.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	broonie@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/5] arm64: dts: rockchip: add default pinctrl for rk3588 emmc
Date: Wed, 31 May 2023 11:12:16 -0500
Message-Id: <20230531161220.280744-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230531161220.280744-1-macroalpha82@gmail.com>
References: <20230531161220.280744-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_091238_971037_3721DB0F 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
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

Add a default pinctrl definition for the rk3588 emmc.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 657c019d27fa..571cdec24a66 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1187,6 +1187,9 @@ sdhci: mmc@fe2e0000 {
 			 <&cru TMCLK_EMMC>;
 		clock-names = "core", "bus", "axi", "block", "timer";
 		max-frequency = <200000000>;
+		pinctrl-0 = <&emmc_rstnout>, <&emmc_bus8>, <&emmc_clk>,
+			    <&emmc_cmd>, <&emmc_data_strobe>;
+		pinctrl-names = "default";
 		resets = <&cru SRST_C_EMMC>, <&cru SRST_H_EMMC>,
 			 <&cru SRST_A_EMMC>, <&cru SRST_B_EMMC>,
 			 <&cru SRST_T_EMMC>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
