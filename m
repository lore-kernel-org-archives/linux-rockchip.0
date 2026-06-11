Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 971DFCD98CE
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 15:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=441Xzqo+pGwn7cC/b3YV+wDE1NZ1pfyr4bdAos4Ra3I=; b=TyJUA2hIPtPBfv
	T4NDADoPIzFyLwFR9MYB5Emp2/+ug55LcUj3d3q5Jrhie33rBcio3H6S22U+vrlCgbjMaQPS6kiy2
	TCH+DvfNWP0PdhvFchR4CndnxoO4M1R6AtsHGjUEAKY2XuL9PFTWsW3AzJGZz2XFG+nEQS+m8Ut4y
	SV/TkRfr1INAEaCaej3vmseLEq0AO0VZVTTFMo5dnCzB+BLm7XNs0/QMoHbKkGgHzU/gPFYWkYfbA
	aED28p+FqtCFqRXQZmuPfW8ENSJYdyIBYwyVAQMNsll4/aYRz4Dnh9wO4TCY4kEsKlrccWieXr1f4
	32qyjCDZ0/ONvOlf0E4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhRn-00000009gwm-0VDf;
	Thu, 11 Jun 2026 15:35:59 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhRm-00000009gw2-1tAO;
	Thu, 11 Jun 2026 15:35:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E238E600AF;
	Thu, 11 Jun 2026 15:35:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 639191F00898;
	Thu, 11 Jun 2026 15:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781192157;
	bh=lTh3gak2OlqNapbhLUv8xX/8vtksD36ETk2Ye1RapUg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=EBoJhAcmgzBjRcX8N4qApsGdnmzn/aIvaeCzfI0z2lvhr7IJZn+2kl6knENc8Gk5g
	 Hay9dBH72lbf6Zjx9VyAqPddfY0PsYW6nk2DcqVa7jIwOcY4pdZHQHfDnfYKFrbqeW
	 vB/6cV4hNiQKLjVMfZURiasdSjFJXxii00M3lNkgi1yZNjmDZVemhBI3MMKGD/Q32p
	 4tfSacB4WKBxr1zufxrxQwZSWseSp791FWqEVqgO+oJGDRd9YvDxLhk/aZFaOmk3bA
	 u1wAOMZlSBV5kbtjAk9mE/RFZWP1tZCQnLnsVHscjJRWivP/ZF/BtgeMtYx3JnihPG
	 qic5kYF1iXWNg==
From: Vinod Koul <vkoul@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: neil.armstrong@linaro.org, jonas@kwiboo.se, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel test robot <lkp@intel.com>
In-Reply-To: <20260520102859.1357411-1-heiko@sntech.de>
References: <20260520102859.1357411-1-heiko@sntech.de>
Subject: Re: [PATCH] phy: rockchip: inno-usb2: Add missing clkout_ctl_phy
 kerneldoc
Message-Id: <178119215503.568088.10282212626375144435.b4-ty@kernel.org>
Date: Thu, 11 Jun 2026 21:05:55 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Wed, 20 May 2026 12:28:59 +0200, Heiko Stuebner wrote:
> Add the missing documentation for the newly added clkout_ctl_phy field.
> 
> 

Applied, thanks!

[1/1] phy: rockchip: inno-usb2: Add missing clkout_ctl_phy kerneldoc
      commit: 2ace2e949979b82f82f12dd76d7c5a6145246ca3

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
