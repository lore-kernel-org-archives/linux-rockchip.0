Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 125A7C4708F
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 05:49:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BB67861396
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 05:49:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BB67861396
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ne5ASRyOycDeDcW9IJXY8jqz4YcicUGHwIJXmtBTtXI=; b=q5/qu09f6iTZ8d
	RqApKN3zkRfF4pvvM7nhQqTwRZz5PAMzoFlZorrsEjumRbnwzj9Kh65S8oWsA5HlJ2Y3fHUAQMJ3q
	mYce4USkUb7fKXMD873FKq+MTuszxLSIAxRqH1Ebp+yiKHjtOg6j5o94bP6lDvY/+bbSxjxhSHk1x
	UlaJLDPmCEV/CUzSVOfn4+86z5hvjFxuv6pT+45NYtnzca/KYt3273McTXl02ANBkkLGCUD9RjZ2q
	59sS1j7yFLP33fiA6ED6b0Gj89DWVrRjKyJqqxKApTgK0EXFSeMYUzFRdk2g9sAkK5k3vdYI/1dqc
	a7u8oac1vxsArSpIRepw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnxHR-00Eog7-4e; Tue, 01 Jun 2021 05:49:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnxHC-00EodX-DQ; Tue, 01 Jun 2021 05:49:20 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 463D161396;
 Tue,  1 Jun 2021 05:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622526557;
 bh=OPxQYwkHb+c8kRPYIMeJZ1NAST5RTo/Lc2MbCJ31+VY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZbBVaFHV/dOaGQ4wh+zmyN2lxHOP0Z/AjIO5zoJoUd2RuzjvOhtS9T96+JUNiNO/n
 +ojMNCmF2kpgkQgHWADV0M3+XGtH+Fn3yI/ANDSxmbIk4j5HUVS+Y7GpwW7hNVhAp9
 tCx7VzAoEL1REgTQRv9EqKWSX14UwMjNIMYljUWBZrfd/OY0a4O9gDx8mLEW6w8tUe
 6NDueNw7IEwmXcrKBoJMhBZVHTlKO5FHFu/cJtPXUTLKgXb6VJwegTxCp+cYDGlWTr
 WzqrpejvAEF1KyeM5LLrsdH8Ucc9Rs4ieM+b7LWUY6NooBUoNLtTco2zZylLbznxLj
 mw8MKPyuZJ06Q==
Received: by mail-oi1-f177.google.com with SMTP id b25so14445035oic.0;
 Mon, 31 May 2021 22:49:17 -0700 (PDT)
X-Gm-Message-State: AOAM530HB+jcI6rQHYq8h7nUf3cU6sAqh3wcj8PbcnfiMm8H3gLmVvVh
 xP2dbs9UY8jIzYXmeIe8w0UTcsVDsmxuzKT5M8o=
X-Google-Smtp-Source: ABdhPJyIgc6c1QDmrjpCQOdUgQgVOvJONM1ji6QepPdsP8ZlBMN3ZjkhsZ26x+8EVFkB6zxjhv7Ejz8OqJ1I51L65QM=
X-Received: by 2002:a54:460a:: with SMTP id p10mr1817105oip.47.1622526556632; 
 Mon, 31 May 2021 22:49:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210531221057.3406958-1-punitagrawal@gmail.com>
 <20210531221057.3406958-2-punitagrawal@gmail.com>
In-Reply-To: <20210531221057.3406958-2-punitagrawal@gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 1 Jun 2021 07:49:05 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHkZhgp3y_1dvKjfiEbwWDooCY0X+0HZutn5ZrsRGk15w@mail.gmail.com>
Message-ID: <CAMj1kXHkZhgp3y_1dvKjfiEbwWDooCY0X+0HZutn5ZrsRGk15w@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] PCI: of: Override 64-bit flag for non-prefetchable
 memory below 4GB
To: Punit Agrawal <punitagrawal@gmail.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 PCI <linux-pci@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexandru Elisei <alexandru.elisei@arm.com>, wqu@suse.com, 
 Robin Murphy <robin.murphy@arm.com>, Peter Geis <pgwipeout@gmail.com>,
 briannorris@chromium.org, 
 shawn.lin@rock-chips.com, Bjorn Helgaas <helgaas@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_224918_519242_357A7030 
X-CRM114-Status: GOOD (  23.07  )
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

Hi Punit,

On Tue, 1 Jun 2021 at 00:11, Punit Agrawal <punitagrawal@gmail.com> wrote:
>
> Some host bridges advertise non-prefetable memory windows that are

typo ^

> entirely located below 4GB but are marked as 64-bit address memory.
>
> Since commit 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource
> flags for 64-bit memory addresses"), the OF PCI range parser takes a
> stricter view and treats 64-bit address ranges as advertised while
> before such ranges were treated as 32-bit.
>
> A PCI host bridge that is modelled as PCI-to-PCI bridge cannot forward

It is the root port which is modeled as a P2P bridge. The root port(s)
together with the host bridge is what makes up the root complex.


> 64-bit non-prefetchable memory ranges. As a result, the change in
> behaviour due to the commit causes allocation failure for devices that
> require non-prefetchable bus addresses.
>

AIUI, the problem is not that the device requires a non-prefetchable
bus address, but that it fails to allocate a 32-bit BAR from a 64-bit
non-prefetchable window.

> In order to not break platforms, override the 64-bit flag for
> non-prefetchable memory ranges that lie entirely below 4GB.
>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com
> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Rob Herring <robh+dt@kernel.org>
>
> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
> ---
>  drivers/pci/of.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> index da5b414d585a..e2e64c5c55cb 100644
> --- a/drivers/pci/of.c
> +++ b/drivers/pci/of.c
> @@ -346,6 +346,14 @@ static int devm_of_pci_get_host_bridge_resources(struct device *dev,
>                                 dev_warn(dev, "More than one I/O resource converted for %pOF. CPU base address for old range lost!\n",
>                                          dev_node);
>                         *io_base = range.cpu_addr;
> +               } else if (resource_type(res) == IORESOURCE_MEM) {
> +                       if (!(res->flags & IORESOURCE_PREFETCH)) {
> +                               if (res->flags & IORESOURCE_MEM_64)
> +                                       if (!upper_32_bits(range.pci_addr + range.size - 1)) {
> +                                               dev_warn(dev, "Clearing 64-bit flag for non-prefetchable memory below 4GB\n");
> +                                               res->flags &= ~IORESOURCE_MEM_64;
> +                                       }
> +                       }
>                 }
>
>                 pci_add_resource_offset(resources, res, res->start - range.pci_addr);
> --
> 2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
