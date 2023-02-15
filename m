Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B7BDC61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 01:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rvNUjit2KxhG7fNKtZ7I+Nq3u3Dt+72nD9yLYx3Jc9Y=; b=C34jzYYo/88pTo
	C0Hj0MZWsIF5a+9tDC7nMI516v8apzhyTYKJPuK8QG553PsS44AHHQ9YeOTHRlCzjwvjrtFIfwdNr
	/QJEkQFJm+oZnB3ZMlgmcgCew/jDVf9itgGrwbH2xLWCOGBmISS7EMctQEXkD2dVdCFperPfMhl/P
	o6qsrBuWUHQevY1kmWvXnGAbR3h6MlpBKd7ji4a9Tl0e6VPu3SUJn52aDbDHlL9To7fqU5C1/iOaC
	jjq84oqJWuEbsZLs/NOSOUU60K/lLjJwUmf2SJPMv/4C5UF36d3UxzV/qRZ7Q5EFpRckEGNtQFlj/
	IVtd6px6wrcYSYFNEF3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS6M1-004BGx-B9; Wed, 15 Feb 2023 01:13:01 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS6IS-0049lf-Ga; Wed, 15 Feb 2023 01:09:22 +0000
Received: by mail-wr1-x42b.google.com with SMTP id y1so17552286wru.2;
        Tue, 14 Feb 2023 17:09:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6xckzojwyNuatglXQ8YBBBb8WXJgZ0AoA0JB30UI/Xs=;
        b=OgYp86eufa4KJDkPuznprFyD9bBb5XXjiNsIs6ic99AHYTTPSVR/1RXGmuIPcBnVZS
         S2thwIhTULgtlMFbIaDQSlEPApuegu4bG6DVC4jyz/cF6PHIm7u1Dk8yQsuOmbXZiggP
         T+S4q8Ma+sqAn6g5ffekiyI5OPuEZR3C0KVYxyjmE07jpiEm9Bjkx6upNOSuKv0aktoa
         LGl+MK4WWemu2Ghtd9I8WVd1lIc9W600tp+BIMw1myFzATAX3r5bAHzXgYnUaMzQtW1W
         +Pq4fPZbfDX50Utvo2d5I4SABLTUDlBdeQxaf9Gzjk4Xi1yBCOJppwI6bSfqhktn0XFv
         nbWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6xckzojwyNuatglXQ8YBBBb8WXJgZ0AoA0JB30UI/Xs=;
        b=cZBzZ5x5808G2bskAo7RtX/+A8wDWfT7TqYbEropCw4wz993rrjYl4cIldUkghFc5A
         PjAv8UOjPJjpGNxe/oyDUptnOcbq5wtWVDv4qUAjwcd5TKNUYwN2tcvaMl4ppY4nmyL5
         XvhAGaq02U24Wcc8YUL3y+O2nsDCOz7c8Zt3xIkJRYc/1re2nvhhIAACShRGtsfBtMN2
         x/xtr9gCzghKr+eGTcBr4aS125U3LgXf6uZFQFaTNXc1tY8WJWgDjKKh13obGFyLtIlY
         bMQVfI50BKWSPQoXnt7sllqwnfmiFWwkFjElyb2lsRABqBR9/G3aXFE63rLmRKIElBP3
         MFOg==
X-Gm-Message-State: AO0yUKXLhbXsT+7l7eqRy1qrZSboQAGxEBd5kMVOb/AgJjM9mbbi/+Cx
	M+KDebHt5jj3cg6XMlanBqc=
X-Google-Smtp-Source: AK7set+MASCAI4zdR7KY8dZVKqdEdoQgs6qmT0L36Iv2j549YbQiS8O883w1aFN1+K4OobCJghWHVg==
X-Received: by 2002:adf:fece:0:b0:2c5:5ff8:6b01 with SMTP id q14-20020adffece000000b002c55ff86b01mr112414wrs.1.1676423357323;
        Tue, 14 Feb 2023 17:09:17 -0800 (PST)
Received: from archbox.v.cablecom.net (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id v15-20020adfebcf000000b002c3f81c51b6sm14198505wrn.90.2023.02.14.17.09.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 17:09:16 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Always enable sd regulator on SOQuartz CM4IO
Date: Wed, 15 Feb 2023 02:09:14 +0100
Message-Id: <20230215010914.104754-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_170920_616342_F18016DB 
X-CRM114-Status: GOOD (  12.35  )
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

The 3.3V line coming from the SDMMC regulator is required for USB
on the CM4IO board. Without it, the USB mux (U13 in the CM4IO
schematic[1]) that's used likely remains unpowered, and no USB
devices show up.

The consequence of this was the behaviour of an inserted SD card
allowing USB to work, while pulling it out turned off all USB
devices.

[1]: https://datasheets.raspberrypi.com/cm4io/cm4io-datasheet.pdf

Fixes: 5859b5a9c3ac ("arm64: dts: rockchip: add SoQuartz CM4IO dts")
Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
index 263ce40770dd..88a61fa8a95c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
@@ -135,6 +135,12 @@ &sdmmc0 {
 };
 
 &sdmmc_pwr {
+	/*
+	 * USB also needs this regulator to work on this board, so just enable
+	 * it unconditionally.
+	 */
+	regulator-always-on;
+	regulator-boot-on;
 	regulator-min-microvolt = <3300000>;
 	regulator-max-microvolt = <3300000>;
 	status = "okay";
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
