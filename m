Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40D5DC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 15:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d7PtPn6a4PSYKQp41wNft68Z485VCZbhQgAEO3WMMBo=; b=e5ALueidZ+BdsT
	M5fS1ZMBdFkL/kgw8RGIgcmHRDWt+rGzIytDrpJJoVcULify5xrjg4Hee0/zYXLTBCSdAXlMuX9Or
	o9y+2CO4wxXCh+ENBUraK5AavJ4CJOkc9p/p3aEHqR7fuEX/9VatC0vB/MSUPTgW6MJS4WFfIF7Tq
	jmGfJ6uZPFeyRJ2B0HY0TdgZSlJgau7ja9zbNBnh0ceeeYh+qVvD1NvWfETpX+bST9VlQpkid54No
	2Azc8TpbaAm/Cn6d1rDKqg+jEaPuiBXZTcESYPZ7K27RMAMIj4XXBtbOvY/zdc/LrwrUWpn2nQ7HX
	6S05MrP46VDukvliCkRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOLV9-009ZC0-GI; Sun, 27 Feb 2022 15:30:23 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOLV6-009ZAe-7c; Sun, 27 Feb 2022 15:30:21 +0000
Received: by mail-qt1-x82b.google.com with SMTP id c4so6946755qtx.1;
 Sun, 27 Feb 2022 07:30:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/TEGCkRqpaHfUe0Va3lineYBUjZGOmcm0IcjSbaRtdA=;
 b=KiM3Xnw7SOE+OtXgZRFN18B4TcD4Tfdvn/cB+wEvZsnQa+qA1bqfDK1LKA6pRECGYF
 2OiYFso3H6YtcjfP1EW4umvIb4UOIgjc6vTILTVCbQMe9yjGiOaQUN2TOoRCHsNi7BtJ
 fTPlWAR+hW7dkl0maPKNZtDOUk8Nj9zMU4HK6q0QHDnBo4VF3JBotvOsTORnjRJ7OXX1
 vdKb0KrtMM/xqVeQDKdrq9ETngR3mdTgBqL/WkWdzE5DPSw/jplTmcy/K28LcH1N/oFf
 SIs5oVY5FVCP4xVjxrODW189/Eu4pbOztaksIwtrvNOqLBl11WI+xrK3sJM55oqksTYh
 X92g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/TEGCkRqpaHfUe0Va3lineYBUjZGOmcm0IcjSbaRtdA=;
 b=vTvgR+i/xvX/GEbgr8rSJT3H2H4qtfsfFBBCbixR8xq4c853U2rbB6pM5Afedb3Ljd
 hxMuzQCEpQh2JgXnfmjZ73vTFBJeAqLcJBoEEX+f3abHVbSnpHBBG9pymjbOGsRMOm7+
 Bsd1xWec4lL+EiQn+GCDCmrZe2FkFwsAXLKX846h/s5k0Yocz+OagxLyifMADbAs1l/z
 K8VSHYMi1WB035Ea4HZZlRnpMHHAnehDfp1QUZsChQ7OgwDeODF/AoTtxlNHy7bVN/td
 t8V1mVScb1Spj6R5nka+UQF89V/ZE4nApksaVxOxccH0msuD0lLLijUj0M2rCFZSwLYS
 HVJw==
X-Gm-Message-State: AOAM533s3wHjSrmGTDifKjACVD+Plr8W7N2jl3L3T3Nxdr+jp6/kmIWM
 JwtaFBo6sNpQyCVq3QR1YNb8lYfiWlFBZw==
X-Google-Smtp-Source: ABdhPJxdSkPSXhT6LalNn4z7oCximUdTIqvXNTTKjd9ZvCBIH3GNHkKOHSp3xJC+M2fqvDzLlKYc7Q==
X-Received: by 2002:a05:622a:1a81:b0:2ce:7959:d9a2 with SMTP id
 s1-20020a05622a1a8100b002ce7959d9a2mr13293685qtc.135.1645975818820; 
 Sun, 27 Feb 2022 07:30:18 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 s10-20020a05620a080a00b0062ce6f3f5d7sm3845767qks.16.2022.02.27.07.30.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 07:30:18 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 michael.riesch@wolfvision.net, jbx6244@gmail.com,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Felipe Balbi <balbi@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH v3 0/7] enable usb support on rk356x
Date: Sun, 27 Feb 2022 10:30:09 -0500
Message-Id: <20220227153016.950473-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_073020_311437_85C4D286 
X-CRM114-Status: GOOD (  15.37  )
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

Good Morning,

This is my patch series that I have maintained out of tree until the
combophy driver landed.

Patch 1 fixes the grf dt binding from the combophy merge.
Patch 2 adds the dt bindings for the grf changes necessary.
Patch 3 adds support to the grf driver to set the rk3566 otg clock
source.
Patch 4 is a downstream patch ported forward to shut down the usb3 clock
when the controller is operating in usb2 mode.
Patch 5 adds the dwc3 nodes to the rk356x device tree includes.
Patch 6 enables the dwc3 nodes on the Quartz64 Model A.
Patch 7 enables the dwc3 nodes on the rk3568-evb.

Note, there are functional changes from previous versions.

Please review and apply.

Very Respectfully,
Peter Geis

Changelog:
v3:
- Drop the dwc-of-simple method in favor of using dwc core.
- Drop all quirks except snps,dis_u2_susphy_quirk, which is necessary to
  prevent device detection failures in some states.
- Drop the reset-names.

v2:
- Add a dt-bindings fix for grf.yaml
- Unify the reset names.
- Constrain the force usb2 clock dwc3 patch to only supported variants of
the ip.
- Change dwc3-of-simple to support of-match-data.
- Drop the PCLK-PIPE clk.
- Rename the usb nodes to be more friendly.
- Add the rk3568-evb enable patch.


Bin Yang (1):
  usb: dwc3: core: do not use 3.0 clock when operating in 2.0 mode

Michael Riesch (1):
  arm64: dts: rockchip: add usb3 support to rk3568-evb1-v10

Peter Geis (5):
  dt-bindings: soc: grf: fix rk3568 usb definitions
  dt-bindings: soc: grf: add rk3566-pipe-grf compatible
  soc: rockchip: set dwc3 clock for rk3566
  arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
  arm64: dts: rockchip: enable dwc3 on quartz64-a

 .../devicetree/bindings/soc/rockchip/grf.yaml |  5 +-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 37 +++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3566.dtsi      | 11 +++++
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 46 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  9 ++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 35 +++++++++++++-
 drivers/soc/rockchip/grf.c                    | 17 +++++++
 drivers/usb/dwc3/core.c                       |  5 ++
 drivers/usb/dwc3/core.h                       |  1 +
 9 files changed, 163 insertions(+), 3 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
