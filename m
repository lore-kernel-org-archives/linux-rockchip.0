Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C2F9C678D4
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Mar 2023 13:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dU2GG3aQWHGtTRu8zCgbPMSKN5kzaNxReXdztUp4e8w=; b=2Zz0OPPQgOvjS6
	0fnqiLkVhi4AN9JSqlh5d40i0weJGcsXblTd+JE2VCJcymAivhCrpwoibFQPQAK5GOCSroxnIg6kT
	RZGMc37Fnvib2qBe9Nmmy7rTmQlrr0rbYQgcb+6wjW4V/lsmjif/IRMj0nMX2yt+76ep+SASyJXyW
	K9or/dVBkahKoYQSUVeqIb1Zezo0viWuoqQax2yYwfh0utFt/wcgTpXzBdC2RJULiJZPeujsqdA2z
	12vQRAlKVfFoMxLbE5TF5rzqlaha4e9xVaozmf62SoQ8b6makcG+7HrkTZqsI0i1wrkcC3Y/O/kPy
	E8BGhvqmslpg81fENaow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZAWl-00Cnka-Cf; Mon, 06 Mar 2023 13:05:19 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZAWb-00Cnh4-Bl; Mon, 06 Mar 2023 13:05:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E190460C25;
	Mon,  6 Mar 2023 13:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13D76C4339C;
	Mon,  6 Mar 2023 13:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678107908;
	bh=OghyAkHZ8D9HZmMpoa0v/9iX86xt6+klLkfBOwrcJG0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=NR8vZXkdjdOp9dD1NudUo0rD4s0c8EnY7pPxWhaERNjkusKmebYO7UuvVZjIwFvrd
	 ML8D15uVMB3I0z5Gin48a+d8IOfvZFf2fb+6trqXppEbjnCX7C/CjeCQM0VZFZPELT
	 Y6YfjvNLgD0flQyWwVCgNpLgNaPfx1pcKBKnsPkf3O7HDGaermuZliTZ2ylR08/8KS
	 RN2lGJzn8TBB/aNKaLzUzkIam6FMl7BJHRgwL9Z1tiBzrGAs2SzFMsqsjRs1W4Oncz
	 Cba2NC61xuLuNLhDrvADySk0bmEl8mB5YAmoS560zSBu9hm4sWpyg6yQsCeP1ibzQy
	 2Phjd8LjOs77Q==
From: Mark Brown <broonie@kernel.org>
To: heiko@sntech.de, Lizhe <sensor1010@163.com>
Cc: linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20230226063334.7489-1-sensor1010@163.com>
References: <20230226063334.7489-1-sensor1010@163.com>
Subject: Re: [PATCH v1] drivers/spi-rockchip.c : Remove redundant variable
 slave
Message-Id: <167810790680.67440.3385806296650040534.b4-ty@kernel.org>
Date: Mon, 06 Mar 2023 13:05:06 +0000
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-bd1bf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_050509_475354_946ECF11 
X-CRM114-Status: GOOD (  12.54  )
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

On Sun, 26 Feb 2023 14:33:34 +0800, Lizhe wrote:
> variable slave in spi_alloc_master() or spi_alloc_slave()
> has been assigned. it is not necessary to be assigned again
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] drivers/spi-rockchip.c : Remove redundant variable slave
      commit: 8c220e6c6da9c2f70a78ba8b3121893b3634a54c

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
