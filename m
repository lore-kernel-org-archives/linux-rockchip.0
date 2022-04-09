Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09A94C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Apr 2022 11:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06dL9n2kv0iSOG41RL9Dqm691O9ztgFXGTUx3S57Y/M=; b=cBmFE0tOZlbhoO
	42M/k53VftlXC6oeZvVPd4WML8YQX12QSF048ak0QYaX3s+1EWI3sI2PXJ+U6AwS5BPEYZ8mnuFjS
	NO95wyrC4FNgX05HGVL+me+c62ULLM67AxLfpnMAneUMpUS/Ra9Ln9/NNp1RnM6XjIrDzNghFTU1z
	vgWoxhUJRvDewHTHBmwQ0uL8kn0kSFmuuPqkBP1d6yu8ADUeAxmin4+YaV4AvV0Si/XUba/JZ27B+
	d52JPaHbOYB87rJQz2UWa12a4O+aBd0uAgFCaQGUFROTHdwkYTg/So4I/8B+foLNa/fjGy37iIQDR
	s5zusEHSeZlJ1AE5iQsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nd9cw-002zsr-Gg; Sat, 09 Apr 2022 11:51:38 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nd9ct-002zsQ-DU; Sat, 09 Apr 2022 11:51:36 +0000
Received: by mail-yw1-x1133.google.com with SMTP id
 00721157ae682-2ebdf6ebd29so50217587b3.2; 
 Sat, 09 Apr 2022 04:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GoRxX4Vrj9YFq5GHeUiEKLuo6D44wrLEZyT1dPCGMGM=;
 b=Gua1DoikVWhL7UWY/L90uR4VSNW1l8s4IJJ/KfWDiiKf3rdGwOHbBo/vI4AdEo9r65
 1jFpHNtlZKQhk7lyxHKaH1iyjY621snaa/X6fQuvJumI9cpOvHy8zp/yY6E9K7Y2R8g8
 6wiJvhl0qUFO+G2lmx0mmvQP1D0VHWzwRlCzvsM3zMlVJ2YVlV2WtAc0/ZBFAwwLTV80
 iGIPVEI1oEsdcnwddRj+26+Szmc+nP3LOC2SbPK6AyTELYuw7BxFjILja6/1sqrJ+wuf
 YPj0djPcrOwzkYEt/TTgT87AkBFxqV+IjSBeN1UokVP2KdmBr27nLUPRVML54fRew/2b
 dzCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GoRxX4Vrj9YFq5GHeUiEKLuo6D44wrLEZyT1dPCGMGM=;
 b=XA84oaZO4+1kuFmnCOgIV0J5Kdw3lnGIBQ/1e3kCyOZsMAanipQ1oVPACpf2dC2Y5k
 c2f5zlTUAZgUj34P7xZmx6t0CU/tr3pF7pv8JSJRC2ZcdRD+ueae71/3l19uCM5hxtRR
 /LlJy56eKp4SZDlCSCwoPNFEoZg+qEnC0+zqrIwjxBtfOYzg02YzobPS/0971T3DY1H3
 nvhiPZ0OkCfAYORekrJO5nzTyn7UL5pfz+QRkpQhyUofP9IIPOManNCBStW484Qg0yep
 uCkxuhxi0tTxVlrWqOePwA0TrR6FQQt8i8RPdVnecKd2SeucgmsS/Fae/+G8+oJCbafj
 msvw==
X-Gm-Message-State: AOAM532oIQ3wzj0pyE8t4JA4HgcjfTOxKOg2/C0CahJMkk/5SFN/AIaq
 B0FeKWTLkJtBVQw6E6gsFWgCiRAFsmUYWZIyfvc=
X-Google-Smtp-Source: ABdhPJyVQMvZtdY5qxy43OXqDQf52S4KZnA4SZgC73OgBLE0iCldD2N1V4m6ukj4oQ8puIw4qoClUYVCs5aFv1Gxe5k=
X-Received: by 2002:a0d:fa01:0:b0:2d6:595d:81d4 with SMTP id
 k1-20020a0dfa01000000b002d6595d81d4mr20126394ywf.86.1649505093452; Sat, 09
 Apr 2022 04:51:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220409075147.136187-1-linux@fw-web.de>
 <CAMdYzYqx1iUuEe9FPpUTgL0L2i=Q5Sq2+0oiSYzqkV6noQ8BFw@mail.gmail.com>
 <CAMdYzYqaGe9_GbRCvG3kvLpNsVfVqGNkg=YYgbVR90Qtcs9YSA@mail.gmail.com>
 <4232341.5fSG56mABF@phil>
In-Reply-To: <4232341.5fSG56mABF@phil>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 9 Apr 2022 07:51:22 -0400
Message-ID: <CAMdYzYqQXnk=8Lc5ZeAPNQd-EGb=N61FM9r+E380mk6=Mvz1Tg@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20220409_045135_517574_BF4B2787 
X-CRM114-Status: GOOD (  34.19  )
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

On Sat, Apr 9, 2022 at 7:35 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Am Samstag, 9. April 2022, 13:30:44 CEST schrieb Peter Geis:
> > On Sat, Apr 9, 2022 at 7:14 AM Peter Geis <pgwipeout@gmail.com> wrote:
> > >
> > > On Sat, Apr 9, 2022 at 7:01 AM Heiko Stuebner <heiko@sntech.de> wrote:
> > > >
> > > > Am Samstag, 9. April 2022, 12:57:39 CEST schrieb Frank Wunderlich:
> > > > > Hi
> > > > > > Gesendet: Samstag, 09. April 2022 um 12:40 Uhr
> > > > > > Von: "Dan Johansen" <strit@manjaro.org>
> > > > >
> > > > > > So the issue is only with usb 3 ports, not usb 2 ports?
> > > > >
> > > > > my board has no standalone usb2-ports. usb2 is integrated into the usb3 ports (dual phy). here both were not working.
> > > > >
> > > > > afaik rk3566 has standalone usb2 ports that may not be broken, but i have no such board for testing.
> > >
> > > Good Morning,
> > >
> > > >
> > > > As far as I understand the issue now after checking the code, this
> > > > patch actually fixes the usb3 series from Peter, right?
> > > >
> > > > I.e. the usb-nodes that are fixed in this patch are not yet present
> > > > in the main rk356x dtsi and only get added in
> > > > "arm64: dts: rockchip: add rk356x dwc3 usb3 nodes" [0]
> > > >
> > > > As we don't want to add broken changes, this fix should squashed
> > > > into a next version of the patch adding the nodes.
> > >
> > > Thank you for reporting this, I will squash this fix in and add your signed-off.
> > >
> > > However the offending patch is in fact the clock separation patch, and
> > > it breaks backwards compatibility with the rk3328 dtsi which is why my
> > > series also is broken.
> > >
> > > The rockchip,dwc3.yaml needs to be fixed to align with the
> > > snps,dwc3.yaml, and both the rk3328 and rk3399 clock names updated.
> > > Also the offending clock separation patch needs a fix to grab the old
> > > clock names for rk3328 backwards compatibility to be retained.
> > >
> > > This might also be a good time to look into moving rk3399 to the core
> > > dwc3 driver?
> > >
> > > This is a delightful mess.
> >
> > In the idea of getting this series to land, if all parties agree, I'll
> > submit a patch that fixes the clock separation patch with this series
> > and leave the naming as is for now.
> > The renaming of clocks and alignment of everything can be addressed in
> > a future series once discussion on how best to handle it has happened.
> >
> > Do you concur with this?
>
> I'm not sure about that ... i.e. adding known-broken changes
> (for the rk356x) feels somewhat wrong to me.

My series as it is complies with the current dt-binding for Rockchip.
It just so happens the dt-binding describes two different devices that
are handled by two different drivers, and the binding itself was
wrong.
This becomes a whole lot more intrusive if we decide to do this now,
and the offending change still needs to be fixed if we want to retain
backwards compatibility with rk3328.dtsi

>
> Heiko
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
