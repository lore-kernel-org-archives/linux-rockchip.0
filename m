Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FC8CC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Nov 2022 18:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2U9rOJkRUjZ/xOOP4hzhWrPjnwmE04bi4qv/sfgRg4=; b=V86yjWS4q/0khP
	CkcPO0BR6P1UMHAM7Dh0Zaa1kF0+7L0tDkXifYTrUklmedWHuZO8x2d3Ydain5okeqlwGAp2WwP5Q
	0+xVuHiI4l+Go1K1x8HqqVcnv1zZgA8dziUp90CxvGftKVUkHzuMJFhsVjYaIFC+rIcv0NaV6W4HS
	CwIuAy0cxKP5wO/VBalGsh5EvkMuJy9hUQJ9jIE3NBswCEbzWaRgP0IqVl+9iOT0mzddJ66uGtENG
	AR4x3x6hmE527s6msz3KIpxK8k4rOyVhwSvyxmNa3QAOuD11cfmNgal6OId7QRyn7aRQvM7tKdiW4
	onogtiBCTtNaPWIBW1BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow5sN-006JGa-Rb; Fri, 18 Nov 2022 18:14:07 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow5sC-006J9V-36; Fri, 18 Nov 2022 18:13:57 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5so4185494wmo.1;
        Fri, 18 Nov 2022 10:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kwXpWHa6FKMsiVUpTzBEVcezafSgFw7qVXGPI1PvE5U=;
        b=F8adC3rgd5ZZBX8LOJzEVxPFpYCL3cyBxeyrmnqjYQovrdGhmaVcUNf8tT3AoU9BWR
         KKRjopWoMN6vQc3MTqhJKVQYX3bmX57ElyLlHe4btKjVF5VEwolAV0AP7uf+ShT1l+Sw
         JxR7fFhjqk7xsgfyqUSEHTAxf0ThLkvKzbGWJhGbDDKUzr2RAUeXNE7SEYsnNELfJxMg
         Qa1pYIVgRlktE+6D/WJrBSymjfCrZc119LBFmK75Hp1jr7WmauEAlNjVibPgeen0C2HV
         qvqeeFWxOEZBYPJOFJC6eAvktyxGY4theb/syatWuLbdA/nOwfuEcSzPhE52ozE7tcJy
         71Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kwXpWHa6FKMsiVUpTzBEVcezafSgFw7qVXGPI1PvE5U=;
        b=qEXGOjI5YZcT8qsYJQpypU5+N6kowTHE2ACnu3Gh6XHKDaQJlFpbv7vFI9dR4em1hm
         OLR2mPm29/fW48WSIxNZwZk1mSvgaFvZEEm9cXBb9c7yVSa1yKbCbXK/pqdQswrbBjTe
         zfe0t/AkggKr6rJAxD2RxjL7G5eO09CNWstaHqT9w0iCkGBHddpthX8YHvWoMN3T2J6/
         6lar2hLJrS8fNOAaaM8fNVutVc2GwJZAEVECISt+0F2isFwbGn3YYR8Ul5auAWM9mKnS
         NoeryoMPXH+ScW6FNlISo0lkWC77jtQ5mk1DPzyIgGN5DsezfOwEJPPV1hoHYcygb+7h
         QJGQ==
X-Gm-Message-State: ANoB5pnV2EhPO0bTFRvhrQpHG635Spuzdl9LlRJtlYJUsDISkt2Gbxa6
	/Iujt/0JDTWziEqh+FLaWsesjHiwIbcdE4msRQI=
X-Google-Smtp-Source: AA0mqf4OIz0Wwotp7QZYGy2xN9YzActkzSRmxw5BFgNs0xAhuTuDB247L2qhSwjolHr/pNAerhG3Fv3aeEtT4OZO+jM=
X-Received: by 2002:a7b:c00a:0:b0:3cf:e8f0:ad11 with SMTP id
 c10-20020a7bc00a000000b003cfe8f0ad11mr9492684wmb.65.1668795233073; Fri, 18
 Nov 2022 10:13:53 -0800 (PST)
MIME-Version: 1.0
References: <20221116200150.4657-1-linux.amoon@gmail.com> <20221116200150.4657-2-linux.amoon@gmail.com>
 <bdcd2071-8f56-b829-7e78-3fc9efec09fc@wolfvision.net> <CANAwSgQkwXb0KE+1856egmUyTx_pmr9hq6nk8-0YoMQJdBoDvQ@mail.gmail.com>
In-Reply-To: <CANAwSgQkwXb0KE+1856egmUyTx_pmr9hq6nk8-0YoMQJdBoDvQ@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 18 Nov 2022 13:13:41 -0500
Message-ID: <CAMdYzYp6GPO_mz=ctR7Pgs1iwtNjR0a6_0K492Fy=i55T9DMnQ@mail.gmail.com>
Subject: Re: [linux-next-v2 1/5] arm64: dts: rockchip: Fix gmac phy mode to
 rgmii on Rock 3A SBC.
To: Anand Moon <linux.amoon@gmail.com>
Cc: Michael Riesch <michael.riesch@wolfvision.net>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_101356_176294_E9C9DD34 
X-CRM114-Status: GOOD (  25.99  )
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

On Fri, Nov 18, 2022 at 4:35 AM Anand Moon <linux.amoon@gmail.com> wrote:
>
> Hi Michael,
>
> On Fri, 18 Nov 2022 at 12:33, Michael Riesch
> <michael.riesch@wolfvision.net> wrote:
> >
> > Hi Anand,
> >
> > On 11/16/22 21:01, Anand Moon wrote:
> > > On rk356x ethernet phy support reduced media independent interface (RMII)
> > > and reduced gigabit media independent interface (RGMII).
> > > So set the phy mode to rgmii to support clock delay, also
> > > add TX and RX delay for phy-mode.
> >
> > Based on this commit message I still don't understand what you are
> > actually trying to fix here. If you encounter network problems/stability
> > issues, please let me know what test triggers the faulty behavior.
> > Please describe the problem you are facing in detail here or in the
> > cover letter.
> >
>
> Ok, Ethernet does not work on my Radxa 3A see boot logs.
>
> [0] https://gist.github.com/moonlinux/bb56c787031226fbb9f69121564e76a2
>
> Please find this updated commit message.
>
> As per the schematic and datasheet PHY mode is RGMII
> Use 2ns clock delay to RXC for RXD and TXC for TXD latching.

rgmii-id mode does exactly this in the phy (your realtek chip). By
setting the mode to rgmii, you're telling the phy that delays are set
elsewhere, either in hardware or in the controller. You're then
handling them in the controller. While the delays aren't documented in
the TRM, I've long suspected that the defaults of 0x30 and 0x10 equate
to the standard 2ns delay. So you're setting the delays much higher
than the default means you need to add *more* than the standard 2ns
delay for your device to work.

This is why I've been asking if you have tested these. You need to set
each value and find the lowest and highest possible values that work,
then take the median value between those two.

>
> > > Fix the following warning
> > >
> > > [    7.365215] rk_gmac-dwmac fe010000.ethernet: Can not read property: tx_delay.
> > > [    7.365219] rk_gmac-dwmac fe010000.ethernet: set tx_delay to 0x30
> > > [    7.365224] rk_gmac-dwmac fe010000.ethernet: Can not read property: rx_delay.
> > > [    7.365228] rk_gmac-dwmac fe010000.ethernet: set rx_delay to 0x10
> >
> > If the only purpose of this patch is to get rid of this warnings, it may
>
> No, the intent is to fix the PHY mode to RGMII and fix the delay.
> [ 7.066357] rk_gmac-dwmac fe010000.ethernet: init for RGMII_ID
>
> > make sense to set them to dev_dbg as Peter pointed out.
> >
> Ok, will update this in the next version.
>
> > Best regards,
> > Michael
> >
> Thanks
> -Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
