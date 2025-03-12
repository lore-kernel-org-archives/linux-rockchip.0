Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BA0AC28B2F
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 16:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:from:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CsLx//3vxE2d1dqLegcz8nkhgtP5kZhDMZ/htxwoVj8=; b=QGhoHirzmfZH2b
	QrV93QUtTTM1tIxTb3+EBJzPEafiNIfCJBsxOtHVkD+NjeD8O4YdPT8nue0zmfOPwNBckBFFR3mjZ
	parYy34Ab6Yh80E5tt5WZDbTMIJtGtlCQNYHTmCIRkpKgI22bA/iNZOs75qh4SkL+nAoQO3hnYh7n
	cQ797Hmf8pK15MNQngG/zmsL6B1TczhEr8kDEG5DJK0HJ4r42SEaop3FUDjS9wQvhFv5mtBpGaSyI
	w3+5PhWB1D3HAkSz1fVUKxDJZRXayWtpo/Ep2q3hmXljucP8dIKVMLyYpegGXrF1tFbIyNpeGDwzd
	p9I7hTpc3+b1Ewc4XM8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsPPx-000000094mN-2lOT;
	Wed, 12 Mar 2025 16:58:53 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsPPv-000000094ly-2hev
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Mar 2025 16:58:52 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-6ff1814102aso9976287b3.1
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Mar 2025 09:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernelci-org.20230601.gappssmtp.com; s=20230601; t=1741798730; x=1742403530; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:reply-to:from:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x5fJTwX2SxXjE4qarbKB4NQDZo79ZBunrNl2zmSbIcY=;
        b=ydof7FWyW5QvGwNK4tv/utPD49EbgyHlOzHiC+9khceen327CEp2kwPfJPTfhMiiZc
         Or1SCrEUx9sinP3JqdBiEeeMaEvCflQCNwuiksAE6m6QTyS9PqTJ2YE6SZ9+8Xz+2OQa
         MMlUypo+6obiC0vNJifgLox9c1KjbZCTAAIdhm1bruk4YNGzQPDfnDEBECmKNrV4xAya
         oSLXhGrsmS/xhxDpUB7pcMmpYGjzCB03Jz4P/4m8dAfLkrOTCAXneYfhlZdyDiAYcNcK
         PdfgZLHdgPCU74RBI52tx8lfXruo7g973EBxL+3HXIl45OijCHx76RCMOBv0LoWFOMZP
         xTQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741798730; x=1742403530;
        h=cc:to:subject:message-id:date:reply-to:from:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x5fJTwX2SxXjE4qarbKB4NQDZo79ZBunrNl2zmSbIcY=;
        b=ZsvxUqUE06RS9qA89MbNNwwG6cLzSUQzl0KR0qekn93ZJsyfd2cemgB87AKzKNon97
         aqSUrcaeXWzk5VNiP+2+EVUQQvqSNb6FRrtt5BV71c2qqg4AXTZ4zYiSVaRnY1bEQp8F
         Dxchnye3BoD8jS4+RBVxRLeFAtdq7drnucQ2RrL2X2f6qDg3sU/R141pPBrxp1T6L0I1
         v2lb8qFmNrA21kyu/74wsw2Vhe0LIguE7jgzK/69jbp5V3+RfPincorigmdB7XA/y2DN
         sWuEIahmAGn85MfWmMbdq4NPXl+ZOuvokJbvlph2JHpuHxVH9Gj4SOvDsQmDfTrP6Cny
         7eQQ==
X-Forwarded-Encrypted: i=1; AJvYcCV81z2u7UIrpXF3wQybuWxow3KARktEgnIGm8pcdgFdfZU9P2un3VV/eaF+zh8CyBhtcsjNT/ldTQEhuwtdTQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxkNZ5BK+pkvaAlL7V3Cjhjs3neKhSLpzIJVuja5PdyUqPc8F/+
	jiYE3J3TiNwz1ioK0C3qY92BFBp61px2GAlt7IV/PbTH5Z6idSfvPtAMZICADK/LF0iI0MCVHSM
	itg9OrkzsSkeF0BvlYMjjvrhnI+PZ3+Hj0IrpOQ==
X-Gm-Gg: ASbGncshsUP9AQtqr6QlEZj8fm7YMWinHBzSp9qtdNyaLs17twRhatRzMDoxg2mYfv2
	CW9gb1eocgRGlsoDpPmVKGAaXFZSfyN9bKlhzn9+33Pu3rgeULcDDKUsdW+Nfoi6Z7EwSI6rHu3
	bvVG2WrXjNZU6AkktDRoIW1XVrTUzNTg8wzlzdnAnmfzQuFizDDEIvB+dzCi0=
X-Google-Smtp-Source: AGHT+IFWnyesURu6esuBRLn1aBOPla62msPKpa5wcqi6hhh+ucZiyhlsnYkTKs0MzyeHQnWmnp4zbhFPHymhWcLQ9Ng=
X-Received: by 2002:a05:690c:62c4:b0:6fe:c4bd:e2ca with SMTP id
 00721157ae682-6ff2bbf2d39mr4843547b3.14.1741798730188; Wed, 12 Mar 2025
 09:58:50 -0700 (PDT)
Received: from 415818378487 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 12 Mar 2025 12:58:48 -0400
Received: from 415818378487 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 12 Mar 2025 12:58:48 -0400
MIME-Version: 1.0
from: KernelCI bot <bot@kernelci.org>
Date: Wed, 12 Mar 2025 12:58:48 -0400
X-Gm-Features: AQ5f1JrGwHN6QiCqkD3mTIkMNXJtTghHmWGfnmFzWq0Sea_CS7trLIUhlzF1PUo
Message-ID: <CACo-S-3LA=2Q503VGiwPm_g-ZP7XRYST-_+yh2xVNvxBDC=C-Q@mail.gmail.com>
Subject: [REGRESSION] next/master: (boot) NULL pointer dereference at virtual
 address 00000000000002a0 [logs...
To: kernelci-results@groups.io
Cc: regressions@lists.linux.dev, gus@collabora.com, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_095851_682864_3FE64739 
X-CRM114-Status: UNSURE (   2.58  )
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
Reply-To: kernelci@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello,

New boot regression found on next/master:

---
 NULL pointer dereference at virtual address 00000000000002a0
[logspec:generic_linux_boot,linux.kernel.null_pointer_dereference]
---

- dashboard: https://d.kernelci.org/i/maestro:160e6c6fbe05a163b029f4e942a1d5b78d55fe65
- giturl: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
- commit HEAD:  9fbcd7b32bf7c0a5bda0f22c25df29d00a872017


Log excerpt:
=====================================================
[    1.993230] Unable to handle kernel NULL pointer dereference at
virtual address 00000000000002a0
[    2.003096] Mem abort info:
[    2.006226]   ESR = 0x0000000096000004
[    2.010421]   EC = 0x25: DABT (current EL), IL = 32 bits
[    2.016365]   SET = 0, FnV = 0
[    2.019781]   EA = 0, S1PTW = 0
[    2.023296]   FSC = 0x04: level 0 translation fault
[    2.028753] Data abort info:
[    2.031969]   ISV = 0, ISS = 0x00000004, ISS2 = 0x00000000
[    2.038107]   CM = 0, WnR = 0, TnD = 0, TagAccess = 0
[    2.043760]   GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
[    2.049704] [00000000000002a0] user address but active_mm is swapper
[    2.056816] Internal error: Oops: 0000000096000004 [#1] PREEMPT SMP
[    2.063823] Modules linked in:
[    2.067241] CPU: 1 UID: 0 PID: 1 Comm: swapper/0 Not tainted
6.14.0-rc6-next-20250312 #1
[    2.076291] Hardware name: Google Kevin (DT)
[    2.081063] pstate: 00000005 (nzcv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
[    2.088849] pc : devm_kmalloc+0x28/0xf8
[    2.093144] lr : rk_iommu_of_xlate+0x30/0x90
[    2.097923] sp : ffff800082f7b7d0
[    2.101625] x29: ffff800082f7b7d0 x28: 0000000000000000 x27: ffff800081cd1528
[    2.109611] x26: 0000000000000001 x25: ffff800081cd2668 x24: ffff000005875a20
[    2.117597] x23: 0000000000000000 x22: ffff8000816bfef8 x21: 0000000000000000
[    2.125582] x20: 0000000000000010 x19: 0000000000000000 x18: 00000000ffffffff
[    2.133567] x17: ffff000005345c00 x16: ffff0000046f6800 x15: ffff800082f7b890
[    2.141553] x14: ffff0000050eda1c x13: ffff0000050ed27c x12: 0101010101010101
[    2.149538] x11: 7f7f7f7f7f7f7f7f x10: 0000000000142278 x9 : 0000000000000003
[    2.157524] x8 : ffff0000058544c0 x7 : 0000000000000000 x6 : 1d150c11f5f38080
[    2.165509] x5 : ffff000003948000 x4 : 0000000000000000 x3 : ffff800082cec6b8
[    2.173495] x2 : 0000000000000dc0 x1 : 0000000000000010 x0 : 0000000000000090
[    2.181480] Call trace:
[    2.184211]  devm_kmalloc+0x28/0xf8 (P)
[    2.188501]  rk_iommu_of_xlate+0x30/0x90
[    2.192889]  of_iommu_xlate+0x9c/0xc8
[    2.196986]  of_iommu_configure+0x1c8/0x240
[    2.201666]  of_dma_configure_id+0x98/0x3cc
[    2.206348]  platform_dma_configure+0xf8/0x100
[    2.211320]  __iommu_probe_device+0x2d4/0x4c8
[    2.216193]  probe_iommu_group+0x3c/0x68
[    2.220579]  bus_for_each_dev+0x78/0xd4
[    2.224868]  iommu_device_register+0xd8/0x224
[    2.229740]  rk_iommu_probe+0x1f8/0x34c
[    2.234031]  platform_probe+0x68/0xc0
[    2.238127]  really_probe+0xbc/0x298
[    2.242127]  __driver_probe_device+0x78/0x12c
[    2.246999]  driver_probe_device+0xd8/0x15c
[    2.251678]  __driver_attach+0x94/0x19c
[    2.255967]  bus_for_each_dev+0x78/0xd4
[    2.260247]  driver_attach+0x24/0x30
[    2.264245]  bus_add_driver+0xe4/0x208
[    2.268437]  driver_register+0x60/0x128
[    2.272727]  __platform_driver_register+0x24/0x30
[    2.277989]  rk_iommu_driver_init+0x1c/0x28
[    2.282668]  do_one_initcall+0x80/0x1c4
[    2.286959]  kernel_init_freeable+0x1c4/0x28c
[    2.291834]  kernel_init+0x20/0x1d8
[    2.295736]  ret_from_fork+0x10/0x20
[    2.299728] Code: a90153f3 b1020020 f9001bf7 aa0103f4 (b942a2b7)

=====================================================


# Hardware platforms affected:

## rk3399-gru-kevin
- dashboard: https://d.kernelci.org/test/maestro:67d1a73af59fb9874e7cdcbb
- compatibles: google,kevin-rev15 | google,kevin-rev14
- 1 fails since 2025-03-12 15:50 UTC
- test path: boot
- last pass: https://d.kernelci.org/test/maestro:67c185843218f15c74bcb435
    - on 2025-02-28 09:44 UTC
    - commit hash:  c0eb65494e59d9834af7cbad983629e9017b25a1
    - test id:  maestro:67c185843218f15c74bcb435

## rk3399-rock-pi-4b
- dashboard: https://d.kernelci.org/test/maestro:67d1a73bf59fb9874e7cdcbe
- compatibles: radxa,rockpi4b | radxa,rockpi4 | rockchip,rk3399
- 1 fails since 2025-03-12 15:45 UTC
- test path: boot
- last pass: https://d.kernelci.org/test/maestro:67c185853218f15c74bcb438
    - on 2025-02-28 09:44 UTC
    - commit hash:  c0eb65494e59d9834af7cbad983629e9017b25a1
    - test id:  maestro:67c185853218f15c74bcb438


#kernelci issue maestro:160e6c6fbe05a163b029f4e942a1d5b78d55fe65

Reported-by: kernelci.org bot <bot@kernelci.org>

--
This is an experimental report format. Please send feedback in!
Talk to us at kernelci@lists.linux.dev

Made with love by the KernelCI team - https://kernelci.org

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
