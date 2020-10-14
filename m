Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C802EC433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 16:52:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 56E8F2173E
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 16:52:57 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="RhMLvB7t"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 56E8F2173E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xtAVXOnRnbI7TKSx18Fyanw6578DJeDz91ekLk998/I=; b=RhMLvB7tZFcouo6wJMHjrAJcH
	8wIp13o8lQgj/tJyJ1FXPUrS2O9VxdutB+vn2cfZ5IOjJiN3J2KnhD7PiDtVl5Hpeu0vv5JldCM32
	CLfuUEHjWO/vU2EsJ18eox9GEJWp7MKQFHi4GZT90NXL3oAu0vz2dKR4GC6LHL2ZFvSq3Uzba91lM
	qAD7Te4NPkUNzQENVvdnAEU9KxZc+NkyaMhBlGg4qyJOMowMNtxPYKyPg5xs7LhLMokdP/rV3VgNv
	OqZm5U1uUOpE0p3hzMWpEhqkiWe6H1fH/EsgS5d0Az9UmXUACu5otQZHf34pja4tlA5UnVj0FveoS
	nYyhFNUgg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSk1E-0003Ue-L8; Wed, 14 Oct 2020 16:52:52 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSk1C-0003Tf-48
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 16:52:51 +0000
Received: from [IPv6:2804:14c:483:7f66::1004] (unknown
 [IPv6:2804:14c:483:7f66::1004])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6B07F1F44C76;
 Wed, 14 Oct 2020 17:52:44 +0100 (BST)
Subject: Re: [PATCH v5 8/9] arm64: dts: rockchip: add isp0 node for rk3399
To: Tomasz Figa <tfiga@chromium.org>
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-9-helen.koike@collabora.com>
 <20200926130005.GC3781977@chromium.org>
 <905118dd-f108-6bc0-4cf0-9544fab51690@collabora.com>
 <CAAFQd5C4BcXyee58DpL4TfVJmaLQ-58_mwQucEm-df899va2Lw@mail.gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <243b5257-0f94-a43d-e623-70ca54d0e9d9@collabora.com>
Date: Wed, 14 Oct 2020 13:52:39 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <CAAFQd5C4BcXyee58DpL4TfVJmaLQ-58_mwQucEm-df899va2Lw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201014_125250_275239_3777E500 
X-CRM114-Status: GOOD (  26.22  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devel@driverdev.osuosl.org, linux-devicetree <devicetree@vger.kernel.org>,
 Eddie Cai <eddie.cai.linux@gmail.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 karthik.poduval@gmail.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Robin Murphy <robin.murphy@arm.com>, Mark Rutland <mark.rutland@arm.com>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 jbx6244@gmail.com, Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Thank you Tomasz and Robin for your comments,

On 10/14/20 1:43 PM, Tomasz Figa wrote:
> On Wed, Oct 14, 2020 at 6:27 PM Helen Koike <helen.koike@collabora.com> wrote:
>>
>> Hi Tomasz,
>>
>> On 9/26/20 10:00 AM, Tomasz Figa wrote:
>>> Hi Helen,
>>>
>>> On Wed, Jul 22, 2020 at 12:55:32PM -0300, Helen Koike wrote:
>>>> From: Shunqian Zheng <zhengsq@rock-chips.com>
>>>>
>>>> RK3399 has two ISPs, but only isp0 was tested.
>>>> Add isp0 node in rk3399 dtsi
>>>>
>>>> Verified with:
>>>> make ARCH=arm64 dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>>>>
>>>> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
>>>> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
>>>> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>>>>
>>>> ---
>>>>
>>>> V4:
>>>> - update clock names
>>>>
>>>> V3:
>>>> - clean up clocks
>>>>
>>>> V2:
>>>> - re-order power-domains property
>>>>
>>>> V1:
>>>> This patch was originally part of this patchset:
>>>>
>>>>     https://patchwork.kernel.org/patch/10267431/
>>>>
>>>> The only difference is:
>>>> - add phy properties
>>>> - add ports
>>>> ---
>>>>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 25 ++++++++++++++++++++++++
>>>>  1 file changed, 25 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>>> index dba9641947a3a..ed8ba75dbbce8 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>>> @@ -1721,6 +1721,31 @@ vopb_mmu: iommu@ff903f00 {
>>>>              status = "disabled";
>>>>      };
>>>>
>>>> +    isp0: isp0@ff910000 {
>>>> +            compatible = "rockchip,rk3399-cif-isp";
>>>> +            reg = <0x0 0xff910000 0x0 0x4000>;
>>>> +            interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>>>> +            clocks = <&cru SCLK_ISP0>,
>>>> +                     <&cru ACLK_ISP0_WRAPPER>,
>>>> +                     <&cru HCLK_ISP0_WRAPPER>;
>>>> +            clock-names = "isp", "aclk", "hclk";
>>>> +            iommus = <&isp0_mmu>;
>>>> +            phys = <&mipi_dphy_rx0>;
>>>> +            phy-names = "dphy";
>>>> +            power-domains = <&power RK3399_PD_ISP0>;
>>>
>>> Should this have status = "disabled" too? The mipi_dphy_rx0 node is
>>> disabled by default too, so in the default configuration the driver
>>> would always fail to probe.
>>
>> I'm thinking what is the overall guideline here.
>> Since isp and mipi_dphy are always present in the rk3399, shouldn't they always be enabled?
>> Or since they are only useful if a sensor is present, we should let the dts of the board to
>> enable it?
> 
> I don't have a strong opinion. I'm fine with enabling both by default
> as well, as it shouldn't hurt.
> 
> That said, I recall some alternative CIF IP block being present on
> this SoC as well (and patches posted recently), which AFAIR can't be
> activated at the same time as the ISP, so perhaps both of the
> alternatives should be disabled by default?
> 
> Best regards,
> Tomasz
> 

Based on these two last emails, I think it make sense to disable them by default.

I'll just wait for feedback on patch 5/9 to submit an updated version.

Thanks
Helen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
