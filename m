Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C831DC636CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Feb 2023 09:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hpb5n0BQrCThSuWmamxNUcPajOowVE7XrINVkufOix8=; b=wKGpLE0KPS5uYi
	4jeFtrGB/EbFnZQnSs2WSTzKInci/i1qhcg/7bOLpxvhEg6nEpAZqW6Q8U36CdCAAmCDqkim3dLcR
	Yo6I8BOSwerzoqYAsH9imewaD1TZ+fUEKywaxUixYWWTexaCSsuoSYV1Av4i0YEW4DufdbAvo1GiR
	x1qzv2V8hpK2GQark5zWk+QyPz+LtnlmQ7ABLx9BrEiVkbPqNfcvJ94E/qTBCkEVjpzoV759PUFWe
	aVD3dLam3BfF7fVA3/2m8AOgwn5m6RxXGqVcXeWk3wzF03W3Tm/vSqN0WHJADYTjMt+eFivEoSfcP
	1aeu6/HHuqOomKQFSBYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSazK-009PBC-SJ; Thu, 16 Feb 2023 09:55:38 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSayO-009Om7-3f
	for linux-rockchip@lists.infradead.org; Thu, 16 Feb 2023 09:54:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676541279; x=1708077279;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=4fhomCS6ZCHtJK33xQiwO7vO/8//ALFhpWX9zuzfGKo=;
  b=pwN+FgZbVY5tzX0VTCfkd5INaVdBnIhOF3pEE/EasV1IB2gZ8Bn5eJdx
   sb7lwWyGxTjyk5iY6cOFx9X6W7SNhI8I47nlmo7Zo5cJkQFQaDIAyMUMX
   HxqqX5KDUYXPBADXkhTrVcyqolA/bOT5yHmJPNiDVlGHhmpJw/zIioqjM
   eHLumrI3doulgmcu7fjBkAn7WjeppLz5Bsz13ZtunK02e0foPslgqyCnt
   eQAA6jQBMqvD1Kgj1qhDNbRDqiNRZ0qHPq9LELAI0SLPfD23soxtX2UQR
   gVJVyz5Hu8173sDDTLdLnv5FEa+cKyOt6egjdeV1lEsqb5n+UQ/7Rgcvz
   g==;
X-IronPort-AV: E=Sophos;i="5.97,302,1669046400"; 
   d="scan'208";a="335418122"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 16 Feb 2023 17:54:33 +0800
IronPort-SDR: jgLzItueEWnqq8ePdJhslg8xbknImkFDKsKvqvyPLOJKmYlDpxQIpH3/399qyDPKB99DmMB3ZR
 KawZIWaHMiTFnHZdjsxqSw9xjgLHiq4mOIXf2DMUlnACNoQBoCj64et6v/CaZxvC7nOwkfxuSP
 eUJMRQ0Sq+ky7AlhJxDFn1LuITrns/okJHje9rQs8ftXmzQgs33jFYILKWUBLHwU5Df6ZiHBdp
 tga8uG8mdIA91wXXAOUDVmy68i1GogbiBWaTfmV0uNA992lr1giUcdSiX+1mvC27gc7wK+VSEA
 kKk=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 16 Feb 2023 01:05:54 -0800
IronPort-SDR: wWx4KtQcFpK+qJvle1GNJvUXlY0CoGcpMr8/3OFrilEVRQ+uvKDvQeSI/gxwAfw5PdwJsnGkOt
 wP2w1kotfWpwhGX+MWdba4p8ZmFcA2cCdqx/Os9cV0pu5T2ZTVfTZfsegk6U7VfotFNO/YG5a3
 6v9QmVz3uJPirN+j52Zizb5K/BIBpH092qqgb6+e8aqRXKfK0qSh2L1h7VrcLs53iyZ0e0B9Sv
 AASd4XYYXWT3hwv+Ec5/tpfxVidMbeA4WgX0Fdi+3ig/vqDy1p/rLTIY5FodbNKIIvuH8mCOc9
 ZH4=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 16 Feb 2023 01:54:33 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PHVfJ57BKz1Rx15
	for <linux-rockchip@lists.infradead.org>; Thu, 16 Feb 2023 01:54:32 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1676541271; x=1679133272; bh=4fhomCS6ZCHtJK33xQiwO7vO/8//ALFhpWX
	9zuzfGKo=; b=kc/vmVw5G0IXKncXvTI7034KdMof142dSq8Gl2Lt6cX9WxyjW8C
	koOsqLlaoP0hz0uP8SwhQPU/eTW25WGivTcDTBJOEybwQ9LhDRHHUuIJXQKCz21t
	u1LoiAVKpvKPhKqWHWOHDrKvAnG1YGJpBlKCKC1KC/5TXsu0s+RNctZg5QZXGS7f
	xlq15qc8srRJDxy1FKLOGm9EmSRpQVgKJUOtKZ45i7MPOl/XJkVNte19O0o7b+q+
	vSHtaQ4ju3OKOAVnfiOgu05j03O0Zc/PtfnvxhY3hgLU3SN+0nsdNIgLQWiG1YH8
	Mm7e2x9YOu4FhukVUjlq2QM1l2S0it3DM+Q==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id MzQTz_WyFU9I for <linux-rockchip@lists.infradead.org>;
	Thu, 16 Feb 2023 01:54:31 -0800 (PST)
Received: from [10.225.163.121] (unknown [10.225.163.121])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PHVfC3cSjz1RvLy;
	Thu, 16 Feb 2023 01:54:27 -0800 (PST)
Message-ID: <37e469ad-3cee-6e3e-4ddd-90681b94338b@opensource.wdc.com>
Date: Thu, 16 Feb 2023 18:54:25 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 1/9] PCI: rockchip: Remove writes to unused registers
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com,
 rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-2-rick.wertenbroek@gmail.com>
 <2ebd33e2-46ef-356d-ff4c-81b74950d02f@opensource.wdc.com>
 <CAAEEuhr273bKFBWiTVyTjhHhxjuTK=TVd+5K2B07WfWMD+N7mA@mail.gmail.com>
 <559bdd8c-9cc8-d7ae-a937-ffee9cfbb8a6@opensource.wdc.com>
 <5c15e1d1-c7e9-0b7c-9b14-f95543c70383@opensource.wdc.com>
 <CAAEEuhoYjq9WythKJdLbXL3H_927wbJScWrdbU-tHHvysBg_tQ@mail.gmail.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <CAAEEuhoYjq9WythKJdLbXL3H_927wbJScWrdbU-tHHvysBg_tQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_015440_254327_FACB12B9 
X-CRM114-Status: GOOD (  31.02  )
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

On 2/16/23 17:43, Rick Wertenbroek wrote:
> On Thu, Feb 16, 2023 at 8:28 AM Damien Le Moal
> <damien.lemoal@opensource.wdc.com> wrote:
>>
>> On 2/15/23 18:58, Damien Le Moal wrote:
>> [...]
>>> WRITE ( 131072 bytes):                OKAY
>>> WRITE (1024000 bytes):                OKAY
>>>
>>> Then stops here doing the 1024001 B case. The host waits for a completion that
>>> does not come. On the EP side, I see:
>>>
>>> [   94.307215] pci_epf_test pci_epf_test.0: READ src addr 0xffd00000, 1024001 B
>>> [   94.307960] pci_epc fd000000.pcie-ep: Map region 1 phys addr 0xfa100000 to
>>> pci addr 0xffd00000, 1024001 B
>>> [   94.308924] rockchip-pcie-ep fd000000.pcie-ep: Set atu: region 1, cpu addr
>>> 0xfa100000, pci addr 0xffd00000, 1024001 B
>>> [  132.309645] dma-pl330 ff6e0000.dma-controller: Reset Channel-2
>>> CS-20000e FTC-40000
>>>
>>>                                                   ^^^^^^^^^^^^^^^
>>> The DMA engine does not like something at all. Back to where I was when I tried
>>> your series initially, which is why I tried removing patch 1 to see what happens...
>>>
>>> [  132.370479] pci_epf_test pci_epf_test.0: READ => Size: 1024001 B, DMA: YES,
>>> Time: 38.059623935 s, Rate: 26 KB/s
>>> [  132.372152] pci_epc fd000000.pcie-ep: Unmap region 1
>>> [  132.372780] pci_epf_test pci_epf_test.0: RAISE MSI IRQ 1
>>> [  132.373312] rockchip-pcie-ep fd000000.pcie-ep: Send MSI IRQ 1
>>> [  132.373844] rockchip-pcie-ep fd000000.pcie-ep: MSI disabled
>>> [  132.374388] pci_epf_test pci_epf_test.0: Raise IRQ failed -22
>>>
>>> And it looks like the PCI core crashed or something because MSI does not work
>>> anymore as well (note that this is wheat I see with my nvme epf driver too, but
>>> I do not have that DMA channel reset message...)
>>>
>>> If I run the tests without DMA (mmio only), everything seems fine:
>>>
>>> ## Read Tests (No DMA)
>>> READ (      1 bytes):         OKAY
>>> READ (   1024 bytes):         OKAY
>>> READ (   1025 bytes):         OKAY
>>> READ (1024000 bytes):         OKAY
>>> READ (1024001 bytes):         OKAY
>>>
>>> ## Write Tests (No DMA)
>>> WRITE (      1 bytes):                OKAY
>>> WRITE (   1024 bytes):                OKAY
>>> WRITE (   1025 bytes):                OKAY
>>> WRITE (1024000 bytes):                OKAY
>>> WRITE (1024001 bytes):                OKAY
>>>
>>> ## Copy Tests (No DMA)
>>> COPY (      1 bytes):         OKAY
>>> COPY (   1024 bytes):         OKAY
>>> COPY (   1025 bytes):         OKAY
>>> COPY (1024000 bytes):         OKAY
>>> COPY (1024001 bytes):         OKAY
>>>
>>> So it looks like translation is working with your patch, but that the driver is
>>> still missing something for DMA to work correctly...
>>
>> I kept testing this and realized that I was not getting a consistent behavior.
>> Sometimes all tests passed, but would not repeat (running again would fail
>> everything), sometimes NMIs from bad accesses, and other times "hang" (test not
>> completing but no real machine hang/crash). So it started to hint at something
>> randomly initialized...
>>
>> Re-reading the TRM, particularly section 17.5.5.1.1, I realized that the lower
>> 16 bits of the desc2 register are used for the translation, but we never set
>> them with the current code. Only desc0 and desc1... So I added a write(0) to
>> desc2 and now it is finally working well. Running the tests in a loop, they all
>> pass and no bad behavior is observed.
>>
>> My cleaned-up rockchip_pcie_prog_ep_ob_atu() function now looks like this:
>>
>> static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
>>                                          u32 r, u32 type, u64 phys_addr,
>>                                          u64 pci_addr, size_t size)
>> {
>>         u64 sz = 1ULL << fls64(size - 1);
>>         int num_pass_bits = ilog2(sz);
>>         u32 addr0, addr1, desc0;
>>
>>         /* Sanity checks */
>>         if (WARN_ON_ONCE(type == AXI_WRAPPER_NOR_MSG))
>>                 return;
>>         if (WARN_ON_ONCE(ALIGN_DOWN(phys_addr, SZ_1M) != phys_addr))
>>                 return;
>>         if (WARN_ON_ONCE(rockchip_ob_region(phys_addr + size - 1) != r))
>>                 return;
>>
>>         /* We must pass at least 8 bits of PCI bus address */
>>         if (num_pass_bits < 8)
>>                 num_pass_bits = 8;
>>
>>         /* PCI bus address region */
>>         addr0 = ((num_pass_bits - 1) & PCIE_CORE_OB_REGION_ADDR0_NUM_BITS) |
>>                 (lower_32_bits(pci_addr) & PCIE_CORE_OB_REGION_ADDR0_LO_ADDR);
>>         addr1 = upper_32_bits(pci_addr);
>>         desc0 = ROCKCHIP_PCIE_AT_OB_REGION_DESC0_DEVFN(fn) | type;
>>
>>         rockchip_pcie_write(rockchip, addr0,
>>                             ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0(r));
>>         rockchip_pcie_write(rockchip, addr1,
>>                             ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR1(r));
>>         rockchip_pcie_write(rockchip, desc0,
>>                             ROCKCHIP_PCIE_AT_OB_REGION_DESC0(r));
>>         rockchip_pcie_write(rockchip, 0,
>>                             ROCKCHIP_PCIE_AT_OB_REGION_DESC1(r));
>>         rockchip_pcie_write(rockchip, 0,
>>                             ROCKCHIP_PCIE_AT_OB_REGION_DESC2(r));
>> }
>>
>> And the function rockchip_pcie_clear_ep_ob_atu() also clears desc2:
>>
>> static void rockchip_pcie_clear_ep_ob_atu(struct rockchip_pcie *rockchip,
>>                                           u32 region)
>> {
>>         rockchip_pcie_write(rockchip, 0,
>>                             ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0(region));
>>         rockchip_pcie_write(rockchip, 0,
>>                             ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR1(region));
>>         rockchip_pcie_write(rockchip, 0,
>>                             ROCKCHIP_PCIE_AT_OB_REGION_DESC0(region));
>>         rockchip_pcie_write(rockchip, 0,
>>                             ROCKCHIP_PCIE_AT_OB_REGION_DESC1(region));
>>         rockchip_pcie_write(rockchip, 0,
>>                             ROCKCHIP_PCIE_AT_OB_REGION_DESC2(region));
>> }
>>
>> Thoughts ?
>>
>> --
>> Damien Le Moal
>> Western Digital Research
>>
> 
> desc2 dictates the bits [79-64] of the PCIe header descriptor.
> These bits are for the PF TLP Processing hints.
> I did not set them because I thought the default value (0) would be fine.
> The TRM section 17.6.8.2.5 says that this register values are reset
> to 0, therefore, the write here (0) to desc2 should not change anything unless
> that register is written somewhere (I don't think it is).
> Anyways, it's not a bad idea to set desc2 to 0 in those two functions.

I wonder if that register changes when TLPs are processed... So when the region
is remapped, previous values still there cause the problems I am seeing ?

As mentioned, with this "fix", the pcitest.sh is now solid. But I am still
seeing the same issues with my nvme endpoint driver when Linux takes over from
BIOS. Bios works, but not Linux, still no IRQs at all. So there is likely still
another issue that I cannot see at the moment. No hints whatsoever.

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
