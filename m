Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDF4FC28B28
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 17:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:from:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nmJL+6+HzzZ4/uD72gC9CYEd9GLOP2FgQiMTl1VBuhI=; b=IdG3QpgzQf+39H
	j0w4I9zqvlEwuSQW2XUiYvM6AOsaQPr2MbRXJ0ONQurlj6SOcda25CxCR4+hxbeuqu/bqZahyHVqo
	nhwwBrlu3kLkwwPL5vEB/zZY6Ip0Rl9EA835GksnOvAwqDBWyjNxSiphE9iIfw8Iimz7GSKb1K59K
	G0OPPcHRpf8cKiYWHYybLU1i+1M2YPmEJ6R4BToTj6pC5ii95GdNa77fU4pxqy1M5u2f7kZyCG7Q9
	PrRw05uueed56I4AKtB9vioVvJbr++2mdOjQtFoK9FVGtFJG3U3XW30Y5T7X/SMY76NCILAdur8bc
	DPF//N8ndlKD8ONJOKWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsPSK-0000000951j-1pzO;
	Wed, 12 Mar 2025 17:01:20 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsPSH-0000000951Q-3jAn
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Mar 2025 17:01:19 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-6f6ca9a3425so88257b3.2
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Mar 2025 10:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernelci-org.20230601.gappssmtp.com; s=20230601; t=1741798877; x=1742403677; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:reply-to:from:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gf9Ir8G5xNX14rdd/mXNOJ57RYfDgIBaE2BcBaHo+ww=;
        b=TcKD66/JF+kvs680Ib194yJm/c1VBNch3DD9Gr+iCqwbim+TjezHmJGvW0KwGby+JA
         Qd8HQaQMptRdmMwPKPgFh2XVacvQVPqgsUxi0zO5kv1Pr5pALJTq2NmChWFcb0EqUAlw
         TgOPVye7dMI/3sYE6AdxoNI4Pog65QWmBBMz2+RN2bpY1wu9e2y2y4bHFstE1d0QZowu
         uFvryTd2hArbn8kar3A7/mgFYMGBDDegVwSy5x67NLy2G9FYjMtSTy35RVW/3PHnC57I
         bkQ+bm8jqQ9AyiLuD+Wt55JB+ikT04a3aw/A0up7ZF49FajzoUOnadrYqfKOz4Begf00
         x+Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741798877; x=1742403677;
        h=cc:to:subject:message-id:date:reply-to:from:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gf9Ir8G5xNX14rdd/mXNOJ57RYfDgIBaE2BcBaHo+ww=;
        b=eGMAD1TriysTdcoKf3YScDR4jvothMxricpWF/edhoabPqC97e9uIAtlRc7tE73LMn
         +00iSeQLg3VQ8t/e1wSURLeuXBRy/CvR3EpByOYMalJYlC88J+/2HKCsRbbaw/9iDERm
         qHP9p5nWf3rCWIPKkOZEPGzVS2JvleeQsFxNTPLSd6pbBlWCrpFub+TtLfI/XSxwRglU
         uUi+U4dEvI7tzSWClbBEw2/oMKy2WnazIlIl99dkKuj/REu/+J7mDKoGMYFgX1h1zNFs
         pH082MrnLX66kbHJewmiL9QNQDenntlgW4oabbWtH6O0EHS3MwS1+WeNMmOHwcTCWCgN
         WQ2w==
X-Forwarded-Encrypted: i=1; AJvYcCWLwUhsY+XPXHRCmytkx5gZ82/zzWUbQrMVy1hYBSD1/uzjLyi/RDDjQrR1ec0qYuPQKTDUTLCwwIENqudjkg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2BE3Pg+BpFyvVdsMD3IAnqAzj9iwP+pNjrr6AM0m/3htnEwdf
	OADo8J2LkmH23E1NFr5Y7Ac3QOTN3W6caX2WHctv1c7TPUfWBhA4FxFJkFmJFynpb6EUZcTxCxw
	IRdKrGHHR9hMJ6uspNcq896ZzxF35CJ46uHXK7w==
X-Gm-Gg: ASbGncsCkiCn3n2FSDcoN4F337hU4JX+kNlfurZYak2tRFJDy+TfQq1ea9Ru6x4TbLT
	x4S1De4xH4qTK8RfK5RtE+UvzrXzm1jBbsWaI97sHrDg0uHytYEqA8J8UMHouGWxkDixmaxRgm/
	2t0Cs7E9TD+D1yllLGImiGrPo1SSPKu2HY/pRqKb/uCSjRD5EzkV5nf71vlMo=
X-Google-Smtp-Source: AGHT+IFzn+jUnPcTjfkFNEFw1qrUEKJvNi7ssIROLNO76X3ue/BuiXiqeRy7dRPGWt2QpNGeU95/KNG43Edpyudy+KA=
X-Received: by 2002:a05:690c:6e0a:b0:6fd:4473:5184 with SMTP id
 00721157ae682-6ff092b483emr120297647b3.35.1741798876599; Wed, 12 Mar 2025
 10:01:16 -0700 (PDT)
Received: from 415818378487 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 12 Mar 2025 13:01:14 -0400
Received: from 415818378487 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 12 Mar 2025 13:01:14 -0400
MIME-Version: 1.0
from: KernelCI bot <bot@kernelci.org>
Date: Wed, 12 Mar 2025 13:01:14 -0400
X-Gm-Features: AQ5f1JoubM58eZMT5fasWB2-4pGe9XBnp_rB949CGDQeRlELyXbVO0aCHT4S1ns
Message-ID: <CACo-S-2W=N=dcstfejJjEZxPteCWnA1-AfbeBWi-RP81W_doCg@mail.gmail.com>
Subject: [REGRESSION] next/master: (boot) NULL pointer dereference at virtual
 address 00000000000002a0 [logs...
To: kernelci-results@groups.io
Cc: regressions@lists.linux.dev, gus@collabora.com, 
	linux-rockchip@lists.infradead.org, sebastian.reichel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_100117_932232_C02AC381 
X-CRM114-Status: UNSURE (   2.66  )
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

- dashboard: https://d.kernelci.org/i/maestro:7477e32bf511bbe26d161a8b7a28dd1209fae3e4
- giturl: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
- commit HEAD:  9fbcd7b32bf7c0a5bda0f22c25df29d00a872017


Log excerpt:
=====================================================
[    1.556373] Unable to handle kernel NULL pointer dereference at
virtual address 00000000000002a0
[    1.557143] Mem abort info:
[    1.557390]   ESR = 0x0000000096000004
[    1.557719]   EC = 0x25: DABT (current EL), IL = 32 bits
[    1.558184]   SET = 0, FnV = 0
[    1.558453]   EA = 0, S1PTW = 0
[    1.558727]   FSC = 0x04: level 0 translation fault
[    1.559168] Data abort info:
[    1.559420]   ISV = 0, ISS = 0x00000004, ISS2 = 0x00000000
[    1.559898]   CM = 0, WnR = 0, TnD = 0, TagAccess = 0
[    1.560340]   GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
[    1.560804] [00000000000002a0] user address but active_mm is swapper
[    1.561359] Internal error: Oops: 0000000096000004 [#1] PREEMPT SMP
[    1.561907] Modules linked in:
[    1.562180] CPU: 6 UID: 0 PID: 1 Comm: swapper/0 Not tainted
6.14.0-rc6-next-20250312 #1
[    1.562888] Hardware name: Radxa ROCK 5B (DT)
[    1.563270] pstate: 00400009 (nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
[    1.563879] pc : devm_kmalloc+0x28/0xf8
[    1.564223] lr : rk_iommu_of_xlate+0x30/0x90
[    1.564604] sp : ffff80008005b7d0
[    1.564894] x29: ffff80008005b7d0 x28: 0000000000000000 x27: ffffd437526d1528
[    1.565522] x26: 0000000000000001 x25: ffffd437526d2668 x24: ffff000848884300
[    1.566149] x23: 0000000000000000 x22: ffffd437520bfef8 x21: 0000000000000000
[    1.566775] x20: 0000000000000010 x19: 0000000000000000 x18: 00000000ffffffff
[    1.567402] x17: ffff80008005b258 x16: ffff80008005b27d x15: ffff80008005b890
[    1.568028] x14: ffff000840ca9a1c x13: ffff000840ca927c x12: 0101010101010101
[    1.568655] x11: 7f7f7f7f7f7f7f7f x10: 0000000000142278 x9 : 0000000000000003
[    1.569281] x8 : ffff000840f80300 x7 : 0000000000000000 x6 : 1d150c11f5f38080
[    1.569906] x5 : ffff000840648000 x4 : 0000000000000000 x3 : ffffd437536ec6b8
[    1.570532] x2 : 0000000000000dc0 x1 : 0000000000000010 x0 : 0000000000000090
[    1.571159] Call trace:
[    1.571376]  devm_kmalloc+0x28/0xf8 (P)
[    1.571717]  rk_iommu_of_xlate+0x30/0x90
[    1.572066]  of_iommu_xlate+0x9c/0xc8
[    1.572393]  of_iommu_configure+0x1c8/0x240
[    1.572764]  of_dma_configure_id+0x98/0x3cc
[    1.573139]  platform_dma_configure+0xf8/0x100
[    1.573534]  __iommu_probe_device+0x2d4/0x4c8
[    1.573919]  probe_iommu_group+0x3c/0x68
[    1.574265]  bus_for_each_dev+0x78/0xd4
[    1.574604]  iommu_device_register+0xd8/0x224
[    1.574989]  rk_iommu_probe+0x1f8/0x34c
[    1.575330]  platform_probe+0x68/0xc0
[    1.575656]  really_probe+0xbc/0x298
[    1.575973]  __driver_probe_device+0x78/0x12c
[    1.576358]  driver_probe_device+0x3c/0x15c
[    1.576727]  __driver_attach+0x94/0x19c
[    1.577067]  bus_for_each_dev+0x78/0xd4
[    1.577406]  driver_attach+0x24/0x30
[    1.577723]  bus_add_driver+0xe4/0x208
[    1.578054]  driver_register+0x60/0x128
[    1.578395]  __platform_driver_register+0x24/0x30
[    1.578812]  rk_iommu_driver_init+0x1c/0x28
[    1.579184]  do_one_initcall+0x80/0x1c4
[    1.579525]  kernel_init_freeable+0x1c4/0x28c
[    1.579913]  kernel_init+0x20/0x1d8
[    1.580224]  ret_from_fork+0x10/0x20
[    1.580543] Code: a90153f3 b1020020 f9001bf7 aa0103f4 (b942a2b7)

=====================================================


# Hardware platforms affected:

## rk3588-rock-5b
- dashboard: https://d.kernelci.org/test/maestro:67d1a73cf59fb9874e7cdcc2
- compatibles: radxa,rock-5b | rockchip,rk3588
- 1 fails since 2025-03-12 15:42 UTC
- test path: boot
- last pass: https://d.kernelci.org/test/maestro:67c185863218f15c74bcb43b
    - on 2025-02-28 09:44 UTC
    - commit hash:  c0eb65494e59d9834af7cbad983629e9017b25a1
    - test id:  maestro:67c185863218f15c74bcb43b


#kernelci issue maestro:7477e32bf511bbe26d161a8b7a28dd1209fae3e4

Reported-by: kernelci.org bot <bot@kernelci.org>

--
This is an experimental report format. Please send feedback in!
Talk to us at kernelci@lists.linux.dev

Made with love by the KernelCI team - https://kernelci.org

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
