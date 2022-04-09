Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66C48C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Apr 2022 11:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3ZH7H22ytDKa3dQ+8cGEODoxx+iOju4cUBr8Umi48U=; b=2G6SjwLoNq0cUI
	LuuoWHV/bXBX5Tjtam+jjX5PpFOH9SAbKVxYdjeKrxXlMJR7UseEau+25RPIFzslha1FqkzKjF5iC
	UioRAJHeLl30f5hfFxfylG6F2PDmi4nxynI3JmZoh4y/2W3Klx3qGDeL4wLo67yf9d0QoKS0T5I0W
	JVZTfOcIC86f5KvypM8f3nBb7rJ5jMV67+P44XVAz0NtWhotR2RJ+yClXQkquC4eTmn7p3U36sqYm
	AFnHw5cJIM2zPCaa4oSmRnka5I6QUPsC/kjMr5x7e2tQywcXxIp99s/d54Mg+yg58rRj5rFwKRdko
	ZdipMYGPVJuxdKpOJfeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nd9Ix-002xMa-1v; Sat, 09 Apr 2022 11:30:59 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nd9Iu-002xLj-Pe; Sat, 09 Apr 2022 11:30:58 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id g9so19368513ybf.1;
 Sat, 09 Apr 2022 04:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mEdKNOhh1cJDumzmCZuUJ2Wd2FaFg67XH6NgTF7v8WY=;
 b=LIxE2fWa9+x7p5aHVMDiLcfp1TOnxGHGxyZ+iEYDu3WEdZ20PCzgEy/SjoLWMMN7Vz
 003K2adDJcFxWm6BpWILM+aMKWEAv3lJEB1q7gJ2GdO4441kuhy1N/p06Mqdx3PeM5ib
 jLaeNTVPv30y8zGCAy8h8dFsAqXYcKzLC1++wueiCPxYjI2b7AugrzDpSq+qGNh9nG/M
 QjtL0IHWKi1yvvv87ZJKzMA9HX9YRXZxUYmU4VaEX4inSqTYkHxKpGp4fF9dkICUtalx
 +nG3HF4p/z8DftmT2e5pTEKmnvGGd2oIBUqU7OlihbGCtHi94FYbEyz2sYksWRNuFQ8F
 R7eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mEdKNOhh1cJDumzmCZuUJ2Wd2FaFg67XH6NgTF7v8WY=;
 b=8BUXF/23Mzj9xeLTC63lVrrkmAxIvb7VX26knkZtilQIxHo6S8r6CJt+26ao4L3oDz
 9512zzJI56BocGlEJGdqv2jIG5h8ygsNk3FqSVuy/d8JHnPDKifkEHfZzaa6W/8h3fjN
 fNGllJEBKTYgWohRQuu9j7hqlXhKH1Cs+cWpm9O/VcVVZZFREFQEB+5bzfgn2hifVIlG
 9oIXaxvA/SqeVnT7ilpi/gWJVMMi3bmpXNDldvjCjPON81OP+36R5rtkDQ43juwQvyyC
 2gI3cYaUsoLEoKIV4vXwS0mtnawKTKSb1ZU4B97z8QuwiOBCV8N6ChIEKjUt9UUqAbtZ
 gn7w==
X-Gm-Message-State: AOAM5325ayhK2OjIQ2tuAcVklfFo988zEN/Su6y0UkOiT7NQz2nFOgCZ
 MBptd3reSkqnw1hNesrhQ+Ta7k1bZWE/9eysmtk=
X-Google-Smtp-Source: ABdhPJxqVEZXDf3+mCnU5nKUvPBmSkptvptGaHEpqZlM50Q8ex928jQytNFPWQ3jzbK4691NI6HFuB4CUcuyT1o8nCA=
X-Received: by 2002:a05:6902:cf:b0:641:32bb:53fc with SMTP id
 i15-20020a05690200cf00b0064132bb53fcmr365654ybs.232.1649503854885; Sat, 09
 Apr 2022 04:30:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220409075147.136187-1-linux@fw-web.de>
 <ba60121a-a120-b717-6a2f-7883685d17e6@manjaro.org>
 <trinity-b6d141b2-264a-4a57-9707-6a38a80cea16-1649501859874@3c-app-gmx-bap35>
 <4559790.iIbC2pHGDl@phil>
 <CAMdYzYqx1iUuEe9FPpUTgL0L2i=Q5Sq2+0oiSYzqkV6noQ8BFw@mail.gmail.com>
In-Reply-To: <CAMdYzYqx1iUuEe9FPpUTgL0L2i=Q5Sq2+0oiSYzqkV6noQ8BFw@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 9 Apr 2022 07:30:44 -0400
Message-ID: <CAMdYzYqaGe9_GbRCvG3kvLpNsVfVqGNkg=YYgbVR90Qtcs9YSA@mail.gmail.com>
Subject: Re: Aw: Re: Re: [PATCH] arm64: dts: rockchip: Fix clocks for rk356x
 usb
To: Heiko Stuebner <heiko@sntech.de>
Cc: Dan Johansen <strit@manjaro.org>,
 Frank Wunderlich <frank-w@public-files.de>, 
 Frank Wunderlich <linux@fw-web.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_043056_896396_A1318A1D 
X-CRM114-Status: GOOD (  28.50  )
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

On Sat, Apr 9, 2022 at 7:14 AM Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Sat, Apr 9, 2022 at 7:01 AM Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > Am Samstag, 9. April 2022, 12:57:39 CEST schrieb Frank Wunderlich:
> > > Hi
> > > > Gesendet: Samstag, 09. April 2022 um 12:40 Uhr
> > > > Von: "Dan Johansen" <strit@manjaro.org>
> > >
> > > > So the issue is only with usb 3 ports, not usb 2 ports?
> > >
> > > my board has no standalone usb2-ports. usb2 is integrated into the usb3 ports (dual phy). here both were not working.
> > >
> > > afaik rk3566 has standalone usb2 ports that may not be broken, but i have no such board for testing.
>
> Good Morning,
>
> >
> > As far as I understand the issue now after checking the code, this
> > patch actually fixes the usb3 series from Peter, right?
> >
> > I.e. the usb-nodes that are fixed in this patch are not yet present
> > in the main rk356x dtsi and only get added in
> > "arm64: dts: rockchip: add rk356x dwc3 usb3 nodes" [0]
> >
> > As we don't want to add broken changes, this fix should squashed
> > into a next version of the patch adding the nodes.
>
> Thank you for reporting this, I will squash this fix in and add your signed-off.
>
> However the offending patch is in fact the clock separation patch, and
> it breaks backwards compatibility with the rk3328 dtsi which is why my
> series also is broken.
>
> The rockchip,dwc3.yaml needs to be fixed to align with the
> snps,dwc3.yaml, and both the rk3328 and rk3399 clock names updated.
> Also the offending clock separation patch needs a fix to grab the old
> clock names for rk3328 backwards compatibility to be retained.
>
> This might also be a good time to look into moving rk3399 to the core
> dwc3 driver?
>
> This is a delightful mess.

In the idea of getting this series to land, if all parties agree, I'll
submit a patch that fixes the clock separation patch with this series
and leave the naming as is for now.
The renaming of clocks and alignment of everything can be addressed in
a future series once discussion on how best to handle it has happened.

Do you concur with this?

>
> >
> >
> > Heiko
> >
> > [0] https://lore.kernel.org/r/20220408151237.3165046-4-pgwipeout@gmail.com
> >
> >
>
> Very Respectfully,
> Peter Geis

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
