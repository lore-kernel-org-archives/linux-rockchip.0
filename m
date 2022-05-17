Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1987C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 19:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iUZvC1b2CQfN7fOzpCcgn5tOYLzu//yV6UVNJxnnOoA=; b=Ez4YuX4EeiuBns
	YjslEkVuDEfkLcLZ5V4y0frmwWZ53yizWGukA9Xh3Q7SqeN732xhS72PILBmY0jjkQDV0buyjGSO8
	aC4wG6snC2K2DxzYO6IFPwHurzX7GG23L7fOst8D45u0dRVQ6u3xcR7NgiS1ezIFqnpArFW28Sguv
	qpJD/EhJAmrQ7je2XfCpMd+nmnTWYEceTY7oQnPhQkTIh1i1bH0SoTE9JP7ju4ekXsmy2/3Bihg/v
	n5ZysSm4GLXRpOUyei8AdoOnFTg7RLOFnZO/I6QPGgWy7XTM3GLUYfRMiUAOsuFNOKPGfcRGjMqMj
	UwI770id0ei1laaHeWXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr2zO-00FcpL-0r; Tue, 17 May 2022 19:36:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr2zL-00FcoC-RF; Tue, 17 May 2022 19:36:13 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1nr2zK-0004Ds-OZ; Tue, 17 May 2022 21:36:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 5.19 #2
Date: Tue, 17 May 2022 21:36:09 +0200
Message-ID: <4288609.taCxCBeP46@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_123611_926383_A18F3864 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
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

The following changes since commit bc405bb3eeee4b711830ab569e7f3811b92196ab:

  arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x (2022-05-11 06:09:55 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-dts64-2

for you to fetch changes up to 17c0c5b67353b26a46611cffffd80aadd7215cfa:

  arm64: rockchip: add clocks property to cru node rk3368 (2022-05-17 21:08:49 +0200)

----------------------------------------------------------------
General PCIe2x1 support for rk3568 and some more improvements for the
Pine64-Quartz-A (fan, bluetooth, sdr104 sdmmc, flash-controller, pcie)
as well as some fixes to conform to clock dt-bindings.

----------------------------------------------------------------
Johan Jonker (2):
      arm64: rockchip: add clocks property to cru node rk3308
      arm64: rockchip: add clocks property to cru node rk3368

Peter Geis (7):
      arm64: dts: rockchip: add clocks to rk356x cru
      arm64: dts: rockchip: rename Quartz64-A bluetooth gpios
      arm64: dts: rockchip: add Quartz64-A fan pinctrl
      arm64: dts: rockchip: enable sdr-104 for sdmmc on Quartz A
      arm64: dts: rockchip: enable sfc controller on Quartz64 Model A
      arm64: dts: rockchip: Add rk3568 PCIe2x1 controller
      arm64: dts: rockchip: Enable PCIe controller on quartz64-a

 arch/arm64/boot/dts/rockchip/rk3308.dtsi           |  5 +-
 arch/arm64/boot/dts/rockchip/rk3368.dtsi           |  2 +
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 63 +++++++++++++++++++++-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           | 52 ++++++++++++++++++
 4 files changed, 118 insertions(+), 4 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
