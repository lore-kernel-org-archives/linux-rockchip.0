Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A936D3B7EA
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Dec 2025 05:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiVWKsjnsUPjXtLvQfJSMrkLOuJpASZoV/sJfFos9XA=; b=SoiRqKhICiUO5J
	ZSQ2BO5tJ6p5ZeegMsRuJNxjdgubwDIoy0W9ZA5bIWJgKKXxSMZKZZA+Tm1WrMVJMGoIbJKjaL9II
	7TzOziVdDeV7AEf6bMtLSU+h4Y+o6SxvGwCGepPtaSJ4YEncdr/XbQ9qZypKUqQxipQbsyHLJ/mvs
	gna9YoPZAegGZYKwH1MQ9vuIsnXd03E8tcEKWK8fKjsdbHlB8npUdd4bJ1johBKjAbpo/Akjo4VDV
	2otQKPYGA1j73zUYktmnuy/KZKDLXZjxqCFDS4IG4lCpLiqVBE+1WLmzfHz3OrYbUgpO3OzHBxQWS
	/JLvokqAsX/uEssR3mbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSq27-0000000Dphs-04iC;
	Tue, 09 Dec 2025 05:13:07 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSq24-0000000DphD-1RS0;
	Tue, 09 Dec 2025 05:13:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B3D5C41A72;
	Tue,  9 Dec 2025 05:13:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6F5DC4CEF5;
	Tue,  9 Dec 2025 05:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765257183;
	bh=0UpfkC2c4D2AjDkEHDoWovoe4wrrk4/oR22Da28ye+c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sazKFdSWa0wMtDxy+VTYLX992oV+EjaZ4V9qMKEdH/u2iWcnXKlaN3QOSLdC3rTXS
	 V7i/ydbAZEOzKSABfnWoTg3t5CAD17TT79+d+YZt3Y48MEWjg9BXyRHGyEZ7aPm08f
	 jS3CnhgQVfhoNBApnFvzWyIAyetvMFf1xi967Bhocjm8A9EgdcJyUDij7x8/EbN1LG
	 DjBx+gElwCa29Z1FOOUKV1r/Qi83i3DOZY7wDSFg8CXDc7+VcMvyYPt/gPgfVSYTam
	 ja22DJiLlZ9b+6oRfO0VGbQndTjI4i3+zW6dNr689TKzCpPL1/F/B53fmjVteea7AA
	 Wc7tfA5ejyUZw==
Date: Tue, 9 Dec 2025 14:12:59 +0900
From: Niklas Cassel <cassel@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dwc: Make Link Up IRQ logic handle already
 powered on PCIe switches
Message-ID: <aTev28wihes6iJqs@dhcp-10-89-81-223>
References: <20251201063634.4115762-2-cassel@kernel.org>
 <f1059d5d-3fa5-423a-8093-0e99b65d5f4c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f1059d5d-3fa5-423a-8093-0e99b65d5f4c@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_211304_424714_528B5153 
X-CRM114-Status: GOOD (  11.93  )
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

Hello Krishna,

Currently:
For controllers with Link Up IRQ support, the pci_host_probe() call (which
will perform PCI Configuration Space reads) is done without any of the
delays mandated by the PCIe specification.

This seems quite bad.

A device might not be fully initialized during during the time of these
PCI Configuration Space reads, but might still return some bogus values
that are actually different from the Configuration Space reads if done
after respecting the delays mandated by the PCIe specification.

I think the options are:
1) Keep the pci_host_probe() call in dw_pcie_host_init() for controllers
   with Link Up IRQ support, but make sure that we respect the delays also
   in this case.
or
2) Remove the pci_host_probe() call from dw_pcie_host_init(), and make sure
   that pci_host_probe() is done by the first Link Up IRQ
   (i.e. what this patch does).


One big thing with using the Link Up IRQ is to not do any delay during PCIe
controller driver's probe(), which reduces startup time, exactly as your
commit message in commit 36971d6c5a9a ("PCI: qcom: Don't wait for link if
we can detect Link Up") explains.
Therefore, I don't think that 1) is a good solution, so that leaves us with
2).


If pwrctrl drivers are created as part of the pci_host_probe() call,
I think that perhaps an alternative would be to create an explict
pwrctrl_init() function, and let the PCI controller drivers that actually
use pwrctrl call that from their probe().
(And just remove the same from pci_host_probe() ?)

In fact, looking at your suggested patches (that hasn't landed yet):
[PATCH 3/5] PCI/pwrctrl: Add APIs for explicitly creating and destroying pwrctrl devices
[PATCH 5/5] PCI/pwrctrl: Switch to the new pwrctrl APIs

https://lore.kernel.org/linux-pci/20251124-pci-pwrctrl-rework-v1-5-78a72627683d@oss.qualcomm.com/
https://lore.kernel.org/linux-pci/20251124-pci-pwrctrl-rework-v1-3-78a72627683d@oss.qualcomm.com/

Seem to do exactly that:
Call pci_pwrctrl_create_devices() explicitly from the PCIe controller drivers
directly, and removes the pci_pwrctrl_create_device() call from pci_host_probe().

So I don't really understand your concern with this series, at least not if
it goes on top of your series:
https://lore.kernel.org/linux-pci/20251124-pci-pwrctrl-rework-v1-0-78a72627683d@oss.qualcomm.com/


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
