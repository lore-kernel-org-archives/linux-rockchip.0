Return-Path: <SRS0=76ry=KN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F39C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 16:57:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 289DC611CE
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 16:57:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 289DC611CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=c5b2ymPmfasvTn2BeJiu9haC7V3OiYkzOX6E4Jwk8uY=; b=leAH5BeZhxzVl4579oj/ruIK96
	oC29QYAzVWd/RvA9x3r2II6ifS70LIz4a65lG3Ar5CkCNtYXccDem6zeNf3ZRuiSmXKXMKJIksdQg
	fXOV0iIbz/PshN1AqyPEf900gMf7Gus1uPFI4s/EegqD+V7LqpLBANtgYzSySbq5ccmjRC2yhGrOK
	pa6XiPK0RnYiKs+8uYkhysk/JJfV9YZTeesUislRTD8F68j1O5N855iKR/WQSOxEuZ8gGyzzc+gA0
	zrPXyjYuuG/0CUrsOMM9PRNJA0NcyW4wqw1bYVxxaRhMGQDN9hjXGMWKDWWaUQ0OpWMi9+WY6L4rp
	tnos8LKw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj31v-001P3e-60; Tue, 18 May 2021 16:57:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj31r-001P2O-PG; Tue, 18 May 2021 16:57:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=7c6MsJBvMXq+ljj949Wf1mhFZUaYPm8nW/9/WPX5d+Q=; b=PYrHgvkqdikpEPnqUL8n5d/fgY
 9bjLn7lEsS022ns3GTxWjWAFODOj/BqiE6xEJuHGu6Dv2Q4SOUcGhoRqEaFx27x+BY6dmW1r4WGZh
 VKKeu7YZPkHDCWBPvvnhLZpa3SkxQNVTgeXD5X2YEAAeasNVhlavAtuEx/L/T5YA4TdrCm9oiAs3i
 /l5vIu/Lce3J0jfi5SyzrAOD3JzyUtH6Sk9ExIgwhtnDr2uX3N6M6JmA4Vb141qCxVGvCSUUaTnrG
 o+Qn0ms77H3E5lUT1aAr1jrOPJWKU64RAa/rE7GYlM5KLFFcEagtBjmFP2lIRQFRXZALWYiNKk4cn
 m8YomsyQ==;
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj31p-00Ep14-9p; Tue, 18 May 2021 16:57:10 +0000
Received: by mail-ej1-x62e.google.com with SMTP id k10so15654957ejj.8;
 Tue, 18 May 2021 09:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7c6MsJBvMXq+ljj949Wf1mhFZUaYPm8nW/9/WPX5d+Q=;
 b=DQeYJxmdnvtw99Mx2oS/EkzthC1fuk3XuorE6cDYm92HzfuV6KW1yPZfRXj5l5C4pT
 DqStW5wfTtxbh6rdnFto+lzfIoC0HhR98XrFr9UrKvO5Dt5H3LlSlKmswPpOm/3zcNHC
 3qQh5W9xmkYB5Nav4ldRdJC2EdFXJhYLwXRZUp57cQbXgXhO76wFxCzqBBwcBniGQDzW
 MiuZebInPy+cJcRCz3xcQYVnold1QOTbkVzSFh58SUVno+CZ/dHbN6ILpBVHFjj18i9y
 oEsTLEbW1npAwr2cwRiRSMiTDUxrGPjn8dDo+W9U0i5MW2HTTVam0JKQn1+A0xmdZbIH
 HFew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7c6MsJBvMXq+ljj949Wf1mhFZUaYPm8nW/9/WPX5d+Q=;
 b=KOVaKYSIIeqQcG3Ts/w58f88cqdA/BgO5TEYwER8/7TQm36aiOQsf3q1C7aYCeDZYc
 k5S/Y+/eC9dI/KvvDE+jtGNzOuvhOmGeoqAK/OXZtrsX+sYyZmxGBLBvpX6sVXbMf9el
 FqDNhlS3De0DhFR0B8ag8mx67GWCH8PdwZsI349oEtMXtLbrSrlhNUxcvII3ShERGjFf
 tp6ENXWns9LqleaBsH1tljV4jgz7nn2xYiw7Z+Z5gTPzzJPB4iBivbcbk7O6pJc4VIGf
 YQEMx8c8T6QljNIrefzTL5xC/BvhuBqtW0lWwXvGafQCp1TcoGV8saErpeQieQnAUgQA
 V7NA==
X-Gm-Message-State: AOAM530kUV/gJdYTVIK9ipxU5XS7v7x0i9ZVsu38EMRqz/++TJQqdo89
 jJ8xYSL1iieLax9PyUsua14=
X-Google-Smtp-Source: ABdhPJx826f98Egi0fzl54irC3mn/wDtedMWJGLyctK1eNcZdfToPVVZ+Z8YOx4D3QGT/VtfQveRMw==
X-Received: by 2002:a17:906:e0d5:: with SMTP id
 gl21mr7042755ejb.93.1621357026749; 
 Tue, 18 May 2021 09:57:06 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id n2sm13525676edi.32.2021.05.18.09.57.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 May 2021 09:57:06 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/4] convert grf.txt to YAML
Date: Tue, 18 May 2021 18:56:54 +0200
Message-Id: <20210518165658.12764-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_095709_359175_CFBB6E97 
X-CRM114-Status: GOOD (  10.99  )
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

Changed V6
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

Johan Jonker (4):
  dt-bindings: phy: convert rockchip-usb-phy.txt to YAML
  dt-bindings: phy: rename phy nodename in phy-rockchip-inno-usb2.yaml
  ARM: dts: rockchip: rename nodename for phy-rockchip-inno-usb2
  arm64: dts: rockchip: rename nodename for phy-rockchip-inno-usb2

 .../bindings/phy/phy-rockchip-inno-usb2.yaml       | 11 +--
 .../devicetree/bindings/phy/rockchip-usb-phy.txt   | 52 --------------
 .../devicetree/bindings/phy/rockchip-usb-phy.yaml  | 81 ++++++++++++++++++++++
 .../devicetree/bindings/soc/rockchip/grf.yaml      |  4 +-
 arch/arm/boot/dts/rk322x.dtsi                      |  4 +-
 arch/arm/boot/dts/rv1108.dtsi                      |  2 +-
 arch/arm64/boot/dts/rockchip/px30.dtsi             |  2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  4 +-
 9 files changed, 93 insertions(+), 69 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml

-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
