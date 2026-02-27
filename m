Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07338104891E
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 22:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0BdHrRytSo+5s6BS3O8OXoeDiDD/00GUz1yM9fAkGM=; b=vAfs2ahBmpfEKw
	I0zafxXEN+NgpnlCm8vF8ZReVLbF5FNoOqfZP5JPNvGVyx0Y/VvZ5Ay7SA2H3DKpqYhrxp3/0qMVd
	FpG6YmAc2WygJQPHFTEeW+s/wpSeJ+3E6uZH3+2nUrOzm8R6H7boJMJhaaPTRZKe4tw/zol9/ZiSn
	IrZkZGJTQ8guI+1bz4L8zWMHpb6vwrnsT4OU6W71gLYOGIfeXbdqRmt6gZV6BUfBOsTyQtU01pIOn
	LCo27VFCbWjXLwwxliz2WX2zZoior7vr7fQqRhxFb45XvcqZ0mZS4mMMVhd7n2bizfUgjtEmDDwyu
	VjoOUvus+DbQ5z8plA3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw6cU-00000009Exj-2rHK;
	Fri, 27 Feb 2026 22:47:38 +0000
Received: from mail-vk1-xa2e.google.com ([2607:f8b0:4864:20::a2e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw6cP-00000009Ewi-2Q7e
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Feb 2026 22:47:35 +0000
Received: by mail-vk1-xa2e.google.com with SMTP id 71dfb90a1353d-56a88bfd4e3so1874541e0c.3
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Feb 2026 14:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772232452; x=1772837252; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=k+TH6jAGK26TrEc9oITkY4dihAUESin1rX1KN45OKxY=;
        b=YPqqRARkYOVGjTlhOedU4SnPv2V6Gs6F+oXLjS2wDNe+IRVUyM82G01YGqXzvLEMux
         U5THpmJQMBmrJscKCAcM1ob6w0CJ1BaiduZho8cwhjarOd8AxYcQG/i6c7aZUnuUC2+R
         Z9xgu7PAoLLS3hucuvnhVzHkgsf9BQvRmQtCTevmr3qoqiKpPcCf67ltURQqATIAhArR
         x4n97SGH/o/mMhx48rOMyaXi4YKSWTO0ra77BHzaLIEundvS/54f3js1IMd3v7Zu4M5d
         v7K4iBrM4XD4rGb+cRGtAQRf2BH6q3DrnUey20oSVnpJbsXvhyzj7Sjg2DVtjPJnIeSt
         ogVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772232452; x=1772837252;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k+TH6jAGK26TrEc9oITkY4dihAUESin1rX1KN45OKxY=;
        b=LD9W7GmPfBCcadAm+RuC9mf8EEZ/L6u79TpXUpVImIk3qPtfSfKx8HwsLBnppkDi+S
         FN6TUjqptzon74/3UPqIIUMMNY8sCDurm2F3PMagZa6oqwBL8JtxOMV4eaIJujH6Hs6d
         VDY1ezvgtcBA22wfeTia1BX0Civfe4gjUEpZ1dzaVenuhZkF1ZyF6caN//OdP/+TI25N
         h15s4gnEElTnsZ842IOtS0zv3qpplES48BnlqKdS241K0Nsqnr5czT7CoDvPbRhdL0Pa
         PVExcKDySQiOP/aiIgSYmS2p8RoxN17taDkh7IfEpLprMCj86IQtWaxvrkmy79b5tjzH
         3YdA==
X-Forwarded-Encrypted: i=1; AJvYcCWP1b6/EfUT/Fm5qUIroXhL/Lr82NwflwxldYr7obXDTXIs8bvgcK6XxfX9EhSjAHymOj3noY0GuoW8X/o28w==@lists.infradead.org
X-Gm-Message-State: AOJu0YzcXYggF7ztSPXvwnM3ljkKKBpmoPQYMJSfwiU5R5TAQjvOKsgL
	2qmuiOAFozpcLWU51MzniF+27SFQq/8efpMoDGVRam/M5Nl7OGRT5nDurs+32BKd
X-Gm-Gg: ATEYQzzY3DocfUJNOwIJosFmf/MxNCPIcOOhU47+YDm9Rqhj6TmfOoaClnL2Gkp6rYX
	+umk9BiUYC5fg6QZI4PjVDRST5Hd3KKq556vcmNXVoLAbsA7ZqiFHUQarhLCI0r3UkaeH/aENEc
	P6cM6tGaERYHlWn3oikmLa/euW8F1gJGSDqHqONwb4gJuk3c7S/V5DsiPC5zghdPx6aA9VzOb8o
	Zza4Cq2i1CapBs+niSPxBLHHjH4HsYqoyZtAepqbxhnd3iZpaQQsKubnDxx546tR0JodraC9oig
	gCaFk9egpyF4orgzfCtcUT3a063LlpjP+WI5I5TAyTbWkVd0KFEQ6hbbymTaREl3QjHID/AnFrS
	hbxG8Co+FKNRhPznFSgtov4jr9aiUlQScBA6u7abi2YDydqp+d+bwFPS6xEk2SyBBzu7XuSs8WS
	yrmUfvrCFqGA==
X-Received: by 2002:a05:6122:4b08:b0:566:3c58:efcb with SMTP id 71dfb90a1353d-56aa09ebdcbmr2825977e0c.3.1772232452162;
        Fri, 27 Feb 2026 14:47:32 -0800 (PST)
Received: from geday ([2804:7f2:800b:feb1::dead:c001])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91bd2291sm8103706e0c.9.2026.02.27.14.47.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 14:47:30 -0800 (PST)
Date: Fri, 27 Feb 2026 19:47:23 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/4] PCI: rockchip: drive at 2.5 GT/s only and error
 out other speeds
Message-ID: <aaIe-_WCD7s6Cd5j@geday>
References: <cover.1772169998.git.geraldogabriel@gmail.com>
 <9e3754ee0d1f5bc8051e28e1a5b8c046440456f5.1772169998.git.geraldogabriel@gmail.com>
 <b44e454e-f98b-4505-5603-bfc4455d11b9@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b44e454e-f98b-4505-5603-bfc4455d11b9@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_144733_653164_41A1B4BE 
X-CRM114-Status: GOOD (  36.68  )
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

On Fri, Feb 27, 2026 at 06:33:34PM +0100, Dragan Simic wrote:
> Hello Geraldo,
>

Hi Dragan,

> On Friday, February 27, 2026 06:36 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> > Configure the core to be driven at 2.5 GT/s Link Speed and error
> > out on any other speed. The reason is that Shawn Lin from Rockchip
> > has reiterated that there may be danger of "catastrophic failure"
> > in using their PCIe with 5.0 GT/s speeds.
> > 
> > While Rockchip has done so informally without issuing a proper
> > errata, and the particulars are thus unknown, this may cause
> > data loss or worse.
> > 
> > This change is corroborated by RK3399 official datasheet [1], which
> > states maximum link speed for this platform is 2.5 GT/s.
> > 
> > [1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf
> > 
> > Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
> > Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> > Cc: stable@vger.kernel.org
> > Reported-by: Dragan Simic <dsimic@manjaro.org>
> > Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> > Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> > ---
> >  drivers/pci/controller/pcie-rockchip.c | 13 +++++--------
> >  1 file changed, 5 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> > index 0f88da378805..26fc350a66c1 100644
> > --- a/drivers/pci/controller/pcie-rockchip.c
> > +++ b/drivers/pci/controller/pcie-rockchip.c
> > @@ -66,8 +66,9 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
> >  	}
> >  
> >  	rockchip->link_gen = of_pci_get_max_link_speed(node);
> > -	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
> > -		rockchip->link_gen = 2;
> > +	if (rockchip->link_gen < 0 || rockchip->link_gen >= 2)
> > +		return dev_err_probe(dev, rockchip->link_gen,
> > +				     "Invalid Link Speed\n");
> 
> I'm quite surprised to see what happened here in the v4?  The changes
> introduced in this diff block in the v3 were perfectly fine, i.e. we need
> to correct any runtime occurrences of Gen2 speed setting in the rockchip_
> pcie_parse_dt() function, together with emitting a warning that urges
> the users and the board dtb maintainer to fix the board dtb.  I'll get
> back to this below.

I see what you mean now. Sure, this could be incorporated for v5 without
a problem and is the more proper way to solve it.

> 
> >  	for (i = 0; i < ROCKCHIP_NUM_PM_RSTS; i++)
> >  		rockchip->pm_rsts[i].id = rockchip_pci_pm_rsts[i];
> > @@ -147,12 +148,8 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
> >  		goto err_exit_phy;
> >  	}
> >  
> > -	if (rockchip->link_gen == 2)
> > -		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_2,
> > -				    PCIE_CLIENT_CONFIG);
> > -	else
> > -		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_1,
> > -				    PCIE_CLIENT_CONFIG);
> > +	rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_1,
> > +			    PCIE_CLIENT_CONFIG);
> >  
> >  	regs = PCIE_CLIENT_ARI_ENABLE |
> >  	       PCIE_CLIENT_CONF_LANE_NUM(rockchip->lanes);
> 
> At this point we need to check and bail out if no longer supported Gen2
> speed setting is received, which also applies to the appropriate spot in
> the PCIe endpoint driver.

Right, it is a bit of a double-check I think but it can't hurt.

> 
> To clarify, it's the responsibility of the rockchip_pcie_parse_dt()
> function to validate and possibly correct the speed setting, because it
> is what receives that setting as a value from the board dtb, while the
> consumers of that validated speed setting should check it, to make sure
> the speed is right because they no longer can handle requests for Gen2
> speed, and simply bail out if the received speed isn't right, i.e. if
> it differs from Gen1.
> 

Like I said, it ends being a double-check, because we can't let probe
progress if link_gen ends up being different than 1. Either we force
2.5 GT/s with a fair warning or we error out on the probe already.

Thank you,
Geraldo Nascimento

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
