Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 564FBC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 09:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bMuA1EVBodzxnyDKxAK4rxQirW3ZgFVoNGYvMrSLrg=; b=eN67DQy4GXFOgF
	beHyMgdiXpzAf2lPvdbqAXc6rUwh4h7GT3Nu2RlL0Nkexwkwxy7vI2ckJoNaDS84N91McjmLTBLK7
	G3sV2PSbK00M1zKgi9uDQc13kBKqUe12kqK54VhSaUrlwkW1P/9N4kFVlA8UuqnItEGmvemzxpbij
	whk483OkeyCFCJTYw8wGljllECYu5S2bHRUTWO2OQwxrmLgbN0hXzk0l/pPH+yax7XcQtemlVKy7E
	Jh3XGo4rc36YJP3ifyKhufrQfRfjs0kppIdjFamwGBX3Ol0hbcHHmnmoQwh7LbB0EBWP5iqyeNIx0
	KK9SJysTwFnVJM+gtyGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOc36-00BE3U-IP; Mon, 28 Feb 2022 09:10:32 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOc32-00BE2G-K9; Mon, 28 Feb 2022 09:10:30 +0000
Received: by mail-ej1-x629.google.com with SMTP id a8so23359228ejc.8;
 Mon, 28 Feb 2022 01:10:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=8Krg0mr2kaK68jYx48nJZ0wrk+YDfvLz7ns689XPH4Q=;
 b=d2iKmv82fP+XIWJs+Hur4KZbGS6cxWprmCmJYJeK9o7EvzXAx+PxEQCqO41184GskG
 fc5MZFAuqGyoNY0CF9xKgItODKT98AWTVnaKB0VNav06lTjsotGQc38ZCZRIfJo0Uqb1
 OzCnd1kaHdnYJK+7IlWycPbUBrMhSF1VVVf5Ch7qoRBU+N4ldD1O28HuCYS9bdoOoVdY
 68YUVoE9XLcHpVLvf6BJPetNFxIMFIycwvB6RLjdTr82zlaVtvcINgWcU/NOtBZFlWmA
 SM3jG/SEINe1CyeYf61Xp03bbaFbNC1oWI0cpMX9nLXwA0QOLymkFWpfp9rNvW1fZ4EZ
 VzwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=8Krg0mr2kaK68jYx48nJZ0wrk+YDfvLz7ns689XPH4Q=;
 b=ZRrxZamq3wTRQ0SJyG/bGKbrEG5zwRoxw3KwQ1msNSIDJWLWzE9TR+snlG3UbPQKTE
 n9GTOi+Q9TJ5/1tXZRS4aLoqKyauqwsZ3QZC1J+O4moULWZdsjbu2Hm8hIE7YsRSOwMl
 qXBNUOlz0H425ZAaEhSLE/SHVup1Vr7AuY0avNMldNpSNwxRsbFtWgH/AEV4sZTRz2dU
 8vG51hkAnQCR3fmb6RsWMkIRDck0lb5iTBLFb0FZzXll6rCJtL82arAdcIZs13uKj7Ce
 QHDzFI84ZjFJdIFXepMa3oaIBFb4TKVk/+ehB/5FSF9iJaD27AT5ucKGcG2uVUIRkCPv
 4k+Q==
X-Gm-Message-State: AOAM531l+ixZEFvwZOBJJKBd5vXnC3iA+RqMsL3gTFgOe4odM/3Kpgux
 Mu1tDqp3VEbDYRadHiCANeONYK1OVu6ykA==
X-Google-Smtp-Source: ABdhPJy0evTBl6CYcrzsaeweTsqhlhACAh/N0Lw3tRWxs0lA48zDANMnfJBJjpu1sG0Oha5+dM1R6A==
X-Received: by 2002:a17:906:a0ce:b0:6d1:cb30:3b3b with SMTP id
 bh14-20020a170906a0ce00b006d1cb303b3bmr14669120ejb.582.1646039426333; 
 Mon, 28 Feb 2022 01:10:26 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 d11-20020a170906c20b00b006d584a09b9fsm4191677ejz.98.2022.02.28.01.10.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Feb 2022 01:10:25 -0800 (PST)
Message-ID: <3ac3cdf9-17c0-654f-b204-c5b4b0436c98@gmail.com>
Date: Mon, 28 Feb 2022 10:10:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 5/7] arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220227153016.950473-1-pgwipeout@gmail.com>
 <20220227153016.950473-6-pgwipeout@gmail.com>
 <7b20fccd-4394-da3c-6556-4732d67cde3d@gmail.com>
 <CAMdYzYp8x_mKffm1WkHD4D1Fx_tVJ8WdBc=u-j+j_zRbJmyaCQ@mail.gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <CAMdYzYp8x_mKffm1WkHD4D1Fx_tVJ8WdBc=u-j+j_zRbJmyaCQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_011028_737515_B43B312F 
X-CRM114-Status: GOOD (  20.06  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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



On 2/27/22 23:44, Peter Geis wrote:
> On Sun, Feb 27, 2022 at 12:50 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>
>>
>>
>> On 2/27/22 16:30, Peter Geis wrote:
>>> Add the dwc3 device nodes to the rk356x device trees.
>>> The rk3566 has one usb2 capable dwc3 otg controller and one usb3 capable
>>> dwc3 host controller.
>>> The rk3568 has one usb3 capable dwc3 otg controller and one usb3 capable
>>> dwc3 host controller.
>>>
>>> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk3566.dtsi | 11 ++++++++
>>>  arch/arm64/boot/dts/rockchip/rk3568.dtsi |  9 ++++++
>>>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 35 +++++++++++++++++++++++-
>>>  3 files changed, 54 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
>>> index 3839eef5e4f7..0b957068ff89 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3566.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
>>> @@ -6,6 +6,10 @@ / {
>>>       compatible = "rockchip,rk3566";
>>>  };
>>>
>>> +&pipegrf {
>>> +     compatible = "rockchip,rk3566-pipe-grf", "syscon";
>>> +};
>>> +
>>>  &power {
>>>       power-domain@RK3568_PD_PIPE {
>>>               reg = <RK3568_PD_PIPE>;
>>> @@ -18,3 +22,10 @@ power-domain@RK3568_PD_PIPE {
>>>               #power-domain-cells = <0>;
>>>       };
>>>  };
>>> +
>>> +&usb_host0_xhci {
>>> +     phys = <&usb2phy0_otg>;
>>> +     phy-names = "usb2-phy";
>>> +     extcon = <&usb2phy0>;
>>> +     maximum-speed = "high-speed";
>>> +};
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>>> index 5b0f528d6818..8ba9334f9753 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>>> @@ -99,6 +99,10 @@ opp-1992000000 {
>>>       };
>>>  };
>>>
>>> +&pipegrf {
>>> +     compatible = "rockchip,rk3568-pipe-grf", "syscon";
>>> +};
>>> +
>>>  &power {
>>>       power-domain@RK3568_PD_PIPE {
>>>               reg = <RK3568_PD_PIPE>;
>>> @@ -114,3 +118,8 @@ power-domain@RK3568_PD_PIPE {
>>>               #power-domain-cells = <0>;
>>>       };
>>>  };
>>> +
>>> +&usb_host0_xhci {
>>> +     phys = <&usb2phy0_otg>, <&combphy0 PHY_TYPE_USB3>;
>>> +     phy-names = "usb2-phy", "usb3-phy";
>>> +};
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>> index 7cdef800cb3c..072bb9080cd6 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>> @@ -230,6 +230,40 @@ scmi_shmem: sram@0 {
>>>               };
>>>       };
>>>
>>> +     usb_host0_xhci: usb@fcc00000 {
>>
>>> +             compatible = "snps,dwc3";
>>
>> compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
>>
>> compatible strings must be SoC orientated.
>> Add binding like you did before.
> 
> Okay, should this go in the core yaml, since it's not really handled
> by of-simple?

Nothing to change in core.c, because the fall back string does the
trick, so we don't have to change the driver for every new SoC.
Change the node compatible here and add the binding.
That's it. The rest comes later if needed.

> Also, should I add in the compatible for rk3328 as well?

No, same story the fall back string does the trick in core.c


> 
>>
>>> +             reg = <0x0 0xfcc00000 0x0 0x400000>;
>>> +             interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
>>> +             clocks = <&cru CLK_USB3OTG0_REF>, <&cru CLK_USB3OTG0_SUSPEND>,
>>> +                      <&cru ACLK_USB3OTG0>;
>>> +             clock-names = "ref_clk", "suspend_clk",
>>> +                           "bus_clk";
>>> +             dr_mode = "host";
>>> +             phy_type = "utmi_wide";
>>> +             power-domains = <&power RK3568_PD_PIPE>;
>>> +             resets = <&cru SRST_USB3OTG0>;
>>> +             snps,dis_u2_susphy_quirk;
>>> +             status = "disabled";
>>> +     };
>>> +
>>> +     usb_host1_xhci: usb@fd000000 {
>>
>>> +             compatible = "snps,dwc3";
>>
>> compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
>>
>>> +             reg = <0x0 0xfd000000 0x0 0x400000>;
>>> +             interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
>>> +             clocks = <&cru CLK_USB3OTG1_REF>, <&cru CLK_USB3OTG1_SUSPEND>,
>>> +                      <&cru ACLK_USB3OTG1>;
>>> +             clock-names = "ref_clk", "suspend_clk",
>>> +                           "bus_clk";
>>> +             dr_mode = "host";
>>> +             phys = <&usb2phy0_host>, <&combphy1 PHY_TYPE_USB3>;
>>> +             phy-names = "usb2-phy", "usb3-phy";
>>> +             phy_type = "utmi_wide";
>>> +             power-domains = <&power RK3568_PD_PIPE>;
>>> +             resets = <&cru SRST_USB3OTG1>;
>>> +             snps,dis_u2_susphy_quirk;
>>> +             status = "disabled";
>>> +     };
>>> +
>>>       gic: interrupt-controller@fd400000 {
>>>               compatible = "arm,gic-v3";
>>>               reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
>>> @@ -297,7 +331,6 @@ pmu_io_domains: io-domains {
>>>       };
>>>
>>>       pipegrf: syscon@fdc50000 {
>>> -             compatible = "rockchip,rk3568-pipe-grf", "syscon";
>>>               reg = <0x0 0xfdc50000 0x0 0x1000>;
>>>       };
>>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
