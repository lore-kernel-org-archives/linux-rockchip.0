Return-Path: <SRS0=Qwjt=NK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA4EC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 12:34:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 14ED760551
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 12:34:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 14ED760551
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDzDjzdvgPIw8ojjwH0yWhlh8zql2pZvsoiOBYmfj6A=; b=ZIwBEz5DnNKCPx
	V1PhHds20pCsqEu15hZcWeH70QXq3HTDLP1fbpKPih1rG/UTb9xDj7q2Bsd8edq2M9pwybuLXvFFT
	s6oFwksMzWrIAqPeJihVXKG/dIBSI72iReEdMmSGtfQnge9S80kdrf0vu+Vtl8KGmAkjjIYf1daIH
	cEarbf1eBhnCNF4qldyTaWpkRNDJNCbtt37r0YfD9mI4iXmSpyShkJUQ5FETFmIT8CouT7iVOBd+d
	p09qcL+ssdXBsPOpLZXISbFWQ50SyCYpQdxB1Bq6IN1hThtaxb4N0oB8VrmLoKNQ+lBO6WOcGSNaw
	FgNMQrDIY0+ynLIU5mWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGhFa-008JNJ-7C; Thu, 19 Aug 2021 12:34:26 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGhFK-008JKs-EC; Thu, 19 Aug 2021 12:34:17 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 17JCY1XE105117;
 Thu, 19 Aug 2021 07:34:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1629376441;
 bh=eQhxI1/W18BOVkUywuakjL/3whfh8fzgc4sdkMyr0SM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=GiwBdhh5DNALPAXJG9Qc/tVp1YIDDJvEXFPT6IQv92b9Vni/+KaFbZTZoIy4bzQH1
 lZLFlJlV5jAzQDzrb7KPf24foFU4EOtuWc08bMBCcxKTm/yJYzykFfCwxDPT167U6V
 MP6wLICM3Mxp6SdBi7PkJn/8lgJX+2aJgKGZSqus=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 17JCY1ir027013
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 19 Aug 2021 07:34:01 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 19
 Aug 2021 07:34:01 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 19 Aug 2021 07:34:01 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 17JCXlZP035715;
 Thu, 19 Aug 2021 07:33:55 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>, Rob Herring
 <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Tom Joseph
 <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel
 <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Shawn Lin
 <shawn.lin@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, <linux-pci@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-renesas-soc@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, Kishon Vijay Abraham I
 <kishon@ti.com>
Subject: [PATCH v9 1/8] dt-bindings: PCI: pci-ep: Add binding to specify
 virtual function
Date: Thu, 19 Aug 2021 18:03:36 +0530
Message-ID: <20210819123343.1951-2-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210819123343.1951-1-kishon@ti.com>
References: <20210819123343.1951-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_053410_605118_46C77F0F 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
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

Add binding to specify virtual function (associated with each physical
function) in endpoint mode.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/pci/pci-ep.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/pci-ep.yaml b/Documentation/devicetree/bindings/pci/pci-ep.yaml
index 7847bbcd4a03..ccec51ab5247 100644
--- a/Documentation/devicetree/bindings/pci/pci-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/pci-ep.yaml
@@ -23,6 +23,13 @@ properties:
     default: 1
     maximum: 255
 
+  max-virtual-functions:
+    description: Array representing the number of virtual functions corresponding to each physical
+      function
+    $ref: /schemas/types.yaml#/definitions/uint8-array
+    minItems: 1
+    maxItems: 255
+
   max-link-speed:
     $ref: /schemas/types.yaml#/definitions/uint32
     enum: [ 1, 2, 3, 4 ]
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
