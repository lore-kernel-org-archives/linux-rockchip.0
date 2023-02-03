Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD109C636CC
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 08:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kSbVqbnoyY5mZ5sKJVUMGmhTrp8pR1bushCMqtjqXMM=; b=mTTqNe1Kj2KZip
	OHVMqWZi9L8YSiuX8f3b3P/joi4u3+lq6uS84NFkPeKZzjBnFj0DwPhSUjgKq431/mnIAMPgB23yb
	lvZlWQlgSVHCftr1fHYL29g9Yc0JUAukuDo54h8gn+2wcbHTrL+5H06jZdDZHTZTxaDvD1lBqkGtx
	t2o34JhFbwHrlRIikmY4ouyQnXmGrYQp9HOnUmoAUA4cKXdjWLZP+tPKfk5V0AGIJzVM55g/dsVw4
	RC03B2C8KW2peZUuc3xOJtEi64HrBZT7QDhaf7yzDjkwF0CETYym7t7h4qeHJ7hxG9AiwH8DtyYuT
	LIMSlKsYyKzp+u1xB0qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrMg-0010ib-2b; Fri, 03 Feb 2023 08:24:10 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrMb-0010gy-VF
	for linux-rockchip@lists.infradead.org; Fri, 03 Feb 2023 08:24:08 +0000
Received: from [172.16.12.69] (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 5224928017B;
	Fri,  3 Feb 2023 16:23:53 +0800 (CST)
Message-ID: <8b40a27b-8480-dd74-3fd1-6f6493dc0ce1@rock-chips.com>
Date: Fri, 3 Feb 2023 16:23:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Cc: shawn.lin@rock-chips.com, Gustavo Pimentel
 <gustavo.pimentel@synopsys.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [RESEND PATCH v2] PCI: dwc: Round up num_ctrls if num_vectors is
 less than MAX_MSI_IRQS_PER_CTRL
Content-Language: en-GB
To: Han Jingoo <jingoohan1@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <1669080013-225314-1-git-send-email-shawn.lin@rock-chips.com>
 <CAPOBaE6KNXn56Gs8DCUg9nMqDPF494OaM58JYHsaKVsFRbvt5A@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CAPOBaE6KNXn56Gs8DCUg9nMqDPF494OaM58JYHsaKVsFRbvt5A@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGEpPVk8fHU4YTU9MSR5MTVUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NBw6Ayo6Hj0OTTA1TwEiSTY1
	CRcaFCpVSlVKTUxOT0pJTUhPS05KVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU9KSk83Bg++
X-HM-Tid: 0a86165ff7be2eb1kusn5224928017b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_002406_192995_6614CBFF 
X-CRM114-Status: GOOD (  12.60  )
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

On 2022/11/23 6:04, Han Jingoo wrote:
> On Mon, Nov 21, 2022 Shawn Lin <shawn.lin@rock-chips.com> wrote:
>>
>> Some SoCs may only support 1 RC with a few MSIs support that the total number of MSIs is
>> less than MAX_MSI_IRQS_PER_CTRL. In this case, num_ctrls will be zero which fails setting
>> up MSI support. Fix it by rounding up num_ctrls to at least one.
>>
>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> 
> Acked-by: Jingoo Han <jingoohan1@gmail.com>

Thanks, Jingoo!

Hi Lorenzo,

Is there any chance this patch be applied? :)

> 
> Best regards,
> Jingoo Han
> 
>> ---
>>
>> Changes in v2:
>> - set num_ctrls to 1 if it's less than one
>>
>>   drivers/pci/controller/dwc/pcie-designware-host.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
>> index 39f3b37..cfce1e0 100644
>> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
>> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
>> @@ -62,6 +62,8 @@ irqreturn_t dw_handle_msi_irq(struct dw_pcie_rp *pp)
>>          struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>>
>>          num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
>> +       if (num_ctrls < 1)
>> +               num_ctrls = 1;
>>
>>          for (i = 0; i < num_ctrls; i++) {
>>                  status = dw_pcie_readl_dbi(pci, PCIE_MSI_INTR0_STATUS +
>> @@ -343,6 +345,8 @@ static int dw_pcie_msi_host_init(struct dw_pcie_rp *pp)
>>          if (!pp->num_vectors)
>>                  pp->num_vectors = MSI_DEF_NUM_VECTORS;
>>          num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
>> +       if (num_ctrls < 1)
>> +               num_ctrls = 1;
>>
>>          if (!pp->msi_irq[0]) {
>>                  pp->msi_irq[0] = platform_get_irq_byname_optional(pdev, "msi");
>> @@ -707,6 +711,8 @@ int dw_pcie_setup_rc(struct dw_pcie_rp *pp)
>>
>>          if (pp->has_msi_ctrl) {
>>                  num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
>> +               if (num_ctrls < 1)
>> +                       num_ctrls = 1;
>>
>>                  /* Initialize IRQ Status array */
>>                  for (ctrl = 0; ctrl < num_ctrls; ctrl++) {
>> --
>> 2.7.4
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
