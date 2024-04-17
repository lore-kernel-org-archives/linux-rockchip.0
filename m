Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66ACEC001CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Apr 2024 14:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AX6sFqRQoLIJMonU+mgQ2cNIBc7uGDjt45Oze4dx+u4=; b=D/vmKXlUgAVQND
	P0jHm/vQMxiZmR8JUicyAkCrJAPgZBiZcYUUBH+cDa1jnB9MXlCOFsvoIkbclHY9I3dr7fOHYF217
	pFso76ZfKsLECh8jkNeU4cJTbvte9mHOvTYYzcdArJFuFl4+ehEn9MqjsDvS6QTC8Dc+O5gSHyWzl
	wbL7kMKeP0JrjmQ+9XcqT+bTvIaZ9qCkO36pNWvvhP+6r9WhG4vtow1TgEPISfufzcMpTHHnvDshM
	V69lx2sbj9VDnkF9LhB2g2mHk/xWQNKdpOu8SslkFRam3PsS3UTkqaI6RE20mwqIdhJvTdFKYyVS4
	uyGGPo45AZaPC1g3vsSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx6SC-0000000GNn9-2d7y;
	Wed, 17 Apr 2024 14:40:04 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx6S8-0000000GNim-01m9;
	Wed, 17 Apr 2024 14:40:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 49DF5CE139E;
	Wed, 17 Apr 2024 14:39:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC817C3277B;
	Wed, 17 Apr 2024 14:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713364790;
	bh=oaCCmN1lVY7S22xF8rXCzmvkdga+euN0QD+4m2z6Dyo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=N9T5SOC+NMSEd5N/rF7+d0rirtIHxnH0pfW/aWxODxkFbFoLmGJMeNvlvRaa4HIep
	 IkAXvRoCEIok1DNwroeIhBg1HcneeYdbzqfFqTPm+Xu3U8ZZBV4nedLHanOaG4YG+k
	 VYdBQac5Ej11UCqlhgW89uqGXhk0gnE0e5GLRmb1AFS4p9thvidA0ideyU/xBNJTzx
	 ZPONBtJT72/hLBe6Z/ZZ/9fGB+6LAFISnu6DGxDSJRxGGIfwd1P2LBNERtrDPKE2El
	 igCKkt6UT7+BAeLj1aiAUiZxXfTG3s9/vDNNv9wKY9TKHkIS6n8/OPn+amBm3PHSvg
	 TZ7klaPze8uzA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Heiko Stuebner <heiko@sntech.de>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
 Zhang Yubing <yubing.zhang@rock-chips.com>, 
 Frank Wang <frank.wang@rock-chips.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240415174241.77982-1-arnd@kernel.org>
References: <20240415174241.77982-1-arnd@kernel.org>
Subject: Re: [PATCH] phy: rockchip: fix CONFIG_TYPEC dependency
Message-Id: <171336478653.736784.62229019778133904.b4-ty@kernel.org>
Date: Wed, 17 Apr 2024 20:09:46 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_074000_247038_C19192E7 
X-CRM114-Status: UNSURE (   4.94  )
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


On Mon, 15 Apr 2024 19:42:25 +0200, Arnd Bergmann wrote:
> The newly added driver causes a warning about missing dependencies
> by selecting CONFIG_TYPEC unconditionally:
> 
> WARNING: unmet direct dependencies detected for TYPEC
>   Depends on [n]: USB_SUPPORT [=n]
>   Selected by [y]:
>   - PHY_ROCKCHIP_USBDP [=y] && ARCH_ROCKCHIP [=y] && OF [=y]
> 
> [...]

Applied, thanks!

[1/1] phy: rockchip: fix CONFIG_TYPEC dependency
      commit: 9c79b779643e56d4253bd3ba6998c58c819943af

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
