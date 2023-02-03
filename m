Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D0FAC61DA4
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 18:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAzhrOxSfJerCA433m2aKBWwGzLfza4zlzl5ORZkSug=; b=doQYNJQOlKdB+3
	SDUcL3t09lgGUNdWE4sbO8U167K+k8Qf/4GjJ9PfQHHluw5xJhLOPGa24o8uNPlD5VJ77Joum9BCp
	SXNps/1o8Tq3o85cSHFHfEedPeQP2XQb8X7S2saHrrG1BZYdpsBcAAvhy8PR06mE8lriXbYlVlfZd
	ARul+0HCo13PzT1sKzqeqpgUcSuvNKDYeAln7wETGErrHZFc1+2SrK4As8lS2GCpUN5UHJzfIg7ng
	q8ww59/KFFp+W6b2GC0ypMrzRsp/S8evVrajrfW6g1ksT+PKwEIodBZ40yrX99A+LjZeohP1/1DDN
	0sln/RiiHsZW0856aQlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pO0VF-003Bfi-3j; Fri, 03 Feb 2023 18:09:37 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pO0V3-003BcW-JJ; Fri, 03 Feb 2023 18:09:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D604CB82B92;
	Fri,  3 Feb 2023 18:09:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BCB7C433D2;
	Fri,  3 Feb 2023 18:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675447762;
	bh=2s1p7DQGUh/JxGHm7n98ArCSrVoDk14fhhxGWv9Bbd8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=pugFJkzUnGBATC5DZCLkn5BQwwt+uqiyKiGBaUqsRnfC4zVxmqoIbDuAQHUkccyVd
	 FIEx2qvtf+qbfg30A8oAkGPACFrvd7L04metiEKkCxXjYcf9N8eMRXWEuY7Bkih0TC
	 FE7iYRlB/+9GEgHQlMgDbn4oYrL+/Dv5cAiugo9gMUv/13CA8F3qzNiUa7m9WJ3i3B
	 qBywk1wREuzar5+aOAMcXi7f5ngpWXv34bXK8o6FmE3E2TBTPdOfMHmQP24IZ9FT9C
	 dlS2fL2P+yoPIUXLqGdchW6r3lWo+V5rL2IbQKSpQHZhYrQ6z7W+lo0rWlxmOqgurw
	 kXvoBIrzlqcJg==
Message-ID: <9a4f56f0-0392-c263-98c9-2cf6c5ed3f9d@kernel.org>
Date: Fri, 3 Feb 2023 19:09:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 18/18] dt-bindings: devfreq: event: convert Rockchip DFI
 binding to yaml
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pegutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>
References: <20230203125012.3804008-1-s.hauer@pengutronix.de>
 <20230203125012.3804008-19-s.hauer@pengutronix.de>
 <ed9c3224-2f1a-c335-3028-6c23f40f57f4@kernel.org>
 <20230203160214.GZ13319@pengutronix.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230203160214.GZ13319@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_100925_995977_99807EDD 
X-CRM114-Status: GOOD (  25.19  )
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

On 03/02/2023 17:02, Sascha Hauer wrote:
> On Fri, Feb 03, 2023 at 04:14:56PM +0100, Krzysztof Kozlowski wrote:
>> On 03/02/2023 13:50, Sascha Hauer wrote:
>>> Convert the Rockchip DFI binding to yaml. While at it add the newly
>>> supported rk3568-dfi to the binding.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>
>> Please use scripts/get_maintainers.pl to get a list of necessary people
>> and lists to CC.  It might happen, that command when run on an older
>> kernel, gives you outdated entries.  Therefore please be sure you base
>> your patches on recent Linux kernel.
> 
> That's what I did. I skipped you and Rob because I know you're wathcing
> the list anyway.

Rob is apparently ok with that but I prefer not to be skipped, because:
1. such emails end up in entirely different mailbox,
2. I never know whether the submitter skipped other maintainers/mailing
lists or based the patches on some old tree. Both are happening. There
is easy way to solve it - just pipe entire patchset via get_maintainers
(--no-git) and do not de/select manually people, unless CC list grows
too much.

> 
>>> diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.yaml b/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.yaml
>>> new file mode 100644
>>> index 0000000000000..e082a0df7895a
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.yaml
>>
>> rockchip,dfi.yaml
> 
> ok.
> 
>>
>>> @@ -0,0 +1,38 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/devfreq/event/rockchip-dfi.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Rockchip DFI
>>> +
>>> +maintainers:
>>> +  - Sascha Hauer <s.hauer@pengutronix.de>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - rk3399-dfi
>>> +      - rk3568-dfi
>>
>> These are not correct compatibles.
> 
> What's wrong with them?

They are different than old ones, because they miss vendor prefix.

> 
>>
>>> +
>>> +  clocks:
>>> +    maxItems: 1
>>> +
>>> +  rockchip,pmu:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description:
>>> +      Phandle to the syscon managing the "PMU general register files".
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>
>> clocks were required
> 
> They are no longer, the RK3568 doesn't have a clock. Do I have to add
> something to make the clock optional on RK3568 only?

Then it's a change during conversion and not necessarily justified. The
conversion should not add new compatibles. Some changes are okay if they
are needed for conversion, but adding new stuff is better to keep in
separate patch.

You need allOf:if:then: requiring the clocks for older variant.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
