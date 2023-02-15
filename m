Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB775C05027
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 01:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qj+8vJ3ZzBj21p0h+LnSlTy89cYGaQxmjqI5Xs+VorM=; b=4PFwQSbYAbJZe0
	65LvDS8TLctTXrbgGTsCmwPz2ywNsIzXEIgMM4uRWxuAPlprIdRV7JPEWdOlBxiQtrMe8tufgKUqQ
	BL3XUdQ6p91x7ET4AySAsDHYrmcjtdrrDYwuKHH2M5nuwtAu12TxJFfZLCCFaOsxK3riojjGOQqy6
	CMWu7x1FR4kNmQc0dpIymGbMkGEiPugMWxzcec+6Cds/wtitfG6yJysxPnVDoAzjzZzl5Rt+4sP2G
	nvuovWLKNOtzaOFw7rbopRMxD2yF3+pnyvRBjKzj9p4ImKzr2oenyvFLqnhqdmtli61di69my30Hs
	8d3aPoni68/3YD9rSEcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS6xH-004JwI-FZ; Wed, 15 Feb 2023 01:51:31 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS6x7-004JtE-Oj
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 01:51:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676425881; x=1707961881;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=pY73svOgwdqd6BSUYdpIutEqwh8IMouiKs97EFOaRtU=;
  b=KZrSp6erSA3ZXjJeO7R5taZMf3n4g8mwTmct6ebSP7wWcJaGe3X8Y7vN
   AcUEDNR25CrLSUwjlUir52dSUqvbKYgnCSNFUBzkmDNcUPJiKfkx1eC6O
   eHcES9SZUYxUdrNiQDz6JjslJuSp65q0WjjmtDVkR0Tlmss9ivgfWGiVI
   kkEcbBIPdGEJj8WGmot3JLdDcIdSrLoMSmqvRA4AFizAKNi3TGzSXYdOD
   IecixfIPrl107Sxk7JBJ3EBg3yG21gTamO6Ek/vgfvLPKc9pTK2bO6mOu
   yh2FGYeALtKk/TJkchorUgW8/CacgSVuSMdF3YHNqhMPpXVPC0jHkUJZP
   w==;
X-IronPort-AV: E=Sophos;i="5.97,298,1669046400"; 
   d="scan'208";a="221623825"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 09:51:16 +0800
IronPort-SDR: 4L8UiuxsVMCimI92/L4Hf91Y/JqH9gyA4y0E+0rkCnULTZSSCMndc9r/M7UbEyp56eKV6qKcIG
 yHXKqkfPka56GVpjSyuG6HRhaCmwteA8ooRKwIkW+cUXyV/vyFBIYJpbVHzLjbcvKbpiu/K8Es
 t0wLHxCCB4SDoUuN2CeJ5ouD8oUc3bdsvcp+8ESDU84WZsdlwu3qEz/hrvyCyX/i7VALDsHtwV
 kr5/HJEJXtaiXHtJQ6QIcdYFni9cc99EwaKNItQKvqOey/B9DoqZ6qbzPNzOEyCJcTfh3w5hdB
 KRQ=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 17:08:23 -0800
IronPort-SDR: XFrzT/lTABM0Am7RupgjZjblSxXN+fTEQfRHx8mOA05ZfU6W2WU9Btd2qScFJrotSMLeRmJnHd
 qrfJsptcd6W+4+Ey1KPY+3mLkSevzN1363xiHu+fCIRx0JqWADYeKmnOKRfncGrhTIfSniG/Wz
 yZbEhBidcz0ny1jci2SQh4oDupCnPz67Lt4wiQT1aw5k+VPk+FPbpx3Q8OZefB1xsi4t4ucdvy
 TNiSTbYnE/JpbzmOnJIJdtbor2b61oBeFlDcptOYwoycKPZzteHs56FMvtu8fTM0KQtZyOTFg6
 pGg=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 17:51:17 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGgz76L5qz1Rwtl
	for <linux-rockchip@lists.infradead.org>; Tue, 14 Feb 2023 17:51:15 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1676425872; x=1679017873; bh=pY73svOgwdqd6BSUYdpIutEqwh8IMouiKs9
	7EFOaRtU=; b=fyOCQWDcyHlBOIbK5ysMm6noA8GFEVee8rIBYtpP645ZvUq2WUK
	MIWuJ4Jp/o9n6yxWJulWoVmxAQTey45NL56acctMouqvmTabq+w8a9FF1Tu9h3uF
	53UJlw9ti+KUvbutkgkr6kqQy+YpanfesZxIo/4C6lawhupHZ0wQqokRbvbQTwrG
	85eT4K43J2Z3XozyGPg/1lufNDH4+cKpM2sJgMXuVmODYSAqvEzCa3vuCgbxV09J
	hSHgiDXKPdvfruIUQkLVsBNvfIO59R0bH/5rgA2S7dngwp4SsnYB/bLG4CxMZavr
	jKmwpzpL5zCdonGiardsQvMnjuuAmpH3rLw==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id FvWgz6KqMHJ8 for <linux-rockchip@lists.infradead.org>;
	Tue, 14 Feb 2023 17:51:12 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGgz11G1Vz1RvLy;
	Tue, 14 Feb 2023 17:51:09 -0800 (PST)
Message-ID: <7b8a8d38-feef-d2af-f23f-6b2b46f78110@opensource.wdc.com>
Date: Wed, 15 Feb 2023 10:51:08 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 0/9] PCI: rockchip: Fix RK3399 PCIe endpoint controller
 driver
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, rick.wertenbroek@heig-vd.ch,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_175121_886311_269C0A0A 
X-CRM114-Status: GOOD (  59.31  )
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

On 2/14/23 23:08, Rick Wertenbroek wrote:
> This is a series of patches that fixes the PCIe endpoint controller driver
> for the Rockchip RK3399 SoC. The driver was introduced in
> cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> The original driver had issues and would not allow for the RK3399 to
> operate in PCIe endpoint mode correctly. This patch series fixes that so
> that the PCIe core controller of the RK3399 SoC can now act as a PCIe
> endpoint. This is v2 of the patch series and addresses the concerns that
> were raised during the review of the first version.
> 
> Thank you in advance for reviewing these changes and hopefully
> getting this merged. Having a functional PCIe endpoint controller
> driver for the RK3399 would allow to develop further PCIe endpoint
> functions through the Linux PCIe endpoint framework using this SoC.
> 
> Problem: The Rockchip RK3399 PCIe endpoint controller driver introduced in
> cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> did not work.
> 
> Summary of problems with the driver :
> 
> * Missing dtsi entry
> * Could not update Device ID (DID)
> * The endpoint could not be configured by a host computer because the
>   endpoint kept sending Configuration Request Retry Status (CRS) messages
> * The kernel would sometimes hang on probe due to access to registers in
>   a clock domain of which the PLLs were not locked
> * The memory window mapping and address translation mechanism had
>   conflicting mappings and did not follow the technical reference manual
>   as to how the address translation should be done
> * Legacy IRQs were not generated by the endpoint
> * Message Signaled interrupts (MSI) were not generated by the endpoint
> 
> The problems have been addressed and validated through tests (see below).
> 
> Summary of changes :
> 
> This patch series is composed of 9 patches that do the following :
> * Remove writes to unused registers in the PCIe core register space.
>   The registers that were written to is marked "unused" and read
>   only in the technical reference manual of the RK3399 SoC.
> * Write PCI Device ID (DID) to correct register, the DID was written to
>   a read only register and therefore would not update the DID.
> * Assert PCI Configuration Enable bit after probe so that it would stop
>   sending Configuration Request Retry Status (CRS) messages to the
>   host once configured, without this the host would retry until
>   timeout and cancel the PCI configuration.
> * Add poll and timeout to wait for PHY PLLs to be locked, this
>   is the only patch that also applies to the root complex function
>   of the PCIe core controller, without this the kernel would
>   sometimes access registers in the PHY PLL clock domain when the PLLs
>   were not yet locked and the system would hang. This was hackily solved
>   in other non mainline patches (e.g., in armbian) with a "msleep()"
>   that was added after PHY PLL configuration but without realizing
>   why it was needed. A poll with timeout seems like a sane approach.
> * Add dtsi entry for RK3399 PCIe endpoint core. The new entry is
>   in "disabled" status by default, so unless it is explicitly enabled
>   it will not conflict with the PCIe root complex controller entry.
>   Developers that will enable it would know that the root complex function
>   then must be disabled, this can be done in the board level DTS.
> * Fix window mapping and address translation for endpoint. The window
>   mapping and address translation did not follow the technical reference
>   manual and a single memory region was used which resulted in conflicting
>   address translations for memory allocated in that region. The current
>   patch allows to allocate up to 32 memory windows with 1MB pages.
> * Fix legacy IRQ generation for RK3399 PCIe endpoint core, the legacy IRQs
>   were not sent by the device because their generation did not follow the
>   instructions in the technical reference manual. They now work.
> * Use u32 variable to access 32-bit registers, u16 variables were used to
>   access and manipulate data of 32-bit registers, this would lead to
>   overflows e.g., when left shifting more than 16 bits.
> * Add parameter check for RK3399 PCIe endpoint core set_msi(), return
>   -EINVAL when incompatible parameters are passed.
> 
> Validation on real hardware:
> 
> This patch series has been tested with kernel 6.0.19 (and 5.19)
> on real hardware, a FriendlyElec NanoPC-T4 RK3399 based single computer
> board connected to a host computer through PCIe x1 and x4. The PCIe
> endpoint test function driver was loaded on the SoC and the PCIe endpoint
> test driver was loaded on the host computer. The following tests were
> executed through this setup :
> 
> * enumeration of the PCIe endpoint device (lspci)
>   lspci -vvv
> * validation of PCI header and capabilities
>   setpci and lspci -xxxx
> * device was recognized by host computer dans PCIe endpoint test driver
>   was loaded
>   lspci -v states "Kernel modules: pci_endpoint_test"
> * tested the BARs 0-5
>   sudo /usr/bin/pcitest -b 0
>   ...
>   sudo /usr/bin/pcitest -b 5
> * tested legacy interrupt through the test driver
>   sudo /usr/bin/pcitest -i 0
>   sudo /usr/bin/pcitest -l
> * tested MSI interrupt through the test driver
>   sudo /usr/bin/pcitest -i 1
>   sudo /usr/bin/pcitest -m 1
> * tested read/write to and from host through the test driver with checksum
>   sudo /usr/bin/pcitest -r -s 1024
>   sudo /usr/bin/pcitest -w -s 1024
> * tested read/write with DMA enabled (all read/write tests also did IRQ)
>   sudo /usr/bin/pcitest -r -d -s 8192
>   sudo /usr/bin/pcitest -w -d -s 8192
> 
> Commands used on the SoC to launch the endpoint function (configfs) :
> 
> modprobe -i pci-epf-test
> mkdir -p /sys/kernel/config/pci_ep/functions/pci_epf_test/pci_epf_test.0
> echo 0xb500 > /sys/kernel/config/pci_ep/functions/pci_epf_test/pci_epf_test.0/deviceid
> echo 0x104c > /sys/kernel/config/pci_ep/functions/pci_epf_test/pci_epf_test.0/vendorid
> echo 16 > /sys/kernel/config/pci_ep/functions/pci_epf_test/pci_epf_test.0/msi_interrupts 
> ln -s /sys/kernel/config/pci_ep/functions/pci_epf_test/pci_epf_test.0 \
> /sys/kernel/config/pci_ep/controllers/fd000000.pcie-ep/
> echo 1 > /sys/kernel/config/pci_ep/controllers/fd000000.pcie-ep/start
> 
> Note: to enable the endpoint controller on the board the file :
> arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
> Was edited to set the status of &pcie0 to "disabled" and &pcie0_ep
> to "okay". This is not submitted as a patch because most users
> will use the PCIe core controller in host (root complex) mode
> rather than endpoint mode.
> 
> I have tested and confirmed all basic functionality required for the
> endpoint with the test driver and tools. With the previous state of
> the driver the device would not even be enumerated by the host
> computer (mainly because of CRS messages being sent back to the root
> complex) and tests would not pass (driver would not even be loaded
> because DID was not set correctly) and then only the BAR test would
> pass. Now all tests pass as stated above.

Note about that: with your series applied, nothing was working for me on
my pine Rockpro64 board (AMD Ryzen host). I got weird/unstable behavior
and the host IOMMU screaming about IO page faults due to the endpoint
doing weird pci accesses. Running the host with IOMMU on really helps in
debugging this stuff :)

With the few fixes to your series I commented about, things started to
work better, but still very unstable. More debugging and I found out that
the pci-epf-test drivers, both host and endpoint sides, have nasty
problems that lead to reporting failures when things are actually working,
or outright dummy things being done that trigger errors (e.g. bad DMA
synchronization triggers IOMMU page faults reports). I have a dozen fix
patches for these drivers. Will clean them up and post ASAP.

With the test drivers fixed + the fixes to your series, I have the
pci_test.sh tests passing 100% of the time, repeatedly (in a loop). All solid.

However, I am still seeing issues with my ongoing work with a NVMe
endpoint driver function: I see everything working when the host BIOS
pokes at the NVMe "drive" it sees (all good, that is normal), but once
Linux nvme driver probe kicks in, IRQs are essentially dead: the nvme
driver does not see anything strange and allocates IRQs (1 first, which
ends up being INTX, then multiple MSI one for each completion queue), but
on the endpoint side, attempting to raise MSI or INTX IRQs result in error
as the rockchip-ep driver sees both INTX and MSI as disabled. No clue what
is going on. I suspect that a pci reset may have happened and corrupted
the core configuration. However, the EPC/EPF infrastructure does not
catch/process PCI resets as far as I can tell. That may be the issue.
I do not see this issue with the epf test driver, because I suspect the
host BIOS not knowing anything about that device, it does not touch it.
This all may depend on the host & BIOS. Not sure. Need to try with
different hosts. Just FYI :)


-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
