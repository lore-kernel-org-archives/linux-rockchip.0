Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 590A8C77B62
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i8l3QbojH7fwNjsk/sxoxF/o+5Qm1LUC9IUuYVwf4Ak=; b=cK5tfdEhkwSTra
	aNEK+VClGGqcuXvetN98N80jE6UMzpdFu4yt0xdciKceu15sqtJ9ENLhM06ViCdtsEx9ey4gWm5Bn
	n/L4RFcBE6cxpzbcdnPhMeFH8IbFwsh9gDudwBJ5GrxUwlIAXGJ3FvqQtQMZAn6UJ+Cu05BPp2N0j
	ttbP/eVLGOkd8R+gXbUY2Co/UO/WxFSMh8Xr4NYHFxE2XdnQx4i/uUWSBNlDq+WgsbfZJw0gJPYJp
	t88/0vuv/l0pYSPib9OkX8pu+QncgypAPslbcZ6rRQxszmw0U0j+Syh527PrAAyGp65nzWH3tjw9o
	OaLOr6merRZFxPxULmRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbyW-000T5y-0u;
	Tue, 04 Apr 2023 08:25:08 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbyN-000SyN-21;
	Tue, 04 Apr 2023 08:25:01 +0000
Received: by mail-ed1-x52d.google.com with SMTP id w9so127283406edc.3;
        Tue, 04 Apr 2023 01:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680596697;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eeF5srxwQ9C1v5x4N6bKKxWAi3ytrmFz4z71pbR1EOE=;
        b=ZtHhnbQMeXidZo6kE/lUCuv9d/uQGFZouIpDLaZlFIBWgY/9SIrQ99sPzz08eettHb
         r64unsxj9tbUZtjUU6srrbxelM1ddnf3PTk1Gg/HwrMOaEbRxfIxgAeAakD8epwpPBAi
         6m7jdvyXqQNbkEHJ9OX3F9ZSLNksnfot9rQEUjequXpe2bb/b8DGyefOiKPy1TQUcG+4
         c9aIVST6/G5FWPgGTbUt/MTViCXYpYr3TRXIpmxGy2BCVVLt/mfgZyM57snKop/ShL7w
         vZlhGgyg4potdRVv3NwJ9WOxotPWqSwrkiyJ+6YXX8/aQ+Yed+k8RfvO09ncNmLgxfbB
         Y1dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596697;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eeF5srxwQ9C1v5x4N6bKKxWAi3ytrmFz4z71pbR1EOE=;
        b=COxkO/fafLzuZux/CQpbpK+d4oDWAANE8wSxBcz+2I4rZ/lIEkpron52/3F9cjI02F
         HVgL7CbUNmmmvBciOd9nMLil1DpALs+Zmn1IK6m99n9kAnP5ow1M7mGhoc+YHadWxfPK
         WNm5eAam3TGY8Xsx2FV40ccCo19PDr64NJ98tJ3h83wMmPLPwlH3Iz/L0BDiTcMhC/nK
         6JCVcAfz69HAK8iMxWoI4/14uDAiXVt7KEdooJTRROzoupiKDnOS31/3K8ecYrYlQdEE
         N89VhxR0ZlgEqF7g/xH4WkjVn7Oxbv51ikvqxHMTUuZNfJnSHkItJsvkqnSufF5dFSv5
         D/1w==
X-Gm-Message-State: AAQBX9f/BC5DFk29Pm/c8RuzxopzDcnx5c8YtMeFm0cVmE21rNMOd0kv
	YFNPk2xWBenDtUdOnnj5nZU=
X-Google-Smtp-Source: AKy350ZNwrc31zeES3BI4SFU7aL+7qPowkf6V8euAnhpYKHYurSNqbTIqM2DkRf/9wEygPA0H2MMdQ==
X-Received: by 2002:a17:906:9f14:b0:939:c411:f784 with SMTP id fy20-20020a1709069f1400b00939c411f784mr1669081ejc.56.1680596697448;
        Tue, 04 Apr 2023 01:24:57 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id s5-20020a170906454500b008e54ac90de1sm5640652ejq.74.2023.04.04.01.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:24:56 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: damien.lemoal@opensource.wdc.com,
	xxm@rock-chips.com,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Caleb Connolly <kc@postmarketos.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Lin Huang <hl@rock-chips.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 00/11] PCI: rockchip: Fix RK3399 PCIe endpoint controller driver
Date: Tue,  4 Apr 2023 10:24:13 +0200
Message-Id: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_012459_737307_68013333 
X-CRM114-Status: GOOD (  36.99  )
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
endpoint. This is v3 of the patch series and addresses the concerns that
were raised during the review of the V2.

Thank you in advance for reviewing these changes and hopefully
getting this merged. Having a functional PCIe endpoint controller
driver for the RK3399 would allow to develop further PCIe endpoint
functions through the Linux PCIe endpoint framework using this SoC.

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
* Remove writes to unused registers in the PCIe core register space.
  The registers that were written to is marked "unused" and read
  only in the technical reference manual of the RK3399 SoC.
* Write PCI Device ID (DID) to correct register, the DID was written to
  a read only register and therefore would not update the DID.
* Assert PCI Configuration Enable bit after probe so that it would stop
  sending Configuration Request Retry Status (CRS) messages to the
  host once configured, without this the host would retry until
  timeout and cancel the PCI configuration.
* Add poll and timeout to wait for PHY PLLs to be locked, this
  is the only patch that also applies to the root complex function
  of the PCIe core controller, without this the kernel would
  sometimes access registers in the PHY PLL clock domain when the PLLs
  were not yet locked and the system would hang. This was hackily solved
  in other non mainline patches (e.g., in armbian) with a "msleep()"
  that was added after PHY PLL configuration but without realizing
  why it was needed. A poll with timeout seems like a sane approach.
* Add dtsi entry for RK3399 PCIe endpoint core. The new entry is
  in "disabled" status by default, so unless it is explicitly enabled
  it will not conflict with the PCIe root complex controller entry.
  Developers that will enable it would know that the root complex function
  then must be disabled, this can be done in the board level DTS.
* Update the RK3399 example in the documentation to a valid one.
* Fix legacy IRQ generation for RK3399 PCIe endpoint core, the legacy IRQs
  were not sent by the device because their generation did not follow the
  instructions in the technical reference manual. They now work.
* Fix window mapping and address translation for endpoint. The window
  mapping and address translation did not follow the technical reference
  manual and a single memory region was used which resulted in conflicting
  address translations for memory allocated in that region. The current
  patch allows to allocate up to 32 memory windows with 1MB pages.
* Use u32 variable to access 32-bit registers, u16 variables were used to
  access and manipulate data of 32-bit registers, this would lead to
  overflows e.g., when left shifting more than 16 bits.
* Don't advertise MSI-X in PCIe capabilities because according to the TRM
  the controller is not capable of generating them.
* Set address alignment for the endpoint mode.

Validation on real hardware:

This patch series has been tested by me with kernels 6.0.19, 6.1.21,
and 5.19 on real hardware, a FriendlyElec NanoPC-T4 RK3399 based single
computer board connected to a host computer through PCIe x1 and x4. The
driver was also tested by Damien Le Moal <damien.lemoal@opensource.wdc.com>
on a Pine Rockpro64 board [1].

[1] https://lore.kernel.org/linux-pci/20230330085357.2653599-1-damien.lemoal@opensource.wdc.com/

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

 .../bindings/pci/rockchip,rk3399-pcie-ep.yaml |   8 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  27 +++
 drivers/pci/controller/pcie-rockchip-ep.c     | 193 ++++++++----------
 drivers/pci/controller/pcie-rockchip.c        |  17 ++
 drivers/pci/controller/pcie-rockchip.h        |  44 ++--
 5 files changed, 162 insertions(+), 127 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
