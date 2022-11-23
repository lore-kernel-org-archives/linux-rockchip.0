Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BF99C4321E
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 09:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYXQ5iW+AC5BO1mFdLEJ2tLrt2LG+/Aq8RGhK57purc=; b=j3fWHRitfD6ya4
	fdyFx6xaqIEfe8nB95C8Z1MK6Jpghx2xh+/cu1E9OQRiZ6sidmwwZmcZakKx2Stzplmk5H9OJZTjn
	WLRL7ujYT0gOtESmXj+tzgqihkfTVGAB81MeQIDPxtzlIp+qkrwEXbARgQEGOrULfrpSX6bBDGuf0
	J9K8uH2O2Tzs0kyi2yykf2BvqhBmtz7GtkCb59pqf1AjEKbYOyTiKcXhwfG/1qVJgvX1yYE1JUqbk
	tH06L3+LGQvRkk+t8mOAS+8dYEn+Kd3jxOoICMv2nGFtllelVdxFwn9gUFmUpOamJWAsbrFkGPOR0
	e/sphctnOLWygZkb0Jrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxmNO-00G586-KI; Wed, 23 Nov 2022 09:49:06 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxmN9-00G512-J3
	for linux-rockchip@lists.infradead.org; Wed, 23 Nov 2022 09:48:52 +0000
Received: by mail-pl1-x62b.google.com with SMTP id 4so16199503pli.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Nov 2022 01:48:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rWRmeeyqa9WI4jmwUmuk/cmr2MhYhWIGDdJ7im7Y/jM=;
        b=Zq3w/pCFVSkeds/S7tM/ej34T2gQ11JPDxqpR08a8+PiqvqKJhu6W3yFnR5/6+cXHD
         o+G3IcZU+KtRZhqQi15n1MIshQ/aAqFpm/FoI3M/iGWi0D3lp3u3fpZA1QGhLqaVryds
         gpLv6WGgF+PkoCX5FPGgJ9dHzg5q4J/wuHbqw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rWRmeeyqa9WI4jmwUmuk/cmr2MhYhWIGDdJ7im7Y/jM=;
        b=k+pyFYdpItR0nySXVv0heTlaMwkw7jWOkZ/xqeRTD815JcNJh2vYeskmO61oQoMch+
         eO4zRODg6eeBh1tE8hwMhznuK/nBnUpfhqpdOPqmwzgPAr420puzEtBvawRHGpdcXMjO
         jUzIxhE9kvRPUF6SRzvZDWbI4uEPXZhu15Yx9zZ2aEIBuMnOHeQQQPICNxJBBZjouLIC
         bR7bo6ZB1Pen7oSh1oQMFIvNvGyeMe6bkSSoLExLhB409WGuW/bHrl3RmHp7ilPCIZ5Z
         U2LDz00UANQdtYG4EvS+lsZIAecU2gDJWJmYP2+Z/bPxADVnYNmr5hkk1hHmzgKB6IrN
         M0cw==
X-Gm-Message-State: ANoB5plwxFiRXhwtn6eOZ00m87WX5icIGDW/ig1BcID0AbA0inhXRNZL
	Hrp7cyrBzCrtacoWsjNq8UfAgg==
X-Google-Smtp-Source: AA0mqf5OILxDB8mH1chCpvbV3aeqCVitrWAYOXWWamwFP/EkzOlbg3pFAyMMj1dT/GHoyxOqmuKvsw==
X-Received: by 2002:a17:90a:c7c8:b0:212:d9cf:5696 with SMTP id gf8-20020a17090ac7c800b00212d9cf5696mr30079385pjb.237.1669196930569;
        Wed, 23 Nov 2022 01:48:50 -0800 (PST)
Received: from localhost.localdomain ([183.83.141.79])
        by smtp.gmail.com with ESMTPSA id k16-20020a170902c41000b001869f2120a4sm6524670plk.94.2022.11.23.01.48.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 01:48:49 -0800 (PST)
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
Subject: [PATCH 1/1] arm64: dts: rockchip: increase spi-max-frequency of nor flash for roc-rk3399-pc
Date: Wed, 23 Nov 2022 15:18:27 +0530
Message-Id: <20221123094827.250657-2-abbaraju.manojsai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123094827.250657-1-abbaraju.manojsai@amarulasolutions.com>
References: <20221123094827.250657-1-abbaraju.manojsai@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_014851_658159_B54ABE80 
X-CRM114-Status: GOOD (  12.27  )
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
Signed-off-by: Da Xue <da.xue@libretech.co>
Signed-off-by: dsx724 <da@lessconfused.com>
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
