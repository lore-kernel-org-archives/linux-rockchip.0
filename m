Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A4D606A32F
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 07:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NBXtJbMo;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=AElDRGdB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ovYJpoqg1Fh0W3oR85zy3xPM9jC5LuZAdikJvboww1E=; b=NBXtJbMop7AMel3m0Jf6INBk64
	N73w9LiXdhNrSipQKg6v3N5adoB1lsBZkLUwlQFmMLK6veqYFqITBmh3m5R3C1XG99y9GWCxPB3Yi
	7EMemUHNb+ZWW7FpOT8Yuk6b0GPWXzNyJ/kClBZIgmTIRYnTcvWDUByMh1aInYgHCpSCoMeADtNX/
	d5egdkX6mwulopr1mv6dP24zhqr9Ins3WuxOte7HrOJPZtQAYbiVh0geVLkuHZ/Wmy8m30jud/2Fe
	CKMpL8gTbff2/0KnBBF0keN3VTcAYb0mht/5n4jlI7zbikyBIoKEt4SfNPfJ0rWKau7j4Fcfjw5QA
	FWk8lajw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgs-0000000FByT-40RY;
	Fri, 27 Nov 2026 07:48:18 +0000
Received: from mail-dy1-x132f.google.com ([2607:f8b0:4864:20::132f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgi-0000000FBm4-42c8
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 07:48:10 +0000
Received: by mail-dy1-x132f.google.com with SMTP id 5a478bee46e88-386b3524415so852027eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 23:48:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795765688; x=1796370488; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Px927uPzL0G0bD9p/DBHwmNAaSmtnfAuqfR/vrK6L/E=;
        b=AElDRGdB+G/txAp9jpyUVQMMHD2qaWe4GM5agHpYAbuIYjf7jDS0kb+AZZw5d8oKuv
         xJsSSHKuYJcsbqZtmVA94TM6kXTyNfGvFn3aXzQDdX9jVid1ijOEGV3iiM9ZAffLaZlB
         5OBFncn93V259pwna5g8Nmc3NjtPT1P/VGOauHrjvbxvWf21nLIhlYCCGZ44Cc1q9UCi
         8+sRmHqll6GaQJ76jm8tQ6rZBImW/dxMlQ8PkYAl2sb6LD87irpvPJz+RZGVluIfp6fr
         0UMRKmjHko4H7VDrXLSzNkFyvjVR1P5jd6qOFuPtl9LTmU9GgQplGpLDu+9cDOnSwbE0
         wJhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795765688; x=1796370488;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Px927uPzL0G0bD9p/DBHwmNAaSmtnfAuqfR/vrK6L/E=;
        b=SFRy+V7HAP+Brgqg4oCUnxgl/Lub8i393ct8bVpv1GEi/I/j03X17METfFYCB3nOV1
         3KvfBgMatxJ2wvIHPlxo8wrMQrwXvZJSN1o9+Xw34LYoaglDSPxX/K0cXBPDIp3MGwko
         359h3GRebJO6R9rKmg1Xa1VA+G/AQtEWhGA4eqogJh7xW4UCzYjpNtZ2tByR0UeNW3Vh
         OrkGA04U/S2P7b8PsKV5QI3BbJ+kOTS4jaLkA6Yh99SRmsOKima8VJ+ydD3RDZAnBD67
         plQ4RTBDWdRPT4TYsiZgxOICTGTHFSU+Hq0GQEiZ4/YKaoXsNHAOwPCabMoOOCCfHLzK
         Ec4A==
X-Forwarded-Encrypted: i=1; AL+hErFvVL8wS3zCETuTxgJEQIFBaRgpt73bfBesY/1BNUqIs2BQCeanIeZ//hNEt7MUy7RUprSBJMkUddN10ZL7Rg==@lists.infradead.org
X-Gm-Message-State: APuU4Z9NgrFPzvKBa7UYg7vIC6RaEoM9fLbXpwrBC0hRF2IfqqWEUtNb
	L1/OAD0z2Y4/HJwRGZanH85N9lisIA/k7f6LT7lkEAFmZLkIy7QE3kkB
X-Gm-Gg: AZFdTZckMa53cD29drnJm4UHvCF50Uoo78cDpZjjvI9b4hkP3o/GCyXxx/43VKRHdI6
	01qmlUKq/1fg0G1NEFjBoBfGaNf82zjtkUwk1ZAsn/KubMt8qaeM5x0b5tB/6q80YeIr+XEWKo0
	9IB8xMbAipq4JGQ8kGKRuILhK0NmqW/Nhy4NZP8QsX+ArCm5ITnxobJh9D1b5kFQAl78tSX3xFy
	WJYbajtJcGH6WqONx0va1Y54nTU7KF5sqzd9tum6/lgzZAd+E0SEE4CFHWxnDzinDmqtEB0wxLE
	LfZcovQHcaxow8rneh8dMEUPotj4h/SF90k/XCCxh7QLlpf+HDyvtXxMgVu39WBgrfTy1MfYuPt
	xX2QzJSTZcTRNBDxYCHaVsh8Hvd5dCsyqpEe2rt/HO9g6fPNHYUnYYq9zLlphPfRSf2Mu2sF9N6
	zoK7y45WIBUfGSgwC9I94NUiDHl07IwqdB2ftAQwDxSx319v/fi65e/Y2pqWOanqG2sRzhHTsw+
	KqB2+VjOKO7Pr/oVtY+WPjTVcOydTY7u/pyXwUJuA77GrviDOytqSRb3ErLNAMY64loscPaCyUF
	/QzTJF0PJ0PFZKJ7Y0g+qpMopLT75RVLyoxrJh0+Q0KVSvUCkP1d6R8U2DkPn3ovhhw/w3FAOJ0
	LfHhCL8/iK6cejD6Zz5cljg==
X-Received: by 2002:a05:7301:b8e:b0:377:d6e5:e642 with SMTP id 5a478bee46e88-3856e245b2fmr30879256eec.1.1795765687873;
        Thu, 26 Nov 2026 23:48:07 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-385672c6f31sm68098252eec.15.2026.11.26.23.48.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 23:48:07 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 27 Nov 2026 15:47:41 +0800
Subject: [PATCH v8 5/9] phy: rockchip-samsung-dcphy: Move block-level setup
 to runtime resume
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-dcphy-rx-v1-v8-5-9ddfef99221d@gmail.com>
References: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
In-Reply-To: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
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
 Quentin Schulz <quentin.schulz@cherry.de>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795765664; l=2576;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=jtUxPRys/dBRdscqaMmdtwL+bhADXEXJWj8FzO882mw=;
 b=jkc37NZ76qcvOYh5agQApQZtcQNReG1ovWyKUO8AV4O6rA0hn5+ykfSDc3v6dCTbakuw3whoa
 RZekMTnabqABs36D1Fvx+n0lqo98RCypPDEV8yvtWa2Bk4UHKNDLy2M
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_234809_042058_4DDC3F94 
X-CRM114-Status: GOOD (  11.92  )
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

The APB reset and the BIAS references have to be treated as block-level
[1]: both the transmitter and the receiver need them, and they only have
to be programmed once. They are programmed from the transmitter's
power-on path today.

A later change registers one struct phy for each of them, and a second
consumer coming up would then reset the block underneath a PHY that is
already running.

Program them from runtime resume instead, where whichever of the two
comes up first brings the block up and a second one no longer resets it.

This puts the BIAS writes ahead of the per-PHY reset assert, where the
TRM's worked example has them after [1]. That is safe: neither M_RESETN
nor S_RESETN covers the BIAS registers, and the values written are those
registers' reset defaults.

[1] RK3588 TRM: sections 22.4.1 (address map), 22.4.2 (reset values),
    22.6.1.2 (reset) and 22.6.4.1 (D-PHY transmitter start-up)

Signed-off-by: Jason Yang <jason98166@gmail.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
Tested-by: Quentin Schulz <quentin.schulz@cherry.de> # RK3588 Tiger CSI1 2-lane IMX219, CSI0 2-lane OV5675+DSI
---
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
index 7a009d87a665..d6acc3e2d448 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -1346,7 +1346,6 @@ static int samsung_mipi_dphy_power_on(struct samsung_mipi_dcphy *samsung)
 
 	reset_control_assert(samsung->m_phy_rst);
 
-	samsung_mipi_dcphy_bias_block_enable(samsung);
 	samsung_mipi_dcphy_pll_configure(samsung);
 	samsung_mipi_dphy_clk_lane_timing_init(samsung);
 	samsung_mipi_dphy_data_lane_timing_init(samsung);
@@ -1373,10 +1372,6 @@ static int samsung_mipi_dcphy_power_on(struct phy *phy)
 {
 	struct samsung_mipi_dcphy *samsung = phy_get_drvdata(phy);
 
-	reset_control_assert(samsung->apb_rst);
-	udelay(1);
-	reset_control_deassert(samsung->apb_rst);
-
 	switch (samsung->type) {
 	case PHY_TYPE_DPHY:
 		return samsung_mipi_dphy_power_on(samsung);
@@ -1667,6 +1662,12 @@ static __maybe_unused int samsung_mipi_dcphy_runtime_resume(struct device *dev)
 		return ret;
 	}
 
+	reset_control_assert(samsung->apb_rst);
+	udelay(1);
+	reset_control_deassert(samsung->apb_rst);
+
+	samsung_mipi_dcphy_bias_block_enable(samsung);
+
 	return 0;
 }
 

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
