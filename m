Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5F80C32793
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 07:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rM3SSRUdJXOBUl0FcQ9mG66eo75mKFt5ISy3i2es1zM=; b=ZbeLWSVmj+IOXB
	r/HSNmp7tz8nK3o2uDSXnVt/SvtCetCCwWRcMYlwly8CZlfuxZ/imxD1QfaSnxqG3o80EnlD1ErFG
	7XavneyEEwHv4ClHuImgXNI9XEqujyWRcagXQFipf3lbdG8Xb4pBlplHCrHxxuPbXGbnWDPbhxtSh
	C0Pk+55NoiKVK7tfj+8TdLooUwgIKb/xJXiNIYEZgJ4si338I+4YpXDfi28AO6hSwBahIvy4O9wKs
	AKkhVpXIuyPby38qVlDd+LidN4iNnJQqId50DKrl9dcNimmiahPlcKc/zGTY7c9lz517nk+MRfIGM
	h3Vr4RCCzIiqkZJhnG2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI2kh-00HB16-Tm; Wed, 18 Jan 2023 07:20:55 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI2kW-00HAyx-VF
	for linux-rockchip@lists.infradead.org; Wed, 18 Jan 2023 07:20:46 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-4d13cb4bbffso335988647b3.3
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 23:20:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QHYjNboy8i6R9pkgUzP7nFs+iFK9QG1SwwhxlUp7l3M=;
        b=UvYtut9XPZkKgSHzioy0kuwrqatZGmtMqiRohPNf0LkkqPhoaxWT6DnJdyUSehLWGL
         Aak74rM4QGI4BXUa/eIRNRbeoIEELMzp1G5Psr7FwraJOKbWrim31dvCrJB7UNnE9B+1
         i9/ASuwi0Y4zZlq0try9819MXRYpF6gxGlUmk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QHYjNboy8i6R9pkgUzP7nFs+iFK9QG1SwwhxlUp7l3M=;
        b=Yy2YLdmrL600npi0UXE82fcdh36Tvy9tqSDoNFfA9TuMnu5JWNy7rdlBW7vbC++QUx
         7oV0mJcLVzPVLfmiKA4HY2XqJYc99LM77pYxMilgClwhifz5qCL1uRAHTiO8tdrlFm9a
         r+krmYDgeqyYvN4jt9TWCGF3IJMcGToOqkSfXg+oBOzMuwVdOllGYNMHP1iVlgH2rwX2
         d/V8kXiPD5Knwf7MxRsNHSzrHh92J1aOzHJMceyutDl9482hkFXCLJhR/NPlJ0Ab4wgB
         Gb/ebABlK+pgQ2wul+dXcMQJnmA8qTHefzCvu0eJB5zWIci9Y2pzg5hUO8kSZn6Ialxe
         K3+Q==
X-Gm-Message-State: AFqh2krb7qqe7FnV/jHoz1CWTrOjaeRQs/QMnfYqvFemJj9QU0oydmI0
	B2R12wmHIueqzaRzcafkdLTTiq+GeDB5x8jfrKRHvQ==
X-Google-Smtp-Source: AMrXdXvtYDvMdtONGk24TUgUpLh2hVbPn7Lm7OA2tSJS7jb1XwdZK/sFwbClv6szed1mT098RXTqY7c7zA3yjmmsPuo=
X-Received: by 2002:a05:690c:852:b0:4d7:eb11:6bf7 with SMTP id
 bz18-20020a05690c085200b004d7eb116bf7mr739362ywb.235.1674026443094; Tue, 17
 Jan 2023 23:20:43 -0800 (PST)
MIME-Version: 1.0
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
 <20230117105504.18296-4-jagan@amarulasolutions.com> <2dcb7b4a-9751-ec7a-f0ea-6de748ca3bf7@linaro.org>
 <CAMty3ZD_LWBR2+fu41Z5LEBcNw1KXEaY8P92Ypa-4rg2t8BH_A@mail.gmail.com> <c23bf1ef-de1d-ee64-f624-11e65915680a@linaro.org>
In-Reply-To: <c23bf1ef-de1d-ee64-f624-11e65915680a@linaro.org>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 18 Jan 2023 12:50:30 +0530
Message-ID: <CAMty3ZDjtmJ9Fh-muAOUTDVonM9wjPuP_Xw0Dz27hjOAgbBZkw@mail.gmail.com>
Subject: Re: [PATCH 4/7] arm64: dts: rockchip: Fix compatible and model for
 Radxa CM3i
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_232045_059770_7AE67A9D 
X-CRM114-Status: GOOD (  27.02  )
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

On Tue, Jan 17, 2023 at 6:28 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 17/01/2023 13:52, Jagan Teki wrote:
> > On Tue, Jan 17, 2023 at 4:37 PM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 17/01/2023 11:55, Jagan Teki wrote:
> >>> Fix the model name and compatible strings for Radxa CM3i SoM
> >>> and Carrier board based on Radxa recommendation.
> >>>
> >>> Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
> >>> Cc: Chukun Pan <amadeus@jmu.edu.cn>
> >>> Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> >>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> >>> ---
> >>>  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 2 +-
> >>>  arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts   | 4 ++--
> >>>  2 files changed, 3 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> >>> index 225dbbe4955d..0c9a918b809a 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> >>> @@ -7,7 +7,7 @@
> >>>
> >>>  / {
> >>>       model = "Radxa CM3 Industrial Board";
> >>> -     compatible = "radxa,cm3i", "rockchip,rk3568";
> >>> +     compatible = "radxa,radxa-cm3i", "rockchip,rk3568";
> >>
> >> Nope, second radxa is redundant.
> >
> > It is not redundant, Product name and vendor name is same. Vendor name
> > is Radxa and product name is Radxa CM3i
>
> If this was true, then on their website the product would be called
> "Radxa Radxa CM3i", but it is not. It is called Radxa CM3i, to denote
> the company name with the model name. Anyway, in the name of model you
> can call it. In the context of compatible it is redundant.

Is it mandatory to consider the manufacturer as well in order to
denote the model name of the product?

This I what I thought, correct me if I'm wrong. The recommended
compatible format is "manufacturer,model" so we can consider only the
model in compatible string in order to denote the model name, not the
manufacturer. So with "radxa,radxa-cm3i"  compatible the desired model
would be "Radxa CM3i"

>
> >
> >>
> >>>
> >>>       aliases {
> >>>               mmc0 = &sdhci;
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> >>> index a4c33310ca42..8ca15b723799 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> >>> @@ -4,8 +4,8 @@
> >>>  #include "rk3568-radxa-cm3i.dtsi"
> >>>
> >>>  / {
> >>> -     model = "Radxa E25";
> >>> -     compatible = "radxa,e25", "radxa,cm3i", "rockchip,rk3568";
> >>> +     model = "Radxa E25 Carrier Board";
> >>> +     compatible = "radxa,radxa-e25", "radxa,radxa-cm3i", "rockchip,rk3568";
> >>
> >> NAK. You just changed it in patch 2. Don't add broken compatibles in one
> >> patch (cm3i) and fix them next one. It's like adding intentional bugs
> >> and fixing them immediately...
> >
> > I did squash this with previous patch but the check patch showing
> > warning to separate the dt-bindings patch from actual devicetree file
> > change.
>
> Patch 2 was not a bindings patch, so you squashed wrong files.

I mean 3/7 patch - "[PATCH 3/7] dt-bindings: arm: rockchip: Fix
description and compatible for Radxa CM3i"

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
