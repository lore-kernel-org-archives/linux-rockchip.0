Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8088BCCD193
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 22:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=fz9Qc0guoQn2OKftT0R3Nd5BTWKIQ8g9IJNCgxvCtlo=; b=c7OL++iXyo0ZP9
	+kpTdaeHwx+59dMbM4sSJnlnCn1PSyu0YO1LIOAvDVkjFQ7LL+koNfGe+kNmSB80RUQ46jkjIoylv
	sqB2+vH2W432TSwdV/JeODL0kX2KYGysZXaFl7gp9nrK+PN+ir3LcXqddWC+eae0FdYtlhEQhtEDW
	O+c55t3DwB/MSR3gJ+oM55Y2flGaZbm7a8bIz365WlCtikoiT1fckf7zKy7SAjsQ2ASkcV1Mn5N/e
	P2ybVtuCtpN7lyeRtM+Kp1iQxc7FPnNlhhFmlnZWgUl9KJRqH/mnGFs2+Zp8uM2NZeNN8p8YAGOza
	E8/mJqq4W1BEv7QhrKEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9AKL-000000032S7-2oCC;
	Wed, 15 Oct 2025 22:50:37 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9AKJ-000000032Rz-365V
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Oct 2025 22:50:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CE1A460323;
	Wed, 15 Oct 2025 22:50:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C64CC4CEF8;
	Wed, 15 Oct 2025 22:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760568634;
	bh=YLBO0n7kCNA2DNr4AULWGXKmK1HQxkDhSaZZFEgXrjw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=AUvJmCsSG4A8dOgYSfL3n/ufhUIE/Ip9vzQ6rrDJrXcsR7571piThJsUq7u6K65Cd
	 57tGEB3YaFAQ6OBlhXIhEnEYxnIl3qPqRdaXCDZlUzT36zCH6HHUDOIFC/0l86h4S/
	 cDKUb8kw3Dgpf2E2jE6lli1G3V4seucF4/bKrhO/NOb0dkP8QLv2JdyPv3IeADCvIU
	 F/+NJIuDi9qIn9oH407Ws30IHA1spx6HPn1NF0YsxM4gEFas8vJSZex+PFQNOfNjkG
	 FWnT8PB5YDapki8wyOGfGRhvgXzrNTLYZQA0+XHfqBR4OKbhvYc93OI6pitZp2ABc6
	 ZM+kxKC/7W54w==
Date: Wed, 15 Oct 2025 17:50:33 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: FUKAUMI Naoki <naoki@radxa.com>, manivannan.sadhasivam@oss.qualcomm.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
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
	linux-rockchip@lists.infradead.org, regressions@lists.linux.dev
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
Message-ID: <20251015225033.GA945930@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DDIW7ZP5K1VR.2I7VW56B9CZLF@cknow-tech.com>
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

On Wed, Oct 15, 2025 at 02:26:30PM +0200, Diederik de Haas wrote:
> On Tue Oct 14, 2025 at 8:49 PM CEST, Bjorn Helgaas wrote:
> > On Wed, Oct 15, 2025 at 01:30:16AM +0900, FUKAUMI Naoki wrote:
> >> I've noticed an issue on Radxa ROCK 5A/5B boards, which are based on the
> >> Rockchip RK3588(S) SoC.
> >> 
> >> When running Linux v6.18-rc1 or linux-next since 20250924, the kernel either
> >> freezes or fails to probe M.2 Wi-Fi modules. This happens with several
> >> different modules I've tested, including the Realtek RTL8852BE, MediaTek
> >> MT7921E, and Intel AX210.
> >> 
> >> I've found that reverting the following commit (i.e., the patch I'm replying
> >> to) resolves the problem:
> >> commit f3ac2ff14834a0aa056ee3ae0e4b8c641c579961
> >
> > Thanks for the report, and sorry for the regression.
> >
> > Since this affects several devices from different manufacturers and (I
> > assume) different drivers, it seems likely that there's some issue
> > with the Rockchip end, since ASPM probably works on these devices in
> > other systems.  So we should figure out if there's something wrong
> > with the way we configure ASPM, which we could potentially fix, or if
> > there's a hardware issue and we need some king of quirk to prevent
> > usage of ASPM on the affected platforms.
> >
> > Can you collect a complete dmesg log when booting with
> >
> >   ignore_loglevel pci=earlydump dyndbg="file drivers/pci/* +p"
> >
> > and the output of "sudo lspci -vv"?
> 
> I have a Rock 5B as well, but I don't have a Wi-Fi module, but I do have
> a NVMe drive connected. That boots fine with 6.17, but I end up in a
> rescue shell with 6.18-rc1. I haven't verified that it's caused by the
> same commit, but it does sound plausible.

FWIW, my expectation is that booting with "pcie_aspm=off" should
effectively avoid the ASPM enabling and behave similarly to reverting
f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for
devicetree platforms").  My hope was that we could boot that way and
incrementally enable ASPM via sysfs a device at a time for testing.

If hardware implements ASPM correctly, enabling it should have no
functional impact at all, so we might be tripping over some kind of
hardware bug or maybe a generic Linux issue (ASPM has to be enabled in
a very specific order, and it's conceivable we messed that up).

> On this device, the NVMe isn't strictly needed (I used it to compile my
> kernels on), so I added 'noauto' to the NVMe line in /etc/fstab ... and
> that made it boot successfully into 6.18-rc1. Then running the 'mount'
> command wrt that NVMe drive failed with this message:
> 
>   EXT4-fs (nvme0n1p1): unable to read superblock
> 
> The log of my attempts can be found here:
> https://paste.sr.ht/~diederik/f435eb258dca60676f7ac5154c00ddfdc24ac0b7
> 
> > When the kernel freezes, can you give us any information about where,
> > e.g., a log or screenshot?
> 
> For me, there is no kernel freeze. I ended up in a rescue shell as it
> couldn't mount the NVMe drive. As described above, when not letting it
> auto-mount that drive, the boot completed normally.

Thanks for the log, it's very useful.  This is pieced together from
the serial console log and the "dmesg --level" output, but I think
it's all the same boot:

  [    2.872094] rockchip-dw-pcie a40000000.pcie: PCI host bridge to bus 0000:00
  [    2.885904] pci 0000:00:00.0: [1d87:3588] type 01 class 0x060400 PCIe Root Port
  [    2.888237] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
  [    3.143823] pci 0000:01:00.0: [144d:a80a] type 00 class 0x010802 PCIe Endpoint
  [    3.144646] pci 0000:01:00.0: BAR 0 [mem 0x00000000-0x00003fff 64bit]
  [    3.162748] pci 0000:01:00.0: BAR 0 [mem 0xf0200000-0xf0203fff 64bit]: assigned
  [    3.298198] nvme nvme0: pci function 0000:01:00.0
  [    3.298901] nvme 0000:01:00.0: enabling device (0000 -> 0002)
  [    3.316695] nvme nvme0: D3 entry latency set to 10 seconds
  ...
  [   18.921811] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdad0000.npu
  [   18.922737] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdb50000.video-codec
  ...
  [   39.971050] nvme nvme0: controller is down; will reset: CSTS=0xffffffff, PCI_STATUS read failed (134)
  [   39.971945] nvme nvme0: Does your device have a faulty power saving mode enabled?
  [   39.972609] nvme nvme0: Try "nvme_core.default_ps_max_latency_us=0 pcie_aspm=off pcie_port_pm=off" and report a bug
  [   42.357637] nvme0n1: I/O Cmd(0x2) @ LBA 0, 8 blocks, I/O Error (sct 0x3 / sc 0x71)
  [   42.358644] I/O error, dev nvme0n1, sector 0 op 0x0:(READ) flags 0x80700 phys_seg 1 prio class 2
  [   42.391612] nvme 0000:01:00.0: Unable to change power state from D3cold to D0, device inaccessible
  [   42.443644] nvme nvme0: Disabling device after reset failure: -19
  [   42.459544] Buffer I/O error on dev nvme0n1, logical block 0, async page read
  [   42.607749] EXT4-fs (nvme0n1p1): unable to read superblock

The earlydump info shows the 00:00.0 Root Port had I/O+ Mem+
BusMaster+ (0x0107) and the 01:00.0 NVMe initially had I/O- Mem-
BusMaster- (0x0000).  We were able to enumerate the NVMe device and
assign its BAR, and the nvme driver turned on Mem+ (0x002).

  nvme_timeout
    csts = readl(dev->bar + NVME_REG_CSTS)
    if (nvme_should_reset(csts))
      nvme_warn_reset(csts)
        result = pci_read_config_word(PCI_STATUS)
        "controller is down; will reset: CSTS=0xffffffff, ... failed (134)"
    nvme_dev_disable

But I think the NVMe device was powered down to D3cold somewhere
before 39.971050.  I don't know if the power-controller messages at
18.921811 have any connection, and I don't know why ASPM would be
related.

In any event, the NVME_REG_CSTS mem read returned ~0, probably because
the device didn't respond and the RC fabricated ~0.  The PCI_STATUS
config read failed with 134 (PCIBIOS_DEVICE_NOT_FOUND).  The config
read should be this path, which probably failed because the link was
down, which would happen if NVMe is in D3cold:

  pci_read_config_word
    if (pci_dev_is_disconnected())
      return PCIBIOS_DEVICE_NOT_FOUND
    pci_bus_read_config_word
      ret = bus->ops->read
        dw_pcie_rd_other_conf
          pci_generic_config_read
            addr = bus->ops->map_bus
              dw_pcie_other_conf_map_bus
                if (!dw_pcie_link_up())
                  return pci->ops->link_up
                    rockchip_pcie_link_up   # .link_up
                  return NULL               # link was down
            if (!addr)                      # .map_bus() failed b/c link down
              return PCIBIOS_DEVICE_NOT_FOUND

Your lspci shows no response, i.e., config reads to the device
returned ~0:

  0000:01:00.0 Non-Volatile memory controller: Samsung Electronics Co Ltd NVMe SSD Controller PM9A1/PM9A3/980PRO (prog-if 02 [NVM Express])
        Subsystem: Samsung Electronics Co Ltd SSD 980 PRO
        !!! Unknown header type 7f
        Interrupt: pin ? routed to IRQ 94

The Root Port shows a Completion Timeout error, which might be a
consequence of NVMe being powered off:

  0000:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01) (prog-if 00 [Normal decode])
        Capabilities: [100 v2] Advanced Error Reporting
                UESta:  DLP- SDES- TLP- FCP- CmpltTO+ CmpltAbrt- UnxCmplt- RxOF- MalfTLP-

Bottom line, I don't think I can get any further with this particular
issue until we confirm that f3ac2ff14834 ("PCI/ASPM: Enable all
ClockPM and ASPM states for devicetree platforms") is the cause.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
