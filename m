Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19986C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 18:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VBld0k7Y3I//n6xYwio3s4gn9KsgmKHNd3+S7KTu3FA=; b=F/m0sq+GkI7gko
	N5dUoTt08crEUj7mhV/XdrxBhwxYrf1PPGkITjW2K3NIDBrnLMmeCIGhNdMDaaPIhmp0U9IOPb8on
	I7Wk9ILPs7NaCXkYfW3G0QElIUZktKgHnF/kCkVmT0NKqhjOnycv8fZjZ/uLzRvEttjufNXVnpn6o
	WX5vgW4uk3IlKOj+QFikHQLx5RCp6EKhIo2JU6bARP2c81EqqSJwdNFdAsngi/t6kE02vvfOojU9j
	eKMTnS47gzosc9EBIlV//4cb6UnSv/LVEAvKEuo8hMmSJIIZ+g7yKttz9/hUdC+yP45K1tOBkJOw0
	QmvnOwPZXEasfVFodz3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO211-008N9s-Uy; Sat, 26 Feb 2022 18:41:59 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO20y-008N7g-Kk; Sat, 26 Feb 2022 18:41:58 +0000
Received: by mail-qt1-x830.google.com with SMTP id bt3so5511448qtb.0;
 Sat, 26 Feb 2022 10:41:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=u0citrcoCzIs3IvogW91FdAVSRvwdAd+hgl6yrJCnog=;
 b=bYjmei/DsFjSIPX2KcChKNdSIy4gwCC5i9cOEdIuvqY5agdeAsPI3g3/v9jpOnrY2X
 EZkJY61m+zDEw6Si1gnjWj3tmJxelhGBAdTN8DDb838E/HRw1ETLWM1TeNmashu3sO03
 VtV+UbwQffo7at91YrbttQYxix9i0lCV1B94MVAqH1CQyrGV4+paKxp7yZMDB6APEJEj
 YmNf1GQSWxDQy+gvVMJaCsHwxAq/JSBDyciw4hzHoml6sVUAlpPohp1MY9cWXX2eE3H9
 oIDpUvt17Iqs4vlxSrgMxZWxgdE5bTOEiE0kdId0yS9zQroIiUxuhRfyFdQzvGfo/WTG
 tqkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=u0citrcoCzIs3IvogW91FdAVSRvwdAd+hgl6yrJCnog=;
 b=DwDg44ZC2493/QffHdM2VTHPJkoCP8jqhmQbHmdlcQlkg4BpyHjpV0CbunQy/QscO4
 yUHB+cKOIyBYtmBklVMkQe+joy8ImtwCTbDZ1XfTBQ73a9gnK4NgqdZUU7NJiyMaFliY
 3IwoocnkipcUxhIuttz5dOTap7NoG6pTybnXB89AzuHHfIQ4TjU//p3opGlXQCexiVNh
 PvJLJ3qIHT83a204hNN05hSwtrcPodW7TEnmhHv0P05VMXFQ0mty8T5hBE0kk3A4so1R
 W+sq2Iscx5dJa0hIx/aAcd5N9PywosmwreYdrQCopS987ku9uDkKaA5bQVC44KoF/D4/
 1O9g==
X-Gm-Message-State: AOAM530RKGK6pCHUzK9s/fge0MEHAZR8YJVZQ2bgOhSCuiQo9BX6USDC
 TXEsYWoOnRGilScX/vnggadYYLxFERc6mg==
X-Google-Smtp-Source: ABdhPJyrCcHvaOeTvdpiFgXQoRiQBFvqkzvzacG7mNvNeZVD/h9fI04PIt92bSpBy+kbOyPOJ4jYHw==
X-Received: by 2002:a05:622a:14d4:b0:2de:735:68 with SMTP id
 u20-20020a05622a14d400b002de07350068mr11381215qtx.45.1645900914593; 
 Sat, 26 Feb 2022 10:41:54 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 p68-20020a378d47000000b006491d2d1450sm2891983qkd.10.2022.02.26.10.41.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Feb 2022 10:41:54 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 michael.riesch@wolfvision.net, Peter Geis <pgwipeout@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Felipe Balbi <balbi@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH v2 00/11] enable usb support on rk356x
Date: Sat, 26 Feb 2022 13:41:36 -0500
Message-Id: <20220226184147.769964-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_104156_701468_1063EBF6 
X-CRM114-Status: GOOD (  15.24  )
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
Patches 2 and 3 add the dt bindings for the grf changes necessary for
this series.
Patch 4 adds support to the grf driver to set the rk3566 otg clock
source.
Patch 5 is a downstream patch ported forward to shut down the usb3 clock
when the controller is operating in usb2 mode.
Patches 6, 7, and 8 clean up the dwc3-of-simple driver, allow the use of
of-match-data, and add the compatible for the rk3568.
Patch 9 adds the dwc3 nodes to the rk356x device tree includes.
Patch 10 enables the dwc3 nodes on the Quartz64 Model A.
Patch 11 enables the dwc3 nodes on the rk3568-evb.

Please review and apply.

Very Respectfully,
Peter Geis

Changelog:
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

Peter Geis (9):
  dt-bindings: soc: grf: fix rk3568 usb definitions
  dt-bindings: soc: grf: add rk3566-pipe-grf compatible
  dt-bindings: usb: dwc3: add description for rk3568
  soc: rockchip: set dwc3 clock for rk3566
  usb: dwc3: reorder dwc-of-simple compatibles
  usb: dwc3: convert dwc3-of-simple to use match-data
  usb: dwc3: add rk3568 dwc3 support
  arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
  arm64: dts: rockchip: enable dwc3 on quartz64-a

 .../devicetree/bindings/soc/rockchip/grf.yaml |  5 +-
 .../bindings/usb/rockchip,dwc3.yaml           |  2 +
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 37 +++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3566.dtsi      | 12 +++++
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 46 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  9 ++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 45 +++++++++++++++++-
 drivers/soc/rockchip/grf.c                    | 17 +++++++
 drivers/usb/dwc3/core.c                       |  5 ++
 drivers/usb/dwc3/core.h                       |  1 +
 drivers/usb/dwc3/dwc3-of-simple.c             | 43 +++++++++++++----
 11 files changed, 210 insertions(+), 12 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
