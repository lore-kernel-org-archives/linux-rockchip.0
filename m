Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27865E77188
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Dec 2024 18:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5HfJAsdPer/CXXed/K2XghYpfJ4NJGQ1TfZcHQ+1X4=; b=znek/unemd65mB
	I4rCQxcuJddsZYaq1A82RdyiWhYl5r0gZsVkZ3LPD3DNsdPpcZAH6Bnxgm3/qtu1bmLCpvHnBk8Nt
	hKIGmXwKyLjpqzdnlsPD/bjR9I4EuZjJeauhWU13nQM5Gy28V3AWDgbqhR54sadrmoIJiclT/vIOi
	qwQpUew1/3euoMnYnm/qwLu+LO0l8eshPhgQWE4Su0bJ3bSnQ0LqmBB0o+SIttRbHFx22AzwvyIuw
	AFdBNYgL3M4coE+2WoCg+4DGwvmIdSN2XjdRyK93kpLBQ/qOWYQG2WhLdW5WGLI7Lkobxf7PYXTCK
	JRWG3t2kjQ1CUnNDKyYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNyZx-0000000HPEI-26af;
	Wed, 18 Dec 2024 18:15:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNyYq-0000000HP9h-3sMs;
	Wed, 18 Dec 2024 18:14:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5B43A5C3BC6;
	Wed, 18 Dec 2024 18:13:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA0E8C4CECD;
	Wed, 18 Dec 2024 18:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734545656;
	bh=oLjRNaXefOfbuwuGz/n65DpsF3Fb5uurQPkAN2a0Nrk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=RFigwBAqLIxWG023Fhlwq7Ot86RHEKJKM/tCBsnaPO8XAoVjv8DwFdHgh6r7sp6/M
	 UR7+jQXvsJkAYEid+oVGhFVpyC14xJ4Nul2q8O2dK8FJLAsXnjMLF2bA0SPvDqnhJI
	 QC+1onguhqBRBQya7dfZ1JFcA8pv4ONJIRnMZ8n/yLN8E5GhgPvciBRsU68HlYkcEl
	 G453VSFamRisQhgQNrERr78dTxyCml61ZNM17lk7k3pp4kdkDTWRriWdsIm8hu5dPw
	 46Io3XhpdV+7kXa0fPCHs4X7mc/HoYquyOTwdcBaN3N/wsyV6CJ2gqd3rjBP8nLO6F
	 mGpQqV2aM//4g==
From: Mark Brown <broonie@kernel.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 heiko@sntech.de, linux-arm-kernel@lists.infradead.org, 
 linux-spi@vger.kernel.org
In-Reply-To: <20241218154741.901591-1-jon.lin@rock-chips.com>
References: <20241218154741.901591-1-jon.lin@rock-chips.com>
Subject: Re: [PATCH] spi: rockchip-sfc: Fix error in remove progress
Message-Id: <173454565468.177553.7095093662126161024.b4-ty@kernel.org>
Date: Wed, 18 Dec 2024 18:14:14 +0000
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-9b746
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241218_101417_075927_6E8DC5BF 
X-CRM114-Status: UNSURE (   9.29  )
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

On Wed, 18 Dec 2024 23:47:41 +0800, Jon Lin wrote:
> Fix error in remove progress:
> 	[   43.026148] Call trace:
> 	[   43.026370]  klist_next+0x1c/0x1d4
> 	[   43.026671]  device_for_each_child+0x48/0xac
> 	[   43.027049]  spi_unregister_controller+0x30/0x130
> 	[   43.027469]  rockchip_sfc_remove+0x48/0x80 [spi_rockchip_sfc]
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: rockchip-sfc: Fix error in remove progress
      commit: 7f9a1eed1ad8b274ed9163a02cef891a90427237

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
