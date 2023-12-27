Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF4D1C46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Dec 2023 20:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LcRarAmFMAlN1oPpVxdqzOWlaSoY+wzRyRaWWzkojr4=; b=YdPq43dbkuVZhr
	Mw8J1R7XmMHP4w9S7N3DnxZaIqdiS2AIDt5si+iNeIC4yqzm8wCCcGWhED2trgmoGQ5EMp5n4zDZ/
	U3Twegy5Bt7GbMlXUvwic9VFib07PSOMDu5kV5lcx8SVATj3FAiETKD57a0fQ0yq7lVNWn9kqfwm2
	UtKHy8JGMh44BpyqIs2ErwIvs4+/rDaXwcxoksGtJ218k2FF+whkiX9/fd2uN3ogJRNnrA8MTogi8
	ccJFYDVlH/YcRLRTP0af0rHdV8SubjVT4c1C21TX0zo/GTxjwJU4UCMw+BlU2Y20rkFCi+349rRWp
	uOOI7bUp95Hyh9fn+0Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIaaW-00FSap-1T;
	Wed, 27 Dec 2023 20:33:12 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIaaT-00FSa4-0e;
	Wed, 27 Dec 2023 20:33:10 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6dbfe3fe308so604906a34.1;
        Wed, 27 Dec 2023 12:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703709184; x=1704313984; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=z3tJ+pf1XaDcdic88yuuQAu+G7vQXa4w16P0Ghy24w8=;
        b=j0PC7jc4K1Kaz698KUIJdqm2iiTcutgaT/vHT4mgJcp+rTIkuHLzFGq9hfSJFCm5PO
         KVZok3O4d0JDNJmlpL8vRPyZ+fujyBEkf1pz4HxhjK0fNOAHUGsYyP2erfU0vrLXoeEc
         1NNuWeFsrG2n2XPq4l2no0sv7fgcFiyluuFAsjNZHhcPMyEOoRc3+Q2zdeHUGt3Ic8tW
         ESa9MT04B9rx/THcYLeJZ62FnunF46xlLP7DMG34PHaSd7ogf29g0Mh6UcElgub4d5A2
         jj1jBfUvkA6BlHkJ2y/e9zdjF/eblWvSiOQLjplFpifzOTqRATMYAFVt3MeX3ScCpChd
         PQHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703709184; x=1704313984;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z3tJ+pf1XaDcdic88yuuQAu+G7vQXa4w16P0Ghy24w8=;
        b=ry7fZjDUbyfXsKqQUk+EVdRHj83WaqIcgPF0VAw3sJYn4tMCDLTd/HFor6dQEIFMI4
         Vs0cbTQ1PYWkn9p0leioAbwK087Oxhgblr/KuBfuONUP/MNipm7LLp7Zh4qYkwbolqEI
         ld8Ulh8onii+zZ3Fml0jAG87nL9wjMCk2nkMeV5iDt+qL5V7Iff9kMAfOhOLhRVw72xD
         o2O6G3nMatQCwp3SLPB94ETZCzYa35P+kqIkCvdAbhhiL64TdMQoOGtuTYRqWp0jEzOR
         Ybbe6l2tblLCP+XyLfyIeZA+lpXz+j21tbH3uWg9J0ULIAoVHwj6cUeu6h5JX54i4arH
         smQQ==
X-Gm-Message-State: AOJu0YzS6FgHouatatLRv+n/pvywGGmdRiIkYbFwCIhfnNrSAynu85bg
	bq1v3YGcKITFznq6X71XVf8=
X-Google-Smtp-Source: AGHT+IHaMov+0DVMkUWxAUDdG/ef5OWIoloCAcoPxmGYse8Hl4a8KE5KNuovGstJB7PpPS7nW9MBCA==
X-Received: by 2002:a9d:6d90:0:b0:6db:b23a:b416 with SMTP id x16-20020a9d6d90000000b006dbb23ab416mr3235286otp.21.1703709183848;
        Wed, 27 Dec 2023 12:33:03 -0800 (PST)
Received: from tower.cjhon.com (2603-8081-ad40-0011-80e6-ca93-053d-904e.res6.spectrum.com. [2603:8081:ad40:11:80e6:ca93:53d:904e])
        by smtp.gmail.com with ESMTPSA id bt51-20020a05683039f300b006dbc5410868sm1841561otb.21.2023.12.27.12.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Dec 2023 12:33:03 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Support poweroff on Orange Pi 5
Date: Wed, 27 Dec 2023 14:32:11 -0600
Message-ID: <20231227203211.1047-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231227_123309_261009_40FF9699 
X-CRM114-Status: UNSURE (   9.14  )
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

The RK806 on the Orange Pi 5 can be used to power on/off the whole board.
Mark it as the system power controller.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index 8cefdbf3207a..c3a90a769605 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -323,6 +323,8 @@ pmic@0 {
 				<&rk806_dvs2_null>, <&rk806_dvs3_null>;
 		spi-max-frequency = <1000000>;
 
+		system-power-controller;
+
 		vcc1-supply = <&vcc5v0_sys>;
 		vcc2-supply = <&vcc5v0_sys>;
 		vcc3-supply = <&vcc5v0_sys>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
