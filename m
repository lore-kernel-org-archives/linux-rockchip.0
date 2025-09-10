Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 417CBCA101F
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 20:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=doAudi1pib6YlUAwgUrDICNSA8wn2VKElVk1y0+oxXM=; b=Hh+23tcCbUYveg
	qHs9aj5ZrE5oyAXv5M7FryAajU/MaKP+YiUiSNT7x0wsRdN8o428EP4JhVJ8n1EX//bg23igBBBNl
	t6lH953fM+AmBL/P0GNlc8kABzqgbUcVUNhl4Fxq1QFl92A1cMlBvE0Dz8UrYeKVm+31MF0yqSGXx
	k7molDDyNbsZv+tC6lUakTb/WiSOmBkgkPqQyHmBbDUJvpMzOsBheIO+DvBNcvlvHOWGq0RVOkTBJ
	Q7cXbU1ID6iQdaNhiklkwqAE7Faw/kTp5Wn/vuILmAgU5CVuLbtDQs1GLZ4r0uL5eBojDFWMN00Ik
	mQGrxO1fnDVfGvNF9CDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwRPl-0000000GYFl-2fId;
	Wed, 10 Sep 2025 20:27:37 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwRPi-0000000GYBs-2Kus
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Sep 2025 20:27:35 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-b047f28a83dso1259524266b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 13:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757536052; x=1758140852; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZiWibX3oZwXI5El5ntJ3FfRiQ0TM+GRXd661k/IqwC8=;
        b=d2dbgxHUhRb2UeOgeqHu28moRDCsncWSOlVheY1I7H38xwSOkIo2NKXR82DRCwNijn
         5j1OAiYej9nuqRhCw9xNgbRGkq5AOkbH/fhRVKCaFog8VNCGz/XonmJRxb9kGWm0f+U/
         ZdrWBjv5tsgOANZZ7mDjy20dG/Qp8BDXC2ggOwdkRV9nySj5yxofn2VXO8aQ8pKlzRaI
         9JC3uYA+6+4p2Z52c8JdrDywbbwKRh5Y+IzsrgrkiWupOI7gj9ZRdxrAqn/iNChtv8Do
         YnV2HWBsDxeAbAgzpTJLAeLkbFzICFWlFMUKBTcjMTHxlslmaSaEKKHrVCv1YW6Aked8
         sSgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757536052; x=1758140852;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZiWibX3oZwXI5El5ntJ3FfRiQ0TM+GRXd661k/IqwC8=;
        b=Lq1JduPn1uDriAbXoap+Vt1ysuRA4I0rcEWrtKNCTJtqGWGg16GNUdzpDXoCF1xExZ
         x//NKRzmbCnJr5crH0xB3k9qk5qbPWJ3TT+fezHHpLjp5n7X7WoSfHHH3RqKIfjxJA3B
         NErpYINksLPBEtBwMsHLkdu97kl0Ad5M5oLjolDMo32ktFYPTb1VeTzyMQPbhsJFYW++
         ln7tYF8qpXfCkH8Ghz/t4MsHmeLRTWoxZDiLauzJ4FeWHGWkMqEgoF+G0Q7ifon4sxQY
         svCV9Qqgf9AABgWgnPDLqDgZvFZ3MI7ZFGzU+4AjYhU7ol94Na8wQaHT0I6UxOcPQczs
         X2Aw==
X-Gm-Message-State: AOJu0YzwKZw1IKGaC9jpkmVCnzWSDDllQGFCsGYzQmpAgP5zAUnIeICq
	MOfBKNRebt4USy41N7bAdSnQrrTNiV4ORXvH32a23joEuk1syKWiIHRsRLgFBOs6
X-Gm-Gg: ASbGncuPsnaC6WCzAoFDN37G/xyC7pNRbHMY+n2FAls0GLA+uycVnkhs/4kBxVTV9O2
	mviy9f2ySdHy20+BPrMDNEv9qtqv+fgymgcQhdNj9bjYqx75eNIUvfP+romWULyEw4+cli4Sjqf
	OxYp4nKH/O64JPDkWSp/tP1enQ0TKjDy1K1AHzRf6KFggjgICIn1aDn5LBy2ch7kBxAlgkize9+
	r+mvfCNXrxvf96/E3poNQvSnOqHFzzGLY4t22UQVbDTGlb9GxBtzYVd+UH9BW+6t/fgW7OsGPKB
	7tBJSsc+oB2Cdg4OLeWCpW4kF4Srgg6xOHELpfk3OVtjyp+uuG6w65OXxnIFwQJCJDF3YJVDa3p
	51BnU5X/YF9J5rgkZ4wgt2Y7tFfHgwSjUXrnlo1Ymue+L93kD8gjD4LDH4Q==
X-Google-Smtp-Source: AGHT+IEfHxUhAwacgQOIGzd7sgB6Q8p7KxzJdwSXJD3R3G4ekOGy7j/ZdN5U3kdLXu1gjA8uwrTaCw==
X-Received: by 2002:a17:907:3f0e:b0:b04:5cca:9988 with SMTP id a640c23a62f3a-b04b16b426emr1645231866b.43.1757536052143;
        Wed, 10 Sep 2025 13:27:32 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07834124c0sm227715466b.102.2025.09.10.13.27.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 13:27:31 -0700 (PDT)
From: andreili <andreil499@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: andreili <andreil499@gmail.com>
Subject: [PATCH 3/5] RK3566 BTT Pi2 - Fix RK808 clock names. Require for a normal shutdown/reboot.
Date: Wed, 10 Sep 2025 22:26:59 +0200
Message-ID: <20250910202704.2191182-3-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250910202704.2191182-1-andreil499@gmail.com>
References: <20250910202704.2191182-1-andreil499@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_132734_608334_2C4837CA 
X-CRM114-Status: UNSURE (   6.14  )
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

Signed-off-by: andreili <andreil499@gmail.com>

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
index d31b9bd54162..517c70d15502 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -338,6 +338,7 @@ rk809: pmic@20 {
 		#clock-cells = <1>;
 		clock-names = "mclk";
 		clocks = <&cru I2S1_MCLKOUT_TX>;
+		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 		pinctrl-names = "default", "pmic-sleep",
 				"pmic-power-off", "pmic-reset";
 		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
