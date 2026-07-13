Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA2E3C43458
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=beu/MbDy7MrwHEOL2bAjiD7byhiQBQbejnIC1y95Cm0=; b=LyTocGU+CAPQ7w
	1f6CLp20+dMkw5dtUjOIh7ME73PVauGeBg1FH6CFT/3WxtCARj2bOSk3jYjeL2aETeWwmhFDVIp+H
	Dv8aczDIKL0mdQPrbVFuLwDTdnNpkSe5rtsTPAMOMHksxlSip4pSiMw2tNwlq/L70jsLuyx+rs1or
	nCAYNgGTOft73SqzUnJgjPNpPVOe7dvbC3PlrEpng43BKwjjpNOSEw2CX5XbIdDb2bNdC2Ucp7YbJ
	Syr6JdrTdzjRPBkiX2F9wOXKXPlgVx60O6G9BOv+q/6lL6Rs3WNE2GcY9Tww5UhPb+9WYmWXywAtK
	ZDXIybyc2ve+nvw5LW9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjBVn-00000008VJ1-0vuB;
	Mon, 13 Jul 2026 07:55:35 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjBVi-00000008VHI-2BOy
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Jul 2026 07:55:33 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-38de840f2f0so725553a91.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 00:55:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783929330; cv=none;
        d=google.com; s=arc-20260327;
        b=Da1IBp7g7fkI/JpS3lXrwJVn+SwY/agJ+9UkCGDxkv3rKpzEDMfWbgwDRnSNsIzz8P
         zQQSoqA0qzadZuHWhoiwFlbmQHYRihqILn+DkLFGSBl9sOf3tVZfxa0W35pwWdwkPOgh
         ZvbteKbuPxMCbVcbgJSjxah7HKtot22yJpLIPJr9d5mn7LORmVQFkkX+MRX6+cvZStwa
         9hXr+EDfKifJB4wOZGMBd/JKA8oUfFKFQnfp6djV/fYQ7mRrKOuj5ezrTxHO/t47MTzj
         HTJNUIKxCK5xUnu26I88wiURXKkaga5fHpSS/I4q8LZz2GSGr79UfLWu/9ZrtEAEgVWg
         r+Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QovoZqY4xt6ZAxVQ0BWNZ2UDIC+LHZmnMzcr9SfOYAc=;
        fh=E6U8La3Llvj7j/yLMzO/zDy9FfpmK1fSpjecJcrT5xQ=;
        b=B6I76E9skG1ktetaQnTmNmDvXtblRDHzMOOJXY/mOoplwJIEYMd08lEE0x2WEYB48i
         7Xar66CUytJ4geNVDvVcna5KmAZOnHCtreW1CmVaqyl6T4ctnMrD8Ju7wRfI7jmPmzp9
         HvPU+aK+6T5GeBjgJDRxnSYCJrO1W1pJDnMcCdjGQIJ5YRttelG5mg+2twzdRvxtg+5/
         Eq+EP+Eysb03NN4Z7pHjjleYJOgaME/wzbgaL6JOmtcGZOIlnIvr214iIdytCxf9DaDL
         NsISiVuRbxwuLzhEHSgjeYs9/ujicz1AahFKGMIbAGRhN7j28SRfvnpXjF2fT3A3bn86
         DzTg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783929330; x=1784534130; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QovoZqY4xt6ZAxVQ0BWNZ2UDIC+LHZmnMzcr9SfOYAc=;
        b=YCsbqBw91KpLt1xJ44QpF6ov2f8JECS8QaCLJMwUTD4AgtCZ+BsMLiV67eTrG+l17k
         +BDKnp+Wkl7gYo+DD1178W3tkeqB63zWVjUKxypNetqteisCMX6w354YI0VuHMe7wYjh
         6SQn4xLhJQV5aEUieugQzDRryCpU6CF7LT7C2RVE9G4lz/VZ8UftOceUMfNgrUJWDeLR
         vPltTtr8hD/sfltf3qFT3jyjAcQdoLZvTb07+vvU8RsrW32uQVVygm2f0FppBoe0qZY+
         7NboFXLq2av7CcE0iKD7ggejRz69ZAhRPuv7S97R0Iq3azKIMUAeMLv4m2mx93i4YTyU
         RSRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783929330; x=1784534130;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=QovoZqY4xt6ZAxVQ0BWNZ2UDIC+LHZmnMzcr9SfOYAc=;
        b=sGS9ZUnW5FdaFd52QYQztmONOXgrPKgvxm/UiHhiX8pkGO2v6qUom44rsaMjjpPmT4
         ay1JojGTXW8G0vStaMKyU2WqO+0IFR53c5pTs1xNpFi4pZIMo7jevtrIK2XBPKeJEruE
         MF3SfFHFs234WP/CIuA7Wj89Qcms7Fcn0LvuRKl+Neniv3LFbj6xEDTaRyGUehKHZtq/
         zQAk+YGAYQ6q5b0npiiE6zBk0QCg+sTuPuE7ctE9PMsp42pXy/oGO1NQHv5jEjlHoBfH
         ti0v22GslLIjX5HAQueyg37j6X8XNHpUk2Ky7JruK2ryfbXRCfO52yT7b5N0T38ocu4z
         /xNA==
X-Forwarded-Encrypted: i=1; AHgh+RqmY8rToHshVZllek7vVopQBBDe2YXEhB0tDoIU0oeSR0ChELeVOUMtH6HYeWuMsO73DgHK7xLn83blpyHvaQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyLlblWNhaXWOoFyxSDyKHaFkaWXPjkgI0sbfMRRkREB6XmKujM
	lz84M6gpdAZ9coFZNMWQwsmow6fZ4Q72lA3eX4L6aZrZ5bHUGVHY4z3ZTkeaUo698g1WDP8LMTk
	r7GPa+qIkKwcqYL1Oq05iPvdaiX5esFA=
X-Gm-Gg: AfdE7cnjN1ZqcOag2/flPAq2Dbk0eKWHmi1z5Sbqo/H3pYbM1rntKdVibFfiGeLIJYQ
	gmDvO82mPt1Nuf62dR1pBZ/GdYwB7X9geLgLbRzudH7Nj4RcKSAJIe1HeAhw3SpMaVmd+84Jn+E
	TtPrAzO2jaW1gQYC0TB0Ma1SD3juL2v3gDyos7l2AkFEJqOe7/qROmZmSp1b4F4NwtfD8ZW7j+4
	rlY+wxi/7EcikEkRZ60ZSeLpQ2oJBW1f4ipbMjp0eGbgINfDTaUSGnPpu+ioj7mj/sBvgHB0O3c
	Q37k52x38BDFDY3hn2k5SzI/GvLmz4svtg37pFOjzReone9xTbgNpg==
X-Received: by 2002:a17:90b:1dcf:b0:38e:673:5d18 with SMTP id
 98e67ed59e1d1-38e06735ef7mr1259924a91.36.1783929329714; Mon, 13 Jul 2026
 00:55:29 -0700 (PDT)
MIME-Version: 1.0
References: <20260711-nanopi-m6-v2-0-422675a65402@gmail.com>
 <20260711-nanopi-m6-v2-8-422675a65402@gmail.com> <b9a5beb6-b701-430c-b667-44780736dd89@kwiboo.xyz>
 <CAPSPb=t=jZke2pEinPvJ4mbxKMF3hSqMfx3GMjEUT6N2FEyygg@mail.gmail.com> <50a8a36a-e7dc-43ec-80ce-904e6e7fbd3f@kwiboo.se>
In-Reply-To: <50a8a36a-e7dc-43ec-80ce-904e6e7fbd3f@kwiboo.se>
From: Joachim Eastwood <joachim.eastwood@gmail.com>
Date: Mon, 13 Jul 2026 09:55:18 +0200
X-Gm-Features: AVVi8CetW3-cEGywGS5tE1DvejPk5LFrS4NRovmzWMSPfCpXGd_mo2vU_Ad0Vvw
Message-ID: <CAPSPb=s0Rsvj8b6MLfrza-CVK5U3jF60fEb2yjsro=x4Tyz2qw@mail.gmail.com>
Subject: Re: [PATCH v2 08/12] arm64: dts: rockchip: rk3588s-nanopi: remove
 always-on from vdd_npu_s0 reg
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	diederik@cknow-tech.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_005530_563653_856B9124 
X-CRM114-Status: GOOD (  28.29  )
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

On Sun, 12 Jul 2026 at 20:22, Jonas Karlman <jonas@kwiboo.se> wrote:
>
> Hi Joachim,
>
> On 7/12/2026 8:00 PM, Joachim Eastwood wrote:
> > Hi Jonas,
> >
> > On Sat, 11 Jul 2026 at 01:24, Jonas Karlman <jonas@kwiboo.xyz> wrote:
> >>
> >> Hi Joachim,
> >>
> >> On 7/11/2026 12:11 AM, Joachim Eastwood via B4 Relay wrote:
> >>> From: Joachim Eastwood <joachim.eastwood@gmail.com>
> >>>
> >>> Since the NPU is hooked up on these the always-on isn't needed anymore.
> >>>
> >>> Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
> >>> ---
> >>>  arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi | 1 -
> >>>  1 file changed, 1 deletion(-)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
> >>> index bcb2f5d63a61..463cfeddf270 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
> >>> @@ -258,7 +258,6 @@ vdd_npu_s0: regulator@42 {
> >>>               regulator-max-microvolt = <950000>;
> >>>               regulator-ramp-delay = <2300>;
> >>>               regulator-boot-on;
> >>
> >> Why is boot-on kept?, NPU is likely not needed until OS has started.
> >
> > I am not really sure.
> > Looking at the other rk3588(s) boards, they also kept the boot-on parameter
> > when the always-on was removed.
>
> Ahh, those board should likely also drop the boot-on prop. There should
> really not be any need to force the PMIC to enable this regulator from
> firmware. If it was left intentionally for other boards, maybe there is
> a bug in software that need to be fixed.
>
> >
> >> With PD domain-supply the regulator should be enabled automatically, or
> >> is there some other issue that requires boot firmware to enable this
> >> regulator before OS is started?
> >
> > Maybe some Rockchip people can enlighten us?
> >
> > I haven't had the time to actually test the NPU. I'll try to test it next week.
> > So this patch is based on similar changes done to other RK3588 boards.
>
> Yes, please drop the boot-on prop and test :-)

boot-on doesn't seems to matter on my NanoPi M6. My short test code for the
NPU runs either way. Note that I am running edk2-rk3588 bootloader.

Setting up the enviroment for running stuff on the NPU was less painful
than I feared. Using Mesa teflon and python-tflite-runtime.

I will repost the entire patch set later today.
Thanks for all the feedback so far.


best regards,
Joachim Eastwood

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
