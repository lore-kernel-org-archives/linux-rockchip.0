Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE84DC43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jun 2022 13:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wwe9pIvpKWnofVBuigpGfehu6qGwI3q+FLH96SsbnKg=; b=d6h3yToGLOWIEm
	Mo9lHVZDaUxSCiB++ROCQ6U3aFAatN197HQN9XY0DgWm91FMZfahwRIPNOLCNu0LpTGQAArAd/fGx
	OV5eoCFUyNvNTlMW9EIjZ1rhwZgAqUpUNizRqGquzZ/uGVeivz3LwMnJl94YWjGOjiorlRR0du9Ah
	phNsUqgrgALZ9yY2RpAn7SmqmuJ5pvXCNQOtIjcYexPXbMyPns7hQOlLOK9IYRnZjWsRs5OwHFhSU
	D1LK6RPksnNffCz/eeumKMver3QA8FXAaCi0nusoMo3TgMaQ0mxsXzqF9ZsGEV91y9kmoI5fl7Ika
	1Wa/FkzgmDdgnkL4XZ0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o01WL-00D9H1-NM; Sat, 11 Jun 2022 13:51:21 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o01W6-00D9Cg-M1; Sat, 11 Jun 2022 13:51:11 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-30fdbe7467cso15157467b3.1;
        Sat, 11 Jun 2022 06:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CIi/KR48LCf1Hz2Cz/+6pDezxkIjhX95zYaLpybh09Y=;
        b=gKtsdoiImvMAjdt8jolYmLjjoL5nKmt7wFj2Hy/7Fo6Wc75aFcSpIfm9DWYwGvXN+u
         gL7J63+aKiOgihEp6oFVgF5v9kIRxtOhj0zIGZYm7JqPBEgM4ZVhPumey4YVoJk6g1fN
         Hlznvz3xCAOZJMHsbChoZprnCfXCpaHliMZDHOgcb1VkCW5zKMjGFfUC84cnjPwUWxYy
         uSf4B6baXr5rBXWliYbL5Lngau/PiG+I4p3md9XiGcy6o8HOtxD4XPUmyrJcZEuZI/ux
         n3nWCQ/qp8hmoG7R8FCkoH5U2Y4GXNXwK9jxif3RHqV7IOOwPlmNULU16p9iSAmvvvV6
         9HsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CIi/KR48LCf1Hz2Cz/+6pDezxkIjhX95zYaLpybh09Y=;
        b=UuycyMpLeuKm40CUbxMh70XGXUZfimt7Vf0Si5eefDfFB+ndILPfXFKlCZSxslt+/H
         v9Tfa+1Mb/H6bwMeLjv08AWLFmDyMyIVmky7N7wpFaDyCAih3aOZBR03ADddisstNjnP
         XXrecPAi0rsi7RGdaiCqp0zWYcHhmgdpVISK1V07cssaBppul/hc5Ka52GYRKX777wbX
         s0BLZBLpogzx14kIS1t/JnQ7fgw++/5WNPe50IwOG0pTd7/DBaQkr1Ux364hDLdhfc3C
         Hovnc+R0gqUMN/9Ay6StZ9ldI/eToBoj6yfZ83oWO6ZbfQXIgL5G2JD4skHWI/bBiYaH
         MNlA==
X-Gm-Message-State: AOAM533dCiBfPbC0GZJtBpp34GKKvXIQ8fz7KtYV6Iu7MC8eQ71GkKKl
	NXMb07eThrstqNcMQviHrGpIMqIifpvXKsCNjZ0=
X-Google-Smtp-Source: ABdhPJyw0mX4zwcIWAZ5xfazDHvtqgj48NkNv3sycBKJaZXGBlQWdOiHMHgR1FUorl6uAIo6XP9y9mOeIj8U7uM5WvE=
X-Received: by 2002:a81:5c5:0:b0:313:e5c5:53d5 with SMTP id
 188-20020a8105c5000000b00313e5c553d5mr3625440ywf.281.1654955464947; Sat, 11
 Jun 2022 06:51:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220611065300.885212-1-frattaroli.nicolas@gmail.com>
In-Reply-To: <20220611065300.885212-1-frattaroli.nicolas@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 11 Jun 2022 09:50:54 -0400
Message-ID: <CAMdYzYpvtZf8q+7Fon-nj=XbjZ-XQdD-bnY0mdaBxELVad2Cgg@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] HDMI Audio on RK356x/Quartz64 Model A
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Liang Chen <cl@rock-chips.com>, devicetree <devicetree@vger.kernel.org>, 
	arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220611_065106_757216_E38EAF5B 
X-CRM114-Status: GOOD (  17.63  )
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

On Sat, Jun 11, 2022 at 2:53 AM Nicolas Frattaroli
<frattaroli.nicolas@gmail.com> wrote:
>
> This enables HDMI audio on Quartz64 Model A, and the RK356x SoC in
> general.
>
> i2s0 on the RK356x is connected to HDMI, and only has one DMA. I've
> confirmed this with the TRM.
>
> To test this, one needs a video clock, i.e. there is no audio if your
> screen is off. The framebuffer console or something else needs to be
> running to get audio output.

Excellent work!
Tested on Quartz64 Model A.
Tested-by: Peter Geis <pgwipeout@gmail.com>

>
> Changes in v3:
>  - rebased onto next-20220610
>
> Changes in v2:
>  - reordered nodes in rk356x.dtsi to conform
>  - reordered properties in rk356x.dtsi to conform
>  - add Michael Riesch's Tested-by to rk356x.dtsi
>
> Nicolas Frattaroli (2):
>   arm64: dts: rockchip: rk356x: Add HDMI audio nodes
>   arm64: dts: rockchip: Enable HDMI audio on Quartz64 A
>
>  .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  8 +++++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 33 +++++++++++++++++++
>  2 files changed, 41 insertions(+)
>
> --
> 2.36.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
