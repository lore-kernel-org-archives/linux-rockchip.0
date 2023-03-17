Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7880C74A5B
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Mar 2023 09:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MuA019YFwfLIES3cwkkReRpYjh2zHeYEpkVwtVtPe5U=; b=bIAaqPEtBlhRye
	wiRuHw8FtF8VncGxTSUfr/v7QQxib2utFpimiejPrfawZEMmb2ad06iwi3b5qShTIZJnsw8oNdyKx
	P9vfSc/p6Q8qRbvvO9KsXi2nvit2AZw2NlIk2tAWJUJiaZ0cSPM7zoK9soZYaeIDcblY13hyJz9UU
	LXiY7Nx0BfDMqIeNOreTSqS+wlhWLrFRWkdBFNsYZEVz+KXua09m5aHr4qjZQRVWQ66aOG3t0hnwq
	PNzqt+UiOkGdXOe3N/zhc+E8REPXLfIHlRciIjDSXlhKMH3UwThOt414Nut+2W8tkEaPmveIco6pN
	o4vduRMN+cb3EhUaLEJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd6s6-001oth-1i;
	Fri, 17 Mar 2023 09:59:38 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd6s2-001orH-0Y;
	Fri, 17 Mar 2023 09:59:35 +0000
Received: from [192.168.1.90] (unknown [188.24.156.231])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6A95F660309E;
	Fri, 17 Mar 2023 09:59:30 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679047171;
	bh=e/KIg4k8GoTPg3uxt66ysJDkUFF6y215cPiS3F7Sts0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=YVYud1TuEBVXmXkXbL84ROVSh+8LrsQTp9qsY/suO+Mi2ohhnI2YrqfBzGSWxqZ3R
	 NzAnEKiPbXJHeHOq1MSFLtlj37ZTtCQWzFsaKy3tZTgFLDy+mPxjENInrPX7gJHkc8
	 TDovH0xsLRqc19bzi9A1g5LafgzL1/Ya0GWhG/g/dUw9I+ZUufmc3VA1HsPyZLgoRm
	 CC4jb2MnVPSKJUA8MAfStC248ug82iwQGT+huw6WSr6kzA+7MagnRGk/AixlrGAZS5
	 uo4fNU+QOW9if3no+vYTaNJixrIzEKtRiDk6xg5MKbXEX2Sl79TKml8dmtwAXQ8nqe
	 0MzrDkENAOKDQ==
Message-ID: <d5881d9f-90cc-f7a2-72a3-0701348a03fe@collabora.com>
Date: Fri, 17 Mar 2023 11:59:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH 01/11] dt-bindings: firmware: arm,scmi: Document
 assigned-clocks and assigned-clock-rates
To: Sudeep Holla <sudeep.holla@arm.com>, Rob Herring <robh@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>,
 Cristian Marussi <cristian.marussi@arm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Drake <drake@endlessm.com>, Katsuhiro Suzuki
 <katsuhiro@katsuster.net>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-rockchip@lists.infradead.org, linux-riscv@lists.infradead.org,
 kernel@collabora.com
References: <20230315114806.3819515-1-cristian.ciocaltea@collabora.com>
 <20230315114806.3819515-2-cristian.ciocaltea@collabora.com>
 <20230316203417.GA3833267-robh@kernel.org>
 <20230316222619.r4jzk3lzdxzamr2s@bogus>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20230316222619.r4jzk3lzdxzamr2s@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230317_025934_339439_96196966 
X-CRM114-Status: GOOD (  12.14  )
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

On 3/17/23 00:26, Sudeep Holla wrote:
> On Thu, Mar 16, 2023 at 03:34:17PM -0500, Rob Herring wrote:
>> +Stephen
>>
>> On Wed, Mar 15, 2023 at 01:47:56PM +0200, Cristian Ciocaltea wrote:
>>> Since commit df4fdd0db475 ("dt-bindings: firmware: arm,scmi: Restrict
>>> protocol child node properties") the following dtbs_check warning is
>>> shown:
>>>
>>>    rk3588-rock-5b.dtb: scmi: protocol@14: Unevaluated properties are not allowed ('assigned-clock-rates', 'assigned-clocks' were unexpected)
>>
>> I think that's a somewhat questionable use of assigned-clock-rates. It
>> should be located with the consumer rather than the provider IMO. The
>> consumers of those 2 clocks are the CPU nodes.
>>
> 
> Agreed. We definitely don't use those in the scmi clk provider driver.
> So NACK for the generic SCMI binding change.

According to [1], "configuration of common clocks, which affect multiple 
consumer devices can be similarly specified in the clock provider node".

That would avoid duplicating assigned-clock-rates in the CPU nodes.

[1] 
https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/clock/clock.yaml

Thanks,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
