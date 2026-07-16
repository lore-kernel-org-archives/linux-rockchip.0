Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57E02C4450A
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 09:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tgoO3bsyhrqVAgaAB6TCLg8MrQ5g9gV7Y+Iod4cTus=; b=h4ap8sbZjekwyN
	pcEJr0bufVA8pYl2w2ErYfEgEsVP2INYjwB5MGUZjyeOZRmtEqPeSyyo9XeZFa7pv/Nye8td2yDp4
	HW/6hdsJZjrzCfKF3iao9r0CB+ktQeKybJlMS3j8OqefxkUQh6CchG0fEyYIIbKAYliwIxTZU4sO6
	cjvmSu8FJmqa1r9HHtEekUjjcQAlkNyN9/z8UQnDbrOYpz7A5MD3rc5/WE1dbebgY69se5KWyPtLG
	JHVxrIMScf2zVRs+6abaIJd65R5A7dUPXGR20iSZlHexw/1BIZzT/3aO+U2ZecOiqV7nb1ILKMgP7
	/UngwCOb7OrgPiF8KZJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkHzj-0000000Gnqb-2RKi;
	Thu, 16 Jul 2026 09:03:03 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkHzh-0000000Gno6-0BWR
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 09:03:02 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-848595b338cso7449280b3a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 02:03:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784192580; cv=none;
        d=google.com; s=arc-20260327;
        b=VDidPkO2RzHZF1aY+MEpa24PXeIqI4FiQ47IHtF4jPaw/FVtXDXtDx9fTmSsgHxaBn
         74OHC8BXqaXO8W6oTlIqyrLDZBN+x0x1a2qaBiZ+kmxHcvUixRjoDCj3h06lOqQHvu9w
         2vH68MxS5htQbnbKH680dnJ3kk8ev/Ui5uzNO8CPg0ZVN+joums6/ey2Z5Ly3R5hLB1E
         txo2zRLuNUYax2o/PLEa0nKHFWEFc6Oafc90BRhLyrHhALs9HVsNQBkpT5PIGPtSvAz8
         ZhS6qrjrF+h/WffDIuek+tZ6GPU1e2ApkQLgUR4r99rBCdZhDuKlJM7It39tCh2DDJw3
         cbSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7NR3lXQ4dlpKV3WszMatO8sscZD/DgmWD4Yj1aUtkeU=;
        fh=kJkxcuEvLnaOHxfwzctVSQ9WnfrA6lXYAp/hFOkKtnE=;
        b=JDrVzwfX71ve6d1kFNF79OqasAt1H9OMiF4gQf8Vy+MQ2tAHwknoa+i+7EwdXXUxEU
         TNMsFOznDlcixq+WRQt6xuwpr7bmJmKaf+RacI2WL3soE7nhl2r02vyOY/s4E2ejQBqV
         4pTxGIvw49fneGG4sf3O90w3SQStKiycrKg3frOXPKbzEbepU+y4gWlfPF9PPm/3HQmz
         mbLKnqzxwg2F1QgTO1q+EEOFRoU+d6JO0HK3Lnf2qNCI7PRLXdpBP0FYf8zAaS/5nJc/
         fMiQbkCabHHfbtf86OwPjr/tgQHlztMC4OhmnPUyTW2SinMkru72/ayAJPIgsPtEeHF6
         GciQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784192580; x=1784797380; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7NR3lXQ4dlpKV3WszMatO8sscZD/DgmWD4Yj1aUtkeU=;
        b=IGc0Ds7QA9zwP/EoZXLxe1VrkljTfPB6mRnouer1oq+l1CWie0ErKMFZdB+OjVlVCx
         sNIXCIFVAJPhBPuotobVI97UH29qNlRSQ/ZZ3ia4638h5FaXhU6vzawuhoRZlZzCZ7BJ
         EpqOcWGnMpb4Z6/I3EOVh6x28dh+EMzEB8xqKmudYrrgYA56TZ1ImYQaOmkLvBgBXXhR
         FnAT/xzHIjzRAs1hN/PdKhEqTxyGKj61zElas9yIe+T/l64SS+TuQbKOhX0t+YCH59Zv
         zMEsq9xmFjSHEI1rDZslKmJtnekFyP3+5ESfWYQPbQOubvHFr/GSUXa3oBzc/GOjxld0
         Z9Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784192580; x=1784797380;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=7NR3lXQ4dlpKV3WszMatO8sscZD/DgmWD4Yj1aUtkeU=;
        b=GIQ57O02arkK2f1H3mYK1vJVTUdoBuGxOIhej5eU0DRn770ISKi+RgXM4ToGLY5b5b
         7HOM9VyoiJBI5rXkbVEM5oy5ksPqMCt6mp54iUid/AhoyEPlPsteGjGh67U3Jfj6GlsV
         goHbmZb6HU2vho4j9L505CB7nRQ9jnsTIekr7vHV++Br7iVvmxXBL8YUWvM4dyTNiPJi
         1tTMRNQnDIPl870KVo34cWJytX9rQPMWhjMeiiCs14PAJ4JPP0iQcBCFe/Xc5selXZTy
         t5Ycdp7sB52pmo1HJJmTGWvlPvasw/Jg0j/Rh9UkwQ8htlx4mTJMLtsBm4RoxXPS+P9S
         AtVA==
X-Forwarded-Encrypted: i=1; AHgh+RoC9ohsaPNAOsStu/pR5knsDBzfvH6mo1NonwifzjlIpw6pM8na3k6GsSilwU1ipzzBnMQZPEMr0PvgjJwqsw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxaA7nHA041BiYsp/y8x/kfAmI/Q8VOZHarCJ8g/dGJUv9f8B+V
	gZxR5OpTWoWr64FMTJTgyY3n2cwSwPTfTXQSoiPaQuL586PDOfNlBGoncyg7SgH6N3JojdwvxjJ
	wFBfowcu+Q5L1KFN+y0k0/N0w4wxk6XU=
X-Gm-Gg: AfdE7ckuROVmAATETLHWoJCXjQfkpIYT+qZF0vG23I16AomNMCKAKiqtJ5qwBdC26hd
	1dvEDxtwcI+frhDz2iWjqTPq3Oeh25jOXvv0Yea3Q5FvHltfaOrKTwmSFIQOvX+Bpw/Fl4ExbKu
	xHybocnKRkIbhhDEaZjzD1Jw2z/mzp7qGx/48U5V94SVO/SRDNa4/hJFh6N7Ktvk7XiQ9lW2qRc
	DUkN/+gcJDocfvSTTWI06VGr/3axB5rPo01ZovYlRbBYaHdleOxAsthqr7vjHmuirnz12is3Y06
	352kD7SdCCLLfsIrzLBp+RI+qVNULqy3meCLya7m77A=
X-Received: by 2002:a05:6a00:8006:b0:848:4424:2b83 with SMTP id
 d2e1a72fcca58-84a5598fd50mr8757328b3a.77.1784192579663; Thu, 16 Jul 2026
 02:02:59 -0700 (PDT)
MIME-Version: 1.0
References: <20260713-nanopi-m6-v3-0-227567ffc5dc@gmail.com>
 <20260713-nanopi-m6-v3-3-227567ffc5dc@gmail.com> <DJYBBXE6SAG2.20OEJI5K6JIVM@cknow-tech.com>
In-Reply-To: <DJYBBXE6SAG2.20OEJI5K6JIVM@cknow-tech.com>
From: Joachim Eastwood <joachim.eastwood@gmail.com>
Date: Thu, 16 Jul 2026 11:02:47 +0200
X-Gm-Features: AUfX_mycY6mvMh4gra26LhowY8uyLV9WWyka95Odu6j7B7QABexJfnpfhGVC45U
Message-ID: <CAPSPb=tTbdzBZFq9NE0PCiD8+7pbWhErauhOfjjkp0DnhDwvRA@mail.gmail.com>
Subject: Re: [PATCH v3 03/12] arm64: dts: rockchip: rk3588s-nanopi-r6: fix
 missing pcie rst pinctrl
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	jonas@kwiboo.se
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_020301_109593_B0517901 
X-CRM114-Status: GOOD (  17.64  )
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

Hi Diederik,

On Tue, 14 Jul 2026 at 15:02, Diederik de Haas <diederik@cknow-tech.com> wrote:
>
> Hi Joachim,
>
> On Mon Jul 13, 2026 at 10:30 PM CEST, Joachim Eastwood via B4 Relay wrote:
> > From: Joachim Eastwood <joachim.eastwood@gmail.com>
> >
> > The pins are used as reset-gpios but not reserved through pinctrl.
> >
> > Fixes: f3c6526d6fb2 ("arm64: dts: rockchip: Convert dts files used as parents to dtsi files")
> > Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
> > index 67e284a15c35..8df6e1a21180 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
> > @@ -360,12 +360,16 @@ rgmii_phy1: ethernet-phy@1 {
> >  };
> >
> >  &pcie2x1l1 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pcie2_1_rst>;
> >       reset-gpios = <&gpio1 RK_PA7 GPIO_ACTIVE_HIGH>;
> >       vpcie3v3-supply = <&vcc_3v3_pcie20>;
> >       status = "okay";
> >  };
> >
> >  &pcie2x1l2 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pcie2_2_rst>;
> >       reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
> >       vpcie3v3-supply = <&vcc_3v3_pcie20>;
> >       status = "okay";
> > @@ -420,6 +424,16 @@ rtc_int: rtc-int {
> >               };
> >       };
> >
> > +     pcie {
> > +             pcie2_1_rst: pcie2-1-rst {
>
> ``pcie20x1_1_perstn_m2`` to match the schematic name?
>
> > +                     rockchip,pins = <1 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>;
> > +             };
> > +
> > +             pcie2_2_rst: pcie2-2-rst {
>
> And ``pcie20x1_2_perstn_m0`` here?

Can do.
I see this used on a couple of other boards as well.

Thanks for the feedback.


best regards,
Joachim Eastwood

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
