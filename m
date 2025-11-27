Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E7C4D116F3
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Nov 2025 16:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpKk/IHhr0/mZ4lOR3xgxToBkjxKbyOeMgNijPZv0BY=; b=MeTJIGYNw5KtzS
	jO6NArKKTsatn7PK0C3HusUTNOCXyGd8e/5qzy4L7CaVOj2pMCPz4yldMLpuL3RsDU6tPDeE+3iHM
	BXi7PU2OPEgS+URDxVwJz/COvTKu81mucfeftZ2Pu8ldmVZKpoXlFye1ET7Tyo1VxsbGAEwWhn6yn
	0Pm11Xh2V6zRDwgeKa9uGvW6gyV7TcAJMuN2B0P6cQyRB5HnT+WbFBFRxOyKcDwD1NQ8IyTZzGvAA
	txkby4LiEIC+IJdewVftG55FRWHTYeWJ37YBldrXu5KsYlrInyGW4dzosOi2aGabuW1s0/TvFMPzG
	RWQHzYtPTi4HmuaeBlQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOfKj-0000000Gx6s-40qN;
	Thu, 27 Nov 2025 16:59:05 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOfKg-0000000Gx4U-13Bi;
	Thu, 27 Nov 2025 16:59:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:To:From:
	Content-Type; bh=2B76zoWhuwGSjr962yskSX1jRYL5m0tGEi12IlYEVJk=;
	b=p12BYw7GqhcWlruCyHJfO0Xy44NJmi/ED79T7wyquR1xxPay+JyFOr977QRovt
	FlxvGdxydBCzFARzCPv+HHBWCOYKhsRYEW6vshFlRNeUpv4rTb+fgRM5y97KVcQd
	6J48vx8tu+Csg6wBGQG76gJs+4ae+Dhws6WYwI9vdm1H0=
Received: from [IPV6:240e:b8f:927e:1000:9218:e74d:98cf:7e7c] (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wAHwIcfgyhpz7drCg--.4876S2;
	Fri, 28 Nov 2025 00:58:08 +0800 (CST)
Message-ID: <74a61ccd-c694-44d7-a54c-a40da2df823e@163.com>
Date: Fri, 28 Nov 2025 00:58:07 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/2] PCI: Configure Root Port MPS during host probing
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
 heiko@sntech.de, mani@kernel.org, yue.wang@amlogic.com, pali@kernel.org,
 neil.armstrong@linaro.org, robh@kernel.org, jingoohan1@gmail.com,
 khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, cassel@kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20251126235432.GA2726707@bhelgaas>
Content-Language: en-US
From: Hans Zhang <18255117159@163.com>
In-Reply-To: <20251126235432.GA2726707@bhelgaas>
X-CM-TRANSID: _____wAHwIcfgyhpz7drCg--.4876S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxGryUXry7CFW3CFW5CFy8Krg_yoW5trWxpa
	yUXa1FyFs3WryfZayDZ3W5CFy5tayvy3y5tr98trW0vFs8ZFyDJFyqyFZ5G3s7CrWfXw1a
	vFn8X34xAFn8ZFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UszVnUUUUU=
X-Originating-IP: [240e:b8f:927e:1000:9218:e74d:98cf:7e7c]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/1tbiOgITo2kofAzE7wAAsS
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_085902_730667_B69329B5 
X-CRM114-Status: GOOD (  21.41  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Bjorn,

Thank you very much for your reply and the problems you pointed out. The 
next version will modify it.

Best regards,
Hans

On 2025/11/27 07:54, Bjorn Helgaas wrote:
> On Wed, Nov 05, 2025 at 12:51:24AM +0800, Hans Zhang wrote:
>> Current PCIe initialization logic may leave Root Ports (root bridges)
>> operating with non-optimal Maximum Payload Size (MPS) settings. Existing
>> code in pci_configure_mps() returns early for devices without an upstream
>> bridge (!bridge) which includes Root Ports, so their MPS values remain
>> at firmware/hardware defaults. This fails to utilize the controller's full
>> capabilities, leading to suboptimal data transfer efficiency across the
>> PCIe hierarchy.
>>
>> With this patch, during the host controller probing phase:
>> - When PCIe bus tuning is enabled (not PCIE_BUS_TUNE_OFF), and
>> - The device is a Root Port without an upstream bridge (!bridge),
>> The Root Port's MPS is set to its hardware-supported maximum value
>> (128 << dev->pcie_mpss).
>>
>> Note that this initial maximum MPS setting may be reduced later, during
>> downstream device enumeration, if any downstream device does not suppor
>> the Root Port's maximum MPS.
>>
>> This change ensures Root Ports are properly initialized before downstream
>> devices negotiate MPS, while maintaining backward compatibility via the
>> PCIE_BUS_TUNE_OFF check.
> 
> "Properly" is sort of a junk word for me because all it really says is
> we were stupid before, and we're smarter now, but it doesn't explain
> exactly *what* was wrong and why this new thing is "proper."
> 
> It's obvious that the Max_Payload_Size power-on default (128 bytes) is
> suboptimal in some situations, so you don't even need to say that.
> And I think 128 bytes *is* optimal in the PCIE_BUS_PEER2PEER case.
> 
> s/Root Ports (root bridges)/Root Ports/
> s/bridge (!bridge)/bridge/     # a couple times
> s/hardware-supported//         # unnecessary
> s/(128 << dev->pcie_mpss)//    # we can read the spec
> s/suppor/support/
> 
>> Suggested-by: Niklas Cassel <cassel@kernel.org>
>> Suggested-by: Manivannan Sadhasivam <mani@kernel.org>
>> Signed-off-by: Hans Zhang <18255117159@163.com>
>> ---
>>   drivers/pci/probe.c | 12 ++++++++++++
>>   1 file changed, 12 insertions(+)
>>
>> diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
>> index 0ce98e18b5a8..2459def3af9b 100644
>> --- a/drivers/pci/probe.c
>> +++ b/drivers/pci/probe.c
>> @@ -2196,6 +2196,18 @@ static void pci_configure_mps(struct pci_dev *dev)
>>   		return;
>>   	}
>>   
>> +	/*
>> +	 * Unless MPS strategy is PCIE_BUS_TUNE_OFF (don't touch MPS at all),
>> +	 * start off by setting Root Ports' MPS to MPSS. This only applies to
>> +	 * Root Ports without an upstream bridge (root bridges), as other Root
>> +	 * Ports will have downstream bridges.
> 
> I can't parse this sentence.  *No* Root Port has an upstream bridge.
> So I don't know what "other Root Ports" would be or why they would
> have downstream bridges (any Root Port is likely to have downstream
> endpoints or bridges).
> 
>> +	   ... Depending on the MPS strategy
>> +	 * and MPSS of downstream devices, the Root Port's MPS may be
>> +	 * overridden later.
>> +	 */
>> +	if (!bridge && pci_pcie_type(dev) == PCI_EXP_TYPE_ROOT_PORT &&
>> +	    pcie_bus_config != PCIE_BUS_TUNE_OFF)
>> +		pcie_set_mps(dev, 128 << dev->pcie_mpss);
>> +
>>   	if (!bridge || !pci_is_pcie(bridge))
>>   		return;
>>   
>> -- 
>> 2.34.1
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
