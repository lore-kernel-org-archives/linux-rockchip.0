Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2DB2D37E57
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 15:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTVL3Zr0kcqBsLyIDd85w0jWrkJlcp1E35yFJvpZmR0=; b=SxBUga9+0d3GX/
	wmZaTujhwBmK8tRJWCab54Ll4Eo8v1BXvsUQdEosv32e3QHh2tW8haVnvgS5CBzJpdEJzIZTZdxsq
	SmOcJlMvID5TkY02bVfsFYybA9NQvR3exW1dkLruABkxpWHtfSd+GEdftau8YpH+h8CdVht0Nnm1D
	yH2oJOsbPIKozTQqAskXqq9jsM+SxVW39vPXHJyYVifv7nfkLvTrZhpOXzC5u55GWfpaGPRwv/9dr
	Ua2eG5QZjv5z3FOEYe1xgyrrB8rHIZUPkp3YAWOC1HoXZvt3tIhS1DH5JbELF1qulTkdXjU0KBbZV
	wkw719jDAhmuaOCm0RxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg32R-00000009l9z-1Unv;
	Wed, 14 Jan 2026 15:44:03 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg32P-00000009l96-0t3J;
	Wed, 14 Jan 2026 15:44:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5EFD760128;
	Wed, 14 Jan 2026 15:44:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3155BC16AAE;
	Wed, 14 Jan 2026 15:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768405440;
	bh=ReVz6cPlRsm4lE4yj8qgNYX22f2C5+7rwEPvVzG9M+Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t6H+7e2dbK9gQEvEZJKxd76IWSbrl5frhABmypwBkBSe9/hSV1JA+4/TRUsjzkl5w
	 XQEZ1EISjXhn47N72nETB4OFNxb7Lsio8Sz0v77iL/NIBXmw4NRPzMMKcBkmee+gzp
	 UuJZakX/7QiK0Jto7I52nmYYQUgT7XroBKqdcNCmSVRUM56w1rTDGIm3d9tNZ/wdan
	 Ds5w84/WQgFGuxoEYkU0ORjWDlKOBID7SYhI6+PAvnT0xOG+wxCIOtA9r7h0AnNA8+
	 PkMGMTv8WY0Tgb7nY7IsVGFeDpSht3jygHKnLmdBhkyM5alXbV4JdzK270X3LyXATw
	 vM8Uz3eOiZcVA==
Date: Wed, 14 Jan 2026 16:43:53 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 0/5] Add calibration for Synopsys PCIe PHY and Controller
Message-ID: <aWe5s5mqFt26lRGL@ryzen>
References: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com>
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

On Wed, Dec 24, 2025 at 03:10:05PM +0800, Shawn Lin wrote:
> 
> Currently, when pcie-dw-rockchip uses the Synopsys PHY, it relies on
> the phy_init() callback of the phy-rockchip-snps-pcie3 driver to
> perform calibration. This is incorrect because the controller is
> still held in reset at that time, preventing the PHY from accurately
> reflecting the actual PLL lock and calibration status.

Hello Shawn,

I can see that you move the calibration code from .phy_init() to
.phy_calibrate().

And I understandthat the controller is still held in reset.

I understand that the the PHY calibration is supposed to be done
when the controller is not held in reset, and that alone is
enough to warrant a fix.

The Synopsys Gen3 PHY is used in e.g. Rock5b, and link training
currently works fine with this PHY, so what is the actual
implications of performing the PHY calibration when the controller
is held in reset?

Will it somehow it improve signal integrity?


Kind regards,
Niklas

> 
> To fix this, this series:
> 1. Calls phy_calibrate() in the pcie-dw-rockchip driver (if supported)
>    after the controller is out of reset, ensuring the PHY can
>    properly synchronize with the controller state.
> 2. Adds the necessary calibration support in the Synopsys PHY driver
>    to implement this callback.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
