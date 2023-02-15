Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2827C636D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwx4WyYbscmBRKO/Ec8j4joFSTNAUeB/ko57WHV721E=; b=nqSG6wo/DpWvsy
	2qwu/koWj/oFv/yVzigvC4Ftd6OAj3pq4IiP+lTFMh/9FQSIEy+/MfZ9y5SP/E3+LZUwDhPAIK6dY
	2vWw1JkS4o2kpoXQh6Dxzz55OB1yjddzxkGqMhPesYnd0SDCGVn5/k5EFVkOFo+rpkhUA3fCY6OCj
	AvSNBLpnQhQwIe5MEFtU0kUZN/cERBzyJ+leZ1G5X5TAnNNsDdAa0ulXXsjujvWqcUfwxCfgOIwQP
	tAQRnB6THN36Oi6mEEV/CGERNRfpQ7i0BCntBFmuDA09atPerShbXil7w7f29hHgCyMU3SO0p8RZT
	3YvGFlSPbEIcW3KHwIXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSFq3-005a2Q-GB; Wed, 15 Feb 2023 11:20:39 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSFpt-005Zzs-IA
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 11:20:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676460029; x=1707996029;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=uXynvbW2CVApjkzjxNlJI6Vd2Zh2nQdtz8jd3YUCg70=;
  b=KSu8mWqMJSQdF0WXlEPA20uE1F2zCbBfHmXlEH9b0iUDqKgWZgv+R/Do
   OR1uKnoubb3Ev2XxA4f+lcCIUrM/B6MJCcg2z4j9g7dd+gseLY9y2iuoz
   wj45+zLA4ZvSomvH1rQwudzFMd5E6dvsr1qXwML0L4dtIXs5u0inL7kx4
   +gXZ8n9CF/PXj+MyKqob5KQeMdrftPoABxJz57zri/qck6lQ6m+xmmRbs
   u9xTXW6t2nIC5eGFbWOEfcb0QjZc3SGBvBOoMAA78WFv6pbMFvtILz1gk
   w+woPuqfHSvBoPjJQciRL2ewXLx+47Jup10CIgyj9Q43lSESoVl33kJ1c
   Q==;
X-IronPort-AV: E=Sophos;i="5.97,299,1669046400"; 
   d="scan'208";a="223381759"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 19:20:27 +0800
IronPort-SDR: tSyi0vjLTWBj1+p2drKCZhPij9qcHQRLxBZ9aU1+iJq5n6O6rufR/t8q+V9td7W3h/1hTygY4i
 PTTd1otlW4Ns9OSX1ldD4OQerSfVqlABVk1kmjq6+lH1LULh9B8mzzRCz05cNVXlPxuMxyfrda
 pmrbZn/FWLV39IbOl29e25wRpqZpJYyX4UVuFxxK7M5voIl6w6ZBUpxymNa/MxUuiZyqXXva0/
 y1NDL4WLSh2KgJcLa7SZM3V/OtsRyxk4xFMT5jQxdOJEqYm0/UhS7DoPjVVmbVscyfATvfqxkW
 a8M=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Feb 2023 02:31:49 -0800
IronPort-SDR: sxiCiHmU+VVqs0j3P8LiOdXqevkD7KCqGU0QwtgmJa6jZBZN8DiAL4hStP52K47upnXpeKtZlA
 Q4/LdqFu0BrydMwma5z9Gry1anpU9IiMQLhlvjjxiXg5jPiY0Tln/kcag+NOclrIQPtDzqPu1n
 J3mZCwz6bOPKoyL1DJv7bAWuNaGnURRo+reZCVY7RvaKE8n2DvzNAGqV2COYx3Bl3XcOwQfvbJ
 8dzCTT89AajrkK1jsTT5xfmsr632yr0mApyi2uzeTFPgJsrLPqG0gi+i+4XEzL/GcNVt/PkWga
 KdU=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Feb 2023 03:20:26 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGwbt3Fpdz1SHjy
	for <linux-rockchip@lists.infradead.org>; Wed, 15 Feb 2023 03:20:26 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1676460025; x=1679052026; bh=uXynvbW2CVApjkzjxNlJI6Vd2Zh2nQdtz8j
	d3YUCg70=; b=e+JD7F90ycQnHiBwA972XdkC6x7sRlMmyxIhLaJ1bJw0QgkZHfV
	Iavx+67DCcnc7oz5AJi0zfvg9JiLDuZ4loQhK9GN0gok+omFTFxoQAjl3ODNZBXx
	7aS6TC55AF1Y4CZtgQlDEhOvkFl3x9AH9mWtC7tVYTmnoQCkQ+Wwq3VENYXG8mxV
	0VsV0GaXDZthb9Cq2AcRxBxg5++WoYNPzOD/u4dwxUbJqWVSnc0k/k+kT5k0iVYz
	2OtBLHWAuTWGGzL+WBRVqBFl0Ta9W5zcYzaJG8GJcu+8sbAODUR4OmnF4mfma1MA
	gkpXxF4zSSRablojn4rVCkbGks92mdH2qzQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id aB4gFURYtkMG for <linux-rockchip@lists.infradead.org>;
	Wed, 15 Feb 2023 03:20:25 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGwbn61f9z1RvLy;
	Wed, 15 Feb 2023 03:20:21 -0800 (PST)
Message-ID: <b9f9a3de-614e-3306-4ffb-e99f0dce86f4@opensource.wdc.com>
Date: Wed, 15 Feb 2023 20:20:20 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 8/9] PCI: rockchip: Use u32 variable to access 32-bit
 registers
Content-Language: en-US
To: David Laight <David.Laight@ACULAB.COM>,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 "alberto.dassatti@heig-vd.ch" <alberto.dassatti@heig-vd.ch>
Cc: "xxm@rock-chips.com" <xxm@rock-chips.com>,
 "rick.wertenbroek@heig-vd.ch" <rick.wertenbroek@heig-vd.ch>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-9-rick.wertenbroek@gmail.com>
 <0fa5cef4-7096-7f59-422a-98011d01437c@opensource.wdc.com>
 <2a80c4e1f1ad42c6849521d1e644b003@AcuMS.aculab.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <2a80c4e1f1ad42c6849521d1e644b003@AcuMS.aculab.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_032029_672115_62D31D37 
X-CRM114-Status: GOOD (  19.50  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2/15/23 19:46, David Laight wrote:
> From: Damien Le Moal
>> Sent: 15 February 2023 01:34
>>
>> On 2/14/23 23:08, Rick Wertenbroek wrote:
>>> Previously u16 variables were used to access 32-bit registers, this
>>> resulted in not all of the data being read from the registers. Also
>>> the left shift of more than 16-bits would result in moving data out
>>> of the variable. Use u32 variables to access 32-bit registers
>>>
>>> Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
>>> Cc: stable@vger.kernel.org
>>> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
>>> ---
>>>  drivers/pci/controller/pcie-rockchip-ep.c | 10 +++++-----
>>>  drivers/pci/controller/pcie-rockchip.h    |  1 +
>>>  2 files changed, 6 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
>>> index ca5b363ba..b7865a94e 100644
>>> --- a/drivers/pci/controller/pcie-rockchip-ep.c
>>> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
>>> @@ -292,15 +292,15 @@ static int rockchip_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 vfn,
>>>  {
>>>  	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
>>>  	struct rockchip_pcie *rockchip = &ep->rockchip;
>>> -	u16 flags;
>>> +	u32 flags;
>>>
>>>  	flags = rockchip_pcie_read(rockchip,
>>>  				   ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
>>>  				   ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
>>>  	flags &= ~ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_MASK;
>>>  	flags |=
>>> -	   ((multi_msg_cap << 1) <<  ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET) |
>>> -	   PCI_MSI_FLAGS_64BIT;
>>> +	   (multi_msg_cap << ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET) |
>>
>> ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET is 17 and multi_msg_cap is a u8...
>> Not nice.
> 
> It really doesn't matter.
> As soon as you do any arithmetic char and short are promoted to int.

OK. Thanks.


-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
