Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8EC5CFB43F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 09:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ej5/mKvyOFkz4v15FdOjFwazvTfpAJuwX1hR6AsKzI4=; b=mPeBA8uvxmpb7q
	BWn/3FQcIMZ9Hq8gnqKujsZ7xoKdzCYAVW+emdJXdj0aY/kAfHvx8VzWj4o2MzxiNSRNoZ1heLB6T
	zLeCr+fjU8aQyfQpvNphjXPxgA2CR/vIqbJx/MoWVotaTlHk3mciQcOAQpdBmNZ+0WQRRA5SjjE7y
	+ri5b+WnFTLx80BSbdYTNcS9o2kecdo2BMIGf5i0eBJ2YkHTdSXvXOuPk/pztHYuhy66IE9cSKSyH
	z6w6+7Lvhze/xSe+Y7I1Lq7Ne5uXy7W8GdH3XT0BcZDGSqIxpIBd4F1yF4HS+Fw9Xp2k5xS2f988r
	RgxmvayGnVOcDwlLeSWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxjlc-00000001so9-2egc;
	Mon, 07 Oct 2024 09:11:00 +0000
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxjk3-00000001sdH-3CAE;
	Mon, 07 Oct 2024 09:09:24 +0000
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-5daa93677e1so2605797eaf.3;
        Mon, 07 Oct 2024 02:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728292162; x=1728896962; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vO/wVWYQXa64Ph3Ozg7JWxoIsbitIFEplk6FEILOj50=;
        b=edESxXuJINwIUFirTzz8lBiWxbDBUAi/5faTHrQbadel8ntcwXtZaZAOzPnKsYOPiz
         8rH8rlwoOlH5VVoxFUfiixLSP7CKy7ZVOCaVEXTgaT6vD5mb3CyCzHSQ05GKMfIzjsQV
         QLSdu1ZoUdDtM9vqy9TOMC4I4kzPNaIKB9wJCBPG8FFJwU/e0+DZ+XxivG6Hr2cHmrbw
         iPv5FiwUwcnFNisUGcRutppxATz88ItRUVl+IVfXCKw/A9FLIHtwQufF3jm6vlVwDB8K
         LZtT9rovk1gwbSs/qRd2WIRcMr9wxcj7QaXyUkZyPGYD0uzsPm6qNAFAymVBbvrkngD5
         03xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728292162; x=1728896962;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vO/wVWYQXa64Ph3Ozg7JWxoIsbitIFEplk6FEILOj50=;
        b=eTWG/v8nawul145NCSx+yoAdM8Jk8+FrA5P93/QQP5i8R7yMOIJJxfrFEaJsLxeFlU
         woCyUC5sWWx9Sd9Xs/9XJjBx4pE+jtV2I+RWROwHo9JMnFSQimdZ3Wo+HaB/7jqwMRTb
         2+7Lj7t4rLefwb0XCDBAHMC3Z9JfZfRLupch42N2WA/oaFydzlGggD2m1GOPe8kn7k9H
         Atgl0bDGMV1zkKROe/F4J9BNmkO3im3iOZ9V97+8Svqutqyrp3/lwQFJc8FaazhAujpi
         BvvGx/RVz/VEujVaqrkLqbK9UfNlsCN+qjuOg9j6lzpu3EJcoMqUru4pmtWWhCzKMYV+
         aCNw==
X-Forwarded-Encrypted: i=1; AJvYcCW9W5NfDnUoJFvcmVFu/mdJx4I3x34y9GmKy7YaqRIuAwoOiFF1119T23LbyFHWqQGq2MuARcIvvf5uE3l6CXwN@lists.infradead.org, AJvYcCWNq7LWj/LMZAShpUAq9puW+D8le/yXLQ2Prrr1bupXPDYDzbGZ4dHJGoORNgqyVMJWxYh1aSHZPC7sQzzyZGw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwuPDKOW5sEyqpH5gajAXB3hhFxM/N8vj4ro7+K3G7tr8K2I4OJ
	VCf/ux/nqty4OyP2BElV9Bqf1C8SF+nQeRgzAnG+ymJEsvaEcuASDQaxuI4bsUSwIVVBHr7Xu3W
	1hi67WxKusV5y1fnkt5w91JDQvgE=
X-Google-Smtp-Source: AGHT+IGSN2hd+1S8H14t4yjBgBmiF/vETV1Pwx57/H4xXqwPC+rL9LS9yvqub9DTBWgck3LWRv7Ipy7SvuYPdCx1KAo=
X-Received: by 2002:a05:6870:700b:b0:261:360:746c with SMTP id
 586e51a60fabf-287c1db2ccfmr6469356fac.19.1728292162473; Mon, 07 Oct 2024
 02:09:22 -0700 (PDT)
MIME-Version: 1.0
References: <20241006182445.3713-1-linux.amoon@gmail.com> <20241006182445.3713-3-linux.amoon@gmail.com>
 <64c560c483f09d90c788eb949890d00f3b94cc87.camel@pengutronix.de>
In-Reply-To: <64c560c483f09d90c788eb949890d00f3b94cc87.camel@pengutronix.de>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 7 Oct 2024 14:39:06 +0530
Message-ID: <CANAwSgS15E4-KzexTqEYd4=o3ew9GvigEjBCZ-dAUs0No_b6Hw@mail.gmail.com>
Subject: Re: [PATCH v6 RESET 2/3] PCI: rockchip: Simplify reset control
 handling by using reset_control_bulk*() function
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_020923_821813_CE48A633 
X-CRM114-Status: GOOD (  22.43  )
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

Hi Philipp,

Thanks for your review comment.

On Mon, 7 Oct 2024 at 14:14, Philipp Zabel <p.zabel@pengutronix.de> wrote:
>
> On So, 2024-10-06 at 23:54 +0530, Anand Moon wrote:
> > Refactor the reset control handling in the Rockchip PCIe driver,
> > introducing a more robust and efficient method for assert and
> > deassert reset controller using reset_control_bulk*() API. Using the
> > reset_control_bulk APIs, the reset handling for the core clocks reset
> > unit becomes much simpler.
> >
> > Spilt the reset controller in two groups as pre the RK3399 TRM.
> > After power up, the software driver should de-assert the reset of PCIe PHY,
> > then wait the PLL locked by polling the status, if PLL
> > has locked, then can de-assert the rest reset simultaneously
> > driver need to De-assert the reset pins simultionaly.
> >
> >   PIPE_RESET_N/MGMT_STICKY_RESET_N/MGMT_RESET_N/RESET_N.
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> > V6: Add reason for the split of the RESET pins.
> > v5: Fix the De-assert reset core as per the TRM
> >     De-assert the PIPE_RESET_N/MGMT_STICKY_RESET_N/MGMT_RESET_N/RESET_N
> >     simultaneously.
> > v4: use dev_err_probe in error path.
> > v3: Fix typo in commit message, dropped reported by.
> > v2: Fix compilation error reported by Intel test robot
> >     fixed checkpatch warning
> > ---
> >  drivers/pci/controller/pcie-rockchip.c | 151 +++++--------------------
> >  drivers/pci/controller/pcie-rockchip.h |  26 +++--
> >  2 files changed, 49 insertions(+), 128 deletions(-)
> >
> > diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> > index 2777ef0cb599..87daa3288a01 100644
> > --- a/drivers/pci/controller/pcie-rockchip.c
> > +++ b/drivers/pci/controller/pcie-rockchip.c
> [...]
> > @@ -69,55 +69,23 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
> >       if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
> >               rockchip->link_gen = 2;
> >
> > -     rockchip->core_rst = devm_reset_control_get_exclusive(dev, "core");
> > -     rockchip->mgmt_rst = devm_reset_control_get_exclusive(dev, "mgmt");
> > -     rockchip->mgmt_sticky_rst = devm_reset_control_get_exclusive(dev,
> > -     rockchip->pipe_rst = devm_reset_control_get_exclusive(dev, "pipe");
> > -     rockchip->pm_rst = devm_reset_control_get_exclusive(dev, "pm");
> > +     err = devm_reset_control_bulk_get_optional_exclusive(dev,
> [...]
>
>
> Why are the reset controls optional now? The commit message doesn't
> mention this change.
>

Oops, It should be  devm_reset_control_bulk_get_exclusive(),
I will update this in the next version.

> regards
> Philipp

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
