Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C51EC4707F
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 19:53:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C74706101B
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 19:53:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C74706101B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1F1FmkT3KdvTH83JL5Ac2SUv4hAncf2D+NnfjTaB+/E=; b=Wq4TL9/F6Q49fx
	pg0FzG8j3qeVKwgvYsRjMYSOLwFrxtPUgbcY7cBHuDIDGQU5IFMrRb2Pv6zYsWDjW4wrLDqxSOkTS
	eYcD0+GrQdya5dlKtgRhMOvlt1efYwQwRAPosh3yN5pWy6Rlj9aMGJnU4K+qzSQaYDin44KbWGo1q
	0woFeDMndTXMJCJaiMikvBnJPEMSSlD3QuKeMzDmmW9fU9z1oM5rYtg9kgnANm4Im4+kBE9r4GVI0
	MUdHWPmPp4vujUodgPutjwY+grh3+Ve/HTHAhFmBbADWP0wFJmpfpNqe4sseNIrE57siBVCEfVE1j
	0Vtjrf5Kd3cKdBB8hYKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lld6u-007ubo-Te; Tue, 25 May 2021 19:53:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llcxp-007qUh-K1; Tue, 25 May 2021 19:43:43 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DA6ED61401;
 Tue, 25 May 2021 19:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621971818;
 bh=94VagTEu48UpZc/HQAm4Qi4WJ4Ve2nnq3jm9uSJgJlI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=nQSg8+llIYt2L1WNiLKYOUWq9hC6BkoO4vLAWSQUIdPzfOkcdlK/8fPALOb75GS5R
 Cl7/lTXtFNDxdSVUxzoeAicp+tDSy/MJnu705Wn4zYI8czlarfviFPoRmoqjNWASVc
 FexY8qml3oWTEiGdQCBDdrCzFdbPsW/zFWw5oOkg/+c2C7QklTRLirKblTHQ4nBRoL
 DO3Quddv9ADFcfQGlUGXluycFSlrfw+cTK2fJzF4Ij2mcq+OaD/3dpeNXDWkrFp/eN
 jMypASCctagTk2LoCJVlnQcLTypBFJBiHhUdQNVnW5Gyf++xAh3eg1HJUiTQYBXdb4
 3nl1bTKwkmBDg==
Received: by mail-oi1-f169.google.com with SMTP id c3so31374546oic.8;
 Tue, 25 May 2021 12:43:38 -0700 (PDT)
X-Gm-Message-State: AOAM530Q+3+TjZjExrfNvxiDjHsmHTXWXgd6f/58kY7fz3Lct77EaHL/
 JkdIitLa1IfW9ueGAcYNe6UNrCUFqwVKfyXVmOY=
X-Google-Smtp-Source: ABdhPJyBhuw0DJkmdwDyAtPvho5HkzsUiTi18myKjz3tqbYOJIF+sskAfpfYPmk//6ZL6LVL3c66+Ua49+g68UJ81+4=
X-Received: by 2002:aca:1b14:: with SMTP id b20mr3336448oib.174.1621971818275; 
 Tue, 25 May 2021 12:43:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAMj1kXEBePfKDOc6eo9yjZPnVeFimX-zxR+R3As+2pP9XnZkuQ@mail.gmail.com>
 <20210525191556.GA1220872@bjorn-Precision-5520>
In-Reply-To: <20210525191556.GA1220872@bjorn-Precision-5520>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 25 May 2021 21:43:26 +0200
X-Gmail-Original-Message-ID: <CAMj1kXG=dDwhNGe1tdHZH65KfcFzRHJKy6OwhWzYryZD9K9q_A@mail.gmail.com>
Message-ID: <CAMj1kXG=dDwhNGe1tdHZH65KfcFzRHJKy6OwhWzYryZD9K9q_A@mail.gmail.com>
Subject: Re: [BUG] rockpro64: PCI BAR reassignment broken by commit
 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for 64-bit
 memory addresses")
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Peter Geis <pgwipeout@gmail.com>, Punit Agrawal <punitagrawal@gmail.com>, 
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
X-CRM114-CacheID: sfid-20210525_124341_892240_C378A810 
X-CRM114-Status: GOOD (  16.98  )
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

On Tue, 25 May 2021 at 21:15, Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Tue, May 25, 2021 at 05:54:56PM +0200, Ard Biesheuvel wrote:
> > On Tue, 25 May 2021 at 17:34, Peter Geis <pgwipeout@gmail.com> wrote:
>
> > > > > >> > On 2021-05-18 10:09, Alexandru Elisei wrote:
> > > > > >> >> [..]
> > > > > >> >> [    0.305183] rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
> > > > > >> >> [    0.305248] rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff -> 0x00fa000000
> > > > > >> >> [    0.305285] rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff -> 0x00fbe00000
> > > > > >> >> [    0.373705] rockchip-pcie f8000000.pcie: PCI host bridge to bus 0000:00
> > > > > >> >> [    0.373730] pci_bus 0000:00: root bus resource [bus 00-1f]
> > > > > >> >> [    0.373751] pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff 64bit]
> > > > > >> >> [    0.373777] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus address [0xfbe00000-0xfbefffff])
>
> > ... For some reason, lspci translates the BAR values to CPU
> > addresses, but the PCI side addresses are within 32-bits.
>
> lspci shows BARs as CPU physical addresses by default.  These are the
> same addresses you would see in pdev->resource[n] and the same as BAR
> values you would see in dmesg.
>
> A 64-bit CPU physical address can certainly be translated by the host
> bridge to a 32-bit PCI address.  But that's not happening here because
> this host bridge applies no translation (CPU physical 0xfa000000 maps
> to bus address 0xfa000000).
>
> "lspci -b" shows the PCI bus addresses.

Ah, thanks.

It does seem, though, that the information overload in this thread is
causing confusion now. Peter shared some log output where there is
definitely MMIO translation being applied.

> > [    6.673497] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff]
> > (bus address [0x3f700000-0x3f7fffff])
> > [    6.674642] pci_bus 0000:00: root bus resource [mem
> > 0x300000000-0x33f6fffff] (bus address [0x00000000-0x3f6fffff])

In this case, the I/O translation definitely looks wrong. On a typical
ARM DT system, you will see something like

[    1.500324] Remapped I/O 0x0000000067f00000 to [io  0x0000-0xffff window]
[    1.500522] pci_bus 0000:00: root bus resource [io  0x0000-0xffff window]

The MMIO window looks correct, but I suspect that both 0x82000000 and
0x83000000 in the DT ranges are describing the resource window as
prefetchable, preventing the allocation of non-prefetchable BARs in
this window.

Peter, for the configuration listed here, could you try something like

ranges = <0x1000000 0x0 0x0 [IO base in the CPU address map] [IO size]>,
         <0x2000000 0x0 0x0 [MMIO base in the CPU address map] [MMIO size]>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
