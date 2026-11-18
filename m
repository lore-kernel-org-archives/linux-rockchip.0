Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E8F606A32C
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 05:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wapf1M3J;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=jNVjwa7Y
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7vzQYf37ys5kH4OXDM+8lJetxVEdogdl0aCnaZAt/Vc=; b=wapf1M3J6r8QRxKyZfjlwDk61c
	Hdg6Dklnm0s0biscsZUlI1vyg9DnJ80lWF8Dm7aL8nJ1aruzJYFE1Lre3yDdrCklKIcPxWz1ZeCW1
	UB5zYhnFun5GRih8xcLKO7QvcpVah/HiH7TThnPt2H0JRbptWQXGG+LNGbSgAgXt72LKW02s+Uf84
	/OyNBweZZ80mkiA13LRu48g1hFHAwN52UXvP4C3PvKjkBHZoZnIGR+rUoYuctil3x1w1bQJ5zamMB
	f0W3FG6s7lRyAh35bkce1mfq2H+FWxmtZETDe49BBeHSvh+b3RMj4yz8m4NoSCEp47sp7cXCbsuQq
	xx5uY1OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYeL-00000007nv6-1IuJ;
	Wed, 18 Nov 2026 05:56:05 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYeC-00000007nlv-3ugn
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 05:55:59 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-8b77e464208so54721b3a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Nov 2026 21:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794981356; x=1795586156; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QV7/azGZskXYhWhh8bvjrBkzYwv/Uf2HoCpYkbr0EGk=;
        b=jNVjwa7Y1nM1NpjMECe/t0UTQ7KcOTtL+0nGIHfEC2FvjkZAFhoy0A8REwGZsi9BGu
         L6vruE4UszCamjrx78eTO0usD/UkHxDW9P8B63A2n95OGeu0LE0PZ7W35c8NymjvQVUR
         ULvcsrNW9N78TdGd0qWDzRvBxLY49RtO7mfyDkwoW3PWtFiNr4uzEiOaeSBIMUpfgI50
         JFBl9wnZG9g7V7w9kANLJrKZR6CVS5Yxu87S7XlWJ9jYd85xoPsmhKf09rcAMqYDv0C9
         gajlhBxWUVOVPZSVLwmhx8PNdxP8l5Z8tW3B7kjG0EEWOSPUOGsAdVdGYw47zwT9igBK
         0yXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794981356; x=1795586156;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QV7/azGZskXYhWhh8bvjrBkzYwv/Uf2HoCpYkbr0EGk=;
        b=uGCd9K7dSANYFT3fnyi81YcQWMnLdEtlSTOp4FmL+unh4Idh3rKAYQA0aeC+igE7wS
         d9uvkQXnFYckyMJPcJedtkNyh027765tUCH6Lnw3zybcKb4wKng2uWAj4BMF8Xt83BWZ
         zyFyUFMVN0kG54pf3CSs1uSMyRfnG8pfimk4wcwJdf+sQZSF9Fc04J4KBtFRWl1cd6+d
         HobeC/UVp4dsNIIU510/PVOeTjd7EUk4qJm7ytNqLkRC7e6fH9aZqYr1ZRoWq7osNEa+
         nP27Ef9RhUjyH/l7R4y0AJ7m7STapwkNQ948z/n+1wHgMEvtaHomQCTxmWETUeusaubE
         BuEA==
X-Forwarded-Encrypted: i=1; AL+hErEzfyze19yrlY7T/dTI84NgfmGxQ3nAzhbGfPYYDEZFCl81p4TtJRr94L0VKU6XpnVxl11c3ijCGLi5TwS9oQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+oxl/AIRTcNQXgXOx+Bkffr7/TkL7F6FidBU36FnEyaCRhe/Xy
	MSmAuo0oADj8yIw2ZhuhXWAxoD6BnTI5mIGA7TPyJvkNtilSuoiPxl6F
X-Gm-Gg: AYBFou1jCrAsGyA15OPXfeo4ZBW97ldgyYBBnzQzgJVBCjhe2SL4fvss9TRjhRcG183
	mo0ZYPsArJN0pKfOPqHsJAt1oVKAHF0LUFZJUnx/go1fOrYZrrxojNPdBWqgRwu6ZMtOi6zBxIs
	W1t7WVZ+Wncw/q3xiznOPDWeBwmw/fqUFEXSgiavColzQ+iNyWCxkWcjWsIssjL4EutpKkh21Xx
	hMPB2gCkptvgY9Hh3EUFsMVg4pWbgfLCVz715I6TlrS6dIEjnNVUVdkSeGrHHU8ImcNA6Ak4OI4
	VTzVn+QBz+Wgivzw+g/uwbUmPxEiKd/n3mvLYNEtehkoQvMB67vwNpGqDMIYBnJnPjpuqP2vlAI
	XRkjmhx4itKbLkyA7BIsvdqELBK6LFaDa2ROg3J+u2KeKUEXmA0/bqKqkeknHu3zfwWqia+tGxE
	L8fJ/UXKOkt1mJQ7SLXDzRbfcQzktE1pk24aQ0VoDTSg0yybKdaDtri2M82/FG/obVQF/myoSgf
	GXFim0qePqgXj8DuBiFp+Vsu2g9wZZW2QAtf5xSwQy4qlAXfB/JW01RJtshymk4vXffkRg+063D
	NCr+ExXaOWX5yYdf7VMkjiUDTC6i88fmgfXkj0GALVKFqpZl1CowykcX3WmREwufo5010Jr23ia
	levMvvbuJ3MK8YgVyDZcM
X-Received: by 2002:a05:6a20:3815:b0:3f8:fc10:f77b with SMTP id adf61e73a8af0-3fe84102e03mr2033878637.0.1794981355696;
        Tue, 17 Nov 2026 21:55:55 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c5ca5bf959sm569563b3a.20.2026.11.17.21.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 21:55:55 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Wed, 18 Nov 2026 13:55:16 +0800
Subject: [PATCH v7 3/9] phy: rockchip-samsung-dcphy: Unwind power-on on PLL
 lock failure
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261118-dcphy-rx-v1-v7-3-8de1adac3a74@gmail.com>
References: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
In-Reply-To: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
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
 linux-kernel@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>, 
 Jason Yang <jason98166@gmail.com>, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794981338; l=1650;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=W4uqFjWfli07BWEGnXyu4qteuMVlaJHZHz3TMUadK50=;
 b=m7mXviKej2/0soFdmjYmH/XiRdXYaK1GmHksA4I0n03fIHctRzeTS9lVuu4DW3Gbc47NJvzGM
 7LSU94kNnpNDWdZ3aC5c+qp1M/C+VWAcJCPLR81h+FNtfxK0ZNnu2+8
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_215557_010410_29CFFD7C 
X-CRM114-Status: GOOD (  13.56  )
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

samsung_mipi_dphy_power_on() returns on a PLL lock timeout with PLL_EN
set and m_phy_rst still asserted, and the PHY core does not call
power_off after a failed power_on.

Today the APB reset at the start of the next power_on cleans this up.

A later change moves that reset to runtime resume, so the leftover
PLL_EN would stay set, and regmap_update_bits() would not even write
it again.

Unwind the power-on before returning the error.

Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/linux-phy/sashiko-outbox-174059@kernel.org/
Signed-off-by: Jason Yang <jason98166@gmail.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
Tested-by: Quentin Schulz <quentin.schulz@cherry.de> # RK3588 Tiger CSI1 2-lane IMX219, CSI0 2-lane OV5675+DSI
---
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
index 7382043e1f31..ce1bc62497c5 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -1343,8 +1343,11 @@ static int samsung_mipi_dphy_power_on(struct samsung_mipi_dcphy *samsung)
 	samsung_mipi_dphy_clk_lane_timing_init(samsung);
 	samsung_mipi_dphy_data_lane_timing_init(samsung);
 	ret = samsung_mipi_dcphy_pll_enable(samsung);
-	if (ret < 0)
+	if (ret < 0) {
+		samsung_mipi_dcphy_pll_disable(samsung);
+		reset_control_deassert(samsung->m_phy_rst);
 		return ret;
+	}
 
 	samsung_mipi_dphy_lane_enable(samsung);
 

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
