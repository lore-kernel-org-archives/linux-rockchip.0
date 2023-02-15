Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 774F5C636CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 09:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bu6nYaKOkXlPKIdc4n4OzNwaRziGbIEohwl0FujkVQM=; b=kP1k0R1EzujaG5
	i5nPh1lrxH9Jsv1f+zyasyaanwBZqTkOlhtlYbtJZPOF76EULpM/S7etvn+vCSiTGPj+JpN8e3sLj
	YRdvBqT/5BlZTl7RrPJMcvxDzyJJgm260ToFM5AdSNNVK6xczdawAQsk8iVsUIPAyj9VA1vVT3Kk5
	ovNkT7gmeSM4uwPxP0wrjOBYjas9gUoXWzqClAgTIWIWg3csZovAtMsays2JLKsm7HH4x3rniucQ+
	3/zilK47kD5rHxhMfElG5QbY4HDwhFuqALtFEh9s8VhAzAqquBzeLqg42D51JYRHEOF9bD2ibqqtP
	MuXod98WhBukUDW/sXpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSEZC-005NZ6-9w; Wed, 15 Feb 2023 09:59:10 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSEZ8-005NXF-Qw
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 09:59:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676455146; x=1707991146;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=WTkXI4W+MKwwJycy7cbo2GbIsg58uAfo8wCSpFIsYak=;
  b=WjteQSinG2T1VNs6UqvhYDtre0sQWOhrBeBignvYht7rQDhAhsTpVA3l
   QPOBjyoeS4duVZb6X3Z/foKH4+9tIXBhP9pHo4tAhKJ9OZVxrQPWT+num
   3anF2NVrqOmIIWwwnLVLLE4D/Ty6aRckJP+7q2JG6iZ7OdIJTVbM6bdYV
   ATGqldUTwHwxJnS3mNeHlrdjoPC2X5UKPNciljZkQjr4fzJ1NJnL7K3Id
   fajNEwrH1zmNrZIkM0jII6pA88/zFN9o8T08AAdrg1NYX+dg4felOt/6a
   +/n2gddD2avkHRDKQmNQAQhOQ3AnLw0qaAbj80sl524H2i8DNRoK3GwET
   w==;
X-IronPort-AV: E=Sophos;i="5.97,299,1669046400"; 
   d="scan'208";a="221655208"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 17:59:01 +0800
IronPort-SDR: Km24/iD86OkD0q8I0t1ZewNaa3LDnPe10BHl/SZ7+MTavNJCpXss8GfTSj9NOuastKpsZRTJZE
 P+oEu5+cpkGCR4ZVXpCsda6JNTI/9SEmQ4udBGOZsAWQ3/R3+D7PBzGjin5AqQ3yqE6Mj5HzIL
 vL/pXUY6s4me/rI5ANKDIPKJcQ/d6wHGUfy7bwbqqr7b4FjBxMHLEpsc4SSY5AKcCGQTHGFopA
 oIAzo8Fe2LAvz28Zb4FsZbRSPRDsNZ+2CxOZ4ma5uIZ2Zj/Zq1iMG3y60SQ1T7i1aBP15ZVz6y
 8Ag=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Feb 2023 01:16:08 -0800
IronPort-SDR: U7HMgZhizw1Ofd6tMgRxDLRwV0CpZtY6oBeqIDuytkoouo4/bQuigxCBpe1JctV+jPK+Nkbc0o
 fplFmMDa9Qe3EiN0q0O2l2Dq6ByNqRaxr1TlUdRi04afY0HS+qJnXZKicHaHQF9g7CBrgkAqNo
 b7kA/0e9oMQL19Bu3Nvyc7Xxb9WyvaomNzJurMrmZydKYl1bNlTECJ2bPSHrv8bJg2xixNwzIV
 SjtFM79UjJn/HrmGEq2WOKGzZp65xEyBi3FNcYraJV84+d9dJv17M2DglVf3YBdyIbg8uYbdg+
 0uw=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Feb 2023 01:59:03 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGtnx0lKLz1RwvL
	for <linux-rockchip@lists.infradead.org>; Wed, 15 Feb 2023 01:59:00 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1676455138; x=1679047139; bh=WTkXI4W+MKwwJycy7cbo2GbIsg58uAfo8wC
	SpFIsYak=; b=PJZxYfrKRw5XUinlQGXvfZTe3KKu/Pb7k6M6mo9VoygA9BCRL8P
	CmYgtrhmCbWSof5IaNZ8DvwAJRu850zMvm4dueIboWgQIeIVQqo+u+ewop3IsAy5
	ploWhU9Bc7LMDxcr81yCVuMSwVHJKNUGX0ZrbH74PLD3zRKzL+zI8kRNdsMIQrTu
	URdww+2DEp8ij+FlBh1R5nBEFaHBSznzLxr2nemsrLThWaXNzR+qhR6QREVJzz7g
	wl+oNtf2qJxgu97EvdrdKMkB0cC+XIFkBVkqvPbysEQci44SFwkFZF2lY7JImr/x
	vAQQmj3UVM2hyFEXoW1Bj06/3zk+hzfbIqA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id wEWfBHAjoaP4 for <linux-rockchip@lists.infradead.org>;
	Wed, 15 Feb 2023 01:58:58 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGtnq2Qlbz1RvLy;
	Wed, 15 Feb 2023 01:58:55 -0800 (PST)
Message-ID: <559bdd8c-9cc8-d7ae-a937-ffee9cfbb8a6@opensource.wdc.com>
Date: Wed, 15 Feb 2023 18:58:54 +0900
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
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <CAAEEuhr273bKFBWiTVyTjhHhxjuTK=TVd+5K2B07WfWMD+N7mA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_015906_994280_86A6D6EB 
X-CRM114-Status: GOOD (  35.34  )
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

On 2/15/23 18:04, Rick Wertenbroek wrote:
> On Wed, Feb 15, 2023 at 12:56 AM Damien Le Moal
> <damien.lemoal@opensource.wdc.com> wrote:
>>
>> I checked the TRM and indeed these registers are listed as unused.
>> However, with this patch, nothing work for me using a Pine rockpro64
>> board. Keeping this patch, your series (modulo some other fixes, more
>> emails coming) is making things work !
> 
> Hello, Thank you for testing the driver and commenting, I'll incorporate your
> suggestions in the next version of this series.
> 
> This patch alone does not make the driver work. Without the fixes to the
> address windows and translation found in [PATCH v2 6/9] ("PCI: rockchip:
> Fix window mapping and address translation for endpoint") transfers will not
> work. However, as you said, with the patch series, the driver works.
> Good to see that you have the driver working on the rockpro64 which is a
> very similar but different board than the one I used (FriendlyElec NanoPC-T4).
> 
>> So I think the bug is with the TRM, not the code. THinking logically about
>> htis, it makes sense: this is programming the address translation unit to
>> translate mmio & dma between host PCI address and local CPU space address.
>> If we never set the PU address, how can that unit possibly ever translate
>> anything ?
> 
> No, the bug is not in the TRM:
> The RK3399 PCIe endpoint core has the physical address space of 64MB
> @ 0xF800'0000 to access the PCIe address space (TRM 17.5.4).
> This space is split into 33 windows, one of 32MBytes and 32 of 1MByte.
> Read-write accesses by the CPU to that region will be translated. Each
> window has a mapping that is configured through the ATR Configuration
> Register Address Map (TRM 17.6.8) and the registers addr0 and addr1
> will dictate the translation between the window (a physical CPU addr)
> into a PCI space address (with this the unit can translate). The other
> registers are for the PCIe header descriptor.
> The translation process is documented in TRM 17.5.5.1.1
> The core will translate all read-write accesses to the windows that fall
> in the 64MB space @ 0xF800'0000 and generate the PCIe addresses
> and headers according to the values in the registers in the ATR
> Configuration Register Address Map (@ 0xFDC0'0000).
> 
> Translation does indeed take place and works
> but requires the changes in [PATCH v2 6/9] ("PCI: rockchip:
> Fix window mapping and address translation for endpoint")
> because it was broken from the start...
> 
> The two writes that were removed are to unused (read-only) registers.
> The writes don't do anything, manually writing and reading back these
> addresses will always lead to 0 (they are read-only). So they are removed.

OK. Tested again and it is working-ish...

./pcitest.sh
## Loading pci_endpoint_test
## BAR tests
BAR0:		OKAY
BAR1:		OKAY
BAR2:		OKAY
BAR3:		OKAY
BAR4:		OKAY
BAR5:		OKAY

## Legacy interrupt tests
SET IRQ TYPE TO LEGACY:		OKAY
LEGACY IRQ:	OKAY

## MSI interrupt tests
SET IRQ TYPE TO MSI:		OKAY
MSI1:		OKAY
MSI2:		OKAY
MSI3:		OKAY
MSI4:		OKAY
MSI5:		OKAY
MSI6:		OKAY
MSI7:		OKAY
MSI8:		OKAY
MSI9:		OKAY
MSI10:		OKAY
MSI11:		OKAY
MSI12:		OKAY
MSI13:		OKAY
MSI14:		OKAY
MSI15:		OKAY
MSI16:		OKAY

## Read Tests (DMA)
READ (      1 bytes):		OKAY
READ (   1024 bytes):		OKAY
READ (   1025 bytes):		OKAY
READ (   4096 bytes):		OKAY
READ ( 131072 bytes):		OKAY
READ (1024000 bytes):		OKAY
READ (1024001 bytes):		OKAY
READ (1048576 bytes):		OKAY

## Write Tests (DMA)
WRITE (      1 bytes):		OKAY
WRITE (   1024 bytes):		OKAY
WRITE (   1025 bytes):		OKAY
WRITE (   4096 bytes):		OKAY
WRITE ( 131072 bytes):		OKAY
WRITE (1024000 bytes):		OKAY

Then stops here doing the 1024001 B case. The host waits for a completion that
does not come. On the EP side, I see:

[   94.307215] pci_epf_test pci_epf_test.0: READ src addr 0xffd00000, 1024001 B
[   94.307960] pci_epc fd000000.pcie-ep: Map region 1 phys addr 0xfa100000 to
pci addr 0xffd00000, 1024001 B
[   94.308924] rockchip-pcie-ep fd000000.pcie-ep: Set atu: region 1, cpu addr
0xfa100000, pci addr 0xffd00000, 1024001 B
[  132.309645] dma-pl330 ff6e0000.dma-controller: Reset Channel-2
CS-20000e FTC-40000

                                                  ^^^^^^^^^^^^^^^
The DMA engine does not like something at all. Back to where I was when I tried
your series initially, which is why I tried removing patch 1 to see what happens...

[  132.370479] pci_epf_test pci_epf_test.0: READ => Size: 1024001 B, DMA: YES,
Time: 38.059623935 s, Rate: 26 KB/s
[  132.372152] pci_epc fd000000.pcie-ep: Unmap region 1
[  132.372780] pci_epf_test pci_epf_test.0: RAISE MSI IRQ 1
[  132.373312] rockchip-pcie-ep fd000000.pcie-ep: Send MSI IRQ 1
[  132.373844] rockchip-pcie-ep fd000000.pcie-ep: MSI disabled
[  132.374388] pci_epf_test pci_epf_test.0: Raise IRQ failed -22

And it looks like the PCI core crashed or something because MSI does not work
anymore as well (note that this is wheat I see with my nvme epf driver too, but
I do not have that DMA channel reset message...)

If I run the tests without DMA (mmio only), everything seems fine:

## Read Tests (No DMA)
READ (      1 bytes):		OKAY
READ (   1024 bytes):		OKAY
READ (   1025 bytes):		OKAY
READ (1024000 bytes):		OKAY
READ (1024001 bytes):		OKAY

## Write Tests (No DMA)
WRITE (      1 bytes):		OKAY
WRITE (   1024 bytes):		OKAY
WRITE (   1025 bytes):		OKAY
WRITE (1024000 bytes):		OKAY
WRITE (1024001 bytes):		OKAY

## Copy Tests (No DMA)
COPY (      1 bytes):		OKAY
COPY (   1024 bytes):		OKAY
COPY (   1025 bytes):		OKAY
COPY (1024000 bytes):		OKAY
COPY (1024001 bytes):		OKAY

So it looks like translation is working with your patch, but that the driver is
still missing something for DMA to work correctly...

Will keep digging.

Note that this is all tested with the patch series fixing pci-epf-test and
pci_endpoint_test drivers that I posted earlier today. As mentioned, my host is
an AMD Ryzen PC.

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
