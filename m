Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8FC3C43458
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jul 2026 18:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Ib4qEEINiKc4TXxq9/PLwq0NUWwg7MJehSxheeJZfk=; b=C+fjsQP7hbFgrp
	fF8j4VQs69Pefm2PifQFGBJKg7rPBRSiBSyaSEAmIqTQqXptwFtqi5lV7iWOg06vb8BVy19N+IEa9
	ys9dRCczBQffpIZNEPfY/KFekUAyC+VNju2yi+hsrqrOhQ/WBMTFy/G8E25zRxAxIS3Rq/oxJxpb9
	XtBk5gkbW9pHryJnAzusG/YnIprDnFryREp3vKQdPjvU4RLl+9S+wfUfXXxSYLeXf9jTFwhoHlZz0
	w7LeD85aiciZNGBJfZAW86gHHaHlxPcTOr8jU5pVXKc+piFlAnUEgt/icMvtifzIf282Qv9TIjhS2
	lC11JX/RNVQLMOHU8xLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiyTW-00000007eol-1b0B;
	Sun, 12 Jul 2026 18:00:22 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiyTT-00000007enx-3X1S
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Jul 2026 18:00:20 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-8486ac3f347so2726740b3a.1
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Jul 2026 11:00:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783879219; cv=none;
        d=google.com; s=arc-20260327;
        b=NaIC1IY1Nnj3heyhX6PklZuxgKBQf7kmsD2WUdhsOTHX2QI0ikpImJPokzESXrzLfg
         Une/Jpcp6/IcvMeARbCEOaNoUOhTDqp4ICT+nkX/Rh8PBUc1Bgfk4kkJWmY8RHz/glfu
         bvFDAkMxJKBJn5AnQ8Jfb09/l50/RbCD0AREkFAfnTf83bLqOAl5AVaDBo63bzMuPc47
         aFZ4Abk+vek8gk9XCpmiX9KcqDFxbRXFGJHgMFGlnNAWDsArJEED9V4EYCpt197FQ0KK
         gwa/D/WmLYtxSIPpSrZNhr0qdLG52mXwdv2a8IzBW3VhDP1Dwr5MOLGDpGQRrcZkV2oR
         +kCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z6YF9Ptz3U1E3BzqqGAaNIm/PU93N/xwLs3WvAhZwqc=;
        fh=JsCCV5Oz32an3HfLHrZPjnN3FUcS69ayKny0hulDtAw=;
        b=SZ8ZqoJCkkzozVhfKBvoft1GZ9isoQ1z5PG4lWGgBL7Xl8QoMWiYdqRMBCpUOZUPI8
         mV821yzwLPcisatqB83FbLz9onT9n1K1YO+KF1MB6dz+SNoNuXRbBnXMY+wPq7VQhHHA
         3wvspvz3Jlgw3tUcNu+RIDY7W/HYd2vOR57IfX8Z8YYrSGVMTd0ltLSVQvpfp4U0wTLk
         gVz3A+Yf4BpPTdf2A3MCNulnIKCaZx65NVxEUQCUdDX5mVqJoKgLGGSL+qhAt95NOd6v
         IOwaTKep3yqZ6INZKewnLFMpdUruzsv2obnYinOu8q0yZmu0DEVxeloBOH9hs5iwj6kx
         c9MA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783879219; x=1784484019; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=z6YF9Ptz3U1E3BzqqGAaNIm/PU93N/xwLs3WvAhZwqc=;
        b=q61bSXzrUXb8twKm60t3EMGmPF1W79I+QRwYz53s27CnzHauao2n8+fvihdkSkzTmC
         +gVcloQfapJ7dXBNZ3nbYGXTRNzbY8g2X2T6ev4bHb8aHTfBWTgE60yqZgYk+Fpc643h
         9s24wJNKg9z78LwwQVa8wnbRnh9+3yIX4QKsnY+uz3UfQgdWUllNl2Rw7TxcCJGCKBgM
         BAxDw5RTKaVfb05m98sH8YXkG9PnIRzGiikkEtLXEnPww2GA05Qyx8OjgCPmre0L211e
         rgEg/j1ouWyijS1Tw2pqK9K8zcpQ1kSe5+eSUDIA3eLWO1S3rEfY3Mf5tetJa1ICcGb1
         XEmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783879219; x=1784484019;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=z6YF9Ptz3U1E3BzqqGAaNIm/PU93N/xwLs3WvAhZwqc=;
        b=Bfky9Nq55ajCGW0c+bxKHoBqsZ0SYAMXbTGfP2n7TwRvA5lLyayAjGOQeh6kQj5mRB
         /egd1EgzCeLOryYiCaTKrTb1BRRq/Iyv9mzuluit4tSkxzOzYoPwN+/mup1mW0hL/YtX
         HH8uGlQnN9LQeAjRs7+hCW/d8YAHTtYDSEb1Z3nBdc8i//RCESUCRE5tdHkBPsWfMdpo
         QY/1VTRfy2ZCuCIOSUSmzEkgnyOxeB5oZRCrzGfGO9bIekKQhNXVzH5z/YnAKcZAkQyZ
         WtT30Khl9t2/kylw1xGRlkL/RPDBI20HU1AjfKW+rPDry5za+aqEgTLXgkb0RYjvcFBO
         s1ng==
X-Forwarded-Encrypted: i=1; AHgh+RonpWtfVagqdB+kKvSbogj3eq5LGvThdgYkMWpz9jtJCaJaG32sgFppT+PJyS7+i4ELCqLCnHXxgicp/ss9pg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyKbjtZPn/x0gaAgz8+xHCnmi5/E3iYJ3jl8zZktdPh1bU3YeOH
	imFfrMWrsz7BOyAmDC2VeqpyRejQw+AMkXxqYVTZc9YO8TMZtxL2hRadTzy0Oz/M3pw2XTuHAmk
	B0B4TYDXF1lAVtBbf6h96qUD6Ya4acO8=
X-Gm-Gg: AfdE7clwjvSxp5I4ajLY1Iz4KmaClSd1f52fXxvIrNefMVim69B89MwDIjfE8FA2uBG
	pr8kHyHHJlMVDDP1SDanFV78zaZwHlZHBtJCaC52jQ8Codn8IXMhVXg0eBjpRHtlIvacmfI47Q6
	8ak9PSWIVbQI4aVFOUe1TKd6tZRVqqp9HlbZIgxuf4/2T4XZJWJnq1gsz2o2T8zPV3P6PvfxBsx
	tficKp9Xw0qFPSIzQnFCIisTniF+LpnhXTNZXI+iQdq8vIlHxwkgnLDWR5rZL6C48/k1KKQtbJZ
	W/mYG1NCg47h1chNYrEJwL88oycIcPtsqV+HGBnJTOKejZg/0rhEsHthckorz6z85FofjDEqnX+
	+IzFuTmZHQw==
X-Received: by 2002:a05:6a00:1f14:b0:848:2a69:97be with SMTP id
 d2e1a72fcca58-8488ab8fc78mr4988265b3a.10.1783879218918; Sun, 12 Jul 2026
 11:00:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260711-nanopi-m6-v2-0-422675a65402@gmail.com>
 <20260711-nanopi-m6-v2-8-422675a65402@gmail.com> <b9a5beb6-b701-430c-b667-44780736dd89@kwiboo.xyz>
In-Reply-To: <b9a5beb6-b701-430c-b667-44780736dd89@kwiboo.xyz>
From: Joachim Eastwood <joachim.eastwood@gmail.com>
Date: Sun, 12 Jul 2026 20:00:07 +0200
X-Gm-Features: AVVi8Ce_3L_f8KZWdaCv0iUnfK1E_2A_iQtzLV2gceK6YTWldORZsT30D6eKJVM
Message-ID: <CAPSPb=t=jZke2pEinPvJ4mbxKMF3hSqMfx3GMjEUT6N2FEyygg@mail.gmail.com>
Subject: Re: [PATCH v2 08/12] arm64: dts: rockchip: rk3588s-nanopi: remove
 always-on from vdd_npu_s0 reg
To: Jonas Karlman <jonas@kwiboo.xyz>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	diederik@cknow-tech.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260712_110019_881720_1AF17F16 
X-CRM114-Status: GOOD (  19.20  )
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

Hi Jonas,

On Sat, 11 Jul 2026 at 01:24, Jonas Karlman <jonas@kwiboo.xyz> wrote:
>
> Hi Joachim,
>
> On 7/11/2026 12:11 AM, Joachim Eastwood via B4 Relay wrote:
> > From: Joachim Eastwood <joachim.eastwood@gmail.com>
> >
> > Since the NPU is hooked up on these the always-on isn't needed anymore.
> >
> > Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
> > index bcb2f5d63a61..463cfeddf270 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
> > @@ -258,7 +258,6 @@ vdd_npu_s0: regulator@42 {
> >               regulator-max-microvolt = <950000>;
> >               regulator-ramp-delay = <2300>;
> >               regulator-boot-on;
>
> Why is boot-on kept?, NPU is likely not needed until OS has started.

I am not really sure.
Looking at the other rk3588(s) boards, they also kept the boot-on parameter
when the always-on was removed.

> With PD domain-supply the regulator should be enabled automatically, or
> is there some other issue that requires boot firmware to enable this
> regulator before OS is started?

Maybe some Rockchip people can enlighten us?

I haven't had the time to actually test the NPU. I'll try to test it next week.
So this patch is based on similar changes done to other RK3588 boards.


best regards,
Joachim Eastwood

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
