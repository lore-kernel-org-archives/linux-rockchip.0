Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44885CD1290
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 09:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kIUDAtxNlZQBERmzyq3KmslQQQHWSjz9FrydAKPsGWg=; b=QSB7mUEdzarWbn
	S9IB3pdEFWuB60ifc9Kwv15EgdkUqf9txb21SACIMBeG61xxw5egSZBOZIkVLIMFtR9IfC4gkIbB5
	79DBSP8YKlO0qh/MK/KeEUAU9wrItR1RmJq9o/T0D2qmy2SqKC0yzLPhgVScWSTTl37UL6IDQZnsB
	7cRAKllgk678oYLD2HRynfcKO5jPt8k8QNSykc0cwHuoixo6OaZQaQ1WzlYpHyH3bF6aKMzjuvH64
	mK/2JqyTv7+5wGoxjgA3AXrpoyICwGHiVRsqPr8f2hUzzOaVDdXSo9raLRND2NG4Y2FncLeC0jnMm
	IyD3NtLlIKQ6hWI94GLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8Fr-0000000HQaS-3ia5;
	Fri, 29 Mar 2024 09:10:31 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8Fb-0000000HQBr-2vFF
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Mar 2024 09:10:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7A78661710;
	Fri, 29 Mar 2024 09:10:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29FEBC433C7;
	Fri, 29 Mar 2024 09:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711703415;
	bh=7oDGTy7Lw9gvGIO8M6FvPbAlyOWQQdvFe/jiW9a1h3s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lQabuVT2/wm2HpNgWsT5QsW9+2tTGubZLksdh0wQiVdwMANADoXD8g7JH2x9c01H3
	 QtSv1UBycphovECJf6nCEygV/GJKrBHzWM4KtGjoAeIANHihSD95UVB2bWxIKMD2QL
	 sE8fCyAsM5DsAgjMsZSBorpaEaz4QhObKb9zGD2hM+lQVzxySXqA2gxxTUDLNsalxd
	 a2nG8pUQwU9KEQFcpEdG3IN83mxYL37gSvyVIzXkWPHbF2JHCTlUhHIqMPSzWYFr1l
	 4pG21Kwvd2X4cooLl7GC8gDGR65e4qVG3v5yFmR8vd9wMwwEiT+mJYw+GeyQs6nI2F
	 aWzERCjqanxOA==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Subject: [PATCH 18/19] dt-bindings: pci: rockchip,rk3399-pcie-ep: Add ep-gpios property
Date: Fri, 29 Mar 2024 18:09:44 +0900
Message-ID: <20240329090945.1097609-19-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240329090945.1097609-1-dlemoal@kernel.org>
References: <20240329090945.1097609-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_021016_110901_619EFA93 
X-CRM114-Status: UNSURE (   7.23  )
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

Describe the `ep-gpios` property which is used to map the PERST input
signal for endpoint mode.

Signed-off-by: Wilfred Mallawa <wilfred.mallawa@wdc.com>
Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 .../devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml       | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
index 6b62f6f58efe..b8a5b567a9af 100644
--- a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
@@ -30,6 +30,9 @@ properties:
     maximum: 32
     default: 32
 
+  ep-gpios:
+    description: Input GPIO configured for the PERST signal.
+
 required:
   - rockchip,max-outbound-regions
 
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
