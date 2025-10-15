Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89A9BCCD185
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 23:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=y9mgMgg+Qxnc1gOSllKoOIi+jbd4RbwRd0gm+wtUrj0=; b=F0x0PKHNNg0v1N
	COX4kxl9Acl46huRf9Sdi6vTT7Rw1+agxCEyWgQ1wqBRXej/+DrlrgsO/Hnx7IboTo1gAoZBl/dk1
	qiN84I1v5t6ETc8Xvx3fazmauDtiaXqYoKeZd3o58UXk3pvvORvC6A2eFkq4sDWGA87aaujiXX0vS
	DQxQ68m3WYsQnnWmoKVxjF7pJPbNVzDPJ/SEisaM5EFOgf4PppgA+0tDNjrp/wP0IS+6j8+OcVSzS
	tXvrBuX90YYFgOnTlgVfKG2jnrjyUTOo7+uZGNE2Y+BOa1aIwIE+3lx/vcKy7pMtGo5FYNnWIlkzv
	jzcpzrDxMlPY3Z3VLnkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9AxP-0000000354V-26YQ;
	Wed, 15 Oct 2025 23:30:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9AxN-00000003543-0D7L
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Oct 2025 23:30:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1B3EC43FBB;
	Wed, 15 Oct 2025 23:30:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFE2CC4CEFE;
	Wed, 15 Oct 2025 23:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760571056;
	bh=CsaX5yV/NyN97x/Uv+a7QO8gQ+m7nJzsFw7FkgehTpc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=HS33/Hl0qqOw8/swBgeOP3dDkNTBpyNp7ObDbbRYh6tivu4eXAaBR3MzXFOmL40HI
	 YwXqvdC6LRf5pjpygmRMT23Afg7axVv5+vF75EEY23mK1TkHyCNpUuSot1eMd1GT7B
	 LTXA8EHpmtIsO2qao76wVCyQ6a044N5HEM9K8CBiHS+6sS4stLJgWw1nx9Fb0bWHeu
	 EgaeVlwpFahECt54rRgTY9EGrcn0DWfE8PTTmPPp4WRonW4xEvDlcYe4gvhRMkUQz1
	 qp0La8RrZJ/abACTTJDne396F0f9JgcKPdDHkOQcNiswTbx5yfNzqgRaF0Pwdp5pxf
	 i2QQXaCdcYXQA==
Date: Wed, 15 Oct 2025 18:30:54 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Niklas Cassel <cassel@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	manivannan.sadhasivam@oss.qualcomm.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	"David E. Box" <david.e.box@linux.intel.com>,
	Kai-Heng Feng <kai.heng.feng@canonical.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Chia-Lin Kao <acelan.kao@canonical.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org, regressions@lists.linux.dev,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
Message-ID: <20251015233054.GA961172@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7df0bf91-8ab1-4e76-83fa-841a4059c634@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_163057_109113_CADFE761 
X-CRM114-Status: GOOD (  18.18  )
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

On Wed, Oct 15, 2025 at 09:00:41PM +0800, Shawn Lin wrote:
> ...

> For now, this is a acceptable option if default ASPM policy enable
> L1ss w/o checking if the HW could supports it... But how about
> adding supports-clkreq stuff to upstream host driver directly? That
> would help folks enable L1ss if the HW is ready and they just need
> adding property to the DT.
> ...

> The L1ss support is quite strict and need several steps to check, so we
> didn't add supports-clkreq for them unless the HW is ready to go...
> 
> For adding supports of L1ss,
> [1] the HW should support CLKREQ#, expecially for PCIe3.0 case on Rockchip
> SoCs , since both  CLKREQ# of RC and EP should connect to the
> 100MHz crystal generator's enable pin, as L1.2 need to disable refclk as
> well. If the enable pin is high active, the HW even need a invertor....
> 
> [2] define proper clkreq iomux to pinctrl of pcie node
> [3] make sure the devices work fine with L1ss.(It's hard to check the slot
> case with random devices in the wild )
> [4] add supports-clkreq to the DT and enable
> CONFIG_PCIEASPM_POWER_SUPERSAVE

I don't understand the details of the supports-clkreq issue.

If we need to add supports-clkreq to devicetree, I want to understand
why we need it there when we don't seem to need it for ACPI systems.

Generally the OS relies on what the hardware advertises, e.g., in Link
Capabilities and the L1 PM Substates Capability, and what is available
from firmware, e.g., the ACPI _DSM for Latency Tolerance Reporting.

On the ACPI side, I don't think we get any specific information about
CLKREQ#.  Can somebody explain why we do need it on the devicetree
side?

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
