Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABDFCC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 01:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=sq9qoc1isKHPIc9xPnQOFMPUVQjknodAagCWBIxnn+U=; b=svl4TYggqcOOVb
	u+GFulf3LDOUIdyNXtkGplrNv3Y0BmC18fAMYqZPoLCoR7zDVPOcZHk2B9g9lfycOtnS8Vi/ai/55
	DoDOBDFH7ynIIb1WtEObnnsCTsIgwq+T/Ba2NhtyDh1tclFGyYkVkG83KfHVpevhS4FVXphAXpj2f
	VyPYJ26uCVFB0FolWzXqb5HC0X56vuIfS6HW+4gV6lq9IBAJiiW9MM6+OjjShwiAGe8joXhXEu54P
	nsWHpa8qZsVkSVmlG3MQqjyjVCoSB+lxxqr+CaOJsfOuV08gwuxR9N/w1AgSE+UTe2fLbFsqlFOjS
	NBTrXEBUF7oZT3p7TEcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ninni-007r3x-4P; Mon, 25 Apr 2022 01:46:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ninnW-007r1i-Fr; Mon, 25 Apr 2022 01:45:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1CF8D6149C;
 Mon, 25 Apr 2022 01:45:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B805EC385A7;
 Mon, 25 Apr 2022 01:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650851152;
 bh=M0wnHoRglVED43aA1R/OrSlNwqdq31WUhlL937Z+qHk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=O/uwSLvl85p5u8qu/yf7dbtAyytHaYmJBd7uTceQp6mPIeS3OVIrWLqEytC88JYAs
 U6/QZo1mACx7hXJbuUDr297qi33ELA/jxUhfQhqBZjI+JitjoWepkmLtssCaqaS8T+
 /5zM55huqbIprps1yyZrHzvJzxBhGUuy3NoZE3FKuRc7KLy5C5We7+b27QTQM5PqUb
 C6svzKrHcDv6mOCsNuTXAN4ibTBXm6hzvlZ39Vs1eaUqoReRKK017oj3LCf5t25pAX
 pbtBcS4Xg/Mzx++02OQW7JQMVoZquPJbqFOMPr+6H7M1fDWjVAKktW9fWShNWsSCLO
 JV0cEMr1XkvrA==
Date: Sun, 24 Apr 2022 20:45:49 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 Peter Geis <pgwipeout@gmail.com>, Marc Zyngier <maz@kernel.org>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 0/5] Enable rk356x PCIe controller
Message-ID: <20220425014549.GA1609905@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220423152403.1681222-1-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220424_184554_650543_9A5F5943 
X-CRM114-Status: GOOD (  24.43  )
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

Looks like your cover letter lacked a "To:" line, which breaks group
reply, at least for mutt.

On Sat, Apr 23, 2022 at 11:23:58AM -0400, Peter Geis wrote:
> This series enables the DesignWare based PCIe controller on the rk356x
> series of chips.
> We drop the fallback to the core driver due to compatibility issues.
> We reset the PCIe controller at driver probe to prevent issues in the
> future when firmware / kexec leaves the controller in an unknown state.
> We add support for legacy interrupts for cards that lack MSI support
> (which is partially broken currently).
> We then add the device tree nodes to enable PCIe on the Quartz64 Model
> A.
> 
> Patch 1 drops the snps,dw,pcie fallback from the dt-binding
> Patch 2 resets the PCIe controller to prevent configuration bugs
> Patch 3 adds legacy interrupt support to the driver
> Patch 4 adds the device tree binding to the rk356x.dtsi
> Patch 5 enables the PCIe controller on the Quartz64-A
> 
> Changelog:
> v8:
> - add core reset patch
> - simplify irq enable/disable functions
> - drop spinlock
> - only enable/disable irq requested
> - only pass the irq register bits used to irq functions
> 
> Changelog:
> v7:
> - drop assigned-clocks
> 
> v6:
> - fix a ranges issue
> - point to gic instead of its
> 
> v5:
> - fix incorrect series (apologies for the v4 spam)
> 
> v4:
> - drop the ITS modification, poor compatibility is better than
>   completely broken
> 
> v3:
> - drop select node from dt-binding
> - convert to for_each_set_bit
> - convert to generic_handle_domain_irq
> - drop unncessary dev_err
> - reorder irq_chip items
> - change to level_irq
> - install the handler after initializing the domain
> 
> v2:
> - Define PCIE_CLIENT_INTR_STATUS_LEGACY
> - Fix PCIE_LEGACY_INT_ENABLE to only enable the RC interrupts
> - Add legacy interrupt enable/disable support
> 
> Peter Geis (5):
>   dt-bindings: pci: remove fallback from Rockchip DesignWare binding
>   PCI: dwc: rockchip: reset core at driver probe
>   PCI: dwc: rockchip: add legacy interrupt support
>   arm64: dts: rockchip: add rk3568 pcie2x1 controller
>   arm64: dts: rockchip: enable pcie controller on quartz64-a

Please make your subjects and commit logs match previous history:

  PCI: fu740: Remove unused assignments
  PCI: kirin: Remove unused assignments
  PCI: fu740: Force 2.5GT/s for initial device probe
  PCI: imx6: Assert i.MX8MM CLKREQ# even if no device present
  PCI: imx6: Invoke the PHY exit function after PHY power off
  PCI: dwc: Restore MSI Receiver mask during resume
  PCI: fu740: Drop redundant '-gpios' from DT GPIO lookup
  PCI: imx6: Enable i.MX6QP PCIe power management support
  PCI: qcom: Add SM8450 PCIe support
  PCI: qcom: Add ddrss_sf_tbu flag
  PCI: qcom: Remove redundancy between qcom_pcie and qcom_pcie_cfg

No "dwc:" (no need to include all path elements; "dwc" isn't relevant
unless changing the dwc core itself).  Capitalize first word after the
driver name ("Reset", "Add").

Wrap commit logs to fill 75 columns.

Use blank lines to separate paragraphs.

In subjects, commit logs, comments, log messages, etc:

  s/pcie/PCIe/
  s/irq/IRQ/

Wrap code to fit in 80 columns to match the rest of the file (except
things like printk strings where it would reduce greppability).

>  .../bindings/pci/rockchip-dw-pcie.yaml        |  12 +-
>  .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  34 ++++++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  52 ++++++++
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 114 +++++++++++++++---
>  4 files changed, 185 insertions(+), 27 deletions(-)
> 
> -- 
> 2.25.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
