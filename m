Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3ED0C83F17
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jul 2025 16:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4PEaB8Iyv5M72oOpIfCI9y0Uwy5xhFAUb/1+WHmviJw=; b=zaqbw+faGaVerw
	U+FAFs1Hg5+HwjgiaWagOW8JfaDj5KLK0478d1mZ8TCnzZ9PnUfTXyzZPOkYwwk8Fav864rcbVK+r
	v1Sy/EcXFVTL06jRTidhg5aTfEZDNaBGMMQF+fgIPrz9Wm0dOmQHL1ZnxdvR7zX2WRgX6TDpYE07Q
	TgDA6Iikq9VPXg+XUiH0IEpIOJns9wkEJCDcFysnFgyFq0xPesyYVWI0KY05nutnDhhGfYSCoiKqf
	UQReWWANDMfHP17CmnodvODXoECuGWS7d4vPphR1ac1j1wqhIJtyKlJ627s7EWPGNrJvQuA86KqSN
	GVUoL2Veta2hBn54260w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uazOY-00000000NDG-381q;
	Sun, 13 Jul 2025 16:17:42 +0000
Received: from out-171.mta1.migadu.com ([2001:41d0:203:375::ab])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uazOV-00000000NCg-2L1i
	for linux-rockchip@lists.infradead.org;
	Sun, 13 Jul 2025 16:17:41 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1752423452;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=VBNIyz9cuBjZoJtZIql5gATNUxrtX/L4E0kfIQR1FVU=;
	b=wSbUNT2KQf7F6owQb126AXQgG8NAE5vzWO37zgz0zVVHPYo3SjAxF9KpgjaeF9wQ0WUnzH
	6QAF2GSmc3/3j8WqQy4heZSF2t4e1sITjnWPs/4EDqFMxPADOy0cSoFz5mQpfvl/ttjwAI
	EML6PYD+M1MKlurhRg+9S6t+nQHh5HpsuVI3Co/gqD+JcuTlTRvPvIc7vLfpi9bKFF2i8I
	i3izdpylYASUYmq37wbDWOSJLS9VP5NFLP3ohGm5CZVCYTUXk5W988iKMS7vT6rK9TNF5u
	NtqkynsT42/z/YWegbfZo8fl6dS3clrLbFZkvkuJlOoDxYZG46v5JCwWHCEbWA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH] arm64: dts: rockchip: Add rtc0 alias for NanoPi R5S + R5C
Date: Sun, 13 Jul 2025 18:16:36 +0200
Message-ID: <20250713161723.270963-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250713_091740_195695_A69DB2BD 
X-CRM114-Status: UNSURE (   9.55  )
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

The RTC_HCTOSYS_DEVICE module defaults to rtc0 and should (highly)
preferable be assigned to a battery backed RTC module as it is used to
(re)initialize the system clock.

The R5S and R5C have a connector for a RTC battery which is used by
HYM8563 RTC. Both devices also have another RTC from the rk809 PMIC.
To make sure the HYM8563 is always assigned rtc0, add an alias for it.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
index a28b4af10d13..f4d042bdd328 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
@@ -18,6 +18,7 @@ / {
 	aliases {
 		mmc0 = &sdmmc0;
 		mmc1 = &sdhci;
+		rtc0 = &hym8563;
 	};
 
 	chosen: chosen {
-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
