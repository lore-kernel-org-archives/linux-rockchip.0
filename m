Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1843EC47DA2
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 11:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3UuzHJIB4fRt7f2djHW0Yx+pV92kmJaJjMg4GGuBVQE=; b=KKvLJbCCGXbMUz
	I9i2MLujYOOlGXOxldTOjPhfBjxUSP4KRwi66kdvhrdCDgwpwI9P4W7PwUkUbbbhnwoJy6eK5MO4K
	fKJ+mbZmgwUKrAi/0i+CnfF1jwpy6iS6FwvfZwtiERwF9i0LDqKERt0aJkqXic26t5cXODXeimpjq
	3UcQX4WLkWF57j8f+FW3ayGNKhXPC9IC2EA2dzLUdEPiyhSBn8IhzwPlPEFmclksPQWXoq0jtmaBV
	iyWnM0N70jwGGO6ZHTzZR2LXl78xV1t4CPs4XeZRQm0Xl1Ijkt3wD4n+Adrk6WH0SGRr9qa48kWe4
	3yoeGNFvb/B0v+7rvd7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ3ml-00FOyQ-1b;
	Wed, 17 Jan 2024 11:08:43 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ3mh-00FOxc-1Q;
	Wed, 17 Jan 2024 11:08:40 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.nyi.internal (Postfix) with ESMTP id 957035C00EA;
	Wed, 17 Jan 2024 06:08:38 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 17 Jan 2024 06:08:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1705489718; x=1705576118; bh=311pCe0emuMTLSq5aSul2+ArtVgHggN/
	QoQwzWAyx/w=; b=RWK94BK9Up75d0z4T3fH8SbezeR9kkCVyQa1mdBFfRPyPysT
	/f13KthU/jbDM7CbGXwetakeogGkdnxidca24QhZavTNNvRuKHaZBiQIDoVRsV8M
	42xqgB8Ui/VBJtZqe36WwGE+reWFj30YDC4Rc/m9cRXoe8otdB/OG5HnskTuVSi6
	HCMVnbH9imsXuZNNU6GJAm6zA/7bEyNmJyHmwCN624svDedohfTfJ8rXdTyhYGs+
	0Qd9VqC41Pd0qu6CL/Gb2i8BmoLQXGRA+yVYMtnxPSsOvY0VdNB9oEIEW3gff1yb
	ztJWZ9TrH1GqU3c8uZ74Ya5W6QMJbIGZOvm8ug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705489718; x=
	1705576118; bh=311pCe0emuMTLSq5aSul2+ArtVgHggN/QoQwzWAyx/w=; b=T
	+Sxt6yrMf2wx3FuG3P5iLABde/mbHKsHJjzXwJYUgc7POcKui8b2x+KdntrjCA70
	f5tF4HynfNKEox8BbFBDpnmfo1FvT+DOIV7W+b71FknoYoYNERVDXeHZ4b0XIuDC
	SDJAtXA+vv6B2pS6NXYCHCwdHAXfNLjcwIwJ0UfNO6G+ouL99FLLCRy9UVsVWr0W
	NpzDYL1AP/vsRRN7D2Qx27VWyshTb5bRziOMWdXyQ+ZiqLX5xeObhCLtQ8177qDS
	DJOnT5jYi3PeBNM59hio1nbQzk6vT+yVjyZPs/t10Kd+7uflhUtHHwxKS/yWZHAO
	CRTz9iGg6YLsmRsrHxtYg==
X-ME-Sender: <xms:NbWnZc9z2ebyYqYuUaWAUAbIvlf7uMcGLFRLoPWs03aJ5tyMzmQeTA>
    <xme:NbWnZUtlbDX4CKLnht2nXBSR03r2DxEJOO3BBbqC3nz93Y3uvQhQ629miTz2YaijO
    BglhDwCjA>
X-ME-Received: <xmr:NbWnZSDbrIS0aQUYpXNl2evE6ZZ_8OM8qOPYjWYRPYaQ09Hk6GA2hRiPJEfVEzNxfT9FveUDBc2Iw6amNuD8cZLmJYCWMc59jZNNVg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdejhedgvdefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtjeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepheehgfelhfffgeefkefgjeelkeduleefvefhgfekgfetfeetvdeigeekjedvffeh
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:NrWnZcd429D98SVxN9IeffEiZOk8Fezp7Gyh9W7o6W00dxyjYrq-xA>
    <xmx:NrWnZRP7rEEHxgTvb-j-WI4NubWItTuDyj0xMe5m38vIwUHd3s3jOQ>
    <xmx:NrWnZWmVpNBRIQyNPyWgZiNSmKJcOTT1bHKo0ljga-5tH826TqCz9g>
    <xmx:NrWnZSF45HuA1sNvOXZDYClx-WLZwk2e0f0wHLnnvperGJo0eyy-zg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Jan 2024 06:08:33 -0500 (EST)
Message-ID: <66a63c5f-d26e-400a-910a-3d4ebb11f286@feathertop.org>
Date: Wed, 17 Jan 2024 22:08:31 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: rockchip: Add rk809 support for rk817
 audio codec
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Zhang Qing <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org
References: <20240116084618.3112410-1-tim@feathertop.org>
 <20240116084618.3112410-2-tim@feathertop.org>
 <20240116193701.GA286794-robh@kernel.org>
 <64bce36c-468a-43b6-9d8d-0c20fbd53939@feathertop.org>
 <71413ca3-1a14-4eda-ad29-dc5fcbe5afb3@linaro.org>
 <6d828e2d-a25b-4784-9905-4a264b7d78fe@feathertop.org>
 <d3a764d1-c8bb-4ad6-be0d-40d37efaad69@linaro.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <d3a764d1-c8bb-4ad6-be0d-40d37efaad69@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_030839_584788_DD991EA6 
X-CRM114-Status: GOOD (  12.59  )
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


On 1/17/24 21:57, Krzysztof Kozlowski wrote:
> On 17/01/2024 11:38, Tim Lunn wrote:
>> On 1/17/24 21:12, Krzysztof Kozlowski wrote:
>>> On 17/01/2024 10:37, Tim Lunn wrote:
>>>>> You can drop the description.
>>>> Yes just 1 clock, i will fix this.
>>>>>> +
>>>>>> +  clock-names:
>>>>>> +    description:
>>>>>> +      The clock name for the codec clock.
>>>>> Drop.
>>>> Just drop the description? I dont think can drop the clock names as the
>>>> driver use the name to lookup clock:
>>> Description. But anyway the problem is that adding clocks should be
>>> separate patch with its own explanation.
>>>
>> Right, but I am not actually adding any clocks, just documenting what is
>> already there.
> You are. Binding did not have any clocks, now it has.
Ok, I will split the clocks into a separate patch.
>
>> There are already boards using this codec with rk809 in dts files and is
>> working fine from driver side.
>
>
> Best regards,
> Krzysztof
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
