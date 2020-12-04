Return-Path: <SRS0=Y7pG=FI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0654EC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 12:33:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 926CC22A84
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 12:33:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 926CC22A84
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DKimKfFDtEDVGUHv++oY+P1mXECd/v4QH++q2LGHTD0=; b=D/xbXZBk3MQB+BTXwujH8QS8e
	N+teW5UQi68crrY7EfD1KtCLmtBgf7xpn+bs0LJziDzhFT0K8GrycYB0TWFkcl9Wi1bZ3+LHY+nyz
	4LR1jFHoEtwSAL/VB6ytZE+9GybZKamQVq5U5WDtBfsahiNPKD3WTISZUnxkSwvIEpDgklwmf6SeU
	xnR0RNMtiiUDyLd+reA5a6Wt+oyoksCmSr8N/khgXqLUsb2SHSdn6a0ksTUBZu4IFB/rE1NlqKeXY
	97JR2xTE9kJ72cM2N/7JhAkj2H0IZQtfxy0J6kZJTwIsglLIkbR8CVpoDAtwLm/cX7y8mHmacJ39K
	CYcjNIV5Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1klAHH-0000AZ-6J; Fri, 04 Dec 2020 12:33:35 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klAHE-00006U-5T
 for linux-rockchip@lists.infradead.org; Fri, 04 Dec 2020 12:33:34 +0000
Received: by mail-il1-x141.google.com with SMTP id 2so1923757ilg.9
 for <linux-rockchip@lists.infradead.org>; Fri, 04 Dec 2020 04:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nr1dEPIb8sMZPFdYTEM5hB+oROX92fwrF1AUgvY72Ws=;
 b=C3axx7EN/eYN0wzdsNQaKp1Ax5pUb5qmoUkK/mv8yWvSzhx2tMolhPjoWSJnKufRjr
 JG6xIX8UO8v6LHpgY5ZgN9bSc+ZE6m6rC5SYZ9mCw75fl08U3OQSzOXOYGoVbKNbG4sk
 iljQJxv5UjzC+K2/p72gTO1qA1awtzgUt1W6tJY9UnWUqIg/FMrwHBa82mze3D7VssDm
 dyc/HsuCbo7t0AigRXoe2P+XdgDFP11/ybjL1XGcz9m1cJ+7Px4O8HOystuxUYLIOre6
 Gx+3Q19egOJmbUiHV+Mqry59CKfuVcmJVVXmRwWjFGVrPjGLfHFwULHwtf8tnx/iBFpq
 vDLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nr1dEPIb8sMZPFdYTEM5hB+oROX92fwrF1AUgvY72Ws=;
 b=CmGUHXievfp+1pmbQ1fj5ddoDL6JGco1VokvAks27skvqeFlO01pnWDU6lGXIPl9iW
 AOD7zNYoaRpNvgZtJ3vrJflpnbmCvdfWwayDTR1e71FwmIarUgDQRGYMTGX4R8KGr4j7
 Qr0E/9wh1gZJs0csc/qV4eMlvtNhakljLYHKdVVatFuQurNDMEJ/e6eZG3pyI8a7l+Y8
 ThOsmBFWNKLvjNIrRVEO5+IijV32jIrmMK6NLO16qNRjxyP+6Bfw+hO49geXCIXTuJCD
 tF7PxVLofT0h3259lC6+SCN8Nt/AUDZpDlsRThNGOBmLvEkca1p8Bzs/Z/+ul2QfMSw6
 +n4g==
X-Gm-Message-State: AOAM531j/vjEUxk+gSRDkf7ATE9ixee8IurpHQCKl85RP4M2k+88sSQO
 PIFPsRgcQecythYWQW2l2Is7vE2gT8/utSVIa1A=
X-Google-Smtp-Source: ABdhPJy3USdgpXCMP+fbMAnjeEcoQ9AewV576uzMENNBtBuYIVG3hQALcNjQ0JzKECtJDvyUqZ08GsIoa1BoYQHt5LQ=
X-Received: by 2002:a92:9ada:: with SMTP id c87mr6102132ill.5.1607085209027;
 Fri, 04 Dec 2020 04:33:29 -0800 (PST)
MIME-Version: 1.0
References: <20201201150522.923-1-vicencb@gmail.com>
 <deaf148f-f8a1-0411-db40-192c4913d945@arm.com>
In-Reply-To: <deaf148f-f8a1-0411-db40-192c4913d945@arm.com>
From: Vicente Bergas <vicencb@gmail.com>
Date: Fri, 4 Dec 2020 13:33:16 +0100
Message-ID: <CAAMcf8DyPzErWCJvBi9y4-6vtkYp9nG5=DJLytNuz8bcbqX=ig@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix iomux for PCIe on rk3399
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201204_073332_257760_BAB577CC 
X-CRM114-Status: GOOD (  19.93  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Carlos de Paula <me@carlosedp.com>, Heiko Stuebner <heiko@sntech.de>,
 Douglas Anderson <dianders@chromium.org>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Johan Jonker <jbx6244@gmail.com>, nd@arm.com,
 Shunqian Zheng <zhengsq@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Dec 4, 2020 at 1:01 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-12-01 15:05, Vicente Bergas wrote:
> > Fix PCIe pins according to the documentation
> > http://opensource.rock-chips.com/images/e/ee/Rockchip_RK3399TRM_V1.4_Part1-20170408.pdf
> > in page 301:
> > GRF_GPIO2D_IOMUX[5:4] gpio2d2_sel
> >    0: gpio
> >    1: sdio_detectn
> >    2: pcie_clkreqn
> > and page 313:
> > GRF_GPIO4D_IOMUX[1:0] gpio4d0_sel
> >    0: gpio
> >    1: pcie_clkreqnb
>
> What exactly is this fixing? Commit 461a00bb9d53 explicitly removed pin
> configurations for these functions on the grounds that they apparently
> don't work. FWIW it looks like they might also be related to some magic
> in GRF_SOC_CON7 which nobody's touching either.
>
> Robin.

This fixes nothing.
I've got a non-working NVMe and while debugging the issue found this
mismatch between the DTS and documentation.
So i fixed it by changing the DTS.
Regarding 461a00bb9d53 it looks like the issue is in the documentation
instead, but there are no (public) errata documents.
The issue with the NVMe i've got was unrelated: controller chip not
correctly soldered.
Now i've tested that NVMe again without this change and it still
works, so, ignore this patch.
Thanks for reviewing.

Regards,
  Vicente.

> > Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> > ---
> >   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 6 ++----
> >   1 file changed, 2 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > index ada724b12..b37dac094 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > @@ -2666,13 +2666,11 @@ hdmi_cec: hdmi-cec {
> >
> >               pcie {
> >                       pcie_clkreqn_cpm: pci-clkreqn-cpm {
> > -                             rockchip,pins =
> > -                                     <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> > +                             rockchip,pins = <2 RK_PD2 2 &pcfg_pull_none>;
> >                       };
> >
> >                       pcie_clkreqnb_cpm: pci-clkreqnb-cpm {
> > -                             rockchip,pins =
> > -                                     <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
> > +                             rockchip,pins = <4 RK_PD0 1 &pcfg_pull_none>;
> >                       };
> >               };
> >
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
