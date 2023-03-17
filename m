Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B156FC74A5B
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Mar 2023 10:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DXAXvtgPkdijZdQncceht63A267umZQ4UJTu9b1X0jg=; b=zgH7WqpzCn9i5s
	W9ccnooSFf2Emcfh2+g6HoABDkHr4QX1BAg2WPmaUXgr007S0m139f118pdZ9hVS+wXCslhAsDhyv
	gcOrG3fFNjhoQk9lwhczgiQQ1YhSGZ/OdNX3iZi3QuvZ4EIGvTjrE9gRCLsivByuYLgKQ8KYR+gJq
	bv6bFVudRSSAFsh9yvL0AY3XjDhz1oDDTcYlPBqsMTEfn+kobHvT9oYqyzaQ53jfQTczGmGxbyahI
	scOBVEJfK02VNLN2lgZs9ctjzX2BNrWJlNb8voGVPQPn7yJ5LX5vE3EwmIqFa2S4CdCWx4HIwuEHu
	qeZmBlurVY6uO6siEutQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd7Db-001tRu-0y;
	Fri, 17 Mar 2023 10:21:51 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd7DX-001tQj-0u;
	Fri, 17 Mar 2023 10:21:48 +0000
Received: from [192.168.1.90] (unknown [188.24.156.231])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 41CFA66030AA;
	Fri, 17 Mar 2023 10:21:44 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679048505;
	bh=Dm30hfUK/ZdXDVg1rCbXsR0BnwH4IRiPfIqA2q405Ls=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bzQBHJvu17Oeth8lZ8Cb+nujPSlPj2BwvCf4/6emcigFdBmI9bCTs8qtiWzTIq9tb
	 Ff/Drf9RarmfQ5751LBrwjCkRpywYybDTwWmNLaVbDURC9T2FVLIif8LBQ67tmu3dx
	 ngL2z79aAh2AK9RRG9p8uhI0jDpDPHx9iLWrhSGQ2C20WwljgXDM68svaFZej+nlFE
	 dD1JpzcuMCGrxsH4i8UZsi+H7wl109GAhv0KNlWoa3uHQp2AZ9Gxn6hRUwk2Tke86g
	 Try3mpmzEEAsyktX6rpRPT9EOvDOTruIBOTtWce/s02dAynoQ7WydXYhzgDAns5GvA
	 HaqmPo236G4gg==
Message-ID: <8ae57fe3-56aa-7e50-3eaa-a12a40657baf@collabora.com>
Date: Fri, 17 Mar 2023 12:21:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH 02/11] dt-bindings: serial: snps-dw-apb-uart: Relax
 dma-names order constraint
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Cristian Marussi <cristian.marussi@arm.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Drake <drake@endlessm.com>, Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
 linux-riscv@lists.infradead.org, kernel@collabora.com
References: <20230315114806.3819515-1-cristian.ciocaltea@collabora.com>
 <20230315114806.3819515-3-cristian.ciocaltea@collabora.com>
 <3679f2d0-55f0-1710-abc2-b268b6fc6969@linaro.org>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <3679f2d0-55f0-1710-abc2-b268b6fc6969@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230317_032147_579732_2930CF7A 
X-CRM114-Status: GOOD (  14.19  )
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

On 3/17/23 10:31, Krzysztof Kozlowski wrote:
> On 15/03/2023 12:47, Cristian Ciocaltea wrote:
>> Commit 370f696e4474 ("dt-bindings: serial: snps-dw-apb-uart: add dma &
>> dma-names properties") documented dma-names property to handle Allwiner
>> D1 dtbs_check warnings, but relies on a strict rx->tx ordering, which is
>> the reverse of what a different board expects:
>>
>>    rk3326-odroid-go2.dtb: serial@ff030000: dma-names:0: 'rx' was expected
>>
>> A quick and incomplete check shows the inconsistency is present in many
>> other DT files:
> 
> Why not fixing the DTS? The properties should have fixed order.

I was initially concerned about the risk of a potential ABI breakage, 
but I think that's not really a problem since dma-names is not directly 
accessed in the driver and DT Kernel API doesn't rely on a particular order.

If there are no objections, I would switch the order in the binding to 
tx->rx, since that's what most of the DTS use, and fix the remaining ones.

> Best regards,
> Krzysztof

Thanks,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
