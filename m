Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF7A9C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Nov 2022 01:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqr0BRXBmyI7duDXypwcFDkRF1ZwfwehQKVVEjsWlN0=; b=2S+yArKRRGxqOC
	pD6r0O0wDpi7xO51Ku/821Zayt/bS7Uv08I9b8Iz7rIrkh0SEpfXUGcMqiPuEdDRvqMsrpZOLeU6w
	BadxoK59q4pRzEeumV+xhO8XO2aHMPQK7tPnTfNGvPocaItJN+AO4jmD3df81L26M8MW2dnQH5Ukt
	/5s+mh2vmicLugco+7Ng+/aFnUp60qYuELR0C/Mdgn+c5zpOSwnn/Q6PwjIo/0tRMnBOzG+I8bMfj
	+V6fil6Bh7a6PKhAC/s2WSwmSrGEBCCnJqRR7MivYl14BH+a86huT25njrJD1NM13dmVpPAJSuoNu
	9MtbhFjMTwMaW0X3lXYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxHtn-001qtD-HY; Tue, 22 Nov 2022 01:16:31 +0000
Received: from mail-m11880.qiye.163.com ([115.236.118.80])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxHtk-001qqL-3l
	for linux-rockchip@lists.infradead.org; Tue, 22 Nov 2022 01:16:30 +0000
Received: from [172.16.12.69] (unknown [58.22.7.114])
	by mail-m11880.qiye.163.com (Hmail) with ESMTPA id 16CC2202E3;
	Tue, 22 Nov 2022 09:16:18 +0800 (CST)
Message-ID: <90d22541-9a13-5a1c-374d-4449a49a5e16@rock-chips.com>
Date: Tue, 22 Nov 2022 09:16:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Cc: shawn.lin@rock-chips.com, Gustavo Pimentel
 <gustavo.pimentel@synopsys.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dwc: Round up num_ctrls if num_vectors is less than
 MAX_MSI_IRQS_PER_CTRL
Content-Language: en-GB
To: Han Jingoo <jingoohan1@gmail.com>
References: <1669014996-177686-1-git-send-email-shawn.lin@rock-chips.com>
 <CAPOBaE5_w94UGx+mEkNi+jzjk+Te3K6Mt6KaB5uLsWXSY192mA@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CAPOBaE5_w94UGx+mEkNi+jzjk+Te3K6Mt6KaB5uLsWXSY192mA@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkaS0kZVh9LGR8ZGUhPGEMdQlUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktITkhVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6N006Cyo*Hz0vLChPEwIsTh4V
	Sz0KCg9VSlVKTU1CS0xCTExCS0NIVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU9IT0M3Bg++
X-HM-Tid: 0a849ce844dd2eb6kusn16cc2202e3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_171628_365797_B6555E34 
X-CRM114-Status: GOOD (  15.29  )
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

On 2022/11/22 7:54, Han Jingoo wrote:
> On Sun, Nov 20, 2022 Shawn Lin <shawn.lin@rock-chips.com> wrote:
>>
>> Some SoCs may only support 1 RC with a few MSIs support that the total numver of MSIs is
>> less than MAX_MSI_IRQS_PER_CTRL. In this case, num_ctrls will be zero which fails setting
>> up MSI support. Fix it by rounding up num_ctrls to at least one.
> 
> Hi Shawn Lin,
> 
> If you find only a single case (1RC with a few MSIs), please set it as one
> if the divided value is zero.
> 

Yes we have one such platform. Will set it to one as your comment.

Thanks.

> For example,
> num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
> if (num_ctrls < 1)
>      num_ctrls = 1
> 
> Best regards,
> Jingoo Han
> 
>>
>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>> ---
>>
>>   drivers/pci/controller/dwc/pcie-designware-host.c | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
>> index 39f3b37..2cba2a8 100644
>> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
>> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
>> @@ -61,7 +61,7 @@ irqreturn_t dw_handle_msi_irq(struct dw_pcie_rp *pp)
>>          irqreturn_t ret = IRQ_NONE;
>>          struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>>
>> -       num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
>> +       num_ctrls = DIV_ROUND_UP(pp->num_vectors, MAX_MSI_IRQS_PER_CTRL);
>>
>>          for (i = 0; i < num_ctrls; i++) {
>>                  status = dw_pcie_readl_dbi(pci, PCIE_MSI_INTR0_STATUS +
>> @@ -342,7 +342,7 @@ static int dw_pcie_msi_host_init(struct dw_pcie_rp *pp)
>>
>>          if (!pp->num_vectors)
>>                  pp->num_vectors = MSI_DEF_NUM_VECTORS;
>> -       num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
>> +       num_ctrls = DIV_ROUND_UP(pp->num_vectors, MAX_MSI_IRQS_PER_CTRL);
>>
>>          if (!pp->msi_irq[0]) {
>>                  pp->msi_irq[0] = platform_get_irq_byname_optional(pdev, "msi");
>> @@ -706,7 +706,7 @@ int dw_pcie_setup_rc(struct dw_pcie_rp *pp)
>>          dw_pcie_setup(pci);
>>
>>          if (pp->has_msi_ctrl) {
>> -               num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
>> +               num_ctrls = DIV_ROUND_UP(pp->num_vectors, MAX_MSI_IRQS_PER_CTRL);
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
