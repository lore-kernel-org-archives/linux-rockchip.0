Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23F5FC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 22:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7dhLDLsSyFLFaRsUkT3ylAbhcd8xJPAyUsUScoCJSpY=; b=k3RuZ5305mhwxQ
	+qlNiF3YMOKMzcZxGXm96RFStOR0QL15ftbqOzre0OmiZ5LLEeMc8KK1zE4oqcLxFzbFllxjr742t
	UGgRl4u0i3nQH82hTL7kz5QJzlj517PPQ0TJWWGqBLmRO05zppkmW55T/6Ra5goe6NhNoCy7x1y89
	kXAsN1IbOIXuQW2IoXN5UwT5fTNKnou4CrS+vy8QBVplaYO6rAgXkpDmOYaTLcuFwCiwm9SewQ0m9
	oWFlkZF52ed5C/xFQEsiYX2FQ6aLCLvNcSK2ZG3WsuBz/ka1bC9k+Elb88jgymzhGF4wBDGnjZnXD
	Fj8WQTROHqkSqgFnE8NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHtV0-00BKk3-1K;
	Mon, 25 Dec 2023 22:32:38 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHtUy-00BKjh-0U;
	Mon, 25 Dec 2023 22:32:37 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-78102c516a7so383397385a.2;
        Mon, 25 Dec 2023 14:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703543554; x=1704148354; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9AXVgWVsZaXTaZ2MYrLDbeRzFgb65vHx3yvBMYSyN7I=;
        b=XHKXL+K/869IZVyyj5yJH164ErudjFkm3JqfOEWZyBQrokNAKqfX1JXIpr88R+ttkx
         w1ZfRY8azwY5rKFQcaXqvnRZBD2FKV3kdelXi3eCOcV7buKQYnmWWH45Nh5qxO9nSp4J
         gdV5+0T/B5kmjPEfIq5SpiaZje4KjQQwAbHx90VGMaVS0Oq8exPzkw+i+FTnIUuE7aRE
         Y6RQmN93VIN1Z8pqXAKG7I7MmPH8suo5ctgQl81b1o/quf5OjYUQLr40OBuXsDSrLLrk
         SaBTsQogLex6pqwnqYPR/6g7YRTGHSrQoBzNdspXqJ8mBlFJem79RGhPDlU3Bq6etWav
         GNCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703543554; x=1704148354;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9AXVgWVsZaXTaZ2MYrLDbeRzFgb65vHx3yvBMYSyN7I=;
        b=JftIcNMhObDci1bse7MWuGgXplypfVJNeBdpCuQCKPgF0v+TlWza8CfNlW6PBOCBFr
         4MrczRbyJ0vsMBgYYXPfP3utKZtNZ/8M1NrM+PXDU0bPbSC1bX7Gf4RudnCAfpIDdeZG
         IS10EaxGLmzNZuTqSzOg6nmoiV9uXIrcsHPmw0rFtjY/nG8AfAlxuoYhkmfDdLS6dyY7
         gEMYHGXB7ysbq67maJ9g/xoHDNMx+op/1q82o418jz9o3pDM5dDvuos6oekj4Asb6hxM
         pHsPPbsqTl3EHS556A11SSI3vGBZapC++koOIek1lPTb5JNqyKmdeYQlLyMQwLVrq+Vm
         v3AQ==
X-Gm-Message-State: AOJu0YyvCsPnk8yp1mS0ipnhWKDHPiG324pDRFicGVMrbtYbrvDrbzrL
	NIO7LEYh5yHYzwIeh0d2Fyg=
X-Google-Smtp-Source: AGHT+IF525M1SC2MBZdNWTYLYvaOFmLvhK/WeGaLidoL7771wvZqYFubfDK0gB87y3l2paGzoVQTMw==
X-Received: by 2002:a37:e112:0:b0:781:c38:8e60 with SMTP id c18-20020a37e112000000b007810c388e60mr7727978qkm.102.1703543554520;
        Mon, 25 Dec 2023 14:32:34 -0800 (PST)
Received: from localhost.localdomain (107-015-241-140.res.spectrum.com. [107.15.241.140])
        by smtp.gmail.com with ESMTPSA id br37-20020a05620a462500b0077edde498d3sm3856151qkb.89.2023.12.25.14.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 14:32:34 -0800 (PST)
From: John Clark <inindev@gmail.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: "Thomas McKahan" <tmckahan@singleboardsolutions.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	John Clark <inindev@gmail.com>
Subject: [PATCH v2] arm64: dts: rockchip: correct gpio_pwrctrl1 typo
Date: Mon, 25 Dec 2023 22:32:16 +0000
Message-ID: <20231225223226.17690-1-inindev@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_143236_231075_1FACD8FA 
X-CRM114-Status: GOOD (  10.55  )
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

Both rk806_dvs1_null and rk806_dvs2_null duplicate gpio_pwrctrl2 and
gpio_pwrctrl1 is not set. This patch sets gpio_pwrctrl1.

Signed-off-by: John Clark <inindev@gmail.com>
---
Changes since v1:
 - added commit message with additional patch detail

---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index 0fc48fb0d34d..e83b71510a47 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -591,7 +591,7 @@ pmic@0 {
 		#gpio-cells = <2>;
 
 		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl2";
+			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
 		};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
