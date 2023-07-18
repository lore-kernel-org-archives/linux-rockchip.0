Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 673CBEB64DA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 06:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Akg/g6cHXcq91OEXR2JDz2PbvP32oJVx01Drbe8YYE=; b=nlG8iLCwQ1N79X
	9t6dy2km6oIuOKA5r/gIWnQqsn/X0Z0aQCxRGCHAsQAayixVdi0xBryFsvhaugpsDZFqLkeF4D7z1
	jyw8tKhrbzsguI8nmFQncukIbNGjhwHpmkfGff52N4GEL1bAz0YJcILE3wh/ccFOzVlPW6Cqzt/ec
	gY6VaVLUS2VHuYNBuL7CtbYCTfFrneQk1CGDaHzakk/pcS28Pr5v0fR5uQPCyZbi1pn+zqQ+owIqd
	U9q0c4xEXl5WIk90Vbv4IjrHBn/7N0u9MmwQmbgavm7bCyKxO+0fUn7bqFQuq/DeHwA5itHHsdVu3
	1gwx4AyMxdx04vYsATFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0Gy-005WhI-2G;
	Wed, 19 Jul 2023 06:02:52 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0Gw-005WgF-2j;
	Wed, 19 Jul 2023 06:02:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=dJfm9Xu6mLNf+bMAmuP6AEX0CyJ95XqwOktwztwQYHc=; b=Vrz1z3zDhHyKyDMwdtUWT9RNko
	pf6DWoJFuheabTC2L9kK2CrB4zj+HtEFSLbPbbMps2dKOaLlDQyblUzwc7lVMXxwiTVqnM+fW/OOi
	PiwMmzvfJD8OeSvbOo1Ww9MZxjJh9UfWu+7hM0WW0i7hLdPt7XnI3xtVplVZyyX9KcfVJgOxEhnqq
	PxzF52gk9cil7zbdYP0d//CYvNwji8L2MWE+HEZQKWJ0rtMYSkFFx0B3mr+Ln+pX6vNIDJ80CxwC2
	WJJJUA5e6MdUj17GAR5wnLD/Lsvc2JoI0JsQi0QsQcMaYAZ0YoIH4GyI8OydqjkJbYnj9xpXcX6vG
	uYK8btsQ==;
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLnkq-00BlLG-1d;
	Tue, 18 Jul 2023 16:40:54 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-5577900c06bso4462596a12.2;
        Tue, 18 Jul 2023 09:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689698389; x=1692290389;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dJfm9Xu6mLNf+bMAmuP6AEX0CyJ95XqwOktwztwQYHc=;
        b=WuaFFFb8P26DlxbEI98Sj9R8DetzfD5pLUWStEYhjaTGtJH+OUC3umtYjNgHw53X8H
         qRQz9GWTsXAIw8VqpXYoRn4nH1Ah7isvmtXvHS4QWlaW2HQQOrhO1i4lP+Se/EmSLKsH
         p9SLbEWHHS3M2CbGlPep/pdKYflAHMnT2458jc02O1Q8Wgu4rgmk6B2G1IraMMBbbeuX
         iRWXAYcYtwu3AgJCLEV4JOftBkNXpHIoV1AI9NB1sHxKTNczwCKtrJYzab4fajTWXn6L
         tgxfZQaBAXvS4rVJERQ1GahNghgEHZOuIOyq3D7dUCM8Ar9OdimqlIeaDOgMcpYwW9ha
         yWag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689698389; x=1692290389;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dJfm9Xu6mLNf+bMAmuP6AEX0CyJ95XqwOktwztwQYHc=;
        b=Lcl8GadevtHOyHaVF6SxmUQ5M2IJ3Xxjc56ODV/AoMad1pDQOTlZfUGHimn+6bKla7
         4RS8GeSB3EaQ1rLIhpfje+g32r37nO8NYG9UxLxaP/H6b3MUCJXNeWEH6WNFlilOljAh
         giRmmeZO3A2uFrG2rZFkJdFKWRIExeS3BtKi03bBxOMGnN74Q5tOjQHsjKLme9/FAVwM
         zVbiyumuL3ZaK+nTTi88wKXgJYxX+osgDwvVusJ8qXYYEaByetpJ0BIiH56FF17dzCcL
         8prASPCtv7L+SeHfWSlUqv0t6hDRiRKSNkW1FoOYmmenKuyE/ti60bRtXfWtXf5KNrex
         6Yog==
X-Gm-Message-State: ABy/qLY1I4dzjXYq4Jpc4BqOMIVojEI7JrayUDbialeS1KXhVk64qbH3
	MM+2fDk3meBvaq0bsoqjqno=
X-Google-Smtp-Source: APBJJlHZTPpp1pKtH1Oi100fve+RA7DjBKu+d4ef5KaEWCIBBYdCe08KvkmNsDfXxRTogVs8bDcwIQ==
X-Received: by 2002:a17:902:7894:b0:1b7:ffb9:ea85 with SMTP id q20-20020a170902789400b001b7ffb9ea85mr15154411pll.29.1689698388615;
        Tue, 18 Jul 2023 09:39:48 -0700 (PDT)
Received: from zephyrusG14 ([103.251.210.195])
        by smtp.gmail.com with ESMTPSA id g21-20020a170902869500b001b80d399730sm2077207plo.242.2023.07.18.09.39.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jul 2023 09:39:48 -0700 (PDT)
Date: Tue, 18 Jul 2023 22:09:41 +0530
From: Yogesh Hegde <yogi.kernel@gmail.com>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: linux-kernel-mentees@lists.linuxfoundation.org,
	skhan@linuxfoundation.org, ivan.orlov0322@gmail.com
Subject: [PATCH v2] arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4
 boards
Message-ID: <ZLbATQRjOl09aLAp@zephyrusG14>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_174052_658475_11DF5C3B 
X-CRM114-Status: GOOD (  14.27  )
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

This patch fixes an issue affecting the Wifi/Bluetooth connectivity on
ROCK Pi 4 boards. Commit f471b1b2db08 ("arm64: dts: rockchip: Fix Bluetooth
on ROCK Pi 4 boards") introduced a problem with the clock configuration.
Specifically, the clock-names property of the sdio-pwrseq node was not
updated to 'lpo', causing the driver to wait indefinitely for the wrong clock
signal 'ext_clock' instead of the expected one 'lpo'. This prevented the proper
initialization of Wifi/Bluetooth chip on ROCK Pi 4 boards.

To address this, this patch updates the clock-names property of the
sdio-pwrseq node to "lpo" to align with the changes made to the bluetooth node.

This patch has been tested on ROCK Pi 4B.

Fixes: f471b1b2db08 ("arm64: dts: rockchip: Fix Bluetooth on ROCK Pi 4 boards")
Signed-off-by: Yogesh Hegde <yogi.kernel@gmail.com>

---
Changes in v2: Added the Fixes tag as per feedback from Vincent Legoll
	       <vincent.legoll@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 907071d4fe80..795a70948d9a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -45,7 +45,7 @@ led-0 {
 	sdio_pwrseq: sdio-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "lpo";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_enable_h>;
 		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
