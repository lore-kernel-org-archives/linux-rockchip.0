Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA587C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 17:38:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A15AE610C7
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 17:38:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A15AE610C7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1eQweTyjOP0v4vGpOmaOq4g4lnWdjknwSyUOrbGHhmM=; b=W7nDRV71UnotD3
	yYtBBq6x0zeFvImLFFG48jXhycgK+DrRFPaFYpzj2N0dhIPw4bmKUh/TQudyFrGI2tw47vwVoLSw9
	uwOHkvZI6mbMIeuKHVSWJmO1Q4NYTGkvKZmBpqMX+rITVZ01GcBsyWWuV8qiiv94s45FRDnFDvaES
	VU0e4QtH8Y/McjPuVJMY4cbzqkuYFpAWHL03lf+VCbW47ThTP1HaRjKC6aXcHQpZEl/QR9Kk7v+vI
	/o9LMHqvTBnli42wVTCg3/zzbxRNOLjITRSHbAQJkCJYgtrm29tCfiBZmgnNrJCy3E51noSO2Wy71
	hkOB/C8GGQVsbQA1RFpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIDuJ-000CJc-JB; Mon, 23 Aug 2021 17:38:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIDtx-000CEi-ID; Mon, 23 Aug 2021 17:38:26 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C65BB61378;
 Mon, 23 Aug 2021 17:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629740305;
 bh=ugd2XJQ8HC698Lo5FzAAM8u1s8A3IJx0MWF/1OqrKIs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iNkcNxjQZiq2NevldjYN9wHhKP3ebqdUG0iSjAdQt6Sc95AA73baqcuH5dazzdh5M
 1+W3RSf0cCaqS/U9vWtgp5xLqmZprDKl1IqJ1NK8jg8LGPDU/ov5cHWaVHLYXDaJUg
 xhV+Vl3A8piyvoK6rtl1XdWYh2YkhcdjO0sU5Jucz2XARITkL1kOCAdnFndupiv2mA
 nFAn47ebtS+3fLrCQgUa1bwOL47bFoj7VhWeEQS3kgKVBCVgNF/T2XfEsKLt+zyOU+
 5I8daYiSjfeh3/6X81s6jo4vptRzwMuIALDEHc7Tm54SE2XmtRo9ng3Gh/u9HF3Jv2
 4TIzDlsYTAgWw==
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Jon Lin <jon.lin@rock-chips.com>
Cc: Mark Brown <broonie@kernel.org>, linux-rockchip@lists.infradead.org,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] spi: rockchip-sfc: Remove redundant IO operations
Date: Mon, 23 Aug 2021 18:37:51 +0100
Message-Id: <162974017517.3286.666459658265810667.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210821124925.6066-1-jon.lin@rock-chips.com>
References: <20210821124925.6066-1-jon.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_103825_657909_833CFCFD 
X-CRM114-Status: GOOD (  11.09  )
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

On Sat, 21 Aug 2021 20:49:25 +0800, Jon Lin wrote:
> Coherent dma buffer is uncached and memcpy is enough.
> 
> 
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: rockchip-sfc: Remove redundant IO operations
      commit: 8d00f9819458b95301e274c6df705df2963ba34f

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
