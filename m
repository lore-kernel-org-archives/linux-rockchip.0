Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DDFC433E1
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 17:40:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 49244207D3
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 17:40:14 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="netihYR4";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="JITDFbdX"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 49244207D3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Subject:References:In-Reply-To:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gNUvP7jA8+tpMdv45anD81d9RnCGEUvgUiBGGV3gvJA=; b=netihYR4kgr9qkAdqocYgH0c/Z
	2LOJbILxLvOD+pO1At5v1arlD+Lb+nvLyOdoUYYK4GEQaLWytM1zzoqgVymQX1kGY6M0w50SaTE8j
	i7d8tWB9BuTWuqGiMs0ev16c0Axaj5W4BGz9Z8excjQZaFsY3yO9rNnLnEO+ENqNGt98OHxbP4chc
	tfHaCQAKyN2wrk9XGMALvnpAum2xchn8f/gBPheIeAujOjFh9pWGNYTkjaJjcdo+k/7Yw9DaTYkMW
	hcwRMOGp+6Cl9uzA4mW4ffNezy9tQ09veWXTuGDo+AIQ6vaB5YnxIdqu+QXdrBiqv+2MaOhsQGCGl
	5ODz8dGQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k85aj-0001q3-25; Tue, 18 Aug 2020 17:40:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k85aY-0001kT-Fl; Tue, 18 Aug 2020 17:39:59 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5ED2D20738;
 Tue, 18 Aug 2020 17:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597772397;
 bh=jw0rqgoKOxJjeFzL3PLrNSOLSmVzOndyFsCJBt1RmBE=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=JITDFbdXUSdL3CAO6S6oBsDueJ6T92UpvF2cvgIOiROsih1Att03rFWG8fDHlw8Kr
 5gt3MWB6+E0LwEoKV+J6QXsnwHozg+mfEoWWSvEb1Q5SEj1klVTkoZKaAbgD8OMGnD
 3qc8wxSPdiMVAh95d49Qx9j8IJ2vMKLzaQUYDKLo=
Date: Tue, 18 Aug 2020 18:39:27 +0100
From: Mark Brown <broonie@kernel.org>
To: heiko@sntech.de, Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20200818143727.5882-1-jbx6244@gmail.com>
References: <20200818143727.5882-1-jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/2] ASoC: rockchip-spdif: add description for rk3308
Message-Id: <159777235702.24785.2371871958311959848.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_133958_656105_A0FA3085 
X-CRM114-Status: GOOD (  16.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, sugar.zhang@rock-chips.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 18 Aug 2020 16:37:26 +0200, Johan Jonker wrote:
> A test with the command below shows that the compatible string
> 
> "rockchip,rk3308-spdif", "rockchip,rk3328-spdif"
> 
> is already in use, but is not added to a document.
> The current fallback string "rockchip,rk3328-spdif" points to a data
> set enum RK_SPDIF_RK3366 in rockchip_spdif.c that is not used both
> in the mainline as in the manufacturer kernel.
> (Of the enum only RK_SPDIF_RK3288 is used.)
> So if the properties don't change we might as well use the first SoC
> in line as fallback string and add the description for rk3308 as:
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip-spdif: add description for rk3308
      commit: a8535ae7034e3547f4f7a8c7ca03a6ee72097fb0

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
