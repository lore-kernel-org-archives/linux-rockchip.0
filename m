Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6200DC43461
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 10:27:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 28E3D61396
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 10:27:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 28E3D61396
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CCIjCqI1OWQhds/ro0u14VYVnXqGiUw84hphlQGQ9Nk=; b=GyIkjuiLYr4bP4SsLje/kqqip
	4qIFgj14bGzZeRmcFo+W3/DqCDpddmKXS3ThuFnDsr2ZvBYe2xwuIj6jzTbpNeBkkWQSYfc8QCCwu
	GH0aDrVq51QiG4lQm1jSWPBRPJdzdUQqKqKW4QPZxTcMKoY/ITkkcGOkYxeLq/SDoESLAqD5lYUSw
	2bN9X3q038rzvF0KlwIfIKup9v/zldHVL+4HCRV8adlhjTqHAJXXtqNIRI4tQCo4dANLyvKv+VCAQ
	tPpKCTStBgG6viru5OreOGqC4JxQFdUvshSSz9Yab0izyV9ojQ0CCaDJMQy8hXldXkBrHEJdeRvTu
	p6Zcls2/w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhV2F-007lHX-AM; Fri, 14 May 2021 10:27:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhV1p-007lAq-3O; Fri, 14 May 2021 10:26:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=XVapFX+fmbnoXDaUeYXjNy7j++Gi2XXWoM3wOIvGsKA=; b=YA4VHNrvO0KD0p9rumk8k8bnle
 AamlvCUNOG1u0lP18/eJJBc2ntOT6+G2LlcYvTVS/FKRCrLKtEqWVFDmtNKPxr3qTC0nynji6/JaJ
 i6ocZXgul6U7LdCllrt41anirG7uyGYOVErwZIqyOmYaga24aX13hsTN8vCbnzRMWBm1JVLf3nedc
 8/NRIAbmZvlnEoRuTs3+HLNNMWxecW1dCzd3KXDOM4nhRprMYYSCy4l15CFwUgCYeB4laoCPxRpmP
 XaQL1FvzfvcfeQVvqdspet/vJ5DSpzrWxhiwxvjp2eS5q7dK+DGD1DuXfjCzSzhyT4CcFQYbzrgdt
 u6sSPYLA==;
Received: from mail.manjaro.org ([2a01:4f8:150:448b::1])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhV1m-00BtfB-JP; Fri, 14 May 2021 10:26:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 8EE782225A0;
 Fri, 14 May 2021 12:26:40 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EU0bzOb9GlNG; Fri, 14 May 2021 12:26:37 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH 1/4] Documentation: bindings: phy: add compatible for RK3308
 USB phy
Date: Fri, 14 May 2021 12:27:31 +0200
Message-Id: <20210514102734.2091238-2-t.schramm@manjaro.org>
In-Reply-To: <20210514102734.2091238-1-t.schramm@manjaro.org>
References: <20210514102734.2091238-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_032642_810758_F51EAD01 
X-CRM114-Status: UNSURE (   7.62  )
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

The RK3308 features a different USB phy than other Rockchip SoCs. This
patch adds a compatible string for it.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
index 4ed569046daf..6547b829c27a 100644
--- a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
+++ b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
@@ -5,6 +5,7 @@ Required properties:
      "rockchip,rk3066a-usb-phy"
      "rockchip,rk3188-usb-phy"
      "rockchip,rk3288-usb-phy"
+     "rockchip,rk3308-usb-phy"
  - #address-cells: should be 1
  - #size-cells: should be 0
 
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
