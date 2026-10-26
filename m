Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE131606A322
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 07:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FYIFlEU9;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=DQqF7jJ7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KSHlWeOpPd5QB7yTJp6rJquKvQQ4uiYYojIxtto+KuQ=; b=FYIFlEU9lePYTzoW3E2Ko6ITn6
	PmliZI7dxjQg1lkYkCJ0h2tJEIKYoRfjTf3y8uulBEjTeJhiG1v2eXiWILcNOgl0GJAOePSSCkSzk
	SBM7CCrtCdT1ndgt066++zpe2w9R1QumElYjXJKC4JuMCPSqMXzaarOISNnl0uWT3/atLR7Cpks/m
	A6blVcLMdWx/ei1gAm3mCpHJsQfuU2m6J379R3ByruEmOtmwzVmnjv/iCPb+3pss/YQgFyUOKktVN
	iZ2Z841kcAODupBQ+j9PAIgHYtX2W0YD2cQ6jWHu1e/NXWQWo6koav8CAwz9KGpg0fX3Feu7Cml+g
	aRPWR5Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLFJg-00000001qy3-3O8Z;
	Mon, 26 Oct 2026 07:40:24 +0000
Received: from mail-m10313119166.xmail.ntesmail.com ([103.131.191.66])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLFJd-00000001qw8-1G7e;
	Mon, 26 Oct 2026 07:40:23 +0000
Received: from localhost.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5257abbbc;
	Mon, 26 Oct 2026 15:40:16 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	devicetree@vger.kernel.org,
	Samuel Holland <samuel@sholland.org>,
	Coia Prant <coiaprant@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 1/2] dt-bindings: phy: rockchip,pcie3-phy: Document firmware-name
Date: Mon, 26 Oct 2026 15:40:02 +0800
Message-Id: <20261026074003.1169669-2-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20261026074003.1169669-1-shawn.lin@rock-chips.com>
References: <20261026074003.1169669-1-shawn.lin@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa1772726d903aakunmbf670e0d2f0045
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZSUtDVh9DQhlOGk1ISk8ZHVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=DQqF7jJ74tLw+j4JB3u/dwW1tIY1lR9x63ooGRCLNVhDNUGPbwa6gqJ2s9BltXmM9ScBXKYUKIx8ji/OXfCkNqzKjZYsJBHicJ2XwGxLYGIlyitW2F0MZdFpVNeXB2fNb3eNXW3kwWcu9wqGwaWDC9jaifw/pd9uJxiC2qIEPtY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=TZbUPCuy84nV2Kh77bXLhwqW03pLNsaaPfcXY1Y//TM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_004021_617904_4A63E708 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

RK3568 can load an updated PHY firmware into its internal SRAM. The
firmware file is named by the optional firmware-name property; when it
is not described the microcode already present in the PHY is used.

Document the property and add it to the RK3568 example.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---
Changes-in-v2:
- Add maxItems: 1 for firmware-name (Krzysztof)

 .../devicetree/bindings/phy/rockchip,pcie3-phy.yaml        | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
index d7de8b527c5c..554211d22077 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
@@ -67,6 +67,12 @@ properties:
       minimum: 0
       maximum: 1
 
+  firmware-name:
+    description:
+      Name of the PHY firmware loaded into the internal SRAM on RK3568.
+      If omitted, the firmware already present in the PHY is used.
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -113,4 +119,5 @@ examples:
       resets = <&cru SRST_PCIE30PHY>;
       reset-names = "phy";
       rockchip,phy-grf = <&pcie30_phy_grf>;
+      firmware-name = "rockchip/pcie3-t22-c8g2-1.6.3-202a-p7.fw";
     };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
