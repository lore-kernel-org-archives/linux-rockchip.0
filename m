Return-Path: <SRS0=8D6r=LS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2B35C49EA5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 23:51:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D6B2613AD
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 23:51:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7D6B2613AD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XLevJlWV+VTD7IgBllosfNnPnLf0725UhHUyAmkd58Y=; b=iAK909SDOBYIxJSv+nSnowDLe+
	U5XBUWFZmIhUGfvcK9yU4BQx8aYgUHGEwvwC0yMpNOdqBFcpvQ5nZVr7m+EePE+qZL2QcmaAeEzuG
	p+MUCHetfEKmm64zF0qFsXTfOFqw0rDimzN8EmVCQD0vQPtm0mOXS2tZDoSpgerJ1nKdTvHXr5JBL
	RrDaCOQtnbs4Rc5WDdd1C9idRGaZDhA8rpBY3OZL48pu3RU9vo1ULyLAabtaPMblzG7pVguFIcb2n
	A9ZLv+MPDbtivj64wVOqieG/wM7z6d5KJppMv+g+YufH3JQn4zQWI1Zbk2YGHF/edyV2nAFySrtg4
	nrrxgZvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwZ8E-00Gnc4-CI; Thu, 24 Jun 2021 23:51:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwZ81-00GnaM-Rw; Thu, 24 Jun 2021 23:51:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9ED1EED1;
 Thu, 24 Jun 2021 16:51:22 -0700 (PDT)
Received: from [10.57.9.136] (unknown [10.57.9.136])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D55473F718;
 Thu, 24 Jun 2021 16:51:20 -0700 (PDT)
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Javier Martinez Canillas <javierm@redhat.com>,
 linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20210624232841.GA3579021@bjorn-Precision-5520>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <5356a01c-5aab-fbff-b0a9-157b961c66ee@arm.com>
Date: Fri, 25 Jun 2021 00:51:16 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210624232841.GA3579021@bjorn-Precision-5520>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_165126_020949_3DC0BDF6 
X-CRM114-Status: GOOD (  24.27  )
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

On 2021-06-25 00:28, Bjorn Helgaas wrote:
> On Fri, Jun 25, 2021 at 12:18:48AM +0100, Robin Murphy wrote:
>> On 2021-06-24 22:57, Bjorn Helgaas wrote:
>>> On Tue, Jun 08, 2021 at 10:04:09AM +0200, Javier Martinez Canillas wrote:
>>>> IRQ handlers that are registered for shared interrupts can be called at
>>>> any time after have been registered using the request_irq() function.
>>>>
>>>> It's up to drivers to ensure that's always safe for these to be called.
>>>>
>>>> Both the "pcie-sys" and "pcie-client" interrupts are shared, but since
>>>> their handlers are registered very early in the probe function, an error
>>>> later can lead to these handlers being executed before all the required
>>>> resources have been properly setup.
>>>>
>>>> For example, the rockchip_pcie_read() function used by these IRQ handlers
>>>> expects that some PCIe clocks will already be enabled, otherwise trying
>>>> to access the PCIe registers causes the read to hang and never return.
>>>
>>> The read *never* completes?  That might be a bit problematic because
>>> it implies that we may not be able to recover from PCIe errors.  Most
>>> controllers will timeout eventually, log an error, and either
>>> fabricate some data (typically ~0) to complete the CPU's read or cause
>>> some kind of abort or machine check.
>>>
>>> Just asking in case there's some controller configuration that should
>>> be tweaked.
>>
>> If I'm following correctly, that'll be a read transaction to the native side
>> of the controller itself; it can't complete that read, or do anything else
>> either, because it's clock-gated, and thus completely oblivious (it might be
>> that if another CPU was able to enable the clocks then everything would
>> carry on as normal, or it might end up totally deadlocking the SoC
>> interconnect). I think it's safe to assume that in that state nothing of
>> importance would be happening on the PCIe side, and even if it was we'd
>> never get to know about it.
> 
> Oh, right, that makes sense.  I was thinking about the PCIe side, but
> if the controller itself isn't working, of course we wouldn't get that
> far.
> 
> I would expect that the CPU itself would have some kind of timeout for
> the read, but that's far outside of the PCI world.

Nah, in AMBA I'm not sure if it's even legal to abandon a transaction 
without waiting for the handshake to complete. If you're lucky the 
interconnect might have a clock/power domain bridge which can reply with 
an error when it knows its other side isn't running, otherwise the 
initiator will just happily sit there waiting for a response to come 
back "in a timely manner" :)

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
