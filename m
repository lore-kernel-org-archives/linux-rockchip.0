Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A485C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 18:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tcFS2qzfYfniibQW7cYcyb+Ds3zGP5+aIzCU1rEsFJ0=; b=s2g9WxTQ1QRP1giz5rq1laOwnE
	aqg/VH/NJDNRGxM9qEPvXdXZYrf3qElp25eR6tjocKyeHe4XPd0LzTAV4ENrWpGWOLExz48lttFsK
	cGYaUY0ajaACvOS+WBK1GmAxZZIjkn93XUZzsh68izESBeNVy+oB/xnqnvBtfpuLmyy864jTf/5Ma
	hFXTCtBVYLU9HqbJy7/KlCPvcMUEDzaqIH7jkCvsjC1wFKczKZfzJwKCH+nz44e/jyW0bX2H2500F
	nZqgU6NuSC+qpDhDxeE4BjfJOetX03XpNTmEexkcjSbNwJ7oVec8FjYaRga40XhCdL/P6wXbVZ9dY
	QLze+JRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sblTn-00000005yFm-0htk;
	Wed, 07 Aug 2024 18:33:47 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sblSv-00000005y5x-3GIc;
	Wed, 07 Aug 2024 18:33:13 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723055571;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uPhLM9T/fLlMrEKInffkblL2I9r8PE3dC5RrRLFYkOs=;
	b=d5BHXrjsF/rxyvxtJfaz4qEvZkd3JMM+ozTmqbuuIdwjZMdba3mn7mk4lJoWgUmk10AWzd
	NmxxpoVYDrBoVE6QNfr8Qf2N7jUzF9xX4YbSWd8iEfHmUglvQxNnEPbxTbJdzoHdEVnF35
	FUK88vDOzbPfw0MMgDgvd34/4WLxq/blweX53gPIzZqEs51hYPD67tFMtDrzFS0UdtdmrC
	5HvLm+Ygswi3cYCjzKAN32JB0RiQmFhE5mOric0kzwWUhA399cN+SdDzgIKOtrIPMfChGU
	+3hssPajcaN3xqvldJGqLaN9Df6I2NrsVhEr14iC3dt0lU9wa3YfrAur3QkvXg==
Date: Wed, 07 Aug 2024 20:32:51 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Florian Klink <flokli@flokli.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, Kever Yang
 <kever.yang@rock-chips.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 FUKAUMI Naoki <naoki@radxa.com>, =?UTF-8?Q?Tam=C3=A1s_Sz=C5=B1cs?=
 <tszucs@protonmail.ch>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: add rfkill node for M.2 E wifi
 on orangepi-5-plus
In-Reply-To: <krvprzy3iz5b7n37eo2mb6sol6pcjkxsjdbdi6sxeebwveqtnr@e52cvrlkdjsa>
References: <20240807162001.1737829-1-flokli@flokli.de>
 <20240807170030.1747381-1-flokli@flokli.de>
 <a10e70e2d67b9d63f2296b36b4cb3719@manjaro.org>
 <krvprzy3iz5b7n37eo2mb6sol6pcjkxsjdbdi6sxeebwveqtnr@e52cvrlkdjsa>
Message-ID: <1b2e1b1b321f84f5cbff2ae18c3eba2e@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_113254_135927_EAB5B6BC 
X-CRM114-Status: GOOD (  18.58  )
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

On 2024-08-07 20:14, Florian Klink wrote:
> On Wed, Aug 07, 2024 at 07:24:27PM GMT, Dragan Simic wrote:
>> On 2024-08-07 19:00, Florian Klink wrote:
>>> This follows the same logic as 82d40b141a4c ("arm64: dts: rockchip: 
>>> add
>>> rfkill node for M.2 Key E WiFi on rock-5b").
>>> 
>>> On the orangepi-5-plus, there's also a GPIO pin connecting the WiFi
>>> enable signal inside the M.2 Key E slot.
>>> 
>>> The exact GPIO PIN can be validated in the Armbian rk-5.10-rkr4 
>>> kernel
>>> rk3588-orangepi-5-plus.dtsi file [1], which contains a `wifi_disable`
>>> node referencing RK_PC4 on &gpio0.
>>> 
>>> Signed-off-by: Florian Klink <flokli@flokli.de>
>>> Tested-by: Florian Klink <flokli@flokli.de>
>> 
>> I forgot to mention that providing a Tested-by tag is redundant when
>> there's already a Signed-off-by tag, because the latter already 
>> implies
>> the former.
> 
> This came after I sent the v3. Generally I wish people would test 
> things
> - though too often it's not. I explicitly tested this to work (with a
> wifi module added to that slot being unblock-able afterwards), and
> wanted to point that out, thus adding the Tested-by.

In general, some time should be allowed between sending consecutive
versions of the same patch, so people can provide their feedback.

When it comes to testing the submitted patches, please note that signing
off a patch implies that the signer has already, to the best of their
abilities, made sure that the patch works as described and expected.

With all that in mind, please allow me to repeat that a Tested-by tag
should not be provided from the same person that the Signed-off-by tag
is already coming from.  It's simply redundant.

> DCO 1.1 doesn't say anything about Tested-by, it's mostly legalese 
> about
> being allowed to send out the patch, and understanding the consequences
> regarding licensing. It doesn't require the person adding their
> Signed-Off-By to have tested it.

Well, not all rules are to be followed blindly, and some documentation
perhaps needs updating or expanding to be more precise.  On top of that,
having something absent from the documentation doesn't necessarily mean
that some additional rules don't apply.  It's many times simply about
applying common sense.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
