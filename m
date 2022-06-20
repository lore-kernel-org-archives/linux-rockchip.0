Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4F86CCA479
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jun 2022 16:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0SG5Z7IYrK3VOkS2OGY+PhpCerDF5l4QLp3BMAxpIc=; b=tbN0PCB0w/ABm2
	HL5TgXAZ9Y3fltRvUD8ebtpQQGm6JxuDZ/tBmMLlQ21ZWJYBg/7JkZMGyz9q7tbzyFZXh9phdz+6Y
	Y6+Jv+BNkuzTq0qmDmuPPGH+W9m+GiCCCZt0Sp1Rfo2tIl2EXMSIQpdGruhIBQplBPKBYgkoPsUge
	7Nc2XJyQ0WY4B0xdPDNK8StOnssBTySQ/ivnnnIaON07qx2TA7bGh4Kg7l4TAhPY07BRuVnplIp2c
	+9/wTAENpN4pWVDuqr4eow0N6tD9iYTowuDbgRkj9arNYLArR+mwwzEJfBwQuyVzj5G+OKRhmQaRp
	skLzyq73cQsMZG3F2rrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3K2m-001PcW-5M; Mon, 20 Jun 2022 16:14:28 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3K22-001PFG-UD
	for linux-rockchip@lists.infradead.org; Mon, 20 Jun 2022 16:13:45 +0000
Received: by mail-ed1-x529.google.com with SMTP id e2so4862221edv.3
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jun 2022 09:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TTBobJXlYojyiPuoiGakzWp1LNp9Hmf1kPFPL+YFjuU=;
        b=Z2FNRA7u2LLcUrUvQs+FJ2dEU+YijDHxhCrG+X1wgYWjq56qob/PK0xsbwP9y42Km5
         tCe0jbAUqlp72BLWYFSh3h348IT+RudkYIdwYI0CjDJ1Wdw7uNDZp7u1D2ohghtSNewg
         A6PNMpTjcZdT3dZAnKo5i9bC2elkxU7yMcDuY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TTBobJXlYojyiPuoiGakzWp1LNp9Hmf1kPFPL+YFjuU=;
        b=Pz80FeBuoGbdOdpZut1i9HoISa6+6IYER1mDX1+XrG+gwrm4sjAqlvQgSm0YXGj+g8
         sMI15uNblu4U0cGImPaB0mZk2KThxXdQhBKX0hfQ9QFssjrUSGdSeNnp/ea4z2e58zSY
         VGcc4LFFw5+/NOMlTTwP9NJy6J2OLGRaffjVzYJXNc83DBP/+kQTiMORnjiTdh3Qxf0M
         qFd6y/8Q/nGKC+eUe30YDEpdAAhmnxsQzYaZz2XoJZEccPdBTT9uHhVIiIEaOr+J28iJ
         HdnM9Eh94jU1qo7JHJnhxszUbOfmU/61FxIqIaK9hwBcSstCIw7dy2ebFmTp1clhbbrh
         o4rQ==
X-Gm-Message-State: AJIora89f9cS6Ezae3FMo3UcwtagCs001SI5W/JnrJ8HGFReP7ACTUew
	m9DAm+ys2oeIsiKhcwhFLYa1Og==
X-Google-Smtp-Source: AGRyM1t4rKYsmMlXm8gObs2t1ACZ3UyvbDMakD1qXb7dfuU+sMK4uUr6B4BGPOY9VVtk3RrrwPxQWQ==
X-Received: by 2002:aa7:c50c:0:b0:435:66b7:3dad with SMTP id o12-20020aa7c50c000000b0043566b73dadmr19468607edq.397.1655741606729;
        Mon, 20 Jun 2022 09:13:26 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i.station (net-188-217-55-189.cust.vodafonedsl.it. [188.217.55.189])
        by smtp.gmail.com with ESMTPSA id p26-20020a17090653da00b00706c1327f4bsm6209772ejo.23.2022.06.20.09.13.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 09:13:26 -0700 (PDT)
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
Subject: [PATCH v2 1/3] arm64: dts: rockchip: px30: max drive-strength for cif_clkout_m0
Date: Mon, 20 Jun 2022 18:13:18 +0200
Message-Id: <20220620161321.1898840-2-tommaso.merciai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220620161321.1898840-1-tommaso.merciai@amarulasolutions.com>
References: <20220620161321.1898840-1-tommaso.merciai@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_091343_069136_F4470483 
X-CRM114-Status: UNSURE (   9.36  )
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

Add max drive-strength for cif_clkout_m0. This fix the issue that
sometimes camera ov5695 is not probed correctly.
Tested on PX30_Mini_EVB_V11_20190507

Signed-off-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
Tested-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
---
Changes since v1:
 - Drop off 1. use regulator_bulk_enable/regulator_bulk disable instead of for 
   loop into ov5695 power_on/power_off

 arch/arm64/boot/dts/rockchip/px30-evb.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 73003efeec86..cc73d4bfc5b1 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -536,6 +536,13 @@ wifi_enable_h: wifi-enable-h {
 				<0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	cif-m0 {
+		cif_clkout_m0: cif-clkout-m0 {
+			rockchip,pins =
+				<2 RK_PB3 1 &pcfg_pull_none_12ma>;
+		};
+	};
 };
 
 &pmu_io_domains {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
