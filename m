Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80914C87FCC
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jul 2025 15:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iWQhxRIIMmBl5ngJv9/88agbV6fang2XxlZe4yJnHkU=; b=WQ17JyerixAZML
	lIiYW8lb3OwJ9oAPMcUeQEjjzvIGXq4M5IqAHcqKj8/ccjtOcgTwICGHpnISqS/gcXf3nJluK7pQl
	OCY+m60s1kX/aTk4h6aXuQJisnxjHxEjYA+mk3BUAig++q+ortY2295mPzZoxMKLeMfhqj4/RSJaU
	G1gXKDkkxzU19bHC+Iku27tW874UNtBLIGFIeeKmOoa53wi/x4sbRae3eGj7enFC+J09+uMpsOQFi
	r41EdsCVtOmclIT5wRMo4UZWQIDr1l6bcbt0IAIn1xo4+ad0/FGlkp1vGy28QWJ0NPi/MsN3fGFxn
	i92VRZUqsNM/ug7STfIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueFNw-00000002vv9-2egu;
	Tue, 22 Jul 2025 15:58:32 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDzg-00000002hw8-1MGw
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Jul 2025 14:29:25 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-b34ab678931so4046004a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Jul 2025 07:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753194563; x=1753799363; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=w4j/dqB0FEJVP++msFICUJGBS7c5vIhwDliD0r1Ztug=;
        b=v8bOqbzCC/qOSdQhmwVSzPKJqRt2OArTJyvUuvDL1xuDvd8+B0YMqh39jL5tFIvJfX
         vdMRT/e6RVnsDw2AYHaSVIOtL512T4rFDuQDz6/zyH98WxIwGndvPqPttUpeC24mBiLK
         PQtIe1RdjGAM4wFzbMEjQsXd91R5faoL0f9ieIy4UQ8jOQMlkdEM9zT7vfQh9U/aCZ76
         ne4LYtCUZgULdPbjIhNpKXCK5c9aHBELddDbQ61Ljjzeh3sY2mHbTglIdT9QxIk2KH7H
         1WS3YNpnGlNtwrCXnEqP+WwtqX0bOXY35lodP2WewOIL0ZyCFVoBpHqd35aeOPVdJ9Nu
         MoIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753194563; x=1753799363;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w4j/dqB0FEJVP++msFICUJGBS7c5vIhwDliD0r1Ztug=;
        b=ZxSVmL2ji5sxkoTommB2iyA6n/jnJoCx3cLeva4p0SM7bhE0KpW1LPbN2fFbO78Izs
         qItesCNWSdpvePQqdkI7dR4jLL6Qa6SvAJS+GXjhxXfO79jVH+n4DaxuZMWo4DWcEqMt
         HZJpuuaqbRjE2YtSPE9LF/WZHi1qF7hLMhRVBvst5rK8iK2kXj0lBtJs4mCLC8khl0iE
         qWk2BNipKQtSlAqKflSmqM/o8W1JBg4fvrJGyCIs/VF8GPYplqtNLc5Fj6kB6jgHNI4g
         KizmKw26yoKFrfdH80BZZqDqRxkiHwR6U9ncP7achOqsvTxNrmtrFwyjEiF0VPaEmRDV
         bW7Q==
X-Gm-Message-State: AOJu0YxzKK8HnVDzILOqxkkVw4SQ6cp8m1EmrKgGMxtUronuKbX62roW
	f4HdrRtjt1MBFpGlpyAV875BOGQ6ef5KyvGq8HS/P42BzF3c+ezynps133pjPe/NXc64xECur2A
	G5QZjLsG1TMqlzcuBPG2QPdL8P4ZfmzOWfSLKq8apsn/j4z0gG461W9s=
X-Gm-Gg: ASbGnct0j+7nSlLpm3xgONyd7wgOMaPf/YhlaTxdp75DjzIzD3s2+vKsq6yMKwbWZ3c
	sFAFAzsOIBSjVEItD3Gaki6LlSp5bQ5hl0mylkk5Yti56Scg5nvqNNXWqeyWhpO4rX3kFD4SNnA
	pHusNDW1TpafYnHfj5dn8uup/SN785vHdUURBCMe3hfLtdH/KvYBiPmX+oUEJ2RkR4k0/nf/uY4
	rx9mgr+p1d4dPzUKqnF01pCHo9phXqxaSgjW0K1
X-Google-Smtp-Source: AGHT+IGViVGo30JiX8Iobzc1nz2CMFoTAV0xD2CPDCL3v8RSJq2399IbiFlY9qPHicdWf4XFVuhv/Tq4f+y6dIWOKcQ=
X-Received: by 2002:a17:90b:2710:b0:311:fde5:c4c2 with SMTP id
 98e67ed59e1d1-31cc2512f33mr21973154a91.1.1753194562844; Tue, 22 Jul 2025
 07:29:22 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 22 Jul 2025 19:59:11 +0530
X-Gm-Features: Ac12FXy-ZjVvt-T4i3MttzsHoSjov0ZMbtIf-x7c-wsH5Vg-oeIRD3f4bfuDeLg
Message-ID: <CA+G9fYupPsQoBrtF=-WT0nSy6m+yG1p9m68Z18Bp-Y=QMFD_tQ@mail.gmail.com>
Subject: next-20250717: arm64: rk3399-rock-pi-4b: NFS mount failure with 64K
 page size
To: linux-rockchip@lists.infradead.org, linux-mm <linux-mm@kvack.org>, 
	Netdev <netdev@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	lkft-triage@lists.linaro.org, Linux Regressions <regressions@lists.linux.dev>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrew Morton <akpm@linux-foundation.org>, 
	"David S. Miller" <davem@davemloft.net>, Arnd Bergmann <arnd@arndb.de>, 
	Dan Carpenter <dan.carpenter@linaro.org>, Anders Roxell <anders.roxell@linaro.org>, 
	Ben Copeland <benjamin.copeland@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_072924_374666_C851CF38 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
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

The rk3399-rock-pi-4b device fails to mount the root filesystem over
NFS when the kernel is built with 64K page size.
CONFIG_ARM64_64K_PAGES=y

This regression was first observed with the Linux next-20250717 tag
and continues to persist through next-20250722.

Device: rk3399-rock-pi-4b
Build Configuration: lkftconfig-64k_page_size

Regression Window:

 Good: next-20250716
 Bad: next-20250717.. Still Bad: next-20250722

Kernel Config Impact:
CONFIG_ARM64_64K_PAGES=y  - NFS mount fails
CONFIG_ARM64_4K_PAGES=y  - NFS mount works as expected

Regression Analysis:
- New regression? Yes
- Reproducibility? Yes

Boot regression:  next-20250717 arm64 rk3399-rock-pi-4b NFS mount
failure with 64K page size

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

## Boot log

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 6.16.0-rc6-next-20250717
(tuxmake@tuxmake) (aarch64-linux-gnu-gcc (Debian 13.3.0-16) 13.3.0,
GNU ld (GNU Binutils for Debian) 2.44) #1 SMP PREEMPT @1752747461
[    0.000000] KASLR disabled due to lack of seed
[    0.000000] Machine model: Radxa ROCK Pi 4B
[    0.000000] efi: UEFI not found.
[    0.000000] earlycon: uart0 at MMIO32 0x00000000ff1a0000 (options
'1500000n8')
[    0.000000] printk: legacy bootconsole [uart0] enabled
[    0.000000] OF: reserved mem: Reserved memory: No reserved-memory
node in the DT
[    0.000000] NUMA: Faking a node at [mem
0x0000000000200000-0x00000000f7ffffff]

<trim>

[    6.520442] Sending DHCP requests ..
[   13.295867] platform sdio-pwrseq: deferred probe pending:
pwrseq_simple: reset control not ready
[   13.295887] dwmmc_rockchip fe310000.mmc: IDMAC supports 32-bit address mode.
[   13.296260] rockchip-pm-domain
ff310000.power-management:power-controller: sync_state() pending due
to fe310000.mmc
[   13.296278] rockchip-pm-domain
ff310000.power-management:power-controller: sync_state() pending due
to ff650000.video-codec
[   13.297085] dwmmc_rockchip fe310000.mmc: Using internal DMA controller.
[   13.297660] rockchip-pm-domain
ff310000.power-management:power-controller: sync_state() pending due
to ff660000.video-codec
[   13.298653] dwmmc_rockchip fe310000.mmc: Version ID is 270a
[   13.299536] rockchip-pm-domain
ff310000.power-management:power-controller: sync_state() pending due
to ff680000.rga
[   13.300164] dwmmc_rockchip fe310000.mmc: DW MMC controller at irq
49,32 bit host data width,256 deep fifo
[   13.301117] rockchip-pm-domain
ff310000.power-management:power-controller: sync_state() pending due
to ff880000.i2s
[   13.304227] rockchip-pm-domain
ff310000.power-management:power-controller: sync_state() pending due
to ff8a0000.i2s
[   13.305148] rockchip-pm-domain
ff310000.power-management:power-controller: sync_state() pending due
to ff8f0000.vop
[   13.306071] rockchip-pm-domain
ff310000.power-management:power-controller: sync_state() pending due
to ff900000.vop
[   13.307009] rockchip-pm-domain
ff310000.power-management:power-controller: sync_state() pending due
to ff940000.hdmi
[   13.307937] rockchip-pm-domain
ff310000.power-management:power-controller: sync_state() pending due
to ff9a0000.gpu
[   14.620509] ., OK
[   14.636949] IP-Config: Got DHCP answer from 10.66.16.15, my address
is 10.66.30.7
[   14.637647] IP-Config: Complete:
[   14.637955]      device=eth0, hwaddr=0a:fb:82:cd:ed:a8,
ipaddr=10.66.30.7, mask=255.255.240.0, gw=10.66.16.1
[   14.638845]      host=10.66.30.7, domain=lkftlab, nis-domain=(none)
[   14.639417]      bootserver=0.0.0.0, rootserver=10.66.16.116, rootpath=
[   14.639440]      nameserver0=10.66.16.15
[   14.641679] clk: Disabling unused clocks
[   14.646347] dw-apb-uart ff1a0000.serial: forbid DMA for kernel console
[   14.647091] check access for rdinit=/init failed: -2, ignoring
[   14.762496] VFS: Mounted root (nfs filesystem) on device 0:22.
[   14.763768] devtmpfs: mounted
[   14.775761] Freeing unused kernel memory: 4928K
[   14.776566] Run /sbin/init as init process
[   95.816464] random: crng init done
[  195.556677] nfs: server 10.66.16.116 not responding, still trying
..
[  195.556703] nfs: server 10.66.16.116 not responding, still trying
[  195.556869] nfs: server 10.66.16.116 not responding, still trying
[  195.557010] nfs: server 10.66.16.116 not responding, still trying
[  195.557055] nfs: server 10.66.16.116 not responding, still trying
[  195.557114] nfs: server 10.66.16.116 not responding, still trying
[  195.557166] nfs: server 10.66.16.116 not responding, still trying
[  195.557217] nfs: server 10.66.16.116 not responding, still trying
[  195.557269] nfs: server 10.66.16.116 not responding, still trying
[  195.557304] nfs: server 10.66.16.116 not responding, still trying
[  227.459759] nfs: server 10.66.16.116 OK
[  227.459868] nfs: server 10.66.16.116 OK
[  227.681008] nfs: server 10.66.16.116 OK
[  319.645474] nfs: server 10.66.16.116 OK
[  407.677657] nfs: server 10.66.16.116 OK
[  499.834818] nfs: server 10.66.16.116 OK
[  587.895692] nfs: server 10.66.16.116 OK
[  680.052774] nfs: server 10.66.16.116 OK
[  768.113810] nfs: server 10.66.16.116 OK
[  860.270785] nfs: server 10.66.16.116 OK
#
[  948.331418] nfs: server 10.66.16.116 OK
#
[ 1096.679211] nfs: server 10.66.16.116 OK
#
[ 1274.856436] nfs: server 10.66.16.116 OK
#
[ 1488.985700] nfs: server 10.66.16.116 OK


## Source
* Git tree: https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next.git
* Project: https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20250717/
* Git sha: 024e09e444bd2b06aee9d1f3fe7b313c7a2df1bb
* Git describe: 6.16.0-rc6-next-20250717
* kernel version: next-20250717
* Architectures: arm64 (rock-pi-4b)
* Toolchains: gcc-13
* Kconfigs: defconfig+64K page size

## Test
* Test log: https://qa-reports.linaro.org/api/testruns/29168904/log_file/
* Test LAVA: https://lkft.validation.linaro.org/scheduler/job/8364278#L924
* Test run: https://regressions.linaro.org/lkft/linux-next-master/next-20250717/testruns/1662101/
* Test plan: https://tuxapi.tuxsuite.com/v1/groups/linaro/projects/lkft/tests/2zzwHDuV3xvZBKkAtqlmroSxuIS
* Build link: https://storage.tuxsuite.com/public/linaro/lkft/builds/2zzwEbz0aS3AtluE2oRQ9gMvFTY/
* Kernel config:
https://storage.tuxsuite.com/public/linaro/lkft/builds/2zzwEbz0aS3AtluE2oRQ9gMvFTY/config


--
Linaro LKFT
https://lkft.linaro.org

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
