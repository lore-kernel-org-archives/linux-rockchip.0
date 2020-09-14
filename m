Return-Path: <SRS0=unwu=CX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66963C2BC11
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 14:52:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1A49920715
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 14:52:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="gI/iW9Ac";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5ifTqJK"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1A49920715
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Subject:References:In-Reply-To:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VQplLc/ktzrzZFceuEg2eCMKNiiOzf9XmVRgbAupDHo=; b=gI/iW9Ac4/p5VmW+rP4OLMhIus
	RbUtQgRTooA2+cjEnVXYubTEwxA046ggvpssv+q3vuqLIYrkY50uUTrr+RkP3vIAzgtDT8wJl5XsP
	InURSGV/z4YUIOd+8tnft/H/97IEIVGTqUB0VWEzDfHgEx+i27y8UdmLWp30UVwWqX7OxNoTkzYvT
	mQn9cDg5bRMl3zYnWRGyq8TdVjQ9tehTpfgJ3QvAJSprs4UkF0CmnGCzb+HDwv/wfCZSswdfocHV0
	nVw9my+kK2XwIAPgU2W5tV4CoPQLlEMl//B38sEAhce5MPj6VTmx7DqKqDj9RH0vPVo+hoSDGdH5Q
	NgwHgdGQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHpqM-0004e4-Pv; Mon, 14 Sep 2020 14:52:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHpqH-0004cJ-Le; Mon, 14 Sep 2020 14:52:30 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4EDC6206BE;
 Mon, 14 Sep 2020 14:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600095148;
 bh=cZBt/BYXGb7XMmjCUMxtBhCxEA94mJlipi9mDTE83sM=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=d5ifTqJKTWvyHHbPZgIuvbmo2IFAAh3lnZuFAlkurNs9YbM6I3b7TYOxxRQkq0ylv
 jdXALa300eyOYZ2JtdoC/atrHX17vYwScCc9mQ6nEvHYXz7N4LisLUG6vOMcaUwfpu
 oI0clGmmToM2VuztaBRIfu5ZELNJTeE2KWQl/nzw=
Date: Mon, 14 Sep 2020 15:51:40 +0100
From: Mark Brown <broonie@kernel.org>
To: perex@perex.cz, baijiaju1990@163.com, Tuo Li <tuoli96@outlook.com>,
 lgirdwood@gmail.com, tiwai@suse.com, heiko@sntech.de, islituo@163.com
In-Reply-To: <TY2PR04MB4029799E60A5BCAAD5B7B5BBB8280@TY2PR04MB4029.apcprd04.prod.outlook.com>
References: <TY2PR04MB4029799E60A5BCAAD5B7B5BBB8280@TY2PR04MB4029.apcprd04.prod.outlook.com>
Subject: Re: [PATCH] ALSA: rockchip_i2s: fix a possible divide-by-zero bug in
 rockchip_i2s_hw_params()
Message-Id: <160009506912.439.250974884973031810.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200914_105229_780418_4C552133 
X-CRM114-Status: GOOD (  12.85  )
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
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 7 Sep 2020 21:09:37 +0800, Tuo Li wrote:
> The variable bclk_rate is checked in:
>   if (bclk_rate && mclk_rate % bclk_rate)
> 
> This indicates that bclk_rate can be zero.
> If so, a divide-by-zero bug will occur:
>   div_bclk = mclk_rate / bclk_rate;
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ALSA: rockchip_i2s: fix a possible divide-by-zero bug in rockchip_i2s_hw_params()
      commit: 375e2c352582442783178e6a33c279d6bc9354a2

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
