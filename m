Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3150C5AE5D
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 12:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYIEUv/n2lghOQCPc4sTtU2FHSroRunLLlyS3yQy5Is=; b=3/OfwYm9/aRj+4
	iAfecEThhhYURuNi5h0sM2CNZlFqbWs0gIaO6Sxs1RFS2ujX3Fl1FzsElA0IUU43jgaZ4BWejBECo
	5BLC3i6YwRLj5SyuwpwX9g/SI2FuhBxbAV8jLXdqzFATxNm2NQB0b+qqguERlEyGAIu7ioHC8CVU+
	BvHzuO358nQwL0sy3RsBrwycYggEvKMdRXsMHE4oIzMfwkDc7HE/UsNPjjbC/JVG9FyMP3gJn8DYz
	1Ql7RAb0G8Gq1x3hFBvedav0s4W6SeiW+pagfIWfd4beAmJDaAcm+GGz5r9cCFFrB7EWrOFitqjvU
	7MwbblRy2U6gyqqzkNnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOw5-0000000BkIY-1Lm2;
	Mon, 10 Aug 2026 12:16:57 +0000
Received: from mail.zlab.su ([109.73.193.145])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOvj-0000000Bjap-3L9S;
	Mon, 10 Aug 2026 12:16:37 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1B805C051C;
	Mon, 10 Aug 2026 15:16:31 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zlab.su; s=dkim;
	t=1786364193; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=sqrx4ikcXrAn8DGvjuumVqDdeyjA818dinNYnkqF66s=;
	b=JeHLCWyEUzzhHs8YZrYxBVZDt9I5y/H0XdVxW7IbEtBBvy9UQlYyOojVFdCXNNjEb8EhrP
	XusHB38mUu7EQQ1Ri/qjlpuFqT9FDcEqeUdi5fqF4if6vUaLzBR/7tMISPY+qXk1Yrd27F
	sm+wVdTndkmE2SwY4EZ2hnOOc/Wdj3WZ/MvSKlQO7Ulcv6gshB352lLiY3QR4ZbKYFq06Z
	u0dApIKvxvIW197GjLABJdfy4M/dT8gV8Owel0NmYAxYek+txN0G0ieKix5UX3xUJoIkka
	ld44GQTG7wbDJLE/Y/oA4kLIz7VcXSsIVXVj4KWz3gw+ZwJTYEIYvBGd5Hfa2g==
From: Vladislav Leonov <vlad@zlab.su>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Vladislav Leonov <vlad@zlab.su>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 23/25] ARM: dts: rockchip: add arm,cpu-registers-not-fw-configured to RV1106 timer node
Date: Mon, 10 Aug 2026 15:11:14 +0300
Message-ID: <20260810121121.210040-24-vlad@zlab.su>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260810121121.210040-1-vlad@zlab.su>
References: <20260810121121.210040-1-vlad@zlab.su>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_051636_084914_09CE218F 
X-CRM114-Status: GOOD (  10.22  )
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

The firmware on RV1106 does not initialize CNTVOFF, so the virtual
counter may have a bogus offset relative to the physical one.

Add the arm,cpu-registers-not-fw-configured property to the arch timer
node so the kernel does not trust firmware-configured timer registers
and uses the physical timer instead of the virtual one.

Signed-off-by: Vladislav Leonov <vlad@zlab.su>
---

 arch/arm/boot/dts/rockchip/rv1106.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1106.dtsi b/arch/arm/boot/dts/rockchip/rv1106.dtsi
index b31cdb1c19d4..12e87d25c72b 100644
--- a/arch/arm/boot/dts/rockchip/rv1106.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1106.dtsi
@@ -57,6 +57,7 @@ timer {
 		clock-frequency = <24000000>;
 		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>,
 			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>;
+		arm,cpu-registers-not-fw-configured;
 	};
 
 	xin24m: oscillator {
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
