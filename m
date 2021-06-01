Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BFCC47093
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 16:48:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7E5DA613B6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 16:48:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7E5DA613B6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4UioobVsZNh79wyxkMvMaOZjzan4cSI4EsHdtlC6l5c=; b=iun565F5iK9fsx
	oOKIV1Scjcbh87zL49f2VsOHcAgSZ907QgZVPV36PFoHjoOaHFZc1FKfPxpK9cBDTCDczXGTX+Zvt
	mQtoK4hdlM/Zhb9r4rd32tBtffRCgjZEYBaLXYIXQNzK4VoPdXoPsmQjRJAUXScT6pNls7w75dTMd
	fD6DpZorPL8IPZFYRy422RipI05i2RvV5yve0+BFaFqidEI+HdTZTXNRSbIXCDKEd3szG9fj6Flm8
	tiVJOQJhAd7oaOaJ55RfPh577kASKlUGh2AGzBkoHSrGJfbYT4PaFdjPo0nULwk/Qi4UHSuj8jE1W
	ZEfO7dJR6Xx8tnWVTVug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo7Ys-00HXTa-GR; Tue, 01 Jun 2021 16:48:14 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo7Yp-00HXRM-Kv; Tue, 01 Jun 2021 16:48:12 +0000
Received: by mail-ej1-x631.google.com with SMTP id ci15so19393410ejc.10;
 Tue, 01 Jun 2021 09:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=SNDnPKo0IOSMNHVeB+T/BZBs16GMZgVZnpnc2H3yIYg=;
 b=N68+a2VU87EkEABzexLE5f7OkW4EqtgwbJV0D1To6RbaJLzWTDiAp+spn7lWrbWP4X
 PsCDt68DlfS5gtnpkakBylrDKX2DFxdkekc4M0mdo4eZPitxpkDi7vQYyzdn4VTiJGMH
 JKXu8c+iCRS+rBYXdc8Bd6F25Ww2jHNJaGIOdEpLHn2AWgle+RfIeM8ZMcOW0w2ukoTj
 Nv2G1gDxktgWdwtVbSuqfop9+IjZWMXWH8WCqqAWptG18Sl2UJtLl0HRBXUpTg9Lyzyl
 /l3ChCQoySftQfTcAK6UEDXY5BK2l9nP2plSrPuvFgufw/Ge5Gxm2PXEvTmudipQMOON
 d+8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=SNDnPKo0IOSMNHVeB+T/BZBs16GMZgVZnpnc2H3yIYg=;
 b=C+fB7GHb7Pok+CaUS8Xu5KXI1P/7MKYPrvkM/vFScnBEzlloJPSipxdVO8otaIh8O1
 9QFqbqFQ7wfwQf4xhiBwK23CxiDsqkKgGUFjWhUXotxf4+guu/udZ0MncZtzYgXr5zHF
 SN55lyCbjUqaFEq1UoVq7yEKozQpWPWn6jo7Iho2L2AXgIYHY3jt+V+Pgen/R+Lirc56
 jdKhdXZho+6+Rdb5aBGesYXxqvi6hnFwbJlBXR9cWuRAZIwASqW/wqYUY3bhH7XG5NU8
 qrCYES+gOc8yoNRGQTGZwIirWBUYgdIsW6kU2FSd7joqHDsAhbG02YVrRUlTLL5rasvv
 F/Tw==
X-Gm-Message-State: AOAM533kCwINURUTFLW44OmZh20bC0GOqo4h/q9zfsPfYN3XFApPEXdB
 LBhas99wujgJ9inLavOIjVg=
X-Google-Smtp-Source: ABdhPJwkbv3rOis31nesJnk9sxU1Yy9Oc2BBG/OHbvRnqxP27lKOLXrxLKvHkPDlKK+oO5IT6H7Pjg==
X-Received: by 2002:a17:906:495:: with SMTP id
 f21mr12030615eja.510.1622566089476; 
 Tue, 01 Jun 2021 09:48:09 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q18sm8327750edd.3.2021.06.01.09.48.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Jun 2021 09:48:08 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org, t.schramm@manjaro.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 0/5] convert grf.txt to YAML
Date: Tue,  1 Jun 2021 18:47:55 +0200
Message-Id: <20210601164800.7670-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_094811_710680_0FC180E8 
X-CRM114-Status: GOOD (  10.24  )
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

Changed V7:
  rebase
  add compatible for rk3308 USB grf
    add "rockchip,rk3308-usb2phy-grf" to "usb2phy@[0-9a-f]+$"
    patternProperties too
  add USB support to rk3308.dtsi
    restyle
    limit grf reg size
    change sub nodename
  remove applied patches

Changed V6:
  remove some #phy-cells in rockchip-usb-phy.yaml
  rename nodename for phy-rockchip-inno-usb2
  remove applied patches

Changed V5:
  changed compatibles for rk3066/rk3188
  add rockchip-usb-phy.yaml
  move and restyle grf nodes rk3066/rk3188
  remove applied patches

Changed V4:
  revert separate schemas for each 'if' subset
  add additionalProperties
  move properties to top level

Changed V3:
  remove select
  change unevaluatedProperties
  add separate schemas for each 'if' subset

Changed V2:
  add rockchip,rk3328-grf-gpio.yaml
  rename grf-gpio nodename

Johan Jonker (3):
  dt-bindings: phy: rename phy nodename in phy-rockchip-inno-usb2.yaml
  ARM: dts: rockchip: rename nodename for phy-rockchip-inno-usb2
  arm64: dts: rockchip: rename nodename for phy-rockchip-inno-usb2

Tobias Schramm (2):
  dt-bindings: soc: rockchip: grf: add compatible for RK3308 USB grf
  arm64: dts: rockchip: add USB support to rk3308.dtsi

 .../bindings/phy/phy-rockchip-inno-usb2.yaml       | 11 +---
 .../devicetree/bindings/soc/rockchip/grf.yaml      |  6 +-
 arch/arm/boot/dts/rk322x.dtsi                      |  4 +-
 arch/arm/boot/dts/rv1108.dtsi                      |  2 +-
 arch/arm64/boot/dts/rockchip/px30.dtsi             |  2 +-
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           | 74 +++++++++++++++++++++-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  4 +-
 8 files changed, 87 insertions(+), 18 deletions(-)

-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
