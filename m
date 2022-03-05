Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A6B5C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Mar 2022 11:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mBAdbNUYhoZX1GQw94aKuklPgi6OEJy+HaBYHvxglgw=; b=fZzy0xY2Qyl3A2
	Q4+YAbWc5xZEL1dcKNUSyv90yVcS/TJsVarUS5bOmelHuaf7cm0RWlLFVCKR+rtANf7CBK/FmxSOp
	l02tx6zNMw43zIC9STKGJBZGv/rjnE4dVI7oIi1Ti/04jHGaADuu6KWVUkbc97mfis0Ge0Cv/PG6P
	yMitdAt1A+yZKHh7E+baVjWpJw31xfAmcZ/OAjE9GFme3ZBN4+cE0FVI8ExfKATWZ/pINMJuX8foO
	BoTKuqgwWfZ1NRho5Uif08XPDHdrCmrFdI4wzpMgSRJ8KQnoomt+U0iMH9ZIzGnhqXoAcKPPtaLCW
	BvKdO5LIoeRwHdouRORg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQSZu-00DFAo-3u; Sat, 05 Mar 2022 11:28:02 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQSYP-00DELZ-Lc; Sat, 05 Mar 2022 11:26:31 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout3.routing.net (Postfix) with ESMTP id AE1CB60564;
 Sat,  5 Mar 2022 11:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1646479583;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fAy+g86pSYjjn5it3aXzVtAlRS9cIWELtqRIuuhnMoM=;
 b=oaTL491z195TsUb55ZNq26DHCbxbtqD5d/1COKvJ+sVMdta7VNYKI/vAsDLgfBd5YDcBs/
 tr06evrij1izBklB2hixVD+b86JLcXh6TqR4duVnpXdo7ONadnVIVa4xC610mfz0mkxwrk
 qwCb+q4ZTsSAHve9h/YZp/27FcQCtCg=
Received: from localhost.localdomain (fttx-pool-217.61.157.101.bambit.de
 [217.61.157.101])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id BBE891007BC;
 Sat,  5 Mar 2022 11:26:22 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: devicetree@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v5 4/5] dt-bindings: ata: ahci-platform: Add rk3568-dwc3-ahci
 compatible
Date: Sat,  5 Mar 2022 12:26:06 +0100
Message-Id: <20220305112607.257734-5-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220305112607.257734-1-linux@fw-web.de>
References: <20220305112607.257734-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: bfb49fcd-9f41-417a-a608-f94191395798
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220305_032629_944752_1532F72B 
X-CRM114-Status: UNSURE (   7.87  )
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
 Documentation/devicetree/bindings/ata/ahci-platform.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.yaml b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
index 82be26ce4384..5766941305ef 100644
--- a/Documentation/devicetree/bindings/ata/ahci-platform.yaml
+++ b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
@@ -30,6 +30,10 @@ properties:
               - marvell,armada-8k-ahci
               - marvell,berlin2q-ahci
           - const: generic-ahci
+      - items:
+          - enum:
+              - rockchip,rk3568-dwc-ahci
+          - const: snps,dwc-ahci
       - enum:
           - cavium,octeon-7130-ahci
           - hisilicon,hisi-ahci
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
