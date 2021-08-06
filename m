Return-Path: <SRS0=27lq=M5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 324B7C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Aug 2021 08:15:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E241560238
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Aug 2021 08:15:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E241560238
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bjBe7YOpNQ40wOxm4H8triIM//JKldFTBZCrCHVinIo=; b=sy17pszuUGcfETbqVHk8I2olNk
	rGKr71KN8+WvUgzFgvaB1kySoBrP3SwicFHy6lqlXgIHHxayNbY131QnrFB62VkmoEljN0qps1Fzx
	qnSBWGdHpFsddzdwUDUUwiZ2px5Y+yxQrZcNP3uWEt6CuhwXIrBOC/F4B1auxHzkCHSK93UMerb+U
	PwZ1Y6+P2XmxkCoKueTknoOMB/R9KTnZ3qCXd1aJXtMx9jFx9+KUS9aNolsTrJbvzvEWSjdQYZv37
	62jkyEq68RcsgJPBM/BF+pCg5w2050ln4YuqH8IvDcZT5hIpxc3k+iv+xOMuagZIw3k/vJUsIuEJt
	tC5f1hHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBv0I-00BpFR-DU; Fri, 06 Aug 2021 08:14:54 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBv0F-00BpET-HJ
 for linux-rockchip@lists.infradead.org; Fri, 06 Aug 2021 08:14:52 +0000
Received: by mail-pj1-x1029.google.com with SMTP id
 dw2-20020a17090b0942b0290177cb475142so21549185pjb.2
 for <linux-rockchip@lists.infradead.org>; Fri, 06 Aug 2021 01:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=EA8/NMEQ1/xPrB1n9sMj1XYF0fWKh0U0LaqEd2bvscI=;
 b=IVThQKyvn2gxNJXnpFLRy2/6zL46SUnW9e68RZRuqE0OJSSzaeKQCfdAaCrcwSefTV
 9mXe3B/Hsky78FMQ7M5DXshJVKO176KLEh2fqyi72GPa3f0qvamAIdR5IlxaBbVuuosz
 yOTQthryqUIGVGGXuVGZGAlRp2iPuXSGySJcw+JD+3FoeQiBgVQf5j5fnuOD+b4OUZsU
 XZ3kgOlzGypYT8bCQ7giTdHs+DjDCWTZEX+TV0pgVYkrDi6+iqz69fwXmtvgEA/kyded
 RnqD6PtrgKyOheu/asqpIq4ddrKVzakkLAeVe0SiCc3qSlde04Orp4+i/yXSWjU9rRmh
 naxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EA8/NMEQ1/xPrB1n9sMj1XYF0fWKh0U0LaqEd2bvscI=;
 b=bWjuCAiA0rQkhbPI2Z5yO9sZlcyUyD779Mzuy2ZT/1qYbygxYxixWA1Zo/+avZrT8a
 yvaX/ZpcTql5saJMiakD4eNx7+b2LlHepXXw/Y1ePewLnKjOUclhC2TzAKBBcqcsC82d
 +EN3SwHiD+NhPruIHYLB1CWVsE5Y3Nip6apSLkw1QURRF1tegoU2znBjRvCiHLILhRPJ
 i9g8wYCAiudv2w/Sywl+0BCmP5s3BCuoIFykN5saMZwMNnW4fQDqjLOG6O3dlxhefoV2
 jxjPj0dtlKMd9y0kdvhgaOtqveH/mMNyyrBVmz5HR+Woefcui0fBbey4RwNxfCrSKL/v
 V9vQ==
X-Gm-Message-State: AOAM5324+WcnNfvx8QbkYxRLBhjHDVU2NtdfSGtJI87oLqEQCab9rokV
 LRXyPxGxfNev2ebl40xPXxo=
X-Google-Smtp-Source: ABdhPJydzGuINtfzjJ4rc0aYtY1YDr0eByVPskQaH4/Cy/8RSUEwiYmxXRgr1K8xjCX86Q9WHlu6Og==
X-Received: by 2002:a62:b414:0:b029:317:52d:7fd5 with SMTP id
 h20-20020a62b4140000b0290317052d7fd5mr9568253pfn.30.1628237690428; 
 Fri, 06 Aug 2021 01:14:50 -0700 (PDT)
Received: from [192.168.0.104] ([122.187.88.150])
 by smtp.gmail.com with ESMTPSA id k200sm9829958pfd.46.2021.08.06.01.14.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Aug 2021 01:14:50 -0700 (PDT)
Subject: Re: [BUG] mmc_regulator_set_ocr can't cope with regulator-fixed
To: Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Cc: Jaehoon Chung <jh80.chung@samsung.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mmc@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org
References: <CGME20210804143357epcas1p1c67eca591d8bb557c11b8175baaa8550@epcas1p1.samsung.com>
 <CAMdYzYrx8pgeyK7u=kcopZ+Wae+fQdr_uM4AuVjqWKfZYikgcA@mail.gmail.com>
 <a9aa636e-326f-a848-dd69-41df87c013af@samsung.com>
 <CAMdYzYr9PX-9=kkCAfGe8Q0-D+gRo_qCwse8SiGVsmod7fffiA@mail.gmail.com>
 <20210805124650.GM26252@sirena.org.uk>
 <CAMdYzYpR6br7s1RD2ze92WzJjtEDZwy9qS6YhghgXy7F91keFg@mail.gmail.com>
 <20210805130842.GO26252@sirena.org.uk>
From: Ravikumar Kattekola <callmerk1986@gmail.com>
Message-ID: <81006771-99bf-a5f9-4001-2cf3dc84f69d@gmail.com>
Date: Fri, 6 Aug 2021 13:44:45 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210805130842.GO26252@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_011451_653829_1EE2C944 
X-CRM114-Status: GOOD (  22.13  )
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

Hi,
Resending my reply as my Mail client settings prevented delivery

On 05/08/21 6:38 pm, Mark Brown wrote:
> On Thu, Aug 05, 2021 at 08:58:58AM -0400, Peter Geis wrote:
>> On Thu, Aug 5, 2021 at 8:47 AM Mark Brown <broonie@kernel.org> wrote:
> 
>>> One thing to watch out for with this approach is if there's things that
>>> really need a specific voltage to be set then you'll have to stop those
>>> things happening if you've got a voltage regulator that can't deliver a
>>> voltage in the required range.  I don't know if this affects MMC or not,
>>> if it's just a case of being less efficient it's not such an issue.
> 
>> Yeah, but if this is a fixed regulator and it's a problem, then the
>> hardware is screwed anyways.
> 
> Well, the fact that the voltage is being changed at runtime indicates
> that we're changing something from whatever was in the fixed setup - it
> can sometimes be that we don't have access to some higher performance or
> lower power features for example.  That's not ideal but works perfectly
> safely.
> 
Suggested approach of checking "mmc->ocr_avail" might work.

But, IMO mmc core should check if the voltage can be changed or not

before trying to do regulator_set_voltage() in mmc_regulator_set_ocr().

Wouldn't that be better and solve this issue for other hosts as well.

Something like below in mmc_regulator_set_ocr ():

+               result = regulator_check_voltage_constraints(supply,
+                       min_uV, max_uV);
+               if(!result) {
+                       result = regulator_set_voltage(supply, min_uV, 
max_uV);
+                       if (result != -EINVAL && !mmc->regulator_enabled) {
+                               result = regulator_enable(supply);
+                               if (!result)
+                                       mmc->regulator_enabled = true;
+                       }

We could wrap the existing check_voltage function

+/* Check voltage constraints helper function */
+int regulator_check_voltage_constraints(struct regulator *regulator,
+                                       int min_uV, int max_uV)
+{
+       return regulator_check_voltage(regulator->rdev, &min_uV, &max_uV);
+}
+EXPORT_SYMBOL_GPL(regulator_check_voltage_constraints);

I hope this makes sense.

Regards,
RK

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
