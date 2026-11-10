Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABA91606A33E
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 08:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mLxH8DIz;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=XbXXSqXh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8NbXxfT2r1IjIqM299Sk2icmzpdYQCcYvz1v0uaQq+I=; b=mLxH8DIztmxlJ6H9D2p3xt8SnF
	49WXLuyt1uweFA7KK6hXKUeJHXDEBH6dq0DxAUJ3MNkbKNlEyE2ycYtojhPpojfnFcvo1YVhkZP9i
	/dlw7e24iRAg/SqymMGXfW4sLV2uGtfijj4Jl+XlaEw0MgJNAJsgrE0K9Ru9xVysBEBlqxK4BPcMk
	Z5UPZqirrvlitoKfBAzY4luzMcLxJsr+hhY9JVZNIngZoVil75YzcMkffcb7daGGTqs/YSPv2Y0wM
	l4Lo5tQeINavkgF1n/J70ucqkjk1o9UNKTrt3/KD9u8N2WET5oGrCBxtgUndq1lih5opVh1m64IZW
	uOmiY1wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQh3w-000000034hi-0SEx;
	Tue, 10 Nov 2026 08:18:40 +0000
Received: from mail-dy1-x1331.google.com ([2607:f8b0:4864:20::1331])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQh3r-000000034Zh-472H
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 08:18:38 +0000
Received: by mail-dy1-x1331.google.com with SMTP id 5a478bee46e88-36e90071735so288880eec.0
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 00:18:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794298715; x=1794903515; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Mp9IyFvT16+hX88RJrtjgklK+/LOWFoJEWqYM2GWuMQ=;
        b=XbXXSqXhp4n8eiwxn0x8r61PHyp0PDnN6f1lUXdwPWvuhcgcVZo23UrZNjqUmXxSJ1
         5e7fOuoVou08sGqptSuv8l8CFXpFw2mL6C4uPMdK2ad+v19ZGbqJTcQPy9bML4pDcC1m
         iC46vx9LJx4ob+SmP9ai8a5Vuee91WpSibTSuMbHU5pXfjrNSRRjrQQ/RdqV/zRFJXAC
         Zw76ldFQGZOTMSdLKlOOXr3Jy9hAUAPBSJlyMi3LsVSvReMIKGmJK11rHDv1HownyXdy
         dKjzlOXPsP1IBcNnruT7gCpWD2JA/3F/4RrkAf2J5D3Z/fswjhZtNdMfYGdDTyoWLV2O
         v4Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794298715; x=1794903515;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Mp9IyFvT16+hX88RJrtjgklK+/LOWFoJEWqYM2GWuMQ=;
        b=fvqWeoF4Z8oJK4/56Alh/tuA85EVHfyOtg+ti3mMWTSDSNkACilLKz/cx2Opt5ib+v
         BZEgtmeeyi64Uta7VGwSOyy4eMqT9DKua/1NeVk5Wkzu8VnUg6cOV7RVd+xo9jzh6pN5
         Ltr2IEuAxBUEEguFLjbu+CJ9oRobsy0A9FF3mx0X3v1SfMlUdW3Ioth7L2cH0gsAYi7G
         fuD8oYOk62Lan0iCZ58vlZWzpX/qA5gnsBuQeoPs2NMI+/dZX+F0xBmPVV7QMhJ0jkmI
         QbAzCAmrDXbV2icrnsdE6Vaikt+171RuTxno8vWFqANq4IiR6/lMTcghJAnbI72QqCkE
         pNsg==
X-Forwarded-Encrypted: i=1; AL+hErH1Rt06si1zJ02a+klMzxTPdCSxRMgTTM3p0cd/3UPD9NIcRIk3LJA69z/5j5iOU7CxLmTOK2RB5Mm25V5ERw==@lists.infradead.org
X-Gm-Message-State: APuU4Z+ZLUOMYqNSMn4Hu728FvHluvhPaaG8wiUA6Q5wbo+TM15aZsPE
	pvXGNdsYe5Y9lT4LefvZhvW8QBF2JGiuEDJkA/k+k5M8uQUKMxw1oX9d
X-Gm-Gg: AYBFou0Bc9q/TKZDkI89Jc86H089QrUanMIOfyVtTJCDaucrK+wIJL6/6nIFiF3Airu
	vq82qsHDRx4VnX43H+LE4YbYBvaipah/WTwRsGuOBufgNNT3omrx7wjfnTqMLEDCo7mhUVPUOZu
	srSp8R8/BPpSpBrcKGaBAm60xL+Q7P64TylHDD2ANiLJyKOKClDRZjHzg2TLgfKGEHDYPBydSdL
	1RXQ9tb0uansUwtRYauTKA6YTbCd27xrNp515t9+4SyQFUpx0MNZg4CuK+k6tBMrsqIXiFZ72oK
	mjgr4juLs6PSNAQCg8RNNLiqf+mGabvnlDhIjX328jVti8p6oGk1/8x5uIADSOcZvNV0mJC2v77
	BDBrGnjQG0y7Ox4aOBF8ZbOfebQ9/wpTFKzhXG1c+ZvUE0FNJC3CWUcs8j1huAoaGW8DJR9d7AJ
	VRSOw/3tLxIcccnGniELTfuLvWnmEw7HV5drqK60IoI0CU8JzytOxw4t1irczcOgxvJ0v4302Uo
	Czpx/8yijJifqa9dUOvlrgpcpHlRJL0AQ26AMyJw4HSos/qGY13NZVnTyMSyl2N3KUpVSRKjNVk
	lHyUrJhG2Hk5lMZSa2P4Wip65fgnt9buG1/Fy+tK7b6c1SlpoxenEOw5RSVAE9A1t8UY7bkXt69
	2agBNkA==
X-Received: by 2002:a05:701b:290a:b0:16b:4f52:a08 with SMTP id a92af1059eb24-1b3b5bc5b75mr3383821c88.0.1794298714350;
        Tue, 10 Nov 2026 00:18:34 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b3b5b2fc14sm5236759c88.12.2026.11.10.00.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 00:18:32 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Tue, 10 Nov 2026 16:18:07 +0800
Subject: [PATCH v6 4/9] phy: rockchip-samsung-dcphy: Always write the
 rate-dependent registers
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261110-dcphy-rx-v1-v6-4-d681ba20b36a@gmail.com>
References: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
In-Reply-To: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794298691; l=2619;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=LIh1d9RdBI9/gBSpmLf2Ww3xecRtR289gfN7TNiw1rk=;
 b=vh7WtesJEslT9LQa1QgtXchs2lhrai6pBKF9E8aFtdAdpc8JEMUwWFHoiWRWDV5rnQJfNXII2
 CyvmkFGqTM0Cpv/XpwfG7MNyurBRtigfnqqPGRKy5yIICDDKwRT+Ojn
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_001836_032083_F963075E 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The lane timing init functions write DPHY_MC_ANA_CON1, the four data
lane ANA_CON1 registers and DPHY_MC_DESKEW_CON0 only above a data
rate threshold, and the registers have to be zero below it [1].

Today the APB reset at the start of every power_on provides the zero.

A later change moves that reset to runtime resume, so a power_on at a
lower rate after a higher one would keep the old values.

Write the registers on every power_on, with zero below the threshold.

[1] RK3588 TRM: sections 22.4.2 (reset values) and 22.4.3
    (DPHY_MC_ANA_CON1, DPHY_MC_DESKEW_CON0)

Signed-off-by: Jason Yang <jason98166@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c | 24 +++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
index ce1bc62497c5..7a009d87a665 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -1228,7 +1228,10 @@ samsung_mipi_dphy_clk_lane_timing_init(struct samsung_mipi_dcphy *samsung)
 	regmap_write(samsung->regmap, DPHY_MC_ANA_CON0, val);
 
 	if (lane_hs_rate >= 4500)
-		regmap_write(samsung->regmap, DPHY_MC_ANA_CON1, 0x0001);
+		val = 0x0001;
+	else
+		val = 0;
+	regmap_write(samsung->regmap, DPHY_MC_ANA_CON1, val);
 
 	val = 0;
 	/*
@@ -1259,7 +1262,10 @@ samsung_mipi_dphy_clk_lane_timing_init(struct samsung_mipi_dcphy *samsung)
 	 * under 1.5Gbps or equal to 1.5Gbps.
 	 */
 	if (lane_hs_rate > 1500)
-		regmap_write(samsung->regmap, DPHY_MC_DESKEW_CON0, 0x9cb1);
+		val = 0x9cb1;
+	else
+		val = 0;
+	regmap_write(samsung->regmap, DPHY_MC_DESKEW_CON0, val);
 }
 
 static void
@@ -1284,12 +1290,14 @@ samsung_mipi_dphy_data_lane_timing_init(struct samsung_mipi_dcphy *samsung)
 	regmap_write(samsung->regmap, COMBO_MD2_ANA_CON0, val);
 	regmap_write(samsung->regmap, DPHY_MD3_ANA_CON0, val);
 
-	if (lane_hs_rate >= 4500) {
-		regmap_write(samsung->regmap, COMBO_MD0_ANA_CON1, 0x0001);
-		regmap_write(samsung->regmap, COMBO_MD1_ANA_CON1, 0x0001);
-		regmap_write(samsung->regmap, COMBO_MD2_ANA_CON1, 0x0001);
-		regmap_write(samsung->regmap, DPHY_MD3_ANA_CON1, 0x0001);
-	}
+	if (lane_hs_rate >= 4500)
+		val = 0x0001;
+	else
+		val = 0;
+	regmap_write(samsung->regmap, COMBO_MD0_ANA_CON1, val);
+	regmap_write(samsung->regmap, COMBO_MD1_ANA_CON1, val);
+	regmap_write(samsung->regmap, COMBO_MD2_ANA_CON1, val);
+	regmap_write(samsung->regmap, DPHY_MD3_ANA_CON1, val);
 
 	val = 0;
 	/*

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
