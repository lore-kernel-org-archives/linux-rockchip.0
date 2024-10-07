Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70609CFB43C
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 04:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0JAUXSZsEU7pWljh4s4Si8tMzMyW4ubnCYSMopKoU0=; b=0AtgxfJEWgeWyt
	OGWvYUuv+REPziFhLHpVXPDchrvJmrFkLQXEqG0TtVB3Hpifm57Zpw2gDuI19s1V82dZyV3UuFn/J
	KTgFD3AfeavssKF/cD0i12YxJyG4KoxWD9VuKJo9tmHiSy9uearXCIRmysmrt5AuhORVtK/gdB40Y
	X9eSrPfMjt9iE/1hq6Lvokvj8hytQIjK5/tB0bZrQkfUWO+hRmnyRsLAdIywHC39YLnOKBJEGvmge
	bCfjbPWXcNlDgRYYJE27T4xSvAGS7YFJRGXOyiVBbAd05Ih79Ry/dr0+2Si+s5SoHZG/RuWKqJlEe
	HSdjr45VBZttvf8/zdYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxf75-00000001DHG-2QBp;
	Mon, 07 Oct 2024 04:12:51 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxf70-00000001DCu-3y56
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 04:12:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 95641A414F3;
	Mon,  7 Oct 2024 04:12:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E40AC4CECF;
	Mon,  7 Oct 2024 04:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728274365;
	bh=C6RIdeyvQKZh9z5RSGrLA4DfWGjaKLJl7wwv+6mWXJA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AZH8bE+ZrFByQnTZwsyTfS69hBJ21ffufkZj48W6tOMtlmuDyiH0kwdDN+zP3cxuK
	 tWNybfwzrvEyZ4lxbqA3inDK8g/fOs4fxjjdk7yS5bJkfDIdvhEJfXTCnnYD/27VVU
	 TAF7fUiNguf7OtCbbJEhoSwkcT1pDzVTptXIk8x3rHqOUsgNP5m/CG3v3DXA9ACqxe
	 VFX0TUc92kG8+Qe4Uwx8rduEK5VNT5WAsMyMiBdbhze/8mm7BK2Q7VKoT3XeD1lybU
	 nfuU1ySSa7S0nf4Gj0py1F028HRYZ8Z26Tz/wptw2c4KrTf5c3Yzo+N+ReXxt3FQBh
	 vStKz7Xa/ufKQ==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v3 11/12] dt-bindings: pci: rockchip,rk3399-pcie-ep: Add ep-gpios property
Date: Mon,  7 Oct 2024 13:12:17 +0900
Message-ID: <20241007041218.157516-12-dlemoal@kernel.org>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241007041218.157516-1-dlemoal@kernel.org>
References: <20241007041218.157516-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_211247_196951_161C6CCF 
X-CRM114-Status: UNSURE (   7.52  )
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

From: Wilfred Mallawa <wilfred.mallawa@wdc.com>

Describe the `ep-gpios` property which is used to map the PERST# input
signal for endpoint mode.

Signed-off-by: Wilfred Mallawa <wilfred.mallawa@wdc.com>
Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 .../devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml      | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
index 6b62f6f58efe..a8970bda7174 100644
--- a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
@@ -30,6 +30,10 @@ properties:
     maximum: 32
     default: 32
 
+  ep-gpios:
+    description: Input GPIO configured for the PERST# signal
+    maxItems: 1
+
 required:
   - rockchip,max-outbound-regions
 
-- 
2.46.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
