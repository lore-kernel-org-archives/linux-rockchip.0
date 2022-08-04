Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D37BDC19F2A
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Aug 2022 18:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/gVBHBNdQIZPlIEoANphgJ0lzHjNhn5kD1OxDLFVKwU=; b=If3qT/5bUsWBYl
	P5jhH4jtxFOUuJdagNkh81qzprlNQRGg8UESrtmO1wq3zUKYQV5+3sOt8smL8jVCgGgY19Kh3ch1E
	zphCT8K0xmYW4ZClViiHo0MZ8NuCzvXzr902VWIT2Tta4puDRKqToZIp+EGZEATdLG0Fq90SrsPA5
	YOfWIg4DUPBDGHVUtokd3XoBHF/TeQCKnL7gJUj37K8urIzVqCY45DuXOUfFWWiYWdFgxU99S1H7S
	gl2/Azy02zLgKIQptciM/x5R6GZOc/+ZVMuV/CHaSAyR3HhD2Xap7lza6Q7oz5yiSxP/QWrOKnIST
	FqwRcXOBBmuScGyUid+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJfYI-008CRZ-6M; Thu, 04 Aug 2022 18:26:34 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJfYF-008CP5-4U
	for linux-rockchip@lists.infradead.org; Thu, 04 Aug 2022 18:26:32 +0000
Received: by mail-io1-xd2c.google.com with SMTP id o2so316757iof.8
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Aug 2022 11:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=s9D0tQ74Aa05V8FxxaIPM4SruGrj8130+5XIa4Wmvs8=;
        b=EmKih+SAWAnsaIbzoUmlsTtIZzpu31YmTHPBdqHpLl1SUSO2BXE1j0E+/xwXaUcPZ3
         E1637Utk4DDpqUQ2q3HwVHmlmphpr0gVb/wihqnjLbuLjIFPKGRMX/ZRLQD5jcM5iOKq
         YSJqZ9jukqFRNvs8x6KLoIkCR2KYIqBpleMXCisyoVC8w+3Sb/GBp2nfPhIXo1517npH
         jR7Brns0PCGWijOVIvcFgPh2kgWqHlQFfmm8QJgp3J83HCSabNWo2QyqmvZ1qPEAWeU9
         TCw0Ymc2o7cQmcJGX5/e4LoFmL3IkaO4YEG5IQNT7s1dXfxrQ+PmDdAwXSRzHwy9ZxWJ
         hLHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=s9D0tQ74Aa05V8FxxaIPM4SruGrj8130+5XIa4Wmvs8=;
        b=2G5Tckb0Q4IjSJI03Y98i+08Z07WVSPyS1fUSdFCeZcDpxzsJ87lcsLVv94OyP5LrS
         xkLg9kCTBxM6feU4N5e9vy4CfLaKzidCyc5p4onsM9bEMLEeCQX9z2qlcR59r1877Udt
         0OCqrEc7uQV3o7UPPkXJ9Uq02VIcJtTZ7NsZ7bamyD2zM/B1D/xZwF5OvJYGZinjV7KC
         ngu4ev/BUV84Zd97y6wcJaYwRATKqEZVX9MnUDUJD+YBtAaUF2o4EYR9aQBShnY2HLBI
         DXETaeoN8w2m/cEwX+FFrDsEy3Ac6xBMtmuKDq0qLhX2GO/PXjYlhpdaniBWChaSCqoj
         Y3HA==
X-Gm-Message-State: ACgBeo1E5VFuQX3lZBD2ntNRqcISHmDexWVJa/31z3EaD8ttlw0Y1utv
	84AWGsdXTrGmlAp/rUmdiin+yRNg1ui5bdAv6k/Bjg==
X-Google-Smtp-Source: AA6agR5WO/o7DOwqWNudivwJicstDS4jkVZeA9cf9xkke/45dOQQnhVRLBFQXaab8TmYHMkOxJ/V8NJ36MpX/b5Iyk8=
X-Received: by 2002:a02:ac03:0:b0:342:89b5:99af with SMTP id
 a3-20020a02ac03000000b0034289b599afmr1390657jao.305.1659637586759; Thu, 04
 Aug 2022 11:26:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220731174726.72631-1-jagan@edgeble.ai> <20220731174726.72631-3-jagan@edgeble.ai>
 <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org> <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
 <20220803223343.GA2737695-robh@kernel.org>
In-Reply-To: <20220803223343.GA2737695-robh@kernel.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Thu, 4 Aug 2022 23:56:15 +0530
Message-ID: <CA+VMnFz9H1RPR+wTjnhgD+DK=-5=yhn1WjGfbjZ5P6q+4gGoQw@mail.gmail.com>
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for RV1126
To: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Kever Yang <kever.yang@rock-chips.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	Elaine Zhang <zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220804_112631_418730_53E9BA5E 
X-CRM114-Status: GOOD (  23.09  )
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

On Thu, 4 Aug 2022 at 04:03, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Aug 03, 2022 at 03:54:56PM +0530, Jagan Teki wrote:
> > On Tue, 2 Aug 2022 at 16:08, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> > >
> > > On 31/07/2022 19:47, Jagan Teki wrote:
> > > > Add power-domain header for RV1126 SoC from description in TRM.
> > > >
> > > > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > > > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > > > ---
> > > > Changes for v2:
> > > > - add blank line
> > > >
> > > >  include/dt-bindings/power/rv1126-power.h | 35 ++++++++++++++++++++++++
> > > >  1 file changed, 35 insertions(+)
> > > >  create mode 100644 include/dt-bindings/power/rv1126-power.h
> > > >
> > > > diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
> > >
> > > Vendor in filename is needed.
> >
> > Yes this follows how similar rockchip vendor notation
> >
> > $ ls include/dt-bindings/power/rk3* -l
> >  include/dt-bindings/power/rk3036-power.h
> >  include/dt-bindings/power/rk3066-power.h
> >  include/dt-bindings/power/rk3128-power.h
> >  include/dt-bindings/power/rk3188-power.h
> >  include/dt-bindings/power/rk3228-power.h
> >  include/dt-bindings/power/rk3288-power.h
> >  include/dt-bindings/power/rk3328-power.h
> >  include/dt-bindings/power/rk3366-power.h
> >  include/dt-bindings/power/rk3368-power.h
> >  include/dt-bindings/power/rk3399-power.h
> >  include/dt-bindings/power/rk3568-power.h
> >
> > >
> > > > new file mode 100644
> > > > index 000000000000..38a68e000d38
> > > > --- /dev/null
> > > > +++ b/include/dt-bindings/power/rv1126-power.h
> > > > @@ -0,0 +1,35 @@
> > > > +/* SPDX-License-Identifier: GPL-2.0 */
> > >
> > > Dual license, please, unless some copyrights are no allowing this.
> >
> > Yes, as we discussed in v1 - I'm not liable to change so I keep this as it is.
>
> I assume that would be Rockchip. Can someone from Rockchip please give
> an okay here to dual license?

Kever or Heiko - any comments on this?

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
