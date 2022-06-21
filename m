Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B449C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jun 2022 15:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4WT9/owI0zvkCMNDFDxh1R6cZXnKBY3QYNKfMS/gSU=; b=G7mF2N/u2YPA3e
	RQHr+UEguitwgwANF9dAq9x53ZDE8CcrlbTUrjVXzdAjwpl1vCDS/DZPE7scyKiarNgh/f1tp+76O
	yRWg8ZSZOToS7to+rZc1iRH1Cshi0P7V8R2G6zH1maE/eOaSSEgDbrXuUJVBgI5whWAhQLUeN8KLQ
	qkTVUl5edneWnQ9Li3YJ74jjvmgxtX3Y055uGzpugw7dN29UNrFpCpgI58hxd4Nt2JkG0ciPsx/9W
	RRXBFoVhRtN5fb2yhdyBgo9eDjXRvsZY5L8enhV29XflVgUSqFl/LYwzcgILrpsdnQy86ecaqepqU
	s+JcO2fe2+pA2k47UJZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3g1c-006DKI-6E; Tue, 21 Jun 2022 15:42:44 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3g1K-006DBg-2F; Tue, 21 Jun 2022 15:42:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1655826138; bh=gOMU2E7+5IcmBbA/Coowbl3dN+c/CgI0R9uvZkfRO0w=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=pQT+b//6ZSqQAPTuVOJKp7MM/RhotfoAiaX9AMNKLtzvoaRRMz/3KriGsH8tCL/78
	 KHMBEbpyKTTx31Vmp1T4AH1GiGFPXviMgxyK67peT49QsESsRwF8ee5NdINF6sOLLk
	 K7SIYZThm4q5vU57xKIUbPDiVyZZxVGJ1GTuiOps=
Date: Tue, 21 Jun 2022 17:42:18 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: broonie@kernel.org, heiko@sntech.de, linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	shengfei Xu <xsf@rock-chips.com>
Subject: Re: [PATCH v3 5/6] spi: rockchip: Suspend and resume the bus during
 NOIRQ_SYSTEM_SLEEP_PM ops
Message-ID: <20220621154218.sau54jeij4bunf56@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Jon Lin <jon.lin@rock-chips.com>, broonie@kernel.org,
	heiko@sntech.de, linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	shengfei Xu <xsf@rock-chips.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20220216014028.8123-1-jon.lin@rock-chips.com>
 <20220216014028.8123-6-jon.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220216014028.8123-6-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_084226_938909_80BF38EB 
X-CRM114-Status: GOOD (  23.36  )
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

Hello Jon,

On Wed, Feb 16, 2022 at 09:40:27AM +0800, Jon Lin wrote:
> From: shengfei Xu <xsf@rock-chips.com>
> 
> the wakeup interrupt handler which is guaranteed not to run while
> @resume noirq() is being executed. the patch can help to avoid the
> wakeup source try to access spi when the spi is in suspend mode.

This patch causes oops on suspend every single time, because it tries to disable
already disabled clocks (one disable in runtime PM suspend, and other one in
system suspend). It also fails to properly handle errors from clk_prepare_enable
in rockchip_spi_resume, potentially causing even more clock enable/disable
imballance issues.

Please send a revert and figure out a better fix for the original issue.

kind regards,
	Ondrej

------------[ cut here ]------------
clk_spi1 already unprepared
WARNING: CPU: 5 PID: 423 at drivers/clk/clk.c:829 clk_core_unprepare+0x1a0/0x1c0
Modules linked in:
CPU: 5 PID: 423 Comm: waketest-onesho Tainted: G        W         5.18.5-00013-g12be33cc5bf1-dirty #142
Hardware name: Pine64 PinePhonePro (DT)
pstate: 80000005 (Nzcv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : clk_core_unprepare+0x1a0/0x1c0
lr : clk_core_unprepare+0x1a0/0x1c0
sp : ffff80000acf3a30
x29: ffff80000acf3a30 x28: 0000000000000000 x27: 0000000bbb2b9e2b
x26: 0000000000000002 x25: ffff8000088310b0 x24: 0000000000000000
x23: ffff800009fe2000 x22: 0000000000000002 x21: ffff0000044fe980
x20: ffff0000042d2600 x19: ffff00000269da00 x18: ffffffffffffffff
x17: 000000040044ffff x16: 00000034b5503510 x15: 0000000000000000
x14: ffff0000027b0d80 x13: 0a64657261706572 x12: 706e752079646165
x11: 0000000000000001 x10: fffffffffffe0000 x9 : ffff800008176438
x8 : ffff80000acf3a30 x7 : 61706572706e7520 x6 : 0000000000000001
x5 : ffff0000f77a4790 x4 : 0000000000000000 x3 : 0000000000000027
x2 : 0000000000000000 x1 : 0000000000000027 x0 : 000000000000001b
Call trace:
 clk_core_unprepare+0x1a0/0x1c0
 clk_unprepare+0x30/0x44
 rockchip_spi_suspend+0x40/0x70
 dpm_run_callback+0x5c/0x170
 __device_suspend_noirq+0xc8/0x2a0
 dpm_noirq_suspend_devices+0x118/0x2a0
 dpm_suspend_noirq+0x28/0x94
 suspend_devices_and_enter+0x184/0x840
 pm_suspend+0x374/0x470
 state_store+0x84/0x100
 kobj_attr_store+0x14/0x2c
 sysfs_kf_write+0x48/0x54
 kernfs_fop_write_iter+0x120/0x1e4
 new_sync_write+0xc0/0x12c
 vfs_write+0x210/0x2d0
 ksys_write+0x60/0xe0
 __arm64_sys_write+0x20/0x30
 invoke_syscall+0x4c/0x110
 el0_svc_common.constprop.0+0x48/0xf0
 do_el0_svc+0x28/0x80
 el0_svc+0x14/0x50
 el0t_64_sync_handler+0xe0/0x110
 el0t_64_sync+0x148/0x14c
---[ end trace 0000000000000000 ]---
------------[ cut here ]------------
pclk_spi1 already disabled
WARNING: CPU: 5 PID: 423 at drivers/clk/clk.c:971 clk_core_disable+0x1d8/0x1f0
Modules linked in:
CPU: 5 PID: 423 Comm: waketest-onesho Tainted: G        W         5.18.5-00013-g12be33cc5bf1-dirty #142
Hardware name: Pine64 PinePhonePro (DT)
pstate: 800000c5 (Nzcv daIF -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : clk_core_disable+0x1d8/0x1f0
lr : clk_core_disable+0x1d8/0x1f0
sp : ffff80000acf3a20
x29: ffff80000acf3a20 x28: 0000000000000000 x27: 0000000bbb2b9e2b
x26: 0000000000000002 x25: ffff8000088310b0 x24: 0000000000000000
x23: ffff800009fe2000 x22: 0000000000000002 x21: ffff0000044fe980
x20: ffff000002687a00 x19: ffff000002687a00 x18: ffffffffffffffff
x17: 000000040044ffff x16: 00000034b5503510 x15: 0000000000000000
x14: ffff0000027b0d80 x13: 0a64656c62617369 x12: 642079646165726c
x11: 0000000000000001 x10: fffffffffffe0000 x9 : ffff800008176438
x8 : ffff80000acf3a20 x7 : 656c626173696420 x6 : 0000000000000001
x5 : ffff0000f77a4790 x4 : 0000000000000000 x3 : 0000000000000027
x2 : 0000000000000000 x1 : 0000000000000027 x0 : 000000000000001a
Call trace:
 clk_core_disable+0x1d8/0x1f0
 clk_disable+0x34/0x4c
 rockchip_spi_suspend+0x4c/0x70
 dpm_run_callback+0x5c/0x170
 __device_suspend_noirq+0xc8/0x2a0
 dpm_noirq_suspend_devices+0x118/0x2a0
 dpm_suspend_noirq+0x28/0x94
 suspend_devices_and_enter+0x184/0x840
 pm_suspend+0x374/0x470
 state_store+0x84/0x100
 kobj_attr_store+0x14/0x2c
 sysfs_kf_write+0x48/0x54
 kernfs_fop_write_iter+0x120/0x1e4
 new_sync_write+0xc0/0x12c
 vfs_write+0x210/0x2d0
 ksys_write+0x60/0xe0
 __arm64_sys_write+0x20/0x30
 invoke_syscall+0x4c/0x110
 el0_svc_common.constprop.0+0x48/0xf0
 do_el0_svc+0x28/0x80
 el0_svc+0x14/0x50
 el0t_64_sync_handler+0xe0/0x110
 el0t_64_sync+0x148/0x14c
---[ end trace 0000000000000000 ]---
------------[ cut here ]------------
pclk_spi1 already unprepared
WARNING: CPU: 5 PID: 423 at drivers/clk/clk.c:829 clk_core_unprepare+0x1a0/0x1c0
Modules linked in:
CPU: 5 PID: 423 Comm: waketest-onesho Tainted: G        W         5.18.5-00013-g12be33cc5bf1-dirty #142
Hardware name: Pine64 PinePhonePro (DT)
pstate: 80000005 (Nzcv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : clk_core_unprepare+0x1a0/0x1c0
lr : clk_core_unprepare+0x1a0/0x1c0
sp : ffff80000acf3a30
x29: ffff80000acf3a30 x28: 0000000000000000 x27: 0000000bbb2b9e2b
x26: 0000000000000002 x25: ffff8000088310b0 x24: 0000000000000000
x23: ffff800009fe2000 x22: 0000000000000002 x21: ffff0000044fe980
x20: ffff0000044fe900 x19: ffff000002687a00 x18: ffffffffffffffff
x17: 000000040044ffff x16: 00000034b5503510 x15: 0000000000000000
x14: ffff0000027b0d80 x13: 0a64657261706572 x12: 706e752079646165
x11: 0000000000000001 x10: fffffffffffe0000 x9 : ffff800008176438
x8 : ffff80000acf3a30 x7 : 61706572706e7520 x6 : 0000000000000001
x5 : ffff0000f77a4790 x4 : 0000000000000000 x3 : 0000000000000027
x2 : 0000000000000000 x1 : 0000000000000027 x0 : 000000000000001c
Call trace:
 clk_core_unprepare+0x1a0/0x1c0
 clk_unprepare+0x30/0x44
 rockchip_spi_suspend+0x54/0x70
 dpm_run_callback+0x5c/0x170
 __device_suspend_noirq+0xc8/0x2a0
 dpm_noirq_suspend_devices+0x118/0x2a0
 dpm_suspend_noirq+0x28/0x94
 suspend_devices_and_enter+0x184/0x840
 pm_suspend+0x374/0x470
 state_store+0x84/0x100
 kobj_attr_store+0x14/0x2c
 sysfs_kf_write+0x48/0x54
 kernfs_fop_write_iter+0x120/0x1e4
 new_sync_write+0xc0/0x12c
 vfs_write+0x210/0x2d0
 ksys_write+0x60/0xe0
 __arm64_sys_write+0x20/0x30
 invoke_syscall+0x4c/0x110
 el0_svc_common.constprop.0+0x48/0xf0
 do_el0_svc+0x28/0x80
 el0_svc+0x14/0x50
 el0t_64_sync_handler+0xe0/0x110
 el0t_64_sync+0x148/0x14c
---[ end trace 0000000000000000 ]---

> Signed-off-by: shengfei Xu <xsf@rock-chips.com>
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> ---
> 
> Changes in v3: None
> Changes in v2: None
> Changes in v1: None
> 
>  drivers/spi/spi-rockchip.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index 83da8fdb3c02..8b4d56ee2193 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -964,14 +964,14 @@ static int rockchip_spi_suspend(struct device *dev)
>  {
>  	int ret;
>  	struct spi_controller *ctlr = dev_get_drvdata(dev);
> +	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
>  
>  	ret = spi_controller_suspend(ctlr);
>  	if (ret < 0)
>  		return ret;
>  
> -	ret = pm_runtime_force_suspend(dev);
> -	if (ret < 0)
> -		return ret;
> +	clk_disable_unprepare(rs->spiclk);
> +	clk_disable_unprepare(rs->apb_pclk);
>  
>  	pinctrl_pm_select_sleep_state(dev);
>  
> @@ -986,10 +986,14 @@ static int rockchip_spi_resume(struct device *dev)
>  
>  	pinctrl_pm_select_default_state(dev);
>  
> -	ret = pm_runtime_force_resume(dev);
> +	ret = clk_prepare_enable(rs->apb_pclk);
>  	if (ret < 0)
>  		return ret;
>  
> +	ret = clk_prepare_enable(rs->spiclk);
> +	if (ret < 0)
> +		clk_disable_unprepare(rs->apb_pclk);
> +
>  	ret = spi_controller_resume(ctlr);
>  	if (ret < 0) {
>  		clk_disable_unprepare(rs->spiclk);
> @@ -1031,7 +1035,7 @@ static int rockchip_spi_runtime_resume(struct device *dev)
>  #endif /* CONFIG_PM */
>  
>  static const struct dev_pm_ops rockchip_spi_pm = {
> -	SET_SYSTEM_SLEEP_PM_OPS(rockchip_spi_suspend, rockchip_spi_resume)
> +	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(rockchip_spi_suspend, rockchip_spi_resume)
>  	SET_RUNTIME_PM_OPS(rockchip_spi_runtime_suspend,
>  			   rockchip_spi_runtime_resume, NULL)
>  };
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
