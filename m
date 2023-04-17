Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50751C77B7F
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 09:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GufOBzyBw8o1RthqEzyvMUV4OG0iCgGtN+NLtjtDw+4=; b=msIXooTZWIcIyr
	6PFP6jtuTL8MXSz3kQ/NdScCCNpPAHszh1exLfMoJJ/nW4M6Ri19pfPXmLHEDvyCdqfxf75uuv8vu
	7/9vfrbj0QfBDNqsWFi3hovRRGjxpBPohrTcr2E8NkaPy/ZZ5sPda6sW0QKh1/CK9EVBQizRL3EJ/
	7v6VMllL6xhCHDIFQ7QZQOwWLjbVgxUOzLfSyc1s1zIDHmbasSXPb6n9vUih+yuCmrnDYpSbZQeKm
	wYGpyh7ovBMP9uIZ9HhMVaRsk4U4o5s2seKIxhexAl854JIYGv+oFjEzBv1jsG+hI6p4en3fX7E0x
	oOtpaUQQfPEsId19bNcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poL8Y-00FX5m-2H;
	Mon, 17 Apr 2023 09:27:02 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poL8W-00FX3q-0Z;
	Mon, 17 Apr 2023 09:27:02 +0000
Received: by mail-ej1-x634.google.com with SMTP id a5so5822565ejb.6;
        Mon, 17 Apr 2023 02:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681723616; x=1684315616;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GgCw//wDvbx+WHQXCgHXP4sMRKkYPpVNMBWp099ZGTU=;
        b=Fk2TvID3SiqSNHiNj3rAw8c+6vScwEOKKS6hLG0XrAjLUw30gELaiBLS/hky9Xoolq
         J1YHC1O4NT7jfgDJeudcAerVtKIeBfxddVna5R7msA9ccdrzkRkbs2lU4x83+7GGC1Vi
         34myUzsYMvH/4Szqze0wvQpZ//cQhtOxzQnSewBTQ2trF8AoVhcCERAdo8cUBB9D8AY6
         B24jm+UtxrTgpal3auMW9aIgfGKMt7Go7PEsfyEITwj5U0rcHKcsubKdXFVoJiPP5UVH
         Em2digoSzbU/LJoNw2ewbgArYvmjWwjaQAvNS1hsw3w0Yy09lGnrwVntZ6FRncjeBoXE
         0JoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681723616; x=1684315616;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GgCw//wDvbx+WHQXCgHXP4sMRKkYPpVNMBWp099ZGTU=;
        b=h+nvXCXS/znPTMP0DDDGNPFarQjzG/N+bSE6mT+7foMQT2MvMZXwNLDaoKqD1qM8VB
         nxA3Sl68eOA9uWtH+7Y58NZLkmthZd8PpmMxg6BS8vP36OPL/oIiFJ/fuS+AAsX6AgeV
         5pRuWzVcqbFmkuQ8QwsSftC2UVwTyh440jFyD8QEYj0ekVARN9nyDGe+0Eqh9IaQMfwb
         Pbt+/mkey+/1m/u7nDC7SpY2H6HXj6xx9FD3fpaNJp3A4C4h2AqNGgB+nnkDm5C56eh/
         b4ALPkw2g7LaFCkHx4fmmvSQ4WSfZ2LvAmQvEFQp8XB8M9oTasFLmzFwjDJAXX0FHGoH
         YjQQ==
X-Gm-Message-State: AAQBX9dcwltGJRLdNvkr9NGYXA4QPE8Jvr+ytgUaMKS5hcMwj7jyluc3
	602AbUAmIMVohAL6d/t3+3o=
X-Google-Smtp-Source: AKy350YyFT2cN//d4D4ogxeZPO6UNqiV6weD/ibu/NLaa4eyxCr4cfcSPdLCsVXGI0y/nRjcBasRew==
X-Received: by 2002:a17:906:c210:b0:94f:956:b3f7 with SMTP id d16-20020a170906c21000b0094f0956b3f7mr5725161ejz.2.1681723615728;
        Mon, 17 Apr 2023 02:26:55 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id p20-20020a170906615400b0094aa087578csm6398596ejl.171.2023.04.17.02.26.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 02:26:55 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Brian Norris <briannorris@chromium.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 00/11] PCI: rockchip: Fix RK3399 PCIe endpoint controller driver
Date: Mon, 17 Apr 2023 11:26:18 +0200
Message-Id: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_022700_213961_028FE4B2 
X-CRM114-Status: GOOD (  39.14  )
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

This is a series of patches that fixes the PCIe endpoint controller driver
for the Rockchip RK3399 SoC. The driver was introduced in commit
cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
The original driver had issues and would not allow for the RK3399 to
operate in PCIe endpoint mode correctly. This patch series fixes that so
that the PCIe core controller of the RK3399 SoC can now act as a PCIe
endpoint. This is v4 of the patch series and addresses the comments received
during the review of the v3 [1]. The changes to the v3 are minor and none of
them change the logic of the driver.

Thank you in advance for reviewing this patch series and hopefully
getting this merged. Having a functional PCIe endpoint controller
driver for the RK3399 would allow to develop further PCIe endpoint
functions through the Linux PCIe endpoint framework using this SoC.

[1] https://lore.kernel.org/linux-pci/20230404082426.3880812-1-rick.wertenbroek@gmail.com/

Summary of changes to V3 :

* Set the fields in the standard order in the dtsi and removed unnecessary
  change in associated documentation, thanks to Krzysztof for pointing this out.
* Added comment to explain how MSI-X capabilities advertisement was removed.
* Changed Damien Le Moal <damien.lemoal@opensource.wdc.com> address to his
  kernel.org address Damien Le Moal <dlemoal@kernel.org> in tags.
* [minor] Simplified code where a power of 2 was applied followed by a ilog2
  operation.
* [minor] Small code changes, replaced constant variable by macro, split
  remaining long lines.

Summary of changes to V2 :

* Fix issue with memory mapping from PCIe space to physical space
  There was a small mistake with the number of bits passed from the AXI
  physical address to the PCIe space address.
* Disable the advertisement of MSI-X capabilities by the endpoint
  According to the technical reference manual the controller cannot
  generate MSI-X, so the controller should not advertise this capability.
* Add the alignment value to the endpoint attributes.
* [minor] Clean code (line length, variable names, small refactorings).
  As pointed out by reviews on the V2.
* [minor] Fix error in variable name.
* [minor] Remove a patch that introduced unnecessary late parameter checks.

General problem statement and overview of the patch series :

Problem: The Rockchip RK3399 PCIe endpoint controller driver introduced in
commit cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe
controller") did not work.

Summary of problems with the driver :

* Missing dtsi entry
* Could not update Device ID (DID)
* The endpoint could not be configured by a host computer because the
  endpoint kept sending Configuration Request Retry Status (CRS) messages
* The kernel would sometimes hang on probe due to access to registers in
  a clock domain of which the PLLs were not locked
* The memory window mapping and address translation mechanism had
  conflicting mappings and did not follow the technical reference manual
  as to how the address translation should be done
* Legacy IRQs were not generated by the endpoint
* Message Signaled interrupts (MSI) were not generated by the endpoint
* MSI-X capabilities were advertised but the controller cannot generate
  them according to the technical reference manual

The problems have been addressed and validated through tests (see below).

Summary of patches :

This patch series is composed of 11 patches that do the following :
1) Remove writes to unused registers in the PCIe core register space.
   The registers that were written to is marked "unused" and read
   only in the technical reference manual of the RK3399 SoC.
2) Write PCI Device ID (DID) to correct register, the DID was written to
   a read only register and therefore would not update the DID.
3) Assert PCI Configuration Enable bit after probe so that it would stop
   sending Configuration Request Retry Status (CRS) messages to the
   host once configured, without this the host would retry until
   timeout and cancel the PCI configuration.
4) Add poll and timeout to wait for PHY PLLs to be locked, this
   is the only patch that also applies to the root complex function
   of the PCIe core controller, without this the kernel would
   sometimes access registers in the PHY PLL clock domain when the PLLs
   were not yet locked and the system would hang. This was hackily solved
   in other non mainline patches (e.g., in armbian) with a "msleep()"
   that was added after PHY PLL configuration but without realizing
   why it was needed. A poll with timeout seems like a sane approach.
5) Add dtsi entry for RK3399 PCIe endpoint core. The new entry is
   in "disabled" status by default, so unless it is explicitly enabled
   it will not conflict with the PCIe root complex controller entry.
   Developers that will enable it would know that the root complex function
   then must be disabled, this can be done in the board level DTS.
6) Update the RK3399 example in the documentation to a valid one.
7) Fix legacy IRQ generation for RK3399 PCIe endpoint core, the legacy IRQs
   were not sent by the device because their generation did not follow the
   instructions in the technical reference manual. They now work.
8) Fix window mapping and address translation for endpoint. The window
   mapping and address translation did not follow the technical reference
   manual and a single memory region was used which resulted in conflicting
   address translations for memory allocated in that region. The current
   patch allows to allocate up to 32 memory windows with 1MB pages.
9) Use u32 variable to access 32-bit registers, u16 variables were used to
   access and manipulate data of 32-bit registers, this would lead to
   overflows e.g., when left shifting more than 16 bits.
10) Don't advertise MSI-X in PCIe capabilities because according to the TRM
    the controller is not capable of generating them.
11) Set address alignment for the endpoint mode.

Validation on real hardware:

This patch series has been tested by me with kernels 6.0.19, 6.1.21-24,
and 5.19 on real hardware, a FriendlyElec NanoPC-T4 RK3399 based single
computer board connected to a host computer through PCIe x1 and x4. The
driver was also tested by Damien Le Moal <damien.lemoal@opensource.wdc.com>
on a Pine Rockpro64 board [2,3].

[2] https://lore.kernel.org/linux-pci/20230330085357.2653599-1-damien.lemoal@opensource.wdc.com/
[3] https://lore.kernel.org/linux-pci/29a5ccc3-d2c8-b844-a333-28bc20657942@fastmail.com/

The PCIe endpoint test function driver was loaded on the SoC and the PCIe
endpoint test driver was loaded on the host computer. The following tests were
executed through this setup :

* enumeration of the PCIe endpoint device (lspci)
  lspci -vvv
* validation of PCI header and capabilities
  setpci and lspci -xxxx
* device was recognized by host computer dans PCIe endpoint test driver
  was loaded
  lspci -v states "Kernel modules: pci_endpoint_test"
* tested the BARs 0-5
  sudo /usr/bin/pcitest -b 0
  ...
  sudo /usr/bin/pcitest -b 5
* tested legacy interrupt through the test driver
  sudo /usr/bin/pcitest -i 0
  sudo /usr/bin/pcitest -l
* tested MSI interrupt through the test driver
  sudo /usr/bin/pcitest -i 1
  sudo /usr/bin/pcitest -m 1
* tested read/write to and from host through the test driver with checksum
  sudo /usr/bin/pcitest -r -s 1024
  sudo /usr/bin/pcitest -w -s 1024
* tested read/write with DMA enabled (all read/write tests also did IRQ)
  sudo /usr/bin/pcitest -r -d -s 8192
  sudo /usr/bin/pcitest -w -d -s 8192
* tested larged transfers e.g., 100kB with and without DMA

Commands used on the SoC to launch the endpoint function (configfs) :

modprobe -i pci-epf-test
mkdir -p /sys/kernel/config/pci_ep/functions/pci_epf_test/pci_epf_test.0
echo 0xb500 > /sys/kernel/config/pci_ep/functions/pci_epf_test/pci_epf_test.0/deviceid
echo 0x104c > /sys/kernel/config/pci_ep/functions/pci_epf_test/pci_epf_test.0/vendorid
echo 16 > /sys/kernel/config/pci_ep/functions/pci_epf_test/pci_epf_test.0/msi_interrupts 
ln -s /sys/kernel/config/pci_ep/functions/pci_epf_test/pci_epf_test.0 \
/sys/kernel/config/pci_ep/controllers/fd000000.pcie-ep/
echo 1 > /sys/kernel/config/pci_ep/controllers/fd000000.pcie-ep/start

Note: to enable the endpoint controller on the board the file :
arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
Was edited to set the status of &pcie0 to "disabled" and &pcie0_ep
to "okay". This is not submitted as a patch because most users
will use the PCIe core controller in host (root complex) mode
rather than endpoint mode.

I have tested and confirmed all functionality required for the
endpoint with the test driver and tools. With the initial driver commit
cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
the device would not even be enumerated by the host computer (mainly because
of CRS messages being sent back to the root complex) and tests would not pass
(driver would not even be loaded because DID was not set correctly)
and then only the BAR test would pass. Now all tests pass as stated above.

Best regards
Rick

Damien Le Moal (1):
  PCI: rockchip: Set address alignment for endpoint mode

Rick Wertenbroek (10):
  PCI: rockchip: Remove writes to unused registers
  PCI: rockchip: Write PCI Device ID to correct register
  PCI: rockchip: Assert PCI Configuration Enable bit after probe
  PCI: rockchip: Add poll and timeout to wait for PHY PLLs to be locked
  arm64: dts: rockchip: Add dtsi entry for RK3399 PCIe endpoint core
  dt-bindings: PCI: Update the RK3399 example to a valid one
  PCI: rockchip: Fix legacy IRQ generation for RK3399 PCIe endpoint core
  PCI: rockchip: Fix window mapping and address translation for endpoint
  PCI: rockchip: Use u32 variable to access 32-bit registers
  PCI: rockchip: Don't advertise MSI-X in PCIe capabilities

 .../bindings/pci/rockchip,rk3399-pcie-ep.yaml |   4 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  27 +++
 drivers/pci/controller/pcie-rockchip-ep.c     | 221 ++++++++----------
 drivers/pci/controller/pcie-rockchip.c        |  17 ++
 drivers/pci/controller/pcie-rockchip.h        |  49 ++--
 5 files changed, 181 insertions(+), 137 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
