Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA8EBD2ED0F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 12:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+04yePpEyhIAbM6Q7EjfLCd16WKQzXXfVipm1xxtRXk=; b=YfIa3d0ERWv11l
	tKpOWc/1EGrG01c6+tIrn0lz1y9kufFiNbnZce1ObfzlaDkgJMnXc9ofSC5yYh5X72XN4OahH9dT2
	k/puQNz+MKcpFHw6cVRruVtn+wALKk/EMDNscT3FrphUpixghLjsfLl8eMt07kiYMWEoCe85flSWp
	3BQ6JB8+yglnxgvFicwagA2/CjNZr+ZNV0Wnl3Qf8TwQonCdEQ4+Gmvfa2WBvdJBohN9Q4o/cnaWP
	RBkFX/O5LYLcTgsBHliU+L8lqHcblz9Knsbf5E2OsYiEoHwlQwsOeLCzbJd2SC7J0qfNMjzn6hqNh
	93zeybP6hC41qk11Itwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viATy-00000003mYf-0o82;
	Tue, 20 Jan 2026 12:05:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viATt-00000003mXC-29jf;
	Tue, 20 Jan 2026 12:05:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CA63440C2B;
	Tue, 20 Jan 2026 12:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FAADC16AAE;
	Tue, 20 Jan 2026 12:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768910708;
	bh=tWKygxm4Rg1vI4GyJ9QRTEs3zlrz5NkZLCWCbQYismo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=osSGWVFezwo+IxnhWRta1WDqC8SCElwyMbV7MwREOha4Jjs59JzbhjJQ4bMlQgecH
	 y6nf2Pt0g6hoN6cgp1O0QRofMMIkRjn1624PIHOsB9WxptlgOxrlTnq8jYYYLkAM4X
	 fzjo6WwRn+8AQV9dL2/a3NcjU+e2Y6hMtv9P3C46jl0qevTkmDfxKyCbUPy0zLh9YE
	 y70TFUP+gNf2b4oPvYSAm8pwGMECs6LsdzhZpb89BqGkQ+sfF4ecl0EOxSMhF9IOb/
	 xqwfunYWdt2fB9b/uEQkCBd/8uUayCfw8j6+eR6kRUPW8JwoFm4xwY0s9JBtlq+I67
	 aoFQO3iFp5vNQ==
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Mark Brown <broonie@kernel.org>
Cc: Aishwarya TCV <Aishwarya.TCV@arm.com>, linux-spi@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260116-spi-rockchip-threaded-irq-v1-1-c45c3a5a38b1@kernel.org>
References: <20260116-spi-rockchip-threaded-irq-v1-1-c45c3a5a38b1@kernel.org>
Subject: Re: [PATCH] spi: rockchip: Use plain request_irq()
Message-Id: <176891070705.53784.16388482856469002569.b4-ty@kernel.org>
Date: Tue, 20 Jan 2026 12:05:07 +0000
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-47773
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_040511_852579_7E97B7F8 
X-CRM114-Status: GOOD (  12.26  )
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

On Fri, 16 Jan 2026 13:23:40 +0000, Mark Brown wrote:
> The Rockchip driver has since interrupt support was added used
> request_threaded_irq() but not actually supplied a threaded handler,
> handling everything in the primary handler.  This is equivalent to just
> using a plain request_irq(), and since aef30c8d569c (genirq: Warn about
> using IRQF_ONESHOT without a threaded handler) the current behaviour has
> triggered a WARN_ON().  Convert to use request_irq().
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: rockchip: Use plain request_irq()
      commit: 83ba6efa711fad83a0fbf02178ad64d3906d8d09

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
