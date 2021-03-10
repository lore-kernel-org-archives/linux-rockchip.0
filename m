Return-Path: <SRS0=2K8y=II=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E06EC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 16:10:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 98ED464EB3
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 16:10:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 98ED464EB3
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sDzDjzdvgPIw8ojjwH0yWhlh8zql2pZvsoiOBYmfj6A=; b=h0SCem6LoPYsoTPTZ3IiRjbcU
	erAvtm2qFdYIbt2xCSM39atF65YRYIbBO6vYbASUJ5WIFVmVL9xGty+6UdYiYvnodsuGRDbScITuw
	HjsVI00YeyXPOvwJmfM+fjEO2N5FODClXaSjKNJp2o3Epbp4Dpbzga70fIsB/qXL0RNw4mvh3KVhz
	kNQLIfOiH9Pw5lVUwmW4jNOLuXqkct1Q6Lfs9Gy/+llXnjYB4F/fgHEn2eNWlVo5Df/Eyl2DXDd8I
	sZfJvdd3S+WgNOVZSnKit7tiQVz9IuuaAeFn4FqYOCKUP87wP57q0pRjhwcm68XE0PwVvI67iwG6O
	q9UI1SWNQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lK1Py-007B64-BK; Wed, 10 Mar 2021 16:10:38 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lK1Pj-007B2v-5n; Wed, 10 Mar 2021 16:10:25 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12AGA6OX078381;
 Wed, 10 Mar 2021 10:10:06 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1615392606;
 bh=eQhxI1/W18BOVkUywuakjL/3whfh8fzgc4sdkMyr0SM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ancyOoAeMoTSdL6OiZYtTJRdFBX0yyOdK7/H5kCnujjLpA8douFdTTIUI0bVpwLH5
 zvClUAWz4upC+foxrKQy1B5t6EimvYA5WgeRJs6mPUnO7MdjOZY/69cuudFM0Ig4ol
 rLBUBMLjEFhigqYpaWDFMdqgc5CYnmlOagkeI61c=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12AGA6gq004621
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 10 Mar 2021 10:10:06 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 10
 Mar 2021 10:10:06 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 10 Mar 2021 10:10:06 -0600
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12AG9qks100440;
 Wed, 10 Mar 2021 10:09:59 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, Jonathan
 Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>, Arnd Bergmann
 <arnd@arndb.de>, Tom Joseph <tjoseph@cadence.com>, Jingoo Han
 <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda
 <yoshihiro.shimoda.uh@renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Nadeem Athani <nadeem@cadence.com>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-renesas-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v4 1/7] dt-bindings: PCI: pci-ep: Add binding to specify
 virtual function
Date: Wed, 10 Mar 2021 21:39:37 +0530
Message-ID: <20210310160943.7606-2-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210310160943.7606-1-kishon@ti.com>
References: <20210310160943.7606-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_161023_509584_BC19E3AF 
X-CRM114-Status: UNSURE (   8.53  )
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
