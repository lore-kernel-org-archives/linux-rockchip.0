Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 436A1C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 09:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yiDApeglN+F4nXbAGt9x4M0JdZF2StejVt4OAhwD2EE=; b=vHFVOZeK3akUL7TmBDfaEFmlsr
	CwlItuW63LfUOeXz85yPj+cneK6PIRz/G3TD+JdolwXR2Inty0sjnJvC02kQTG3bgT1BjAw+sJL1R
	kZ81+yMm4paz83HAqpQTejZSSs2yW/0OjGjK3hU/ar72+bito92tCVoejaIvgQGEa/IltxCFIEx+R
	L/m7UE0RF3H8DTDUIfsioDYnFEyKT9iOD2la6QFB9XyjSiZVDe6kGnL8LV1oa4BQlyuf/maifFjSF
	mlie1CiAQITy3BzeLohfVcb+6y1LDGeRykdetKB3uTgzA8FWOvB1EDMIZsAN6UNmfXlLOqXqJM8Og
	/vCIBAJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLJon-0000000DjDV-1pLi;
	Sun, 23 Jun 2024 09:47:29 +0000
Received: from stravinsky.debian.org ([2001:41b8:202:deb::311:108])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLJoi-0000000DjCA-2Zw9;
	Sun, 23 Jun 2024 09:47:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Reply-To
	:Cc:Content-ID:Content-Description;
	bh=3CsmWJkTCw2jya7yKPckZb+JwnRAGwemKYs+ww4s8j8=; b=S/bjxUlO9I8ybdU5ALqZwHdTFq
	67j1QPwyYKmfNx6/72eTci7oHSYYA2moxwevv+faRy5PI7jIYipdoetqWT8ep0R9prWiwVXl+01Jn
	7xQ4R7f17pmI8e2Key+nixdyPshM/oWS+C0zvEu1SPukzQXrFXIaWDqUxNvhnMqlQtpoyx7wI2/K1
	QbKLRfsNBw8uRuFgGDfhdLEAbIcvpZKQlzoNFDNDVwysvfI+VE/ovki11LFjLfjKO2ygVDxF1jeKg
	OPhrSVenBYPre2t7MzIHSxkXiCawabOVUyUadukZGu21D7JOHtRCWMptN/SjAYOHR03hkISd5mUkr
	tn36iRWg==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128)
	(Exim 4.94.2)
	(envelope-from <ukleinek@debian.org>)
	id 1sLJnr-00HNav-0c; Sun, 23 Jun 2024 09:46:31 +0000
Message-ID: <395f8ebe-1392-4d8f-b91f-c9a8f5f48afe@debian.org>
Date: Sun, 23 Jun 2024 11:46:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] hwrng: add Rockchip SoC hwrng driver
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Daniel Golle <daniel@makrotopia.org>, Aurelien Jarno <aurelien@aurel32.net>,
 Olivia Mackall <olivia@selenic.com>, Herbert Xu
 <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Dragan Simic <dsimic@manjaro.org>,
 Martin Kaiser <martin@kaiser.cx>, Ard Biesheuvel <ardb@kernel.org>,
 linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cover.1719106472.git.daniel@makrotopia.org>
 <240db6e0ab07e8e2a86da99b0fc085eabaf9f0cc.1719106472.git.daniel@makrotopia.org>
 <612bd49c-c44a-41f2-89e9-c96e62e52a0a@kernel.org>
Content-Language: en-US, de-DE
From: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>
In-Reply-To: <612bd49c-c44a-41f2-89e9-c96e62e52a0a@kernel.org>
X-Debian-User: ukleinek
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_024724_695357_51373087 
X-CRM114-Status: GOOD (  10.48  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Krzysztof,

On 6/23/24 09:00, Krzysztof Kozlowski wrote:
> On 23/06/2024 05:33, Daniel Golle wrote:
>> +
>> +	pm_runtime_set_autosuspend_delay(dev, RK_RNG_AUTOSUSPEND_DELAY);
>> +	pm_runtime_use_autosuspend(dev);
>> +	devm_pm_runtime_enable(dev);
>> +
>> +	ret = devm_hwrng_register(dev, &rk_rng->rng);
>> +	if (ret)
>> +		return dev_err_probe(&pdev->dev, ret, "Failed to register Rockchip hwrng\n");
>> +
>> +	dev_dbg(&pdev->dev, "Registered Rockchip hwrng\n");
> 
> Drop, it is not useful at all. Srsly, we had already long enough talk,
 > [...]

And in this long talk using dev_dbg() was one of the suggestions for a 
compromise. For me this is ok.

> There is no single benefit of such debug statement. sysfs already
> provides you this information. Simple entry/exit  is provided by
> tracing. You duplicate existing interfaces without any benefit, because
> this prints nothing more.

There might be a (small) value if you want to know when during boot the 
device becomes available. So having a dev_dbg() that can be enabled 
dynamically (assuming DYNAMIC_DEBUG=y) and isn't in the way otherwise 
might be justified. IMHO a dev_dbg is lightweight enough that *I* won't 
continue the discussion.

Best regards
Uwe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
