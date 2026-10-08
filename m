Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6962CCA600C
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 15:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FTv5B5uikUK5FNAxDYLkFcD2dE5qYSmdd7SzuHv4sSc=; b=LlNm9jPizuwnZW
	p73vbF1tZgPVRyTixZ0LpxEFdeD4hIqebfUB+uzhei+M+k8CGqMPraQDyUQWAMk2XCEcn6RIXXabz
	Zt0QV9ovC1JWE3w2YAEOBCVLHK+VUNCU17ngcLX3mwWMDNcf9gZ5by+D1N3F9yCS9nUpUQzTXTfaz
	Z30N3N1tJa89J69upbBGMXluINY2OGgwgX9sVeS3z7g1xecVgGG9TxCC1N2tFo+rps8UuzYulae6V
	p1Wxv8PROFP+CvKda2AYlgRFlyA1CClwjZ7pTtUTYZZEpBQcEG2ucpB3IvXH7+u/67FeeDaYY+HDz
	emX5X/qPgo7stss4bwYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEqB8-00000004cXJ-0d3y;
	Thu, 08 Oct 2026 15:37:06 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEqB5-00000004cW7-3k7G
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 15:37:05 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-cc4d192643dso1478821a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 08:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791473823; x=1792078623; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=q0g5RUJYsTuTINK7t/PSk6wKRYNvtbwpJDwV+1FAvsQ=;
        b=ZP8klpcZ5VoSOT89uzegkCUo4siRxt6x+pVwkgplQf9wQ3jD7Y281f3ztF5ZtXU70Y
         Iby+zs0zmBHJd8C4zEh45Tmg9ojTJPlotognr9O3JldNqzXigiM4M22Gy4bKpiKw8vVd
         FLpOkrYWIbgTIoihJffB2QFp/PmeNsw+DQCwrj0QiF2VZwjYi6VEse5zdw7AG6u8scS/
         RA4oXejYmnWZbJ38bunoI0ZE+4UoRa7m73wV6AFw3w4MAhLVN38Db/PrtLGIxp+4gnrD
         0iT373PPqGfzNLIuWAtFDIUB4F2lfDetAxgUt3fpqFR0eKOY6VEssSlh4ZSxfWUXz6yW
         xPVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791473823; x=1792078623;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=q0g5RUJYsTuTINK7t/PSk6wKRYNvtbwpJDwV+1FAvsQ=;
        b=bgxqA5WFGANE/yPpmEpVBkSrIz0n7UEtrhReCLKUcwp5KOrLIUOl1uFxnyqRel/DOC
         FCX+H/v5RlFHSrGDBv9BghdVwX1ihKrt1xtHQLsxckCQnsyi+jDRi6KGzVSnz1KdMiEY
         mpLyU60cCTNvU5JiNz+UtkUhf/caj06nHx7eqz3ucFddPnTfS+0Ecg9tovS9hUARx4c0
         hbXUtZwMGPfmyZqPqE98NzVckm0Y83Nj6QiBWoLOETUd3mWmwwCi3a96GqvT7nmlUcPw
         LOOPtnmz7HfQUlAjRQIRE1wypzJujmod5C2eM9G2GEUfBNKW6cOMbpHNROdq/MnUxI5/
         z0Ig==
X-Forwarded-Encrypted: i=1; AKwUvByRGPOhfTBBK2xahtbHuzoH4aIPwcFyh/rXw9mwGdV0nPhmNTYD/Joli8cPiRGmYpNoI5qtwQ6lraBAIM8OKw==@lists.infradead.org
X-Gm-Message-State: AFuF++mRNMaxvo0gCouH79Wwn84gi+uAMcayd5EsTqw73IRWo0zEDfjQ
	cC5OsOrYc43Vkrc9OchyufIHCOHEmIGFpEO8AQzHmSOkirfDdvLVgVt6
X-Gm-Gg: AYBFou2N9F9UEdLZ3axEoaURijpkJjxW9JOox07y1d9peEoY0VmCsySEpDbYldeOC4K
	DlUoARjhWRs3NHCP/mLqU5X4rljXTzzrnNbZWxTLkZNFgVIwQDort6O0Z9a3daM2da4GybFqHlw
	jhcoAeD9P7jnW+huxedodV3Y2LsNw6PZJ6wUX29xEHLve+V5Itw8hQlpa616QCd35dWMg/3uJlV
	KHqar7oZ7xWV2jPQy0h76b1EeZWHDBbfMrgXnuMhoTcCpDyTccpOFyRWhOFboVyqm7qFnB0zQ7t
	+YmU27FxLTIp2FXw03Dyi9WThkg9wOTdzcGOBGq1cBc68CKHv6LIjNPrcZzxtL4zT/HHFhuLbA9
	ryCD4GnGsVjGCiOyxRGWwKBUzQmq52ogFr3hQCm1tfascwT8mVhxq/BYfsFE8xr/3CJ3D9dVJss
	bppKP6z8ntEeZz2VI0lvVCb2yOZSQWDvPK3p3S+8v0op741R1HzzHGnzTIeSKJ/ZqDloaUIr2Gi
	T2m74mbTp8A9aoRtg==
X-Received: by 2002:a05:6a21:608a:b0:3dd:85a8:4c57 with SMTP id adf61e73a8af0-3e1340542b4mr4754282637.30.1791473818297;
        Thu, 08 Oct 2026 08:36:58 -0700 (PDT)
Received: from arch.localdomain ([161.33.202.10])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cd35736f232sm263479a12.26.2026.10.08.08.36.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 08:36:57 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add dma-names to RK356x UART nodes
Date: Thu,  8 Oct 2026 23:36:16 +0800
Message-ID: <20261008153620.238580-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.56.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_083703_930403_EC70B349 
X-CRM114-Status: UNSURE (   9.28  )
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

The RK356x UART nodes define a dmas property but omit the matching
dma-names property, so the 8250 driver fails to request a DMA channel
and falls back to PIO, logging:

  of_dma_request_slave_channel: dma-names property of node
  '/serial@fe650000' missing or empty

Add the missing dma-names = "tx", "rx" to uart0 through uart9,
matching other Rockchip SoCs such as the RK3308.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index a5832895bd39..098493c04ecc 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -443,6 +443,7 @@ uart0: serial@fdd50000 {
 		clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 0>, <&dmac0 1>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1449,6 +1450,7 @@ uart1: serial@fe650000 {
 		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 2>, <&dmac0 3>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart1m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1463,6 +1465,7 @@ uart2: serial@fe660000 {
 		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 4>, <&dmac0 5>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart2m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1477,6 +1480,7 @@ uart3: serial@fe670000 {
 		clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 6>, <&dmac0 7>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart3m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1491,6 +1495,7 @@ uart4: serial@fe680000 {
 		clocks = <&cru SCLK_UART4>, <&cru PCLK_UART4>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 8>, <&dmac0 9>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart4m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1505,6 +1510,7 @@ uart5: serial@fe690000 {
 		clocks = <&cru SCLK_UART5>, <&cru PCLK_UART5>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 10>, <&dmac0 11>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart5m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1519,6 +1525,7 @@ uart6: serial@fe6a0000 {
 		clocks = <&cru SCLK_UART6>, <&cru PCLK_UART6>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 12>, <&dmac0 13>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart6m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1533,6 +1540,7 @@ uart7: serial@fe6b0000 {
 		clocks = <&cru SCLK_UART7>, <&cru PCLK_UART7>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 14>, <&dmac0 15>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart7m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1547,6 +1555,7 @@ uart8: serial@fe6c0000 {
 		clocks = <&cru SCLK_UART8>, <&cru PCLK_UART8>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 16>, <&dmac0 17>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart8m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1561,6 +1570,7 @@ uart9: serial@fe6d0000 {
 		clocks = <&cru SCLK_UART9>, <&cru PCLK_UART9>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 18>, <&dmac0 19>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart9m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
