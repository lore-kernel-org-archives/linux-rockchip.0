Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4037CCD199
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Oct 2025 17:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9qeHUZMfIl/+xbvEB3a4/qURMrMirOCi5Bk1cowkGVY=; b=Eokg4Jap/TtK4a
	c1l2FZLeqTH5qAFRrTP09tU1FPnkh6fFEFdvBGZiwVnVtqfv0Oh9/IIpUYXF2CIbx0YdDL798glZB
	eZb1YYpX6sj3j28oadzLv5eNC3Pr/gJd8Yh9+IsKw6aQGpzCvw3rslw0BW/YNZUJfPWiSvK9f5vlf
	FQZrotYD1qNlF/7TEhiVR1q7oGCpnhv9MN4YsrpSRqBMPP5F37S2sUxUfBK9zn5OLs02xTBhfe/2b
	XB0ybTpUckca1cCGI6S1Nf6h5MCRLdVcCD+cjQrzNJadUZOoMG3GdKg5QALcQ7oOzx9XstCZWBmfY
	4jelUj2okBRCJUR7RKIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Rwc-00000005bvT-0BrJ;
	Thu, 16 Oct 2025 17:39:18 +0000
Received: from out-171.mta1.migadu.com ([2001:41d0:203:375::ab])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9RwY-00000005bsc-2mzt
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Oct 2025 17:39:16 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1760636348;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QxNz2ubVhmwaha5Dqcv6zgBsEC/I+M6eOK/y6A/nxQo=;
	b=QI/JRjrJcWwm7qCShTbcH1hAx/WOPeP9mCfiyD27m2c29VqT1yZhG7vae0/qHoRYSf1Icd
	mgq+glxC/dq6OQ05VctLPoDzYQ2feuIx7C7wtpO9IRufsqnwq3TRM/epaKQtdOeiUJS8Ju
	3FN8/dvb9cshxlJOAz1Lcf2XiGShgLp7PTQna+rg1nIS+pMBLb71oh5UUh/hwAL1YPO0bv
	1j9bHXdIF/x15JE2q+f7P8Ao9E0guri6YdR7ny3s+la0DByxYdXb0wcb2KTpkqYG3BEkgN
	Qq/lcGJLlVpfAWZemabMQeZjl53GCKeNqT4CrlAwoeNIl2nT8EsajYTHACCT6w==
Date: Thu, 16 Oct 2025 19:38:57 +0200
Message-Id: <DDJXHRIRGTW9.GYC2ULZ5WQAL@cknow-tech.com>
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Bjorn Helgaas" <helgaas@kernel.org>
Cc: "FUKAUMI Naoki" <naoki@radxa.com>,
 <manivannan.sadhasivam@oss.qualcomm.com>, "Bjorn Helgaas"
 <bhelgaas@google.com>, "Manivannan Sadhasivam" <mani@kernel.org>, "Lorenzo
 Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>, "Rob Herring" <robh@kernel.org>,
 <linux-pci@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, "David E. Box"
 <david.e.box@linux.intel.com>, "Kai-Heng Feng"
 <kai.heng.feng@canonical.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 "Heiner Kallweit" <hkallweit1@gmail.com>, "Chia-Lin Kao"
 <acelan.kao@canonical.com>, "Dragan Simic" <dsimic@manjaro.org>,
 <linux-rockchip@lists.infradead.org>, <regressions@lists.linux.dev>, "Ulf
 Hansson" <ulf.hansson@linaro.org>
References: <DDIW7ZP5K1VR.2I7VW56B9CZLF@cknow-tech.com>
 <20251015225033.GA945930@bhelgaas>
In-Reply-To: <20251015225033.GA945930@bhelgaas>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_103915_454437_0F9A01FD 
X-CRM114-Status: GOOD (  29.23  )
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

On Thu Oct 16, 2025 at 12:50 AM CEST, Bjorn Helgaas wrote:
> On Wed, Oct 15, 2025 at 02:26:30PM +0200, Diederik de Haas wrote:
>> On Tue Oct 14, 2025 at 8:49 PM CEST, Bjorn Helgaas wrote:
>> > On Wed, Oct 15, 2025 at 01:30:16AM +0900, FUKAUMI Naoki wrote:
>> >> I've noticed an issue on Radxa ROCK 5A/5B boards, which are based on the
>> >> Rockchip RK3588(S) SoC.
>> >> 
>> >> When running Linux v6.18-rc1 or linux-next since 20250924, the kernel either
>> >> freezes or fails to probe M.2 Wi-Fi modules. This happens with several
>> >> different modules I've tested, including the Realtek RTL8852BE, MediaTek
>> >> MT7921E, and Intel AX210.
>> >> 
>> >> I've found that reverting the following commit (i.e., the patch I'm replying
>> >> to) resolves the problem:
>> >> commit f3ac2ff14834a0aa056ee3ae0e4b8c641c579961
>> >
>> > Can you collect a complete dmesg log when booting with
>> >
>> >   ignore_loglevel pci=earlydump dyndbg="file drivers/pci/* +p"
>> >
>> > and the output of "sudo lspci -vv"?
>> 
>> I have a Rock 5B as well, but I don't have a Wi-Fi module, but I do have
>> a NVMe drive connected. That boots fine with 6.17, but I end up in a
>> rescue shell with 6.18-rc1. I haven't verified that it's caused by the
>> same commit, but it does sound plausible.
>
> FWIW, my expectation is that booting with "pcie_aspm=off" should
> effectively avoid the ASPM enabling and behave similarly to reverting
> f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for
> devicetree platforms").  My hope was that we could boot that way and
> incrementally enable ASPM via sysfs a device at a time for testing.
>
> [Moved last lines up here]
> Bottom line, I don't think I can get any further with this particular
> issue until we confirm that f3ac2ff14834 ("PCI/ASPM: Enable all
> ClockPM and ASPM states for devicetree platforms") is the cause.

I built a 6.18-rc1 kernel with that commit reverted and when booted up,
I could mount my NVMe drive. Next I removed the 'noauto' from /etc/fstab
and rebooted and that succeeded as well.
So I think we can conclude that commit f3ac2ff14834 is the cause.

>> On this device, the NVMe isn't strictly needed (I used it to compile my
>> kernels on), so I added 'noauto' to the NVMe line in /etc/fstab ... and
>> that made it boot successfully into 6.18-rc1. Then running the 'mount'
>> command wrt that NVMe drive failed with this message:
>> 
>>   EXT4-fs (nvme0n1p1): unable to read superblock
>> 
>> The log of my attempts can be found here:
>> https://paste.sr.ht/~diederik/f435eb258dca60676f7ac5154c00ddfdc24ac0b7
>
> Thanks for the log, it's very useful.  This is pieced together from
> the serial console log and the "dmesg --level" output, but I think
> it's all the same boot:

Correct.

>   ...
>   [   18.921811] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdad0000.npu
>   [   18.922737] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdb50000.video-codec
>   ...
>
> The earlydump info shows the 00:00.0 Root Port had I/O+ Mem+
> BusMaster+ (0x0107) and the 01:00.0 NVMe initially had I/O- Mem-
> BusMaster- (0x0000).  We were able to enumerate the NVMe device and
> assign its BAR, and the nvme driver turned on Mem+ (0x002).
>
>   nvme_timeout
>     csts = readl(dev->bar + NVME_REG_CSTS)
>     if (nvme_should_reset(csts))
>       nvme_warn_reset(csts)
>         result = pci_read_config_word(PCI_STATUS)
>         "controller is down; will reset: CSTS=0xffffffff, ... failed (134)"
>     nvme_dev_disable
>
> But I think the NVMe device was powered down to D3cold somewhere
> before 39.971050.  I don't know if the power-controller messages at
> 18.921811 have any connection, and I don't know why ASPM would be
> related.

I highly doubt they're connected. These threads are relevant:
https://lore.kernel.org/all/20250701114733.636510-1-ulf.hansson@linaro.org/
https://lore.kernel.org/all/20250909111130.132976-1-ulf.hansson@linaro.org/
https://lore.kernel.org/all/20251007094312.590819-1-ulf.hansson@linaro.org/

TL;DR: Those warnings will (likely) be downgraded to 'info'.

Cheers,
  Diederik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
