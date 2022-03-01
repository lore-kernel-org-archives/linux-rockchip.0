Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B827C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 15:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61wcKEn8Pas83XST9xMrazIjI39ydHIzilHzeERtmjs=; b=eWqT3Iq3RYNRcB
	Tq03fFUUXPGNunxTMUZZkig6oxuwPELaDyKJGZ8LmyIU2nU78TPhJVDpSAcJOaKLYoL1139jLMQB/
	7aEL3c3c5cAXxZyZTmFEXza6/kJSdwEth3kWPCM6WpS18NAXN3RM001U58LDX8H5xyrUuJ3ZMl7kj
	w9wOEP4UKE4tft0DmNkP1czNCyIT4Xb3qjoUpXc8yH2aW+F8Nlq6okio4YAowBT3BLmAaNgB6OPn8
	2Fw67ok6JfqxfomF8gxespcfYdYhlIjyKTIwyc5pluvo4/R5v1fo4jj7qgKftw98TAPBR4ZsPTw5z
	4RE9aWSHwk0bjlo5q5pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP4O0-00HIbJ-5a; Tue, 01 Mar 2022 15:26:00 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP4Mt-00HHkM-3L; Tue, 01 Mar 2022 15:24:53 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout4.routing.net (Postfix) with ESMTP id 60D62100832;
 Tue,  1 Mar 2022 15:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1646148287;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dKqQ8SgsxrWyYtdT8SHp+XC0lZZ/+9zXUrm1XRwXlzw=;
 b=HEqyQLo3hFzqzMBelwU3OPdgzSO1evVJ2L3xWaLMHyPrM3MItoWTvyUfxOROTgWSF2arbg
 wtKDDi3ttj0zvf3Uyfwb0FzWLajM/AAPvWf9TOgILqVVWhH1X9BI3SMF3AemieYRckw/dF
 nGVv6Mc+0h0QKFBgaF0/BAj4LlD0jco=
Received: from localhost.localdomain (fttx-pool-80.245.77.190.bambit.de
 [80.245.77.190])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 4798C1007FF;
 Tue,  1 Mar 2022 15:24:46 +0000 (UTC)
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
Subject: [PATCH v4 3/5] dt-bindings: Add power-domains property to
 ahci-platform
Date: Tue,  1 Mar 2022 16:24:19 +0100
Message-Id: <20220301152421.57281-4-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220301152421.57281-1-linux@fw-web.de>
References: <20220301152421.57281-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: a39d56b7-7d33-4a76-8317-54d0db3fad8c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_072451_339780_4692D5A8 
X-CRM114-Status: UNSURE (   8.94  )
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
---
changes in v4: none
changes in v3:
  - new patch
---
 Documentation/devicetree/bindings/ata/ahci-platform.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.yaml b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
index cf67ddfc6afb..ea1af283d125 100644
--- a/Documentation/devicetree/bindings/ata/ahci-platform.yaml
+++ b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
@@ -89,6 +89,9 @@ properties:
       some embedded SoCs.
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
   reg-names:
     maxItems: 1
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
