Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E8F1C10DC3
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 16:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wAJoRX+vEut4DqL02ssER7pggEJpHO8pl66X167DqFs=; b=g+1f1ruzrPvfJT
	HVK1pwafLNh/QwLMx/ak3iZC1p/pn+0s5uBjXRhOkzXdYU50QFO0NisiLc29JUQk8miZ+CioVKFYb
	vBwHNHd0ekITSmQwotqhw0/raPyN9MSFOdaVmOJvmgl6KqIL7erbRoBV+z5BhJfe1vpxlIAp8/68m
	g5ST1tFkwQO3cejNH9p041MjVe/FoReCe0jsbF4e4+aKeZZcbRd0Esy9U4qLX9KluL9nvQouhQ69Y
	vhR70CHUw4IWoyqyl5uMXnRngNLaiB4zLdQA6NrOjNU+HLbJhwKaGIoUa3BSgoQ8b/jKQQkJ1LW3s
	VeD7zLTO+vPhz2SkMaZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAYbQ-007uh3-1E;
	Tue, 05 Dec 2023 16:48:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAYbN-007ufl-1U;
	Tue, 05 Dec 2023 16:48:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=D6/9YDuwS+ygiZa4oJ4bI48VxrGLKCxHT3TEx2RiyEQ=; b=Yl1G3VjyI1fX8zK5lidsgAijIu
	O0PimdZaapaazfJAjDoUhCuo457vdb9OhSD5kRuEfBW3/RpQ7hFJOUwO3Rqfx7QeDRC7lyX4t+ykl
	mEfqqayB9j66OGC82jRWGBDCwL1hTmTivVcJDrLTuwuIA/ZQFTMEv0EQB9wG8sKSQSfITprxBiLRu
	VRYYwmzWmsuwOwrBTEL3+fhZs/ZRilbF4aJDsPvzFdsuGKCpJV2qXlwzLUCLbeALEle4801mAR9J3
	7Sci2fI9FMJplUM5D1Nt1N8ul7V5dH5xOLdMSbQ3S9Bb2zD/4VY5n1d5UxMdqeb7IeaNe2m/vgvpU
	4JIHBsLA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAYbI-004oHb-0K;
	Tue, 05 Dec 2023 16:48:52 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAYbF-00014D-CB; Tue, 05 Dec 2023 17:48:45 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	quentin.schulz@theobroma-systems.com,
	heiko@sntech.de,
	dsimic@manjaro.org,
	didi.debian@cknow.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v2 3/4] arm64: dts: rockchip: add rk3588 gpio aliases to soc dtsi
Date: Tue,  5 Dec 2023 17:48:41 +0100
Message-Id: <20231205164842.556684-4-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231205164842.556684-1-heiko@sntech.de>
References: <20231205164842.556684-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_164848_341280_0A5C2945 
X-CRM114-Status: GOOD (  11.00  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The gpio controllers on rk3588 are named gpio0 - gpio4. Board schematics
also use these exact numbers and we want those names to also reflect
in the OS devices because everything else would just cause confusion.
Userspace gpio access is a thing afterall.

To prevent each board repeating their list of gpio aliases, define them
in the soc dtsi, as previous Rockchip soc like the rk356x do already.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 47512c39e55a..a59407466746 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -19,6 +19,11 @@ / {
 	#size-cells = <2>;
 
 	aliases {
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
+		gpio4 = &gpio4;
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
