Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFE78C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 18:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfQDXFA29k1WGwyt1vxGp5PP4y5oPBpFC6w1fVwM+MA=; b=2jvsJUnlwMOWd1
	gPFLYwqmW60ORzq8uYWevo4FV6uOAf9fuMXYfuuKXhZt2aJ4896KG60QPKxF2h51ENIkPYnfQJW0L
	V08u2DUZ0ufQ7D8Pt8wK3ogKnmeRawhnWce+ha3M8+U9mtW+57XCy9BLdtfByJoEb8en2iG9u8cMr
	7pBwTWtU25t2jPs0TMA/jVP+Rd9X+J0YJMQREa0bCKcEpGchByy2H1fk+NC3U1ZXu2Tnzbdy4PsUK
	8dsAI/WEg+yp3JlUpajwF/DnVaHUxMHKj2Nfd5nlxglLFdIBb+z6u4Hf9srfiqz/xI64oE1DPqYf9
	xjG2AT4ysPMSpam+18TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOOHf-009wd9-Bt; Sun, 27 Feb 2022 18:28:39 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOOHT-009wXv-Q4; Sun, 27 Feb 2022 18:28:29 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout3.routing.net (Postfix) with ESMTP id 055AB604DF;
 Sun, 27 Feb 2022 18:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1645986502;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oIQHQqWpYDTR34+UZ2EQU8OCgFjoZwuBhLuDbXdN8Pw=;
 b=NWQ6DYLTPInxte0uI9CJeESL+8IeAVbmDBvKvNpDqpewD3fJO8kj0Mbl+jzfMwovDc5hdz
 DTo8yONJT88/IDSfnPyuGtnPp2RQb1OTsuElCixo3IRIA2HMmkFFc+fTlbbkNpcRn5uLjz
 2I1mA53Je4Ozv81vfMb3zgE8o+g3Nd0=
Received: from localhost.localdomain (fttx-pool-80.245.76.205.bambit.de
 [80.245.76.205])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 546444054D;
 Sun, 27 Feb 2022 18:28:21 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: "devicetree @ vger . kernel . org Damien Le Moal"
 <damien.lemoal@opensource.wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>
Subject: [PATCH v3 2/3] dt-bindings: Add power-domains property to
 ahci-platform
Date: Sun, 27 Feb 2022 19:27:59 +0100
Message-Id: <20220227182800.275572-3-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220227182800.275572-1-linux@fw-web.de>
References: <20220227182800.275572-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: f4cced9d-11f3-4d4c-a033-595f9377fcc2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_102828_054724_8D012EE4 
X-CRM114-Status: UNSURE (   8.33  )
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
changes in v3:
  - new patch
---
 Documentation/devicetree/bindings/ata/ahci-platform.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.yaml b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
index cc246b312c59..cc3710fe4fd4 100644
--- a/Documentation/devicetree/bindings/ata/ahci-platform.yaml
+++ b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
@@ -67,6 +67,9 @@ properties:
       some embedded SoCs.
     minItems: 1
 
+  power-domains:
+    maxItems: 1
+
   resets:
     minItems: 1
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
