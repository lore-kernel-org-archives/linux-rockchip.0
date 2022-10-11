Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CF38C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Oct 2022 04:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGixTFzTYExnpUhg8ai17bu25IUFKYhk/6YktdTAuQU=; b=RE0cF4lgyVFoqA
	xABbNNp4oYCdrRqMxEvcnGiLJu7tNQkWAVknM5xGBA1H2sl/906zR7FWcwbX23TUH/d/UKRIYfEfi
	7SaGJ4o05qR9ukezT+5npPoX9trFOgUAVGJgVO05xC7dv9g9kgf2JXkHqnL+i1qhyq10aTdRclNlF
	Unu2CfupnrMkczYTLJiw/egoQm+iMekfAhenXdSLZRKeL0K7FRGxeHoPxRK3In/an87z93K0BCGkt
	CmdafdEcx9o+hFhPvVM8F1Pd0Pno5WScOHU+k5WTrslTe2g07VW0W3uA2n/XRX6wpmNhZHDN9HfSW
	0mGAxGObVCj/1/LBhMxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oi75K-003GVh-Ty; Tue, 11 Oct 2022 04:41:42 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oi759-003GSq-Uv
	for linux-rockchip@lists.infradead.org; Tue, 11 Oct 2022 04:41:34 +0000
Received: by mail-pg1-x532.google.com with SMTP id s206so11904475pgs.3
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Oct 2022 21:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=omnom-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RIvDTD88Q5aqj0y5uenzJkWztoDkBAY3byn/dBOudeE=;
        b=EVA5wQHpq0CK/mlaafqza8TV+2AW5CwpjLiSkAtQMcrFNtma67C98aFiD6LL7oumiJ
         4Z/4sh82hlDE9sHeBUO1GTAN5NfO8eXvfzZAz2yhpjIelZ5qyah8J4SZuY6grAcCgoES
         1AX3vKcks4rGIpnMFwkxsJGhIL+Zd+/u9A9l8370pQAGbB3Y1kCXa6qJMxN4rDuyfsG6
         rPP367hdQPMa9RTQ4xbwhFQGxpc00kwISKPWO1E2jK0z2Lq+lNu8+DqYGLcfU7aYb23E
         KDbkB8X6gp6a/z9b6DNoRmTJ6BkfIVnSBs9u1wUEhZTWjrx0u9PFesGBfCUGL34TZ99H
         W8aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RIvDTD88Q5aqj0y5uenzJkWztoDkBAY3byn/dBOudeE=;
        b=tXTQ0AbT2dj3nQQhOHP77EjHdZtxqN91uK/N/fxFGJ62kgt1S2ahC49F0L3TOsTGw9
         rSZIWKilwYIUCuel+5YTlRvjKXgJfiPqT0JtrHF7bl9iqGGzOrNbSUM9nFMyXFWRG5b6
         SLBatZQ1Nsx8/2Lh+meVgVxgUaIT/aSgLSI3aPueV+eN5kVq81w3sv6QsITplUpc3x9x
         P0F1UOIUZw7ri5Qz3P+SxU4Y/2VJ24WYGBZ6jMHfapvwRw1nGTsZ0XiyVn7stkNITa+V
         0QT85tZCdUoFWRNdea+aLaWZe9Gxy6LKkN5riXC8s2U5Cuh4j997AIjklWV2j2Kj5iQ0
         rQUw==
X-Gm-Message-State: ACrzQf035hCyv2ru7BBupAay60toaoKKCAaqqO+6HPiw+als23378gep
	+9MyavU/w6etSC9Hx5s4fng02g==
X-Google-Smtp-Source: AMsMyM5Ez+kjDNPf2UflpLcuXB5SAY/OVRHOD5ckuoNILqYaRp1mBkiKDWnx55PKC1x4lOInCKyTEw==
X-Received: by 2002:aa7:9d11:0:b0:563:9272:b659 with SMTP id k17-20020aa79d11000000b005639272b659mr4800544pfp.86.1665463290135;
        Mon, 10 Oct 2022 21:41:30 -0700 (PDT)
Received: from [172.21.10.158] (119-18-16-128.771210.mel.static.aussiebb.net. [119.18.16.128])
        by smtp.gmail.com with ESMTPSA id 123-20020a620481000000b00562832fc0ffsm7768342pfe.56.2022.10.10.21.41.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Oct 2022 21:41:29 -0700 (PDT)
Message-ID: <5bec43fe-ff81-bc68-7b62-9e605b7e1f42@omnom.net>
Date: Tue, 11 Oct 2022 15:41:20 +1100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Subject: Re: [PATCH v5 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Frank Wunderlich <linux@fw-web.de>
Cc: Rob Herring <robh@kernel.org>, linux-rockchip@lists.infradead.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Simon Xue <xxm@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20220825193836.54262-1-linux@fw-web.de>
 <20220825193836.54262-2-linux@fw-web.de>
 <20221004150929.GA1506199-robh@kernel.org>
 <EC42D2C8-ACA5-4B6A-BC95-534CBDFC36C8@fw-web.de>
 <20221004205744.q5eybgbx6syszsqq@mercury.elektranox.org>
From: Andrew Powers-Holmes <aholmes@omnom.net>
In-Reply-To: <20221004205744.q5eybgbx6syszsqq@mercury.elektranox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_214132_007879_03F29EBA 
X-CRM114-Status: GOOD (  16.45  )
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

On 5/10/2022 7:57 am, Sebastian Reichel wrote:
> Hi,
> 
> On Tue, Oct 04, 2022 at 05:19:11PM +0200, Frank Wunderlich wrote:
>> Am 4. Oktober 2022 17:09:29 MESZ schrieb Rob Herring <robh@kernel.org>:
>>> On Thu, Aug 25, 2022 at 09:38:32PM +0200, Frank Wunderlich wrote:
>>>> From: Frank Wunderlich <frank-w@public-files.de>
>>
>>>> +properties:
>>>> +  compatible:
>>>> +    enum:
>>>> +      - rockchip,rk3568-pcie3-phy
>>>
>>> The driver also has 'rockchip,rk3588-pcie3-phy'. Please send a fix 
>>> adding it here or removing from the driver. Are they not compatible with 
>>> each other?
>>
>> Right, original driver has rk3588 support,but we can't test it.
>> Initialization and lane-mapping (bifurcation) was bit different.
>> So we wanted to upstream rk3568 first (but have not removed this
>> part from driver).
>>
>> I see that someone added rk3588 basic support and if he can test
>> rk3588 i can send compatible for it.
> 
> Basic rk3588 support is still WIP. At the moment patches for the CRU
> are still pending as well as base DT. I hope to land them for v6.2
> (so next merge window). At the same time I don't think PCIe support
> is realistic before v6.3.

Hi all,

I can confirm this patchset successfully brings up the PCIe 3.0
controller/PHY on an RK3588 - I'm using a Pine64 QuartzPro64, which is
very similar to the Rockchip RK3588-EVB1 board. Runs fine at x1, x2, x4
lane widths and full 8GT/s lane throughput.

The PCIe 2.0 lanes (which use the same PCIe controller driver) need some
changes to the rockchip-naneng-combphy driver that I've not quite gotten
to a working state, but that's unrelated to this series.

I have a (very messy) tree based on v6.0 (on GitHub at [0]) with
Sebastian's other RK3588 support patches dropped in, along with this
series and a few other tweaks. Works quite well :)

So insofar as RK3588 support is concerned,

Tested-By: Andrew Powers-Holmes <aholmes@omnom.net>

[0] https://github.com/neggles/linux-quartz64/tree/qp64-pcie

Cheers,
A

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
