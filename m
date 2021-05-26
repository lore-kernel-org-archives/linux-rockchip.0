Return-Path: <SRS0=5mPC=KV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AEB5C47082
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 15:28:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F36F761026
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 15:28:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F36F761026
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVU4p58zIHdfLbe5B4t5pd5vtS8BRuWEF/DjwFzEB4I=; b=gwtwtTMNlDgg21
	Y8PFmyyCv0NbaV3Casci+Saf5HTfBcKDYwUF6biRR7R/qi3UPQmTcLlNkuQFgLbT0M6PGj8Q9mTU3
	ZZVst+IIrCRDO7vDxmCkg162rzmDbJi6J5ruKo00jxSC8/erGYoOZNYgglrRjV5JSxiU1JjOcndqO
	GP+glimJTFuLBAmRMgWvLw/GTIReLp0hM6EJehYeVYaLX9qU6Q5QL3MzlODe4s2JiKqi1LWmoW1BP
	ZBTHFgGwKxBDK4PESA6oiHUhcJ+P/Dh6rMVTq5kkmhrP+oFFVM/DaDYJJzxfA2Xrc61Bc6IRnE9NN
	QzOo22Tess4QWN7uBnig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llvRt-00FMgw-He; Wed, 26 May 2021 15:27:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lluMR-00EnkR-2h; Wed, 26 May 2021 14:18:16 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id AB02B613D4;
 Wed, 26 May 2021 14:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622038694;
 bh=/mrMnRJMtVpcPfaQNOqXW592yaxmSLc2ufg5spt3+VQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MX/ygqxAFw2J+DjyYoVo6pjCineqLtwJKliO4HCjGylTv21K9Mo9xcREh/RNn7GAt
 /jKTogqPHyC5ww7mV6oI9SQRjkI+LHaRU7m9kQRwFJAVPNwwBNyrlCqgxOBgFUkMQ0
 ooyXlRYvUKzAC9qmS7oRfssCJPw+Yt0YCulSBOj7KqsEbAVFKC50Sc5qkcN5o2VNut
 QgQ3gQG8OtQj/6eYNwBdm7YKQPL/3LbDa75WpKQzigNegqk6wgenNGQjKkJ9IKdvRw
 tHQ2+28jdl1YVq3UNKbHyTam+57+NJddXP/Y+1zHsf2vAgCSo2+3EEbinZj5oQJ/1G
 vcAy6f35I6J9A==
Received: by mail-oo1-f45.google.com with SMTP id
 j17-20020a4ad6d10000b02901fef5280522so328909oot.0; 
 Wed, 26 May 2021 07:18:14 -0700 (PDT)
X-Gm-Message-State: AOAM531i93YZcV9be7uS+xNF3GWPL8978OYjJhnOXwJX9bIWHvN8Zfg9
 yQq0YqvqnG3/wWlb0ZCIYETQxKaEmyH8dw9Z1Zw=
X-Google-Smtp-Source: ABdhPJzuXaQfBghkHVGIgesa2CXDpQU1Sx4OrMSZo9IeDeyVGaz4cU9Kh2fedoUg7wOW8h8mDqEOQqF+bO1JgM2k7UQ=
X-Received: by 2002:a4a:8706:: with SMTP id z6mr2482481ooh.41.1622038694029;
 Wed, 26 May 2021 07:18:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAMj1kXEBePfKDOc6eo9yjZPnVeFimX-zxR+R3As+2pP9XnZkuQ@mail.gmail.com>
 <20210525191556.GA1220872@bjorn-Precision-5520>
 <CAMj1kXG=dDwhNGe1tdHZH65KfcFzRHJKy6OwhWzYryZD9K9q_A@mail.gmail.com>
 <CAMdYzYptcAyb3U3ZZvNL8GwdcP-a2X8MX+rji2z0nEuiw0Br5A@mail.gmail.com>
In-Reply-To: <CAMdYzYptcAyb3U3ZZvNL8GwdcP-a2X8MX+rji2z0nEuiw0Br5A@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 26 May 2021 16:18:02 +0200
X-Gmail-Original-Message-ID: <CAMj1kXF0Gh+CNJ+Y=Xv_1Z1gRpubBQLL81pUHgZ0DXNUO-MYqQ@mail.gmail.com>
Message-ID: <CAMj1kXF0Gh+CNJ+Y=Xv_1Z1gRpubBQLL81pUHgZ0DXNUO-MYqQ@mail.gmail.com>
Subject: Re: [BUG] rockpro64: PCI BAR reassignment broken by commit
 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for 64-bit
 memory addresses")
To: Peter Geis <pgwipeout@gmail.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Punit Agrawal <punitagrawal@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Leonardo Bras <leobras.c@gmail.com>, 
 Rob Herring <robh@kernel.org>, PCI <linux-pci@vger.kernel.org>, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_071815_208239_01FAB62B 
X-CRM114-Status: GOOD (  29.86  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 25 May 2021 at 22:03, Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Tue, May 25, 2021 at 3:43 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Tue, 25 May 2021 at 21:15, Bjorn Helgaas <helgaas@kernel.org> wrote:
> > >
> > > On Tue, May 25, 2021 at 05:54:56PM +0200, Ard Biesheuvel wrote:
> > > > On Tue, 25 May 2021 at 17:34, Peter Geis <pgwipeout@gmail.com> wrote:
> > >
> > > > > > > >> > On 2021-05-18 10:09, Alexandru Elisei wrote:
> > > > > > > >> >> [..]
> > > > > > > >> >> [    0.305183] rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
> > > > > > > >> >> [    0.305248] rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff -> 0x00fa000000
> > > > > > > >> >> [    0.305285] rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff -> 0x00fbe00000
> > > > > > > >> >> [    0.373705] rockchip-pcie f8000000.pcie: PCI host bridge to bus 0000:00
> > > > > > > >> >> [    0.373730] pci_bus 0000:00: root bus resource [bus 00-1f]
> > > > > > > >> >> [    0.373751] pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff 64bit]
> > > > > > > >> >> [    0.373777] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus address [0xfbe00000-0xfbefffff])
> > >
> > > > ... For some reason, lspci translates the BAR values to CPU
> > > > addresses, but the PCI side addresses are within 32-bits.
> > >
> > > lspci shows BARs as CPU physical addresses by default.  These are the
> > > same addresses you would see in pdev->resource[n] and the same as BAR
> > > values you would see in dmesg.
> > >
> > > A 64-bit CPU physical address can certainly be translated by the host
> > > bridge to a 32-bit PCI address.  But that's not happening here because
> > > this host bridge applies no translation (CPU physical 0xfa000000 maps
> > > to bus address 0xfa000000).
> > >
> > > "lspci -b" shows the PCI bus addresses.
> >
> > Ah, thanks.
> >
> > It does seem, though, that the information overload in this thread is
> > causing confusion now. Peter shared some log output where there is
> > definitely MMIO translation being applied.
>
> Yes, I've done work on the rk3399 pcie controller which is why this
> caught my attention.
> The original issue still seems to exist:
> For some reason:
> commit 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for
> 64-bit memory addresses")
> causes allocation issues now.
> The original description of the issue aligned with issues I was having
> bringing up the rk356x pcie controller.
>
> >
> > > > [    6.673497] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff]
> > > > (bus address [0x3f700000-0x3f7fffff])
> > > > [    6.674642] pci_bus 0000:00: root bus resource [mem
> > > > 0x300000000-0x33f6fffff] (bus address [0x00000000-0x3f6fffff])
> >
> > In this case, the I/O translation definitely looks wrong. On a typical
> > ARM DT system, you will see something like
> >
> > [    1.500324] Remapped I/O 0x0000000067f00000 to [io  0x0000-0xffff window]
> > [    1.500522] pci_bus 0000:00: root bus resource [io  0x0000-0xffff window]
> >
> > The MMIO window looks correct, but I suspect that both 0x82000000 and
> > 0x83000000 in the DT ranges are describing the resource window as
> > prefetchable, preventing the allocation of non-prefetchable BARs in
> > this window.
>
> I checked with lspci -vvvbxxxxnn:
>
> Before your changes:
> 00:00.0 PCI bridge [0604]: Fuzhou Rockchip Electronics Co., Ltd Device
> [1d87:3566] (rev 01) (prog-if 00 [Normal decode])
>         I/O behind bridge: 00001000-00001fff [size=4K]
>         Memory behind bridge: 50000000-500fffff [size=1M]
>         Prefetchable memory behind bridge:
> 0000000040000000-000000004fffffff [size=256M]
> 01:00.0 VGA compatible controller [0300]: Advanced Micro Devices, Inc.
> [AMD/ATI] Turks PRO [Radeon HD 7570] [1002:675d] (prog-if 00 [VGA
> controller])
>         Region 0: Memory at 40000000 (64-bit, prefetchable)
>         Region 2: Memory at 50000000 (64-bit, non-prefetchable)
>         Region 4: I/O ports at 7f701000
>         Expansion ROM at 50020000 [disabled]
>
> After your changes:
> lspci -vvvbxxxxnn
> 00:00.0 PCI bridge: Fuzhou Rockchip Electronics Co., Ltd Device 3566
> (rev 01) (prog-if 00 [Normal decode])
>         I/O behind bridge: 00001000-00001fff [size=4K]
>         Memory behind bridge: 10000000-100fffff [size=1M]
>         Prefetchable memory behind bridge:
> 0000000000000000-000000000fffffff [size=256M]
> 01:00.0 VGA compatible controller: Advanced Micro Devices, Inc.
> [AMD/ATI] Turks PRO [Radeon HD 7570] (prog-if 00 [VGA controller])
>         Region 0: Memory at <unassigned> (64-bit, prefetchable) [virtual]
>         Region 2: Memory at 10000000 (64-bit, non-prefetchable) [virtual]
>         Region 4: I/O ports at 1000 [virtual]
>         Expansion ROM at 10020000 [disabled]
>
> >
> > Peter, for the configuration listed here, could you try something like
> >
> > ranges = <0x1000000 0x0 0x0 [IO base in the CPU address map] [IO size]>,
> >          <0x2000000 0x0 0x0 [MMIO base in the CPU address map] [MMIO size]>;
>
> That was similar to what I already had, removing the relocatable flag
> and setting both addresses to 0x0 are the changes.
>
> Here is the result:

<snip>

I'm not sure which conclusion I am supposed to draw from that output.

Are you saying the output looks ok but the GPU card does not work?

Is your system DMA coherent? I would not be very optimistic about
these drivers working out of the box on non-coherent systems.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
