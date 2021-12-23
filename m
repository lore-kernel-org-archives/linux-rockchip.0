Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29C6EC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Dec 2021 11:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jjyDEClC44c9HGllM+QlVkQPcw0h/lICoWTRrZxxaiU=; b=uOOWp8j6j0QttO
	ldrJxMV23hKFmg++1glTFu8aTtGDRebBG1ITZMeJC4DfMz2+NZig1vqBj6xapo/PP0YSpislBWSIZ
	x4m2vbnlOrkz65VaYgONE1SqFBNf6WScUYcn4tjxD2n8NgbcvoKIKYOZbuXCaoAfxqcKLQSyBFn0X
	DC2fPXfuH6uzNGPuiwp20dRRRK8bF2Vs863I3cVypmsji+n58r9hAcYvppq9nrXDYvuhnQ9B60y8O
	JG+sdyKti8KVeJ44x5oHkYAtT+lo0okzP200h6UBt0ah7AW/D4hSwwGPPFwjAy931vMi7AbRUhaCi
	Gvm1diR+21Jp12OSS7iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0ME6-00CZxt-Pc; Thu, 23 Dec 2021 11:25:38 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0MDu-00CZv5-BN; Thu, 23 Dec 2021 11:25:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 764CDB8200F;
 Thu, 23 Dec 2021 11:25:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37FDCC36AE9;
 Thu, 23 Dec 2021 11:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640258723;
 bh=hP0ZPwGrLJ5L9ght86XMHMVAyvOjs4D499mJuEVzkzA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SWPUwxkchGsUwNeAa6Ufmmd2KK9sc0B/fABWV6OLUNi/XgLzuel7mCELfrtS0xDon
 Cl6PBPr7Apyio4nTwOj3bFcqzkubz/jkA3Psr8pn7n+YTFxORuuQVDwiSHORT5wPSY
 kaP2UISdxvkuMwEdfV0fbdiJGot9pq9c7AVt4ZoiOFR69g40Kauc0nxYgAZqyG2fqA
 bJaAAQo4B1FGsVx0MKRScw57rzUlaoboi9zS9olZlT5DCjfnkgk9E9NUgbklY5IeEL
 dImwfzBxAVPn1UIlj9Gq4WNv/BgEl8P2VH3BzYMxZW13WYOwaHDGl9jrGTCj2nd7cR
 QH+zEGZ/dEoag==
Date: Thu, 23 Dec 2021 16:55:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh@kernel.org>,
 Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH v3 0/8] phy-rockchip-inno-usb2: support rk356x usb2phy
Message-ID: <YcRcn17RMRGsLr5M@matsya>
References: <20211215210252.120923-1-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211215210252.120923-1-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211223_032526_562347_2688435C 
X-CRM114-Status: GOOD (  13.50  )
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

On 15-12-21, 16:02, Peter Geis wrote:
> Good Afternoon,
> 
> This is my series to support the usb2 phy devices on the rk356x.
> The rk356x phy has a single muxed interrupt and has moved the usb2phy
> nodes out of the grf and into their own nodes.
> The phy needs to tie back into the grf for register control, similar to
> the rv1108.
> By moving the phys into their own nodes, they now have full
> #address_cells = 2 register addresses, but they still reside below the 32bit
> mmio range.
> 
> This driver series only supports the host configuration for the rk356x.
> I have have tested it on the following:
> rk3566 - Pine64 Quartz64 Model A
> rk3399 - Pine64 Rockpro64
> 
> Please provide feedback and comments as you see fit.

Applied patches 2-6 to phy-next

Thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
