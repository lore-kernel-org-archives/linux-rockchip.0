Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03321C43219
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Nov 2022 07:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7+NeQLWKpdQJRmkPSmlB8HnX3TsBu9JhJ5TGJGVY0S8=; b=qPJZDTxPX1NiXJ
	CvDXePGqoi4uabcOPkuXMTAVkUOAMFJWiL2SbkshEYT28tMpKiuETivafiElIQpaQ3/jatoRsctp5
	i7nRW28XkMTqB021eX8HtfE2Ysba09oKB/ZWDEmo83+Tj566LjetYvYiB+mv8f6PNM5srHjxWpIGK
	rRIvYoXd9NojwlYzV4YPhE3xQ2x0wsbPIDXY4icykCVWYzUSbiLzxT7xTVf+fblzFYSMFglQ2W140
	J8aub+wgYf5ignyXS+Xk3tQN34COZ0ejbgJ205UZTtLb/fm76ClYyMdpnEaVRKcRd+DNIwnZu9iFw
	t10xDwTJppsCE4Zx7aAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oy6dv-006A2M-RE; Thu, 24 Nov 2022 07:27:31 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oy6ds-0069yp-UR
	for linux-rockchip@lists.infradead.org; Thu, 24 Nov 2022 07:27:30 +0000
Received: by mail-pg1-x52a.google.com with SMTP id h193so881458pgc.10
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Nov 2022 23:27:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tW6MvRH3jNggI06kpSrGpMQXghZPn7YvkXKr7sxkm/E=;
        b=jthoqAqsb1On6ynD07XDwO4XNpMQVtTAlvP7hLtSbRKtKjf9HU1h5JDZJJLshzUMX6
         2zmYIP8Tq1XEKWxn1y+FXkmQDbKndFnWniNxlD+5dKpAANdQtacRQjaHOaM34iy+UbqU
         dCSuqSuzHjNKFVTGtJdAlymtplcsx2u785PCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tW6MvRH3jNggI06kpSrGpMQXghZPn7YvkXKr7sxkm/E=;
        b=ETYfGCjKqZ9Z8sf7HBa6smx0uCvON0VVodBo2Pxr8XsH7RO0zQYnm2EqsKlYJkBf/8
         Aw5yAsZIUa+4ScnXdu//nycgPyj6LA+Y9ntsenribVGwfJPJawPZrGRikIBg96viwDtg
         6wxp5ncjYsCZDBC9VpZOWNV52GJFgkrprAPm19ZVUwpu3Bu6W/FlrCy/39y2lEBKkeu6
         txe5L8/xCzfnQwJc3cW/8KWJzctNQcyyfC+1Aknt6/RQ4HbTHkYSszqAsTXZ5SrXONR/
         u9+0ATgbWixRpGYKv86asD6hLr5DL1xFSnUR9oq/EjaShxkFVXJB7NxQ5vniHMy/Ibrd
         k3MA==
X-Gm-Message-State: ANoB5pnla4e6aKvKwrzS/Q5fJQi11oNBvgFQzKh/HFZ7pXaXLhTd1r2E
	t3uflHM6dkjNuA/jZj8jCzdQAw==
X-Google-Smtp-Source: AA0mqf7OHaA7DO+aqoNHin2IIal35uAtwUsWiZYlGCP3uW9OiZsRwm7Vxh59WgBGQNupgdfGcpyyuw==
X-Received: by 2002:a05:6a00:10cd:b0:572:5c03:f7ad with SMTP id d13-20020a056a0010cd00b005725c03f7admr33870504pfu.17.1669274846030;
        Wed, 23 Nov 2022 23:27:26 -0800 (PST)
Received: from localhost.localdomain ([183.83.141.79])
        by smtp.gmail.com with ESMTPSA id l64-20020a622543000000b0056ddd2b5e9bsm471630pfl.41.2022.11.23.23.27.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 23:27:25 -0800 (PST)
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
Subject: [PATCH v2] arm64: dts: rockchip: increase spi-max-frequency of nor flash for roc-rk3399-pc
Date: Thu, 24 Nov 2022 12:57:14 +0530
Message-Id: <20221124072714.450223-1-abbaraju.manojsai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123094827.250657-2-abbaraju.manojsai@amarulasolutions.com>
References: <20221123094827.250657-2-abbaraju.manojsai@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_232729_016309_AF92FBC5 
X-CRM114-Status: GOOD (  13.49  )
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

Increase the spi-max-frequency of nor flash from 10Mhz to 30Mhz,this improves the
flash raw write speed by 0.9 MB/s to 1.6MB/s and the time taken to write is
get reduced from 36 seconds to 20 seconds.

Signed-off-by: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
---
Changes for v2:
- removed irrelevant members from the Signed-Off-By section in the commit message.
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 2f4b1b2e3ac7..8fd808a0df85 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -735,7 +735,7 @@ &spi1 {
 	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <10000000>;
+		spi-max-frequency = <30000000>;
 	};
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
