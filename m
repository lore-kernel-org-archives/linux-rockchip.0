Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32F30C0015E
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jul 2023 17:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cvhI963I8sBpZm27OXHRkgZC7QQTQz7HkySsnrnvAxw=; b=nIEhevClvliVXI
	r1tSWydu3zjjzZ7Z5jstVB1bJNQlk6Ini4rWWR1hqL3nbvq9qiXkyaOxF3EWnu4exUs0yQDzkg3sC
	x0cmQjGhcVOLtuQ3BlcZxuTThRQcdISdfVK+nJlvk4kbLuhTh0HD6OYyvblbFMUrPh2vCft8M16h3
	yDeix7W5zvNb6pMDMShBIcgnoNCzTxtdMQ8Ll5oCk8vXYGdOio09kJnVIMu3dR01alFet8eONPC5u
	+YXj06qd4D3ZRBk/FOWeyFOU2pR1HB6PDiqn81ck51v8FZZYJ3GDaIM/DbUVm238mjDDPozQjK4J7
	3fxDHi6TlAJODo/3czAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMXaB-00Bnua-0E;
	Thu, 20 Jul 2023 17:36:55 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMXa6-00BnrY-2S;
	Thu, 20 Jul 2023 17:36:52 +0000
Received: from jupiter.universe (dyndsl-091-248-215-153.ewe-ip-backbone.de [91.248.215.153])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D9EA56607089;
	Thu, 20 Jul 2023 18:36:46 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689874607;
	bh=PYnYFsjDgSWv1EwJcbzjMpywQhwMfYgpRkS0GFAn/0Y=;
	h=From:To:Cc:Subject:Date:From;
	b=MAgE9R+MY8Ybrr//WKrqO3ktijxYYYw6ulVQMFSqIhQc7ncs0b4Z3HYL9xBCM8K44
	 imZUvIQSoy5WeqCmNBUQPmyKupE1JmrCanZYpO2C7I6hdrBLWewxPel1UUoVAbd40J
	 u6cHDF9QkhNcHXYcZ3LaoXx250PhcPtlxNrDhIiOEgewg58OaYbpNtpUd09GnJM1JM
	 Rs8yFqlPawCMX3+oevwnvrh3m5dY2CnzlzicdtEiB9wcr2y/F/mtk1nxE9AgUzDRJK
	 2FzgChdy54VLkQGTngzQg7KwD7REVSpGI0cFPoiIoxeLF3dVJRif9Rc8bsL1dqDJh8
	 O4NHYdk7xFeGQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id E3E18480E63; Thu, 20 Jul 2023 19:36:44 +0200 (CEST)
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
Subject: [PATCH v2 0/3] RK3588 USB3 host controller support
Date: Thu, 20 Jul 2023 19:36:40 +0200
Message-Id: <20230720173643.69553-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230720_103650_982738_26E0894E 
X-CRM114-Status: GOOD (  14.30  )
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

 .../bindings/usb/rockchip,dwc3.yaml           | 11 ++++++--
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 21 +++++++++++++++
 drivers/usb/dwc3/core.c                       | 26 +++++++++++++++++++
 drivers/usb/dwc3/core.h                       |  4 +++
 4 files changed, 60 insertions(+), 2 deletions(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
