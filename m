Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDBC5C54E49
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Mar 2024 14:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIw8Tci8M8O2W+buPiFJ+4G1oHut+jwRwGGbxAUBqvw=; b=L/Q6a5x72Foqso
	HtPrtnM/6qN22mNLF6hlNEfr2TvtTUa76HVsUV4lLxLAAhSOwAOqPo2nGZFbcebduHHS4GPA2I47m
	DBQyjO2rLP97ffNCv3L2Khx9tS8sXvPhh8pizMNIjqqVcHTjNmoMpKGqQXS7UuRI042pp6DYRvavd
	s4rTT7M4NOa5j4tkOBld+8DbNCG9cGNkVId2uhHVuW6YKS87zfXClbsqCkSnKgVq8DGldyBHn46S3
	fJzz+3+WRFfuBVaHHreyftSxl+uecMHHICk3sPABIjFaubKmIIETQJ9qW8fUVs4IOmbePsNz9ocTJ
	6DKOK0hVdc++pEEHSHQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhVRy-0000000Dwnh-3nXg;
	Tue, 05 Mar 2024 14:07:22 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhVRu-0000000Dwlt-1CwT;
	Tue, 05 Mar 2024 14:07:20 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id EBD901BF203;
	Tue,  5 Mar 2024 14:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709647632;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3FaprjU0HK8RgVI5QhbgK15bFxzuhMnZNXwzBpwlbU4=;
	b=WJo0BDiGD/G+sF4Dv+i+C8fBUkMXamCRODSXLuTYB82Zv3J/SP5X3GWGiSa7oLX8IvnCkm
	8MlueCfV2b5TdnrfiTitWiQXld19UIRXw6hoQ4P/ZZT8tduz81JhnfrSL4fsmkUAQ5DGeK
	9SO24WkSVVEwAMEsoYFHlrCTRth+s4gzzxJwbWAY2NDUaJbWsp6Ry6/pnfgJzVjnVIQiCd
	zxNfFHODiMpOZnIIXc4uRVVTwjfmN3D7JZ0vyHnK9yJZp7fvfp1Jt1zCKoCciQOgRfZwCy
	q9eH+LkDRnmQJBjG8DNjss8NqWnwWLfQ8P6hXZVmzyqZ/Th6NYOi9Ow2v+G8lg==
Date: Tue, 5 Mar 2024 15:07:09 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko
 Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Thomas
 Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/7] ASoC: rockchip: i2s-tdm: Fix inaccurate sampling
 rates
Message-ID: <20240305150709.02cc4a4e@booty>
In-Reply-To: <2509388.gFrL1EYhQU@archbook>
References: <20240221-rk3308-audio-codec-v3-0-dfa34abfcef6@bootlin.com>
	<20240221-rk3308-audio-codec-v3-1-dfa34abfcef6@bootlin.com>
	<2509388.gFrL1EYhQU@archbook>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_060718_662035_E8021B3C 
X-CRM114-Status: GOOD (  48.39  )
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

Hello Nicolas,

On Mon, 04 Mar 2024 19:40:52 +0100
Nicolas Frattaroli <frattaroli.nicolas@gmail.com> wrote:

[...]

> Hello,
> 
> thank you for your patch series fixing this driver. Since I am the person
> currently listed as the maintainer of it and was the person who originally
> upstreamed it, I think I can provide some insight.
> 
> The mclk calculation and reparenting code indeed originates from the
> downstream driver. As for why that driver did these calculations itself,
> I do not know, but I do know why I did not remove them and rely on the
> CCF to do the reparenting and such for me.
> 
> For starters, I did not know that the DAI and CCF code have functionality
> to automatically reparent clocks based on the audio rate. The reason I did
> not know this is because after looking at the official kernel documentation
> at [1], I did not see any mention of this.
> 
> Similarly, the documentation for the CCF at [2] also makes no mention of
> this feature. In general, guidance for how to properly write a DAI driver
> in the kernel documentation is sparse, though I am extremely grateful to
> broonie for his patience in answering some of my questions I had at the
> time. The input of any of the reviewers at the time, including that of
> Rockchip's engineer who wrote the downstream driver, made it a lot better
> than it initially was.
> 
> Had somebody brought up the existence of this functionality during the
> reviews of this driver's original submission, I would of course have
> fixed this. I do not blame the reviewers or maintainers, as they have
> enough on their plate as-is and don't owe me anything. But I am trying
> to explain the circumstances here that lead to mclk being slightly broken
> for this driver.
> 
> Naturally, now that I know that this functionality does exist, I can do
> a web search (since in-tree documentation search was fruitless) for
> "linux common clock framework reparenting", which as its second result
> brings up a PDF of the slides of a talk by one of your co-workers.[3] The
> slides do not contain the string "reparent", though they do tell me that
> I am able to purchase Linux kernel development training from your
> employer.
> 
> What I'm trying to say here is that I still don't know how the DAI
> reparenting mclk through the CCF works, and I'd probably need to dig
> into the implementation to even know that it does this. Furthermore,
> your employer has an economic incentive to keep this information out
> of the in-tree documentation.

I am very surprised by your opinion about our contributions, as we are
trying to do exactly the opposite, being active members of the
community and giving back in various ways. We are trying to contribute
documentation and share knowledge as well: we release all of our
training materials as Creative Commons (source code included), we
contribute to the Buildroot and Yocto documentation and one of our
colleagues is the maintainer of the Yocto Project documentation. We
also wrote and/or maintain "practical working code examples" such as
the simplest-yocto-setup [1] we recently published and the
zynqmp-pmufw-builder [2], and published some video tutorials (I
remember about one on device tree that seems very appreciated).

[1] https://github.com/bootlin/simplest-yocto-setup/
[2] https://github.com/lucaceresoli/zynqmp-pmufw-builder/

We also contributed to the Documentation directory of the Linux kernel
tree, as git can show:

git shortlog --no-merges -s \
  --author=free-electrons.com --author=bootlin.com \
  -- Documentation/ ':!Documentation/devicetree/bindings/'

Sure, we could do better, but I think we are definitely doing something.

About the CCF specifically, it is surely one of the areas of the kernel
that has insufficient documentation. As a matter of fact, while some
areas are very well documented, for others the only real documentation
is the code. I don't like this fact, some contributions certainly help
but documenting a complex subsystem written by others is definitely a
very relevant effort.

However I don't think the sound documentation should describe clock
reparenting: it is really a CCF feature that is available to any
in-kernel clock user, i.e. pretty much every subsystem. It should
definitely be described in the CCF docs, sure.

> I hope that clears up any confusion as to "why such a complex yet
> incorrect logic is present", and what ultimately lead you to having
> to write this patch.

Thanks for taking time to explain. This is very useful as there might
have been reasons I didn't suspect for the code being as it is.

The fact that you based your work on the downstream vendor kernel (as
I did for the codec driver in this series) is probably the reason. Not
only because the code quality of vendor kernels is sometimes
considerably lower than the mainline kernel, but also because that
driver might have been written when the reparenting logic in the CCF
was not yet as complete and effective as it is today, so chances are
the manual reparenting was correct initially.

Also, the incorrect sampling rate is barely noticeable at most sampling
rates up to 96 kHz, so I'm not blaming anybody for having introduced a
bug that is not visible in all use cases. The only way to not introduce
any bugs is not writing any code.

> As for the patch itself, I'll hopefully get around to testing it this
> week on an RK3566 board, as your cover letter does not list the platforms
> this was tested for regressions on, so I assume you're just using RK3308.

Your testing would be very useful!

And yes, I developed and tested my patch on RK3308. Good point, added
now to my commit log so it will appear in v4.

> The RK356x has some linked clock things going on which mainline does not
> yet model properly as far as I know (which is why some video related clocks
> are marked as critical, and why things like [4] are needed for MIPI-DSI
> output to work. So any changes that might fiddle with the parent clocks
> I'd like to validate.

Right, video clocks are tricky to get right and I've often seen them
require manual hard-coding in the device tree, unfortunately.

> If I don't get around to it in a timely manner
> however, I'm fine with this patch as-is.

Cool, thanks.

Best regards,
Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
