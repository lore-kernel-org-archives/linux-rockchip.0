Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1637C3ABBC
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 May 2025 02:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6w7Q0VbCmmhhAjScAYXrPOw0q3Sb+OGRrpObq+3ZqRM=; b=bAsCe+UWtCTxZ4
	NWOsG4R28KEkMMVgpTmgAOtFbZSoyRFa1byuyYX6XwNbZuy43/i0RKpO3Gd2Fz7TQ3u3+02MrxepK
	BoSdhtm9tNb8l7gCzgLSTmLz0oM/OM96PJu8BwVeAGQqb/MaQsiwjVoRPD77i417brH2dzNrtqYeH
	aiBb0xQVceu+xA1SYIGDgkAFd8uoPuyjTIeFZhfluh/qJxzOLBPDAcc9hhVYDLtzY98QmJWdXFoX4
	OvUoaE9xVe3c1elR6u/XzAfGkEtp9PcJhfIfVkRyYhdox4eMw4F349DpwFZ62NAJO995F/h7PmMeP
	W1A2FmnILB+BrVAJAJLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCUbM-0000000Dvx3-1fya;
	Wed, 07 May 2025 02:33:40 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCPYD-0000000DPoR-0wlu
	for linux-rockchip@lists.infradead.org;
	Tue, 06 May 2025 21:10:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 20F0C4342F;
	Tue,  6 May 2025 21:10:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E255FC4CEE4;
	Tue,  6 May 2025 21:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746565804;
	bh=x2RtCiL0ifwL4EY5K0Ngbx+DtOeymI4c9bAZgvvdVfM=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=Zb95le6fCCUYUC7CYE/nf1JCPE3hd10Si5WXW1qxWZHXXMFCJnUQFoSkC5xqIgSU+
	 wnkmIbkRhxsk7MBXcRfuQCRkn8bDIxf+5OpWYKhxofBNqxLvV2EYj6V7ePUEaBU9Vf
	 iSBQU61tmgMRt6eE0zXkbLGt5zRv+Shr+4oCnoiQroaYmrPVkDl9i7flTO63kxutJI
	 m1jGNF0hmPZRXUi18u4hQd9A1KwP11WEZ4waaHJaScIytAtQxIo+XKw4tcUV04+kZN
	 KNJQ46YwLfq2DN7+EmZ/OdBRD+9YpieGjPdkAl3y8fhoNZgUfmFYyai9+go9jQYKWe
	 9YLDH5MEINWbQ==
Message-ID: <8be14931dffbe69af0135962f7917d0b@kernel.org>
MIME-Version: 1.0
In-Reply-To: <3034384.VdNmn5OnKV@diego>
References: <3034384.VdNmn5OnKV@diego>
Subject: Re: [GIT PULL] Rockchip clock fixes for 6.15
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Tue, 06 May 2025 14:10:01 -0700
User-Agent: alot/0.12.dev8+g17a99a841c4b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_141005_285903_560BE11D 
X-CRM114-Status: GOOD (  13.99  )
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

Quoting Heiko Stuebner (2025-05-04 15:08:50)
> Hi Mike, Stephen,
> 
> for once I do have a fix for the running 6.15-rc round.
> The nvmem support for the rk3576 encountered a number of mishaps.
> 
> First the clk patch was marked as applied with the driver patches [0], then
> on the way from the nvmem tree to GregKH's tree something went wrong which
> caused the whole nvmem patches to reach Greg after the merge-window [1]
> which in turn meant that the otp driver change landed only after 6.15-rc3 .
> 
> 
> So right now, both the driver change as well as the devicetree parts are in
> 6.15-rc, but that one gate definition from below is missing for everything
> to work.
> 
> So, please pull :-) 
> 
> Thanks a lot
> Heiko
> 
> 
> 
> [0] https://lore.kernel.org/all/173978599692.25901.15315285566342669137.b4-ty@linaro.org/
> [1] https://lore.kernel.org/all/20250411112251.68002-1-srinivas.kandagatla@linaro.org/
> 
> 
> 
> The following changes since commit 0af2f6be1b4281385b618cb86ad946eded089ac8:
> 
>   Linux 6.15-rc1 (2025-04-06 13:11:33 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.15-rockchip-clkfixes1
> 
> for you to fetch changes up to d934a93bbcccd551c142206b8129903d18126261:
> 
>   clk: rockchip: rk3576: define clk_otp_phy_g (2025-04-26 00:04:49 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-fixes

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
