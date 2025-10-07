Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81AADCCA470
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 10:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gnW0ZrwQeQMN+5GvLKmuatwidpvjGycVk+HOnBRKdek=; b=03QrL4qyYV0wOW
	gyLyqC+JCpC4PM2RF0jBh2rJUfbAsLvZFTOvQ9tMZQmjOCAjenfNKoeObj65fdYA+AYnryJpr3lEm
	DEwVLVCRtosBc/0/aRzhqVV8TGH7/lhwurk6/dnlV58kUi22Ie05bzte4HEipKlm+JOP2BSorRs1O
	oR35tZWtWBoHf8PotrE3iUSAVmgQcZsnABB7FfBZPNFZOjiWnKqXqqjKFqdZWT1MqNFvZbWIkYkXc
	FUP+pDAZfmNCgqFS3wRz+TH8fvAzAHvWShwvbHuT8jR3I+gHsmwoDKkHvQ4rQG5//P7i2Ac3NySWf
	OAvGu3VO1rhTpK45uh5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v651c-00000001o77-2QND;
	Tue, 07 Oct 2025 10:34:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v651a-00000001o71-3m6X
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 10:34:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1CC626055C;
	Tue,  7 Oct 2025 10:34:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4387CC4CEF1;
	Tue,  7 Oct 2025 10:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759833269;
	bh=7Rt85khc37Bm9T7CKb1rV4PLnxTB6FWq7ZxOkALG9ZI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JAn+B7qfHQdWfiiC8w8s2OQL9CJpYx34jLg9echSC8zElKWHI6dKXn25NrrMvHjrh
	 f28dAFKVgopFpgvWbuREH1oYDfyeiLDZetSJkxotiVK/xZDY555dih3DMbzWhC18fl
	 w8LywxryXYs7JHl85+Uvi99j0fIPIb+d20IoAIfQdv6muUpyogbJ/+Z22yH9MNYiLP
	 iR0LPagKSxSv3/kRGp/03XdRoLZ+emoteTMEjb/emr6OOQHFyA/h6gfY5sh6Y0LFu2
	 sqWqSPWcyqFjxfnrzm6WJKEGEQu3oEIOE5tvFGvb2TtxOSAAcYT7yLvw8n0DJFhHPq
	 0089ZXkmuzZEg==
From: Mark Brown <broonie@kernel.org>
To: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Jon Lin <jon.lin@rock-chips.com>
In-Reply-To: <20251003114239.431114-1-m.szyprowski@samsung.com>
References: <20251003114239.431114-1-m.szyprowski@samsung.com>
Subject: Re: [PATCH] spi: rockchip-sfc: Fix DMA-API usage
Message-Id: <175983326786.12762.6647270709519748185.b4-ty@kernel.org>
Date: Tue, 07 Oct 2025 11:34:27 +0100
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-56183
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

On Fri, 03 Oct 2025 13:42:39 +0200, Marek Szyprowski wrote:
> Use DMA-API dma_map_single() call for getting the DMA address of the
> transfer buffer instead of hacking with virt_to_phys().
> 
> This fixes the following DMA-API debug warning:
> ------------[ cut here ]------------
> DMA-API: rockchip-sfc fe300000.spi: device driver tries to sync DMA memory it has not allocated [device address=0x000000000cf70000] [size=288 bytes]
> WARNING: kernel/dma/debug.c:1106 at check_sync+0x1d8/0x690, CPU#2: systemd-udevd/151
> Modules linked in: ...
> Hardware name: Hardkernel ODROID-M1 (DT)
> pstate: 604000c9 (nZCv daIF +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> pc : check_sync+0x1d8/0x690
> lr : check_sync+0x1d8/0x690
> ..
> Call trace:
>  check_sync+0x1d8/0x690 (P)
>  debug_dma_sync_single_for_cpu+0x84/0x8c
>  __dma_sync_single_for_cpu+0x88/0x234
>  rockchip_sfc_exec_mem_op+0x4a0/0x798 [spi_rockchip_sfc]
>  spi_mem_exec_op+0x408/0x498
>  spi_nor_read_data+0x170/0x184
>  spi_nor_read_sfdp+0x74/0xe4
>  spi_nor_parse_sfdp+0x120/0x11f0
>  spi_nor_sfdp_init_params_deprecated+0x3c/0x8c
>  spi_nor_scan+0x690/0xf88
>  spi_nor_probe+0xe4/0x304
>  spi_mem_probe+0x6c/0xa8
>  spi_probe+0x94/0xd4
>  really_probe+0xbc/0x298
>  ...
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: rockchip-sfc: Fix DMA-API usage
      commit: ee795e82e10197c070efd380dc9615c73dffad6c

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
