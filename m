Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7B09C77B7A
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 May 2023 18:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmyyK1S+PcVrXMuQlSl21lSh6ghYzP/AhkthD0/jgPk=; b=1ZJxy+uBUFPOr5
	gtO4XvAcdK5UoqQzm4v/bRKp7XwICqx+sTF00z8eUtEea3bn9w4kQ9Pu36Ic+IoSCQXm3V3lV8s1N
	4Zz3CSmLtGSuKElzTuVH3tE9BsfJBcYQCWsnp2pjp6wmn5PO7CaNcNdB4Bh5HxO6rSjQksxzGMst5
	BWorZELxF6QHxg1daLUx9xSRBUAEsE3liE6wkqEpzpVSEbM882Hwujvv/YoL7qAWG9P1omPkZIGe9
	++iVf1KmEPFHSEnbyRUwT+HMBlASuNUEPuHEybvQ+PU9XTCjMQNsZWexydP9q2x3pg1zt0r3mTCSB
	o3FNjn14ko+iYGiO1/Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2buy-003Qu2-1J;
	Fri, 26 May 2023 18:12:00 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2buu-003Qrt-2P;
	Fri, 26 May 2023 18:11:58 +0000
Received: from [192.168.1.90] (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D2CE16602338;
	Fri, 26 May 2023 19:11:52 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685124713;
	bh=5Vp0v9CQLgFPufyyf5L+TVgF51WKnOgrP8cqPyMHWyw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PNXyJBIaI3wNOlNxvKig3Nns9gBXhDCdLGhkEmjiFdPPoMO4CmGS3ZXP6elNmMnSM
	 FBmzApVAKsvs1x8/kOWvEXfa5KNUYMmPh/PufmYGe+VGUA9yxNsQtPsV5kC4euP6vL
	 JMMSZa5ZaG2pye7g1wfIkffFAc4gvY/ts10Zso449C/OgpFh4TZHtQdXCQL31GIcsN
	 50CnWrHV2YdS7H5H6fYSRLTBjQGpJkgnc0h+iXMQS7RXZEcgLq7R5OXFWL1S2Bcbu2
	 0GTxa09nFJwItjotmi3xjGeDYkA6ckvWew7739V2zIcjbj+PM5EeW7wvKzNXVnbPKp
	 bqB/KdMupOOuQ==
Message-ID: <3c6b67a4-4892-0057-3dfc-65ed6c7ebc37@collabora.com>
Date: Fri, 26 May 2023 21:11:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/3] ASoC: es8316: Increment max value for ALC Capture
 Target Volume control
Content-Language: en-US
To: Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Zhu Ning <zhuning0077@gmail.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 David Yang <yangxiaohua@everest-semi.com>, Daniel Drake
 <drake@endlessm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 kernel@collabora.com
References: <20230524074156.147387-1-cristian.ciocaltea@collabora.com>
 <20230524074156.147387-2-cristian.ciocaltea@collabora.com>
 <5dbcbf84-602a-44de-ad99-268d4d5b4b2f@sirena.org.uk>
 <cfa23203-1626-440b-ec27-efe56cb297d2@collabora.com>
 <01fd1a9f-56c7-4864-bb2b-8b004284c8cc@sirena.org.uk>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <01fd1a9f-56c7-4864-bb2b-8b004284c8cc@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_111157_000830_7C621CA1 
X-CRM114-Status: GOOD (  18.50  )
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

On 5/24/23 16:59, Mark Brown wrote:
> On Wed, May 24, 2023 at 04:49:37PM +0300, Cristian Ciocaltea wrote:
>> On 5/24/23 13:30, Mark Brown wrote:
> 
>>> Presumably you can check the effects of changing the value?  It seems
>>> plausible that what's written in the code might be accurate and the
>>> higher values might actually change the gain but it'd be better to
>>> check.
> 
>> I haven't noticed a (measurable) change in gain when switching between
>> 10 and 11, but my testing equipment is also not that great. Will try to
>> improve the tests accuracy.
> 
> I'd expect it should be really obvious with a scope if you've got one?
> Testing with something consistent like a sine wave (eg, from
> speaker-test) should also make a 1.5dB difference noticable enough to
> check if there's at least a volume change by ear even if you can't
> specifically quantify it.

Luckily arecord & aplay provide VU meter support (via -V,
--vumeter=TYPE'), so I could easily verify this without using any
additional tools:

 Volume  |  VU meter
---------+----------
-6.0 dB  |  30-31 %
-4.5 dB  |  35-36 %
-3.0 dB  |  42-43 %
-1.5 dB  |  50-51 %
-0.0 dB  |  50-51 %

So it seems the specs are correct, and the problem is the hardware default.

Is there a better approach to handle this than extending the volume range?

Regards,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
