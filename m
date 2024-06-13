Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2899BC27C4F
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 12:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cg+KOTlmnivnwOvrQB5x3sbXIgPRNA+xT8nG2rm30w0=; b=X2/opbyE/91Z6a
	HVATDT5lyR4pHEUrOpPRIVan86COkRpXm4rVf9bWpHYzf97/FLAQP1oMQiEQmnh08Klb50V9RO+Vd
	yzn3hfiwfkgPOeZUJEDZX8dqz8guXhmgtLjnjVEEnazrM1vf5Jg4ntEazL8PB/wSqQuqm2uyUajqB
	vE26Q+ttRqhMnVeiC87dxZW6gJx5pBi3IegjgaJOr9h9AwtYg+fjI5sneLcT2eJxaoaLtcl2XZtkt
	wHEassXujxjiDgmdCeefeXtDz1Sr7+ULkXH3RQVrZy6d/Fw/QIyqtl8HFmii/0gPRj8b05zyPbHAk
	HXkUJyinoB8DiLyDkMhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHjww-0000000GaCQ-0OxH;
	Thu, 13 Jun 2024 12:53:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHjwt-0000000GaBS-3zmF;
	Thu, 13 Jun 2024 12:53:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=O4a4nlcZpa6wi5J7EzGe1s6GaDGUHKPgnDJq+81WAZo=; b=HtsRYit41hYKLwW2HlyAJJnnxt
	iqdlysG7HDtA1aI6GJYy043g7m9BQrDHfNb6UsVriPUpIo8/i6I1hH4jZgm9LVf+LUKDf4z0u4SnQ
	9k7j76jKez3+vasXfu4Emnoqne6A7W9E9SQZLDjECW3uHaLmE6tXJSBcRvw1FAZ6MJiCLRJzP5uDj
	ksdWxumHM6i8GOQfuESuvnbApkuDrgCkB9BvVSkWyaYkJJ/hLZmZhBD/Wzao4BIvqJFFsVw8sikBZ
	qWKlC6rq3E7V+0rmjncBvlmf5z3Lj9Zrd4wD+ZsjbHPhYaehVFqsp4lsWPhuIg7dmjNf0vg1GHUZW
	OQ0hk6FA==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHjwm-00000003boO-0Jy6;
	Thu, 13 Jun 2024 12:53:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BF25761883;
	Thu, 13 Jun 2024 12:52:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1D90C2BBFC;
	Thu, 13 Jun 2024 12:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718283175;
	bh=2+dydYk8TPrJavTZgynuaRTEBypmQvsTjbvt51z44U8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TLx4LMhaYTEFAdjXms6uMnRmnyDuIsp5wd23GggrIVShfev+7h/RlcD9xZD8lsfFn
	 WSatdClM28bCaSQ6lXUlpN/uZ1W0NcCD/FPm45ypkx+RKsSg+KoVAoUrm1U2GQ/ZNV
	 V2+V91OtYYHAlSBoEKFSiZxN/wFEnALzvJtRSj9xLHBomzqxFBrQI47jypo80QrK2F
	 dIDNt5WbigoaD73Z3UfL+C+Z71sIxc87UA67URxMyjAnS/iI0Yc5H5bcZIJ6iQwfqR
	 0S/JCimwy5r+QMSXyOYrRPcJx7ky0VGkhIolcsdNoBpCPXHl99n5+ZTB9sOj6YhEj6
	 aLysvAzOft14w==
Message-ID: <58e85008-a268-4555-bafb-f948ade16a63@kernel.org>
Date: Thu, 13 Jun 2024 14:52:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] dt-bindings: phy: rockchip-emmc-phy: Convert to
 dtschema
To: Johan Jonker <jbx6244@yandex.com>,
 Shresth Prasad <shresthprasad7@gmail.com>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 heiko@sntech.de, sebastian.reichel@collabora.com, s.hauer@pengutronix.de,
 cristian.ciocaltea@collabora.com, andy.yan@rock-chips.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org,
 javier.carrasco.cruz@gmail.com
References: <20240613085812.4020-2-shresthprasad7@gmail.com>
 <cc66cca1-33db-4f30-afcf-d256a959896b@yandex.com>
 <9ce15b81-a8bd-4833-b15e-3e6f240dcf03@kernel.org>
 <495e50aa-6819-457d-8503-00440abc97e3@yandex.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <495e50aa-6819-457d-8503-00440abc97e3@yandex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_135300_220978_636461B5 
X-CRM114-Status: GOOD (  16.90  )
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

On 13/06/2024 12:33, Johan Jonker wrote:
> 
> 
> On 6/13/24 12:12, Krzysztof Kozlowski wrote:
>> On 13/06/2024 11:44, Johan Jonker wrote:
>>>> ---
>>>
>>> Add ack request from phy maintainer here.
>>
> 
>> Why? What do you mean for that? Why phy maintainer needs to ack patches
>> he is going to take?
> 
> See my text below:
> From my past converting phy documents experience asking was needed to smooths things up ...
> Let me know if things have improved.
> 
> grf.yaml can be busy at times. Let Heiko take care of the merge order.
> Ask for an ack from the phy maintainers in your commit message below a "---"
> 
>>
>>>
>>>> Changes in v3:
>>>>     - fix `reg` in example being too long
>>>>
>>>> Tested against `rockchip/rk3399-firefly.dtb`, `rockchip/rk3399-orangepi.dtb`
>>>> and `rockchip/rk3399-pinebook-pro.dtb`.
>>>>
>>>>  .../bindings/phy/rockchip,emmc-phy.yaml       | 79 +++++++++++++++++++
>>>>  .../bindings/phy/rockchip-emmc-phy.txt        | 43 ----------
>>>>  .../devicetree/bindings/soc/rockchip/grf.yaml |  2 +-
>>>>  3 files changed, 80 insertions(+), 44 deletions(-)
>>>>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
>>>>  delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
>>>> new file mode 100644
>>>> index 000000000000..85d74b343991
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
>>>> @@ -0,0 +1,79 @@
>>>
>>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>>>
>>> You are converting an existing document, so GPL 2 only.
>>
> 
>> Which copyrightable part was copied? This comment is not correct in
>> general, because conversions are dual-licensed (there are exceptions,
>> but that's the generic rule).
> 
> Was told to do so in the past by the maintainers(Rob??) for text documents conversions.(Can't find exactly were in lore, must be in one my first conversion patches)
> If someone was submitting as GPL2 long time ago then the derived/converted work still hold the same license.
> Let me know if the consensus has changed.

Consensus did not change but I am no sure if you got it right. It was
about copied copyrightable text. Which part was copied here?

I think there is none, so just like with almost all conversions, please
use dual license.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
