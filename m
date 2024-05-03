Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25DD4C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 08:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zstlWLs1APfnlrGZuoW9/tsMvgthncWkSOP2sFyGziA=; b=KGhXjvC26BaiWD
	WJTP+CAX3P+Cxnuw5CO1X46f70t8Vh/um/ko30q4tXbe1WhYP8J2BMs1beROawvi/OJnPfHU5VZJc
	UDm5aUhTbYHEwvbiMQ85SuPyHQQkQNZ2xcKt/+6mFqeUcUd2F78clfPwtNJdZi2AEh2k2ujo+cDmc
	V1FvEOgLY0iykLV3WaCzMVtd9kYa5/ao8h4tnyDaDDODMgSDJF6rTRgkLkqjMgZqjGOHYkZtmfCmJ
	WlqcMYZwp4yEGMN8CDH5mFMB/KeD5OwAjVV9WQFtQreMPQZ4+fR3lml8fM1tWZcNOjJjgupzZh7Ec
	UXPZgjayiD8XX0NZkO1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2oIM-0000000FeWs-3Rv6;
	Fri, 03 May 2024 08:29:30 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2oIJ-0000000FeVK-0TtU;
	Fri, 03 May 2024 08:29:28 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a595c61553cso389567666b.1;
        Fri, 03 May 2024 01:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714724965; x=1715329765; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wg8/6y6GN9WB0V95WSfuKyZjIjlt/v4twVQhV3jB5sI=;
        b=crZsb3xg1oaE5jb3TY67oWw5yvAPtJRl2jJngSv3DnozK1N4+RSPuw6DBPxkgEgF63
         20iD+EVuEw4nY1NxORVu/Y5pRQhStQMYnar/7j4LfpE96QO/K8NpyjQ2ZEjsTKIZ153f
         MXyOHMNwSWYN8Flo7GLaxn32RB+9XqBaSkk+AYpQ1uyaZs0IkWbATSs7A16NfRgmAhJr
         olXyPc/4Q/puxNWC2P9eP+gOUm1bABpO/zV7QTk+J5m5N10OTJOtnXTwA/luoTP1BJIV
         RA3lLIxdzb7mIt1ZgzabDgIcse1y5wvihO9plo7luAP2yNQt/F7ruDAP+pMcEHGmjUk9
         CyRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714724965; x=1715329765;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wg8/6y6GN9WB0V95WSfuKyZjIjlt/v4twVQhV3jB5sI=;
        b=Kmj6KljOCVjiOUSqogVZ7A4quT87+m0JH8xrz3DnJo7AHtzdtu7wC5ZIvr/gpGzWvo
         6wSmtX58E0ME411Y/wsPqC00eIEWjUImLWHRvd2KXMLNUqyA4kQf3w/+mJorgaTzJDBP
         wvD35I4Xbx16IoSD8lq4An9mEYdnp/DG+PdZWh5lwQ3hHhjv5jZUdbyg/GuC5yl7g8Co
         upvVvaIukZVR+vVxlFiy/w6dycGZTwhg5esfGIAcAx1K/XPGy+rx3zTGmu5Mryt0stON
         RW9BFcAnCgOeUffxbBiTKfLyO93UPYzhUJnkzPHCrWtccFpwop+nuGxtcG0pFb8Ne9HJ
         +waQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwzs5w/x89s2JFyb1N/8SwSrGgWR3FFadN352P8WFgFYTDRXsJTBKHA9ezra2lqk5VujDfzzTAGZxgZpfgPsaNOIJM76WIw1EpoJDYQhb0De6Apa2z/jcaIs0jwwZTLwcaP612NH0amWYKmyQjAc/puqD9//P3Sns=
X-Gm-Message-State: AOJu0YyCQAikzgeWBeYV31iZjdrZtaRqOpk+dvH5F3MwKpVDbA6cYO6E
	JALZ1/WiOWgMbgaKLDM7a5OP6M3vQctwJEyNHTOer5O1tdT6A+s=
X-Google-Smtp-Source: AGHT+IFbtr1hO4RS4o1oD7cS72QVf7gnw2fLXLrura2Ot5OWVY9QalK17siCBOXrlh9kiMPIQG21Qg==
X-Received: by 2002:a50:a6dc:0:b0:572:707f:1a99 with SMTP id f28-20020a50a6dc000000b00572707f1a99mr1057866edc.25.1714724964848;
        Fri, 03 May 2024 01:29:24 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:3a09:7a12:14f8:ab07? ([2a02:810b:f40:4600:3a09:7a12:14f8:ab07])
        by smtp.gmail.com with ESMTPSA id bd14-20020a056402206e00b00572bd30320esm1441904edb.82.2024.05.03.01.29.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 May 2024 01:29:24 -0700 (PDT)
Message-ID: <d02920dd-e5b9-4280-a7b4-853f10c22a70@gmail.com>
Date: Fri, 3 May 2024 10:29:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] Add RK816 PMIC support
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Linus Walleij <linus.walleij@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <20240416161237.2500037-1-knaerzche@gmail.com>
 <171472425816.1279735.1509285489643125462.b4-ty@kernel.org>
 <20240503081824.GI1227636@google.com>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20240503081824.GI1227636@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_012927_231934_60D7F70F 
X-CRM114-Status: GOOD (  13.24  )
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


Am 03.05.24 um 10:18 schrieb Lee Jones:
> On Fri, 03 May 2024, Lee Jones wrote:
>
>> On Tue, 16 Apr 2024 18:12:32 +0200, Alex Bee wrote:
>>> This series aims to add support for Rockchip RK816 PMIC series. As per
>>> datasheet it's targeted for RK3126/RK3128 (RK816-1), RK1108 (RK816-2) and
>>> PX3-SE (RK816-3) but might be used for other SoCs as well. The MFD consists
>>> of an integrated RTC, a GPIO controller, two 32k clock outputs, a power
>>> key, 3 buck- and 6 ldo regulators, 3 regulator-switches, and charger with
>>> integrated fuel gauge. Charger and fuel gauge are not part of this series.
>>> Two of the switches (otg/boost) are part of the binding, but not of
>>> the driver. They must only ever be enabled if no battery charging is
>>> happening, but it will be enabled automatically if a battery is attached
>>> and an external power source is connected. Thus that needs some
>>> incorporation of a yet to be added charger driver.
>>> Integration in the existing rk8xx-infrastructure was pretty straightforward
>>> and only needed very little tweaking. In order to not further bloat the
>>> driver(s) too much with additional `#define`s I tried to re-use existing
>>> ones wherever possible.
>>>
>>> [...]
>> Applied, thanks!
>>
>> [1/5] dt-bindings: mfd: Add rk816 binding
>>        commit: 06dfb41b1cf8d64327e5c4391e165f466506c4f0
>> [2/5] mfd: rk8xx: Add RK816 support
>>        commit: e9006f81faf8e438ea83626db578610e49f31576
>> [3/5] pinctrl: rk805: Add rk816 pinctrl support
>>        commit: 1bd97d64b5f0c01d03ecc9473ccfcf180dbbf54a
>> [4/5] regulator: rk808: Support apply_bit for rk808_set_suspend_voltage_range
>>        commit: 9f4e899c286b5127e2443d50e37ee2112efbfa2c
>> [5/5] regulator: rk808: Add RK816 support
>>        commit: 5eb068da74a0b443fb99a89d9e5062691649c470
> Submitted for build testing.
>
> If successful, I'll follow-up with a PR.

Great, thanks a lot.

Alex


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
