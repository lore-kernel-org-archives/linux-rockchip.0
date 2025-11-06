Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 251ACCCFA05
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 19:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=AsOQuXDdxb946OGC11L83l62rNvPxteI6l849SM7TG0=; b=bgEY/3W0p3TvOB
	CaW7TwXkubSYqJBe/UOpEd7qaslAqdBe6PdSZh4QHv37Fc9vIS0DCBKZPAfsw7Z74+OtqvSPu3QJ2
	zcrIwJ4m1TU9vcx1MUx1EOc7BiA/NnjnjL8bCPg5SJENWSTwbUQqeKzTcD+uDEudQkM1xv6x8hExj
	2bF7GhKibMldAdLM64oicRojY1rZxRcMsh8XojroYkQ/nSMUA+dUvufQh6SKYuhP3OGSVJUQjGZCx
	9X1wvA9ecQrJo9XuxFkgJ0zayAOsVy0rXyz1KE5w25vy2Xm+z70085s6FBpBJcGtdGplEdMUfC4wG
	m9sAC7Za8n8R1P65KoCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH60e-0000000GBHp-2Uld;
	Thu, 06 Nov 2025 19:51:04 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH60Z-0000000GBHQ-2Any
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 19:51:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7F1364051D;
	Thu,  6 Nov 2025 19:50:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 410D2C113D0;
	Thu,  6 Nov 2025 19:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762458658;
	bh=1lB3DZzZMhqcI9NwkXLNHHcsV1/W9B3qgHsM67aLrrU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=ZVVZZRUtFy+4HxR/aMNXvbPN2iz63KQ5m5A7eMbPT3B8SKM9kCa+I9r5NKT3yMyU1
	 t3Oc/50oCHl0hpLwkW7IxqCSZZWNeRcfORKPECk7th0o98TfYmxkb5njHf8soDxDyb
	 I3yjQJnzmcQbvEDTo2GJ98MNHAAMwCFVKttpl8hCH8w2Bphlgq06oo19PhumC3tonH
	 upXVIy3mpu6YPW2jKIt7Fg6js1d/DWmSeulBTyDQFM8OyUKizJ7+Gn9kqTebEj09Bi
	 Iibocqgq0ncOAoXP8JPpv4qAgSgn9G60OA+Ql/kvNgWVaj0gTjzF+6zVh0a4dgx+ox
	 U2qbsQSpIaBUg==
Date: Thu, 6 Nov 2025 13:50:57 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH] PCI: Add ASPM quirk for Hi1105 PCIe Wi-Fi
Message-ID: <20251106195057.GA1965757@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1762401119-232631-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_115059_580198_DD438512 
X-CRM114-Status: GOOD (  18.48  )
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

On Thu, Nov 06, 2025 at 11:51:59AM +0800, Shawn Lin wrote:
> This Wi-Fi advertises the L0s and L1 capabilities but actually
> it doesn't support them. This's comfirmed by Hisilicon team in
> actual productization.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  drivers/pci/quirks.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
> index 214ed06..67250d4 100644
> --- a/drivers/pci/quirks.c
> +++ b/drivers/pci/quirks.c
> @@ -2526,6 +2526,12 @@ static void quirk_disable_aspm_l0s_l1(struct pci_dev *dev)
>  DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_ASMEDIA, 0x1080, quirk_disable_aspm_l0s_l1);
>  
>  /*
> + * The Hi1105 PCIe Wi-Fi doesn't support L0s and L1 but advertise the capability.
> + * Disable both L0s and L1 for now.
> + */
> +DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_HUAWEI, 0x1105, quirk_disable_aspm_l0s_l1);

PCI_VENDOR_ID_HUAWEI is 0x19e5.  Is there an upstream driver that
matches [19e5:1105]?  I didn't find anything.

I think quirk_disable_aspm_l0s_l1() might be a problem because the new
strategy is to enable ASPM early (in pcie_aspm_init_link_state(),
called from pci_scan_slot(), which happens before FINAL fixups are run
during pci_bus_add_device().

So I think we will enable L0s and L1 briefly before
quirk_disable_aspm_l0s_l1() runs, and it's possible we'd see a problem
then.

But if you apply this series:
  https://lore.kernel.org/r/20251106183643.1963801-1-helgaas@kernel.org

and then the patch below on top, I think we should avoid enabling L0s
and L1 at all:

diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
index 44e780718953..24c278857159 100644
--- a/drivers/pci/quirks.c
+++ b/drivers/pci/quirks.c
@@ -2536,6 +2536,7 @@ static void quirk_disable_aspm_l0s_l1_cap(struct pci_dev *dev)
 	pci_info(dev, "ASPM: L0s L1 removed from Link Capabilities to work around device defect\n");
 }
 DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_FREESCALE, 0x0451, quirk_disable_aspm_l0s_l1_cap);
+DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_HUAWEI, 0x1105, quirk_disable_aspm_l0s_l1_cap);
 
 /*
  * Some Pericom PCIe-to-PCI bridges in reverse mode need the PCIe Retrain

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
