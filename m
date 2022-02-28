Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 873CDC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 14:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CkuuDBUzvv7vB9nQPYOljXwT3edw8yNU+bnoNShSesc=; b=yuGWuqALv/IzMU
	6BZi01N3DTlT10s1b6EROYaket/DrRjBWoWqbpd006VFmAIE7Nc6FERXCIEyRWH31cHZJg3ACrq1b
	wWoDaUgVu7vf1+JpVnC52Seczzq9WixllpDI7iHjmfQM5E5Dy4saPYuHudUaxaYcrIXTdPcoze8yb
	8in689l8MjZ9QNxHA/DYTnKs02wnpjxPLJcJKjrepGl7U/BUu2kCjS30+1S3KDvUwh1B7gnTAJ3Rt
	q5LxNmp7Ym6LAX6zU3TkBY+c3whQVg5vf6YOunkHfvrwoc6G0SJ8O1Xi3f0dCrxQ9NzHRK5b6Q3+g
	qVUFPXiAHM7XmEeJWjYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOgZv-00CjnB-5w; Mon, 28 Feb 2022 14:00:43 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOgWS-00CihK-QH; Mon, 28 Feb 2022 13:57:11 +0000
Received: by mail-qk1-x731.google.com with SMTP id bm39so10366314qkb.0;
 Mon, 28 Feb 2022 05:57:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8Q8rfAYWCPuCFZWUbMwuXl1w3LX/ZhxGllWhtuSRFCM=;
 b=XmcfNyiUVum9tKD+wGJadl/B39imKzB11lORzzu1JLqYGEzZHtwIIKRS/L/robEZIk
 Hedvm0IK0YoyRKLbu88OSmwQyvvkhqHFQ52EnVbNS4dY0cfI6CYRZ1YABxWCL3nCD/gU
 c5BWQYU1MU3GBWP432jcEGTsaEToAC+QVQ+z/38DO4fdvdZfGBsgZ/XXbk86VXoZD7Ni
 fCwxZPJvetv+wltkdg5bgcjM1w7Tah5ncE36d6cI0YggqJJ6mton4CwaviQFkuHl/dYQ
 oQfGERMn/wWUAHXVn06CiMEQuEpPwGSEb1ymvAUrMKAmrZFwDNdJsH+ddIKPqQ0lcqs8
 J9vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8Q8rfAYWCPuCFZWUbMwuXl1w3LX/ZhxGllWhtuSRFCM=;
 b=G4MCo4mta3bEdr3zPyB2TQwO5BZZVf2RN58ZpUESUoaDJpqACH0liGeXyo2NYwnBT9
 ugWxaSqnMSc/nueBFEwcddsw7dpuI86CY9m14Ir/h00osAH6vcUWeDA08KiqgR7WnUql
 qol2b1+2tCzqsS9qDMBkMnkag8ZaIP7aSJLvbrwC44D1jAhiEN+kVAjbSABtyfBT9XY5
 cbaYIezHMAeLx0khwNyZNJnNT3mDBWrDEhgr71RIWwCADK/CwcFhTO2oB06H/s8ONlv8
 I99mtawgvbGRsXplNsWy+ksGpwyNXqmZXFm1HQ0oZHaisH1LAsoHaLpFnc/tpSm94BX5
 Bvnw==
X-Gm-Message-State: AOAM531GxFWW89OC6I5pswl2Lq+LVVV/Av7lZ7qg6wnJi1oHODBPSAAP
 wPMKkfvhgQvyvMkzhsiN8NGqm/Z3QHgC+A==
X-Google-Smtp-Source: ABdhPJyTz57PuiLNW+lonT9pwGs9q/VaYGWFFnMuoqKJha0FF8v+OMU7hAd+MXRLdyY3f+G2SdDyPQ==
X-Received: by 2002:a05:620a:2404:b0:508:b101:6f97 with SMTP id
 d4-20020a05620a240400b00508b1016f97mr2618410qkn.369.1646056627394; 
 Mon, 28 Feb 2022 05:57:07 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a05620a088800b00648bfd00a41sm4932244qka.80.2022.02.28.05.57.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 05:57:07 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 michael.riesch@wolfvision.net, jbx6244@gmail.com,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Felipe Balbi <balbi@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH v4 0/8]  enable usb support on rk356x
Date: Mon, 28 Feb 2022 08:56:51 -0500
Message-Id: <20220228135700.1089526-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_055708_888350_57B1CE19 
X-CRM114-Status: GOOD (  15.50  )
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
Patch 3 adds the SoC specific binding.
Patch 4 adds support to the grf driver to set the rk3566 otg clock
source.
Patch 5 is a downstream patch ported forward to shut down the usb3 clock
when the controller is operating in usb2 mode.
Patch 6 adds the dwc3 nodes to the rk356x device tree includes.
Patch 7 enables the dwc3 nodes on the Quartz64 Model A.
Patch 8 enables the dwc3 nodes on the rk3568-evb.

Note, there are functional changes from previous versions.

Please review and apply.

Very Respectfully,
Peter Geis

Changelog:
v4:
- Add SoC specific binding, fall back to core.
 
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

Michael Riesch (2):
  dt-bindings: usb: add rk3568 compatible to rockchip, dwc3
  arm64: dts: rockchip: add usb3 support to rk3568-evb1-v10

Peter Geis (5):
  dt-bindings: soc: grf: fix rk3568 usb definitions
  dt-bindings: soc: grf: add rk3566-pipe-grf compatible
  soc: rockchip: set dwc3 clock for rk3566
  arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
  arm64: dts: rockchip: enable dwc3 on quartz64-a

 .../devicetree/bindings/soc/rockchip/grf.yaml |  5 +-
 .../bindings/usb/rockchip,dwc3.yaml           |  2 +
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 37 +++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3566.dtsi      | 11 +++++
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 46 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  9 ++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 35 +++++++++++++-
 drivers/soc/rockchip/grf.c                    | 17 +++++++
 drivers/usb/dwc3/core.c                       |  5 ++
 drivers/usb/dwc3/core.h                       |  1 +
 10 files changed, 165 insertions(+), 3 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
