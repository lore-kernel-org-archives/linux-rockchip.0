Return-Path: <SRS0=H/Xe=M2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1520C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 14:57:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9FAE06023E
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 14:57:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9FAE06023E
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cJiFMJ+ZXYK/TDz8sSU9+qs0JMcgD9Av03+rUKNCd7I=; b=Sbq3sx5z4I6/keWsIhxbd0Zc/d
	RX6G7IyukqaYrtc/bgQIKPsHUfOAxUhO2l8kdUok795FsJuo4URdpOriFSTf5DP/ifrqQV8BVi8bk
	B+brPRG8NTrO+SqsVgZDv8AslSsPAewDksiYEoEsOFHXe4h73W3zcvEs1CEaIk0xmhD9ARpdyHhu9
	9hAqem9WwSS7z6G6X2hkWvCFcZ1bqnW8T4NxWXk43XsVxyyT670j+v8yc/4z43QVe/WYAsdEhBJs/
	XIMgN7SD03bJtEPoetyuViRy9+3rf3Ivhpm4iLPyArGXVZ66nWfJGulMGnn0OEHisw7PGFBZvkaCT
	dhetuhJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAvqu-003Il0-S0; Tue, 03 Aug 2021 14:57:08 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAvqr-003IjF-Lq; Tue, 03 Aug 2021 14:57:07 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 173Euqjp051587;
 Tue, 3 Aug 2021 09:56:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1628002612;
 bh=+Xji1zKIuLogX0B+kK6j4X2dEkjBXwuwPZRCCqTYn94=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=hfy2ciXNXPYLOeWd5Rgr0vwK6t5j4Ywtiq8rv5tnPhp/Hi33vvUtdM5b5EKe6Ybb2
 x/+A1Almuf8Co17KmPyhthoPXcM7ZZh0PFl4pFDHM4yQJnaoLuPMKi1vAtrdJdeb0k
 w/iELA9P0/DoMh1ej4YYg3XR1zOSqBnlcHwvyE0g=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 173EuqjM065661
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 3 Aug 2021 09:56:52 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 3 Aug
 2021 09:56:52 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 3 Aug 2021 09:56:52 -0500
Received: from [10.250.232.234] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 173Euia3020120;
 Tue, 3 Aug 2021 09:56:45 -0500
Subject: Re: [PATCH v7 5/7] PCI: cadence: Add support to configure virtual
 functions
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
CC: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Tom
 Joseph <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo
 Pimentel <gustavo.pimentel@synopsys.com>, Marek Vasut
 <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda
 <yoshihiro.shimoda.uh@renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Jonathan Corbet <corbet@lwn.net>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-renesas-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, Lokesh Vutla <lokeshvutla@ti.com>
References: <20210803050310.27122-1-kishon@ti.com>
 <20210803050310.27122-6-kishon@ti.com> <20210803114530.GE11252@lpieralisi>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <be907fe7-4095-e28b-5575-76629edc30f0@ti.com>
Date: Tue, 3 Aug 2021 20:26:42 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210803114530.GE11252@lpieralisi>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_075706_008632_05A6AFAC 
X-CRM114-Status: GOOD (  27.40  )
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

Hi Lorenzo,

On 03/08/21 5:15 pm, Lorenzo Pieralisi wrote:
> On Tue, Aug 03, 2021 at 10:33:08AM +0530, Kishon Vijay Abraham I wrote:
>> Now that support for SR-IOV is added in PCIe endpoint core, add support
>> to configure virtual functions in the Cadence PCIe EP driver.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>> Acked-by: Tom Joseph <tjoseph@cadence.com>
>> ---
>>  .../pci/controller/cadence/pcie-cadence-ep.c  | 241 +++++++++++++++---
>>  drivers/pci/controller/cadence/pcie-cadence.h |   7 +
>>  2 files changed, 217 insertions(+), 31 deletions(-)
>>
>> diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
>> index 912a15be8bfd..791915054ff4 100644
>> --- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
>> +++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
>> @@ -20,7 +20,18 @@ static int cdns_pcie_ep_write_header(struct pci_epc *epc, u8 fn, u8 vfn,
>>  				     struct pci_epf_header *hdr)
>>  {
>>  	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
>> +	u32 cap = CDNS_PCIE_EP_FUNC_SRIOV_CAP_OFFSET;
>>  	struct cdns_pcie *pcie = &ep->pcie;
>> +	u32 reg;
>> +
>> +	if (vfn > 1) {
>> +		dev_dbg(&epc->dev, "Only Virtual Function #1 has deviceID\n");
>> +		return 0;
> 
> Shouldn't this return an error ?

Since the same function driver could be used for physical function and
virtual function, I tried to avoid adding any additional case specific
for virtual function in the function driver.

If we want to return an error here, then the function driver should be
modified to not invoke writeheader for vfn > 1.
> 
>> +	} else if (vfn == 1) {
>> +		reg = cap + PCI_SRIOV_VF_DID;
>> +		cdns_pcie_ep_fn_writew(pcie, fn, reg, hdr->deviceid);
>> +		return 0;
>> +	}
>>  
>>  	cdns_pcie_ep_fn_writew(pcie, fn, PCI_DEVICE_ID, hdr->deviceid);
>>  	cdns_pcie_ep_fn_writeb(pcie, fn, PCI_REVISION_ID, hdr->revid);
>> @@ -51,12 +62,14 @@ static int cdns_pcie_ep_set_bar(struct pci_epc *epc, u8 fn, u8 vfn,
>>  				struct pci_epf_bar *epf_bar)
>>  {
>>  	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
>> +	u32 cap = CDNS_PCIE_EP_FUNC_SRIOV_CAP_OFFSET;
>>  	struct cdns_pcie_epf *epf = &ep->epf[fn];
>>  	struct cdns_pcie *pcie = &ep->pcie;
>>  	dma_addr_t bar_phys = epf_bar->phys_addr;
>>  	enum pci_barno bar = epf_bar->barno;
>>  	int flags = epf_bar->flags;
>>  	u32 addr0, addr1, reg, cfg, b, aperture, ctrl;
>> +	u32 first_vf_offset, stride;
>>  	u64 sz;
>>  
>>  	/* BAR size is 2^(aperture + 7) */
>> @@ -92,26 +105,50 @@ static int cdns_pcie_ep_set_bar(struct pci_epc *epc, u8 fn, u8 vfn,
>>  
>>  	addr0 = lower_32_bits(bar_phys);
>>  	addr1 = upper_32_bits(bar_phys);
>> +
>> +	if (vfn == 1) {
>> +		/* All virtual functions use the same BAR config */
>> +		if (bar < BAR_4) {
>> +			reg = CDNS_PCIE_LM_EP_VFUNC_BAR_CFG0(fn);
>> +			b = bar;
>> +		} else {
>> +			reg = CDNS_PCIE_LM_EP_VFUNC_BAR_CFG1(fn);
>> +			b = bar - BAR_4;
>> +		}
>> +	} else if (vfn == 0) {
>> +		/* BAR configuration for physical function */
>> +		if (bar < BAR_4) {
>> +			reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG0(fn);
>> +			b = bar;
>> +		} else {
>> +			reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG1(fn);
>> +			b = bar - BAR_4;
>> +		}
>> +	}
> 
> Code in both branches is almost identical except for what is
> assigned to reg, it is not fundamental but maybe it can be rewritten
> more concisely.

okay.. let me think.

Thanks
Kishon

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
