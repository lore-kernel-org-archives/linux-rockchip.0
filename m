Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C70CC43217
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 15:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N71/jFKceyGmpfCB98jZ4yhBmIVrNdrDll25R3WnjVs=; b=F2vlT/PnWwthV2
	/MOftSAUOFtQAMNM6cP9+cbnWMORt9DWge3XMAU+h/7Hzcy3Mcy0uM2O4yydekWPH2UZ4Twh98che
	L73byMIHekZO4oDkNMYDqMQlpzg9P/+F/3HW7YXCYCsjd8TZkIi8tEZcpSeH5rWyXJRtJC7NIS/5p
	pSCk4Kza1u1szZ89QqlImukujxSBkzowl/jqgyv1szbctP0wA4RRpbh8Ot8PlAsD+NxKQc/F/0KXV
	2AP6o9uZofW3ieslfqbvIHyD+xD7l6msbF/f31tZ0h8nbHtzvkvo5PdyOLB+Lx3bTKdzdyaSOPmmq
	4i2HIcSxug30IAC5ZI4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP4NI-00HI2J-HC; Tue, 01 Mar 2022 15:25:16 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP4Ms-00HHkt-Bx; Tue, 01 Mar 2022 15:24:52 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout2.routing.net (Postfix) with ESMTP id 5B8445FD47;
 Tue,  1 Mar 2022 15:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1646148288;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=O4mDNDnNrc2l6l2KQYpl88DRF0oS2RB4UmRhs1zBpaA=;
 b=HprEB0730UH3XpwJHwa8vjTm1DZo+5lXhkA2Eb9BgsafDAOCIzFCOytOvgdxmNiLibaQnF
 FMgYDRzyjmbCcwIshFpAZ1w3/SeKCmaWO4RE37zSSNssdkDM0gKH5Oz+QN3P6Y+maJow7P
 A/iep4XYWCT4I8SG3tV4KG5vWfnZTAs=
Received: from localhost.localdomain (fttx-pool-80.245.77.190.bambit.de
 [80.245.77.190])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 47D3C10011C;
 Tue,  1 Mar 2022 15:24:47 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: devicetree@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v4 4/5] dt-bindings: Add rk3568-dwc3-ahci compatible
Date: Tue,  1 Mar 2022 16:24:20 +0100
Message-Id: <20220301152421.57281-5-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220301152421.57281-1-linux@fw-web.de>
References: <20220301152421.57281-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 6258418b-4d96-4beb-b093-528b24be8dfe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_072450_631349_E483FEBF 
X-CRM114-Status: UNSURE (   8.05  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Add SoC specific compatible for rk3568 ahci controller

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
v4: new Patch
 Documentation/devicetree/bindings/ata/ahci-platform.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.yaml b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
index ea1af283d125..7111cf448f45 100644
--- a/Documentation/devicetree/bindings/ata/ahci-platform.yaml
+++ b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
@@ -29,6 +29,10 @@ properties:
           - marvell,armada-8k-ahci
           - marvell,berlin2q-ahci
         - const: generic-ahci
+      - items:
+        - enum:
+          - rockchip,rk3568-dwc-ahci
+        - const: snps,dwc-ahci
       - enum:
         - brcm,iproc-ahci
         - cavium,octeon-7130-ahci
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
