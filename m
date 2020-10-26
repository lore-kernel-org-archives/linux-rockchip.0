Return-Path: <SRS0=TxuA=EB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A688CC4363A
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2020 23:48:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E47B20809
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2020 23:48:20 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="s4ou6qme";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="sK4aFfZE"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5E47B20809
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Subject:References:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nydyOjnMD7SuKKbm1824M4LxxOBjElZLzRC5qV8Ou5g=; b=s4ou6qmeRqNiNR3d3MWPj+5JM
	70n+5pYfQlVLOFBa04awlBsU1h2rp4DDFLACO2VO3zy5lcX1bmLYSU77At2aE8BmhMZk7fszYakzD
	B0AUXdNLaDClvZNMbOWQmHEHJEuW0AlBruYIzbCUh+BTuU6HoxZnk2/Ibwk6FyVfoGyGC44i0EdaW
	/boePYiozkAa+FxiSZKl4py5mOajxqSKmozNDslUcZ3ai2rRL9XSrlCE7fdPa5z38d4fiKrfb/nom
	/46whT3l+XNteuXIQ2lM4viyQ6xXq/JLSBdCQY+M/b/PPW4BZI+Ti7BpBKOy3xEVR1y2ygageScTX
	mn1PjxrLQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXCDk-00007d-Ka; Mon, 26 Oct 2020 23:48:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXCDL-0008OP-4s; Mon, 26 Oct 2020 23:47:48 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02DB720720;
 Mon, 26 Oct 2020 23:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603756066;
 bh=w2e6yjuf2xF9EiFramqNdbuttE84vufq0+9dKJ75HMg=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=sK4aFfZEucZfqfvhKgcBh1SPatuRQx92FnxMTdFCp7vNcyCDGPWZedf1Qa0gGdZIx
 fGED9/l6oqrnX9UrP0Fn00pBpvcUi8CefTFTER3jppf7WQjwLkEKlm3CrQHUuYJkpK
 hhZFP6BrS5FMc/+CVpkuzh0rEgOXDMduu/pZ9Bms=
Date: Mon, 26 Oct 2020 23:47:42 +0000
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Alexander Kochetkov <al.kochet@gmail.com>
In-Reply-To: <20201016085014.31667-1-al.kochet@gmail.com>
References: <20201016085014.31667-1-al.kochet@gmail.com>
Subject: Re: [PATCH] spi: rockchip: enable autosuspend feature
Message-Id: <160375605708.32342.3052547021812852625.b4-ty@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201026_194747_318583_A62F25BF 
X-CRM114-Status: GOOD (  13.27  )
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 16 Oct 2020 11:50:14 +0300, Alexander Kochetkov wrote:
> If SPI is used for periodic polling any sensor, significant delays
> sometimes appear. Switching on module clocks during resume lead to delays.
> Enabling autosuspend mode causes the controller to not suspend between
> SPI transfers and the delays disappear.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: rockchip: enable autosuspend feature
      commit: 940f3bbf3dacd6e31e482a10e64c96e69b00dded

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
