Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ADCAC55162
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNEtnshBFjXQ/Ka3XhAADis2Rk/O9EUC5oBE9vpHNzo=; b=pM6EuTKpGZW2OF
	K+v/UfoEBcSobm9LlTjIwJ+x7vdQQ52xc78Cex/M1aFHsaTO1Ef8q6yuH7sQy8FQnpT+Sd6x6bZbs
	zSEXzIJlvMEbwIx32SqXZ6/duNfIKOnBnaWJmTBGw9077x0XEuLUBO+MWOjADxKEO1x4HoQubqjOx
	9I3FeOiA0y+6zdY7HVcTLJ1IYuhi0NGeKx2n4+w7AhhHJxeyJWSAeUVWDkjcH7UxXnkAew2kywgcb
	Da1otrUkPvrQ+HYAHBAN/jjslK558Xq+NZ6F8ManmanOdOpANHtsMGZwZt1dekxGyEDLelUzAg/C4
	lV789qE5/f8kno/EioBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRNT-0000000AhRG-08Ye;
	Thu, 30 Jul 2026 14:04:51 +0000
Received: from xmbghk7.mail.qq.com ([43.163.128.43])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRNQ-0000000AhPj-1O2U;
	Thu, 30 Jul 2026 14:04:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1785420285; bh=tGTkNpzchZNpj9HV/ywwb5I5HWM8o4egLfUtXR/eyws=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=k4Rkd8v5CBpNWsHys2gIx7tEERm/Gg2BZm6q6Q9XXLbVLW/O08S9tD+I2YavdOcUD
	 LYNHIAU6PG0tGn9BBCyr166QNRNvZvqHMeEYxl8gV3FOIsjMQOdH/4ncpbuT/t8/S3
	 Dp1wPH1cGn2x42uHEHHHA3efA0eQoj0jwtE+11aw=
X-QQ-XMRINFO: Mp0Kj//9VHAxzExpfF+O8yhSrljjwrznVg==
X-QQ-XMAILINFO: OSDxAxedUaWCj2nTIt4SlIaffdcH5TQCRrGH0D8KpcaLyWVb1AwgKVCVXs2DWK
	 LNtUkzL9ckzg8n/vwGTDh37CuOMJ/jk8m5P2ov6ji0h8i0yEPAD6g8f13u6Wzvf8NQWblMCL6tdi8
	 n84Y8Gd93c6wwHxiY2CzcTWxSFpNxquPtjltH5Gohg78FP8n2Rgses0ZLPqL+q1jBmr4BUGRRWLoJ
	 mzgRxKscnUWbxpcbn90kGBkb8Zk4nJEs9avZKYXhgZ40ZW3D6TNOdTT0iHsTcVifVYbgKcEkwwxsi
	 XVASX+rDPXebyz8IBUKXCDZrgCTDTXsx/RsXySzy16SymfY2jx/UuPWOhpcFLmkjk5rHciEsLMV32
	 GlsyqsInI/qWW+vp5H3gPDkqmQcMOpqwSCY0tO5mpzeDFr74EmfKcCjnBQG8PDP5pwpTdwxRm1gQn
	 IFxpqjvHYIOiImt4hWSx3Cicy4n7csvilLZDluDJIozh1MPeazckTOZvaTWi+1ApHoWAeXUTX1yGy
	 mXtwgxV5S52elwF8LB5VUw9AjdSlcvI7bcDD6QURAcB87LS4+vaoa+eT557/Ytw+7yf5i5m2aGKXd
	 OJcssUEls/O2bkeVxtHV0SIqwQ0KCDKzj1Bxhmz+WbArbmARae7VtMQtTyrkeTZuNNHqng7pioyRY
	 Q26hUwSyXzU6RQyZnYoWfS/Xgu0G5AjrAiBno6ow+d1FRZnmI05yA9uj/yX04MS3HCso5Hr480RX3
	 iFx6FDfaGiUZJ4bCZRgw4wJMK7iYXxOo6LAsYriEOg0nVcdNmqfqMgnDg0FzvXLxb7sOYcuHPTYt+
	 1jz/U2htRblg2PcEVv54uyluXpuCBQfzZp2IRSWKaG6miMeP2sAtZYSu5V/34MSg9AbfxxqGvCBT6
	 V7aoav8ab4frjDX4Zg8Zjs42YbdzPme6ruHELpPa9dlB2XegZjQ9DxJCoKA57zh2gwGn1tHa/8OSv
	 mUcin/yiwLi889aRRZonur5oBq8pv8DnHV8CC8LQUTA7Hb1X2GPnsBQGD1VrIKZzbVIXcDBSQseUc
	 7Tn2yI4ueKfxmtSocjSKhS0ut9haSKXoBYqzznJ/1nIhbHa8z51U+xFdNBfQr6fNBT2q1XzWMHrrl
	 TcdV4PWUzIr3nQ==
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?UXVlbnRpbiBTY2h1bHo=?=" <quentin.schulz@cherry.de>, "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?VmluY2VudCBNYWlsaG9s?=" <mailhol@kernel.org>, "=?utf-8?B?Um9iIEhlcnJpbmc=?=" <robh@kernel.org>, "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Q29ub3IgRG9vbGV5?=" <conor+dt@kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>
Cc: "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v5 4/4] arm64: dts: rockchip: Enable CAN controller on RK3588-Tiger-Haikou
Mime-Version: 1.0
Date: Thu, 30 Jul 2026 22:04:43 +0800
X-Priority: 3
Message-ID: <tencent_34D00CC80826788DD404902246F9ED36E10A@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20260725-master-v5-0-75da459d2b93@qq.com>
 <tencent_8E35228F9F4F133FCDBCCC4902F6887D0006@qq.com>
	<7628bc49-b4e7-4716-9579-022c20bbf134@cherry.de>
In-Reply-To: <7628bc49-b4e7-4716-9579-022c20bbf134@cherry.de>
X-QQ-mid: xmsezb41-0t1785420283tmh58ymmo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_070448_724117_F7EEE53D 
X-CRM114-Status: GOOD (  15.32  )
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

Hi Quentin,

> Can you please move the assigned-clocks* properties to rk3588-tiger.dtsi
> instead? RK3588 Tiger is a SOM and Haikou is a carrierboard. The
> carrierboard takes the signal directly from the SoC and route those to a
> transceiver. I'm assuming all carrierboards for Tiger will need those
> two properties, so better have them in the SoM DTSI.
>
> on top of this patch and squash and we'll have what I would like to have.
>
> If there's no need for a v6, I'm assuming Heiko can simply fix that when
> applying and thus there may be no need to send a v6 just for that (but
> if you need to send a v6, please consider doing the suggested changes
> above).

I will move the assigned-clocks and assigned-clock-rates properties to
rk3588-tiger.dtsi. I am preparing v6 now and will post it
shortly with these changes.

Thanks,
Cunhao
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
