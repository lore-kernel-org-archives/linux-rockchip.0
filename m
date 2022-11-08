Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E85DC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Nov 2022 04:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XGnsrOlouvaG8/bmG2VlssCIMWdWlM+SBdUEZOffbOw=; b=UCD4oe43wvFfeE
	5S9WBfXJRk2XFn/y90RtXwCsbBlsjzJNSj0ZrK+voBs5RD+lsu0yoaSvPYk9pe+C/s+wxkqW7LIwB
	ejXTXEAdyv5OMP7u2JBi2kCrrlPz1br3cTS5YULe6YYu31HO2jj7fcKQt8QaAatTzUtuFIBNGUWuu
	5mOCYRHiAilFXauVDc77Jtpv7/IZqalcBAIXMAEsQ47u45FGGKLkQLLBkVQ4Y67pEPsMfQ0CDdsp2
	bG5xCqPGFHkGrBukwfdXpUYW5Z4VA3Lo+vjTkIo2qiDt1mbAgImvVoegLJ0wXqXURXjLPfZNJjFoD
	u+AF3oGL5ZhmrMCjP5Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osG0S-002aI3-SG; Tue, 08 Nov 2022 04:14:36 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osG0H-002aDf-Fe
	for linux-rockchip@lists.infradead.org; Tue, 08 Nov 2022 04:14:27 +0000
Received: by mail-pj1-x1034.google.com with SMTP id v4-20020a17090a088400b00212cb0ed97eso12277389pjc.5
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Nov 2022 20:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xuwr1wa7h3Mp1ISTXzE/G2E6Q+ACdzkilEj2oS/EZ+s=;
        b=HY2b8tDCmpxzhviyBtqkSiATUEznc0lM66RcmEdOm4eEbWfTEusOq0Q1Axs24vRuuX
         qA0kKe02xN3JchfHFuPLVTQ7qkudEzJjkeVhDivLl1bDCtZWGDtURzv44qQda8m0Wpql
         646BItuWnkFUhoN3lrdtPHjX4Ufuk2+B+jXYGyhNDHlJupWsz0JUTqLVJ1rKplBN0T2M
         rZrY3s/SnCeWmPqayV240OKcnRd3itMUa/Kq3+bsWGNNX8AeYPVDFN5vNRaXC/stKA3T
         xZbBCebxGihvAwckAzIjqcXsSfrwm+bu0uyRfF+p0fnnuKqc5qLhH5U64PkAB0CK6Jng
         lhvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xuwr1wa7h3Mp1ISTXzE/G2E6Q+ACdzkilEj2oS/EZ+s=;
        b=yFwX9oiL7eW8A8COXfOLMAIc9V+fAryKAqpaHzBeGIu8sNvq+JxkUqFGbDtckTeI0S
         Zre4JtUXYI1wJutIVHBDtt+3RF2pFzPiZg0puMrjnUsGcMbhP/YdIhLq7HspVEV/2kPR
         LW5qz7qmzJHqfx4bGJbNieGFcfQUDtC7E1C6MQgNFGxORih0JKYhqmBTvbsal1QV7qS2
         t++nioyZU23KUaWRliALm1NAwXFNjuirkEW+eoEoDY3GjR+hoOCSUyYXkPMdIMI3wl0k
         mpOngnvH0xbQew4rHhuf/G8gp7egP2JoF8Tn1d5mypkqI6uyD81xmN6YzEVTNBIPhpnt
         cxrw==
X-Gm-Message-State: ACrzQf1HTwEg72VwQ6x+ALz0AN0pe9WU6O9ZtlcOLxxKuo6hOorHY08U
	FisXzMR9XKYnk+v8yGBrEE9Thg==
X-Google-Smtp-Source: AMsMyM4evCjDGRJN9YC0GbszPWOjwzRkT1t/UwbW+RUEzTMQmapzJyWTf4BHm0VHAqWdtwQflBAjTg==
X-Received: by 2002:a17:90b:2651:b0:20a:daaf:75f0 with SMTP id pa17-20020a17090b265100b0020adaaf75f0mr53504279pjb.142.1667880859544;
        Mon, 07 Nov 2022 20:14:19 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:63d1:2564:ea55:4e97])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902b78500b00186ac812ab0sm5799783pls.83.2022.11.07.20.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 20:14:19 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v7 00/10] ARM: Add Rockchip RV1126 support
Date: Tue,  8 Nov 2022 09:43:50 +0530
Message-Id: <20221108041400.157052-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_201425_759504_E2A16D80 
X-CRM114-Status: GOOD (  11.58  )
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

This patch series combined the next level dts patches for 
Rockchip RV1126 support.

Changes for v7:
- fix dtbs_check
- new dt-bindings patches
- collect Rob Ack

Any inputs?
Jagan.

Jagan Teki (10):
  dt-bindings: arm: rockchip: Add pmu compatible for rv1126
  dt-bindings: mmc: rockchip-dw-mshc: Add power-domains property
  dt-bindings: iio: adc: rockchip-saradc: Add saradc for rv1126
  dt-bindings: timer: rk-timer: Add rktimer for rv1126
  ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
  ARM: dts: rockchip: Add Rockchip RV1126 SoC
  dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
  dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
  ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2)
  ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2) IO

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../devicetree/bindings/arm/rockchip/pmu.yaml |   2 +
 .../bindings/iio/adc/rockchip-saradc.yaml     |   1 +
 .../bindings/mmc/rockchip-dw-mshc.yaml        |   3 +
 .../bindings/timer/rockchip,rk-timer.yaml     |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   2 +-
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts  |  38 ++
 arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi    | 338 ++++++++++++++
 arch/arm/boot/dts/rv1126-pinctrl.dtsi         | 211 +++++++++
 arch/arm/boot/dts/rv1126.dtsi                 | 438 ++++++++++++++++++
 12 files changed, 1042 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
