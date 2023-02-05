Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B36A2C636CC
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Feb 2023 17:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEcLy3+AdrKa1uxng2XJX2C7h9emBTKR8vUeU5qb1pY=; b=lP9VtHqAqpZmaZ
	MVO9+A3SQfheto2oVZRvMytvCKLIHCXJHeAKksV3Z8Y7AK01mxg3aeB1QRMDrI52QUkVIxnnbi6Ra
	zw663LNZIW+vn7AovV/NCO6WpR/4t9KkEwbVigzXhLkrrZ04I97Z/UHtA0sZiRv1rlfzOKoQH0Vu5
	7W6562yL+ZsUKosVtfq7vGX24ULikv9z/RbHyfvlUs99G9Q9clbbcEpjxGbTvpeq834BGU1yfcDvH
	4Agw1T04M97cSxXJ9wfyrH6fPVGjjtauUYckHykAMU5vGbXu2nE76/SP6T29pjhKXNVRAXzjoMTWo
	6Pio2hCVhFH1xjksSIJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOigr-006buA-RV; Sun, 05 Feb 2023 17:20:33 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOigg-006brg-Ua; Sun, 05 Feb 2023 17:20:24 +0000
Received: by mail-ej1-x62c.google.com with SMTP id ud5so28213889ejc.4;
        Sun, 05 Feb 2023 09:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZHKHtHmdBvu9gCl5Uypjbx8NwWDCD3db/bpuwxrPVv4=;
        b=GHMCUB6xoF6V29LH64z7vIPbEOj4/sYrr0E0HBhRBIfxFIa2/ba09BUwMP2pBnVFHs
         alfQLoKysiFg3FZbOn3+yEoDydxHxbZFwfNPdpP4di9i71aw9cgkctY0CCufjCD7TkWr
         Y+7nZY/di4GF5hUBMGkakkC2QuchUcUKfeU/GgjsxcU4MbgYXLn0+vo5nOqdzq8J2YB2
         In1jIn9fjrye6rxJ5YzSYuYkFNAU5u8a8avkukntCS3OI4huWm485L04sgJuuFSOohpj
         D4CRo20juU2z+PKBb+A/sb5gzm0jmtfQ5jlYiJLisUd3UxF5UtNFZc5bzc06HfC5+edh
         Sl7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZHKHtHmdBvu9gCl5Uypjbx8NwWDCD3db/bpuwxrPVv4=;
        b=Bra7ymoeVtb/sJsKgR/DO+abwZhsgLuVl1O+IBbn1t2EZGdl6rw4CAPHMxrwa30zhl
         wL7CrxIy6G/wBjSSN5T3SyzvLBYEZO0YzzFZNYSff2v88szZ/84H1Yt7TGxHoXftomoT
         hYMLTjONg9b8JGj37K61bo8Iu436MTM/yjgq7KDUKO2RVSkwDGZ/r7SWBRYI1V/iAdG2
         b/Hjw3GB3ubYCer8iSQJ+w9WbgbrCOt//JNVGoNj8umzxs/L6ZYrUxwlEf83P3tu+wGk
         OMkvOctLphG3nH7ZDEzrCqNl0d2eHBWiietTU/HBUCfBSV+uiG+A65N6hsEAGLxAXyLL
         bqPQ==
X-Gm-Message-State: AO0yUKW1ZRLFWugeDNk+wBaSFukPfYHF/ZTIUe6yezc60FkpevasTKhJ
	7+45qp98OYOYXCSvvbpNz/w=
X-Google-Smtp-Source: AK7set/17iI3CDHKuvSWSXOBFIuJXIdIz2dQjNgoERzWWImV2UhbkRts9m9wGr/M5ENsi2QXfdG1Aw==
X-Received: by 2002:a17:906:d7a7:b0:87b:d3e3:c23 with SMTP id pk7-20020a170906d7a700b0087bd3e30c23mr19288755ejb.54.1675617619672;
        Sun, 05 Feb 2023 09:20:19 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id o13-20020a17090611cd00b0088bd62b1cbbsm4302321eja.192.2023.02.05.09.20.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Feb 2023 09:20:19 -0800 (PST)
Message-ID: <0de7b28e-1c12-2546-2747-d8932678f9dd@gmail.com>
Date: Sun, 5 Feb 2023 18:20:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 2/8] dt-bindings: pinctrl: rockchip,pinctrl: mark gpio
 sub nodes of pinctrl as deprecated
To: heiko@sntech.de
Cc: Linus Walleij <linus.walleij@linaro.org>, brgl@bgdev.pl,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org,
 philipp.tomsich@vrull.eu, john@metanate.com,
 quentin.schulz@theobroma-systems.com
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
 <137b56f0-8e86-f705-4ba7-d5dfe3c0b477@gmail.com>
 <CACRpkdYYB4-qhgbN3D8-Yjs9QVcj1oCZZHTVJXsyXgC=p-e=NA@mail.gmail.com>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <CACRpkdYYB4-qhgbN3D8-Yjs9QVcj1oCZZHTVJXsyXgC=p-e=NA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230205_092023_037001_1621C931 
X-CRM114-Status: GOOD (  10.87  )
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



On 1/26/23 14:45, Linus Walleij wrote:
> On Sat, Jan 21, 2023 at 12:08 PM Johan Jonker <jbx6244@gmail.com> wrote:
> 
>> Mark gpio sub nodes of pinctrl as deprecated.
>> Gpio nodes are now placed in the root of the device tree.
>> The relation to pinctrl is now described with the
>> "gpio-ranges" property.
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> 

> Do you want me to simply merge this patch to the pinctrl tree?

Hi Heiko,

Any last minute feedback possible?
If this patch suits then maybe give a ack for Linus?

Johan 

> 
> Yours,
> Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
