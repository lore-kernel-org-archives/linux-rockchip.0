Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8521CC636C5
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Feb 2026 22:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4US/eEl3E03MaUeYK0f5JGws9wE9d1y6zTuiNUWU+c=; b=bNutS1YX4m9bBJ
	wdZW43MJqHwIFQr7Y+pbKCddAep+IxvXzm5LECNOQIutJaFxSQC6JPvNoFt8YvSWj6G3vrq2tq+X6
	IhhFXLSpB9/75kTztPLrI7UYg/c57Z9j/bTu71NwM9aXUEPsQBoZeh+DFtxZk8ry+53xhbqgCDRyH
	3i0ndzcs+1i8oo39uN9HH9wvze3Gh1JLeWrgmG9qc9psOXsxGRrp1/AQ1SyKUc5x4keif/mdHDWzv
	77CLY5WgIM/7tSR2ESlIs7ptCzuc1/heVj42uHZycqOrTg9tshid6YOTn9Q/x4FuoKDaqCJFQLqZD
	7XYgTCE8IrtgMNx+nw7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuIAq-0000000H1HD-2IWo;
	Sun, 22 Feb 2026 22:43:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuIAp-0000000H1G1-0Qts;
	Sun, 22 Feb 2026 22:43:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=WSMGllCz9tMfYswt3AUYSiavWgtrCi20va1xoKb1UWc=; b=bJve3SgpG+XbEd5mdkZzyDcNrx
	Z+AHBtHNkCIH+iwuIfvw8yOkAWJ86+wkY2WY+L/LAl64uPAcJgWIO7rYSDiEy2TOtw7D5npr7r31R
	EQQV7ehnTsjkRrESEh3E8ci5PC7EFo54DeifbQ0L2YT69IM/OJcnztqYaCUvTNOg0x+BM0ABHF8b+
	dyssUHUEzQGy66KDhDTig1Qlgj7z6wGLU32iPWtUQCFG5Kf1Dap6xlItt24p0TKhGye2WT6BB9xVL
	E+R8vor3/WOIA+lGadjFUbaTcR80+1rme6evXwe+NsS6Qw2alVAwLSXt17R5iH6SZr7LsCnTntuhQ
	vsusqBXQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	wming126@126.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Ming Wang <wangming5719@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix Bluetooth stability on LCKFB TaiShan Pi
Date: Sun, 22 Feb 2026 23:39:15 +0100
Message-ID: <177179992297.1861430.8124521533934492277.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260206090453.1041919-1-wming126@126.com>
References: <20260206090453.1041919-1-wming126@126.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260222_144335_141056_124FAC10 
X-CRM114-Status: GOOD (  10.31  )
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


On Fri, 06 Feb 2026 17:04:53 +0800, wming126@126.com wrote:
> The AP6212 WiFi/BT module on the LCKFB TaiShan Pi (RK3566) is prone to
> communication timeouts and reset failures (error -110) when operating at
> 3 Mbps.
> 
> This patch stabilizes the Bluetooth interface by:
> 1. Updating the compatible string to 'brcm,bcm43430a1-bt' to better reflect
>    the actual chip revision used in the AP6212 module.
> 2. Lowering the maximum UART baud rate from 3,000,000 to 1,500,000 bps.
>    Tests show that 1.5 Mbps is the reliable upper limit for this board's
>    UART configuration, eliminating the initialization timeouts.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix Bluetooth stability on LCKFB TaiShan Pi
      commit: c215b9681a1cae05e8d52b5b57ffde2f17fd3029

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
