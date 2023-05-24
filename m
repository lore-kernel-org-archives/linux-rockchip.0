Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48C02C7EE23
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 14:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BN27XlN1gS1NuknlULW+uDpuNa4X00aN7yKm97Vkk+c=; b=hkuaigc4rG9H5B
	Q5wy395XC8e0rN643bjimbbwXOh66gtxc1/6lYQb+cYTwS84hy54NPLWV7xC7QOXFPLNYHpjFYoFQ
	MY/bFguivI2P6e/KVFudzGv9KtNNlTYa4IFEX1XMb6ISzzrBpXePV67y/UMZ8DQtCuBEZud2N5Mjq
	3lf/IqggewqHFj8RbML83J2A+B4EEBh/1jdYoD2k9eK+qGEb4XYEfYrnvwdpLAWHdEbpb0C1PEyxQ
	kJ2iKXwoFwtgt5uYzU3MozoYtsb05F4nRWD15c4hLHlpzDUaUIPRdKhJyixcCo6j5lJdhuxliomrl
	TSkGI50yacW+yNcm6IOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1pMj-00DfG9-0o;
	Wed, 24 May 2023 14:21:25 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1pMf-00DfFU-1h;
	Wed, 24 May 2023 14:21:22 +0000
Received: from [192.168.1.90] (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 21E976605943;
	Wed, 24 May 2023 15:21:19 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684938080;
	bh=hvJt7YjyA2Q4IEqhRK/UATNSLwjQita55Z4eggN8Sec=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DDzb++/BzzeLQ6R1GbLy8KbEJ/cumPebTkGoHFK66V2TcIStLD9HE1jJ65Mw+TNXm
	 FHuMI1xvaX1gXwKK8gUs59pTpEfy/R767P5gpsGCHKsEQHaYOyK+ZDh92x0DrxA1B1
	 clXfs60YXvTlUCIRpicYerr9gLwe7NRdG2HVRWrF7NgjE29JRDiOuXG7KozI33HhhP
	 JiqKZQRe1cdRTmF80vIZ1RYCltHKd0WNtaeanFThogcgHXML635kDFikzXC25mxzzE
	 HFaAmBdC3li0VDw+13iD0t+RQ1HDquIGHsaiAjYdL5OxTcSnGYJGGrx/WNc6G5WakT
	 tVX/oB4i6miUw==
Message-ID: <0f5765e4-484e-2ae7-dc43-c1d6e9e3e1a4@collabora.com>
Date: Wed, 24 May 2023 17:21:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Assign ES8316 MCLK rate on
 rk3588-rock-5b
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
 <20230524074156.147387-4-cristian.ciocaltea@collabora.com>
 <5b3e479f-366b-4de7-a4ec-5348166ebcbc@sirena.org.uk>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <5b3e479f-366b-4de7-a4ec-5348166ebcbc@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_072121_695300_5F953372 
X-CRM114-Status: GOOD (  17.86  )
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

On 5/24/23 13:39, Mark Brown wrote:
> On Wed, May 24, 2023 at 10:41:56AM +0300, Cristian Ciocaltea wrote:
>> The I2S0_8CH_MCLKOUT clock rate on Rock 5B board defaults to 12 MHz and
>> it is used to provide the master clock (MCLK) for the ES8316 audio
>> codec.
>>
>> On sound card initialization, this limits the allowed sample rates
>> according to the MCLK/LRCK ratios supported by the codec, which results
>> in the following non-standard rates: 15625, 30000, 31250, 46875.
>>
>> Hence, the very first access of the sound card fails:
>>
>>   Broken configuration for playback: no configurations available: Invalid argument
>>   Setting of hwparams failed: Invalid argument
>>
>> However, all subsequent attempts will succeed, as the audio graph card
>> will request a correct clock frequency, based on the stream sample rate
>> and the multiplication factor.
>>
>> Assign MCLK to 12.288 MHz, which allows the codec to advertise most of
>> the standard sample rates.
> 
> Surely this is irrelevant with your previous change, and if the clock is
> freely reprogrammable as it sounds even harmful given that it'll
> restrict rates that are not available with the selected MCLK?

As mentioned in the previous patch description, there's a bad timing
with es8316_pcm_startup() being executed before the 2nd call to
es8316_set_dai_sysclk(), with the effect that the new/updated
rate constraints won't be used until the next playback attempt.

Hence the approach here was to ensure the initial list of restricted
rates is sane, by (pre)assigning a proper MCLK. Alternatively, we could
have used an unsupported MCLK and, with the help of the previous patch,
we would have ended up with no restrictions applied on es8316_pcm_startup().

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
