Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66825C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 13:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gh/CK+zvbrHqfr46jk3/uOSvGOPzcdpH4FFb+Es+RUs=; b=ckRr1MBvELHfI7
	sxHmkJVgmwzAMOHUcvVa7oISNdUSpJ+l56eOfmtkk3lBskRLWBkQ0cZzEVz3fpJ53mzvKz/t9YSp3
	yWsVVuTWl1/4UnLfz/tDcgCLLN0XBdu8MnmR7Zaxc7dQ4IGBtfDgVd7H3//QsLSRI/ohUZvuVt6XE
	gaByvWpYzXUTlv9ZRrISLysU8mACvCizJygjj4Gr9t18AJgm0rAObVVQATCMMCK4uSsnq9haS7K8d
	2B3/8+fHdzQnya1p50N8AiZ3lTxZ1l4eaMACZyYU2H0ScW7SW+QQncIAvlSWUOAqe527xu4trPbhf
	9iyOnkRHeJL9esiPtu/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAVXy-007W18-14;
	Tue, 05 Dec 2023 13:33:10 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAVXu-007W0C-0c;
	Tue, 05 Dec 2023 13:33:07 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40bd5eaa66cso45111405e9.2;
        Tue, 05 Dec 2023 05:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701783183; x=1702387983; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bzyRrGgr1xyIRTuSlVez/WAzJTF9ClcbFo3elgDY4gM=;
        b=AGh6efLDP+tpga+jOsi1iIfrM++TMxMU/PK8UaUf+QjYqWctJl6Zz8yPHni56HjdSp
         J6o3D7KV+sHl/dtcJFCVYzW/rdYSkzzDPakJ03yDk11w0vS4+ZLnksr9ZvDTwhrePLGl
         W+uKArM5O+dR1QgaN9NdFjqKx3pHDLMlvyEB7b9SxYchi7dS9DlVUVhZkQov2MNL0iFt
         fXQgNqkS36vS4TNpmDUNO9KZ11NFv8TyLMm2XWk4M/N39UOf2fA+vV1Lh041SkD+RXTe
         /0Hriorv8RoSY06KkXdk4WwJORFpvV7eVW8Ij4zJXcBbq3HXDo2YXaIky8frbaR9etkq
         uDXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701783183; x=1702387983;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bzyRrGgr1xyIRTuSlVez/WAzJTF9ClcbFo3elgDY4gM=;
        b=WUd7fd8KGqRb4nk+e8H8rSzP7n6xeCmAtVg2aAIi3nG5fwwjushGPKUiNp1msaQ5DM
         7Zt1JB1WOfTI6jDHQeb3/uuKNjSfpoxJ9e1PisqBGHvKvJXxr9CcsF9qcjIHeaIQZ+MZ
         w4KCdaCLeKORiWj1+PTB+E09kXtHYM4twciqFOWJQyW2WDDjIIvLIEpR43abNHDsxHY0
         NwBAi6AAN6a6pbJIFwMZFoXj0LRxS+wM1FCL0tXPpdKgdvh/InR/jZ1PCN0XPRDKHvgl
         gui6H0Onw15BKvRca7x/7bYP4tYTFKUBcQYv50cR8Tdx9R02cbmeE+QejpTEQMYcbf2u
         S9Ow==
X-Gm-Message-State: AOJu0YyjK+gtEZDVclhfcgwXcRBBBQLgsUJFUItoytftmntOyvlphNwC
	+ebNdnGeZyxe6Pc13kzZCZLp5MneJA==
X-Google-Smtp-Source: AGHT+IFy0DaIbKCeHYeWS6jUVuiNuwPqwgmtFOSPV4fT2Ct/kGDs1iBXqYgPiOiyj8ufYthmHzVEyA==
X-Received: by 2002:a05:600c:1f0c:b0:40b:5e59:ccaf with SMTP id bd12-20020a05600c1f0c00b0040b5e59ccafmr555401wmb.144.1701783183295;
        Tue, 05 Dec 2023 05:33:03 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:4583:8031:1ebd:143b? ([2a02:810b:f40:4300:4583:8031:1ebd:143b])
        by smtp.gmail.com with ESMTPSA id g14-20020a05600c310e00b0040b481222e3sm22564748wmo.41.2023.12.05.05.33.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Dec 2023 05:33:02 -0800 (PST)
Message-ID: <7bc1ba43-98cc-47ce-8d58-b4f4081c84b7@gmail.com>
Date: Tue, 5 Dec 2023 14:33:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Move core bus and gpio aliases to SoC dtsi for RK3128
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20231202130506.66738-2-knaerzche@gmail.com>
 <170173468934.501889.12474504620278418598.b4-ty@sntech.de>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <170173468934.501889.12474504620278418598.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_053306_549414_AF64CC8E 
X-CRM114-Status: GOOD (  11.69  )
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

Hi Heiko,

Am 05.12.23 um 01:05 schrieb Heiko Stuebner:
> On Sat, 2 Dec 2023 14:05:04 +0100, Alex Bee wrote:
>> Following up the recent discussion [0] about where aliases can be/should be
>> placed this series moves gpio, i2c and uart aliases to SoC dtsi for RK3128.
>>
>> Note: This patches are based on maintainter's repo.
>>
>> [0] https://lore.kernel.org/all/b0c637f5-5abf-420b-8b02-839eba68799e@linaro.org/T/#m94aebb23a29b015d94b250a70b675febdaa902ea
>>
>> [...]
> Applied, thanks!
>
> [1/3] ARM: dts: rockchip: Move gpio aliases to SoC dtsi for RK3128
>        commit: 3b0422a4ce59d8afb84bd7516bf71a3c1caa7925
> [2/3] ARM: dts: rockchip: Move i2c aliases to SoC dtsi for RK3128
>        commit: 39732a49803cf271454416341549df09c4a2fd2f
>
> I also applied patch 3 ... though had to pick it manually from the list
> as the subject was a bit garbled (missing 3/3), so b4 did not pick it up.

Thanks and sorry for the mess.

Not sure how I managed to get this done :) Will double check next time 
before submitting.

Alex

>
> Best regards,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
