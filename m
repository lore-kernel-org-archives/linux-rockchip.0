Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A555ECF11CF
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 11:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V93LOJRF+KJrNlPqS5fg27NA98ymf1EIRM4uZdCHs1Q=; b=nv8TvpJFVlXVna
	gCRy3B7XK0X7an2YxLp7HrFZ530rIb9yz9aytb8P5zAFSexhN/Xl5wWcZhghkJbfLpsuR3+cYQkAp
	Zgzq5lSmOQtgL086j+cFOBR5N3gY7N/1Eb0RhrL/V+jVaT2WH8cWzQWJFEas2rxK2G8Y2Phevnwsa
	gTc2ZAWor4MLUYioRY3ZD8+UXBfnNQ9QsPnHfnyiVhLr05uTST5siTacYh+dT5krtryDsT4fBWq5l
	Ij2WE/6OJjretw+McKQYy1Hfe54lbImGNG+WuGWyvnPmGCuwAnFEtK8etCN0wWENg5AR/F1szunpV
	naje64E6GDMSq0qE508g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syr9B-0000000CVkw-1kvz;
	Thu, 10 Oct 2024 11:15:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syr7q-0000000CVbj-2xo6;
	Thu, 10 Oct 2024 11:14:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Qqz7wNpEHVbi8n66cxNu4D4xvE31Z5CAqYk/Ts9Pz6s=; b=lGdg+SN7g23Bz4FyIHeQrpfk9H
	3ugttxwvAfy4mZ8CiGRfK4Id1yOqI7I1lVDzXxYDDs14p+tosFKSvD/nlIfLYZqJ/LSVDCew/HlzN
	P5int2eEyHJGB9aSeeGdmBpwir7xZl34VA851TtiMrEbAyYhle7VpkY0pNa/C5cEDD6bpNpNiPNgZ
	QcBCWcIM8+de/2zV65AeiuDeSxmG7sg9M6Iv97Ar8SQxYJJujqHnO5qjlk645rvIP/QybjB7vHMEk
	0rHKomISFMEEweM4bUjGeWaePMFPp7egyN6AukbAoPPbstSn9mDZmRUOi2vzdlvof2iDc/b41MY3W
	2+yF/Z5w==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syr7n-00000005MQX-2O1I;
	Thu, 10 Oct 2024 11:14:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E44C45C604B;
	Thu, 10 Oct 2024 11:14:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7431C4CEC5;
	Thu, 10 Oct 2024 11:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728558867;
	bh=IMikOpVZDTkWvRqqmyYXabw2eSCTdsTsi9nsFpVjkws=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JgbwZCW0Zh4VPbUeSqNg0rzD27utgz2Vml79tHAQvawnY/WmF2bFRAV740Tc96/Mm
	 M7Uuw2AqqSf8eEyoP86Vooqg3lSndGFmhy24xE0iVg8N0P7E6AlZnF34XuUHJmZ1s/
	 DLuxy8ZANEWQneFoTgLGZ05uWM7vt6teN3x8yqlvWlJU0DGew5goZnAkT639X+GcPE
	 W7IY1gW7HUMCiKwcjlufGs5lJdPLmKLDEy+tYEtIvPPzSjk2S7IRzsUlayPSjebSW/
	 83+jtjQUAwOZOiEcrv2ZUlQ0+5hIsd29GrBwtF5MhNx//dFpihYAZ4ZMzIbOHgrpYz
	 Db5mKb21c2B6Q==
From: Mark Brown <broonie@kernel.org>
To: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, gregkh@linuxfoundation.org, rafael@kernel.org, 
 oss@helene.moe, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <cover.1727601608.git.dsimic@manjaro.org>
References: <cover.1727601608.git.dsimic@manjaro.org>
Subject: Re: [PATCH v3 0/5] Add dev_warn_probe() and improve error handling
 in Rockchip SPI drivers
Message-Id: <172855886556.3260167.12395956115467736144.b4-ty@kernel.org>
Date: Thu, 10 Oct 2024 12:14:25 +0100
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-99b12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_121431_785153_FF6EAE02 
X-CRM114-Status: GOOD (  13.14  )
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

On Sun, 29 Sep 2024 11:21:12 +0200, Dragan Simic wrote:
> This is a small series that introduces dev_warn_probe() function, which
> produces warnings on failed resource acquisitions, and improves error
> handling in the probe paths of Rockchip SPI drivers, by using functions
> dev_err_probe() and dev_warn_probe() properly in multiple places.
> 
> This series also performs a bunch of small, rather trivial code cleanups,
> to make the code neater and a bit easier to read.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/5] spi: rockchip: Perform trivial code cleanups
      commit: f7bc15211fc6946203dd7e57c123f1e387d7225b
[2/5] spi: rockchip-sfc: Perform trivial code cleanups
      commit: cb91287b3b6d42e66f948fbc304f771792c2852f
[3/5] spi: rockchip-sfc: Use dev_err_probe() in the probe path
      commit: 7d46b8d8d78338a2ad986eec0790ddb22fad23a8
[4/5] driver core: Add device probe log helper dev_warn_probe()
      commit: 36e69b160705b65bf136c2fb6a1194447eeb8478
[5/5] spi: rockchip: Use dev_{err,warn}_probe() in the probe path
      commit: e2fc05873905f2ee96b38a116ae86f45fe7d8e49

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
