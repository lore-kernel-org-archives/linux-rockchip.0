Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4493CC54E94
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 13:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Nzfv998t5xO16D0Uv6RAZhONco3t5fTOv/o8wS6sr+c=; b=h+a1W9o6Xt40zL
	08t82uxmpkWRFd+qYbjWlygS590DpOelcI/hfS9/Ej0IuXwz/0pZHni/IE3Mv6AQxLxBTT2nI/Qc/
	+71hk0dJwBWbQJabKVgairFQvcuzODxiFmAa0PghRrIKzjFMzgaKAXtWIAl7bEY0a0NTYjDtPXTc6
	XpBLqT+pZMtFDMjW1QkGvS7l6klonBqIKVI83rck5Xc4YABEBlVRXo6Z8fGx2M2WQzK4p5ZOkF4x+
	aClTZ8NjAVJO1Gb7gskxwy062bK9nRG06exEY0Kfo0+rE1l240Lo6VHaBqB1uzJrgxRAt3SSxW47O
	lgssDJpc6vH3YsyZVN5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2gF-00B2KP-Mr; Thu, 26 Jan 2023 13:52:43 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2g0-00B2DU-Ba; Thu, 26 Jan 2023 13:52:30 +0000
Received: by mail-ed1-x52d.google.com with SMTP id u21so1919904edv.3;
        Thu, 26 Jan 2023 05:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/utpGi9Sj4ZWSR6S5xWYZJs1OXgTpwnJji6XxOBsQHk=;
        b=e1P+20j/6nhVWppBGex+gw+GwZFJt6OcOd7V2PJc0RKeAADWDnRBEWyhBNtEQE6EgQ
         YyAMhXDnYKc3JwOwK3eQxdc/Ms9SdxecN+cJG+QJQk+KE0F49AEbaVUf+nHjCqDhedc4
         VRPSv/cT5ohxhTy0CH6AtLzJTGRXgN3BBvlX622kAKyhZ9YyGt6jhfaeVNvBeXBJBwtM
         iPXcgqq9KzeUfQcvWafFr2YYUX64C9JKMVLIAv7Mnutdp0LmEfcUItG03mE57T1yLJUX
         vXZo82WXoyQ02MLS11uLz+AULhye+hb4Vfw/YrIA/MPVQ5DQyyaczb1c3xwTvvCfImbb
         h4ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/utpGi9Sj4ZWSR6S5xWYZJs1OXgTpwnJji6XxOBsQHk=;
        b=MQUxggGoCdN/eJt5tEXQxOAXA48cJ0mf2jNAFPd+HUPil/63AUg6AOk9p2OUhLMLvU
         lbnVQ+0nb9VL53IAk6sIbyBWYQVHF9Kj+PlK0JhLrMmdIWinr36ABBt0EnmmjwMb+KYE
         Ql1U//jw2C4/WpAd6WkGxQf1KG7czqMNsp45JwTyGq5OEJPUQz+kSrhnPwbu/br/5x6O
         uDpDbhuWrTUGVdpUNHiEjEjxCE8n7CK/b2lFYpvK/H7I1c76EBOO0klKS3xEMlBlx5vQ
         I1Vlfu1w8BNZbO4sPHB5uDXd1zPrrou8r4igmOorTIxvzDjMV0mkKJEm/+uXQUTurJ6y
         9dvA==
X-Gm-Message-State: AFqh2kqraDA6Ey5koooB2vB/AQL4eCgoWFvWpBtRYKZUDMqd7jJfRFZX
	q3E5ta/m8UIuyyMFaSYWxq0=
X-Google-Smtp-Source: AMrXdXtFieJ03Uo5sU104yDj5AjQBhROWXTyTZVJMlAx8ealwxx/EzBpGCQxg79gSkOclJ89dKKxKQ==
X-Received: by 2002:a05:6402:43ce:b0:461:2288:6808 with SMTP id p14-20020a05640243ce00b0046122886808mr39285650edc.21.1674741143906;
        Thu, 26 Jan 2023 05:52:23 -0800 (PST)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id t15-20020a508d4f000000b004a0e2fe619esm591611edt.39.2023.01.26.05.52.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:52:23 -0800 (PST)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	wenrui.li@rock-chips.com,
	rick.wertenbroek@heig-vd.ch,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jani Nikula <jani.nikula@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Mikko Kovanen <mikko.kovanen@aavamobile.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: [PATCH 0/8] PCI: rockchip: Fix PCIe endpoint controller driver
Date: Thu, 26 Jan 2023 14:50:40 +0100
Message-Id: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_055228_422032_5384E13E 
X-CRM114-Status: GOOD (  28.11  )
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
for the Rockchip RK3399 SoC. It is based on Linux kernel 6.0.19

The original driver in mainline had issues and would not allow for the
RK3399 to operate in PCIe endpoint mode. This patch series fixes that so
that the PCIe core controller of the RK3399 SoC can now act as a PCIe
endpoint.

This patch series has been tested on kernel 6.0.19 (and 5.19)
on real hardware, a FriendlyElec NanoPC-T4 RK3399 based single computer
board connected to a host computer through PCIe x1 and x4. The PCIe
endpoint test function driver was loaded on the SoC and the PCIe endpoint
test driver was loaded on the host computer. The following tests were
executed through this setup :

* enumeration of the PCIe endpoint device (lspci)
  lspci -vvv
* validation of PCI header and capabilities
  setpci and lspci -xxxx
* device was recognized by host computer dans PCIe endpoint test driver
  was loaded
  lspci -v states "Kernel modules: pci_endpoint_test"
* tested the BARs 0-5
  sudo /sur/bin/pcitest -b 0
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

Summary of changes :

This patch series is composed of 8 patches that do the following :
* Removed writes to unused registers in the PCIe core register space.
  The registers that were written to is marked "unused" and read
  only in the technical reference manual of the RK3399 SoC.
* Fixed setup to the PCI Device ID (DID), this was written to a read
  only register and therefore would not update the DID.
* Fixed setup of the PCIe endpoint controller so that it would stop
  sending Configuration Request Retry Status (CRS) messages to the
  host once configured, without this the host would retry until
  timeout and cancel the PCI configuration.
* Added a poll with timeout to check the PHY PLL lock status, this
  is the only patch that also applies to the root complex function
  of the PCIe core controller, without this the kernel would
  sometimes access registers in the PHY PLL clock domain when the PLLs
  were not yet locked and the system would hang. This was hackily solved
  in other non mainline patches (e.g., in armbian) with a "msleep()"
  that was added after PHY PLL configuration but without realizing
  why it was needed. A poll with timeout seems like a sane approach.
* Added a dtsi entry for the PCIe endpoint controller. The new entry is
  in "disabled" status by default, so unless it is explicitly enabled
  it will not conflict with the PCIe root complex controller entry.
  Developers that will enable it would know that the root complex function
  then must be disabled, this can be done in the board level DTS.
* Fixed the window translation between CPU space and PCI space.
  Allows up to 32 memory windows, with (1MB) page allocation and mapping.
* Fixed the legacy IRQ (INTx) generation of the PCIe core in
  endpoint mode.
* Fixed the generation of message signalled interrupts (MSI) of the
  PCIe core in endpoint mode.

Thank you in advance for reviewing these changes and hopefully
getting this merged. Having a functional PCIe endpoint controller
driver for the RK3399 would allow to develop further PCIe endpoint
functions through the Linux PCIe endpoint framework using this SoC.

I have tested and confirmed all basic functionality required for the
endpoint with the test driver and tools. With the previous state of
the driver the device would not even be enumerated by the host
computer (mainly because of CRS messages being sent back to the root
complex) and tests would not pass (driver would not even be loaded
because DID was not set correctly) and then only the BAR test would
pass. Now all tests pass as stated above.

Best regards
Rick

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

Rick Wertenbroek (8):
  PCI: rockchip: Removed writes to unused registers
  PCI: rockchip: Fixed setup of Device ID
  PCI: rockchip: Fixed endpoint controller Configuration Request Retry
    Status
  PCI: rockchip: Added poll and timeout to wait for PHY PLLs to be
    locked
  PCI: rockchip: Added dtsi entry for PCIe endpoint controller
  PCI: rockchip: Fixed window mapping and address translation for
    endpoint
  PCI: rockchip: Fixed legacy IRQ generation for endpoint
  PCI: rockchip: Fixed MSI generation from PCIe endpoint core

 arch/arm64/boot/dts/rockchip/rk3399.dtsi  |  25 ++++
 drivers/pci/controller/pcie-rockchip-ep.c | 149 +++++++++++-----------
 drivers/pci/controller/pcie-rockchip.c    |  16 +++
 drivers/pci/controller/pcie-rockchip.h    |  36 ++++--
 4 files changed, 137 insertions(+), 89 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
