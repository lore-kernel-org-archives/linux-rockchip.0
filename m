Return-Path: <SRS0=2K8y=II=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF06FC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 07:01:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 648E564FE8
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 07:01:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 648E564FE8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NNbWxhzp0kYo/db72eFcTf3NPDmX8kbLwBrHPCbdLFw=; b=iKGzmsk5ie/znU50F196W+3Cz
	DnI6ujv3TSXjbugzzn8Z618FleNS0XCY19Rf71cFcPP98G2G4M+xd/iqQp4HqW9k4I/xkSjL90oz7
	yuve0Skk3PgTj5ZASXAlnwnHFQa2ABd/jGgNAR4CVA39o7Ca7hXWna7O6tKLn6V4Ckzny7XKaFeK1
	3WesM8vxphqL1CK28+ehTYsW8WoKwjnWJx3/mxq361JcIRl6v+WWPyPNDB+gK3lr+Wa1XSQHMx96L
	g+T2LKXlU8+S47uhooW8MK+L2I7OQsIabfgLI6VFNQUnkZe9MdDx3MGGO+wJP58Q0lVui9zsIvOVE
	PWErG5b0w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJspx-006Ak8-MS; Wed, 10 Mar 2021 07:00:53 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJspr-006Aii-JN
 for linux-rockchip@lists.infradead.org; Wed, 10 Mar 2021 07:00:49 +0000
Received: by mail-ej1-x62e.google.com with SMTP id p7so24809688eju.6
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Mar 2021 23:00:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HpV61g+oYLSYBtGEzPQewJ9jJKBtqUZ3vW8+ZlcK3bc=;
 b=LDWfLaRuwyZp4ECU1y7VCbePgB5Q0iLvwj39bY/02EFzCMUDA4nu/BjUhUB0pC2DNH
 iP8MFEJEsy1ho8AWsc1bp6afZbOlYCMnkqj9uWN7jXSwMItiz3/1dzJjAc9NlUOXjkdT
 5AK6iNmA8b8mQcBVXdTdyjFK7ysbPekP4/C1y9dBPaaORFTMrn6cdWn9QK/ReEOGyx+K
 D8GzxCxMRn8VR3EqoVsuQmiqEQs5ApvQjyjduJoOMMz/utUaEmAcitpPzOGVFrVzq0ED
 xKHurBwn2oMzDB/egVY0TGxBOjZCMZo5V31EvjOVS6HyIhlVfnIBXDeLyKr1hM6CfQ3i
 9ipg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HpV61g+oYLSYBtGEzPQewJ9jJKBtqUZ3vW8+ZlcK3bc=;
 b=dMxDEHCfbhUZrqa8EswLjPn7kSO7N44y5SgIcuNyB93FXSkIG7E/FbKnWNWYBjMfVm
 DzjWPnhpy+BophfugUBrED7EvEcoxDmLguMgbdO3KowrHvRnGgg7zUre2rwmcox7KBSE
 aL/htmxVJPv/Lw9fVZ0fOjQPJ4oQ7lUU9ODTirOrQOhpHQ4Zgp8lTSrES554BePC/WtX
 yMJYLxwjdLHxudrUVU1FZO2p43RbNZxgijyEPvaKev4O1ts1FsT5P5KOeNOUzETU6Xg+
 koQYVUMvq4k15mZe0yKR4AXg+HvBIxTApPRLTmrgj6B/1iVaLLDWifkoYSdsG4IZ8qAb
 25Fg==
X-Gm-Message-State: AOAM532/6w4yUzOyzx9PCnx6ddriLxgnnXdZ+AUql05twDz7w1ObiSKZ
 EUFMsu0WF+LuiPQlW7LwS7E=
X-Google-Smtp-Source: ABdhPJxgXlxFN3aPH8RD25JOLFYzmkQANhpzj7tPt7r9hmWyNhp5WBYhOc4/TPu6lhL3aOyHTjzFlw==
X-Received: by 2002:a17:906:a944:: with SMTP id
 hh4mr2005336ejb.479.1615359646569; 
 Tue, 09 Mar 2021 23:00:46 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 r5sm10157691eds.49.2021.03.09.23.00.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Mar 2021 23:00:46 -0800 (PST)
Subject: Re: Re: [PATCH v3 2/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Add
 rockchip support
To: Rob Herring <robh@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
References: <1615254990-192784-1-git-send-email-shawn.lin@rock-chips.com>
 <1615254990-192784-2-git-send-email-shawn.lin@rock-chips.com>
 <20210310030122.GA1664258@robh.at.kernel.org>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <9f8b3be6-d87e-d944-d5db-67f3bcf0fad0@gmail.com>
Date: Wed, 10 Mar 2021 08:00:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210310030122.GA1664258@robh.at.kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_070047_829818_A5B13D8F 
X-CRM114-Status: GOOD (  17.51  )
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

On 3/10/21 4:01 AM, Rob Herring wrote:
> On Tue, Mar 09, 2021 at 09:56:29AM +0800, Shawn Lin wrote:
>> This patch adds rockchip support in sdhci-of-dwcmhsc.yaml
>>
>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>> ---
>>
>> Changes in v3: None
>>
>>  .../bindings/mmc/snps,dwcmshc-sdhci.yaml           | 24 ++++++++++++++++++++++
>>  1 file changed, 24 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
>> index f99fb9f..43989f2 100644
>> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
>> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
>> @@ -16,6 +16,7 @@ allOf:
>>  properties:
>>    compatible:
>>      enum:

>> +      - rockchip,dwcmshc-sdhci

Compatible strings are supposed to be SoC orientated.
What SoC was this change for? rk3568 ?
Could Shawn confirm that?

         - rockchip,rk3568-dwcmshc-sdhci ??

Could Rob advise here?

>>        - snps,dwcmshc-sdhci
>>  
>>    reg:
>> @@ -31,12 +32,24 @@ properties:
>>      items:
>>        - description: core clock
>>        - description: bus clock for optional
>> +      - description: axi clock for rockchip specified
>> +      - description: block clock for rockchip specified
>> +      - description: timer clock for rockchip specified
>> +
>>  
>>    clock-names:
>>      minItems: 1
>>      items:
>>        - const: core
>>        - const: bus
>> +      - const: axi
>> +      - const: block
>> +      - const: timer
>> +
>> +  rockchip,txclk-tapnum:
>> +    description: Specify the number of delay for tx sampling.
>> +    $ref: /schemas/types.yaml#/definitions/uint32
> 
> Constraints for this? 0 - 2^32 is okay?
> 
>> +
>>  
>>  required:
>>    - compatible
>> @@ -49,6 +62,17 @@ unevaluatedProperties: false
>>  
>>  examples:
>>    - |
>> +    mmc@fe310000 {

>> +      compatible = "rockchip,dwcmshc-sdhci";

      compatible = "rockchip,rk3568-dwcmshc-sdhci"; ??

>> +      reg = <0xfe310000 0x10000>;
>> +      interrupts = <0 25 0x4>;
>> +      clocks = <&cru 17>, <&cru 18>, <&cru 19>, <&cru 20>, <&cru 21>;
>> +      clock-names = "core", "bus", "axi", "block", "timer";
>> +      bus-width = <8>;
>> +      #address-cells = <1>;
>> +      #size-cells = <0>;
>> +    };
>> +  - |
>>      mmc@aa0000 {
>>        compatible = "snps,dwcmshc-sdhci";
>>        reg = <0xaa000 0x1000>;
>> -- 
>> 2.7.4
>>
>>
>>
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
