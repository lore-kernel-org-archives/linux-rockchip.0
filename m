Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D16F2C64EC4
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Feb 2023 20:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIvn7f4U5oaegansNqmE1GVvOe7pDkyxP3znLPBg7pg=; b=U4hVcTwb1SCpTc
	q12wU0yiSBoPEZNBBRiM0zv8l8sdolxQRP29mpoaDRB78k39j5EusgSo/IkMD5CZlbyoi7tlHHR8j
	4KBNdQ1lJQKAF3SZGzBPh6rRtYKKdFdgxURiU+X2Q4rPTLb5h/a+4vVVXRdthiOUuu1qoJFn6V4yP
	Vi/YTjKxiI/buMwpFWDxaCXkxO84vbUDDSiwfOcC/MV5/H7vQmEP2Q7mNUEgfEMw3xOv2GDo07H6u
	QnhBdJPi8L0SZkck1IMXUAIz0tglaNfTY/dDzWfNc/rwJFNG4ATQzUMckpnorE6QxKoe71DYq00Jb
	+OQvSgs0IdSW3znP8bTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX6UK-00EBcE-O4; Tue, 28 Feb 2023 20:22:16 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX6Ty-00EBUI-RB
	for linux-rockchip@lists.infradead.org; Tue, 28 Feb 2023 20:21:56 +0000
Received: by mail-wm1-x32d.google.com with SMTP id ay29-20020a05600c1e1d00b003e9f4c2b623so10447106wmb.3
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Feb 2023 12:21:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=47lTjHx+oRbLgh0ixd2904/xBmki05B5JimnvDPdC1s=;
        b=iaR2tdEAJMqpeBCdU0JxELeCFr6kEm9ptId5w9RgZJ8MRysc1q//nuDZy3xXl6NW1f
         6VrG8LEcbVf/TuEGgXXwxvwLqrmXnZCTeT5KgsMkzyyScHLhI+JrMXu+DjSS6r3jUTLF
         EyQqEJ5DiTB+5gsuGHNTXU8naKNo2g5Vlv/DwSxAIFa+P1HCFkFFNse5L1IrLyFeOL9w
         HAHWoRK46XqlkwfR2PmCzppOlSe9m8/OyrosoIQdLpijyfxPuGY008R8PNGejKx0nciR
         CfMaQOXL+k4BNJDqDKjmR2X7h1cKGm5Y6Tx/WDq9GkZvFRSa1nsLCDQHa12gCcS/BZhM
         MZWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=47lTjHx+oRbLgh0ixd2904/xBmki05B5JimnvDPdC1s=;
        b=JAOoKTJvK+SZpRm2wtDluaXCuZUgf7LtKqD6XfTzuvDIqHrXoasBtVAurN9Vrsjjag
         qwHDWCmSyvpFZgfN5cO+vPZ2Q/LFIIEf9QYhSUTcfCyAR2OAMxdz5KSC8t8tYXWTDkvJ
         tn6aztJlA073llfTy4wAzAD4FRULgad6Uc3/vHGqsG3wz79T5ljfzHql8SfH2sP+kQHN
         XwTxYdBGXlDqgALBkCcGT5piN0huEfbGhd+nWkfpfQmGaskK4Fcon1XmDY3R5G7m+frQ
         zvP+AbaXdjwsgqH30B73IH5aRV36bdkDMfepTBIH07bJ8mAA63qJTIoVxf3XboQVCmKz
         iuaA==
X-Gm-Message-State: AO0yUKWOTog1IrGur6phF4P3/j0ZeZeRd7VRhG4l9uaJXv+ky4SzhcAv
	8Ptn8u3FPwTzSR8esqPStMqduGV7xbczhIC5n6o=
X-Google-Smtp-Source: AK7set/wvZwLy7JJyhSnWARVSLvcHqeTlaf0US3t/Dbkmt8lLKvVcRV/v9+5Th9J2uehNmNYNRbbI/7pYTkeowOFy9M=
X-Received: by 2002:a7b:c2a1:0:b0:3e1:787:d706 with SMTP id
 c1-20020a7bc2a1000000b003e10787d706mr1141316wmk.2.1677615710838; Tue, 28 Feb
 2023 12:21:50 -0800 (PST)
MIME-Version: 1.0
References: <bug-217100-41252@https.bugzilla.kernel.org/> <20230228124427.GA114786@bhelgaas>
In-Reply-To: <20230228124427.GA114786@bhelgaas>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 28 Feb 2023 15:21:38 -0500
Message-ID: <CAMdYzYrSiBD3gKxKjufo=LM6d6Si9QmcZdfBn1MT3tdU3yFW8w@mail.gmail.com>
Subject: Re: [Bug 217100] New: Bifurcation between pcie3x1 & pcie3x2 doesn't
 work in RK3568J.
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Simon Xue <xxm@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>, smalltalk@swismail.com, 
	Serge Semin <Sergey.Semin@baikalelectronics.ru>, Kever Yang <kever.yang@rock-chips.com>, 
	Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	linux-pci@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_122154_904571_4C82571F 
X-CRM114-Status: GOOD (  26.70  )
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

On Tue, Feb 28, 2023 at 7:44 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Tue, Feb 28, 2023 at 08:53:50AM +0000, bugzilla-daemon@kernel.org wrote:
> > https://bugzilla.kernel.org/show_bug.cgi?id=217100
> >
> >            Summary: Bifurcation between pcie3x1 & pcie3x2 doesn't work in
> >                     RK3568J.
> > ...
>
> > Hello.
> >
> > First, I want to say that pcie3x1 crashes if started before pcie3x2 . Driver
> > > pcie-designware.c
> >
> > in function
> >
> > > void dw_pcie_version_detect(struct dw_pcie *pci)
> >
> > tries to read parameter from dbi register (PCIE_VERSION_NUMBER) and fails on
> > it.
> > So I changed sequence of declaration PCIE in rk3568.dtsi: first - pcie3x2 next
> > pcie3x1. Now Linux first starts pcie3x2, then successfully starts pcie3x1.
> >
> > But main problem is that bifurcation in phy driver
> > > phy-rockchip-snps-pcie3.c
> >
> > doesn't work. I tried add next lines in function
> >
> > > static int rockchip_p3phy_probe(struct platform_device *pdev)
> >
> > right after block check
> >
> > > if (priv->num_lanes == -EINVAL) {
> > > }
> >
> > > priv->num_lanes = 2;
> > > priv->lanes[0] = 1;
> > > priv->lanes[1] = 2
> >
> > And driver writes during Linux boot process that bifurcation is enabled, but
> >
> > lspci
> >
> > does't show second device.
> >
> > Best regards,
> > Anton.
>
> Thanks much for your report, Anton.  People don't really pay attention
> to the bugzilla, so I'm forwarding this to the mailing list and to
> some folks who've worked on that driver in the past.
>
> MAINTAINERS doesn't list an entry for pcie-dw-rockchip.c; I'm not sure
> if that's an oversight or if nobody cares enough to actually maintain
> it.

Good Afternoon,

That bug report leaves a lot to be desired. Configuration of the phy
must be completed correctly in the dts or the pci controller will hang
and / or crash depending on kernel configuration parameters.
Bifurcation is not automatic.

At a minimum we need to know what device they are attempting this on
as well as the full dts they attempted to use. A full kernel log would
also be helpful.

Very Respectfully,
Peter Geis

>
> Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
