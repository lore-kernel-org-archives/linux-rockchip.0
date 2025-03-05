Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AC64C282D3
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 09:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LF5+hSRq9kEVzYSuSfgFzYrOIX6Evm2Mwy7Ne93ymUE=; b=4SFHTwE15vInZd
	k+gRXA/E/+SxagZmbwFY09LoD6vvNbgR+nPxCaLet/s84DPviAD54xHEgT3HVtHUz4MC/WLZumKz1
	n3I1m0oy2wf1O5KTKzgzkCvhqU2OVeGvICNKyg4rMRNGsCdyn9/T1V2bRqtMEfKiZilh4nENfIhXD
	hm0Lfi5f3oV7M5xwgnkIL10mLu6ZV3FikD89XDNEq7kP2a6KnTVQ7pmwUN3xtV2f7rlp5QudB2BLV
	bn7jLcZMab3AiJfk16Vhz60Pup5T3PBGyH0kYdEE1PecvYA8Xa51ecwNzTPkx4D/vPp36id3qqjiU
	mPxmLJ4gFItxjxAk6zuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpklt-00000007TDo-10F5;
	Wed, 05 Mar 2025 09:10:33 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpklT-00000007T91-3HvF
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Mar 2025 09:10:09 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741165793; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=QWP26Zpf/2Y+YVxGNVy/zpxg0I2XvqbYey5trGNSVdlRyLXwepeuPjShJ3nCnd2tmlfh7Q2kroKcmovCNY9Bk8ct3c1DOP2V1PFHDWZgJ/w/LY9MQt5+Rz1+jFWXtq2uN0O01Sy6xZ78TnB4CYRUUl9v/9KmvVP3rZqoeX5mtH0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741165793; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=nGcLm1aJv735AsMkQ8JaZt50lGTZiMqT3vbnxNVHSH8=; 
	b=gIjw8o1KIYq6oNnf4mx7VnLqhxuUbKJ5D9MxhHX4kwjLgdVRTyDzMI39j59J3BonK0XpGsoHaoyXeyx7XZ77jjRk+V/BvBltMr59O80pwYaOaWa3VNRmIq4PWqvYLgmT5NiZ0NYka10y/dPBdgoWCPH9xjbunhzdyCzs76HfUcw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741165793;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:From:From:To:To:Cc:Cc:References:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=nGcLm1aJv735AsMkQ8JaZt50lGTZiMqT3vbnxNVHSH8=;
	b=j9t931asQs/qeJBusUKhbqaxDfuHXS94Cmip6FYpoFe55OGi/y1Gt3IzCEV1rmei
	G0CNqOD6nTVXbeuK0skt6c/tB8FLei5A3G1Uz0PkxletcU1ufcJ3oTwinV53tlYn2Y0
	lPoJws3maivbNTXYc5rixt5bKqm/d/J7Ph1Bitog=
Received: by mx.zohomail.com with SMTPS id 1741165792142676.5079231064726;
	Wed, 5 Mar 2025 01:09:52 -0800 (PST)
Message-ID: <47e022f4-1c1b-43c4-8f6c-bc1ff23ad39f@collabora.com>
Date: Wed, 5 Mar 2025 12:09:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 0/6] Add Synopsys DesignWare HDMI RX Controller
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
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
 <88054acf-3051-414c-aef7-4c0f085d5182@collabora.com>
Content-Language: en-US
In-Reply-To: <88054acf-3051-414c-aef7-4c0f085d5182@collabora.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_011007_895738_85E2F508 
X-CRM114-Status: GOOD (  20.42  )
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

On 3/5/25 12:03, Dmitry Osipenko wrote:
> On 3/5/25 11:10, Hans Verkuil wrote:
>> On 05/03/2025 01:59, Tim Surber wrote:
>>> Hi Dmitry,
>>>
>>> I did some more testing. That the Apple TV did not work was a bit 
>>> misleading.
>>>
>>> It was just, that the Apple TV defaulted to 4:4:4 Chroma which does not 
>>> work at all for me. (The same happens using the vendor driver).
>>>
>>> When I changed the EDID to match the vendor driver the HDMI handshake 
>>> happened with 4:2:0 chroma, where I could verify even 4k60fps using your 
>>> driver, nice!
>>>
>>> So the remaining problems I see are:
>>> - 4:4:4 chroma not working in any resolution
>>> - 4:2:2 and RGB not working in 4k60fps (is this a hardware limitation?)
>>>
>>> A possible workaround could be to disable these non supported formats in 
>>> the default EDID.
>> I would like to merge this driver this week, since otherwise it will likely
>> slip to v6.16. So if there is a working EDID, perhaps it can be used for now,
>> and later on it can be patched if there is a better EDID.
>>
>> Would this EDID work? Tim, can you try this?
>>
>> v4l2-ctl --set-edid type=hdmi-4k-600mhz,ycbcr444,ycbcr422
>>
>> Alternatively, if there is indeed a HW limitation that prevents 4kp60 to work,
>> try this:
>>
>> v4l2-ctl --set-edid type=hdmi-4k-300mhz,ycbcr444,ycbcr422
>>
>> Whichever of the two works is what we can use as default EDID.
> 
> Disabling 444 and 422 is an option. Though, they work on my setup at
> 4k@60p.
> 
> In general, it often a challenge to get 4k@60p properly with any of
> these small board devices. 4k@60p works only using a short HDMI cable
> for me. Also, not everyone aware that the micro HDMI adapter needs to be
> compliant with HDMI 2.0 for 4k@60, that's why 300MHz is the default.
> 
> Will be nice to have the good EDID enabled by default in the defconfig.
> Dealing with problems like that will be a headache for majority of
> people, IMO.

BTW, I don't see it as a blocker. Driver works in general, new issues
can be resolved with additional patches.

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
