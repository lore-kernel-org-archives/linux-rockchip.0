Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38ABCC88E45
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2026 15:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=unEjZgBQwlaE/Kh76tl/+zj8FPDMY0mfB/k757cTgYI=; b=wr2vQ3PQ2WaI9q
	M6pQF4ZnVOmmBL3pChLFYuW4JXBfNCr+T3jnw6iC06d77xeI25QkhqewjUZbcg4Ny1VBanYenFFMk
	i+NBQL1g785ydHoOQfbf3Gj1f70ezB56jHKfKuxZMM6Hk28rxY2sAt0I8eKuse6ciRjrZMkSj1Y1j
	y4BN2ATD1DURb3hw0z7TD/VtALHKuN67kRoAvHnvwhseq4giW7GOognCsaEVJ7BY2/e5f6gmi+GpU
	3QnlsbN2TSoZWWxS36E5ILiIuVWVAySHBtDe4PtLnDav7VjkzRc6qx7/mM+DgbrbnQoU7pEQbLkP0
	HuHzaJcBVtAjZGQD6T+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Bp-0000000H3Ph-4AEc;
	Fri, 11 Sep 2026 15:29:21 +0000
Received: from out-209.mta0.migadu.com ([2001:41d0:1004:224b::d1] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Bm-0000000H3No-2m3d
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Sep 2026 15:29:20 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=peYt46gEnplFq6VAGkOGT5G4FCVR4PjJCVV/CvQlqiQ=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1789140556; v=1; x=1789745356;
 b=X9BUDtwMo5RuqpPHiLXsntdkaPtrn4dznM0BxpF7FvQuWgBV5CnM81YxXX9CdLArTJTvsVdX
 Ui62sfms6CYNn1+RK8FQDIf5HUazc4Vd3dVWzfzUQD6/OX5zwOME5tJUdNrCmDyVySPgaUoKB/s
 2Ee7xwEaNvMwc0V1RGchUYCCCVW5MCLbcBnBiBwROv4ApgqUlEml45ns5Xp7TqGya66GQPz9Dy6
 erSANy+E281zijLeztY0LDsM1koHHrxbbP6kXXYCwOMOpcLnaxYYWTtdKirkhhW5TewT3Q8u5FP
 hrtq4mzYDQFhbc4yp1544A48mQCpFj3HFoxPRrkJq3SNw==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 4a6b1134c34ec148;
	Fri, 11 Sep 2026 15:29:16 +0000
X-Mizu-Trace-ID: 4a6b1134c34ec148
X-Migadu-Flow: FLOW_OUT
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ricardo Pardini <ricardo@pardini.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH] arm64: dts: rockchip: Fix i2c6 clock-frequency on NanoPC-T6
Date: Fri, 11 Sep 2026 17:28:33 +0200
Message-ID: <20260911152911.2088363-1-diederik@cknow-tech.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_082919_394521_C77317A8 
X-CRM114-Status: UNSURE (   8.62  )
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

The i2c6 bus needs to run at 200kHz, because at the default frequency of
100kHz it may fail to find the RTC resulting in warnings/errors like

  rtc-hym8563 6-0051: no valid clock/calendar values available
  rtc-hym8563 6-0051: hctosys: unable to read the hardware clock

But only sometimes. This should not happen when there is a battery backing
the RTC, yet it does ... sometimes.

Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index 4d97afbc33bf..ff4f766ce0df 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -455,6 +455,8 @@ regulator-state-mem {
 };
 
 &i2c6 {
+	clock-frequency = <200000>;
+
 	status = "okay";
 
 	usbc0: usb-typec@22 {
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
