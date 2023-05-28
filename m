Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E40AC77B7C
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 May 2023 21:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a054vO9X8vLc3bmZe/9dX582ch70Y4qe4Va7Yy8pXB0=; b=G895xWjAPtaTPo
	MnUYS37jDOkLm1S5ar5wMD6f5R3hyuqs0idvcFsfwRRkAhliAg38AKx7SzoDvCEXBHKBDugL0/ydg
	g5CXO1kGp9wcHNJhrVUOX5cyPxx1ar2kOORWazyNggLZhRLw+pqWMtTdH1Ml2vTSwhOvb53r89t+6
	7HSlrndplJQjuIEZ/+B5gy3lZO4QxtsaREokReZKfGwJSRqVm9NjoBR6FTtKgJmWOxPKDTblpZHb3
	MYb6MMQwblt+XwcyAokQ/nKBB+TmAoHgueAMWxshZYbtwde7g+/Yh+y/FVvM8nK0yMPxyvTxfMxUL
	2QjLnvRRJ0j6SWCbdgJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3Nqe-008QER-2M;
	Sun, 28 May 2023 21:22:44 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3Nqa-008QD2-2f;
	Sun, 28 May 2023 21:22:42 +0000
Received: from [IPV6:2405:201:0:21ea:e49:10dd:40c0:e842] (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B151E66028F5;
	Sun, 28 May 2023 22:22:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685308953;
	bh=1lLaRddepgjlJW8m/FCwzogjASyCbCW3Pl3FgHcbwsk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kWKimZgJE/wgD8bXw+oYGRrist/CQD8pLhPTL34wR5pIowb42+UgENaXifYNLnz5x
	 XNOO/B/8TsxzEgVK9pKN4WawB0HKt+P+bGhGJzWCEj+if6nFTzf1YnQJ0dzrY5n7Ak
	 JbOVvy+MZFQZii4dKeorqq26GKww80mQijQAlVqsXwsRQHgqVsHP3CbQ13FE1oedH9
	 o817Lpoaes2eO+AZNYP3zIbQ4Hpbzjg6uIiD8brnzxOm8wL3EqReBkuPIjlYy+rcGn
	 +djyMiHUswW8nN2fxIj5P7zy1xy7xC5FPJdI2gp9dw/frgPDn9bpl9t5Ev1qwvc0uA
	 BdPzrn7uoPPig==
Message-ID: <196486e3-a6e4-d330-6193-6eff248bdefb@collabora.com>
Date: Mon, 29 May 2023 02:52:26 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 3/8] iio: adc: rockchip_saradc: Make use of
 devm_clk_get_enabled
Content-Language: en-US
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>, jic23@kernel.org,
 heiko@sntech.de, sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, lars@metafoo.de,
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com
References: <20230525212712.255406-1-shreeya.patel@collabora.com>
 <20230525212712.255406-4-shreeya.patel@collabora.com>
 <a7e0d4f0-a497-8697-e108-5247e11abc41@collabora.com>
From: Shreeya Patel <shreeya.patel@collabora.com>
In-Reply-To: <a7e0d4f0-a497-8697-e108-5247e11abc41@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230528_142241_016328_4774D9B1 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
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

Hi Dmitry,


On 26/05/23 06:12, Dmitry Osipenko wrote:
> On 5/26/23 00:27, Shreeya Patel wrote:
>> @@ -600,8 +560,6 @@ static int rockchip_saradc_suspend(struct device *dev)
>>   	struct iio_dev *indio_dev = dev_get_drvdata(dev);
>>   	struct rockchip_saradc *info = iio_priv(indio_dev);
>>   
>> -	clk_disable_unprepare(info->clk);
>> -	clk_disable_unprepare(info->pclk);
>>   	regulator_disable(info->vref);
> Why clocks need to be enabled during suspend?

They don't need to be enabled during suspend. Thanks for pointing it 
out, I'll add them again in v3.


Thanks,
Shreeya Patel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
