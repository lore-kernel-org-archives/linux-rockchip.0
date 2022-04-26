Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58F68C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 13:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDNA3LtjclfwA1eDoJqAoZaHtbDfK30QtqTdKZvc7ac=; b=h8Ma4wdfWNP099
	yg6kQFSyfqI+ByYjCLcK/XhJY4xn+ftTDc8FUtHSk0V433UJ+eXaguq+DOfMG8YUwizfls0TX6fox
	LXuCQQT/UKCRYTVoNMqWn8Jlhdo+wrR3kYfsbh7yhJuQVtyYYiyvqytYgS388M1vrN1I5bi8ciR/F
	DnzBpmX6bti2eMM95rUzZOzVtYfCrI3tKvxc4dzEW0NavMiIngNI4Ue9txOg2CKN0OkYb68AvwtK7
	Ws7Tw1I40q14GOjujTKS+3EXZvfOv7b1PNeftJne+ETrE7R1/jp9ro5XFuleUG7fTfi9+HN02yYta
	D5DO0K5t/vkak0xfO/RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njLDg-00EaXd-8R; Tue, 26 Apr 2022 13:27:08 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njL8o-00EXot-LQ; Tue, 26 Apr 2022 13:22:09 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout4.routing.net (Postfix) with ESMTP id BEF5B1012BA;
 Tue, 26 Apr 2022 13:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650979323;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=B/o+aZmZqbDN+W8wwcgvmIIxF46ejgzm+QWN1Vica30=;
 b=X9XN2KY38MKbzCm2GypSgq3PNZqDZrxRaS/HrAOGJ1/rfzGaeBwOXeUPVpOXNXbnWqf14O
 v9i4YcENuV1YPLdJJ9+M1MhGpGXXRMxBK1IAqqW0xGGNg0r0k9UlL2MYrTbTX6xja4mz6r
 iBV+PP1K0eU9SQeaMddRc/xDD1CSHOw=
Received: from localhost.localdomain (fttx-pool-80.245.77.37.bambit.de
 [80.245.77.37])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id C010B4059D;
 Tue, 26 Apr 2022 13:22:02 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [RFC/RFT v2 09/11] dt-bindings: pci: add lane-map to rockchip PCIe
 binding
Date: Tue, 26 Apr 2022 15:21:37 +0200
Message-Id: <20220426132139.26761-10-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220426132139.26761-1-linux@fw-web.de>
References: <20220426132139.26761-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: c57ef808-9a8e-4e63-a04d-41225c07add3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_062206_933393_31E3E9A4 
X-CRM114-Status: GOOD (  13.65  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Create new property for (rockchip) PCIe controller binding to
define lane mapping.

Rockchip driver uses this for bifurcation (true/false) based
on lanes should be splitted across controllers or not.

On rk3568 there are 2 PCIe Controllers which share 2 PCIe lanes.

pcie3x1: pcie@fe270000 //lane1 when using 1+1
pcie3x2: pcie@fe280000 //lane0 when using 1+1

This ends up in one Controller (pcie3x1) uses lane-map = <0 1>; and
the other lane-map = <1 0>; (pcie3x2)

This means there are 2 lanes (count of numbers), one (by position)
is mapped to the first controller, the other one is used on the other
controller.

In rockchip PCIe driver the lane-map is simply converted to the
bifurcation bool instead of direct mapping a specific lane to a
controller.

There is not yet any slot mapping below one controller.
But for binding this may be possible like:

lane-map = <1 2 3 3 4 4 4 4>;
            | | | ...
        lane0 | |
          lane1 |
            lane2

on a 8-lane phy.

This can map lane0 to port1 (number used at this position),
lane1 to port2, lanes 2+3 to port 3 and lanes 4,5,6,7 to port 4.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
v2:
- new patch
---
 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index a992970e8b85..998b20b3a9dc 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -52,6 +52,8 @@ properties:
       - const: pclk
       - const: aux
 
+  lane-map: true
+
   msi-map: true
 
   num-lanes: true
@@ -74,8 +76,6 @@ properties:
   reset-names:
     const: pipe
 
-  bifurcation: true
-
   vpcie3v3-supply: true
 
 required:
@@ -115,6 +115,7 @@ examples:
                           "aclk_dbi", "pclk",
                           "aux";
             device_type = "pci";
+            lane-map = <0 1>;
             linux,pci-domain = <2>;
             max-link-speed = <2>;
             msi-map = <0x2000 &its 0x2000 0x1000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
