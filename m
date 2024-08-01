Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39842C3DA64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 19:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=smwAx0RfmOqbmQ6OD04eLc6MO3KmIlTmD8MWzd2BF4E=; b=Q2Xqit6JbxBg4B
	MKPJIgtYtdjugRGPs//eoRZaEtcfYSHTNftGmvPY0QN5fK4VOMe9KJm5W98C4IypKmlJwHzqgFv/S
	ajfyNEp63ZH93lZGIN+QlRRSuz6KI0wDzYOq4gRBmHZxVNK/hThK0xDt9qmdoZ3HZFPiHI3Ui/efk
	nWUGLAqHQCiUbSJtWEcuQXAwei7WY2fQBD2cbSD/MDx8TDJG6WMsBagwRB+nmxc4JPWSqaOsplo2o
	s+Yqu6/Sx/pu0jVfkWjc1pfsA0qnAuNHfIFqjV64Q1yvK0+mnwe4JTzjD10npldX/kpp8rv7IBBnx
	TNgYLpEnDX7c3aOomn9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZb72-00000006U3h-0r9y;
	Thu, 01 Aug 2024 19:05:20 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZb6y-00000006U38-14CT;
	Thu, 01 Aug 2024 19:05:18 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-e0b10e8b6b7so6123097276.2;
        Thu, 01 Aug 2024 12:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722539114; x=1723143914; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Wy1fSK5TbCFhDaKs9s6dA1EYcwoVObyVPGSvPgScVEI=;
        b=Pf57pKHhyvI1X0LaAT6JMvhug2vQUyADzRqYFCtiXa4LOAxgQGaOmfZ/ouum6MHwjY
         8ekI2xjZ7lJbcerUvXcisBxNPtyGzRpD7qTlppvzq1MCImk2a7QEQygXF8/B6dq25RqO
         INEweOQcLmWYZ7TSGiotjH0SKJMDBJBZ5MUMgJSD9v/MqG07vpTP2NLm68U8uNyZR5kU
         q+pI4RmKUQr06LxGB1ycvFmuP7AoVtLjgyR43yJKRjecpBDN5geQ+kQ14Jb8DiJilebE
         lBAZ4XHR6ts7jg63QDhFS4AxGOB1ttF/j6h+VHaef5fhC2a8p2PsypASqfVraS50gPab
         m86Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722539114; x=1723143914;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wy1fSK5TbCFhDaKs9s6dA1EYcwoVObyVPGSvPgScVEI=;
        b=PDTiai0c7E8/sxolKe1kemcGsgpEY2dkexjqidVE5EeccPkpYQwX4+99maNVS5OJnh
         mS0rh85XE6u2NvwWjYPlkOaEAGMkPY7R8ucPvS3cMLkdTpNcYCNGraeQFLqY9Ss7Co4U
         pCgfkC6w5IsmuGRApKZieQisSJ9zuToYCNd4q5Nmtq9rh+VPpHXPLPQv2t6KKgqX9dvp
         OOU2BHNs39riPYUuOckziawP7d167+r5N5mgtlovhC2j53a3h+SHuIr0+mOL1ZM3Nnsx
         EQvKXm/Tm9sCM6iuDTlV6UGN9u/KF8RrExWVGee5hhpOM7utUZzz8zpZrKgmDhC4BixS
         Gj3g==
X-Forwarded-Encrypted: i=1; AJvYcCWzWitkC9XGH3mRjR5CDbmLbxzppt3lBhfjTLAMIsPvAshgzg0XoaOwM423wWRtkJMKmwWp76GXl+lfnyNdWjXqpVrvQslcsAn3CtbzGXm448VQQM0=
X-Gm-Message-State: AOJu0Yx7jqbUZnAB9rmwe+MtRNkGuGIFMyyOl7Q4L0VKcvhy9/69bG5T
	5KyLHEs5+5O0+SlggSUuPWXIhQuwsSh4VzMOIkp3wxsnw/oV0OoLoBeTSiNJU8ymJ7JbdNg1/vu
	ais5/8hUqojb2APZoUjg9Cnkxo5V7DgNluig=
X-Google-Smtp-Source: AGHT+IFkNPsoHcR3eqLl+QNUye/2VRdwqpBKvsZYnHazZuJyS4rcR8Oi7mmiJ/9OpDTpPCuiYmqnX0zNybYthc9uRqk=
X-Received: by 2002:a5b:688:0:b0:e02:e12d:88c7 with SMTP id
 3f1490d57ef6-e0bde528e27mr1315199276.51.1722539114250; Thu, 01 Aug 2024
 12:05:14 -0700 (PDT)
MIME-Version: 1.0
From: Michael Zimmermann <sigmaepsilon92@gmail.com>
Date: Thu, 1 Aug 2024 21:05:03 +0200
Message-ID: <CAN9vWD+vzqeqZuJaUXMoqTBV26Goji1yPqCoPQwEtu4jhPSjNw@mail.gmail.com>
Subject: rk3588(CM3588) USB issues
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_120516_332731_4D213C49 
X-CRM114-Status: GOOD (  16.02  )
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

Hi,

I have a friendlyelec CM3588 and USB doesn't quite seem to work. I
started with 6.8 but am now mostly testing with 6.11-rc1 since it
fixed the typec ports and pcie bifurcation and both of them seem to
have issues. I'm using fedora coreOS 40 with a self compiled
mainline-mcuboot which simply adds a config and dtb for that board. I
tried many different situations and I'll list a few but here are the
symptoms that can happen when a device is already connected before
powering on the SoC:

1) The system dies after these log lines:
[    6.446287] hub 1-0:1.0: USB hub found
[    6.446713] hub 1-0:1.0: 1 port detected
No watchdog will trigger, the power button doesn't work.

2) The watchdog complains after the same lines as in 1, but the system
is still stuck:
[   36.025461] Modules linked in: dw_mmc(+) phy_rockchip_usbdp(+)
nvme_core rockchip_saradc phy_rockchip_naneng_combphy
phy_rockchip_snps_pcie3 industrialio_triggered_buffer
nvmem_rockchip_otp rtc_hym8563(+) rockchip_dfi typec pl330 kfifo_buf
dw_wdt nvme_auth dwc3 phy_rockchip_inno_usb2 ohci_platform udc_core
adc_keys pwm_rockchip industrialio ohci_hcd ehci_platform ulpi
cpufreq_dt be2iscsi bnx2i cnic uio cxgb4i cxgb4 tls cxgb3i cxgb3 mdio
libcxgbi libcxgb qla4xxx iscsi_boot_sysfs iscsi_tcp libiscsi_tcp
libiscsi scsi_transport_iscsi scsi_dh_rdac scsi_dh_emc scsi_dh_alua
ip6_tables ip_tables fuse dm_multipath

3) The system boots fine but USB doesn't work and the system is
spammed with these logs:
[   29.439659] usb usb6-port1: Cannot enable. Maybe the USB cable is bad?
[   30.583618] usb usb6-port1: Cannot enable. Maybe the USB cable is bad?
[   31.727508] usb usb6-port1: Cannot enable. Maybe the USB cable is bad?

Things I have tried: using an unpowered USB3-hub, using a powered
USB3-hub. Connecting USB3 devices to the USB2 port and vice-versa.
Below only list test results which were done through a powered hub to
exclude skewed results due to power issues.

Keep in mind that the CM3588 has 4 USB ports:
- typeC(which I am not testing)
- USB2
- USB3A
- USB3A connected to the SoCs second typeC port. In the results below
I'll call this USB3AC

I also don't have any low-power usb3 dongles or usb3 drives whose
controllers are expensive enough that I trust them for these tests, So
I'm mostly testing with my Pixel8.

Some test results:

1) Boot with Pixel8 connected to USB3AC. The behavior is random.
Sometimes I have this:
...
[    6.237348] ohci-platform fc840000.usb: Generic Platform OHCI controller
[    6.238187] ohci-platform fc840000.usb: new USB bus registered,
assigned bus number 1
[    6.239009] ohci-platform fc840000.usb: irq 42, io mem 0xfc840000
[    6.242667] ehci-platform fc800000.usb: EHCI Host Controller
[    6.244480] ehci-platform fc800000.usb: new USB bus registered,
assigned bus number 2
[    6.245294] ehci-platform fc800000.usb: irq 44, io mem 0xfc800000
[    6.251160] ehci-platform fc880000.usb: EHCI Host Controller
[    6.251694] ohci-platform fc8c0000.usb: Generic Platform OHCI controller
[    6.252503] ohci-platform fc8c0000.usb: new USB bus registered,
assigned bus number 3
[    6.253271] ohci-platform fc8c0000.usb: irq 46, io mem 0xfc8c0000
[    6.253643] ehci-platform fc800000.usb: USB 2.0 started, EHCI 1.00
[    6.253850] ehci-platform fc880000.usb: new USB bus registered,
assigned bus number 4
[    6.254502] usb usb2: New USB device found, idVendor=1d6b,
idProduct=0002, bcdDevice= 6.11
[    6.255121] ehci-platform fc880000.usb: irq 47, io mem 0xfc880000
[    6.255777] usb usb2: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[    6.256967] usb usb2: Product: EHCI Host Controller
[    6.257407] usb usb2: Manufacturer: Linux
6.11.0-0.rc1.20240729gitdc1c8034e31b.16.fc41.aarch64 ehci_hcd
[    6.258231] usb usb2: SerialNumber: fc800000.usb
[    6.259129] hub 2-0:1.0: USB hub found
[    6.259521] hub 2-0:1.0: 1 port detected
[    6.263349] ehci-platform fc880000.usb: USB 2.0 started, EHCI 1.00
[    6.264046] usb usb4: New USB device found, idVendor=1d6b,
idProduct=0002, bcdDevice= 6.11
[    6.264794] usb usb4: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[    6.265436] usb usb4: Product: EHCI Host Controller
[    6.265867] usb usb4: Manufacturer: Linux
6.11.0-0.rc1.20240729gitdc1c8034e31b.16.fc41.aarch64 ehci_hcd
[    6.266695] usb usb4: SerialNumber: fc880000.usb
[    6.268464] hub 4-0:1.0: USB hub found
[    6.268876] hub 4-0:1.0: 1 port detected
[    6.297227] usb usb1: New USB device found, idVendor=1d6b,
idProduct=0001, bcdDevice= 6.11
[    6.297982] usb usb1: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[    6.298627] usb usb1: Product: Generic Platform OHCI controller
[    6.299148] usb usb1: Manufacturer: Linux
6.11.0-0.rc1.20240729gitdc1c8034e31b.16.fc41.aarch64 ohci_hcd
[    6.299976] usb usb1: SerialNumber: fc840000.usb
[    6.301706] hub 1-0:1.0: USB hub found
[    6.302069] hub 1-0:1.0: 1 port detected
[    6.311456] usb usb3: New USB device found, idVendor=1d6b,
idProduct=0001, bcdDevice= 6.11
[    6.312198] usb usb3: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[    6.312845] usb usb3: Product: Generic Platform OHCI controller
[    6.313371] usb usb3: Manufacturer: Linux
6.11.0-0.rc1.20240729gitdc1c8034e31b.16.fc41.aarch64 ohci_hcd
[    6.314206] usb usb3: SerialNumber: fc8c0000.usb
[    6.315073] hub 3-0:1.0: USB hub found
[    6.315457] hub 3-0:1.0: 1 port detected
[    6.316795] sdhci: Secure Digital Host Controller Interface driver
[    6.317390] sdhci: Copyright(c) Pierre Ossman
[    6.325998] Synopsys Designware Multimedia Card Interface Driver
[    6.335776] dma-pl330 fea10000.dma-controller: Loaded driver for
PL330 DMAC-241330
[    6.336514] dma-pl330 fea10000.dma-controller:
DBUFF-128x8bytes Num_Chans-8 Num_Peri-32 Num_Events-16
[    6.366285] sdhci-pltfm: SDHCI platform and OF driver helper
[   36.026322] watchdog: Watchdog detected hard LOCKUP on cpu 5
[   36.026837] Modules linked in: phy_rockchip_usbdp(+) typec
phy_rockchip_naneng_combphy(+) sdhci_pltfm phy_rockchip_snps_pcie3
dw_mmc_rockchip nvme_core(+) rockchip_saradc rockchip_dfi dw_mmc_pltfm
industrialio_triggered_buffer cqhci pl330(+) dw_mmc kfifo_buf sdhci
dwc3 nvme_auth ehci_platform phy_rockchip_inno_usb2 pwm_rockchip
adc_keys cpufreq_dt udc_core industrialio ulpi ohci_platform ohci_hcd
be2iscsi bnx2i cnic uio cxgb4i cxgb4 tls cxgb3i cxgb3 mdio libcxgbi
libcxgb qla4xxx iscsi_boot_sysfs iscsi_tcp libiscsi_tcp libiscsi
scsi_transport_iscsi scsi_dh_rdac scsi_dh_emc scsi_dh_alua ip6_tables
ip_tables fuse dm_multipath
[   36.029321] watchdog: Watchdog detected hard LOCKUP on cpu 0
[   36.031733] Sending NMI from CPU 4 to CPUs 5:
[   36.032228] Modules linked in: phy_rockchip_usbdp(+) typec
phy_rockchip_naneng_combphy(+) sdhci_pltfm phy_rockchip_snps_pcie3
dw_mmc_rockchip nvme_core(+) rockchip_saradc rockchip_dfi dw_mmc_pltfm
industrialio_triggered_buffer cqhci pl330(+) dw_mmc kfifo_buf sdhci
dwc3 nvme_auth ehci_platform phy_rockchip_inno_usb2 pwm_rockchip
adc_keys cpufreq_dt udc_core industrialio ulpi ohci_platform ohci_hcd
be2iscsi bnx2i cnic uio cxgb4i cxgb4 tls cxgb3i cxgb3 mdio libcxgbi
libcxgb qla4xxx iscsi_boot_sysfs iscsi_tcp libiscsi_tcp libiscsi
scsi_transport_iscsi scsi_dh_rdac scsi_dh_emc scsi_dh_alua ip6_tables
ip_tables fuse dm_multipath
[   66.371321] rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
[   66.371862] rcu:     0-...!: (0 ticks this GP) idle=47c0/0/0x0
softirq=1091/1091 fqs=0 (false positive?)
[   66.372678] rcu:     6-...!: (1 GPs behind)
idle=7b84/1/0x4000000000000000 softirq=1557/1558 fqs=0
[   66.373447] rcu:     (detected by 4, t=60004 jiffies, g=1689, q=29 ncpus=8)
[   66.374039] Sending NMI from CPU 4 to CPUs 0:
[   76.375676] Sending NMI from CPU 4 to CPUs 6:
[   86.377312] rcu: rcu_preempt kthread timer wakeup didn't happen for
80004 jiffies! g1689 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x402
[   86.378313] rcu:     Possible timer handling issue on cpu=5 timer-softirq=315
[   86.378917] rcu: rcu_preempt kthread starved for 80009 jiffies!
g1689 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x402 ->cpu=5
[   86.379834] rcu:     Unless rcu_preempt kthread gets sufficient CPU
time, OOM is now expected behavior.
[   86.380633] rcu: RCU grace-period kthread stack dump:
[   86.381077] task:rcu_preempt     state:I stack:0     pid:18
tgid:18    ppid:2      flags:0x00000008
[   86.381899] Call trace:
[   86.382119]  __switch_to+0xc4/0xe8
[   86.382432]  __schedule+0x2a0/0x798
[   86.382747]  schedule+0x3c/0xe0
[   86.383031]  schedule_timeout+0x9c/0x1a8
[   86.383382]  rcu_gp_fqs_loop+0x124/0x580
[   86.383733]  rcu_gp_kthread+0x180/0x200
[   86.384075]  kthread+0xf4/0x110
[   86.384359]  ret_from_fork+0x10/0x20
[   86.384681] rcu: Stack dump where RCU GP kthread last ran:
[   86.385163] Sending NMI from CPU 4 to CPUs 5:
...
and then it hangs. And sometimes it boots, doesn't detect a devices
and keeps spamming the log with "usb usb6-port1: Cannot enable. Maybe
the USB cable is bad?".

2) Boot without anything connected, then connect Pixel8 to USB3A: No
device detected, logs spammed with "usb usb6-port1: Cannot enable.
Maybe the USB cable is bad?".

3) Boot with Pixel8 connected to USB3AC: works just fine. Also works
when I connect it at runtime.

4) Boot with Pixel 8 connected to USB2 port:
...
[    6.331359] hub 4-0:1.0: USB hub found
[    6.331439] input: gpio-keys as /devices/platform/gpio-keys/input/input0
[    6.331756] hub 4-0:1.0: 1 port detected
[    6.334789] usb usb3: New USB device found, idVendor=1d6b,
idProduct=0001, bcdDevice= 6.11
[    6.335530] usb usb3: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[    6.336176] usb usb3: Product: Generic Platform OHCI controller
[    6.336698] usb usb3: Manufacturer: Linux
6.11.0-0.rc1.20240729gitdc1c8034e31b.16.fc41.aarch64 ohci_hcd
[    6.337526] usb usb3: SerialNumber: fc8c0000.usb
[   36.022707] watchdog: Watchdog detected hard LOCKUP on cpu 2
[   36.023240] Modules linked in: rtc_hym8563(+) tcpm dw_mmc gpio_keys
pwm_fan phy_rockchip_usbdp nvme_core phy_rockchip_snps_pcie3
phy_rockchip_naneng_combphy typec cqhci dw_wdt nvmem_rockchip_otp
pl330(+) spi_rockchip sdhci kfifo_buf rockchip_dfi nvme_auth dwc3
phy_rockchip_inno_usb2 pwm_rockchip ohci_platform adc_keys udc_core
ohci_hcd industrialio ehci_platform ulpi cpufreq_dt be2iscsi bnx2i
cnic uio cxgb4i cxgb4 tls cxgb3i cxgb3 mdio libcxgbi libcxgb qla4xxx
iscsi_boot_sysfs iscsi_tcp libiscsi_tcp libiscsi scsi_transport_iscsi
scsi_dh_rdac scsi_dh_emc scsi_dh_alua ip6_tables ip_tables fuse
dm_multipath
[   36.024708] watchdog: Watchdog detected hard LOCKUP on cpu 4
[   36.028171] Sending NMI from CPU 1 to CPUs 2:
[   36.028669] Modules linked in: rtc_hym8563(+) tcpm dw_mmc gpio_keys
pwm_fan phy_rockchip_usbdp nvme_core phy_rockchip_snps_pcie3
phy_rockchip_naneng_combphy typec cqhci dw_wdt nvmem_rockchip_otp
pl330(+) spi_rockchip sdhci kfifo_buf rockchip_dfi nvme_auth dwc3
phy_rockchip_inno_usb2 pwm_rockchip ohci_platform adc_keys udc_core
ohci_hcd industrialio ehci_platform ulpi cpufreq_dt be2iscsi bnx2i
cnic uio cxgb4i cxgb4 tls cxgb3i cxgb3 mdio libcxgbi libcxgb qla4xxx
iscsi_boot_sysfs iscsi_tcp libiscsi_tcp libiscsi scsi_transport_iscsi
scsi_dh_rdac scsi_dh_emc scsi_dh_alua ip6_tables ip_tables fuse
dm_multipath
[   66.336708] rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
[   66.337272] rcu:     4-...0: (1 GPs behind)
idle=afbc/1/0x4000000000000000 softirq=1897/1898 fqs=6846
[   66.338089] rcu:     (detected by 1, t=60005 jiffies, g=1757, q=91 ncpus=8)
[   66.338699] Sending NMI from CPU 1 to CPUs 4:
[   76.340352] rcu: rcu_preempt kthread timer wakeup didn't happen for
17792 jiffies! g1757 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x402
[   76.341374] rcu:     Possible timer handling issue on cpu=3
timer-softirq=6205
[   76.342000] rcu: rcu_preempt kthread starved for 17795 jiffies!
g1757 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x402 ->cpu=3
[   76.342937] rcu:     Unless rcu_preempt kthread gets sufficient CPU
time, OOM is now expected behavior.
[   76.343754] rcu: RCU grace-period kthread stack dump:
[   76.344211] task:rcu_preempt     state:I stack:0     pid:18
tgid:18    ppid:2      flags:0x00000008
[   76.345056] Call trace:
[   76.345287]  __switch_to+0xc4/0xe8
[   76.345617]  __schedule+0x2a0/0x798
[   76.345948]  schedule+0x3c/0xe0
[   76.346247]  schedule_timeout+0x9c/0x1a8
[   76.346613]  rcu_gp_fqs_loop+0x124/0x580
[   76.346979]  rcu_gp_kthread+0x180/0x200
[   76.347337]  kthread+0xf4/0x110
[   76.347637]  ret_from_fork+0x10/0x20
[   76.347975] rcu: Stack dump where RCU GP kthread last ran:
[   76.348470] Sending NMI from CPU 1 to CPUs 3:
...
And then it hangs. It works if I connect it after booting.

5) USB2 stick works on all ports when connected at runtime.

6) Booting with USB2 stick connected to USB3A port: works
7) Booting with USB2 stick connected to USB3AC port: hangs after:
[    6.423500] hub 4-0:1.0: USB hub found
[    6.423870] hub 4-0:1.0: 1 port detected
[    6.602224] rtc-hym8563 6-0051: registered as rtc0
[    6.610981] rtc-hym8563 6-0051: setting system clock to
2024-08-01T18:56:52 UTC (1722538612)

8) Booting with USB2 stick connected to USB2 port: hangs after:
[    6.337067] hub 3-0:1.0: USB hub found
[    6.337494] hub 3-0:1.0: 1 port detected
[    6.338460] rtc-hym8563 6-0051: registered as rtc0
[    6.339744] rtc-hym8563 6-0051: setting system clock to
2024-08-01T18:59:56 UTC (1722538796)
[    6.372577] usb usb2: New USB device found, idVendor=1d6b,
idProduct=0001, bcdDevice= 6.11
[    6.373361] usb usb2: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[    6.374018] usb usb2: Product: Generic Platform OHCI controller
[    6.374573] usb usb2: Manufacturer: Linux
6.11.0-0.rc1.20240729gitdc1c8034e31b.16.fc41.aarch64 ohci_hcd
[    6.375431] usb usb2: SerialNumber: fc8c0000.usb

9) Boot with ch341-uart connected to USB2: works.

I hope that this is enough information for you to start investigating
the issue. I also hope this is reproducible on your side.

Thanks
Michael

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
