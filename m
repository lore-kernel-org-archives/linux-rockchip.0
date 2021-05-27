Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20755C4707F
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 18:12:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DA1B6613C0
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 18:12:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DA1B6613C0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8auHTSUw40P6Ngc3MtP1zsLYLhmAsLquIoxXMPfWy24=; b=IRbRFhpvDgCBbN
	78+82IFhjWDrXZx5sE/OvYPYXVrdfU5f1wIXiSW0+vAataxM2J9CW0lbF28S4e/AummVhFhyi8J3U
	UNl6KQwsfL3jWbY8svwMXLYZGlQzFU8e52NBQTYMsC2NxrvLpzDxdPSpnNigxyA6DC23gPbzHLoU4
	K7laNU+fdknOuI/OtoKdprLn9rq67SSqb4rTqUCEiBf+3Z9y5384iAF3jwC+jCF/SzJ7tmJTznj7o
	/FVBHYgkCWnoDCbRQcwwVjC+MPu+1U4iNpJqXlX0W5IbWXMWYPLFpw9NKKirytPRrPAiZr/6yoqNU
	isCL9nWN7tfHkbouzOFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmKUs-008Ngk-Ku; Thu, 27 May 2021 18:12:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmJ2C-007hRx-Pt; Thu, 27 May 2021 16:39:02 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 61ED0613C0;
 Thu, 27 May 2021 16:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622133540;
 bh=5DJuW/bnBtUHJd7Q3Q7OZvGhMJUl8t5p1TVaOTuL/hg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HueSznr3Fu2IQEOByfQwL7tX83bW8Ryg5HdBSrz++Tm7FjPH2ctScG/Nq/RkVZ8D5
 izO8mIqcIQ3S2LskbH0lCj+XnyXDzyK93cCQ9qYXTP8shcACOUu/pu7Hhe4QeeUBB3
 80wews3XswhJMcUoKzBslppBq/q5nShlMtWl6FjODW26b0T2k6Ed1lHcIJm4r516Ex
 VfHUrt1LLnz6vmoZ5Khy2Q8jIoSMELpGLm1XnfkvDBp+kxyp2KWTYttvfRnUfdVThD
 LQRipXdRu+kqtOOAU1KrKb6QnvuHlpx1MwNn0C882gXjQVdHsfekWSoesWJzolbrrk
 rc+t2T80Ksovw==
Received: by mail-ej1-f46.google.com with SMTP id s22so1021705ejv.12;
 Thu, 27 May 2021 09:39:00 -0700 (PDT)
X-Gm-Message-State: AOAM532r4m8Vr6QEX9CYxmVziNDJ5vEgjABXWzBPpHli9zY8ZFVGmdPi
 uNxsZvHcZ78W/EudfW30HNCwDzjwTTC1+/91fw==
X-Google-Smtp-Source: ABdhPJzgsTYwg11aYC8HyZsYl9T+SDJSXVaYrpuLFWrhDtEG2Ds1o4OjLE8O10QD1Y9g+T4o7fNzuzbsW094AbY1T8M=
X-Received: by 2002:a17:906:7b88:: with SMTP id
 s8mr365002ejo.525.1622133538969; 
 Thu, 27 May 2021 09:38:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210527150541.3130505-1-punitagrawal@gmail.com>
 <20210527150541.3130505-2-punitagrawal@gmail.com>
In-Reply-To: <20210527150541.3130505-2-punitagrawal@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 27 May 2021 11:38:46 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+Sp_Owe4V4WNh4jnuNJZ5jXxA+j4fW7564oPCy5Lu3ew@mail.gmail.com>
Message-ID: <CAL_Jsq+Sp_Owe4V4WNh4jnuNJZ5jXxA+j4fW7564oPCy5Lu3ew@mail.gmail.com>
Subject: Re: [PATCH 1/2] PCI: of: Override 64-bit flag for non-prefetchable
 memory below 4GB
To: Punit Agrawal <punitagrawal@gmail.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 PCI <linux-pci@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alexandru Elisei <alexandru.elisei@arm.com>, wqu@suse.com, 
 Robin Murphy <robin.murphy@arm.com>, Peter Geis <pgwipeout@gmail.com>, 
 Ard Biesheuvel <ardb@kernel.org>, Brian Norris <briannorris@chromium.org>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <helgaas@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_093900_920531_8FFD3DB4 
X-CRM114-Status: GOOD (  19.31  )
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

On Thu, May 27, 2021 at 10:06 AM Punit Agrawal <punitagrawal@gmail.com> wrote:
>
> Some host bridges advertise non-prefetable memory windows that are
> entirely located below 4GB but are marked as 64-bit address memory.
>
> Since commit 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource
> flags for 64-bit memory addresses"), the OF PCI range parser takes a
> stricter view and treats 64-bit address ranges as advertised while
> before such ranges were treated as 32-bit.
>
> A PCI-to-PCI bridges cannot forward 64-bit non-prefetchable memory
> ranges. As a result, the change in behaviour due to the commit causes
> allocation failure for devices that are connected behind PCI host
> bridges modelled as PCI-to-PCI bridge and require non-prefetchable bus
> addresses.
>
> In order to not break platforms, override the 64-bit flag for
> non-prefetchable memory ranges that lie entirely below 4GB.
>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com
> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> ---
>  drivers/pci/of.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> index da5b414d585a..b9d0bee5a088 100644
> --- a/drivers/pci/of.c
> +++ b/drivers/pci/of.c
> @@ -565,10 +565,14 @@ static int pci_parse_request_of_pci_ranges(struct device *dev,
>                 case IORESOURCE_MEM:
>                         res_valid |= !(res->flags & IORESOURCE_PREFETCH);
>
> -                       if (!(res->flags & IORESOURCE_PREFETCH))
> +                       if (!(res->flags & IORESOURCE_PREFETCH)) {
>                                 if (upper_32_bits(resource_size(res)))
>                                         dev_warn(dev, "Memory resource size exceeds max for 32 bits\n");

Based on Ard's explanation, doesn't this need to also check for
!IORESOURCE_MEM_64?

> -
> +                               if ((res->flags & IORESOURCE_MEM_64) && !upper_32_bits(res->end)) {

res->end is the CPU address space. Isn't it the PCI address space we care about?

> +                                       dev_warn(dev, "Overriding 64-bit flag for non-prefetchable memory below 4GB\n");
> +                                       res->flags &= ~IORESOURCE_MEM_64;
> +                               }
> +                       }
>                         break;
>                 }
>         }
> --
> 2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
