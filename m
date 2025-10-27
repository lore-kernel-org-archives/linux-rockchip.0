Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66EEFCCF9EB
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 16:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNLhfMovGvdh75huhXbxY+PTFnYbBxucgeOMSQTaoLI=; b=HdjFFpr6Cni38Y
	XeWcy8pnnZCqS5ghA/M+puKKxXv2cQ81t6eD2/8vVTrwYDWgX9PGK0b9GgmI9pvXVQ2OKbtIXbX0+
	w5XN5eZI03l2Kz3IwCeuxHJFa3ZildZFSok0X/saKioNgBu5eReNJ+C7fMjiyPEG6kO51sImzW7+m
	IA9ka4+ZdTT+A96gFlr51lr3uvVFXk13axJKqxlrSh1jDDThNRtvHIi5bbpZrGAhdA+Rqio2T5AaJ
	ZPVkDAG6zPMwcss7bpkKj0M6j1QAhD2xiCzaEPq10NfYEAOnbu1xgYal4Ttjz1dTX1cSepGCqpZVv
	VsKSiZvTaNPcrMxc3xAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDQ8I-0000000EKHW-2zrX;
	Mon, 27 Oct 2025 16:31:46 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDQ8F-0000000EKGJ-3cxo
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 16:31:45 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-63c11011e01so7300186a12.2
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Oct 2025 09:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761582702; x=1762187502; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IgLf2SVScm95+f02HH0OAwFjGNzD1ph15QV31vmZKhE=;
        b=iH3NF1prIWsS9TCd/t5xVTRs40Xh/WKJ7kVRgRJWnXINcKzQ667s3v/QByS1THlKX8
         6hizLhDfGJ0pcZULDZ+GqKglEFm/TivGmbWfD6t/7OxsxtsVOFtkx7OUiDb/HfXclzV9
         avBrq+R4yUPmJTq8gTBysJrz27thzlnsyuxFacEniU5XqZT9cEz6uWxhGVcJEcUAbdLM
         /m176s95/xFGKD9zqqok0YUzpsqU2pbudqUb3MpMIvhxB7xJNz7RR+zBRv4FwMXFp6ll
         kLfNNHW7J8E+tYcACzetCs4RJW1sswun+CK51cQ5yiK0q4SkDi34z0redwn94IQ8I39G
         M97w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761582702; x=1762187502;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IgLf2SVScm95+f02HH0OAwFjGNzD1ph15QV31vmZKhE=;
        b=Ams4cG5PHGKaaHSZE2s9528vPuYkgI2lUao3Yz3rG85IyAYz6AjdVmxAZcI7PzYhdO
         KmYuKzFYN1dRBxXyIMnw785KjIGWqUhVYYk/+dWYEzJWOWci1G2ddgZ9kLuLbKBeZI+m
         K/dUv0yNsk3Jk9DpN03BoUeuJuTYTLgfn8sA8KMbi7X3Ysy7Lroo2DzjLEB0+UHmC/kY
         lkPhcbqQVymGvi+7dbNqZekAZgPBKgH9ViLUvn2S2NfE9FD4acEc2qNyXs3u8t6MVljb
         iGqotzJm4hAEyDfOqOtk4o61aMBt4T9A4gXfobu120A0iKrxG8GznZAhpDABme2p7jbg
         w4qQ==
X-Forwarded-Encrypted: i=1; AJvYcCWn5TtrkC+fy/PJosCBlFqWhjViHp9gv2K2ZshfGim0rs6rCI6ik+bXjCQA7lNpp1kcdanPJajmg8cvxkLsLQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YytFW0vphQxkAoWwv1XU727nm+UUcEroUCISEygLkQyYwxs3oR6
	pzELSTTzZ9hIWSv3+Ylu68DwOXKQcNr6XWUNCZxfw3P1oNpfh9QagxGmG/vhjJxby79OBp0CtT+
	U/fJujnbptULXev2J9kRMDWCNK1RAUvU=
X-Gm-Gg: ASbGncvMkOlLoEJ3NG8cexAbl6lUI6wnDNao+Uo5pJTeHhnqrnSx/8W7A9mTt/xmRQ4
	aY6lN68JZg75iqu2f1qtwaqwzOXuF5o79ydPBdHlH8uzV/C1/CJv9e0RjMAw7kPgzWo+4MkP9Nb
	HH41Ee6VqUP1j0sMEj/XhVhoOrEt+b52tptYWyMaQaUa3i6A0gBP7pvq0MFl2ouw9WR+TRPMNXh
	hAbebC7zfP2eltz8QSAqLtMrM1tYrgZ1uWeW6QoLjF0izk/wRVy4Rgu5EM=
X-Google-Smtp-Source: AGHT+IG/IzMgRJGe0oU595mEmHs6fWEe0QVZBG2v7Ej1G6fm9/HYSbgpPg786Jnq6SwSPlQ24dt/1V+XJmYkuCP5oq0=
X-Received: by 2002:a05:6402:280d:b0:63e:914e:5159 with SMTP id
 4fb4d7f45d1cf-63ed810957cmr526172a12.13.1761582701754; Mon, 27 Oct 2025
 09:31:41 -0700 (PDT)
MIME-Version: 1.0
References: <20251027145602.199154-1-linux.amoon@gmail.com>
 <20251027145602.199154-2-linux.amoon@gmail.com> <5235617.GXAFRqVoOG@workhorse>
In-Reply-To: <5235617.GXAFRqVoOG@workhorse>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 27 Oct 2025 22:01:23 +0530
X-Gm-Features: AWmQ_bmuEGyIyVMM2F7v93d4eNawEzucpBZ6agLVtw_PaD2oW-53hrPDNMYJwI8
Message-ID: <CANAwSgTmOvOZ35=3XjhrKu2iPCMOU8c8prK5XVAkf3cF1DHekQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] PCI: dw-rockchip: Add remove callback for resource cleanup
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Hans Zhang <18255117159@163.com>, 
	"open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_093143_983967_90073302 
X-CRM114-Status: GOOD (  22.91  )
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

Hi Nicolas,

Thanks for your review comments.

On Mon, 27 Oct 2025 at 20:42, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
>
> On Monday, 27 October 2025 15:55:29 Central European Standard Time Anand Moon wrote:
> > Introduce a .remove() callback to the Rockchip DesignWare PCIe
> > controller driver to ensure proper resource deinitialization during
> > device removal. This includes disabling clocks and deinitializing the
> > PCIe PHY.
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> >  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > index 87dd2dd188b4..b878ae8e2b3e 100644
> > --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > @@ -717,6 +717,16 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
> >       return ret;
> >  }
> >
> > +static void rockchip_pcie_remove(struct platform_device *pdev)
> > +{
> > +     struct device *dev = &pdev->dev;
> > +     struct rockchip_pcie *rockchip = dev_get_drvdata(dev);
> > +
> > +     /* Perform other cleanups as necessary */
> > +     clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
> > +     rockchip_pcie_phy_deinit(rockchip);
>
> You may want to add a
>
>     if (rockchip->vpcie3v3)
>             regulator_disable(rockchip->vpcie3v3);
>
> here, since it's enabled in the probe function if it's found.
>
> Not doing so means the regulator core will produce a warning
> splat when devres removes it I'm fairly sure.
>
I've removed the dependency on vpcie3v3 in the following commit:
 c930b10f17c0 ("PCI: dw-rockchip: Simplify regulator setup with
devm_regulator_get_enable_optional()")
Please review this commit and confirm if everything looks good.

> Kind regards,
> Nicolas Frattaroli
>
Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
