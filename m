Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4840AC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 May 2022 07:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5QUlOSJI7YWVWCpETTThOJU3Sf6KrelDOHn5C+L05o=; b=EIINYV0t7N7tN8
	8NEMhRo3jLzFPXPDH6018eGiIEabBKUho+JzUDec7Z+9QiTOL6mkk6YQr7q8k1l8IYpnnBSloxB6Q
	OWKNoWUBKY3Rw1isWyOuKgT+pw6NLebZcNVDGdcQGC3gNfsj/HaPqjICCZRYBs5lR+gsneEXmvdhv
	tnUZEEq2pJec8QKgZdTW1a7KWTWu0I7TMTKy41OT+RRTnQWgZndUSyujjc2TqaV1yBV2DDF46fQF4
	xsh/2oKE4JeagO2dnjUAYEvhQeu8qzMvkgpPSSshnBqSIaGHE54aVhKX/GeAonZ4KVsMIk2ED4xrl
	ndPp2tGpZhZHugYKZA1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrawc-005dlc-SS; Thu, 19 May 2022 07:51:38 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrawY-005dg5-Vn
 for linux-rockchip@lists.infradead.org; Thu, 19 May 2022 07:51:36 +0000
Received: by mail-wr1-x42e.google.com with SMTP id j24so5926553wrb.1
 for <linux-rockchip@lists.infradead.org>; Thu, 19 May 2022 00:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iM6CKxNIjkJ6jtgcoGB6e3JO7TA8aFCAtiaLHSOsVJE=;
 b=V4UXNqgMQHzxZLvO6OeUNoo8CEMuEAbelwrlkWZ1T3t7ZyDQvYhOG2E3AVIXwlLZ0t
 oWVp80/aNSLp+Bkr5ZFgc5o7EzGkK+43Tdnyvsg+WMDqSwpv/7Nrx12yfMKFuO+9aETp
 zU9tupNFIRgS7dOUYEHuEiy2SKo9as/nzIaIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iM6CKxNIjkJ6jtgcoGB6e3JO7TA8aFCAtiaLHSOsVJE=;
 b=TjGJf2c8O2kbHaRzHX71lhQmGHfbBFvsJQJqgcDTFIUFnRA6Nde0td9WYazJgZMncC
 nDIgROMM9HjIfGyfRxBbNRrACK/mZtTadp2OF53WnW8WDi9Ru5XYOQi2OELjauh759fE
 adFVrp9Fl8yqpEH1aBjr/u+wleB4RsyQMXPlvoc+T0Ujci9z+dhdUQCPUDxv+N7AzXhv
 fZgiP5SzHFr7cEaNubLw5y4dmOz6FS1pA35AcKr73OTS/fzbVNI/HeYp6lFNDMmrOoNS
 UZ7gW++pgVXDCe6qteHjShTtQXPWkeotBnCm9NSXQcjNLmujFyDbCBshXBdpYRHSAJJa
 3ZYg==
X-Gm-Message-State: AOAM531hE5gHHMlelACf8vcGU8ClCcGDuoS6aTwJF+I3a6dscnQ30Cxt
 rRvttnGzdJBAlpqgXkhxxlL0GQ==
X-Google-Smtp-Source: ABdhPJyXqPOJv+c6R/rrewe0H5MWdpHADVjc2q4n28Oz4QdT4PjkGZFZrzAiy9A5IfLUmqPeO0UxDA==
X-Received: by 2002:a5d:64a6:0:b0:20c:64ef:c9cc with SMTP id
 m6-20020a5d64a6000000b0020c64efc9ccmr2983587wrp.190.1652946684161; 
 Thu, 19 May 2022 00:51:24 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i.station
 (net-188-217-53-154.cust.vodafonedsl.it. [188.217.53.154])
 by smtp.gmail.com with ESMTPSA id
 c6-20020a05600c4a0600b003942a244ebfsm3370254wmp.4.2022.05.19.00.51.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 May 2022 00:51:23 -0700 (PDT)
From: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To: 
Cc: tommaso.merciai@amarulasolutions.com, linuxfancy@googlegroups.com,
 linux-amarula@amarulasolutions.com, michael@amarulasolutions.com,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shunqian Zheng <zhengsq@rock-chips.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Subject: [PATCH 2/4] arm64: dts: rockchip: px30: max drive-strength for
 cif_clkout_m0
Date: Thu, 19 May 2022 09:51:15 +0200
Message-Id: <20220519075117.1003520-3-tommaso.merciai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220519075117.1003520-1-tommaso.merciai@amarulasolutions.com>
References: <20220519075117.1003520-1-tommaso.merciai@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_005135_110568_F5865929 
X-CRM114-Status: GOOD (  10.43  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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
 arch/arm64/boot/dts/rockchip/px30-evb.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 848bc39cf86a..53930e28eadf 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -537,6 +537,13 @@ wifi_enable_h: wifi-enable-h {
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
