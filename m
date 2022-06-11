Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2F8EC43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jun 2022 13:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXCC3EnX+N126YD5XpABN3a2SnMVZjripJ95Mze42r8=; b=sbTAwskF4AMNdc
	VUwUvSa+KKFfgNoKoq0uz0x2+aPEl7PHUIOWHp1Rc+eamUmtkPXOua/X249RhMY1Ofl1McQNtzY1y
	l14k94ZgHQactGZh89cyW/qtVdOybrbv50rQrZvxBpCsyvo554gqWK30JIZ87z2+ETRm+UcaycYMt
	eYJ7FM+48ltUMwmjAtOKymyNGAXK78w41z4AL+kIvg2wjD7Uk92+HchCaPT1E7Sdx9Em4C46AwPDJ
	kOSHjxyPHm7A6JjC8+YMIQPTR5/y2xLCMIznkPZ+ouL8JYgrN8izV8ItJTrLFKzh2yfx8GiJdnGTI
	hYjxoikiOyih8OLzJv8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o01Yz-00DA1I-Up; Sat, 11 Jun 2022 13:54:05 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o01Yo-00D9v7-5U; Sat, 11 Jun 2022 13:53:55 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id t1so3049124ybd.2;
        Sat, 11 Jun 2022 06:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0XBD4QmluSTtyUUhL2fAA/t1LEvKNRF+9JYNqJ8wiI8=;
        b=j7JU1GcRirXqAqhBo6OeURWiAC3D74b53mGfYrSAzXlaIm3zFbgt1F6+o01xvhyXZ1
         C94ZDbBD0jmHdorQ8P9msuQBesAMwvJ21VoS1OMbd3SGH4Sk1ro5pfSmNOwXJl2B6VC/
         peAifHJDHYiB8K1SPWFGJcworCOPsk5ScLudTy4b/gNRG1otBPKX0Wdk49XLT6LhVXLX
         iQgVX0rwqMMYu3Qr6H+DmLmjcFunDj0f5xOWF7QNmFm0ngDYd0H6j/JCZbqUXseuT1fJ
         ekwdD76N833+cNm6z8qZTqCPCTjKJUsV4LrRf0ATrP9/fKXTblDxnHnjiXNnayKDB9Gl
         +kAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0XBD4QmluSTtyUUhL2fAA/t1LEvKNRF+9JYNqJ8wiI8=;
        b=6Qmzjio30EaVEDLUeEK0gqNc5prG6rOzjOQI17VTb+Rc3LR6B2rvVop0ZjnNh+njJA
         nwr1V5HRB6/0DfOPvfbnHQolQz6CUftPueYDebIJcFlfGabFGBfRaoifhYGic7KXfQcy
         N126pjj+i3/CHzvXoSjfF19q31GTP7Pqk907kOR12xVvfn9avTGlCDjhsoTuMkUbUNmq
         pncyE0aCWH9mbQL3J7vC98fg+4zAfTm5nSsrKwbHt+H+2QG+KNXLgZQFu0eazT4YPmlb
         sxTbQGm6emnzYCeRi3qmEbdsyKSvmme75cArZFpujIPGltuZwzzudDrhCws3U1p8K3qD
         gslA==
X-Gm-Message-State: AOAM531d90w7uZ415+EYdpg3pz8AjUjDTTOrRPFby8LOcG0OAzEIFwzC
	/+As+EwwjD/H7uu0zQ+p64D29zweRGwUzbt8z/E=
X-Google-Smtp-Source: ABdhPJy6keycdZ2r43RjmcTwfJS0G4z+XhBO91RI5+nLiwpkdMfl+es9fjkSmAYV7Tv7HFAfPn6RP3634VPHNg2Kg/8=
X-Received: by 2002:a25:b29d:0:b0:664:49bb:6a60 with SMTP id
 k29-20020a25b29d000000b0066449bb6a60mr11334808ybj.173.1654955632361; Sat, 11
 Jun 2022 06:53:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220610132601.160088-1-pgwipeout@gmail.com> <CAMdYzYqJ2S8K2NCH1uQ2xDjTfLmePPv5TzgeXZa0EG6XdGQzBQ@mail.gmail.com>
 <4178848.3VsfAaAtOV@phil>
In-Reply-To: <4178848.3VsfAaAtOV@phil>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 11 Jun 2022 09:53:41 -0400
Message-ID: <CAMdYzYqRcrawKc-GsTgwnPuJBJoKTn9Arfpj_Vjnt+3DeT7k9w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix SoQuartz CM4IO usb
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Michael Riesch <michael.riesch@wolfvision.net>, devicetree <devicetree@vger.kernel.org>, 
	arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220611_065354_250862_69ADC29A 
X-CRM114-Status: GOOD (  23.06  )
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

On Sat, Jun 11, 2022 at 9:50 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Am Freitag, 10. Juni 2022, 16:44:23 CEST schrieb Peter Geis:
> > On Fri, Jun 10, 2022 at 9:26 AM Peter Geis <pgwipeout@gmail.com> wrote:
> > >
> > > The SoQuartz CM4-IO should support otg mode, however it currently
> > > defaults to device mode when otg is enabled. Force it to host mode to
> > > retain the previous behavior.
> >
> > It would seem the role-switch issue is more widespread than originally
> > thought, affecting other boards where automatic control should work.
> > Please hold this patch while I investigate further.
>
> ok!
>
> I guess this also applies to
>         "arm64: dts: rockchip: Fix Quartz64-A dwc3 otg port behavior"?

No, on Quartz64 Model A it can't work, the requisite pin isn't connected.
I think I've found the problem, I've requested a few people to test a fix.
Do you have a Model B or SoQuartz to test against (or any other rk356x
board that has the id pin hooked up)?

Thanks,
Peter

>
>
> Heiko
>
>
> > >
> > > Fixes: bc405bb3eeee ("arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x")
> > >
> > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> > > index e00568a6be5c..56764fae9f9d 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> > > @@ -169,6 +169,7 @@ &usb2phy0_otg {
> > >  };
> > >
> > >  &usb_host0_xhci {
> > > +       dr_mode = "host";
> > >         status = "okay";
> > >  };
> > >
> > > --
> > > 2.25.1
> > >
> >
>
>
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
