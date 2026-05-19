Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1823DCD4F5B
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 May 2026 16:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yugILWzB9gyq0eA0bPG7WxBWuWRy0/CMIdXKhmXvhmg=; b=0q7aTM2sV3VtSm
	jAGUEztkrZjsjqzCLAR0OZvlRBDI6fQh8MgWCm9BA36Bg19RTnfUQ9SOpsG6xXDrCjWd+IVjaw+tT
	LBH8zKRmjOfj4BmeQT6ukS9eJi+bVxD632quwMGsvEoZ6G/WHhUn1w+eCh0sa12iNVmETuc6Vq05w
	KYR+4rxve9u7A3vh0GQ2e13Xh4NkdRV1lwstv7xg76F6Dq62NlBfKPwIrxboTcGSKgV5/YcYjSFHW
	7BpiRTceasWmlm0tqBY8Wev4XD03nIwaT+f5uxs0wTgjghCza07VjCaA2ZxmwJ1UhKVHs3oB8UsT1
	WZiGJPBK2Nr7hsG5s6hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPN15-00000002BEo-13GT;
	Tue, 19 May 2026 16:09:59 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPN12-00000002BDQ-09hw;
	Tue, 19 May 2026 16:09:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:To:From:
	Content-Type; bh=JLeG6x1Y3dfOvgAW0mg1VnFVfEP9lZkOIYEiUHHIyoA=;
	b=JUyt0G87rt7PYlK4QmM8e4B8RwvbyXFoil0YpiApMe3XoreMYWYuEqJf5cPfwf
	qlBIVDUaQLyHq0JgoD73DUE643nlzgebsfiYDyj3SJ0JmWnZ7d0U+bjJkV9ql9SY
	HGrtIli4iTrWBVdI6Ps9vODOFptHtzla5d5m36vbO5yK4=
Received: from [IPV6:240e:b8f:91b3:d000:9130:b3d8:6241:39fd] (unknown [])
	by gzga-smtp-mtada-g0-4 (Coremail) with SMTP id _____wBXXrU4iwxqGKJPCQ--.44368S2;
	Wed, 20 May 2026 00:09:29 +0800 (CST)
Message-ID: <5cc6fbcc-98eb-4da5-b123-2c04c4d39326@163.com>
Date: Wed, 20 May 2026 00:09:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] PCI: dwc: Cache PCIe capability offset and simplify
 drivers
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 jingoohan1@gmail.com, mx@lists.linux.dev, linuxppc-dev@lists.ozlabs.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, sophgo@lists.linux.dev,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260509135152.2241235-1-18255117159@163.com>
 <beqy5ykxgo4ianya6r4mahkkyujs6lly475u26vqaemgqsdnhp@2pn5ipczwc34>
Content-Language: en-US
From: Hans Zhang <18255117159@163.com>
In-Reply-To: <beqy5ykxgo4ianya6r4mahkkyujs6lly475u26vqaemgqsdnhp@2pn5ipczwc34>
X-CM-TRANSID: _____wBXXrU4iwxqGKJPCQ--.44368S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxGryfKrW8tFykKr18tF1fJFb_yoW5ArWkpa
	y5tF4IyF18tF4S9a12v3WDuF13t3Z7AFyDJ39xW34SvFya9F17Wr10yrWftF97JrW2qr1a
	kF45ta47uFs5JFUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zRiiSJUUUUU=
X-Originating-IP: [240e:b8f:91b3:d000:9130:b3d8:6241:39fd]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbC7BqOMmoMizpQVQAA3Y
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_090956_436526_A17D64CA 
X-CRM114-Status: GOOD (  15.63  )
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



On 5/19/26 21:57, Manivannan Sadhasivam wrote:
> On Sat, May 09, 2026 at 09:51:49PM +0800, Hans Zhang wrote:
>> The DWC PCIe core and its many platform drivers repeatedly call
>> dw_pcie_find_capability(pci, PCI_CAP_ID_EXP) to obtain the offset of the
>> PCI Express Capability structure. This is wasteful and makes the code
>> verbose. And some even search for the PCI_CAP_ID_EXP offset value within
>> the suspend/resume functions.
>>
> 
> Sashiko has flagged some real issues with this series in accessing DBI space
> very early and 'pci->pcie_cap' being 0.


Hi Mani,

We have discussed this issue in the Cadence driver. I think it won't 
cause any problems. Specifically as follows:

https://lore.kernel.org/linux-pci/5823faec-d972-4c77-90ec-a215c686e0a8@163.com/
"""
As per PCIe r7.0, sec 7.5.1.1.11, Since all PCI Express Functions are 
required to implement the PCI Express Capability structure, which
must be included somewhere in this linked list.
"""



Bjorn also responded as follows:
https://lore.kernel.org/linux-pci/20260505212306.GA744158@bhelgaas/
"""
It's true that all Root Ports must have a PCIe Capability.
"""



Mani, should I continue to make the judgment that 'pci->pcie_cap' might 
be 0 as per your instructions?



Best regards,
Hans


> 
> Those needs to be fixed.
> 
> - Mani
> 
>> Add a cached pcie_cap field in struct dw_pcie and a helper
>> dw_pcie_get_pcie_cap() to initialize it once at probe time. Then replace
>> all explicit capability searches with the cached value across the
>> entire dwc subtree.
>>
>> Hans Zhang (3):
>>    PCI: dwc: Add pcie_cap field and helper in designware header
>>    PCI: dwc: Use cached PCIe capability offset in core
>>    PCI: dwc: Simplify platform drivers using cached capability offset
>>
>>   drivers/pci/controller/dwc/pci-imx6.c         |  6 +--
>>   .../pci/controller/dwc/pci-layerscape-ep.c    |  4 +-
>>   drivers/pci/controller/dwc/pci-meson.c        |  4 +-
>>   .../pci/controller/dwc/pcie-designware-ep.c   |  4 +-
>>   .../pci/controller/dwc/pcie-designware-host.c |  4 +-
>>   drivers/pci/controller/dwc/pcie-designware.c  | 16 +++---
>>   drivers/pci/controller/dwc/pcie-designware.h  | 17 +++++++
>>   drivers/pci/controller/dwc/pcie-dw-rockchip.c | 15 +++---
>>   drivers/pci/controller/dwc/pcie-eswin.c       |  3 +-
>>   drivers/pci/controller/dwc/pcie-fu740.c       |  2 +-
>>   drivers/pci/controller/dwc/pcie-intel-gw.c    |  2 +-
>>   drivers/pci/controller/dwc/pcie-qcom-ep.c     | 11 ++--
>>   drivers/pci/controller/dwc/pcie-qcom.c        | 24 ++++-----
>>   drivers/pci/controller/dwc/pcie-sophgo.c      |  8 ++-
>>   drivers/pci/controller/dwc/pcie-spacemit-k1.c |  5 +-
>>   drivers/pci/controller/dwc/pcie-spear13xx.c   |  6 +--
>>   drivers/pci/controller/dwc/pcie-tegra194.c    | 51 +++++++------------
>>   17 files changed, 85 insertions(+), 97 deletions(-)
>>
>>
>> base-commit: 70390501d1944d4e5b8f7352be180fceb3a44132
>> -- 
>> 2.34.1
>>
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
