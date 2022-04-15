Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93FA9C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Apr 2022 03:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JCqajQRWAMKIk6Mmh4N8HmC/BST/cFAk147aSPLjIic=; b=z8zUl8v6Ae7dDrzpqKYQJeKDB3
	wXCb8lt18c4o4rY8ynNZrtQi4aTOYUS58E7V3cNW+O9SuUAP/qqvhzaggmiZby41KZAjT2m9ooAjR
	7MbCjBUA1Wn9r5nUDfI2j8FP7rXJZvMDMOz+2y0JT4ctKYkqmBcSttUsyHBXTQg/zryslzVrt7nzs
	vFgLDJFTsNB6rZREHK6Ra3ZXAZvyUDjpVfZRNW0RX+sN5lrbLYhf6vz5DGI6h7FxvgVpKnS+G2Xrz
	y4TNACF7vDyhPO86oK28MPnB7Z49jATtFbgoetmDbfv1zYRaDHOw1zoJzzyYEW2q7htvg3HMgGcQM
	5cQM9BBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfCCJ-008CwY-Bk; Fri, 15 Apr 2022 03:00:35 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfCC6-008CsL-Al; Fri, 15 Apr 2022 03:00:24 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 29FA15C041A;
 Thu, 14 Apr 2022 23:00:16 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 14 Apr 2022 23:00:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm2; t=1649991616; x=
 1650078016; bh=c81yb4gs4vPSvD09caO+6Yh4HWFmhE1EIrMR6dpWA9c=; b=t
 yGizZNogSZlwapKZkW4ul/XSusQCdTds7uhVdlmC7AqjVX83+bKQCCz8sg9TENlj
 aWcCoP/GhO7wX9h2etdwWJHbQOV3fzuWPHVlZEZn3idqTvT4p8pjYMtg883C0fCa
 wvjhYKnpA04UBKkM2REo9yTo3Q62cqRmk9UZM8mmoama2hmQTYEentAqClfFaHnh
 F73LI5cHoj+RSSsqOzul49X/0t/PXaxmPAuB/f4X18nzLWfWH1SHWJDbEFQuGFNS
 VYmWBHACBIVSEn7RX03Pafe++I84LGPfW3NZBFzFLEAL7abEmaN1FtwrzVzWVuzQ
 2H5BkWFj6V2ab6Kg2NVSA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1649991616; x=1650078016; bh=c81yb4gs4vPSv
 D09caO+6Yh4HWFmhE1EIrMR6dpWA9c=; b=fY3/lAHe5+LXFHbnZ0Jgndtqzw/aj
 6aceJj43ShQvYVUBeq33RVKuDbwdJKFuK09VJjIH0oJ6rxA5l1y/2bZ6RKOaoAh+
 kJtYARddl5AIc/a2lN7V6ZmaJS91YYEgWm/aMWAWs4ckrqefc+NKxZRYGpJFd4Kk
 GEhKeScQVBXRDbKh9Lij1jlooMLUnnqjvpoh+6WgxyTGPMmcVDuuvGjbTIlp24MV
 yt0lZ0LchhR3xf6keXRau9WYStEGNVqFgmUfbR17UmNs4YwRqr0k3zUEN1PGoKV3
 nqUX8qW1pkEX1ob7xTIo05zyjtAHu9TQ9FqJ3Tu6+kMBjoI4w+qgwx9kQ==
X-ME-Sender: <xms:vd9YYr3fdwtncq4w3peEI4MlPNiaTJjTgXREm6_HnlNpwES_3nL_xQ>
 <xme:vd9YYqEtQAUk2vRE5PawjIFbxJ00glfQY7N9vLPuD7yuFVA2tUrF349v9Kyz8l2-z
 KgGq7M73Q6WffRwNQ>
X-ME-Received: <xmr:vd9YYr5rHouGfjOujOG6gurE9f7cgGTOL61nh-1yx4kFVvfUscmkzYcL100KlvaaCaHvTv0DMhlZDsZCnfMO85hOiKMd51SG6YCWYdwRF5EjzZiVM73-U0W6cw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudelgedgieegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepuffvfhfhkffffgggjggtgfesthejredttdefjeenucfhrhhomhepufgrmhhu
 vghlucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecugg
 ftrfgrthhtvghrnhepffefvdfhhefhkeefteeiheeftdevuddvleeileegtedtfeejhfej
 kedtffdtjeeknecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghruf
 hiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgr
 nhgurdhorhhg
X-ME-Proxy: <xmx:vd9YYg0AzOwwaOB0AjoWklyD3hn2NyhFl_Nt8ojypyDXj4eyPITPGg>
 <xmx:vd9YYuF3J6mrSwsKYP4lPb5tc52shr221YkRS53v4hpPwIAYBj6rjA>
 <xmx:vd9YYh_N1J2eCMsNOLmvfXn7DsEFGtm1bghrGmRY9Xxftq8YhqhXew>
 <xmx:wN9YYn2c0PSx7fI1dR7ordmD_RVUIGP7cEySgSlm4S-egPtkfDnSEQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 14 Apr 2022 23:00:12 -0400 (EDT)
Subject: Re: [RFC PATCH 02/16] dt-bindings: display: rockchip: Add EBC binding
To: Andreas Kemnade <andreas@kemnade.info>
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Alistair Francis
 <alistair@alistair23.me>, =?UTF-8?Q?Ond=c5=99ej_Jirman?= <x@xff.cz>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, Thierry Reding <thierry.reding@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220413221916.50995-1-samuel@sholland.org>
 <20220413221916.50995-3-samuel@sholland.org> <20220414101548.2b9c3dad@aktux>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <d5bb060e-5964-db0d-ca93-5f73ee9277a3@sholland.org>
Date: Thu, 14 Apr 2022 22:00:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20220414101548.2b9c3dad@aktux>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_200022_960223_CF4530AF 
X-CRM114-Status: GOOD (  26.74  )
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

Hi Andreas,

Thanks for the comments.

On 4/14/22 3:15 AM, Andreas Kemnade wrote:
> Hi Samuel,
> 
> for comparison, here is my submission for the IMX EPDC bindings:
> 
> https://lore.kernel.org/linux-devicetree/20220206080016.796556-2-andreas@kemnade.info/
> 
> On Wed, 13 Apr 2022 17:19:02 -0500
> Samuel Holland <samuel@sholland.org> wrote:
> 
> [...]
> we have sy7636a driver in kernel which should be suitable for powering a EPD
> and temperature measurement. So I would expect that to be 
>> +  io-channels:
>> +    maxItems: 1
>> +    description: I/O channel for panel temperature measurement
>> +
> so how would I reference the hwmon/thermal(-zone) of the sy7636a here?

It seems the consensus is to use a thermal zone for panel temperature, so I will
need to change this.

I think it's best to reference the thermal zone by phandle, not by name, even if
it requires extending the thermal zone API to support this.

>> +  panel-supply:
>> +    description: Regulator supplying the panel's logic voltage
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  vcom-supply:
>> +    description: Regulator supplying the panel's compensation voltage
>> +
>> +  vdrive-supply:
>> +    description: Regulator supplying the panel's gate and source drivers
>> +
> SY7636a has only one logical regulator in kernel for for the latter two.

Both properties could point to the same regulator node if there are more
consumers than regulators. I don't know of a clean way to handle the opposite
situation.

The other benefit of separating out VCOM is that the controller or panel driver
can set a calibrated voltage from e.g. NVMEM or the panel's DT node.

> If we have a separate panel node, than maybe these regulators should go
> there as they belong to the panel as they are powering the panel and
> not the EBC.

I agree on this. It doesn't work with panel-simple, but as Maxime points out, we
have more flexibility with a custom panel driver.

>> +  port:
>> +    $ref: /schemas/graph.yaml#/properties/port
>> +    description: OF graph port for the attached display panel
>> +
> In my approach for the IMX EPDC, (I will send a better commented one
> soon) I have no separate subnode to avoid messing with additional
> display parameters. Not sure what is really better here.

I tried to match the existing abstractions as much as possible, and I saw there
was already an "eink,vb3300-kca" display in panel-simple. I believe that one was
added for the reMarkable 2, where the existing LCD controller driver already
depends on the DRM panel code (although I have concerns about hooking that up to
a driver that doesn't understand EPDs).

My thought here is that the timings for a given panel should be the same across
controllers, both dedicated EPD controllers and LCD controllers. Or at least it
should be possible to derive the timings from some common set of parameters.

The panel node also usually hooks up to the backlight, although I am not sure
that is the right thing to do for EPDs. (And the PineNote has a separate issue
of having two backlights [warm/cool] for one display.)

Regards,
Samuel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
