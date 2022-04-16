Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31EBAC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 10:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVk7tjPwQFYkomybyuLGzBiF6KOyxczQ6hmf1YsLtNY=; b=MtdqFIoLKItSS0
	Q7V/NnyGXW4UTVqnWn932aIL66BwyZDm1E17CVCRGCk1ba2tzNm+rXaq+zkjnuWk/qHdbF0YmAl8h
	GrkTmO3z83GRC0+pVDKQNzclrEW79hkX6mERE/aNPKy05HmMRZ3Mg7chcXNwURvMtLR2Ndjh4bH1n
	BAglq6OIlyq8MVh6P7llWwkA8OJSqbZFXvi46ANrllFERRuERS1c4N+pstNra1gCwZkA8jSvK4uPk
	z3IuWYCdIIMyJiwCEnX07h6SMweyycSDQifAWxQXHlfEVArxpqoVdgdgUJed2W+8syYeHaxpVzRBg
	WZHs6AoBvbybObLfn2bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nffUh-00CjjQ-Tp; Sat, 16 Apr 2022 10:17:31 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nffUe-00Cjj3-Kt; Sat, 16 Apr 2022 10:17:29 +0000
Received: by mail-yw1-x1135.google.com with SMTP id
 00721157ae682-2ec0bb4b715so102254727b3.5; 
 Sat, 16 Apr 2022 03:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h/KYTg2xXUE+fmRA5+xn6FS4kLYWK/is5FVU0I4kM/A=;
 b=bGU/lKJg3HCTQZExsK0yX2bIx9pb/xH8aWrp98pP/p8Zfdy7X87HD+bJ86VC3cXNZ8
 vMsHXh9VqligxGoQFzoqdLF41CUgIlfjqj9ak4ZRFAeel6DN6bnWxrE5Cb/CZsTSqS9i
 Jk8ANhtAL31fGHfVGq5rLGb1EDXXqH3dNN8MyBJwmqnA0KFCTJT3e6VRA14GbitN8Bsl
 zCPvaKgON+nNTaGxsSsKy2jL2nkVtvqGZSP13RVvyc8W1eQwFPI690RO1Z0Dq3H1BYHZ
 cZgeYXJ0hAVE11arMJ4cMKJQc+BoX0KMu8F2FznmlQi+avRbBIKiM0As7xAfXo/ge3Bv
 +zEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h/KYTg2xXUE+fmRA5+xn6FS4kLYWK/is5FVU0I4kM/A=;
 b=4H5Sbd3bNlJZzJe60tRwEYSgGjWxU7gn8T9e/jSW5blu8Gj6jmN3H3mIcKqnR8+dTY
 KPWNMKqD5f5qyQLEBLPizxfvCb90cOyVGFvMVXgmJcB+ssaN92mDo3qJdG9fDpf1zquk
 5ycNVRIwt0iUUdPLHb0Xyyg05R99pUATUkrtkGbhDLNvS7TdZ74gWyiUzgxNrSBCsixy
 KsF77f+z5cEFTheNMhocGygZcVlgM+hyG+8Q6Ofy7OboWqugy72yIjlK78ICAkLJQEml
 KjNck8sdvQ7aqxuCGZlaI+Ar6lI6LYnkIgia+gN8SMuHGD0CSEY+nuR+EUmy+d8hL5UC
 h5Xw==
X-Gm-Message-State: AOAM531stI/UKsAYlHFK7078MoZtdYTc8he47OxUawpkvGPajDqtKLNX
 3BgreDzg6HN/AKG4byVoSeE5dvl+hGOEgoM22Wk=
X-Google-Smtp-Source: ABdhPJzi44FbtdtM04RnhLw45kwZZjiC6lpc6Os76YWzOVKbZyrSGj9uXweJAz5oQSgBMp+XgzF6Xu78RCu8hdSup3w=
X-Received: by 2002:a81:52c8:0:b0:2ec:8fa:ebfd with SMTP id
 g191-20020a8152c8000000b002ec08faebfdmr2421292ywb.502.1650104246578; Sat, 16
 Apr 2022 03:17:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220416100502.627289-1-pgwipeout@gmail.com>
 <20220416100502.627289-4-pgwipeout@gmail.com>
 <eadc4422-15bb-0b46-8235-db6e160e8d32@collabora.com>
In-Reply-To: <eadc4422-15bb-0b46-8235-db6e160e8d32@collabora.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 16 Apr 2022 06:17:15 -0400
Message-ID: <CAMdYzYq=nQhwY_4+Y=PM9do_Dcrg1pD-jeD=q36D48ks=WDVgw@mail.gmail.com>
Subject: Re: [PATCH v6 3/4] arm64: dts: rockchip: add rk3568 pcie2x1 controller
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 PCI <linux-pci@vger.kernel.org>, devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_031728_736119_3B37F2AB 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
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

On Sat, Apr 16, 2022 at 6:08 AM Dmitry Osipenko
<dmitry.osipenko@collabora.com> wrote:
>
> Hi Peter,
>
> On 4/16/22 13:05, Peter Geis wrote:
> > +     pcie2x1: pcie@fe260000 {
> > +             compatible = "rockchip,rk3568-pcie";
> > +             #address-cells = <3>;
> > +             #size-cells = <2>;
> > +             bus-range = <0x0 0xf>;
> > +             assigned-clocks = <&cru ACLK_PCIE20_MST>, <&cru ACLK_PCIE20_SLV>,
> > +                      <&cru ACLK_PCIE20_DBI>, <&cru PCLK_PCIE20>,
> > +                      <&cru CLK_PCIE20_AUX_NDFT>;
>
> Why these assigned-clocks are needed? I don't see anything assigned in
> this patchset.

Ah, those are remnants of early bringup when performance wasn't good
and I was manually setting clock rates.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
