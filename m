Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76A0DC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 16:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyNDtRWpfcg7XAEatLIbXKzJ5O+P9T2kilnD9kcr4Ko=; b=XjxxuzZzktiSfn
	vdE0WOxbqyqWBx5RM7UrJKl5tLDBuoWY4O6g0+xqrfbgTzj5tzZx0mOyWR+jK/6SVYQIolXuCZxao
	jnKnBmmL608cK5IiNR0TQKyc4+B2+Sf3nQ6KG1mCkc1XIW6rqcKR5rpM0m/7BRoouDlsOFkIFYKsL
	AtuiB5s6b2sgREBHQrjP5ex6UGRL6hjzz0+Pb8WvZzhH+9NhF/5n9ELteENlVToioLSCFYjXGvt9w
	36FxE3BhWMKfhS5hn1ainxxq06vX2lEGtKlozaU+90jLh+AyxDPYIixV99IN4P4hsPq/bwrbxzIRu
	n+tVB1gKeAy4Mh7WLzlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRzMF-009VUj-D2; Wed, 09 Mar 2022 16:40:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRz85-009OV3-83; Wed, 09 Mar 2022 16:25:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7A81A619B9;
 Wed,  9 Mar 2022 16:25:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05A36C340F3;
 Wed,  9 Mar 2022 16:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646843135;
 bh=0DvuFx9PPeHyq7CmIC/s91cfM2NemeyY3+9c8q8Dv3E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=f9qc+bfX8CSL1WiCZIHDMEAfDqJTVytU1PQ6UM4RT61VCa0uYNnEFI03ecmWTgK0S
 II8GclRMkGEChGWdPNS8niH7nsnIgVIjJnR24tKhI9spayZRbsmNlAlDV2q4C2bqLn
 P5uWeTSQbSSfVAoDg8r5bldKgU71nMDTf5QE9+eJzZMLxbgVJNjBo1yA6AZ0ms/rg9
 vcag0v3/M31yaWRvEiXFEZxupO0P0LU2eBOqCB/MMyo8CWwwCL59rBoYGLz0maGSTv
 6DRk/u5QqJO92H7q9J30vj1yKO3ROOG+Fad9+vzVehCDiWzWwKaLw41YGGoQ2wczhW
 CwgJdsVQvXeNw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Corentin Labbe <clabbe@baylibre.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, Sasha Levin <sashal@kernel.org>,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 05/14] ARM: dts: rockchip: fix a typo on rk3288
 crypto-controller
Date: Wed,  9 Mar 2022 11:24:58 -0500
Message-Id: <20220309162508.137035-5-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309162508.137035-1-sashal@kernel.org>
References: <20220309162508.137035-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_082537_402425_0EEB492E 
X-CRM114-Status: GOOD (  12.74  )
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

From: Corentin Labbe <clabbe@baylibre.com>

[ Upstream commit 3916c3619599a3970d3e6f98fb430b7c46266ada ]

crypto-controller had a typo, fix it.
In the same time, rename it to just crypto

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Link: https://lore.kernel.org/r/20220209120355.1985707-1-clabbe@baylibre.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3288.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 2ff81f3736c8..e442bf7427ae 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -957,7 +957,7 @@ i2s: i2s@ff890000 {
 		status = "disabled";
 	};
 
-	crypto: cypto-controller@ff8a0000 {
+	crypto: crypto@ff8a0000 {
 		compatible = "rockchip,rk3288-crypto";
 		reg = <0x0 0xff8a0000 0x0 0x4000>;
 		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
