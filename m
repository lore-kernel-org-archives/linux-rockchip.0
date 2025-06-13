Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C014C71159
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 18:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRzA0uT8uxoIuUjQGBjDsAdYcRCcVjfkk8YSyBxqibk=; b=282Hw4muv/XIk5
	XPMO4YaOcSfvLFZcQ8rEkrOqNvIQZJ85RJpiY/z8Ih5FSr4aNezsj6LvJO288rTC1tLMaIuTgB1qn
	BdTvP+RMJSMsuhXlEKwmXe2NjMuWz4IPLZi53WXKOocjWzbBiRDz3Dm/Et6TV8mfN1YAKhmWVpF3W
	idKxXTgdj46493WQy/cNzssEGfKh8eraQY+S7ktGJpezQOg3vju6yCOEl9RIV7tErsE/7ZSdeeleI
	bndOyO+4aR1kYNM85yb5VD3i5uk/L0WxTpXa3fv9/YJyRVtVL+slw+hO4aAgWvtnguFcFAyXnzBR2
	eqg0jMMdM+I4aingNX5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ8wz-0000000HFCq-1LyJ;
	Fri, 13 Jun 2025 18:16:25 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ6XG-0000000Gult-2BQO;
	Fri, 13 Jun 2025 15:41:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:To:From:
	Content-Type; bh=2M/eCXY1ToDvTm9hwkGDq/8LUzWrm55Tahx+FO3/MkM=;
	b=lS3LqaYlJDzuE5fir8AzvoACaNs2VvSrzFWYdhJauogGyv7h0960NeLFzcFewe
	s+kbgv00uhKvD4vmYfQu3NemlkNUI/EYKTGH1EzVTq8U0dLSHOgUFu/kcYBd64m5
	/RM5+8n2FFAW0ysoNM1tOLE9n0ePrEbHzigmWrEY4hOVo=
Received: from [192.168.71.94] (unknown [])
	by gzga-smtp-mtada-g1-2 (Coremail) with SMTP id _____wBnkHB4RkxorB7fHw--.15462S2;
	Fri, 13 Jun 2025 23:40:41 +0800 (CST)
Message-ID: <a88ccb03-3039-4955-a6cc-18774c6799f6@163.com>
Date: Fri, 13 Jun 2025 23:40:40 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] PCI: dwc: Remove redundant MPS configuration
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
 heiko@sntech.de, manivannan.sadhasivam@linaro.org, yue.wang@amlogic.com,
 pali@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
 jingoohan1@gmail.com, khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
 yue.wang@amlogic.com, hanjie.lin@amlogic.com
References: <20250510155607.390687-1-18255117159@163.com>
 <20250510155607.390687-3-18255117159@163.com>
 <6v7m7qt4n26n6pmx5tggmmvv7na6t5v5wtfqev5x4wxosymwul@j3dizxyyy4tg>
Content-Language: en-US
From: Hans Zhang <18255117159@163.com>
In-Reply-To: <6v7m7qt4n26n6pmx5tggmmvv7na6t5v5wtfqev5x4wxosymwul@j3dizxyyy4tg>
X-CM-TRANSID: _____wBnkHB4RkxorB7fHw--.15462S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxWF4UZFWrurWxWFy8Zr1UJrb_yoW5Zw15pF
	W5XFs3CF4rJr4rZanFka1rAa42yas8AFyUJF9rG34fZF9IyFsrGFy2yFWF9FyxZrZ2gF1S
	v34Ygr43Z3Z8JFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07Uq9a9UUUUU=
X-Originating-IP: [124.79.114.92]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/1tbiQxdro2hMQiMsKAACsf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_084142_954130_ADF01019 
X-CRM114-Status: GOOD (  23.64  )
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



On 2025/6/13 14:54, Manivannan Sadhasivam wrote:
> On Sat, May 10, 2025 at 11:56:07PM +0800, Hans Zhang wrote:
>> The Meson PCIe controller driver manually configures maximum payload
>> size (MPS) through meson_set_max_payload, duplicating functionality now
>> centralized in the PCI core.  Deprecating redundant code simplifies the
>> driver and aligns it with the consolidated MPS management strategy,
>> improving long-term maintainability.
>>
>> Signed-off-by: Hans Zhang <18255117159@163.com>
> 
> I believe that the root port MPS set by PCI core in patch 1 should be enough to
> remove the logic in the driver. But given that we already saw that is not the
> case with Armada controllers, it would be good if one of the Meson maintainers
> could verify if this series works as intented. Since the driver is not using the
> DEVCAP value, but using the hardcoded value, I'm slightly worried that setting
> MPS value other than 256 would have any downside.
> 
> But anyway, the root port MPS should be the same with and without this series.
> This can be verified by:
> 
> sudo lspci -vvv | grep MaxPayload
> 
> Also, performing any benchmark and making sure that the device performance
> didn't get affected would be great.
> 

Dear Mani,

Thank you for your reminder. I found two friends of Amlogic from the 
submission records and copied the email to them. And ask them to help 
test these two patches.

But I don't know if they are still employed, or do you know anyone to 
help with the test?





Dear yue.wang and hanjie.lin,

Could you help test these two patches? I don't know if it affects the 
normal function of your Root Port. If it works properly, please let me 
know. Thank you very much.

Best regards,
Hans



> - Mani
> 
>> ---
>>   drivers/pci/controller/dwc/pci-meson.c | 17 -----------------
>>   1 file changed, 17 deletions(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pci-meson.c b/drivers/pci/controller/dwc/pci-meson.c
>> index db9482a113e9..126f38ed453d 100644
>> --- a/drivers/pci/controller/dwc/pci-meson.c
>> +++ b/drivers/pci/controller/dwc/pci-meson.c
>> @@ -261,22 +261,6 @@ static int meson_size_to_payload(struct meson_pcie *mp, int size)
>>   	return fls(size) - 8;
>>   }
>>   
>> -static void meson_set_max_payload(struct meson_pcie *mp, int size)
>> -{
>> -	struct dw_pcie *pci = &mp->pci;
>> -	u32 val;
>> -	u16 offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
>> -	int max_payload_size = meson_size_to_payload(mp, size);
>> -
>> -	val = dw_pcie_readl_dbi(pci, offset + PCI_EXP_DEVCTL);
>> -	val &= ~PCI_EXP_DEVCTL_PAYLOAD;
>> -	dw_pcie_writel_dbi(pci, offset + PCI_EXP_DEVCTL, val);
>> -
>> -	val = dw_pcie_readl_dbi(pci, offset + PCI_EXP_DEVCTL);
>> -	val |= PCIE_CAP_MAX_PAYLOAD_SIZE(max_payload_size);
>> -	dw_pcie_writel_dbi(pci, offset + PCI_EXP_DEVCTL, val);
>> -}
>> -
>>   static void meson_set_max_rd_req_size(struct meson_pcie *mp, int size)
>>   {
>>   	struct dw_pcie *pci = &mp->pci;
>> @@ -381,7 +365,6 @@ static int meson_pcie_host_init(struct dw_pcie_rp *pp)
>>   
>>   	pp->bridge->ops = &meson_pci_ops;
>>   
>> -	meson_set_max_payload(mp, MAX_PAYLOAD_SIZE);
>>   	meson_set_max_rd_req_size(mp, MAX_READ_REQ_SIZE);
>>   
>>   	return 0;
>> -- 
>> 2.25.1
>>
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
