Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DDCAC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jun 2022 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZwSnO89a78SSgYbRA/j6/G7sDo+sQcd5BOdrJa0hDE=; b=VrLGN820N0+/AK
	yL1lK7WmsgDTvz2DF2L5sXC8/Emm/HRTYqv4ap8ap9EuM8fn0yyRjUUz0NDUS4OeK2jzehwUKMMee
	8VZIVEIz7+ue57Vt97KtjAc+IOvHoh8+lauzGyjt5oiw2QAD5S2FirC3iM0Xr0klNUkWU8KQFHQNd
	Q++6VLcwPCdkb8rH+68tpofDpA27wGWJtzA4C2UP2gD44GZ8vbYg6gDn4CkfbG/KhOb1W2bTIjJ0c
	GtxOrkCXaoltcT0UytKPr/MNLkufEkVht7YJsip3kiH0v2h4uFLrGWL2eAHuvwD/23duFUM3pf5uM
	bZfg9CkA6K9VcOUJIgQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3K20-001PGn-Er; Mon, 20 Jun 2022 16:13:40 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3K1v-001PFg-4F
	for linux-rockchip@lists.infradead.org; Mon, 20 Jun 2022 16:13:38 +0000
Received: by mail-ed1-x530.google.com with SMTP id b8so15770635edj.11
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jun 2022 09:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZJmJdj8nRClod9Z4u/Y8NwaNKFRU93bJiGvbGJuwavU=;
        b=RQlUd87epecEzei0t79oGeBMIiZR0/2tJfN9XXH5QN+MWfxEEJ6fre2RI8xOublN3M
         A5k+kQ3BfQHHLQ/+xDmzKeA1eRBp3+VM3SwU9yix5WkOTOVf25Ppvu+Q64N3wAE1Del2
         UMoEPmd63bBjTdk6Um9vFvIaZX8eJMnYP4Hp4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZJmJdj8nRClod9Z4u/Y8NwaNKFRU93bJiGvbGJuwavU=;
        b=rYHrFV7hpzi8XfG6smFmAcbEZw2a04d+RYmW5eqHlhzc53RzAwNFog0ZDWk2oBGwYn
         uMxkr+MpQ17M0ir/RGi72zkaOx0mNvDLKjDvyLPqetKO8MGSnBI3iM1/FZh9boWevUgO
         9pRGjYx0Z6TTqWA0JSf783iDRhJi9yAcYlsRNlFFmg3WBhX2CQD3KZAZAxjEnmr9wGJV
         /cLd6eru1OM5ai/EfIaS3avX75UMDhN2y7ieBXjaET12H3LysN3QjEH2YYMk9hXO1Lz1
         B1Vz0xOpSWkLQbNqSRwE0VLznfk36xxy6dx9K4HtXfVJO+HPuA1gYZZwAvefHaVCnmpN
         DryA==
X-Gm-Message-State: AJIora8ye6Cgoq3YleslI5wk8WNwN4ggh4njSIl7kEWOO2G4IFKmNBFi
	nvmPQEmw+HVjWADuA0Y3kyQcHA==
X-Google-Smtp-Source: AGRyM1v2E4EsdSvTyCjiSPb7XU8YdefsrsLd6QxRC9ZwWvG54o42T1cmj7ikK0ag4dtck5lD6BN4eQ==
X-Received: by 2002:aa7:dcc1:0:b0:435:5db1:c749 with SMTP id w1-20020aa7dcc1000000b004355db1c749mr22894260edu.124.1655741613213;
        Mon, 20 Jun 2022 09:13:33 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i.station (net-188-217-55-189.cust.vodafonedsl.it. [188.217.55.189])
        by smtp.gmail.com with ESMTPSA id p26-20020a17090653da00b00706c1327f4bsm6209772ejo.23.2022.06.20.09.13.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 09:13:32 -0700 (PDT)
From: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To: 
Cc: linuxfancy@googlegroups.com,
	linux-amarula@amarulasolutions.com,
	jacopo@jmondi.org,
	Tommaso Merciai <tommaso.merciai@amarulasolutions.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: rockchip: px30: use rk gpio naming convention into reset-gpios
Date: Mon, 20 Jun 2022 18:13:20 +0200
Message-Id: <20220620161321.1898840-4-tommaso.merciai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220620161321.1898840-1-tommaso.merciai@amarulasolutions.com>
References: <20220620161321.1898840-1-tommaso.merciai@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_091335_208338_41F10846 
X-CRM114-Status: GOOD (  10.42  )
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

Use rk gpio naming convention into reset-gpios of ov5695 camera

Signed-off-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
Tested-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/px30-evb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index aee7fecdfc15..bc59a5588ea7 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -449,8 +449,8 @@ ov5695: ov5695@36 {
 		dvdd-supply = <&vcc1v5_dvp>;
 		dovdd-supply = <&vcc1v8_dvp>;
 		pinctrl-names = "default";
-		reset-gpios = <&gpio2 14 GPIO_ACTIVE_LOW>;
 		pinctrl-0 = <&cif_clkout_m0 &mipi_pdn>;
+		reset-gpios = <&gpio2 RK_PB6 GPIO_ACTIVE_LOW>;
 
 		port {
 			ucam_out: endpoint {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
