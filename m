Return-Path: <SRS0=J5Gw=JC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E10D7C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 12:06:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 754D9613AE
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 12:06:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 754D9613AE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aaoDipK1DD4gscd3hiwdrkGl3MN7n4H4frvWu0lAbm4=; b=lrc/nUSNXG4ppejiEAKU2JSgH
	zrdemiR3CIytEZuMVzmcH/Cvy88GqThA0jCD1N/lKBbh5OqER0UQtOknZfBWbm2hTLn8hgYOj9vve
	J5hbdmkc8M5m6CTjVDocKx2iSluRJhMFnTwbDBCKYm+/Nqd8NNovjr7NjJNO/q9VEwD0Gz2ALNpzU
	ymd8KGN46tv9R30MX9m042y4DBY+5s+ZEqhV/AHSsRiIGwJRX7ZlIBmI9wN8uCqaVuv7Ell5bHSJA
	rvqP96k5sdrlceqroTujrBdQETyeWuDE+BfOqmt4ml7FVfm4VtOYDro6csMOAKyC6uFopbSanoJr0
	A8infeyXg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTNzo-00HDZp-34; Mon, 05 Apr 2021 12:06:20 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTNzg-00HDZO-Q1; Mon, 05 Apr 2021 12:06:17 +0000
Received: by mail-ej1-x635.google.com with SMTP id ap14so16557094ejc.0;
 Mon, 05 Apr 2021 05:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4rSfRvLWrKrxqOWFWFbi1dZLa9tAVnjrn923CZO/U4g=;
 b=Ma/2dT10LaCxunfVJKFCuXhGAXK8K97CAw0pfQ1qHNkE4Ul9XOGU3qS+cKtNWFWOCv
 s7wmsUZXtu0U73/t1YOdIVJKMh890U2UQOckB8H6GsfeC/lIX525nESn4F/tu25R2DU5
 XJ+RTS6iKZOwj6wHFfKDQ88+qjACpwYjvGxTWNjDep2MrnNZrVrf5EZ6TpYk1SUIuFJv
 USQI+ad3RLfBQV4edo/hSV2qHzP+5DlY4FJxZv2cMrqBHWZy+q9I5sGCVnsjPdWo1kpT
 Rb50TsVdQPJsQ2E7UpCURBJHUqQ0cbAHRGAbXgkQCJU9c4V4ePmkOf2MXCxOpgxxdaJo
 4rLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4rSfRvLWrKrxqOWFWFbi1dZLa9tAVnjrn923CZO/U4g=;
 b=PnpmoKjvkaOxoKe+zADXCOuxHayHokENTLydyIciiVzWnxHcidJfntaXBgb02ZURXq
 tQOBeQthDm3YjbOe/v0y8OsXMG4laiQC0olHj9bwzRrGjSulvUObGoKhXoceSqFsyH6L
 foA6t1deh2caTf+F9iym81yduUmJ87F5BZYR/R8ODT7Z0YxO4BZQODMMB4qE3wWv3UmI
 +dHqzQhA20knPbDUsb2WGpdMNDWEMP2RllYCxx1SLB5R7q5b7O3ThXdH2CM1WCWUEscV
 0+a6RPAC2FAka4vM7EF6MCYLnPTKQqaalAcHKvITnq3HT43th2TZbj1NyY2mwXPWBLV4
 kQ8w==
X-Gm-Message-State: AOAM533/rCFzavHcT9fP0Xn/ahE1n6rxrBz/4Dw9BlG3ZAAOgVJrm+c3
 HGov2Olrma2NCcz+beczYwQ=
X-Google-Smtp-Source: ABdhPJyHCrBP9yUQFBO7FgOBG7YXEFb6sEQFEXhIIiXi/+6S+EKx9/fBFD7RGOaVQLDPa6CdqSG2sg==
X-Received: by 2002:a17:906:2704:: with SMTP id
 z4mr10264061ejc.137.1617624372271; 
 Mon, 05 Apr 2021 05:06:12 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 d19sm10914090edr.45.2021.04.05.05.06.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 05 Apr 2021 05:06:11 -0700 (PDT)
Subject: Re: [PATCH v6 1/4] usb: dwc3: of-simple: bail probe if no dwc3 child
 node
To: Greg KH <gregkh@linuxfoundation.org>
Cc: heiko@sntech.de, robh+dt@kernel.org, balbi@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20210401213652.14676-1-jbx6244@gmail.com>
 <20210401213652.14676-2-jbx6244@gmail.com> <YGq2IaygRQaAcLli@kroah.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <abd513bc-dee9-d87b-6841-338bfb2f30d0@gmail.com>
Date: Mon, 5 Apr 2021 14:06:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <YGq2IaygRQaAcLli@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210405_130613_285237_1E291C8B 
X-CRM114-Status: GOOD (  23.14  )
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

On 4/5/21 9:02 AM, Greg KH wrote:
> On Thu, Apr 01, 2021 at 11:36:49PM +0200, Johan Jonker wrote:
>> For some of the dwc3-of-simple compatible SoCs we
>> don't want to bind this driver to a dwc3 node,
>> but bind that node to the 'snps,dwc3' driver instead.
>> The kernel has no logic to decide which driver to bind
>> to if there are 2 matching drivers, so bail probe if no
>> dwc3 child node.
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>  drivers/usb/dwc3/dwc3-of-simple.c | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
>> index 71fd620c5..8d3baa5df 100644
>> --- a/drivers/usb/dwc3/dwc3-of-simple.c
>> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
>> @@ -38,6 +38,10 @@ static int dwc3_of_simple_probe(struct platform_device *pdev)
>>  
>>  	int			ret;
>>  
>> +	/* Bail probe if no dwc3 child node. */
>> +	if (!of_get_compatible_child(dev->of_node, "snps,dwc3"))
>> +		return -ENODEV;
> 

> Why is this part of the "convert to yaml" patch series?  Shouldn't this
> be a separate, independant patch?
independent


Hi Greg,

As pointed out by Rob in the v3 review process the YAML conversion has
some side effects for new dt files. A good habit is to fix things before
they become in effect. That's why this patch is placed before the dtsi
changes and why Heiko asked to have a look at it.

For the sake of completeness there are other less optimal options:
- remove rk3399 support from dwc3-of-simple.c
- unselect CONFIG_USB_DWC3_OF_SIMPLE for new rk3399 device trees

In that case at least have it on record why USB maintainers didn't apply
it in case someone else start to complain about it later when Heiko goes
ahead with it.

Johan Jonker

> 
> thanks,
> 
> greg k-h
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
