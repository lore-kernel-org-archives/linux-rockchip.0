Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36382CCD193
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 16:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ako7JE+p0njcr7CrQHVRSFJBmZIP24ydFFp2trrgq8E=; b=bdz2HrgWv/XcXK
	GsRDYFNFF7vQqJp1tC3OVXCAtb2DWkju3rjOJCJ98R6ta7po93vhpzMGpm7DTSNICgCdvodF6rVJs
	RoREIg0xjc05Unyb4DY2D2jqNi+7MfhNynW3JQcKTJUbzl687g3nSSpcjgtnv5VtogGURE7THT2Nq
	snaPis6+Ff6klMdDFAn24fA6VDssZPJLIcG1NT8zpK1i7rlvne5cgK39ZzfcmLRWIJX7GgHEKOQlT
	3cG6nOhTm2fjRXug0LDFDl7SkOgWw18Y0Q31+GoApBavmyafZsnjWvImOyFEiPgrgdEpsz6SzRlgS
	REcfkttyLdARLVxOM/NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8hvb-0000000GzeH-1x72;
	Tue, 14 Oct 2025 16:31:13 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8hvU-0000000Gzbm-2dzu
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Oct 2025 16:31:09 +0000
X-QQ-mid: zesmtpip4t1760459428tb5e95379
X-QQ-Originating-IP: /R9bO08R4jss1JEq/i6vgd32qX4KBvFGBEgVO9LcdSM=
Received: from [IPV6:240f:10b:7440:1:d19c:2eac ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 15 Oct 2025 00:30:17 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14002778381924245539
Message-ID: <22594781424C5C98+22cb5d61-19b1-4353-9818-3bb2b311da0b@radxa.com>
Date: Wed, 15 Oct 2025 01:30:16 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
To: manivannan.sadhasivam@oss.qualcomm.com,
 Bjorn Helgaas <bhelgaas@google.com>, Manivannan Sadhasivam
 <mani@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, "David E. Box" <david.e.box@linux.intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Chia-Lin Kao <acelan.kao@canonical.com>, Bjorn Helgaas <helgaas@kernel.org>,
 Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org
References: <20250922-pci-dt-aspm-v2-0-2a65cf84e326@oss.qualcomm.com>
 <20250922-pci-dt-aspm-v2-1-2a65cf84e326@oss.qualcomm.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20250922-pci-dt-aspm-v2-1-2a65cf84e326@oss.qualcomm.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OKhYnE1LzMsBPkBIJhTL3srK+McXWWm4++++kB8rRSAsILh/AMVJRTAW
	6TicKtHuKKLNd6jU9e84mPbd5j/95aucSoQ9yHs2m1Cq98eQSsURs+RJdVGGxAlhyLyIDTa
	oUrutrvfLnfBumJnp78ANHeY1ay/z7t1htFbtG9DLqUirWDJMTZKz2WQYPXIAkTV5S0BEXZ
	8Cc9gVYhzrJWBdx5KVvJgF2jh/dEy1Q+Mu/SIpoff2w+LRkrCmy6gR8A2F809aqUR0QKF1V
	lCdzof51D1YNhCm0w9iKHmzL7pxDRx8aERsAF0+jns9j1yhFZhqQ5tZEljkP162GGpduVs8
	Cbrva9OIdnYRKCzgjkPsD7zyq/rwbUCVP+GK5its0HHcG535TK4MtemTRK0kA28vAa+nbGv
	LxqXPuRjaTYzY6yMSYSJ2SnuAq3RVjnvDABf2JTyKgOAqpLK2uvgXrUHll3p/zvusdX5A7X
	rwPV1+WY2dF+pjZRylRdY9GHm+GinFVYrlGB5NCyA57YFY4coXcQmkbOify6JYQ5jtSKN2b
	klT/Vh3NxN1SteNWZfAXS/3FlinBs52PQhrXK5XIviRKoUj+IzsiZh+yL0F9Gj2eO2z+PhH
	bsH5cZShpwJHg5UEgiv3/3LrxMvpGeOHfYJDthd5p7Y0yVtTBfxuwaw2EUkckkZA2vqwVFN
	/qJT5sD8AGk5YceQyW3kLN69Dzc8HTnE6B5dCIZceImhXDe1mrzd42iuDPBSH22EZdLPo8X
	idb8Qr7lAc5sUCQ0MSNKjLJ9MBTVMLND2bd7m4V7+iAh81LceZEYQpbV6/QGfWp7MgKcGi6
	y8Jnoyc1kuEnnKTFceLDSqFojZplGNJnYoDB2u9fIUq2HTMmtbsUdrHhzzHbcHgMCKHejIl
	lqcAUQEM26ieqSfXcGP7x9dz238mBEY9nfPRu9WtGGGY6VktNoHakk/XUxy9ORrQ4+w6H7T
	d/EQCwnteSpyhXihk9GvE+UrmqW7cYmfVZpsValz6If4wZQ==
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_093106_013862_0EE839F9 
X-CRM114-Status: GOOD (  33.74  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Manivannan Sadhasivam,

I've noticed an issue on Radxa ROCK 5A/5B boards, which are based on the 
Rockchip RK3588(S) SoC.

When running Linux v6.18-rc1 or linux-next since 20250924, the kernel 
either freezes or fails to probe M.2 Wi-Fi modules. This happens with 
several different modules I've tested, including the Realtek RTL8852BE, 
MediaTek MT7921E, and Intel AX210.

I've found that reverting the following commit (i.e., the patch I'm 
replying to) resolves the problem:
commit f3ac2ff14834a0aa056ee3ae0e4b8c641c579961

I'm not sure what the best long-term solution is, but would it be 
possible to revert this patch for the time being to fix the regression?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 9/23/25 01:16, Manivannan Sadhasivam via B4 Relay wrote:
> From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> 
> So far, the PCI subsystem has honored the ASPM and Clock PM states set by
> the BIOS (through LNKCTL) during device initialization, if it relies on the
> default state selected using:
> 
> * Kconfig: CONFIG_PCIEASPM_DEFAULT=y, or
> * cmdline: "pcie_aspm=off", or
> * FADT: ACPI_FADT_NO_ASPM
> 
> This was done conservatively to avoid issues with the buggy devices that
> advertise ASPM capabilities, but behave erratically if the ASPM states are
> enabled. So the PCI subsystem ended up trusting the BIOS to enable only the
> ASPM states that were known to work for the devices.
> 
> But this turned out to be a problem for devicetree platforms, especially
> the ARM based devicetree platforms powering Embedded and *some* Compute
> devices as they tend to run without any standard BIOS. So the ASPM states
> on these platforms were left disabled during boot and the PCI subsystem
> never bothered to enable them, unless the user has forcefully enabled the
> ASPM states through Kconfig, cmdline, and sysfs or the device drivers
> themselves, enabling the ASPM states through pci_enable_link_state() APIs.
> 
> This caused runtime power issues on those platforms. So a couple of
> approaches were tried to mitigate this BIOS dependency without user
> intervention by enabling the ASPM states in the PCI controller drivers
> after device enumeration, and overriding the ASPM/Clock PM states
> by the PCI controller drivers through an API before enumeration.
> 
> But it has been concluded that none of these mitigations should really be
> required and the PCI subsystem should enable the ASPM states advertised by
> the devices without relying on BIOS or the PCI controller drivers. If any
> device is found to be misbehaving after enabling ASPM states that they
> advertised, then those devices should be quirked to disable the problematic
> ASPM/Clock PM states.
> 
> In an effort to do so, start by overriding the ASPM and Clock PM states set
> by the BIOS for devicetree platforms first. Separate helper functions are
> introduced to override the BIOS set states by enabling all of them if
> of_have_populated_dt() returns true. To aid debugging, print the overridden
> ASPM and Clock PM states as well.
> 
> In the future, these helpers could be extended to allow other platforms
> like VMD, newer ACPI systems with a cutoff year etc... to follow the path.
> 
> Link: https://lore.kernel.org/linux-pci/20250828204345.GA958461@bhelgaas
> Suggested-by: Bjorn Helgaas <helgaas@kernel.org>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> Link: https://patch.msgid.link/20250916-pci-dt-aspm-v1-1-778fe907c9ad@oss.qualcomm.com
> ---
>   drivers/pci/pcie/aspm.c | 42 ++++++++++++++++++++++++++++++++++++++++--
>   1 file changed, 40 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/pcie/aspm.c b/drivers/pci/pcie/aspm.c
> index 919a05b9764791c3cc469c9ada62ba5b2c405118..cda31150aec1b67b6a48b60569222ea3d1c3d41f 100644
> --- a/drivers/pci/pcie/aspm.c
> +++ b/drivers/pci/pcie/aspm.c
> @@ -15,6 +15,7 @@
>   #include <linux/math.h>
>   #include <linux/module.h>
>   #include <linux/moduleparam.h>
> +#include <linux/of.h>
>   #include <linux/pci.h>
>   #include <linux/pci_regs.h>
>   #include <linux/errno.h>
> @@ -235,13 +236,15 @@ struct pcie_link_state {
>   	u32 aspm_support:7;		/* Supported ASPM state */
>   	u32 aspm_enabled:7;		/* Enabled ASPM state */
>   	u32 aspm_capable:7;		/* Capable ASPM state with latency */
> -	u32 aspm_default:7;		/* Default ASPM state by BIOS */
> +	u32 aspm_default:7;		/* Default ASPM state by BIOS or
> +					   override */
>   	u32 aspm_disable:7;		/* Disabled ASPM state */
>   
>   	/* Clock PM state */
>   	u32 clkpm_capable:1;		/* Clock PM capable? */
>   	u32 clkpm_enabled:1;		/* Current Clock PM state */
> -	u32 clkpm_default:1;		/* Default Clock PM state by BIOS */
> +	u32 clkpm_default:1;		/* Default Clock PM state by BIOS or
> +					   override */
>   	u32 clkpm_disable:1;		/* Clock PM disabled */
>   };
>   
> @@ -373,6 +376,18 @@ static void pcie_set_clkpm(struct pcie_link_state *link, int enable)
>   	pcie_set_clkpm_nocheck(link, enable);
>   }
>   
> +static void pcie_clkpm_override_default_link_state(struct pcie_link_state *link,
> +						   int enabled)
> +{
> +	struct pci_dev *pdev = link->downstream;
> +
> +	/* Override the BIOS disabled Clock PM state for devicetree platforms */
> +	if (of_have_populated_dt() && !enabled) {
> +		link->clkpm_default = 1;
> +		pci_info(pdev, "Clock PM state overridden: ClockPM+\n");
> +	}
> +}
> +
>   static void pcie_clkpm_cap_init(struct pcie_link_state *link, int blacklist)
>   {
>   	int capable = 1, enabled = 1;
> @@ -395,6 +410,7 @@ static void pcie_clkpm_cap_init(struct pcie_link_state *link, int blacklist)
>   	}
>   	link->clkpm_enabled = enabled;
>   	link->clkpm_default = enabled;
> +	pcie_clkpm_override_default_link_state(link, enabled);
>   	link->clkpm_capable = capable;
>   	link->clkpm_disable = blacklist ? 1 : 0;
>   }
> @@ -788,6 +804,26 @@ static void aspm_l1ss_init(struct pcie_link_state *link)
>   		aspm_calc_l12_info(link, parent_l1ss_cap, child_l1ss_cap);
>   }
>   
> +static void pcie_aspm_override_default_link_state(struct pcie_link_state *link)
> +{
> +	struct pci_dev *pdev = link->downstream;
> +	u32 override;
> +
> +	/* Override the BIOS disabled ASPM states for devicetree platforms */
> +	if (of_have_populated_dt()) {
> +		link->aspm_default = PCIE_LINK_STATE_ASPM_ALL;
> +		override = link->aspm_default & ~link->aspm_enabled;
> +		if (override)
> +			pci_info(pdev, "ASPM states overridden: %s%s%s%s%s%s\n",
> +				 (override & PCIE_LINK_STATE_L0S) ? "L0s+, " : "",
> +				 (override & PCIE_LINK_STATE_L1) ? "L1+, " : "",
> +				 (override & PCIE_LINK_STATE_L1_1) ? "L1.1+, " : "",
> +				 (override & PCIE_LINK_STATE_L1_2) ? "L1.2+, " : "",
> +				 (override & PCIE_LINK_STATE_L1_1_PCIPM) ? "L1.1 PCI-PM+, " : "",
> +				 (override & PCIE_LINK_STATE_L1_2_PCIPM) ? "L1.2 PCI-PM+" : "");
> +	}
> +}
> +
>   static void pcie_aspm_cap_init(struct pcie_link_state *link, int blacklist)
>   {
>   	struct pci_dev *child = link->downstream, *parent = link->pdev;
> @@ -868,6 +904,8 @@ static void pcie_aspm_cap_init(struct pcie_link_state *link, int blacklist)
>   	/* Save default state */
>   	link->aspm_default = link->aspm_enabled;
>   
> +	pcie_aspm_override_default_link_state(link);
> +
>   	/* Setup initial capable state. Will be updated later */
>   	link->aspm_capable = link->aspm_support;
>   
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
