Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07EF0C74A5B
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Mar 2023 08:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aR6aD/59YmQlBZ/3WzkjWiG2h0QF3s/58wiK9Go1WbE=; b=Rx0FG0w6aFSdzy
	Zepg2OPC0FXvuJjXX7rIHOnN+UL4DZbU39XCm9hoTj2iQ2LnnyrYsj1pL4MlqQcnLGCm8DOEBunjL
	2yCdOYv02g13ik9dAZP0/utj3UTXuJH2z5UnbHq25Me1SFEJh7XqSin1NoXImz0F8ivXouh/QkwtF
	jLEQ3O4Ci5TMbxRkRd2Lm3U/BN+sGhM3z3ySfOsYSPcdB4nAonrIePdvQTRsYgoxG2HycN6Kls8lc
	oMm49N7/hbJT0yaLGICJOR3kdXsKPIUgGvWxVbneriiTxZgIX7/JaZaUbMAHuX7yX8F66qXUt1fWi
	b511v0EHZjYUZVPz/WBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdS51-004SGP-1E;
	Sat, 18 Mar 2023 08:38:23 +0000
Received: from mail-io1-xd31.google.com ([2607:f8b0:4864:20::d31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdS4b-004S3T-0m;
	Sat, 18 Mar 2023 08:37:58 +0000
Received: by mail-io1-xd31.google.com with SMTP id t129so3320564iof.12;
        Sat, 18 Mar 2023 01:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679128676;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ieG7L9msYA/7lhUnPh05XbQYvh9ea1Tc8rd619ZsgQ=;
        b=d5Jmz/4FBL6d+7r7Y7GwenCb+4EgG6JMg97ed/mqotPa/wVddpfWwlNAkkvWrtgpbW
         phAlK1urY3kUsWzeTCQA6CfaKd+WEwt/MZ5e0TOFEXGbIlZaTE70UeNoUTnLsWNmgIU6
         MI7QafQ8P8ccnOpFQpWJdgS1vlotiYEIRV+U8nkZWphxdDzr2EgfPKxcDbBgFGOvqoJw
         WYWCr0J0N4g0i4iTaetmBrV4OQZ8XQA6rrRXIVCc4syJI7nVjTtP6Pgy3uy2eINzn202
         mhl8tXl7aIGe9SKhQnPkHsRX3hPwByXriNw3MC6oK/D/oqwsYPcTUe7DZqtujWULD8aA
         Pp1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679128676;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6ieG7L9msYA/7lhUnPh05XbQYvh9ea1Tc8rd619ZsgQ=;
        b=YJAZ2dck0N2qell0gQ4aGfFd5GCjuqD3u4yj6FJtguPW0JKmvVejQlY95Te9cTRP7F
         MCVyqAv1QyzdnvCMM5YtrF1FIuq8xhQ8DV+gB8chMog0FNOrdDPbcuFkHHL20NcLgTIS
         rc45v4vJ/P45+232RDOuE2iNGm7QO7v8j7icb3MVoPNL4GGensTI053W/1gG95sH+dmG
         BFkdPcQ/47gWQGH/NahGBvm2EKLrHSZnz1HHHEkWSBqZ1t3/pAgg6jul7inRgY2BfWJx
         9moxHT0I29WKgWKAeN1Qt94uz9FBHOcIfZFnNcFNM/6oYKn5SGd8oLfWztTcAYGt8i2U
         Tthw==
X-Gm-Message-State: AO0yUKVleTxuqIH6UMIiRNbDNcfNQdhoKLp3PninnQEeY3xpIhiFqIOQ
	YKRd3rIsgqvk798k6S+n9R4=
X-Google-Smtp-Source: AK7set9FGB4F1uRNXAX0Pk/2KXzDRt5VIXEaOZtMbjLEJaLnLm3z4gatwEwLDItxcVLd8R8Up8yo5Q==
X-Received: by 2002:a05:6602:1c4:b0:74c:8dc7:aa1 with SMTP id w4-20020a05660201c400b0074c8dc70aa1mr1012004iot.17.1679128676172;
        Sat, 18 Mar 2023 01:37:56 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id h8-20020a6b7a08000000b00746041ecbf9sm1174834iom.39.2023.03.18.01.37.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 01:37:55 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Andrew Powers-Holmes <aholmes@omnom.net>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Vasily Khoruzhick <anarsoul@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/5] arm64: dts: rockchip: remove I2S1 TDM node for the NanoPi R5 series
Date: Sat, 18 Mar 2023 16:37:45 +0800
Message-Id: <20230318083745.6181-6-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230318083745.6181-1-cnsztl@gmail.com>
References: <20230318083745.6181-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230318_013757_278680_66FD8001 
X-CRM114-Status: GOOD (  12.03  )
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

This is for the audio output which does not exist on the boards.
Also disable regulator-always-on for vccio_acodec since it's only
used by the audio output.

Fixes: c6629b9a6738 ("arm64: dts: rockchip: Add FriendlyElec Nanopi R5S")

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
index dd9a7907a1c5..58ba328ea782 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
@@ -330,7 +330,6 @@ regulator-state-mem {
 
 			vccio_acodec: LDO_REG4 {
 				regulator-name = "vccio_acodec";
-				regulator-always-on;
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
 
@@ -441,11 +440,6 @@ &i2s0_8ch {
 	status = "okay";
 };
 
-&i2s1_8ch {
-	rockchip,trcm-sync-tx-only;
-	status = "okay";
-};
-
 &pcie30phy {
 	data-lanes = <1 2>;
 	status = "okay";
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
