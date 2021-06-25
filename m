Return-Path: <SRS0=fNsx=LT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BD18C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 07:10:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C1F8661417
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 07:10:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C1F8661417
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Srguo6Q/SiOJrPX8OFkfE+60D2C/hx9VM5O43MUzeYU=; b=oefli0dirUillCRUh2Qxb6ATg9
	p2TGEiba7dEapsUtrzpIaUJaw4pU3SF3QQDKbo6tegLSoqcBRR/HYFGdVzysZf0Zuvs24fC76DaGc
	iDD410yg9XNve72IM9kuonxmEIaTRnodhqAPBy7gVnczhIcA85C2tQEtMtlYxr020KeCRwcDM4vjR
	fxKaQ1ho6DzOcft2TlsMdiSR478tIjumCWT03aCg+QupFUwZPlW2ppKsTa6cnW4SESpARYIfjTmkN
	Q5bvh9aygc2Tel9BafztIlyo6PStc1szcahVds1G3H1pDZ5OjGcp3Bq/zi9gMIELXTUo3q6c6LeQf
	0+zM2Xag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwfyO-00HVHI-O1; Fri, 25 Jun 2021 07:09:56 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwfyC-00HVFd-Ed
 for linux-rockchip@lists.infradead.org; Fri, 25 Jun 2021 07:09:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624604983;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FLtazXb3G6fRRX9xtmGZQwP57cBRAMVoE8LLTV4/QLo=;
 b=gsKuak43jCbQLfJUWeIRtFrbUHEIA0EeOOh8Vj/aupS7AVKT/XTki/u+1wg76kL9aW3cCa
 c2Iu1/7JXjsuf87HtQOshkLdeoVdACPXqCdujheDJSd9bR26TUKnREiKo5DpB+pdflbrRs
 FSTPp3s0CodDxsCDPH9wyFwzfsyJmSU=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-374-ChXtCxH-PUy7IZVO223CWw-1; Fri, 25 Jun 2021 03:09:40 -0400
X-MC-Unique: ChXtCxH-PUy7IZVO223CWw-1
Received: by mail-wm1-f70.google.com with SMTP id
 m6-20020a7bce060000b02901d2a0c361bfso3812586wmc.4
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Jun 2021 00:09:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FLtazXb3G6fRRX9xtmGZQwP57cBRAMVoE8LLTV4/QLo=;
 b=cUxWxuZP06Qq9G/t3/HzvpQvDxnb7ATD5A7UdWICK7YnX6i3tq7PzXaOwQ2a+Zjkid
 c/A+VTVw/j6i7eltpC53fwTZpCIdsKPWw8i/XaSMVV7Pg51k/OHMBlHudsN9DD72Lgew
 e/Ve5YktiC10Qnc2+sDaV6m8mnLJxR9vnQJzAG+Lwf8rDa63+MJLORcD6ji2kESPW4nV
 ndl6YNLyRSDTxscG/ZAUguO9AY//AN5nNWCiaAbT4eWV/xllhZQm46ZTbbNatSxEOPTQ
 bDoj8P3as3muGp+d8Vl/tqekggth4CJHEmaTvSKUd+6nRNMnIt3vDYYYS3ooHhJMGmWf
 UJkQ==
X-Gm-Message-State: AOAM53192gptzBsbpGIyK0nMlEFwl4EtmZS7ysyK2d1OmRs5jP3Eq676
 YGX0kEBYcuEHguEvd3LzvefnX/3DTr19Hm0BPPP8ifBKYWfbO+Xc9XLuyReVzTqMyIHJQ+wlfvx
 LXoemziBxVcI1Y1rHB6z2eg5+UXuKmJG4
X-Received: by 2002:a1c:4b04:: with SMTP id y4mr8928278wma.186.1624604979121; 
 Fri, 25 Jun 2021 00:09:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwEZC10pOGlNPzeVGtuSNOzeepcf5gnuWto136WmaedGGkMX3t/mR9Y/5SHRge1PZWfwCJHYw==
X-Received: by 2002:a1c:4b04:: with SMTP id y4mr8928243wma.186.1624604978853; 
 Fri, 25 Jun 2021 00:09:38 -0700 (PDT)
Received: from [192.168.1.101] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id i18sm1603468wrw.55.2021.06.25.00.09.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Jun 2021 00:09:38 -0700 (PDT)
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>, Ley Foon Tan
 <ley.foon.tan@intel.com>, rfi@lists.rocketboards.org,
 Jingoo Han <jingoohan1@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-tegra@vger.kernel.org
References: <20210624224040.GA3567297@bjorn-Precision-5520>
From: Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <5bee3702-595b-f57b-f962-28644b7e646f@redhat.com>
Date: Fri, 25 Jun 2021 09:09:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210624224040.GA3567297@bjorn-Precision-5520>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_000944_648479_15501995 
X-CRM114-Status: GOOD (  33.59  )
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

Hello Bjorn,

On 6/25/21 12:40 AM, Bjorn Helgaas wrote:
> [+cc Michal, Ley Foon, Jingoo, Thierry, Jonathan]
> 
> On Tue, Jun 08, 2021 at 10:04:09AM +0200, Javier Martinez Canillas wrote:
>> IRQ handlers that are registered for shared interrupts can be called at
>> any time after have been registered using the request_irq() function.
>>
>> It's up to drivers to ensure that's always safe for these to be called.
>>
>> Both the "pcie-sys" and "pcie-client" interrupts are shared, but since
>> their handlers are registered very early in the probe function, an error
>> later can lead to these handlers being executed before all the required
>> resources have been properly setup.
>>
>> For example, the rockchip_pcie_read() function used by these IRQ handlers
>> expects that some PCIe clocks will already be enabled, otherwise trying
>> to access the PCIe registers causes the read to hang and never return.
>>
>> The CONFIG_DEBUG_SHIRQ option tests if drivers are able to cope with their
>> shared interrupt handlers being called, by generating a spurious interrupt
>> just before a shared interrupt handler is unregistered.
>>
>> But this means that if the option is enabled, any error in the probe path
>> of this driver could lead to one of the IRQ handlers to be executed.
> 
> I'm not an IRQ expert, but I think this is an issue regardless of
> CONFIG_DEBUG_SHIRQ, isn't it?  Anything used by an IRQ handler should
> be initialized before the handler is registered.  CONFIG_DEBUG_SHIRQ
> is just a way to help find latent problems.
>

Yes, it's an issue regardless. It's just that this debug option tests if the
drivers aren't making the wrong assumption, exactly to find issues like this.

>> In a rockpro64 board, the following sequence of events happens:
>>
>>   1) "pcie-sys" IRQ is requested and its handler registered.
>>   2) "pcie-client" IRQ is requested and its handler registered.
>>   3) probe later fails due readl_poll_timeout() returning a timeout.
>>   4) the "pcie-sys" IRQ is unregistered.
>>   5) CONFIG_DEBUG_SHIRQ triggers a spurious interrupt.
>>   6) "pcie-client" IRQ handler is called for this spurious interrupt.
>>   7) IRQ handler tries to read PCIE_CLIENT_INT_STATUS with clocks gated.
>>   8) the machine hangs because rockchip_pcie_read() call never returns.
>>
>> To avoid cases like this, the handlers don't have to be registered until
>> very late in the probe function, once all the resources have been setup.
>>
>> So let's just move all the IRQ init before the pci_host_probe() call, that
>> will prevent issues like this and seems to be the correct thing to do too.
> 
> Previously we registered rockchip_pcie_subsys_irq_handler() and
> rockchip_pcie_client_irq_handler() before the PCIe clocks were
> enabled.  That's a problem because they depend on those clocks being
> enabled, and your patch fixes that.
>
> rockchip_pcie_legacy_int_handler() depends on rockchip->irq_domain,
> which isn't initialized until rockchip_pcie_init_irq_domain().
> Previously we registered rockchip_pcie_legacy_int_handler() as the
> handler for the "legacy" IRQ before rockchip_pcie_init_irq_domain().
> 
> I think you patch *also* fixes that problem, right?
>

Correct, that's why I moved the initialization and IRQ enable after that.
 
> I think this is also an issue with the following other drivers.  They all
> set the handler to something that uses an IRQ domain before they
> actually initialize the domain:

Yes, I agreed with your assessment and also noticed that others drivers have
similar issues. I just don't have any of those platforms to try to reproduce
the bugs and test a fix.

Best regards,
-- 
Javier Martinez Canillas
Software Engineer
New Platform Technologies Enablement team
RHEL Engineering


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
