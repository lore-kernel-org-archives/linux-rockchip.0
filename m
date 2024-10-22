Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B98B3CDD0CB
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 18:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2icbTZHXEYQIQ8ZPHybe+sALXR3f63P0bs8sgWwqj8=; b=JJbadshMBKp76j
	yf6E5VQIMQfE413vnv+Tl7t/p4RS3HgaAEOuhrxVDT5deuLciVT5RHz97XMfVsfZ8i+RmI+Ux+px4
	gaxqmZqi6YczkiClvizbHZPwwUu0DNNcaLscXzWuJn9uOrg8YWuFdxKLmtC63RoVVTYj+SR5YQEdM
	lLJjk5jBffP3OC6JN+LRwoXwsz6rqLfMRsVNXF5kus8Lc3Fp++hcERX7tOe9fqirL/kbcjjvTzbv7
	OEvyOal3RI8IOliCecCESyugmodYgZTeFFYe9hhPP6I29Cumq7A7FixplhLCYYbHqhfac/8qVp5BW
	y9jw/IewYij3nKoVy3ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Jua-0000000BqIc-0nZc;
	Tue, 22 Oct 2024 18:47:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Jsj-0000000Bq2n-0UUQ;
	Tue, 22 Oct 2024 18:45:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 69D1E5C5A29;
	Tue, 22 Oct 2024 18:45:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 868DFC4CEE3;
	Tue, 22 Oct 2024 18:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729622723;
	bh=63jRCFSINOUOWDp6i5kP/8DY5ALnwwB08Ddv3eMY1v0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=EPmdHK8oLSLZ8dj7SPd0SpI4R3MJkzsm6VEauHC7iP3fsx/4Jyo9OALeJRF8JiDpE
	 BL23JRKF3jjzjBiOQ4qeyFA2l8Y6UnnSHiJlT60BYFKzH5gqJbKouapHvOoG0Mr3Wg
	 1zMNqQnq1VcIGx53upYDWjFO+9XoS0ZEXJ7vYCS7wd62plul55b4ZKs6Zcw4hJ9PkA
	 vyLCJxJUBxBp72lG0rYkTQ5GZw8LKkOSEeu5w0xjIvYooR1WuHvgVGwOBW1/w4uU3+
	 wMzN2GhD5G+z7Pjbn3CppPrdqb0+lG03XcHOAsEgUJ89v9elMV0e4lps+8C2IX9pZp
	 OMT9bwoeRYmIg==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <cover.1728902488.git.dsimic@manjaro.org>
References: <cover.1728902488.git.dsimic@manjaro.org>
Subject: Re: [PATCH 0/3] Allow use of DVS GPIOs on the RK808 PMIC variant
 only
Message-Id: <172962272118.122698.2211173167773675100.b4-ty@kernel.org>
Date: Tue, 22 Oct 2024 19:45:21 +0100
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-9b746
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_114525_242367_1560FEC4 
X-CRM114-Status: GOOD (  13.83  )
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

On Mon, 14 Oct 2024 12:43:38 +0200, Dragan Simic wrote:
> This is a small series that primarily makes the rk808-regulator driver
> more compliant to the DT bindings, by allowing use of DVS GPIOs on the
> RK808 variant only.  There's no point in allowing that on the other PMIC
> variants, because they don't support the DVS GPIOs, and it goes against
> the DT bindings to allow a possibly misplaced "dvs-gpios" property to
> actually be handled in the rk808-regulator driver.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/3] regulator: rk808: Perform trivial code cleanups
      commit: 1bc3f0e9868929211c6abeb7e79b566c27fe9bb4
[2/3] regulator: rk808: Use dev_err_probe() in the probe path
      commit: fde993ae0b6e5edab0563897e232b94d1d2165a4
[3/3] regulator: rk808: Restrict DVS GPIOs to the RK808 variant only
      commit: 33a846e88481cc4659c6d670759b6295903e43b9

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
