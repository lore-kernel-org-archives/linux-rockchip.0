Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43B07C47087
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 13:01:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0F48461001
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 13:01:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0F48461001
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=y/Y1FPXCaHdoVQIqKiNlycd/t0opxRmJdi+hSF6c9Q0=; b=iCejfyhi/IOsMm
	YeCarhX6vtT+rNQP5tXsnktVpNCxc8WwhtzC8W7rJbiFtgTZNHsAXqIhmc40PqiWcmryOo7Gi746D
	rAVFDwZ2ejXra2PZSM3CnTpslSxm+6+QIP8sirqlFvlFW0pnRJHo/ak9JKM0IjTaXKtw81/NW1XGn
	LosrYPtepZQxjiOhdSrb0VqZJzWZFGVuzuQgMhQJj2sNew3UHR7jdioFFoZ4S9wv3PGHWD7GZoJPp
	dHBMJryYeO5Q27x/ZCV1v9ErWXpTKMyq/LnGO2tGLRrjlQg+PCzu4VhS+uSD12sPG6JLVB6Kjr/pl
	9UAwXF1KEbE0m/9gmIWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmc7H-00FbJ8-Go; Fri, 28 May 2021 13:01:31 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmbog-00FT5r-DW; Fri, 28 May 2021 12:42:20 +0000
Received: by mail-pj1-x1032.google.com with SMTP id
 pi6-20020a17090b1e46b029015cec51d7cdso2438598pjb.5; 
 Fri, 28 May 2021 05:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:message-id:user-agent
 :mime-version; bh=h7kb/AUKQGRZBz4BjzTEhKlIFz8hYG49Mug/6+/Z8Uo=;
 b=AdalC0K0UroTAAUP/D2e1VtZe/wl0mmBp6Wd6V0bIkwPgwpaIgMDcIYegZwsVBpquW
 YM1ymSRlnxohw9XBNoJ9wnYMxEemUDcdlLvMfIcFsvFCWB335uIuLKHqZMlsiIds+bxM
 kRpwCNvyfGjuDLhi6/ff+Nz6UctS/bJFlUDwqKGuzihm38ngxWFw4JykpgV5Uu9iCkRy
 UOvFBg8Ne2SRmLQMZhTntBV5oBpdnacznGas5zpRe8yLSJBSy7KKx7WsLyQ+uGTJC6TG
 f9zaHICAcwz8FRMWFeP13AJS7/qJyeWrvciU+sVUY2HFqnyz8UtvxD9uVIiKxpp518NT
 /KEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:message-id
 :user-agent:mime-version;
 bh=h7kb/AUKQGRZBz4BjzTEhKlIFz8hYG49Mug/6+/Z8Uo=;
 b=OJVm2TMcTDyfkMiemxJOkYkrooTrv6YIDNO0MuVES6y+MCOzT8rsMd6jQV6acgQ+0p
 WbRPXkHLqjtrVKlXiXHDeQzz0ID6QX/+3YKjDlsSAGtjDOo7JSnS+kE0emgV29d+99uF
 /krsY9nbYjK7CNENWajLqAgi50SN/tbqvJFp0+CY50TrtVJca6TFK5gwGBKXqJ+KinIX
 MBqraBovriJohmmRrNKNWlUMLqx5HL/GeVq0PGuAtsrOzR3uWbCILydV39LXzWRjOQ24
 kmC7loWAsvlbsPOvyudav6rgz5wf1rVg31vAYpx+mbYcow7w0sLLowpm4fxugWtbMmi4
 M6xA==
X-Gm-Message-State: AOAM531+AR5I1HtgK6ZN59k3sdUgqZLSz6FLY1yoqvXX5FXlUXib8Pzy
 kKcvm0oiqjCUmnIKdCc7ZpU=
X-Google-Smtp-Source: ABdhPJykAzgytDlnvZD+DQ65emO1XRGQMzFYlndgWWq0LfFuaDwKlTlclqk2CfzTiJnuy0bGuo1DXQ==
X-Received: by 2002:a17:90a:e291:: with SMTP id
 d17mr4266598pjz.42.1622205736205; 
 Fri, 28 May 2021 05:42:16 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id 63sm4306924pfz.26.2021.05.28.05.42.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 May 2021 05:42:14 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linux-rockchip@lists.infradead.org,  linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 alexandru.elisei@arm.com,  wqu@suse.com,  robin.murphy@arm.com,
 pgwipeout@gmail.com,  ardb@kernel.org,  briannorris@chromium.org,
 shawn.lin@rock-chips.com,  robh+dt@kernel.org,  Bjorn Helgaas
 <bhelgaas@google.com>
Subject: Re: [PATCH 1/2] PCI: of: Override 64-bit flag for non-prefetchable
 memory below 4GB
References: <20210527162130.GA1401058@bjorn-Precision-5520>
Date: Fri, 28 May 2021 21:42:12 +0900
Message-ID: <87o8cvm3mj.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_054218_518666_E7E7D227 
X-CRM114-Status: GOOD (  30.19  )
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

Hi Bjorn,

Thanks for taking a look.

Bjorn Helgaas <helgaas@kernel.org> writes:

> On Fri, May 28, 2021 at 12:05:41AM +0900, Punit Agrawal wrote:
>> Some host bridges advertise non-prefetable memory windows that are
>> entirely located below 4GB but are marked as 64-bit address memory.
>> 
>> Since commit 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource
>> flags for 64-bit memory addresses"), the OF PCI range parser takes a
>> stricter view and treats 64-bit address ranges as advertised while
>> before such ranges were treated as 32-bit.
>
> Conceptually, I'm not sure why we need IORESOURCE_MEM_64 at all on
> resources we get from DT.  I think the main point of IORESOURCE_MEM_64
> is to convey the information that "this register, e.g., a PCI BAR, has
> space for 64-bit values if you need to write to it."
>
> When we're parsing this from DT, I think we're just getting a fixed
> value and there's no concept of writing anything back, so it doesn't
> seem like we should need to know how wide the hardware register is, or
> even whether there *is* a hardware register.
>
> But I'm sure the PCI resource allocation code probably depends on
> IORESOURCE_MEM_64 in those host bridge windows in very ugly ways.

Thanks for the explanation. From what I can tell, the IORESOURCE_MEM_64
flag is used in pci_bus_alloc_resource() to allocate from high PCI
addresses. Without the flag allocations above 4GB will fail. Not sure
that's legitimate use of the flag though.

>> A PCI-to-PCI bridges cannot forward 64-bit non-prefetchable memory
>> ranges. As a result, the change in behaviour due to the commit causes
>> allocation failure for devices that are connected behind PCI host
>> bridges modelled as PCI-to-PCI bridge and require non-prefetchable bus
>> addresses.
>> 
>> In order to not break platforms, override the 64-bit flag for
>> non-prefetchable memory ranges that lie entirely below 4GB.
>> 
>> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
>> Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com
>> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
>> Cc: Bjorn Helgaas <bhelgaas@google.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> ---
>>  drivers/pci/of.c | 8 ++++++--
>>  1 file changed, 6 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
>> index da5b414d585a..b9d0bee5a088 100644
>> --- a/drivers/pci/of.c
>> +++ b/drivers/pci/of.c
>> @@ -565,10 +565,14 @@ static int pci_parse_request_of_pci_ranges(struct device *dev,
>>  		case IORESOURCE_MEM:
>>  			res_valid |= !(res->flags & IORESOURCE_PREFETCH);
>>  
>> -			if (!(res->flags & IORESOURCE_PREFETCH))
>> +			if (!(res->flags & IORESOURCE_PREFETCH)) {
>>  				if (upper_32_bits(resource_size(res)))
>>  					dev_warn(dev, "Memory resource size exceeds max for 32 bits\n");
>> -
>> +				if ((res->flags & IORESOURCE_MEM_64) && !upper_32_bits(res->end)) {
>> +					dev_warn(dev, "Overriding 64-bit flag for non-prefetchable memory below 4GB\n");
>
> Maybe "Clearing 64-bit flag"?
>
> Can you include %pR, so we see the resource in question?

I'll follow your suggestions in the next update.

>
> Unrelated but close by, would be nice if the preceding warning ("size
> exceeds max") also included %pR.

Makes sense. I'll add the resource print to improve the message.

Thanks,
Punit

>
>> +					res->flags &= ~IORESOURCE_MEM_64;
>> +				}
>> +			}
>>  			break;
>>  		}
>>  	}
>> -- 
>> 2.30.2
>> 
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
