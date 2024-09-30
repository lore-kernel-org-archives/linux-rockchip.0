Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFD9DCEB2C2
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 21:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gt2zaL/WAYbqgn1Wb8I0s/i0FM6UlzmmUAtMLHIrMNA=; b=fFldheupoLw0IY
	HAXp8Vf18BtbZN15WOawi6i9MrHYI2PxrpBJoBgOrzW6seSsjXDsCE3Pk1pi9mD0ujQSd5/oGeR0C
	2/cCV1/PzaY6stpvFCvVAuwlkJvQIdEdctVnNf/MALQKBECZM93JWaQsZ+tQiB8xloW3JcOazVxCl
	9GP58ng8kX3JzzZXe2ydZIZAHzBX/8kMTRuF/gPdSt6nLFiyxfv+ZBRjo3slTSfD+IC+xAehqPpcT
	DMfN4zjOu/7rCuvGRiNp6FiP8FEXBno24RjnnxCCjJ81TCgSR7OBw/aYoCe48c/uv3jzrX6n0pB7E
	cRcdFAtiunhbegiqiraQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svOAq-00000000w7H-02Y4;
	Mon, 30 Sep 2024 21:43:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svO9a-00000000vl5-3gsg;
	Mon, 30 Sep 2024 21:42:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C26C55C0506;
	Mon, 30 Sep 2024 21:41:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D321AC4CECD;
	Mon, 30 Sep 2024 21:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727732521;
	bh=8H/vCVexZKk3SDms5mmWuT89Z7hKTzNWvCultJ7VfuA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=LmN7ZvY3QGebpDNWHs/jPuBNs1YYYRJzvHWp9Y88/V82P8WuG7bvWr/xVPbw6ys26
	 iC8ec8ANXkSJsE0JPlVZNjAe+nrR8XzivK7Aeb9L5lfFLgIIZZ7zRsps7m0F97L4/D
	 OkziEhDeY8Sj/ApgIDB9ZwXOqtm1ogEAozyM8yvE0NpEkHZdjc4YybCVLXlbnSYaLQ
	 fZviz3ZmLSuxuALffXzIbj3Arjk8ngjN9L4F8HtJ+vVmhpHdz1Lb4klVRHWoo52bCE
	 X1PgrijvxG+eabKz6KOrg4zNkZxnH9TNSfbUxmN09bdhFLqnc0Y/9OmOp2DfkoMYAp
	 IdUwZlznrRicA==
From: Mark Brown <broonie@kernel.org>
To: f.fangjian@huawei.com, linus.walleij@linaro.org, heiko@sntech.de, 
 andi.shyti@kernel.org, krzk@kernel.org, orsonzhai@gmail.com, 
 baolin.wang@linux.alibaba.com, ldewangan@nvidia.com, 
 thierry.reding@gmail.com, jonathanh@nvidia.com, Yan Zhen <yanzhen@vivo.com>
Cc: alim.akhtar@samsung.com, zhang.lyra@gmail.com, 
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org, 
 opensourec.kernel@vivo.com
In-Reply-To: <20240914095213.298256-1-yanzhen@vivo.com>
References: <20240914095213.298256-1-yanzhen@vivo.com>
Subject: Re: [PATCH v1] spi: fix typo in the comment
Message-Id: <172773251765.2210210.17538340798969212217.b4-ty@kernel.org>
Date: Mon, 30 Sep 2024 22:41:57 +0100
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-99b12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_144203_020043_ED470A45 
X-CRM114-Status: GOOD (  11.52  )
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

On Sat, 14 Sep 2024 17:52:13 +0800, Yan Zhen wrote:
> Correctly spelled comments make it easier for the reader to understand
> the code.
> 
> Replace 'progrom' with 'program' in the comment &
> replace 'Recevie' with 'Receive' in the comment &
> replace 'receieved' with 'received' in the comment &
> replace 'ajacent' with 'adjacent' in the comment &
> replace 'trasaction' with 'transaction' in the comment &
> replace 'pecularity' with 'peculiarity' in the comment &
> replace 'resiter' with 'register' in the comment &
> replace 'tansmition' with 'transmission' in the comment &
> replace 'Deufult' with 'Default' in the comment &
> replace 'tansfer' with 'transfer' in the comment &
> replace 'settign' with 'setting' in the comment.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: fix typo in the comment
      commit: 89980d3a34655d99c599f6acf877fd48775a29ad

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
