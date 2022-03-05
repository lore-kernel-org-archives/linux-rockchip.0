Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5038C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Mar 2022 11:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYUR8wH6S2Kqtrn+kK+v3AHINn1LXfO6Oiiw7xgnXZw=; b=Q2uXo5PuBFUXiG
	E0nFe2505l0KfRx2ma/LLeHr3gFIDMbWYGx8EUPPe5mLg2R36k511y51OyWOG08q7wGjtbiH0VU9e
	38ssZUj8jrEI0fFvHG8kBDLFx3TKsSpdD8usKmgXf1JCtY/7lxBLSzGiMiyj8v27xvZNRRV8c+6Eg
	ocxiIproEsfUWkH+0Fb5Y3QlMcGgASEVATLb23BS8qDkCKkxsIUSxwyt+TOC5yR2d/VD+6WBKuen3
	n6UztR5dVi+ese7IvkaFyCxaoGXbnPRmBgZHgfLUxN7OUv1yncvPTJagwVwVWDkFXHLWi3vNujXRO
	nLw4uE64Pp/x+osVdNEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQSZE-00DEjq-TE; Sat, 05 Mar 2022 11:27:20 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQSYN-00DEJg-5v; Sat, 05 Mar 2022 11:26:29 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout3.routing.net (Postfix) with ESMTP id D1E8460553;
 Sat,  5 Mar 2022 11:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1646479583;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LaZ9VVVTdUWuiSVF1cjUE3Er6qHX9/zyhLT+I9K+wUs=;
 b=U3R1TRNf7ZE+eG9ixAgIJA2sUh4d0Wdy9zlDlGSoJaw5z2en9wILJMX4PsouLxYZIEMI8E
 i2ltdtof3dg57wryKPiC0YxvEZe23EH7nOUwZAXarDMHcD9nDox2hDeAei67XxF5auQeYd
 Yl3/4OzacqGBw6Dmdww4Dbg6uazBZ8Y=
Received: from localhost.localdomain (fttx-pool-217.61.157.101.bambit.de
 [217.61.157.101])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id D2CBA10040E;
 Sat,  5 Mar 2022 11:26:21 +0000 (UTC)
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
Subject: [PATCH v5 3/5] dt-bindings: ata: ahci-platform: Add power-domains
 property
Date: Sat,  5 Mar 2022 12:26:05 +0100
Message-Id: <20220305112607.257734-4-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220305112607.257734-1-linux@fw-web.de>
References: <20220305112607.257734-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 088accf3-e553-47cb-a6f8-8e9ee91f3e9a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220305_032627_442613_7013009A 
X-CRM114-Status: UNSURE (   8.29  )
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

Some SoC using power-domains property so add it here

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
changes in v5: added reviewed by
changes in v4: none
changes in v3:
  - new patch
---
 Documentation/devicetree/bindings/ata/ahci-platform.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.yaml b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
index fae042539824..82be26ce4384 100644
--- a/Documentation/devicetree/bindings/ata/ahci-platform.yaml
+++ b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
@@ -89,6 +89,9 @@ properties:
       some embedded SoCs.
     maximum: 0x1
 
+  power-domains:
+    maxItems: 1
+
   resets:
     maxItems: 1
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
