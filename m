Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6BFCC001DF
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Oct 2023 15:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=akwMvFJCwuMK/1oxOqJpgUKxWJm/bTD64+1NFNsNBDA=; b=ZfvodbWRf/oc51
	LnTXNKrtlbCmM6b1xL+ORM7BnePMLyXpdIGnqX1dhhsmynqDcOwQA5cSA1W6drqoWsUhqG0zMuYOf
	PSJPVNfNyz0fzJ/tR7NwMvGQmTF16/M8D6vGgidR2/0G97pnMe3DKzdoWsLfn4F9VwDbqSM4yZ8wd
	ZcVaKGRNV4UJTOcU1cS45jxV34PsEE1+8zy1VV1Kk+rgQqsxVoa5qmbxvP2oVBz4HGS4503LkWZMM
	GblRk1yq7hjSaLuN5F7sVBjIOiLNTkwCSUOP7z73Bhx4YUH7GBYQ5cgzvP1hjBt2Q4mZAxLA5IoYd
	T+rT/vCSEZiRVQafD+6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtqzU-002Y9D-1U;
	Fri, 20 Oct 2023 15:00:44 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtqzG-002Y0i-0g;
	Fri, 20 Oct 2023 15:00:31 +0000
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 560AC660734F;
	Fri, 20 Oct 2023 16:00:26 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697814026;
	bh=AwagkB7kAuEMuWURdRVLbW91QS2Ae+qwHCvRYF46Ugg=;
	h=From:To:Cc:Subject:Date:From;
	b=WEAoYkuL7lFNdZh+IcbZUMdC/mvevTa5/DlHI+shC14FlvvjJWH25iXG41QRmzmwO
	 iHLIecb8gLhTo2DROa/2q7asIJpqP3SEDjmMSpLyM8u+BPaL9/IFU59r62RrLVcJxg
	 zYa3YnYnKox2LKJdq/3qOZDgd7GmufDfuEq2dQn1IZlbVZXfE/RFe4nqVyYZ4iHlUH
	 KSDWeE1iX7ZVKDWUf/de8N+mBVF/dPRxu3eV1mkAS+ZUy6qSVMozMPFMids25Dk3Bc
	 eQ8XnClzDQ71KFXcjlcfwy59BfywoXMQAAiE4goQjvdDifZjVCnpBjIucyDUjYxa4I
	 trr2gTlkBC9nw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 04FD74800CB; Fri, 20 Oct 2023 17:00:24 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v4 0/3] RK3588 USB3 host controller support
Date: Fri, 20 Oct 2023 16:11:39 +0200
Message-ID: <20231020150022.48725-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_080030_510292_B26D07CE 
X-CRM114-Status: GOOD (  15.02  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Hi,

This adds RK3588 USB3 host controller support. The same DT binding
will be used for the two dual-role controllers, which are also DWC3
based, but using a different PHY and don't need the extra UTMI/PIPE
clocks.

The series has been tested with Radxa Rock 5B, which uses the controller
for the upper USB3 port. The patch enabling &combphy2_psu and &usbhost3_0
for this board will be send separately once this series has been merged.

Changes since PATCHv3:
 * https://lore.kernel.org/all/20231009172129.43568-1-sebastian.reichel@collabora.com/
 * update binding, simplifying "rockchip,rk3568-dwc3"
 * update binding, no need to specify min/max items for "rockchip,rk3588-dwc3"
 * add driver inline comment, that "utmi" and "pipe" are RK3588 specific

Changes since PATCHv2:
 * https://lore.kernel.org/all/20230720173643.69553-1-sebastian.reichel@collabora.com/
 * update binding, so that "utmi" and "pipe" clocks may only be used on RK3588;
   at the same time do not allow "grf_clk" for RK3568, which does not have a GRF
   clock for USB3.

Changes since PATCHv1:
 * https://lore.kernel.org/all/20230719174015.68153-1-sebastian.reichel@collabora.com/
 * use same compatible for USB3 host and drd controllers (Krzysztof Kozlowski)
 * do not update reset-names (Krzysztof Kozlowski)
   - note: I dropped reset-names property, since there is only one reset line
     anyways. Binding could stay the same, since the reset-names property is
     optional
 * use "ref_clk", "suspend_clk" and "bus_clk" instead of "ref", "suspend" and "bus",
   so that they are the same as in RK3568 (Krzysztof Kozlowski)
 * rename handle name to "usb_host2_xhci" (Michael Riesch)
 * use RK356x style DWC3 binding instead of DWC3399 style
   - required adding an extra patch, so that the DWC3 core supports enabling
     the UTMI/PIPE clocks

-- Sebastian

Sebastian Reichel (3):
  dt-bindings: usb: add rk3588 compatible to rockchip,dwc3
  usb: dwc3: add optional PHY interface clocks
  arm64: dts: rockchip: rk3588s: Add USB3 host controller

 .../bindings/usb/rockchip,dwc3.yaml           | 60 +++++++++++++++++--
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 21 +++++++
 drivers/usb/dwc3/core.c                       | 28 +++++++++
 drivers/usb/dwc3/core.h                       |  4 ++
 4 files changed, 108 insertions(+), 5 deletions(-)

-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
