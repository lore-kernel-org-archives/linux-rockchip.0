Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1668C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 14:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ibKdQ/OuH2qDy0fPMlOCpi8C9fe4u7EosiXV8myjMYA=; b=Hcd8WaVeZG3p8z
	bGEImEI3HaJg1nX7nJAD65jBdjFDp2Gw6moQXMTAw28e0+H9Jts2AOLhfKTWLLx0ceHcc+x762wVD
	dCfqfAsx+R64m6gpo211dyVPznoF6qjFR7Fgw29IolP5PKLfBaINqizQMkOOYYfImY5EOWGhpJ1xn
	IJkfbfJYW5Jxn2HOAI6k/jN+c7JtlP5z1F6M8z9/8HgERYPPr1gqakovhhyBhyjgr9BOcud18Vz1H
	wUWjZMBtURkWb5SrNim8AQTG9u4j73t4Z7gKN4o3E9go63/OBSEamizDDfSCljGPp9hlFXRh8ljbt
	VHKMACGGyAj8lohD7bhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNc1D-005UY9-SH; Fri, 25 Feb 2022 14:56:27 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNbzS-005Th8-Ip; Fri, 25 Feb 2022 14:54:43 +0000
Received: by mail-qt1-x829.google.com with SMTP id t28so2601738qtc.7;
 Fri, 25 Feb 2022 06:54:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=idLLe3Bg4LF24zcJUztJfruP9rviMV/MQdx2SKITisA=;
 b=X/9D7SgoZNXpKyJMlKxUSgUhPWyk42fgywEhpPUw2z/BV4DQZEhDIf/LdrFHvsmSJP
 3DwLYkYmGQZYgqOJpiQOgnIQIRt8S5SXRdSM9Fk7oPHfHLxlJ5JalSvU3YVN9X9lsco1
 lGyithf96rqpB0VcuXiWt4aH3n4ioClC4OqqD6H1UAKpI8kcaLs/DRNQiKQg7XG4WFgr
 2pxt8M06llBuAJ4aF1dhU5ogBgZpXetM1dYoYCETQivLFGcecF9b2NKloXC/xnDDh62S
 slVwXvL7vxjB/X8JISta8L5fFuWWa+P6e16MWYRj+MNnpiKpF2kf/jly10XrV/cLlE6b
 wUog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=idLLe3Bg4LF24zcJUztJfruP9rviMV/MQdx2SKITisA=;
 b=sULefV0zhu2HP4kkgl05HHtd8qJhzTFANSavz8si3d5kNMh0EXPgMAuCM977H7rg+9
 XC4KTdOAThMS4QBqN3pjuSXjnW5YwFQM8ZyhgK+0JR3vIYpXvdH+RdW/G2dbHuudR37u
 PD6z68DoXmScZWZmMjvarljLOF2LzWxZS126zPOXVdJKmGf03OfxctU5jeQMUMQTDgqW
 dAd1NvCtKKHtkHptjm7BsWuMw7j96PwSR6NNd4PgNTANXvQ8EiSJFQNGSfbl6quEhRmB
 PsZJNwaM2Vnj5IamzMqyroc7bXsR4bV3INhrVsmEBKOM89nHsd0okNsKHH2nUYSANcSi
 pu+A==
X-Gm-Message-State: AOAM5336uoC5//Q63/iGTBpUT0L+w8Zyqb+rDkKGRNxfJldS06/II4Cf
 VVpAfyIR0bPEFbOMfMuB7MI=
X-Google-Smtp-Source: ABdhPJx2IrHsuBjXNGhta/57OefPON6bBNrtjhLrpp1XeJqtxWR4g6LR+eX7Q7H2ZindKVCs0St8SA==
X-Received: by 2002:ac8:5e48:0:b0:2dd:aae2:9163 with SMTP id
 i8-20020ac85e48000000b002ddaae29163mr7054520qtx.95.1645800875662; 
 Fri, 25 Feb 2022 06:54:35 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 d202-20020a3768d3000000b005f18706845dsm1318292qkc.73.2022.02.25.06.54.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Feb 2022 06:54:35 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, Felipe Balbi <balbi@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH v1 0/8] enable usb support on rk356x
Date: Fri, 25 Feb 2022 09:54:23 -0500
Message-Id: <20220225145432.422130-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_065438_673876_ACD81E11 
X-CRM114-Status: GOOD (  15.56  )
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
combophy driver landed. Note, it is dependent on this series to function
(aside from the rk3566 dwc3-otg port, which will work currently).

This series is still dependent on Patch 4 of the combophy series, which
has yet to be accepted.

Patches 1 and 2 add the dt bindings for the grf changes necessary for
this series.
Patch 3 adds support to the grf driver to set the rk3566 otg clock
source.
Patch 4 is a downstream patch ported forward to shut down the usb3 clock
when the controller is operating in usb2 mode.
Patches 5 and 6 clean up the dwc3-of-simple driver and add the
compatible for the rk3568.
Patch 7 adds the dwc3 nodes to the rk356x device tree includes.
Patch 8 enables the dwc3 nodes on the Quartz64 Model A.

Please review and apply.

Very Respectfully,
Peter Geis

Bin Yang (1):
  usb: dwc3: core: do not use 3.0 clock when operating in 2.0 mode

Peter Geis (7):
  dt-bindings: soc: grf: add rk3566-pipe-grf compatible
  dt-bindings: usb: dwc3: add description for rk3568
  soc: rockchip: set dwc3 clock for rk3566
  usb: dwc3: reorder dwc-of-simple compatibles
  usb: dwc3: add rk3568 dwc3 support
  arm64: dts: rockchip: add the dwc3 usb3 nodes to rk356x
  arm64: dts: rockchip: enable the dwc3 nodes on quartz64-a

 .../devicetree/bindings/soc/rockchip/grf.yaml |  1 +
 .../bindings/usb/rockchip,dwc3.yaml           |  7 ++-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 37 +++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3566.dtsi      | 12 +++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  9 ++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 45 ++++++++++++++++++-
 drivers/soc/rockchip/grf.c                    | 17 +++++++
 drivers/usb/dwc3/core.c                       |  4 ++
 drivers/usb/dwc3/core.h                       |  1 +
 drivers/usb/dwc3/dwc3-of-simple.c             | 10 +++--
 10 files changed, 137 insertions(+), 6 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
