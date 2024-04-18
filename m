Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67FAAC04FFF
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 21:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dgE8xmv2Rb/k6EHq795DcuhSqvNGQ3f4UGFIos65NfQ=; b=P5VDY99CvSLF+r
	A42vAEFDPp+n7FMXGAgvVGW8RB70PnVJAL/bryfXt9jJb44b2J/c4Fey105o4CZyJ22No8jcBVyIj
	C0KCSHKj8Hn5S/0ci4blnmQTKnHVMXEOxBTuRkBnMbQXM1WNOiWPNFKAj4Xjq6PZdmp0SyGj9mzWt
	UwchsE9sFlYDW1uLa+OIjmJmPTQOBs/fih3RxWGEuIkGxK/l9GKZKYROL9iLMysB5kWlyLrobUUTh
	PBRPppI7rqM7JtEYXog6YTjGsNfkjAP/y0UdwFgd1p8rYIflLQGQme9LDVxCINCFPiq3OxWDHB+Le
	kJEwlluuL+KhlS3hsQ+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxYv4-00000003iIH-2MVD;
	Thu, 18 Apr 2024 21:03:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxYuv-00000003iCN-0pjR;
	Thu, 18 Apr 2024 21:03:40 +0000
Received: from i5e861917.versanet.de ([94.134.25.23] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rxYus-0002jJ-GS; Thu, 18 Apr 2024 23:03:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@theobroma-systems.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Add support for the dual-role dwc3 controllers on rk3588-tiger
Date: Thu, 18 Apr 2024 23:03:30 +0200
Message-Id: <20240418210332.2394871-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_140337_329711_8A27975E 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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

A comment fix and then the addition of the nodes for the dwc3 controllers
using the newly merged usbdp phys.

Heiko Stuebner (2):
  arm64: dts: rockchip: fix comment for upper usb3 port
  arm64: dts: rockchip: add dual-role usb3 hosts to rk3588 Tiger-Haikou

 .../boot/dts/rockchip/rk3588-tiger-haikou.dts | 60 ++++++++++++++++++-
 .../arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 15 +++++
 2 files changed, 74 insertions(+), 1 deletion(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
