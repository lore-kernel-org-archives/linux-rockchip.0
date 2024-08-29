Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DCD6C83F0A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 12:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GC6p80OBziAgbGeHFs0US5gIyTqpub6GTDkc8f/7G9A=; b=lUOAjZ6sftSyaA
	0TXhK2LSgNW7yAcXZ+Pgtapa0kQ3Krc6XacAE+5U6o/1u34NcrHo/9S4A/6cI3ertmBmHPjN6Ov2u
	9waH21Llk9Tu4wAfXCeeEZzlVP9QJW5mxY6VPd56yoOpkXuKxHKTDPloAOB42tGiEDIXW3yVjaKKU
	EIsLUoTXLZHifHBvoy51X2ycw9WgXVvEdIHTSJ2NpBPvpVphLT9ONIJ6eovgXUznOXuR2hoYI9rFB
	j6lqmz+6hiNGoajYWWZzcXXIkDhBiClHe5IDrg2XC7ThzqKJpQVrApUINYZ+YwcQJSbFQ0RK5CR6T
	Vb+wg2jJiM53tc/6cSdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjeDP-00000001uDx-2Ero;
	Thu, 29 Aug 2024 12:25:27 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjeCX-00000001u2d-0OJH;
	Thu, 29 Aug 2024 12:24:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id C4DEAAE4DAB;
	Thu, 29 Aug 2024 12:24:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAA5BC4CEC1;
	Thu, 29 Aug 2024 12:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724934270;
	bh=8q5dePvHecEGWISUoUyB9pSR67Uw5EVyugueLsakF3E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=J8hpWNY1cCk7W2ZPRTJzMmu2RWAeCMLJU4KUtr/D048++ZwY8Kq9TYJ6A3aKs8wS9
	 gvJWOucOayjghBUSD8g1Y8xbetYqai7DXwFRwXzk1daArAsqyOJJebN+YPcDu78IhH
	 1/Q9XUUTKobNN22HCXINGIMzEYXohuvN/KF32p4YeGMmhQkkYnSzPQs9aEd2k32T/5
	 wpImGE27kOKSA/jA7CJDQNs6dPXq8oo8FKll8qwOFHYsLjlbAQSVCx+WZro1hhBCaw
	 BTM5RRM0bfGBDBsFIwM0E4drhsY48sHhMxujnCxmZv4+xYm0v7fG4i2k6zfpTInMoj
	 X17c6izstukrw==
From: Mark Brown <broonie@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: Jon Lin <jon.lin@rock-chips.com>, 
 =?utf-8?q?Ond=C5=99ej_Jirman?= <megi@xff.cz>, stable@vger.kernel.org, 
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-spi@vger.kernel.org, shengfei Xu <xsf@rock-chips.com>
In-Reply-To: <20240827171126.1115748-1-briannorris@chromium.org>
References: <20240827171126.1115748-1-briannorris@chromium.org>
Subject: Re: [PATCH v3] spi: rockchip: Resolve unbalanced runtime PM /
 system PM handling
Message-Id: <172493426855.31273.9511769608557747574.b4-ty@kernel.org>
Date: Thu, 29 Aug 2024 13:24:28 +0100
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-37811
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_052433_299079_E7678C44 
X-CRM114-Status: GOOD (  13.26  )
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

On Tue, 27 Aug 2024 10:11:16 -0700, Brian Norris wrote:
> Commit e882575efc77 ("spi: rockchip: Suspend and resume the bus during
> NOIRQ_SYSTEM_SLEEP_PM ops") stopped respecting runtime PM status and
> simply disabled clocks unconditionally when suspending the system. This
> causes problems when the device is already runtime suspended when we go
> to sleep -- in which case we double-disable clocks and produce a
> WARNing.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: rockchip: Resolve unbalanced runtime PM / system PM handling
      commit: be721b451affbecc4ba4eaac3b71cdbdcade1b1b

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
