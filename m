Return-Path: <SRS0=zXd4=NQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60AEC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Aug 2021 15:19:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6958A610FC
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Aug 2021 15:19:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6958A610FC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XO//nf2SiJjL1BY5nqtwOFQYRurcU6lFzuQ4hKpw7/0=; b=ZIg85tXtgGhK6+
	4vum6xDeOAajaGzSNg95n5gtIyDxOfGFXvY82cc+f5g4oEVHBhanAnUM1XQBHRqxZGDtnyh2pbooH
	b9pqsrTeJuOgcE0R3IQuRntuNYu4b/ha18Rt3GDcuc7stPev/JxAwjvJXzH/baSGsKy4btX26neZP
	VlXa9JbDtHBwQCsFxVL8o7BHlfa3MZYMCja/kAJhZDsVZ2guY7Jput6HEcDMYtAmlHS2IRVq/PMtW
	mBQvxGsedCNEUEJZyhO5UW/TRouvNJPMOTR5jLmCHLogOZ8mmQ6q+YW+Jn4uQ3Grx2x3SMPcJKLdr
	LkoTPJffXgMdJiS6GnNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIugt-007W3y-4y; Wed, 25 Aug 2021 15:19:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIugO-007VuL-JO; Wed, 25 Aug 2021 15:19:18 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5D79161026;
 Wed, 25 Aug 2021 15:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629904755;
 bh=Zr59DmCS8mnXVbmuH6P2mt8dhP1q69YOuESSZTdi8ew=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JcY1/vdTOs7wrr/xUGq6xpWzI27TRn/KiSZJuWTLICUWwAgbhHPAkWbGu/sZAFwfU
 iF2PgI4VR4D187RoaybX2eTZjj1E52g8ZVqtHYR4nl9RoyITTQc4+1gWWejbAP3Hc+
 tITG4a2/xeYWpv+9ARYoF9RZytrScCYKCGFBI/0QynKiIDRuHNKI0QUP9Tnjoqo5ML
 dssm24RNGPcTixwMWZPozBUW+26Q2S/tXhJrEYnIs/2rsFZ3JeP/GL/DhAPJgjt7PR
 JyhMm82dHEYHlbZ4IgLlet7OaOK8waNkMKJiGqQnPi6UoOLRoumlIwMgCT++Pgfyqf
 b+inPjL3lgmYA==
From: Mark Brown <broonie@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Brian Norris <briannorris@chromium.org>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] regulator: vctrl: Avoid lockdep warning in
 enable/disable ops
Date: Wed, 25 Aug 2021 16:18:44 +0100
Message-Id: <162990416261.56667.17765131822739903662.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210825033704.3307263-1-wenst@chromium.org>
References: <20210825033704.3307263-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_081916_717162_CE410C03 
X-CRM114-Status: GOOD (  14.02  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 25 Aug 2021 11:37:02 +0800, Chen-Yu Tsai wrote:
> Here are a couple fixes for vctrl-regulator. This driver is only used
> RK3399-based Chromebooks.
> 
> Patch one fixes a misuse of the regulator API, which was found while
> tracing the code to fix the lockdep warning.
> 
> Patch two fixes a lockdep warning and actual (not easy to reproduce)
> deadlock.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/2] regulator: vctrl: Use locked regulator_get_voltage in probe path
      commit: 98e47570ba985f2310586c80409238200fa3170f
[2/2] regulator: vctrl: Avoid lockdep warning in enable/disable ops
      commit: 21e39809fd7c4b8ff3662f23e0168e87594c8ca8

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
