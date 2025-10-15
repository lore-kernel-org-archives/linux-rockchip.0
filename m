Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4331CCD18E
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 12:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ljOc0EotMDZburCnno0WxayPOf4UuRK+juUdKIMh25Q=; b=ZinesjJ9uf9T34
	uInnQcKkwtDbzrPk7+Q+Gf6CGs/J4EbaRf7FYnYF31xCUj32Aud/5X4lAPpfeZMDh/z17WWwZ0Myh
	KJXuKxvTcF7cy3kV8+G6NslL7GIZqmqRozSKEIHF8oMgXZt4dicim7wn7YTo1UgCRfM3vQ6BfeORr
	Go9v8Bfr0cD+UCBnsbSSImCuaUdGy+WYSrf9rKG7BGpKNOHJdrbL7JuL1tGV0VtJgn8Ku+H5AZfm+
	CS+lU2BxsepdoZzHWeSxLS6qtmOL3O8FqdXJ3LgsyAmuxyaxbjuIvxfVpMOpqOmjUROFQQvQjLgoP
	01lEWrODU4y5KYbvAXFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v90aX-00000001Y0T-2Xrs;
	Wed, 15 Oct 2025 12:26:41 +0000
Received: from out-182.mta0.migadu.com ([2001:41d0:1004:224b::b6])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v90aU-00000001XzQ-36Fw
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Oct 2025 12:26:40 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1760531193;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DDcV3lL652QbBLMnHbavqNgqzG0RCaogCT38JOEzm/M=;
	b=mhmFUvRxh3egXLqDYFZYCkKBkJjbjPug1peJGFtU0/GYZ96HpY3qh0br1P0G6FHje4E3VE
	Jc08O9gtpde6LaaMd8UJanoxdA6MQerLn++S/zJa/v0+Z68+LnfkZ0VP4TgEIOTHg1f+cA
	9wn3Gt0nihnR8o427AW5CV5Wqwpia/fVfwlbaSijXnyC3bnb6KHq7YY/Dtjzq9qAifddO5
	eXrqXccEBE443kI+kJUkI1lzKnAJ4YMmXWm/gMMtaxGClttGhzXObpUvOVf2CfYCMrYKLh
	vj2xTAcuObzV4yfNNSRaLdeMguwFSd0TVbmX/24+hKI+fKIuYulgiEDkAhelag==
Date: Wed, 15 Oct 2025 14:26:30 +0200
Message-Id: <DDIW7ZP5K1VR.2I7VW56B9CZLF@cknow-tech.com>
Cc: <manivannan.sadhasivam@oss.qualcomm.com>, "Bjorn Helgaas"
 <bhelgaas@google.com>, "Manivannan Sadhasivam" <mani@kernel.org>, "Lorenzo
 Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>, "Rob Herring" <robh@kernel.org>,
 <linux-pci@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, "David E. Box"
 <david.e.box@linux.intel.com>, "Kai-Heng Feng"
 <kai.heng.feng@canonical.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 "Heiner Kallweit" <hkallweit1@gmail.com>, "Chia-Lin Kao"
 <acelan.kao@canonical.com>, "Dragan Simic" <dsimic@manjaro.org>,
 <linux-rockchip@lists.infradead.org>, <regressions@lists.linux.dev>
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Bjorn Helgaas" <helgaas@kernel.org>, "FUKAUMI Naoki" <naoki@radxa.com>
References: <22594781424C5C98+22cb5d61-19b1-4353-9818-3bb2b311da0b@radxa.com> <20251014184905.GA896847@bhelgaas>
In-Reply-To: <20251014184905.GA896847@bhelgaas>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_052639_183099_396EAE92 
X-CRM114-Status: GOOD (  47.33  )
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

On Tue Oct 14, 2025 at 8:49 PM CEST, Bjorn Helgaas wrote:
> On Wed, Oct 15, 2025 at 01:30:16AM +0900, FUKAUMI Naoki wrote:
>> I've noticed an issue on Radxa ROCK 5A/5B boards, which are based on the
>> Rockchip RK3588(S) SoC.
>> 
>> When running Linux v6.18-rc1 or linux-next since 20250924, the kernel either
>> freezes or fails to probe M.2 Wi-Fi modules. This happens with several
>> different modules I've tested, including the Realtek RTL8852BE, MediaTek
>> MT7921E, and Intel AX210.
>> 
>> I've found that reverting the following commit (i.e., the patch I'm replying
>> to) resolves the problem:
>> commit f3ac2ff14834a0aa056ee3ae0e4b8c641c579961
>
> Thanks for the report, and sorry for the regression.
>
> Since this affects several devices from different manufacturers and (I
> assume) different drivers, it seems likely that there's some issue
> with the Rockchip end, since ASPM probably works on these devices in
> other systems.  So we should figure out if there's something wrong
> with the way we configure ASPM, which we could potentially fix, or if
> there's a hardware issue and we need some king of quirk to prevent
> usage of ASPM on the affected platforms.
>
> Can you collect a complete dmesg log when booting with
>
>   ignore_loglevel pci=earlydump dyndbg="file drivers/pci/* +p"
>
> and the output of "sudo lspci -vv"?

I have a Rock 5B as well, but I don't have a Wi-Fi module, but I do have
a NVMe drive connected. That boots fine with 6.17, but I end up in a
rescue shell with 6.18-rc1. I haven't verified that it's caused by the
same commit, but it does sound plausible.

On this device, the NVMe isn't strictly needed (I used it to compile my
kernels on), so I added 'noauto' to the NVMe line in /etc/fstab ... and
that made it boot successfully into 6.18-rc1. Then running the 'mount'
command wrt that NVMe drive failed with this message:

  EXT4-fs (nvme0n1p1): unable to read superblock

The log of my attempts can be found here:
https://paste.sr.ht/~diederik/f435eb258dca60676f7ac5154c00ddfdc24ac0b7

> When the kernel freezes, can you give us any information about where,
> e.g., a log or screenshot?

For me, there is no kernel freeze. I ended up in a rescue shell as it
couldn't mount the NVMe drive. As described above, when not letting it
auto-mount that drive, the boot completed normally.

> Do you know if any platforms other than Radxa ROCK 5A/5B have this
> problem?

I do have a NanoPi R5S (rk3568) which also has a NVMe drive attached,
but that one is mounted on /var ...

> #regzbot introduced: f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree platforms")
> #regzbot dup-of: https://github.com/chzigotzky/kernels/issues/17
>
>> On 9/23/25 01:16, Manivannan Sadhasivam via B4 Relay wrote:
>> > From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
>> > 
>> > So far, the PCI subsystem has honored the ASPM and Clock PM states set by
>> > the BIOS (through LNKCTL) during device initialization, if it relies on the
>> > default state selected using:
>> > 
>> > * Kconfig: CONFIG_PCIEASPM_DEFAULT=y, or
>> > * cmdline: "pcie_aspm=off", or
>> > * FADT: ACPI_FADT_NO_ASPM
>> > 
>> > This was done conservatively to avoid issues with the buggy devices that
>> > advertise ASPM capabilities, but behave erratically if the ASPM states are
>> > enabled. So the PCI subsystem ended up trusting the BIOS to enable only the
>> > ASPM states that were known to work for the devices.
>> > 
>> > But this turned out to be a problem for devicetree platforms, especially
>> > the ARM based devicetree platforms powering Embedded and *some* Compute
>> > devices as they tend to run without any standard BIOS. So the ASPM states

I noticed in Naoki's log that it had lines mentioning 'BIOS', but I do
not. Naoki's log is wrt Rock 5A, while mine is wrt Rock 5B. I don't
suspect that's very relevant though.

Cheers,
  Diederik

>> > on these platforms were left disabled during boot and the PCI subsystem
>> > never bothered to enable them, unless the user has forcefully enabled the
>> > ASPM states through Kconfig, cmdline, and sysfs or the device drivers
>> > themselves, enabling the ASPM states through pci_enable_link_state() APIs.
>> > 
>> > This caused runtime power issues on those platforms. So a couple of
>> > approaches were tried to mitigate this BIOS dependency without user
>> > intervention by enabling the ASPM states in the PCI controller drivers
>> > after device enumeration, and overriding the ASPM/Clock PM states
>> > by the PCI controller drivers through an API before enumeration.
>> > 
>> > But it has been concluded that none of these mitigations should really be
>> > required and the PCI subsystem should enable the ASPM states advertised by
>> > the devices without relying on BIOS or the PCI controller drivers. If any
>> > device is found to be misbehaving after enabling ASPM states that they
>> > advertised, then those devices should be quirked to disable the problematic
>> > ASPM/Clock PM states.
>> > 
>> > In an effort to do so, start by overriding the ASPM and Clock PM states set
>> > by the BIOS for devicetree platforms first. Separate helper functions are
>> > introduced to override the BIOS set states by enabling all of them if
>> > of_have_populated_dt() returns true. To aid debugging, print the overridden
>> > ASPM and Clock PM states as well.
>> > 
>> > In the future, these helpers could be extended to allow other platforms
>> > like VMD, newer ACPI systems with a cutoff year etc... to follow the path.
>> > 
>> > Link: https://lore.kernel.org/linux-pci/20250828204345.GA958461@bhelgaas
>> > Suggested-by: Bjorn Helgaas <helgaas@kernel.org>
>> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
>> > Link: https://patch.msgid.link/20250916-pci-dt-aspm-v1-1-778fe907c9ad@oss.qualcomm.com
>> > ---
>> >   drivers/pci/pcie/aspm.c | 42 ++++++++++++++++++++++++++++++++++++++++--
>> >   1 file changed, 40 insertions(+), 2 deletions(-)
>> > 
>> > diff --git a/drivers/pci/pcie/aspm.c b/drivers/pci/pcie/aspm.c
>> > index 919a05b9764791c3cc469c9ada62ba5b2c405118..cda31150aec1b67b6a48b60569222ea3d1c3d41f 100644
>> > --- a/drivers/pci/pcie/aspm.c
>> > +++ b/drivers/pci/pcie/aspm.c
>> > @@ -15,6 +15,7 @@
>> >   #include <linux/math.h>
>> >   #include <linux/module.h>
>> >   #include <linux/moduleparam.h>
>> > +#include <linux/of.h>
>> >   #include <linux/pci.h>
>> >   #include <linux/pci_regs.h>
>> >   #include <linux/errno.h>
>> > @@ -235,13 +236,15 @@ struct pcie_link_state {
>> >   	u32 aspm_support:7;		/* Supported ASPM state */
>> >   	u32 aspm_enabled:7;		/* Enabled ASPM state */
>> >   	u32 aspm_capable:7;		/* Capable ASPM state with latency */
>> > -	u32 aspm_default:7;		/* Default ASPM state by BIOS */
>> > +	u32 aspm_default:7;		/* Default ASPM state by BIOS or
>> > +					   override */
>> >   	u32 aspm_disable:7;		/* Disabled ASPM state */
>> >   	/* Clock PM state */
>> >   	u32 clkpm_capable:1;		/* Clock PM capable? */
>> >   	u32 clkpm_enabled:1;		/* Current Clock PM state */
>> > -	u32 clkpm_default:1;		/* Default Clock PM state by BIOS */
>> > +	u32 clkpm_default:1;		/* Default Clock PM state by BIOS or
>> > +					   override */
>> >   	u32 clkpm_disable:1;		/* Clock PM disabled */
>> >   };
>> > @@ -373,6 +376,18 @@ static void pcie_set_clkpm(struct pcie_link_state *link, int enable)
>> >   	pcie_set_clkpm_nocheck(link, enable);
>> >   }
>> > +static void pcie_clkpm_override_default_link_state(struct pcie_link_state *link,
>> > +						   int enabled)
>> > +{
>> > +	struct pci_dev *pdev = link->downstream;
>> > +
>> > +	/* Override the BIOS disabled Clock PM state for devicetree platforms */
>> > +	if (of_have_populated_dt() && !enabled) {
>> > +		link->clkpm_default = 1;
>> > +		pci_info(pdev, "Clock PM state overridden: ClockPM+\n");
>> > +	}
>> > +}
>> > +
>> >   static void pcie_clkpm_cap_init(struct pcie_link_state *link, int blacklist)
>> >   {
>> >   	int capable = 1, enabled = 1;
>> > @@ -395,6 +410,7 @@ static void pcie_clkpm_cap_init(struct pcie_link_state *link, int blacklist)
>> >   	}
>> >   	link->clkpm_enabled = enabled;
>> >   	link->clkpm_default = enabled;
>> > +	pcie_clkpm_override_default_link_state(link, enabled);
>> >   	link->clkpm_capable = capable;
>> >   	link->clkpm_disable = blacklist ? 1 : 0;
>> >   }
>> > @@ -788,6 +804,26 @@ static void aspm_l1ss_init(struct pcie_link_state *link)
>> >   		aspm_calc_l12_info(link, parent_l1ss_cap, child_l1ss_cap);
>> >   }
>> > +static void pcie_aspm_override_default_link_state(struct pcie_link_state *link)
>> > +{
>> > +	struct pci_dev *pdev = link->downstream;
>> > +	u32 override;
>> > +
>> > +	/* Override the BIOS disabled ASPM states for devicetree platforms */
>> > +	if (of_have_populated_dt()) {
>> > +		link->aspm_default = PCIE_LINK_STATE_ASPM_ALL;
>> > +		override = link->aspm_default & ~link->aspm_enabled;
>> > +		if (override)
>> > +			pci_info(pdev, "ASPM states overridden: %s%s%s%s%s%s\n",
>> > +				 (override & PCIE_LINK_STATE_L0S) ? "L0s+, " : "",
>> > +				 (override & PCIE_LINK_STATE_L1) ? "L1+, " : "",
>> > +				 (override & PCIE_LINK_STATE_L1_1) ? "L1.1+, " : "",
>> > +				 (override & PCIE_LINK_STATE_L1_2) ? "L1.2+, " : "",
>> > +				 (override & PCIE_LINK_STATE_L1_1_PCIPM) ? "L1.1 PCI-PM+, " : "",
>> > +				 (override & PCIE_LINK_STATE_L1_2_PCIPM) ? "L1.2 PCI-PM+" : "");
>> > +	}
>> > +}
>> > +
>> >   static void pcie_aspm_cap_init(struct pcie_link_state *link, int blacklist)
>> >   {
>> >   	struct pci_dev *child = link->downstream, *parent = link->pdev;
>> > @@ -868,6 +904,8 @@ static void pcie_aspm_cap_init(struct pcie_link_state *link, int blacklist)
>> >   	/* Save default state */
>> >   	link->aspm_default = link->aspm_enabled;
>> > +	pcie_aspm_override_default_link_state(link);
>> > +
>> >   	/* Setup initial capable state. Will be updated later */
>> >   	link->aspm_capable = link->aspm_support;
>> > 
>> 
>> 
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
