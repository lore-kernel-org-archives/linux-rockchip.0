Return-Path: <SRS0=76ry=KN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68E07C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 16:57:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E3AB7611BD
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 16:57:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E3AB7611BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4L8KTi+VP+GqGdU/iuO2vYJEQIxLr+r9tbgEDxz7OLg=; b=bhEPMdEp9dVfmI4fR3+6ABBnE9
	9IkLti4jhsknLeS8WEuqCEmXlccPeMI+cpvyrkG62S/dPSAzRdyp+4ieBXbY9Y+CLmcfOU51n+Kpx
	caDYrk+Iw4SEPTtjlpqtFqbjwUiBubMKeTWRRAGzP5jxk19VHu2/I47A4TIOxtMxTBFjPlZ+s31TJ
	4Ux+RW68GAfKRk1WtTHW8nH7dJKqCZ2yXyJL4ZFomgrlMMvkgCGVLsvXmiatFQ4jdobt3bQzNr/zJ
	H2rfo+eMP040P6GY6DV/BeULWLryJnJtW/2XYVGKJiaezaiFxMAlGTxADFwpd7ALyboyhIv3F8w2A
	5bomFjbA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj32D-001P8t-S3; Tue, 18 May 2021 16:57:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj31u-001P2y-0c; Tue, 18 May 2021 16:57:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=DvNLypjfM9sD8GKMWXOboYCU4E+Qp3/OvFniS6apdzw=; b=lc+RAsJXuq6vGNVp+tLTkI9ZDF
 FczaVEY9FEe8PBInVF8JxUZgPbmtMfrS1op8K25eAJXKScngdLnJmtJG5WuRKBv9SGNL7XQkuTk6w
 4W401DvPMV+0D2O/QFv/HsqjdwaadsXj/2DwwQR/5xMYkzp9Dnj2nnMW7ZNQVU+9QDmaN0wUO5Ejb
 m0rxHYNPipf9CupcZ+44zR9Vd7TDsWPlWmJZ/lc2cM8IHn7a/E1Cu12qzGSuXNxa/1FR5JLcJkBFS
 tjBDz9+NPcOEHQIYqgNSWX7svlWDtxGtjmA205TU3tV7wAfv/v3KM7MtNfVKIV8sdjaIxxeM2XTKY
 lSz5izHg==;
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj31r-00Ep1U-Ed; Tue, 18 May 2021 16:57:12 +0000
Received: by mail-ej1-x632.google.com with SMTP id n2so15656311ejy.7;
 Tue, 18 May 2021 09:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DvNLypjfM9sD8GKMWXOboYCU4E+Qp3/OvFniS6apdzw=;
 b=CS2WEw9XafuQfNap4nHYlnZ7RfKYQbgqhXxUJfjnVJt4KcRqlFEOPE6XZ/Equ33tPz
 PGNKCPLJwlTc8Z+U92IYORstjt4xATQdAbbzIiYdeoJ63NBDlvu5Av1+NRFfC3zfGwuC
 fINEbFPFsnRnlk+rEApSsukd7DtQ5RYLKSxZx34KjbqRXccGhFjVgHlwktJGLhrsnmSA
 setMiXnrEPXylTOPd1vOpuXCJ07SAWe3oeVWgKdDh+9I+UTdeih/RajaXTP+jHfiYR9+
 qmTUMIGWMi3TvEGZq+FI84IrbemrGmP+nGX5JARBSnezDH19c2yHnOJi2ZoQfhumocHS
 Y6Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DvNLypjfM9sD8GKMWXOboYCU4E+Qp3/OvFniS6apdzw=;
 b=cel10NxCbZ2snqUokMQqa8yS+cC3CHRLmZ9JnDh2AuF6QpM7BejvXEtzVpgPDkOXbg
 cKWKWnaRYPveKbZsephPUjeK/t+xGA1yuVvsaerMa4VSQZUQOYVc+urc/dqZ0PIX13uz
 XcTW+eIwBYzrMIzCNdXrNo/NT32serlmvLjxzpwKdtqrLD+3DWoHuIq2LTz11Vk7jcFf
 eCUILfmFsAj5eJzRp71M+EbWp2SZ8BTfZEB4y7D7SM1RNi5COKWs5hONxICXLDvBTtI1
 45IutWqY0oWyIBNp+qL3tcbjRnNoptxkFNfD0ts2tnHOwGTm5tt7f0czGfkNS7zPvAJ2
 BowQ==
X-Gm-Message-State: AOAM5301WELfFKPWVYGEkGH/obGfGzCOIBIX55T7HQkBZ0Vd761wwx+y
 LNDpM7OsysBApGv2lvvpPit48UHSzt0=
X-Google-Smtp-Source: ABdhPJxtLBuRUVWJbVozy8aPZxKBVlLapGT+U169YFlwxZTcKYp1Fo37AV4yJ2yK4dRmarDP8rTT+g==
X-Received: by 2002:a17:906:17cc:: with SMTP id
 u12mr6912213eje.170.1621357029653; 
 Tue, 18 May 2021 09:57:09 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id n2sm13525676edi.32.2021.05.18.09.57.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 May 2021 09:57:09 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/4] dt-bindings: phy: rename phy nodename in
 phy-rockchip-inno-usb2.yaml
Date: Tue, 18 May 2021 18:56:56 +0200
Message-Id: <20210518165658.12764-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210518165658.12764-1-jbx6244@gmail.com>
References: <20210518165658.12764-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_095711_510858_28E1C039 
X-CRM114-Status: GOOD (  12.33  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The pattern: "^(|usb-|usb2-|usb3-|pci-|pcie-|sata-)phy(@[0-9a-f,]+)*$"
in phy-provider.yaml has required "#phy-cells" for phy nodes.
The "phy-cells" in rockchip-inno-usb2 nodes are located in subnodes.
Rename the nodename to pattern "usb2phy@[0-9a-f]+$" to prevent
notifications. Remove unneeded "#phy-cells" from parent node.
Also sort example.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml       | 11 +++--------
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml       |  4 ++--
 2 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
index fb29ad807..fbe860fff 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
@@ -29,9 +29,6 @@ properties:
   "#clock-cells":
     const: 0
 
-  "#phy-cells":
-    const: 0
-
   clocks:
     maxItems: 1
 
@@ -119,7 +116,6 @@ required:
   - reg
   - clock-output-names
   - "#clock-cells"
-  - "#phy-cells"
   - host-port
   - otg-port
 
@@ -130,26 +126,25 @@ examples:
     #include <dt-bindings/clock/rk3399-cru.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/interrupt-controller/irq.h>
-    u2phy0: usb2-phy@e450 {
+    u2phy0: usb2phy@e450 {
       compatible = "rockchip,rk3399-usb2phy";
       reg = <0xe450 0x10>;
       clocks = <&cru SCLK_USB2PHY0_REF>;
       clock-names = "phyclk";
       clock-output-names = "clk_usbphy0_480m";
       #clock-cells = <0>;
-      #phy-cells = <0>;
 
       u2phy0_host: host-port {
-        #phy-cells = <0>;
         interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
         interrupt-names = "linestate";
+        #phy-cells = <0>;
       };
 
       u2phy0_otg: otg-port {
-        #phy-cells = <0>;
         interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
                      <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
                      <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
         interrupt-names = "otg-bvalid", "otg-id", "linestate";
+        #phy-cells = <0>;
       };
     };
diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 84bdaf88d..43c288708 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -184,7 +184,7 @@ allOf:
         - "#size-cells"
 
       patternProperties:
-        "usb2-phy@[0-9a-f]+$":
+        "usb2phy@[0-9a-f]+$":
           type: object
 
           $ref: "/schemas/phy/phy-rockchip-inno-usb2.yaml#"
@@ -233,7 +233,7 @@ examples:
         #phy-cells = <0>;
       };
 
-      u2phy0: usb2-phy@e450 {
+      u2phy0: usb2phy@e450 {
         compatible = "rockchip,rk3399-usb2phy";
         reg = <0xe450 0x10>;
         clocks = <&cru SCLK_USB2PHY0_REF>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
