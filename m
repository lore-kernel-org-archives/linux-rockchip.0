Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6DECCA1016
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Sep 2025 09:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jyl6Kcw1loJsOgypWMnzleGm/MnXyNmLeznRJJ89NDA=; b=JVYQcujIvFGBr2
	sOxxrPXlXgOFi2lToxu/p6TI4EoWVpucNSXBXiCxs49eGom7MjcHGxP6s7Y6QDIxDVguNHXHpa8vj
	c95bBwHgA0UDROAsEWMxfS+U1HTYbZ0AO/aDgzVfN/TZjD10O+IEawR/zFO1QcBh6VWapysy3NvsP
	OgIj1kqNoEqWeYbwuWs92zrdlAxJTBPNiNTJ6XhvgyvNDQTW43/bxDdEsI9BHrN+cYzQH9rqRWIb9
	43YkcMGcwiBgTnqiaPEiDY0Kban1FURIBW9CgN1DwBYult0DmryjzqiTkS4edtJs0lND/h3OifZQM
	hDYOyDD0GsrOT52cX72w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwdFm-0000000208i-0F4W;
	Thu, 11 Sep 2025 09:06:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwdFd-00000002045-1ylx;
	Thu, 11 Sep 2025 09:05:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=cej5DMxhg1NtNzRRvje5njCeicTXDAKaR1Lh4aeMCPE=; b=WJNoCw2W6vlFy/tjv+9eVO3xlO
	/cPnJ4wkK5Vc2DbkHJeZkrKRrF8BPry0QLn18fKzktbGuvQeNtXuHl7G3Vmx6hpUAbRp5oSRdXoU0
	Tc6IUTcdtbWFi7XkhGcxrPK2H8dyJ7JXscamDitlNPyVVN4fT6j5woGaB1QnIddpV+Hz3/hePpZYi
	OAtr8lLzJU/A9vHyTeMyG9uEDDyyfbm8gBCAN0Kwz80ThDRvGIw8+dYuVCEseAmecvIqPf9dLz+dk
	cXm2v7bd1K3cxM4u7+tkZMyNqpjZvNvPoONDQtVddk7g5PoS/bcERjuGoPCjNf6PL6xYbLWmIVEmn
	/FVkl2Tw==;
Received: from i53875b0e.versanet.de ([83.135.91.14] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uwdFb-00005b-JV; Thu, 11 Sep 2025 11:05:55 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: Fix network on rk3576 evb1 board
Date: Thu, 11 Sep 2025 11:05:44 +0200
Message-ID: <175758154013.610665.7420825533435349040.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250910-rk3576-evb-network-v1-1-68ed4df272a2@collabora.com>
References: <20250910-rk3576-evb-network-v1-1-68ed4df272a2@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_020557_508186_7EABCA8B 
X-CRM114-Status: GOOD (  12.14  )
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


On Wed, 10 Sep 2025 15:54:51 +0200, Sebastian Reichel wrote:
> The RK3576 EVB1 has a RTL8211F PHY for each GMAC interface with
> a dedicated reset line and the 25MHz clock provided by the SoC.
> The current description results in non-working Ethernet as the
> clocks are only enabled by the PHY driver, but probing the right
> PHY driver currently requires that the PHY ID register can be read
> for automatic identification.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix network on rk3576 evb1 board
      commit: 843367c7ed196bd0806c8776cba108aaf6923b82

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
