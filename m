Return-Path: <SRS0=BUd0=GE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47F5BC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jan 2021 17:38:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B842C20782
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jan 2021 17:38:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B842C20782
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=grG7Y/cciohs6nNSs3V4KrpD0rjWuPV7AtZkK4E+bdI=; b=zppyFyPCXo+Uu+1vBbZunIbBf
	TKTjD8Zq6HiAWJ6bYfjnfzy73tVHQ48T7rw7751pI7WepsLAizbkucBhv1sKbpDsgtjLb8dVw8djh
	Lee5fsx95nMLSzw4V1xqxGGdOsz7dkGaQPYLaX+1OG7rLroF3g5x1ahWIx92kxmkH92DPjKDuQv5R
	hnkJePiVZLPQ/UvOYA+e9ysGKPqKm/FCQXmd5rWNMDUPzkeMb7+bjBibTvGhHfl3YslxUV5mGMg1X
	OZUdQ+qiTjC32RAwNn+axXUViK4GHlP3JAKX8rOnhvSNBbsqm5TVMOWoAWOHTs6KpIVkkBc/97KEN
	zNGuoFSBg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kvON5-0003Fb-Qq; Fri, 01 Jan 2021 17:37:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kvON2-0003Ez-7k
 for linux-rockchip@lists.infradead.org; Fri, 01 Jan 2021 17:37:49 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 859DE221E9;
 Fri,  1 Jan 2021 17:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1609522666;
 bh=/AL+2blderBT7RQyiS+zdFi6qDMRoz8Drww6xSQunj0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=ds19deqXgUyJdPVUHaDDYV8nTSskwT3p/w+FzfhA+uPuI8PFbzoq4Aojmnosj0VvA
 hBdb8aYbG3qF2wleRSF/XEEbUUv4tr0IvPfrUIgvkmyAaVuFlwmFRWEXIvDKrmGj1z
 L2N75KR/Fv/iFJFk0rMt6IzIYkYzz95SBFJxTWYJlK6O/hk7SOiHSZbkCZ/0pbBb6C
 s+G8+8Y6mfSvYDEEUkrMyf2NsgsYpcI9lk1MhHjC2quoElfqQQmUBX/vKbxd8hfjhG
 0wz3GBE5ZgJLwRKaV0bexoYIScc/+U48x1U33NktP4G8I38UVdP0wp2BME/LPsWK50
 fNkmypLDJdftA==
Date: Fri, 1 Jan 2021 11:37:44 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jari =?iso-8859-1?Q?H=E4m=E4l=E4inen?= <nuumiofi@gmail.com>
Subject: Re: [RFC PATCH 1/3] PCI: rockchip: provide workaround for bus scan
 crash with optional delay
Message-ID: <20210101173744.GA921848@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201231125214.25733-2-nuumiofi@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210101_123748_891530_8784F1A5 
X-CRM114-Status: GOOD (  36.93  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Bjorn Helgaas <bhelgaas@google.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Dec 31, 2020 at 02:52:12PM +0200, Jari H=E4m=E4l=E4inen wrote:
> Some PCIe devices cause Rockchip PCIe controller to crash in bus scan.
> Crash may be avoided by delaying bus scan by time given from command line
> or from device tree. Needed amount of delay varies from device to device.
> Delay doesn't have to be exact. It just has to be long enough.

Is this a standard post-reset delay that the rockchip driver is
missing?  Maybe compare with other drivers to see if rockchip is
missing something.

Is this an erratum in the Rockchip IP?  If so, we should have a
specific description and a citation for it, and a workaround could be
done automatically without DT or command-line switches.

> The following lists few problematic PCIe devices with delays needed for
> stable bus scan surviving 100 sequential reboots in test loop executed on
> RockPro64 (RK3399 single-board computer):
> - LSI 9201-8i         / SAS2008 chipset [1000:0072]: 725 ms
> - LSI 9302-8i         / SAS3008 chipset [1000:0097]: 575 ms (1)
> - HP H220             / SAS2308 chipset [1000:0087]: 800 ms (2)
> - IBM ServeRAID M5110 / SAS2208 chipset [1000:005b]: 1050 ms (3)
> =

>   1) mpt3sas module has soft lockup bug on shutdown but device is usable
>   2) has infrequent crash on mpt3sas module load (2 of 662 reboots in all
>      test sessions with this device crashed on module load)
>   3) megaraid_sas module crashes on load so device remains unusable
>      (bus scan tested with module being blacklisted)
> =

> Side effect of delay, if set, is that it slows down system startup by the
> amount of delay.
> =

> Log excerpt showing a crash happening always on unpatched kernel with
> problematic PCIe devices listed above rendering them unusable:

It doesn't seem likely that the devices above are broken since we
don't have problems with them on other systems.  More likely to be
some Rockchip-specific thing, and the devices above are operating
within spec (possibly using more of the allowed post-reset time than
most devices).

> [    1.240649] SError Interrupt on CPU5, code 0xbf000002 -- SError

We really should know more about what the specific error is.  Most
errors on PCIe should be recoverable and they can happen at any time,
not just at boot-time.

This patch adds a boot-time delay.  At run-time, if we power-cycle or
reset a device and re-enumerate the bus, we would likely see the same
problem and this patch wouldn't help.

> [    1.240653] CPU: 5 PID: 1 Comm: swapper/0 Not tainted 5.10.2-stable #1
> [    1.240656] Hardware name: Pine64 RockPro64 v2.0 (DT)
> [    1.240659] pstate: 60000085 (nZCv daIf -PAN -UAO -TCO BTYPE=3D--)
> [    1.240661] pc : rockchip_pcie_rd_conf+0x178/0x268
> [    1.240664] lr : rockchip_pcie_rd_conf+0x1b8/0x268
> [    1.240666] sp : ffff8000119db850
> [    1.240669] x29: ffff8000119db850 x28: 0000000000000000
> [    1.240676] x27: 0000000000000000 x26: 0000000000000000
> [    1.240682] x25: ffff8000119db984 x24: 0000000000000000
> [    1.240688] x23: 0000000000000000 x22: ffff000040ba0b80
> [    1.240694] x21: ffff8000119db8d4 x20: 0000000000000004
> [    1.240700] x19: 0000000000100000 x18: ffffffffffffffff
> [    1.240706] x17: 0000000031cae143 x16: 000000008c75157c
> [    1.240712] x15: ffff800011729908 x14: ffff000040c87a1c
> [    1.240718] x13: ffff000040c87293 x12: 0000000000000038
> [    1.240724] x11: 0000000005f5e0ff x10: 7f7f7f7f7f7f7f7f
> [    1.240729] x9 : 0000000001001d87 x8 : 000000000000ea60
> [    1.240735] x7 : ffff8000119db984 x6 : 0000000000000000
> [    1.240741] x5 : 0000000000000000 x4 : 0000000000c00008
> [    1.240747] x3 : ffff800017000000 x2 : 000000000080000a
> [    1.240753] x1 : 0000000000000000 x0 : ffff800014000000
> [    1.240759] Kernel panic - not syncing: Asynchronous SError Interrupt
> [    1.240763] CPU: 5 PID: 1 Comm: swapper/0 Not tainted 5.10.2-stable #1
> [    1.240765] Hardware name: Pine64 RockPro64 v2.0 (DT)
> [    1.240768] Call trace:
> [    1.240770]  dump_backtrace+0x0/0x1e8
> [    1.240772]  show_stack+0x18/0x60
> [    1.240775]  dump_stack+0xd8/0x130
> [    1.240777]  panic+0x15c/0x380
> [    1.240779]  add_taint+0x0/0xb0
> [    1.240782]  arm64_serror_panic+0x78/0x88
> [    1.240784]  do_serror+0x3c/0x68
> [    1.240787]  el1_error+0x84/0x104
> [    1.240789]  rockchip_pcie_rd_conf+0x178/0x268
> [    1.240791]  pci_bus_read_config_dword+0xa4/0x150
> [    1.240794]  pci_bus_generic_read_dev_vendor_id+0x30/0x1b0
> [    1.240797]  pci_bus_read_dev_vendor_id+0x4c/0x78
> [    1.240800]  pci_scan_single_device+0x80/0x100
> [    1.240802]  pci_scan_slot+0x38/0x130
> [    1.240805]  pci_scan_child_bus_extend+0x58/0x348
> [    1.240807]  pci_scan_bridge_extend+0x304/0x5a0
> [    1.240810]  pci_scan_child_bus_extend+0x20c/0x348
> [    1.240812]  pci_scan_root_bus_bridge+0x64/0xf0
> [    1.240815]  pci_host_probe+0x18/0xc8
> [    1.240817]  rockchip_pcie_probe+0x34c/0x4b8
> [    1.240820]  platform_drv_probe+0x54/0xa8
> [    1.240822]  really_probe+0x29c/0x4f8
> [    1.240824]  driver_probe_device+0xfc/0x168
> [    1.240827]  device_driver_attach+0x74/0x80
> [    1.240829]  __driver_attach+0xb8/0x168
> [    1.240832]  bus_for_each_dev+0x7c/0xd8
> [    1.240834]  driver_attach+0x24/0x30
> [    1.240837]  bus_add_driver+0x15c/0x240
> [    1.240839]  driver_register+0x64/0x120
> [    1.240841]  __platform_driver_register+0x44/0x50
> [    1.240844]  rockchip_pcie_driver_init+0x1c/0x28
> [    1.240846]  do_one_initcall+0x60/0x1d8
> [    1.240849]  kernel_init_freeable+0x234/0x2b4
> [    1.240851]  kernel_init+0x14/0x118
> [    1.240854]  ret_from_fork+0x10/0x34
> [    1.240878] SMP: stopping secondary CPUs
> [    1.240881] Kernel Offset: disabled
> [    1.240883] CPU features: 0x0240022,2100200c
> [    1.240886] Memory Limit: none
> =

> Signed-off-by: Jari H=E4m=E4l=E4inen <nuumiofi@gmail.com>
> ---
>  .../admin-guide/kernel-parameters.txt          |  8 ++++++++
>  drivers/pci/controller/pcie-rockchip-host.c    | 18 ++++++++++++++++++
>  drivers/pci/controller/pcie-rockchip.c         |  5 +++++
>  drivers/pci/controller/pcie-rockchip.h         |  2 ++
>  4 files changed, 33 insertions(+)
> =

> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentat=
ion/admin-guide/kernel-parameters.txt
> index c722ec19cd00..fda9bb9c85c3 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -3823,6 +3823,14 @@
>  		nomsi	Do not use MSI for native PCIe PME signaling (this makes
>  			all PCIe root ports use INTx for all services).
>  =

> +	pcie_rockchip_host.bus_scan_delay_ms=3D
> +			[PCIE] delay before PCIe bus scan in milliseconds.
> +			If set to greater than or equal to 0 this parameter will
> +			override delay set in device tree. Values less than 0
> +			are ignored. This parameter provides a workaround for
> +			some devices causing a crash in bus scan.
> +			Default: -1
> +
>  	pcmv=3D		[HW,PCMCIA] BadgePAD 4
>  =

>  	pd_ignore_unused
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/co=
ntroller/pcie-rockchip-host.c
> index f1d08a1b1591..14733c92b25c 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -24,6 +24,7 @@
>  #include <linux/kernel.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/module.h>
> +#include <linux/moduleparam.h>
>  #include <linux/of_address.h>
>  #include <linux/of_device.h>
>  #include <linux/of_pci.h>
> @@ -39,6 +40,9 @@
>  #include "../pci.h"
>  #include "pcie-rockchip.h"
>  =

> +static int bus_scan_delay_ms =3D -1;
> +module_param(bus_scan_delay_ms, int, 0444);
> +
>  static void rockchip_pcie_enable_bw_int(struct rockchip_pcie *rockchip)
>  {
>  	u32 status;
> @@ -941,6 +945,7 @@ static int rockchip_pcie_probe(struct platform_device=
 *pdev)
>  	struct device *dev =3D &pdev->dev;
>  	struct pci_host_bridge *bridge;
>  	int err;
> +	u32 delay =3D 0;
>  =

>  	if (!dev->of_node)
>  		return -ENODEV;
> @@ -992,6 +997,19 @@ static int rockchip_pcie_probe(struct platform_devic=
e *pdev)
>  	bridge->sysdata =3D rockchip;
>  	bridge->ops =3D &rockchip_pcie_ops;
>  =

> +	/*
> +	 * Work around a crash caused by some devices on bus scan by applying a
> +	 * delay if one is given. Prefer command line value over device tree.
> +	 */
> +	if (bus_scan_delay_ms >=3D 0)
> +		delay =3D bus_scan_delay_ms;
> +	else
> +		delay =3D rockchip->bus_scan_delay_ms;
> +	if (delay > 0) {
> +		dev_info(dev, "delay bus scan for %u ms\n", delay);
> +		msleep(delay);
> +	}
> +
>  	err =3D pci_host_probe(bridge);
>  	if (err < 0)
>  		goto err_remove_irq_domain;
> diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/control=
ler/pcie-rockchip.c
> index 904dec0d3a88..2e49e9204894 100644
> --- a/drivers/pci/controller/pcie-rockchip.c
> +++ b/drivers/pci/controller/pcie-rockchip.c
> @@ -149,6 +149,11 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *roc=
kchip)
>  		return PTR_ERR(rockchip->clk_pcie_pm);
>  	}
>  =

> +	err =3D of_property_read_u32(node, "rockchip,bus-scan-delay-ms",
> +				   &rockchip->bus_scan_delay_ms);
> +	if (err)
> +		rockchip->bus_scan_delay_ms =3D 0;
> +
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(rockchip_pcie_parse_dt);
> diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/control=
ler/pcie-rockchip.h
> index 1650a5087450..18f37820b35b 100644
> --- a/drivers/pci/controller/pcie-rockchip.h
> +++ b/drivers/pci/controller/pcie-rockchip.h
> @@ -300,6 +300,8 @@ struct rockchip_pcie {
>  	phys_addr_t msg_bus_addr;
>  	bool is_rc;
>  	struct resource *mem_res;
> +	/* bus scan delay for crash causing devices' workaround */
> +	u32 bus_scan_delay_ms;
>  };
>  =

>  static u32 rockchip_pcie_read(struct rockchip_pcie *rockchip, u32 reg)
> -- =

> 2.29.2
> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
