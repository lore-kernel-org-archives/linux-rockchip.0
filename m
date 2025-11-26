Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 536CED111A3
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Nov 2025 20:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9CZ+xIszqnMUz7tBXVoZsfW/9aiF9mvGSX2kZMFY7Rg=; b=i+uTVuOX+QlaAS
	4xJfPU3xMI9qY79JeIETtV7rwqWq7v9hlbx6/qfbhceXxg2ki4wCfXceEnAgC4Jvol+WMipO7BfBp
	JmqK35LTYbHpvUcdhYDKOUXXUm4FxY268A+yqbuoq55OR82PtZoxQ8vpl2EilLoKJYVlEM3ZqwJhQ
	lGYd5lEE6sKZX3/sSn/jNnRpwfSc8znnl4V7Xv63qDKs7GRU4Gha2xrMs8U7jxxl9zJorHYTGwSoR
	d8++jgIgU+Yr5Iv2U6MSHqiRXbNPLKJ5v8ZhYaNYBosZ6jVzmdCenZPn3y8646ZfZ4jdAupRn2Ioj
	hW3H57T3sQ1YT6MYvVxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOMa3-0000000Fe3G-0V49;
	Wed, 26 Nov 2025 20:57:39 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOMa0-0000000Fe2n-2QF0;
	Wed, 26 Nov 2025 20:57:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1764190653;
	bh=VgKQqCzbrBVjIoPtkM4peyHjuiSnnuxQpPfmCkt5H8g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AK+cQKal//7op9uk7mWZA/RS+U/uLhe06dbOACt+KmYYf/INHmiu6KGNsEZ5opcnE
	 FrmzEqCgPLU59sPxYobIkVgzHUCRW413uwe7423r0ReSYJQDSw7bRTgg/GKg0uPbon
	 BUjaspa1qhS5+sbSonDwO8opoVAqmcXEf3ntee2BXcqyhORnds6T0dFTLC6GFW2ISI
	 so0C1ngzO8qetp8KgT0nVYT9pZQ1UInsa5EHbYvcAHcVQ24pBwb51WRTa1+tWr7ATy
	 MMGUA7AmXGKsnWLd6/2AyEYbDnhaH20d5SJ6XoplqPnm1At6up9uHKZltLyMfxHJqX
	 0XvRnVe/QXCDg==
Received: from [10.40.0.100] (185-67-175-126.lampert.tv [185.67.175.126])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 707DE17E0EDB;
	Wed, 26 Nov 2025 21:57:32 +0100 (CET)
Message-ID: <87049b4c-df7d-454b-a7f4-073975a7ee94@collabora.com>
Date: Wed, 26 Nov 2025 21:57:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] media: rockchip: add driver for the rockchip mipi
 csi-2 receiver
To: Frank Li <Frank.li@nxp.com>
Cc: Mehdi Djait <mehdi.djait@linux.intel.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251114-rockchip-mipi-receiver-v2-0-eb9b43377fc4@collabora.com>
 <20251114-rockchip-mipi-receiver-v2-2-eb9b43377fc4@collabora.com>
 <aRyplYZOrGsSxSlp@lizhi-Precision-Tower-5810>
 <554971e1-6fde-4b2c-a2de-fe178358a4e3@collabora.com>
 <aRzub5Ak6DZpO5f/@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <aRzub5Ak6DZpO5f/@lizhi-Precision-Tower-5810>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_125736_829434_58C451AA 
X-CRM114-Status: GOOD (  17.34  )
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

Hi Frank,

On 11/18/25 23:08, Frank Li wrote:
> On Tue, Nov 18, 2025 at 07:59:14PM +0100, Michael Riesch wrote:
>> Hi Frank,
>>
>> On 11/18/25 18:15, Frank Li wrote:
>>> On Tue, Nov 18, 2025 at 12:12:26PM +0100, Michael Riesch via B4 Relay wrote:
>>>> From: Michael Riesch <michael.riesch@collabora.com>
>>>>
>>>> [...]
>>>> +#define CSI2HOST_N_LANES     0x04
>>>> +#define CSI2HOST_CSI2_RESETN 0x10
>>>> +#define CSI2HOST_PHY_STATE   0x14
>>>> +#define CSI2HOST_ERR1	     0x20
>>>> +#define CSI2HOST_ERR2	     0x24
>>>> +#define CSI2HOST_MSK1	     0x28
>>>> +#define CSI2HOST_MSK2	     0x2c
>>>> +#define CSI2HOST_CONTROL     0x40
>>>
>>> Look like that is designware CSI2 controller, can we build common library
>>> for all dwc csi2 controller, instead of every vendor create individual one.
>>>
>>> First try at
>>> https://lore.kernel.org/linux-media/20250821-95_cam-v3-21-c9286fbb34b9@nxp.com/
>>>
>>> Toshiba have similar patch
>>> https://lore.kernel.org/linux-media/aPZd39riAxqfw3mT@lizhi-Precision-Tower-5810/
>>>
>>> Frank
>>
>> This has been discussed already a while ago:
>> https://lore.kernel.org/all/20250507083837.GA11152@pendragon.ideasonboard.com/
> 
> https://lore.kernel.org/all/20250702093806.GF16835@pendragon.ideasonboard.com/
> 
> Laurent Pinchart prevent imx93 DWC CSI2 driver at Jul, your discussion at
> May, I think Laurent Pinchart change the mind.
> 
> We can choose not base on imx6, but we should create a standard dwc2 under
> drivers/media/platform/synopsys/

In principle, I agree with refactoring out common code. However, I am
not sure how similar these IP cores really are. Again, the answer I
received from Rockchip states that this is *not* a Synopsys IP core.

Can you maybe test whether the Rockchip MIPI CSI-2 Receiver driver in
this series works on your hardware? Then we will know if (and what)
parts can be shared.

Best regards,
Michael


> 
> Laurent Pinchart:
> 
> 	Can you provide direction?
> 
> Frank
> 
>>
>> Bottom line from Laurent:
>>
>> "Let's keep this driver Rockchip-specific then. Thanks for checking."
>>
>>>  [...]
>> Best regards,
>> Michael


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
