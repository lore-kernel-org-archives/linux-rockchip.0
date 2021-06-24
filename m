Return-Path: <SRS0=8D6r=LS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17DD5C49EA5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 23:19:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D72E360232
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 23:19:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D72E360232
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oEHkTSr5258CaLa9GrUHcQwORWz/r4zz/DIzoYcVGS8=; b=3YZSg2okjYOmhBCv0axSHpfg1D
	NtoRyIs5R31DLMV4mdklS1ukZk7eJ7c2tjAMrrH451e2e4lFiUJjXPiYWJvTDX374riipEyPgAi1K
	0BpMo4auT+i4uBOFib6vQMDeDTepDW1MhpRT7yd4qJmtjyfpfeLKzkyTkvTELstn3LiLqEaiJO208
	8EEROvpu/qd368ebomOF5p78iBFy3RLOCVbfGv/WQgunK5CnPXBjY8fZTlvIOmgPq0VsWruQWKG0H
	x1nnk9VLoFJ3t+XzsuezwOXiowUF1VWlB4giLUr9M0EiqVcD7tiKhvY91wjPtzmp+qPwB2Tzs7ORh
	RVBmyUig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwYcq-00GiOv-E6; Thu, 24 Jun 2021 23:19:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwYcd-00GiNP-E7; Thu, 24 Jun 2021 23:19:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7000ED1;
 Thu, 24 Jun 2021 16:18:55 -0700 (PDT)
Received: from [10.57.9.136] (unknown [10.57.9.136])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D58623F718;
 Thu, 24 Jun 2021 16:18:53 -0700 (PDT)
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
To: Bjorn Helgaas <helgaas@kernel.org>,
 Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20210624215750.GA3556174@bjorn-Precision-5520>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <44c551d7-fee4-13cf-2929-6d2383dd5497@arm.com>
Date: Fri, 25 Jun 2021 00:18:48 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210624215750.GA3556174@bjorn-Precision-5520>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_161859_580271_17C31B18 
X-CRM114-Status: GOOD (  21.49  )
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

On 2021-06-24 22:57, Bjorn Helgaas wrote:
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
> 
> The read *never* completes?  That might be a bit problematic because
> it implies that we may not be able to recover from PCIe errors.  Most
> controllers will timeout eventually, log an error, and either
> fabricate some data (typically ~0) to complete the CPU's read or cause
> some kind of abort or machine check.
> 
> Just asking in case there's some controller configuration that should
> be tweaked.

If I'm following correctly, that'll be a read transaction to the native 
side of the controller itself; it can't complete that read, or do 
anything else either, because it's clock-gated, and thus completely 
oblivious (it might be that if another CPU was able to enable the clocks 
then everything would carry on as normal, or it might end up totally 
deadlocking the SoC interconnect). I think it's safe to assume that in 
that state nothing of importance would be happening on the PCIe side, 
and even if it was we'd never get to know about it.

The only relevant configuration would be "don't turn the clocks off if 
you're using the thing", which in actual operation can be taken for 
granted. It's a fairly typical bug to register an IRQ as shared but 
assume in the handler that you'll only ever be called for your own 
device's IRQ while it's powered up/clocked/etc. in its normal 
operational state, hence CONFIG_DEBUG_SHIRQ helps flush those kinds of 
unreliable assumptions out.

Robin.

(this reminds me of the "fun" I once had where a machine was locking up 
during boot, but simply connecting an external debugger to find out 
exactly where it was stuck happened to automatically enable the 
offending power domain and un-stick it)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
