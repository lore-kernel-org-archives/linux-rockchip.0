Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E45ECD6112
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 17:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EXlxWO7JC5xcWbyTKPxvnfUGWZsrlL6k92xoNexIRLk=; b=JzbOYNs6J9V0eO
	6ujEe7NDvYZ6w4ODmiz2u7U5DCrMuefuAqu9VhCM21pC1aMLaSz+iJS7Xs6PBbpvc2af6tfnCkpbY
	xMOqmyxhI86mDm4rwbkCUDpuxa9VZsbPWLHhjfECSV5CFM83hGPz2+POgSz1bCIhUt7RUn713vBJZ
	XwG1RRs71HiFnkjolhC/fwJnyoc0/ejZ9mBx9JB9Ax4AVdJB+8OWG/6hCAcbzUVvZW8O15ZLSK5Ev
	50ELSHtNnDfit8YMvkEWqI8Igz/s5vjGpH9HYv4eH52UQ0WSMQugtEt2i4jmkSDF6d5nsOoQGXGlf
	Q2SsSyAhymjCo/mETuog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qptwx-00BHFI-0M;
	Mon, 09 Oct 2023 17:21:47 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qptwo-00BH7g-1v;
	Mon, 09 Oct 2023 17:21:42 +0000
Received: from jupiter.universe (dyndsl-091-248-211-168.ewe-ip-backbone.de [91.248.211.168])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5B2B0660576C;
	Mon,  9 Oct 2023 18:21:33 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696872093;
	bh=S3Q3wy3S+Hlg0M67reAdf08JdB1Ll1t/5ni1XvqOXYE=;
	h=From:To:Cc:Subject:Date:From;
	b=D6SkAtHwOoXNxqzVn/7sMVWmnmHRbRZ/USejYVfZ264H+7yfrFBHrElQIqgTSPTdp
	 Z8D6WuFZQT3XyF98CQ+juDjeRGHbtSOIQODxWR6UyVHZy1bmNwV+Ar1WXByeFMPWPu
	 bGran28Kk15KiGDQniX6OSdyc6xUh4wPp9cDtTrDAcpX+E5KzsrWZQ2jfB5DZznM8Z
	 aIr9iRFhCbVO3UMx45ie0gbMxbcgPAYqR0i7yfwYPJRkJKpTVOMYDcA7hctVQpSGu7
	 iWoCf1WvkVLtd1HzNDmuw2Sn6CUEyOrEXq7/9oV1+aHPoQfQnKKBtRT6yEwoLVm9cc
	 iekRuMlXC/NNA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1ADE84800CB; Mon,  9 Oct 2023 19:21:31 +0200 (CEST)
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
Subject: [PATCH v3 0/3] RK3588 USB3 host controller support
Date: Mon,  9 Oct 2023 19:20:08 +0200
Message-ID: <20231009172129.43568-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_102138_787966_7C74133F 
X-CRM114-Status: GOOD (  14.96  )
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

 .../bindings/usb/rockchip,dwc3.yaml           | 66 +++++++++++++++++--
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 21 ++++++
 drivers/usb/dwc3/core.c                       | 26 ++++++++
 drivers/usb/dwc3/core.h                       |  4 ++
 4 files changed, 112 insertions(+), 5 deletions(-)

-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
