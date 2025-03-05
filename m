Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28B0EC19F32
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 09:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NIl0V45BJ+whCT7Qh/HwRgjWUNZbletvtHX9RCk9hw8=; b=QUEoWJ6gBaCzM9
	7t5NMmJEVHVqg7IILbEg5o1y14y7wDa2ymWVJWONQF4oofwFulXfgy/8N6gO8tNCNPnMccuhBaTcj
	dNJxau1FdjD/ntSjOFRMSP4krgi2D5X0t2tlVvHo1OaV49fwoaNxUWrLCYaD57xlxMV+enIzPMywL
	Y2pbSKOCznrx5HNqtK/he2OYP1A/USH54FLoqOAS0hiAw/yICcuq8zjdAJpWLNlhktMDfJoH8e1nu
	mEGwYicyrm1vmWo3NbPTBNcBefie5g+7n4e6bmnBJ1+VStZnDrFTqnkzOY8ect2aWO1PkY9F0w2VS
	aS5EZfX/USMokkDvU4XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpkls-00000007TDf-3RZg;
	Wed, 05 Mar 2025 09:10:32 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpkfW-00000007RpA-2Vou
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Mar 2025 09:03:59 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741165421; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=aML6y84URqQeEpfaGBbocAOoCx9shK7lRLeSoL7zs5SX1eAi6LRKAG6UI4Di7Arvi4hBDCRvQNQY2QzEonJ9e8ueAyxRozm/BByW/Mwp7JxLk7NWxqlqzlZG6Hgs4UyJd8bKOeErF7BkfGaex0X2Cwg2a4hG/P8wZWpMAKQgYmE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741165421; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=fyOnL4r76M4sHB9HhMIqMpDlTkHpMyvnwL+qPFwOmHY=; 
	b=oDbow1UE+BO/cf067TxihaoptsAymW8fmn0K/GWMOsQcewdMgSnRY8WL/r6MzQK2jEORnLKABs/+d2dpVsB6sKOrGVcbb5GoMfvadhoVxOjP0rkp9WEmQrfSAX3BkhCQzklrHMQPJU29lgzhUSNRt+RgiQBUFIcawqpO/s56AuM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741165421;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=fyOnL4r76M4sHB9HhMIqMpDlTkHpMyvnwL+qPFwOmHY=;
	b=bLjhNTZXN88/2j7YByNhNOVK6VW1ivb+lAa2CKiF/l1zS2F9ScBlygN+utrENZI5
	GepaEGfOUzYlfgTyLOgoyKqD6unUF8OQcNEs2XeSQHrv7W7b60GFHPcvLYVPwmyPI6l
	j11vOC6LEwLoY3gl5lo7lnSQrYsVA+P44FEhQPgI=
Received: by mx.zohomail.com with SMTPS id 1741165419515412.81218800288195;
	Wed, 5 Mar 2025 01:03:39 -0800 (PST)
Message-ID: <88054acf-3051-414c-aef7-4c0f085d5182@collabora.com>
Date: Wed, 5 Mar 2025 12:03:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 0/6] Add Synopsys DesignWare HDMI RX Controller
To: Hans Verkuil <hverkuil@xs4all.nl>, Tim Surber <me@timsurber.de>,
 Shreeya Patel <shreeya.patel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, jose.abreu@synopsys.com,
 nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Diederik de Haas <didi.debian@cknow.org>
References: <20250304085819.108067-1-dmitry.osipenko@collabora.com>
 <78ff36f6-01a7-4df4-b653-c4509fb93af4@timsurber.de>
 <1039aca7-89b9-44ef-9775-e7852e956362@timsurber.de>
 <9b4b1e65-127d-422b-a359-a1d8e25652f9@xs4all.nl>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <9b4b1e65-127d-422b-a359-a1d8e25652f9@xs4all.nl>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_010358_730535_66BB1261 
X-CRM114-Status: GOOD (  20.03  )
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

On 3/5/25 11:10, Hans Verkuil wrote:
> On 05/03/2025 01:59, Tim Surber wrote:
>> Hi Dmitry,
>>
>> I did some more testing. That the Apple TV did not work was a bit 
>> misleading.
>>
>> It was just, that the Apple TV defaulted to 4:4:4 Chroma which does not 
>> work at all for me. (The same happens using the vendor driver).
>>
>> When I changed the EDID to match the vendor driver the HDMI handshake 
>> happened with 4:2:0 chroma, where I could verify even 4k60fps using your 
>> driver, nice!
>>
>> So the remaining problems I see are:
>> - 4:4:4 chroma not working in any resolution
>> - 4:2:2 and RGB not working in 4k60fps (is this a hardware limitation?)
>>
>> A possible workaround could be to disable these non supported formats in 
>> the default EDID.
> I would like to merge this driver this week, since otherwise it will likely
> slip to v6.16. So if there is a working EDID, perhaps it can be used for now,
> and later on it can be patched if there is a better EDID.
> 
> Would this EDID work? Tim, can you try this?
> 
> v4l2-ctl --set-edid type=hdmi-4k-600mhz,ycbcr444,ycbcr422
> 
> Alternatively, if there is indeed a HW limitation that prevents 4kp60 to work,
> try this:
> 
> v4l2-ctl --set-edid type=hdmi-4k-300mhz,ycbcr444,ycbcr422
> 
> Whichever of the two works is what we can use as default EDID.

Disabling 444 and 422 is an option. Though, they work on my setup at
4k@60p.

In general, it often a challenge to get 4k@60p properly with any of
these small board devices. 4k@60p works only using a short HDMI cable
for me. Also, not everyone aware that the micro HDMI adapter needs to be
compliant with HDMI 2.0 for 4k@60, that's why 300MHz is the default.

Will be nice to have the good EDID enabled by default in the defconfig.
Dealing with problems like that will be a headache for majority of
people, IMO.

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
