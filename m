Return-Path: <SRS0=2K8y=II=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B37CC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 06:47:33 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 475BF64FE3
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 06:47:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 475BF64FE3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gfnl8iMHktkzKSg0/Z1HJc7ieF6E9laUv9aBCNlnBv4=; b=SUr22ha1pqpsK5
	9lHWlTsGf2aKBWKEdZJgp22HynpB8HwOXqAi+kh08BUF6VulEyajFo6tBOG3G5L+4RQCGB3KNJ016
	d7ZLLc9rgpBmMrFNg/c69XmWO24lQBrARqunQ1Ui21Jyqt1i0VsBuUk0VEQVBEKqnW4Lfyuej4om4
	vOa2gXEzdqUayN5yWYyjAfvywD09njTaViJBORd9+BHMOaAc1Q3sTRaWhKpSOuHxEg/yoreDrJW/n
	nmnk/+zIHB9WSJySkoT7HoOXylDmrZkJf+xYQ4xnx90ID7NVh7crJwF5CKbAvVxqlk54MVG9xt6pc
	NeAUvxr9wrS9SGD0VTTA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJscU-0069V0-Iy; Wed, 10 Mar 2021 06:47:02 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJsaI-0069Lx-78
 for linux-rockchip@lists.infradead.org; Wed, 10 Mar 2021 06:45:20 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id AE8001B0A;
 Wed, 10 Mar 2021 14:44:27 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.64] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P13096T140547786254080S1615358667251887_; 
 Wed, 10 Mar 2021 14:44:27 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <922dcb4a27086f313d7c2f0d168d7104>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Message-ID: <fab85a6a-5db3-a5c1-f6e1-16f55641ecb5@rock-chips.com>
Date: Wed, 10 Mar 2021 14:44:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101
 Thunderbird/86.0
Cc: shawn.lin@rock-chips.com, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v3_2/3=5d_dt-bindings=3a_mmc=3a_sdhci-of-d?=
 =?UTF-8?B?d2NtaHNjOiBBZGQgcm9ja2NoaXAgc3VwcG9ydOOAkOivt+azqOaEj++8jOmCrg==?=
 =?UTF-8?B?5Lu255Sxcm9iaGVycmluZzJAZ21haWwuY29t5Luj5Y+R44CR?=
To: Rob Herring <robh@kernel.org>
References: <1615254990-192784-1-git-send-email-shawn.lin@rock-chips.com>
 <1615254990-192784-2-git-send-email-shawn.lin@rock-chips.com>
 <20210310030122.GA1664258@robh.at.kernel.org>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20210310030122.GA1664258@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_064454_919079_1D00FE70 
X-CRM114-Status: GOOD (  11.86  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Rob

On 2021/3/10 11:01, Rob Herring wrote:
> On Tue, Mar 09, 2021 at 09:56:29AM +0800, Shawn Lin wrote:
>> This patch adds rockchip support in sdhci-of-dwcmhsc.yaml
>>
>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

.....

>> +
>> +  rockchip,txclk-tapnum:
>> +    description: Specify the number of delay for tx sampling.
>> +    $ref: /schemas/types.yaml#/definitions/uint32
> 
> Constraints for this? 0 - 2^32 is okay?

Oh, actually this is a 4-bit value, and the reg map looks like:

7:5 RO reserved
--------------------
4:0 RW tapnum

So I think it should constraints for u8?


> 
>> +
>>   
>>   required:
>>     - compatible
>> @@ -49,6 +62,17 @@ unevaluatedProperties: false
>>   
>>   examples:
>>     - |
>> +    mmc@fe310000 {
>> +      compatible = "rockchip,dwcmshc-sdhci";
>> +      reg = <0xfe310000 0x10000>;
>> +      interrupts = <0 25 0x4>;
>> +      clocks = <&cru 17>, <&cru 18>, <&cru 19>, <&cru 20>, <&cru 21>;
>> +      clock-names = "core", "bus", "axi", "block", "timer";
>> +      bus-width = <8>;
>> +      #address-cells = <1>;
>> +      #size-cells = <0>;
>> +    };
>> +  - |
>>       mmc@aa0000 {
>>         compatible = "snps,dwcmshc-sdhci";
>>         reg = <0xaa000 0x1000>;
>> -- 
>> 2.7.4
>>
>>
>>
> 
> 
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
