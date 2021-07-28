Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA04C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:07:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9308060F45
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:07:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9308060F45
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hmufQD9U72ob5VnrqapWcJDaLTNhAKG9oC6Qv/XPQrQ=; b=yXz/g4Azt/usHd
	XP3MbaWj0nTNLDVn9E5QEG9zSrkmfo0mvuQFFG/kIL1QHKpsN05TYrW5FVwLTWkgodqCRpzBcbBy9
	97elRcVtlwfqIUdNvbcnW6A9jQrzCbaK/L81NsAWpJ2ibtNDSiSlpjCMU8QYOgNDWEN53Frra3PFo
	PeB8CBxUbmzOO5ykuuPtXEYWeco1DTogeD4qzz81EsmyTW4yhbXBcx3S3yEG/pAubxPfvRpV5j1D4
	wLoqzN7LoF+/NUDZa3Extx4cmHnAne/qXvSiJCerYxgxZiShlJLxW9npFEh/yADlJPjMSK1XuhsOG
	uNzR1iWQzif57C1OzfrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kD7-000xFn-EU; Wed, 28 Jul 2021 14:07:01 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8k2Q-000rwN-SL; Wed, 28 Jul 2021 13:56:00 +0000
Received: by mail-qt1-x834.google.com with SMTP id k13so1356966qth.10;
 Wed, 28 Jul 2021 06:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mtzKWmPijMY1PkSSMWpn9rhjG/EXg2m1sprhHLtLltY=;
 b=Ds9SlqnSQ3e3fcKqaRkJ0UBsYCEXFeCsoK/gP94FjQfyOLD9OI2NvBjMSlQViW8OKf
 VxSZ5e25UdFaWFo8m8cczHQ0+GST0yAPONjulMZBc1qaq6yKyarmQSvmVrAHK9hfTVMs
 xkJIUdAFPp1xX6mmtjuLSc7XLinwwate3C4fSIM6zc3Z1Gk0yISSBtG4gO26vCLMZvuc
 BCNtERzYLGYJhaSqXauYAmR2Cc+sm4ioRAXAvghPuU7X7+Ne2EC7aJopsWKvqjcsSqvM
 Bo0GeEuaRoXbAhZBgBOmAdbGtzMxeNvs9c5eRketSBn+H3cbzBudi3CKXzi3MzOlLD+K
 b91g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mtzKWmPijMY1PkSSMWpn9rhjG/EXg2m1sprhHLtLltY=;
 b=t+zD+ANH9hzTwHSCYFJoOxqijBkSR6zHFuqTsVtUuJs39fdnPIEpWOyE+w1W6lu+Fv
 FyX9Xo4dVO96ni1hBxY/ibivaCe1Ran/vXZy2p5uDhgiKM9IOdO2HsZr/Q4QhbJcVaDV
 F1nD88dDkFrGUvshHrz+D2LqUyxi3D3FKq+/v3azPbgJtP1bKYvkUZZJWFoTJm6aL0z0
 fblgCh9EOiBQTidP9pRDnBEol2zTGj+l9+fL1UsYk+ieo0ulV0TBDyyLBnCduG+OHkxp
 oOQEC60eXXLYSjNpBoDd/hLOsQUALx9MeZTF/1tX4ZOkxu2BuJjIJ1AGkAzoU1Q/BnyE
 HUxg==
X-Gm-Message-State: AOAM532hlpXpmqTFup4IHVaRa9Y2ha6wyWPqWOAnJIacSNSs1FRaCuwl
 VpqyCklfEWdo4C27/G54Q2E=
X-Google-Smtp-Source: ABdhPJw+0ngqSvWhIMBN4gmqVswUOrVO/FRrq/+gqt92d9BWChoIXD856tbFqSB/Suln+UdV5QfE+g==
X-Received: by 2002:ac8:5b8a:: with SMTP id a10mr4851669qta.235.1627480557540; 
 Wed, 28 Jul 2021 06:55:57 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id t64sm27202qkd.71.2021.07.28.06.55.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 06:55:57 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH 7/9] arm64: dts: rockchip: adjust rk3568 pll clocks
Date: Wed, 28 Jul 2021 09:55:32 -0400
Message-Id: <20210728135534.703028-8-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728135534.703028-1-pgwipeout@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_065559_086592_35FEA29E 
X-CRM114-Status: GOOD (  11.38  )
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

The rk3568 gpll should run at 1200mhz and the ppll should run at 200mhz.
These are set incorrectly by the bootloader, so fix them here.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 8ba0516eedd8..91ae3c541c1a 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -230,6 +230,8 @@ cru: clock-controller@fdd20000 {
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
+		assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>;
+		assigned-clock-rates = <1200000000>, <200000000>;
 	};
 
 	i2c0: i2c@fdd40000 {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
