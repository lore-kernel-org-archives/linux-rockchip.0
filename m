Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45FD8C7EE2C
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 May 2023 12:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVL3v6cizQkUpv1RgrS0RUBa3ft75dI8Jz69PxpCUls=; b=aUQXVXtuQHJNgF
	hJKIGfiH4QVCwyVtJiFSqFwUh96TaNQuUePwzPajp1hwlC1tpZO/DnVgLJtlUWYGZotZj8TDCIvbn
	rG8UOud4eUztNOz44CzRsKp6sDCDWQOdml3BrfsuWREVdAYCyKabELqmw/x5LGhYNXNSx+UvRvELj
	9fRxb/C7oq0LCI04zVwieSMr/OpI2S75+kwmnu3CHTb+UDq55EYC4ri52ptSf4sqdcpJXzh5X9T+b
	oBoooVNn6nEHTYvG0MdFtT1d9w4gz7wsmOUZY5ZFnv0bE3OYeXirLydMOZmHZbI3EISwhTK8Jz8k/
	mivzHZltsKJUYJqz8TqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3yqW-00DwKm-14;
	Tue, 30 May 2023 12:53:04 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3yqT-00DwHz-0M;
	Tue, 30 May 2023 12:53:02 +0000
Received: from [192.168.1.90] (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7CAEB6606E99;
	Tue, 30 May 2023 13:52:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685451176;
	bh=YtD3nSjY4iTnCSBgu8N7wfNObpaGkqwVKKaA+WzbZOI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fNBVPndH+6jIxa4ONTK3bRFZC0x+eSJl6YGMX6RRmhrjBLxmkSvP0Rki6hN2YpyTM
	 o/SHDuRMA/+Znnj++LYdUOBwqdI4KWacsrkxaWaNGJ1pDToSU1I7uWOJtpWZtALg8l
	 StoIKZjSWgHr7aN4orkwe1vHVk3uJScz31uMXPoCR//vBN873VniUvnx4KXLRUVRpO
	 pqLO5E0NbZymwcmNVTPx1XJbgi0oPM/QdqIfBFYj1ZGzLrw8j83ezlj6IvK96LH6Tz
	 00O1ewEJfbINAuQgFE0YmFqmGFuLnoENxarkFCbZdw7mkYIOivtGIUKRVma/txelgX
	 csPWSid6A0Whw==
Message-ID: <8247660d-4b95-0ed7-9444-b23da23560ac@collabora.com>
Date: Tue, 30 May 2023 15:52:52 +0300
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
 <3c6b67a4-4892-0057-3dfc-65ed6c7ebc37@collabora.com>
 <4a3f54a3-2cbd-4a22-9742-9ba60e78643b@sirena.org.uk>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <4a3f54a3-2cbd-4a22-9742-9ba60e78643b@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_055301_314597_34224972 
X-CRM114-Status: GOOD (  14.82  )
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

On 5/30/23 14:36, Mark Brown wrote:
> On Fri, May 26, 2023 at 09:11:49PM +0300, Cristian Ciocaltea wrote:
> 
>> -1.5 dB  |  50-51 %
>> -0.0 dB  |  50-51 %
> 
>> So it seems the specs are correct, and the problem is the hardware default.
> 
>> Is there a better approach to handle this than extending the volume range?
> 
> The other option would be to change the value in the register during
> probe to one that's in range, that wouldn't stop any existing saved
> settings from generating errors but would mean there wouldn't be any new
> ones.  Either approach is probably fine.

Thanks, I will prepare v2 and keep the current approach.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
