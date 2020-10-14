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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75B8BC433E7
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 16:46:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 06664214D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 16:46:52 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="oSbNNh4u"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 06664214D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qlfgN7wOAlbEnEoUn6sqCO7rgr1rRgQkl91npBUEHJ4=; b=oSbNNh4u+f92gBpAkh9tCQljh
	a59tQU9rR36LiJqK1/opUtiwuzpGsjmQMCRHnQqXoiEz3bjmynti0q4OsuHyDMo3U+3m5OxkgJ8TX
	uVrRVHcgW8Thx6aprhVC8spk8gkwxYYUeK+8j9F5NwLrJkej+Jvk4RuPU1Pz4g97FGPudi+BmPC5u
	HfOrNDhTuAiP6lbR5p2ioUJLK3k8z5ztR7mHJTEc7zGC4jf+ksPP+/MpdPogCjy6H0yRBQQjo3KSR
	mVAFrQuOwOZREenH9mQ2+49IK9ShrEnlqMO1UDU6GqH70Ox59FYZFCcqRG8OOaqZtgQUj6gfubgUI
	TiEVMrLAA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSjvL-0002Sz-SM; Wed, 14 Oct 2020 16:46:47 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSjvJ-0002SG-3S
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 16:46:46 +0000
Received: from [IPv6:2804:14c:483:7f66::1004] (unknown
 [IPv6:2804:14c:483:7f66::1004])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D14E91F45780;
 Wed, 14 Oct 2020 17:46:39 +0100 (BST)
Subject: Re: [PATCH v5 5/9] media: staging: rkisp1: remove unecessary clocks
To: Rob Herring <robh+dt@kernel.org>
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-6-helen.koike@collabora.com>
 <CAL_Jsq+qB=yUtHKKujiUWrsq+W-3ggM3B_SuuDzfYEheczn=8g@mail.gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <2dcdda41-bdb4-55a8-557f-8175983effb5@collabora.com>
Date: Wed, 14 Oct 2020 13:46:35 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+qB=yUtHKKujiUWrsq+W-3ggM3B_SuuDzfYEheczn=8g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201014_124645_310468_477D2527 
X-CRM114-Status: GOOD (  23.18  )
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 devicetree@vger.kernel.org, Eddie Cai <eddie.cai.linux@gmail.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 "heiko@sntech.de" <heiko@sntech.de>, Shunqian Zheng <zhengsq@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 karthik.poduval@gmail.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Robin Murphy <robin.murphy@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Johan Jonker <jbx6244@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Rob,

Thnaks for your reply.

On 9/22/20 11:24 AM, Rob Herring wrote:
> On Wed, Jul 22, 2020 at 9:56 AM Helen Koike <helen.koike@collabora.com> wrote:
>>
>> aclk_isp_wrap is a child of aclk_isp, and hclk_isp_wrap is a child of
>> hclk_isp, thus we can remove parents from the list.
>>
>> Also, for the isp0, we only need the ISP clock, ACLK and HCLK.
>> In the future we'll need a pixel clock for RK3288 and RK3399, and a JPEG
>> clock for RK3288.
>>
>> So with the goal to cleanup the dt-bindings and remove it from staging,
>> simplify clock names to isp, aclk and hclk.
>>
>> Assigned clocks are meant to refer to the full path in the clock tree,
>> i.e. the leaf in the tree.
>> For instance, in RK3399, the clock responsible for ACLK (ISP AXI CLOCK)
>> is aclk_isp0_wrapper.
>>
>> For reference, this is the isp clock topology on RK3399:
>>
>>  xin24m
>>     pll_npll
>>        npll
>>           clk_isp1
>>           clk_isp0
>>     pll_cpll
>>        cpll
>>           aclk_isp1
>>              aclk_isp1_noc
>>              hclk_isp1
>>                 aclk_isp1_wrapper
>>                 hclk_isp1_noc
>>           aclk_isp0
>>              hclk_isp1_wrapper
>>              aclk_isp0_wrapper
>>              aclk_isp0_noc
>>              hclk_isp0
>>                 hclk_isp0_wrapper
>>                 hclk_isp0_noc
>>  pclkin_isp1_wrapper
>>
>> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>>
>> ---
>> Changes in V5:
>> - Use if/then schema as suggested by Rob Herring on
>> https://patchwork.linuxtv.org/project/linux-media/patch/20200702191322.2639681-6-helen.koike@collabora.com/#119729
>>
>> Changes in V4:
>> - update binding according to suggestion by Robin Murphy
>> on https://patchwork.kernel.org/patch/11475007/
>>
>> Changes in V3:
>> - this is a new patch in the series
>> ---
>>  .../bindings/media/rockchip-isp1.yaml         | 50 ++++++++++++-------
>>  drivers/staging/media/rkisp1/rkisp1-dev.c     |  8 ++-
>>  2 files changed, 36 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>> index 62a6b9c959498..23c677d15037a 100644
>> --- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>> @@ -24,20 +24,10 @@ properties:
>>      maxItems: 1
>>
>>    clocks:
>> -    items:
>> -      - description: ISP clock
>> -      - description: ISP AXI clock clock
>> -      - description: ISP AXI clock  wrapper clock
>> -      - description: ISP AHB clock clock
>> -      - description: ISP AHB wrapper clock
>> +    minItems: 3
> 
> You need maxItems here too or it will always be 3.
> 
>>
>>    clock-names:
>> -    items:
>> -      - const: clk_isp
>> -      - const: aclk_isp
>> -      - const: aclk_isp_wrap
>> -      - const: hclk_isp
>> -      - const: hclk_isp_wrap
>> +    minItems: 3
>>
>>    iommus:
>>      maxItems: 1
>> @@ -116,6 +106,34 @@ required:
>>    - power-domains
>>    - ports
>>
>> +if:
>> +  properties:
>> +    compatible:
>> +      contains:
>> +        const: rockchip,rk3399-cif-isp
>> +then:
>> +  properties:
>> +    clocks:
>> +      maxItems: 4
>> +      minItems: 3
> 
> For a single compatible you shouldn't really have a variable number of clocks.

I'm not entirely sure how to make this separation, since isp0 and isp1 (not yet supported)
would use the same compatible.
Unless if we separate in two compatibles, but maybe this is an overhead just for an extra clock.
What do you think?

> 
>> +      items:
>> +        # isp0 and isp1
>> +        - description: ISP clock
>> +        - description: ISP AXI clock
>> +        - description: ISP AHB clock
>> +        # only for isp1
>> +        - description: ISP Pixel clock
>> +    clock-names:
>> +      maxItems: 4
>> +      minItems: 3
>> +      items:
>> +        # isp0 and isp1
>> +        - const: isp
>> +        - const: aclk
>> +        - const: hclk
>> +        # only for isp1
>> +        - const: pclk_isp
> 
> Don't you need an 'else' clause. For not rockchip,rk3399-cif-isp,
> there's no definition of what clocks there are.

There is only one compatible defined for now, rk3288 will be added later.
The idea to add if/then is to make it easier to add rk3288:

https://patchwork.kernel.org/project/linux-media/patch/20200406073017.19462-4-karthik.poduval@gmail.com/

Regards,
Helen

> 
> Rob
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
