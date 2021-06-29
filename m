Return-Path: <SRS0=3Wd+=LX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A223FC11F68
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 10:53:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7199C61DC0
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 10:53:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7199C61DC0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OnGYXBlCsxIjh5Y2ET8jcPsDZgEmcRs2n+03McuHmg8=; b=PSENybMLx4loi1ASFgCFTvMEfA
	cL7y3wl2r4Anqg+vtZYp/Zo0JDrDKCL5H8iKq8ySGKPtAWE2dB15Wm75dVa6t+9DDI9x5AhOEEoJL
	0CHiD8P84tWjZpHAMw+68lG7W6a677XMyERbqJsKzviCVDqLcOCfSxTW3qwL/c5PQ7+H5+Ok3f30g
	oGxrErkCiApJF8JYchzE8KUqxBasZtXmZLyRZlxXPbSrc0mSikYMbQoIeJAt9WkbDEZzL3Qfxk+b1
	RGW56ffT0+8BHAx5LJoaF6+0dWVZKKuVV8aKOkvzAegEooMnSyYzKPsMf8d0MX0gX7Zwb1A36XUz+
	V2TqaVOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyBMa-00AaWG-5j; Tue, 29 Jun 2021 10:53:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyBMM-00AaU3-EX; Tue, 29 Jun 2021 10:52:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6FAF131B;
 Tue, 29 Jun 2021 03:52:52 -0700 (PDT)
Received: from [10.57.46.146] (unknown [10.57.46.146])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4F4993F694;
 Tue, 29 Jun 2021 03:52:49 -0700 (PDT)
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
To: Javier Martinez Canillas <javierm@redhat.com>,
 Bjorn Helgaas <helgaas@kernel.org>
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
References: <20210629003829.GA3978248@bjorn-Precision-5520>
 <2317a4bc-bd4d-53a7-7fa6-87728d5393cd@redhat.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <3d5a983f-bfdd-d79b-4ec9-357ea26dd2c8@arm.com>
Date: Tue, 29 Jun 2021 11:52:44 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <2317a4bc-bd4d-53a7-7fa6-87728d5393cd@redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_035254_588940_655DCDFD 
X-CRM114-Status: GOOD (  21.71  )
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

On 2021-06-29 07:17, Javier Martinez Canillas wrote:
> On 6/29/21 2:38 AM, Bjorn Helgaas wrote:
>> On Thu, Jun 24, 2021 at 05:40:40PM -0500, Bjorn Helgaas wrote:
> 
> [snip]
> 
>>>>
>>>> So let's just move all the IRQ init before the pci_host_probe() call, that
>>>> will prevent issues like this and seems to be the correct thing to do too.
>>>
>>> Previously we registered rockchip_pcie_subsys_irq_handler() and
>>> rockchip_pcie_client_irq_handler() before the PCIe clocks were
>>> enabled.  That's a problem because they depend on those clocks being
>>> enabled, and your patch fixes that.
>>>
>>> rockchip_pcie_legacy_int_handler() depends on rockchip->irq_domain,
>>> which isn't initialized until rockchip_pcie_init_irq_domain().
>>> Previously we registered rockchip_pcie_legacy_int_handler() as the
>>> handler for the "legacy" IRQ before rockchip_pcie_init_irq_domain().
>>>
>>> I think your patch *also* fixes that problem, right?
>>
>> The lack of consistency in how we use
>> irq_set_chained_handler_and_data() really bugs me.
>>
>> Your patch fixes the ordering issue where we installed
>> rockchip_pcie_legacy_int_handler() before initializing data
>> (rockchip->irq_domain) that it depends on.
>>
>> But AFAICT, rockchip still has the problem that we don't *unregister*
>> rockchip_pcie_legacy_int_handler() when the rockchip-pcie module is
>> removed.  Doesn't this mean that if we unload the module, then receive
>> an interrupt from the device, we'll try to call a function that is no
>> longer present?
>>
> 
> Good question, I don't to be honest. I'll have to dig deeper on this but
> my experience is that the module removal (and device unbind) is not that
> well tested on ARM device drivers in general.

Well, it does use devm_request_irq() so the handler should be 
unregistered by devres *after* ->remove has finished, however that does 
still leave a potential race window in which a pending IRQ could be 
taken during the later part of rockchip_pcie_remove() after it has 
started turning off critical things. Unless the clocks and regulators 
can also be delegated to devres, it might be more robust to explicitly 
manage the IRQs as well. Mixing the two schemes can be problematic when 
the exact order of both setup and teardown matters.

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
