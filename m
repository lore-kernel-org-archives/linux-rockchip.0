Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 703BCCA6015
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Oct 2026 06:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yCfQ2gua6fPkR1TFFdZtNFhrhA1KQ5LcK7JVRCQEjYA=; b=3LxUpbjcroj/Ae
	WvEHWWSD5qSFjW34a4M1GJHpLwPOiQ7q8vlsh0jQqBUVCrdPG7gBhSNEAWUgZcl9LQdZgrRoJpG2p
	FBp2hoLPDZepqVOPdo7h+0/4Th8/sTdXitgNxJ5kf1HWfw41fE+1xSFPiPcwrydgXbPrvyaE1r3Mm
	qjKuE+3+xc7lpBmIfN3C8kr3SbfxpF7A/FJHxuj1kVdItGPcYmNPGUM0DWbGRBBB5+Ee1gza3bi5v
	RZh5HVy/0ITUvaohKqtZxGOWb7d5lUjDLwyiz4iWESMf2kPXADn4Hruo4Htuvp5MAnoDR1DBaJ86P
	SUqG8t+DZWTEUSiMTwUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF3om-00000005b6A-2rAY;
	Fri, 09 Oct 2026 06:10:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF3ol-00000005b5I-290u;
	Fri, 09 Oct 2026 06:10:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EF04160DC4;
	Fri,  9 Oct 2026 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F31A1F000FF;
	Fri,  9 Oct 2026 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791526254;
	bh=c86SoGE1Kg7yW8Xxg7bYgRohDAmBjRHhxs1LV7dRFlk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eo6RksSSxkU6k+l+kl0JUmYd0VQm4MWjr/ltDGnWYAqesoJZtgjTrPdZF6rzLSsi7
	 NNskKdRM4s2KdwrDLFtm6BA900F9OTX1bzYgarfFmdn3uGvYZi1wc3rhWF+iHy3alJ
	 rRcaVG3Lu6FAMvizi6/x9uYauef+8ajhuPrdDeuX/Rha5Yaf7fxuvTyqpORpPwxAre
	 cOo4l575Q6l94S0z4AhLS6OgYcW4Uvunv40Vv6aOfIBzcbnST1xM5nqXyBRbMDPe6C
	 XXocUbThrD1ewcu1hcs5IsR0/HkFXdkLctICsrRcT2rwSgGl7lJV0wrkHZM8CWTcb9
	 WZkU+y+QNsqPA==
Date: Fri, 9 Oct 2026 08:10:52 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Haotian Zhang <vulab@iscas.ac.cn>
Cc: Takashi Iwai <tiwai@suse.com>, linux-arm-kernel@lists.infradead.org, 
	Romain Perier <romain.perier@collabora.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	linux-rockchip@lists.infradead.org, Jaroslav Kysela <perex@perex.cz>, 
	Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-sound@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ASoC: rockchip: fix device node reference leak in
 rk3288_hdmi_analog
Message-ID: <20261009-formidable-ubiquitous-buffalo-2127bc@quoll>
References: <20261008181459.2762862-1-vulab@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261008181459.2762862-1-vulab@iscas.ac.cn>
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


On Fri, 09 Oct 2026 02:14:59 +0800, Haotian Zhang wrote:
> snd_rk_mc_probe() acquires references to the codec and CPU device nodes
> with of_parse_phandle() and stores them in the static rk_dailink, but the
> driver never calls of_node_put() on them. All error paths and the success
> path simply return, and the driver has no remove callback, so the
> references are leaked for the whole lifetime of the card and each failed
> or repeated probe leaks another pair. The same pattern was fixed for the
> sibling rockchip_rt5645.c driver.
> 
> Release the codec and CPU device nodes on every probe error path and in a
> new remove callback, and also drop the extra reference placed in args.np
> by of_parse_phandle_with_fixed_args().
> 
> Fixes: eaae2ea73593 ("ASoC: rockchip: Add machine driver for RK3288 boards that use analog/HDMI")
> Assisted-by: DeepSeek-V4.1-Flash
> Signed-off-by: Haotian Zhang <vulab@iscas.ac.cn>
> ---
>  sound/soc/rockchip/rk3288_hdmi_analog.c | 42 +++++++++++++++++++------
>  1 file changed, 33 insertions(+), 9 deletions(-)
> 



Multiple things here:
1. Your team ignored completely previous feedback.

2. You use multiple identities with this email, thus I actually doubt we speak
   with actual person.

3. Finally, same feedback:
You sent multiple independent patches, to multiple independent
subsystems. The amount of these patches clearly suggest this was
AI generated and most likely not tested.

More importantly, you sent all this work without properly organizing
relevant patches into patchsets. This makes reviewing difficult
and might cause multiple reviewers to address the same issue.
Replying to the entire set is impossible and requires handling each
patch independently, instead of applying or discarding the set.
Maintainers also won't see the bigger picture of your work. Quite
worrying.

This is on the verge of hostile patch: bomb us with so many
contributions, we won't be able to handle them in efficient manner,
like responding ONCE to ask you to slow down.  Considering all this
is untested and LLM generated, I have even more doubts whether this
should be considered for review.

Please read kernel documentation BEFORE posting more work. It will
explain you how to identify subsystems, how to organize your work per
subsystem (so a patchset grouping multiple patches with a short cover
letter), how to document usage of LLM and how what you should not do
if this was posted in a good faith.

Best regards,
Krzysztof





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
