Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11012C05027
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 15:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hPsZZK4n0wgmRqpYIgi3yM3X2sps+O7kJNs1aZnTC0=; b=fvvhQMELgyyhF1
	peexkqYCFwlc1ULazMS0JvtWQFgW3e/I22Ps9dsYtH4fadiSzmNucXOIyJHDSHjrR4+jYQToyYJLE
	0573uny8DfaIyN39gl7MpikqN/bArvFUz43dp+UKVyqw5e+U7CshYPiy319xJHEH5fM4dVH75MELR
	9Zu2GY0h2PBRlRoMdI3F8MXc/UAAVtEAmBDCLx9VHkq9s2glLSt3vR9MFX2GTmt3044PO7YrS4JHK
	3DcBRoQEOx9F9M/sGBvWuZwIiFZUb4p8bZSs2DyP+kgvOycWSdgQNkp+uA3jkMno36gsIhP+cXPTJ
	TN82Q5FSbxifNCl/jH1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL4E4-00BX5R-Fu; Thu, 26 Jan 2023 15:31:44 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL4Dn-00BWxi-MX; Thu, 26 Jan 2023 15:31:29 +0000
Received: by mail-ot1-x32c.google.com with SMTP id b18-20020a056830311200b0068aed2e014fso96890ots.13;
        Thu, 26 Jan 2023 07:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BOOLjJP/DVblUUBITFT/Clnx2J0qjci9FP4191B8GGA=;
        b=kfF4oJ+7bDkiArH9VCNhiOZA3zJMx5SUjUkq6wS1uNb4NBxvFpate7JTlgBQlrmhxo
         h+D5YRvrEAVDq1X9fq8VekKEmJsG/GADiCKx5F0VmzQcWD5rrC2f2PGrDIVTNG0goeUH
         0RfZmLKKqVgRCgXER1Af5Crae/ibLMNO0PQPSqlMBKKGsr7PZ1SKkzPan1e03NVAumV3
         RNdOtSkToPSxofnR9sTgpc5N4miEasySuU85O5vaFgEZokGyrppqYD0N6nvD5JJeH8Gp
         /rlktDvejDB7LyzqLKOVPyTbnEsTsH/cNLqHceRSmKE+eT4g7n44mEEjVathpvQEZRXq
         Xo2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BOOLjJP/DVblUUBITFT/Clnx2J0qjci9FP4191B8GGA=;
        b=kGrThPoh8Y9+hUuXSq2Bv4kBLDJ1Nf/M9TiyL/x3U51zTdDE+hX027+yNcZvoCn5Lk
         +eoX2EjZwxz18luhps6A/RGd0yIAYISD0Hng4euqbrEVnbs/36N+SiJLq1K1eyTe2kXv
         J24FrpM5bEe4GHcGAXX2qcaFfiiU+m7c+temawJzoEwwaekoeBRGvysU64WBx6vHO/e6
         Qy8PMpDK3yr0TqpMYxVqvZVQl4/7Es02j11Vi2VmM231lfl06cXG9MgjtQLV0U5vFW1H
         gu1C7kBW+5OhtqfjR/arSb+FfPe1olu9TuEOSViEOOTvvXIGpw9AGMRLbopyIy+WjUz/
         N/uw==
X-Gm-Message-State: AFqh2kpBuKO/o9x4KGratAAlzCGhYNGMAdXylkADfidq/vftGC5jR8rP
	rs5kxKEnOCVEMW/8kNXNU9oVXp1J3w8jWh4XW/s=
X-Google-Smtp-Source: AMrXdXs24UA4hWdUcc+JZpfPajaLzyE82/X+DFx/CAWvYBhnwLQJBTNQV5FDORmaHJTNtDsDeQV6v71Z2a3QyyCTvS8=
X-Received: by 2002:a9d:6654:0:b0:670:97d8:b140 with SMTP id
 q20-20020a9d6654000000b0067097d8b140mr2059389otm.164.1674747084920; Thu, 26
 Jan 2023 07:31:24 -0800 (PST)
MIME-Version: 1.0
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
 <20230126135049.708524-6-rick.wertenbroek@gmail.com> <6a54a51b-cf1a-c601-275f-00f825fcec5d@linaro.org>
In-Reply-To: <6a54a51b-cf1a-c601-275f-00f825fcec5d@linaro.org>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Thu, 26 Jan 2023 16:30:48 +0100
Message-ID: <CAAEEuhpOjSUhiQFxKwkhiwDNtmRzzUXmGYKMuHWePJF-Q7R9dQ@mail.gmail.com>
Subject: Re: [PATCH 5/8] PCI: rockchip: Added dtsi entry for PCIe endpoint controller
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com, wenrui.li@rock-chips.com, 
	rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mikko Kovanen <mikko.kovanen@aavamobile.com>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_073127_867997_BFEBE0D0 
X-CRM114-Status: GOOD (  21.76  )
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

On Thu, Jan 26, 2023 at 4:23 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 26/01/2023 14:50, Rick Wertenbroek wrote:
> > Added missing PCIe endpoint controller entry in the device tree. This
> > entry is documented in :
> > Documentation/devicetree/bindings/pci/rockchip-pcie-ep.txt
>
> There is no such file

Sorry but the file exists see :
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/Documentation/devicetree/bindings/pci/rockchip-pcie-ep.txt?h=v6.0.19
It also exists in 6.1 :
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/Documentation/devicetree/bindings/pci/rockchip-pcie-ep.txt?h=linux-6.1.y

>
> > The status is disabled by default, so it will not be loaded unless
> > explicitly chosen to.
>
> Use subject prefixes matching the subsystem (which you can get for
> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
> your patch is touching).
>

Sorry about this, you are right, I'll fix it for the next iteration.
Thank you

> >
> > Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 25 ++++++++++++++++++++++++
> >  1 file changed, 25 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > index 9d5b0e8c9..5f7251118 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > @@ -265,6 +265,31 @@ pcie0_intc: interrupt-controller {
> >               };
> >       };
> >
> > +     pcie0_ep: pcie-ep@f8000000 {
> > +             compatible = "rockchip,rk3399-pcie-ep";
>
> reg is usually second property...
> > +             #address-cells = <3>;
> > +             #size-cells = <2>;
> Best regards,
> Krzysztof
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
