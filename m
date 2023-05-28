Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 206C7C7EE29
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 May 2023 21:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8vRHENNEbwkQWi6y7JjHqoIYz0SsCwDH27CBAdQ1QQ=; b=FJVlsZHu1lnvaZ
	8jRJiwDR1n6XrU+O9ZBzgIybFgafadj4mGZ7iLSZnIfvZK0FYY99b6WFL+N8BgSAJG98+suTQ/Qe8
	9u9kj6iL8rfJ0jI103758mHkozcwYAEWEwysrYbNW9zMXItx9OtZmUvCIcj2WzcfkHZJF2eRrFpsH
	uqAn00JZm9VM5V6RSQPAiTwwnpCDpYM0GqONOY+0I1qHdgBnLOhiQqi4uQqPXmXskIZI576FVlOZK
	J/7U3qg0fbWibtxt9p+4NYEDVnDtezF/dBLlASwGhnJZxcRpnOhw6h/HgU1usRLOC8eW0wgHcNwPI
	C2n2+Y7gbfgk7R2dWK8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3NtY-008QU2-14;
	Sun, 28 May 2023 21:25:44 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3NtV-008QTO-1J;
	Sun, 28 May 2023 21:25:42 +0000
Received: from [IPV6:2405:201:0:21ea:e49:10dd:40c0:e842] (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C6BA566028F5;
	Sun, 28 May 2023 22:25:37 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685309140;
	bh=WkZ6oYe+0LR8m4rMtcElrRUUrT+hfU8TiYr3DHMTugg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=RTBgXrB/mf3M7/iO+TLsMxUj1P4aQ83D1eWUFeIY78pLRXJO4lv6VIlq7X2tIhvJ/
	 Juuor+larkNDkM7kSVgtvYIC61QZ690btJ2BT8hoQrY4jJPyC9l22GXdi1HP8eh1x9
	 Z3EvLU6plFlc90o2NR+fpWkgRrKwM/DYeiXcOY9cBSVf9lSqQ1AiYQcTVRYUjeeB9j
	 TxP7/Lxok82+4XW38tI41IdHLyEfBSS0FJSIkJCEd8KtVPPJa/XVMaoOub/9gFgNus
	 JlavK+SQbcL2U29r+5S8JFjzB1KTtWa+tPP+HPnS5682w7vH5vEpwmUob8LXx0LAD5
	 /JGAzhsmYbgxg==
Message-ID: <b11c2009-754d-6ca2-6d0e-9c303f4da9e8@collabora.com>
Date: Mon, 29 May 2023 02:55:32 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 0/8] RK3588 ADC support
Content-Language: en-US
To: Jonathan Cameron <jic23@kernel.org>
Cc: lars@metafoo.de, heiko@sntech.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com
References: <20230525212712.255406-1-shreeya.patel@collabora.com>
 <20230528174614.4dc5cd01@jic23-huawei>
From: Shreeya Patel <shreeya.patel@collabora.com>
In-Reply-To: <20230528174614.4dc5cd01@jic23-huawei>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230528_142541_601392_117EF5F0 
X-CRM114-Status: GOOD (  18.67  )
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


On 28/05/23 22:16, Jonathan Cameron wrote:
> On Fri, 26 May 2023 02:57:04 +0530
> Shreeya Patel <shreeya.patel@collabora.com> wrote:
>
>> This patch series adds ADC support for RK3588 and updates
>> the DT bindings for the same.
>>
>> To test ADC support on Rock 5B board, a voltage divider circuit
>> was created using the gpio pin 22 ( SARADC_IN4 ) and few more
>> tests were ran for testing the buffer and trigger support using
>> the iio_generic_buffer tool.
>>
> FWIW I don't have any additional comments on this beyond agreeing
> those made by others need addressing.
>
> Fingers crossed for v3.

Thanks Jonathan, I'll send a v3 after making the changes mentioned by 
Dmitry and Angelo.


Regards,
Shreeya Patel

>
> Jonathan
>
>> Changes in v2
>>    - Add from address in patches 1 and 2.
>>    - Create separate patches for adding new device support and changes to
>>      the old device code.
>>    - Make use of FIELD_PREP in patch 2.
>>    - Move the enablement of clocks at it's original position in patch 3
>>    - Add Reviewed-by tag in patches 4 and 5.
>>    - Add an Acked-by tag in patch 8.
>>
>> Shreeya Patel (8):
>>    iio: adc: rockchip_saradc: Add callback functions
>>    iio: adc: rockchip_saradc: Add support for RK3588
>>    iio: adc: rockchip_saradc: Make use of devm_clk_get_enabled
>>    iio: adc: rockchip_saradc: Use of_device_get_match_data
>>    iio: adc: rockchip_saradc: Match alignment with open parenthesis
>>    iio: adc: rockchip_saradc: Use dev_err_probe
>>    arm64: dts: rockchip: Add DT node for ADC support in RK3588
>>    dt-bindings: iio: adc: Add rockchip,rk3588-saradc string
>>
>>   .../bindings/iio/adc/rockchip-saradc.yaml     |   1 +
>>   arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  12 +
>>   drivers/iio/adc/rockchip_saradc.c             | 262 +++++++++++-------
>>   3 files changed, 168 insertions(+), 107 deletions(-)
>>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
