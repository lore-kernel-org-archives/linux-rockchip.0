Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75760D149CD
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Oct 2024 18:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QsYuesM8TB7G1fvdM3D6r6YLSA2fhCt84JPfYezkJM8=; b=RVvaFBJJG4hyVw
	YdsSF8or5ZrIWZ/i7AMaKD60ZwL5qEBDsrNe6XeGo/QcGDrRvFyXYiDUSEjF86BuKrEtjPuEV6y+y
	VQXY6zE3g2KRI8qNxx9Ocb0DKJSUN+GLRHzApkpQoiZXsqJikccrAO+lcY2VPrU31yqSeoHJ7uIzy
	7fNKv+cimCUPCj1cAP+j/bRbUea7Gg2kp0D8i9rTfiyckQQuc+CN4FnjUFTectUAYShLYxrm8FV4E
	ti/dQyj1SsQ2R/37PjwxHgGZ70F48T5Z0Su90AJAnVzDNhC1NOb+wTIMyF8aW+i3jqk5i9W6TQCEU
	BX6cXhcyrDt8IjPEPJgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4P0Z-00000004ncX-1j0T;
	Fri, 25 Oct 2024 18:25:59 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4OVp-00000004glF-2qxp;
	Fri, 25 Oct 2024 17:54:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 32CA0A4386C;
	Fri, 25 Oct 2024 17:52:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22BFAC4CEC3;
	Fri, 25 Oct 2024 17:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729878852;
	bh=mCSQEoQ4CLulrEpBMf3oT0z+1iz4xIqJLNRGjUOnX3s=;
	h=From:To:Cc:Subject:Date:From;
	b=kaYr7tDPrtQYRnnrNxTUY65Y/NGEFW8a67VMDDtDDuMv+ICEcvrD0MOMAsQzKZFmc
	 OEsp5hbf0DPhkLq5hX9PzA6D2ZoYc55Qezemi2QXqBu6LykZfRIyb1Pa4juzhtLXFu
	 DNFEpF5SDJQG2eWbZc8xGlKmNhRdwS9sxfkl7A3rD80OOBQWxWcc7l7atW46yBFaWx
	 aK8ojgM6aiD0r8hTJcYRiFX8e1nZDI+v6H28tZqNQumR2SH83jxGm0hgC9XEH7+Kma
	 XDFLka9p0pdgiiGAk69vkF0B3gaPyKsFRwDmglezv8ZQ35UYvduyt+AXBDSLnR/x+B
	 wVE7OxDFfpM4Q==
Received: by wens.tw (Postfix, from userid 1000)
	id DB8C35FCB4; Sat, 26 Oct 2024 01:54:09 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@csie.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: orangepi-5-plus: Enable GPU
Date: Sat, 26 Oct 2024 01:54:09 +0800
Message-Id: <20241025175409.886260-1-wens@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_105413_906549_6E1AB416 
X-CRM114-Status: UNSURE (   9.53  )
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

From: Chen-Yu Tsai <wens@csie.org>

Enable the Mali GPU in the Orange Pi 5 Plus.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index b826c5e368aa..7edebc47f1ef 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -287,6 +287,11 @@ &cpu_l3 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &hdmi0 {
 	status = "okay";
 };
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
