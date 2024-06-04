Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 632AFC25B78
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 20:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UonhFgy/bMM3huAjxXVKlsvpe7w9KMx7MtZDkn9glNw=; b=fkfgBG/+bdgXDl
	Z4caUhSTT2xl0Hjhz3/J6lQsksJV6HYGs/2anSj+WSiDJdtUiUhg3VpqAA0haxrUIOj+XCLL8d6s9
	bXL4P8QwWtk6xgsOx03sWUahqd6uSUDNdg16sswZned3188Z3xGuuHX8KZI6Mr5GTuREAhQcbBdUI
	n2trlra47zOLcRLcVuoZ3BMqXfV6ttaFJ8FvTkacMWWouJVWDSP7ydntNhLwRSp7VXfENWyBuQNqQ
	4Eq3KdgrCfq2J0F6C3RHeyCjhiSNSUzHo/vqP5Ky9GuKSMC7FF/1EyL9JiEoPtkrYwNtsJDzfT5xF
	6GDZhWJofp5F2JA+Cu9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEar8-00000003j9r-0zgv;
	Tue, 04 Jun 2024 20:34:06 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEar4-00000003j9J-2mvE;
	Tue, 04 Jun 2024 20:34:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717533240;
	bh=DGRk2KL67t9VkY5knJeHJz8Kj6zzYl0wNDrodX+q0bg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=M+lO5r/EfrOkUovxHuy+9LLJ5CysdDrARL/KEkpsogK8HV7b4F3dW4qZBRoOR5DEq
	 Pba31mMaRxAa/jPV9+4egk3wLjl1qRja1NK1WQNGq1UDEoFX/d3YheqpRTOaEPQyk2
	 NlUvvG1q8TsiuX4dMPu1L9vQd+O8CT5rPQwqqmX5jmL0gorfE5LI/YE9jtC1p9wH80
	 KxWItm9eC5FbPULoffmMIerqkjTetvrj1SjP9n0SXCoPNc7fF6BoaL3R77glpftNvs
	 0Q9B8sMNPSfC/+dk5PemJC73abdr6X/n/Y2U4XssuKHgaSDn5/5TZg0ImFfA3BZ6vq
	 WetVJydhHKV9g==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 976803782137;
	Tue,  4 Jun 2024 20:33:58 +0000 (UTC)
Message-ID: <b8066150-c147-4eb6-9f7a-2bd0268c274e@collabora.com>
Date: Tue, 4 Jun 2024 23:33:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/14] Add initial support for the Rockchip RK3588 HDMI TX
 Controller
To: neil.armstrong@linaro.org, Heiko Stuebner <heiko@sntech.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <a4b22708-e85d-448a-8145-244b49bca053@linaro.org>
 <ab0a6372-091b-4293-8907-a4b3ff4845c0@rock-chips.com>
 <11359776.NyiUUSuA9g@phil> <ef60403f-078f-411a-867b-9b551e863f56@linaro.org>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <ef60403f-078f-411a-867b-9b551e863f56@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_133402_964513_7A733CC4 
X-CRM114-Status: GOOD (  24.69  )
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

On 6/3/24 4:08 PM, neil.armstrong@linaro.org wrote:
> Hi,
> 
> On 03/06/2024 15:03, Heiko Stuebner wrote:
>> Am Montag, 3. Juni 2024, 14:14:17 CEST schrieb Andy Yan:
>>> Hi Neil:
>>>
>>> On 6/3/24 16:55, Neil Armstrong wrote:
>>>> Hi Christian,
>>>>
>>>> On 01/06/2024 15:12, Cristian Ciocaltea wrote:
>>>>> The RK3588 SoC family integrates a Quad-Pixel (QP) variant of the
>>>>> Synopsys DesignWare HDMI TX controller used in the previous SoCs.
>>>>>
>>>>> It is HDMI 2.1 compliant and supports the following features, among
>>>>> others:
>>>>>
>>>> .
>>>>
>>>> ..
>>>>
>>>>> * SCDC I2C DDC access
>>>>> * TMDS Scrambler enabling 2160p@60Hz with RGB/YCbCr4:4:4
>>>>> * YCbCr4:2:0 enabling 2160p@60Hz at lower HDMI link speeds
>>>>> * Multi-stream audio
>>>>> * Enhanced Audio Return Channel (EARC)
>>>> -> Those features were already supported by the HDMI 2.0a compliant
>>>> HW, just
>>>> list the _new_ features for HDMI 2.1
>>>>
>>>> I did a quick review of your patchset and I don't understand why you
>>>> need
>>>> to add a separate dw-hdmi-qp.c since you only need simple variants
>>>> of the I2C
>>>> bus, infoframe and bridge setup.
>>>>
>>>> Can you elaborate further ? isn't this Quad-Pixel (QP) TX controller
>>>> version
>>>> detectable at runtime ?
>>>>
>>>> I would prefer to keep a single dw-hdmi driver if possible.
>>>
>>>
>>>
>>> The QP HDMI controller is a completely different variant with totally
>>> different
>>> registers layout, see PATCH 13/14.
>>> I think make it a separate driver will be easier for development and
>>> maintenance.
>>
>> I'm with Andy here. Trying to navigate a driver for two IP blocks really
>> sounds taxing especially when both are so different.

Thank you all for the valuable feedback!

> I agree, I just wanted more details than "variant of the
> Synopsys DesignWare HDMI TX controller", if the register mapping is 100%
> different, and does not match at all with the old IP, then it's indeed time
> to make a brand new driver, but instead of doing a mix up, it's time to
> extract
> the dw-hdmi code that could be common helpers into a dw-hdmi-common module
> and use them.

Sounds good, will handle this in v2.

> As I see, no "driver" code can be shared, only DRM plumbings, so perhaps
> those
> plumbing code should go into the DRM core ?
> 
> In any case, please add more details on the cover letter, including the
> detailed
> HW differrence and the design you chose so support this new IP.

Andy, could you please help with a summary of the HW changes?
The information I could provide is rather limited, since I don't have
access to any DW IP datasheets and I'm also not familiar enough with the
old variant.

> Neil
> 
>>
>> Synopsis also created a new dsi controller for the DSI2 standard, with
>> a vastly different registers layout.
>>
>> I guess at some point there is time to say this really is a new IP ;-) .
>>
>>
>> Though while on that thought, I don't fully understand why both a
>> compiled
>> under the dw_hdmi kconfig symbol. People going for a minimal kernel might
>> want one or the other, but not both for their specific board.

Indeed, it makes sense to have a dedicated Kconfig option. This is
mostly a leftover from downstream implementation, will fix in v2.

Thanks again,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
