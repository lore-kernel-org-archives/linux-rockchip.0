Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C7BAC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 09:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x181KBkKW4pw2dujDDKXd3eifSufMgEKTNa9iHJ6dIo=; b=aJWTPWvIxSLVLV
	1tNKpO2hPD/lPHQZM/xsXjj9y7g6ZKy7Sruudl7DMnmFEqwYxqy7G9TS1bfbJb7YUwHnMX020pf3p
	DlL5pY2vrwRztuxFGKAsu0QvqmbRwqzssmddzUUxeTA+OJUipcUS2dFApwpn7qs7hfFPrKSwLLwla
	xA4trMhpehf82bp5nlMrqgMtbOioiLbHCoKSR91LJLvs0Hs7yEFqVuHQk2xDohr+3rCCE7UGXhJe9
	9TeNGzW8FkSCWo0/UVa1kPyY05gOkunHjmFJWJwcdreFcrKVlvn7hy2c75zXwlpx6erUsVSYmBDD/
	oHKQ/md4r/miUl2djiZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxmN5-00G4z4-AZ; Wed, 23 Nov 2022 09:48:47 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxmN2-00G4wE-EB
	for linux-rockchip@lists.infradead.org; Wed, 23 Nov 2022 09:48:45 +0000
Received: by mail-pf1-x433.google.com with SMTP id v28so16827668pfi.12
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Nov 2022 01:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1GEU2cRgjlLvYsLY0fZ4A4QbwfIO6NbgQTnOI4zDrLE=;
        b=SUtTrkQx6wur4zOzrqLMn/8cHKy9h+yPv+sWOb9nHEWuhuNfU+3ZwvrZL5PsWR1jHD
         LviK45EH3sfIL/zNpqcb/E6rCbosrPbax1qUFcHZlLG1ntBzgPSp2MPSwLc7kaRE8AKP
         9rUbuliMwnHZOeY7pNQQsu/XKgljhiGE9+2tY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1GEU2cRgjlLvYsLY0fZ4A4QbwfIO6NbgQTnOI4zDrLE=;
        b=arMTNn7OJceMBUVjyb0LUfknZ6/oxqxirJ/mqL0BmVrCOxV5kXbfoF+3RJeACeYiZ/
         nzvsyiuU+KKsucee95toGcNoNe2+kCivAoiMSvxmuPM9nMjhJvJ8rBidV+orAFqvJnYb
         VI2DKNAusw3ehb81vwyLW+5RP73K/g4KqBR4Cnenrk2CFlCyA5m958YiTEHwsA6O3xLn
         D4dfyHZjAoyWmNyQuVLU7XK+UjSbsCZECCaAutgYTuHfDVXIwAfJYUaMOB8INlZfg7O1
         3XQpbgUq6DM4TUC5ki2eBicpP5/c4PwAFMFbX4Tcib7Cw1yUMU2pQWXt6Ebkw8TTo8H5
         U72A==
X-Gm-Message-State: ANoB5pm1rxigBd0R6f5xPLXfIOffdkgh8t+orIeI/sdq1h6gIvVbcEbQ
	naSpqwxCoFR9zRNZelGcZ/6wDQ==
X-Google-Smtp-Source: AA0mqf4GuAbzU14kwO1xYECCrssU/mE1WSrgrNjxoxPUn/mwN7pQwtnAZM0fOT4hAo3W0rDYKw9bjg==
X-Received: by 2002:a63:f00e:0:b0:477:5e25:6d4c with SMTP id k14-20020a63f00e000000b004775e256d4cmr7962597pgh.159.1669196922014;
        Wed, 23 Nov 2022 01:48:42 -0800 (PST)
Received: from localhost.localdomain ([183.83.141.79])
        by smtp.gmail.com with ESMTPSA id k16-20020a170902c41000b001869f2120a4sm6524670plk.94.2022.11.23.01.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 01:48:41 -0800 (PST)
From: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Markus Reichl <m.reichl@fivetechno.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-amarula@amarulasolutions.com,
	Da Xue <da.xue@libretech.co>,
	dsx724 <da@lessconfused.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Suniel Mahesh <sunil@amarulasolutions.com>,
	Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Subject: [PATCH 0/1] Increase spi-max-frequency of nor flash for roc-rk3399-pc
Date: Wed, 23 Nov 2022 15:18:26 +0530
Message-Id: <20221123094827.250657-1-abbaraju.manojsai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_014844_500429_2C27D1B6 
X-CRM114-Status: UNSURE (   7.88  )
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

change spi-max-frequency of nor flash from 10Mhz to 30Mhz for roc-rk3399-pc

Manoj Sai (1):
  arm64: dts: rockchip: increase spi-max-frequency of nor flash for
    roc-rk3399-pc

 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
