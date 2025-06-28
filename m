Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFB98C54ED1
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Jun 2025 15:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZk40DsfMFpMDL1yXkgMOkhoXs04t9Y2N+9y9bPw+fA=; b=rUiEOMr86+aGUF
	vc44EO09PvAMnSYaaZ7wi4P4fUh1VGT6mNO7pZIvN90oglGbAzVMlb9BlN3hXlK1gQvEgsKLpM3sK
	aENHu+K5yxCK9tBtxz7qM//2xxCsBYEwxlcw1WZR40aZa9di85al3aRbyNw84QUBScPEhCRuocOCp
	Z8FgxkqHRdl47IeTHqYaycpvvCTT1yqKSPjYbRfdkigyANY2oMgQu9qvMWEKV3OjbnW5xXO/X9/cY
	L5vkYv/93kuW9YFDkXL9qhnczCuvaoPVa6OKaFp89sezqo6ONKBMeLowhq1Z8EVLiiEHZuTAYoEn5
	zTeecWd7/WtBzHt+ebfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVX84-0000000Gw5F-3MLV;
	Sat, 28 Jun 2025 15:06:08 +0000
Received: from out-177.mta0.migadu.com ([91.218.175.177])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVWs2-0000000Gu2q-0EIz;
	Sat, 28 Jun 2025 14:49:36 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751122172;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=855oi/aHiPaIX6D7ew4EHyshWsVi9Qr95Z7nFCB1Mlw=;
	b=Tkp51LLFHe740iWEvjJdZFOjkfm1kWmsasXj+gApyDniDrHxHcglEBEoZnn9/KgL3G+JgT
	I/Xq1OUZgjDLbTdEJyqZvGgkGHFBZBU/rDPjdZhoEvnhm6YnQCqPOn0dAobJBLchkPfWKc
	NKKS3qByIkgV53nzu7ugRFuc/2UPoZYKGTRsVZ3n5riKoZilNb5hf1G+mEUuqGo+4tQnrR
	7ZMfb/HTpneU+ChcF8PbUm53ELHF39QUzPWf9NTAC5TUBbuMYTgWqynjOh1Kz9nHmg0Zcm
	yTVFe9PTfYX4jLS+wqgGjhAQDjlHS5vSQHUGBnBRqum8TFdBU1FRjvIx9iM0sA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v2 07/10] arm64: dts: rockchip: Move mipi_out node on rk3399 haikou demo dtso
Date: Sat, 28 Jun 2025 16:32:41 +0200
Message-ID: <20250628144915.839338-8-didi.debian@cknow.org>
In-Reply-To: <20250628144915.839338-1-didi.debian@cknow.org>
References: <20250628144915.839338-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250628_074934_238156_2A6E1942 
X-CRM114-Status: UNSURE (   8.49  )
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

According to the DTS coding style [1] referenced nodes should be sorted
alpha-numerically so move mipi_out to be after mipi_in_panel.

[1] https://www.kernel.org/doc/html/latest/devicetree/bindings/dts-coding-style.html#order-of-nodes

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 .../dts/rockchip/rk3399-puma-haikou-video-demo.dtso  | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou-video-demo.dtso b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou-video-demo.dtso
index 0377ec860d35..d28880b8dd44 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou-video-demo.dtso
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou-video-demo.dtso
@@ -124,12 +124,6 @@ pca9670: gpio@27 {
 	};
 };
 
-&mipi_out {
-	mipi_out_panel: endpoint {
-		remote-endpoint = <&mipi_in_panel>;
-	};
-};
-
 &mipi_dsi {
 	#address-cells = <1>;
 	#size-cells = <0>;
@@ -151,6 +145,12 @@ mipi_in_panel: endpoint {
 	};
 };
 
+&mipi_out {
+	mipi_out_panel: endpoint {
+		remote-endpoint = <&mipi_in_panel>;
+	};
+};
+
 &pinctrl {
 	pca9670 {
 		pca9670_resetn: pca9670-resetn {
-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
