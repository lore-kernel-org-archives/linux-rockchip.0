Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70BE9606A321
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 07:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4SleuI+v;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=sMXkCW9Z
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7vzQYf37ys5kH4OXDM+8lJetxVEdogdl0aCnaZAt/Vc=; b=4SleuI+vbr8fgk8DhysGLzRefU
	2f1H9zAt9FlRxcH9q5I5zxoTvv36QwHV0mMahZif0iM1YXOP56jm/oOWvwewxJCvaTqWKPaAPe+EP
	eQZ23Nb0fhztKTCUgC7t1k4mb5PemyXgV9vmPe0U1MRRlWRGP7CHmUcenmmsMGwa0SOHWJHlvMkUX
	Wg2x5oyLxYCoW3AO8qg4lClqDYpFDm9dFlWzFNo/YFZxoLra1y5FxXRh1QWoUAqejwwZaDPdQRkHT
	B4umU2ZxtDJsU3p4ibl34575K0hAcSu7OlMZA916jhm9DVCAuNDw7ZjpoYweh9pxrzIaZfWyARQC9
	xtfPfZWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgh-0000000FBkB-2vhd;
	Fri, 27 Nov 2026 07:48:07 +0000
Received: from mail-dy1-x132e.google.com ([2607:f8b0:4864:20::132e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgb-0000000FBcO-1xi8
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 07:48:05 +0000
Received: by mail-dy1-x132e.google.com with SMTP id 5a478bee46e88-386d822a548so249128eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 23:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795765681; x=1796370481; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QV7/azGZskXYhWhh8bvjrBkzYwv/Uf2HoCpYkbr0EGk=;
        b=sMXkCW9ZpstcESMAi+TTfTiVaR9SILrShdayEINPHI0kAOEU8m5wjsR789ZOhmok75
         Vy+gyI+K0Xs+MN1j3cVjHtI1mn7efqjBoD8NLLmnOJBn7hSdIiZjJjDuzgF1sYDUq7ks
         mUV5WEynK4cufL1grCqF0dlpoMVFX7pf26JKV2Uvh7Zaz9rYDSsSOoQUPAb4uF/xIjZU
         4dLxErBUotEwYtVjSxJDzPhn8FZuB/RO+nF5MIJyMDJtL1vqzKUop0xtt4c4qeFyBWP/
         P9jI+kgDK6N6swH2gqCo8cPmWYeE0ylQ1Y9hGff6L/WRfkIg/3cI+532b5km0c/9Qxtz
         L2qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795765681; x=1796370481;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QV7/azGZskXYhWhh8bvjrBkzYwv/Uf2HoCpYkbr0EGk=;
        b=W5Qk1OKCDEL4XwjPUm5uxn5ZA3ZNhjjuyY1J7meTovco+k4hSJ2q+M54RXQaJ2kw+F
         CYoXMxiz8UUiPn6EEH2X57/WHd9NnRiocUpNi63KhVWo6GoVDbc1+avsBIl9lyfTgX0c
         X3pcyThmfJuJaST5eOvVprn2p+AmAEB9bKwrpITkoHib3JzW860pJetyzDR8wkLeFZ54
         7+aTFQIwlLMwA3lYFMdug3dRLvJ2hIqE4xSZYCdYanhra7zdywfjep1NDNPZKpV6bp8m
         sThcvuYGFd5NYaMFs5I9xphcpbIHO/njX8EBGoiS4YtpWb3v49UmXm3Yg6DDz4J3j8u+
         oOUA==
X-Forwarded-Encrypted: i=1; AL+hErGSY9QjcYaYgKUoLPoBlq6DbpoV8AohlmYRHNL/e5GjCHPvWRirf4TSdC/OdlOeVL4VMfZGQ5rInd+VMx4igQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+wR+H9GncEfY14oEY7XKUzCQueGvh97k+5zjZFEupG252rzoVm
	43ETbLhbBy78dMX/k+UByJXRepZiB3tusZw55jI25NIb/Ydi8iwpDj+D
X-Gm-Gg: AZFdTZc9Dlh5VhN94oIE2YxSS+zIiDPw0jAWLprhsM2Iu1zcjGBf7p4ubf1OXwEGCAw
	89tcjRev2OEhWaBUGPDZqDu+xzxH9tek2S/FpR5+RAhHd+ES5bXFL3FUDcMr/o7fFTRU6KK78O+
	6YAXCqx+NGfAXhqUvRY6eLbuonsR2kNYpg2Bk3eU0uTeoD1aBaDIIY8pPuUFFwPZiuJwo6VCaHM
	d7fiYsqsueAxzuOLWOmEox9aDdgN9OqSx/xLu5pUsmGjJ/Fmkm8LtYrMUfC1CaVFwRN0RO5r1jS
	THzCxImK9LM4Ek8PkME/R1+5B+53yx2pftZ0GZhiRgwknEbTAYJl+retfdlVWAUAQDIuvsN4p5L
	71qGwCPVLa5dLJQaa2V8OdG+458xye1Awlj90kQd67N03hgwvXRkc0VKiQXASOCx0mAZ8eek93V
	G5yZjmsuY9/3u7OnXNn516zxxQ9eF3Mxo/eaV2zYG94roP/gKH/70E1FEmA5H8qRSz8vsyD7PeW
	8jDhLErFq/wZfzrtYzVDjYS+sr3DNIj12YrwfWao/IaDsBQc4pSMhH7GMmsq2vRrjj95e8ze1Xd
	PxUgZn9pxAF5z7gKgDLDU/yV9moms+JKDl6+sRB5KWlF9YIn8460lYLG5JtqA3/G2TX3r9ZQ3a/
	uM4FiOyITpjXO25wHCM6m
X-Received: by 2002:a05:7301:2624:b0:385:1a45:47b3 with SMTP id 5a478bee46e88-3856e24682amr38261091eec.1.1795765680315;
        Thu, 26 Nov 2026 23:48:00 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-385672c6f31sm68098252eec.15.2026.11.26.23.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 23:47:59 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 27 Nov 2026 15:47:39 +0800
Subject: [PATCH v8 3/9] phy: rockchip-samsung-dcphy: Unwind power-on on PLL
 lock failure
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-dcphy-rx-v1-v8-3-9ddfef99221d@gmail.com>
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
 Sashiko <sashiko-bot@kernel.org>, Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795765664; l=1650;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=W4uqFjWfli07BWEGnXyu4qteuMVlaJHZHz3TMUadK50=;
 b=Gu0eVRuDgeu70F7RSPjzHKcztPH+YfJNOX2TmitsSMipP6dmk3XLTBw0qxoOQ7E27z/ZVeIVL
 49W0elPOCvABZVdIcpA/1gyuWqHTOki4wOqlFDrQr9OYlLDzFUx3Z14
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_234801_560185_02404715 
X-CRM114-Status: GOOD (  13.03  )
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
