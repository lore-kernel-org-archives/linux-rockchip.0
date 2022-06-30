Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 877D8C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 14:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6HdkOyzi8GFrdMt395/xPVUw5k44+c6mD0SZg8fq31c=; b=jbsNveV3wuVX+t
	jOsWkhgODMEDcrUvxKS84YLo4NJJXxkC9MEXmQ40sBBr6N5DtiFNXwFpLLpz61EVTVxpJCWHX1bcF
	0IvQfnuqsZiCqMAdwkpytg8AAsmVpBGu0H9/IM3v8VExEy7MG0fCy6WlMgVON+d6ygAbczi+Xfhxh
	eonkw3f7fWLFd7H272ums1mpe12jUqVSBk47SM3LCkQiQweFvocDaY0+CbN4OtrPzYjTDbZPHqd1R
	jMlySeuxPS6QiJW/ot84WDf2nec5MMUQv/Ft6Mbj9Lx0sB0n55pf26NIr1jgvvNNoUD155jb0hP8r
	+IkmCwbBvTKYkQNcW2rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6vWT-000BHN-R0; Thu, 30 Jun 2022 14:52:01 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6vWM-000BDk-17
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 14:52:00 +0000
Received: by mail-wr1-x42d.google.com with SMTP id i25so22170086wrc.13
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jun 2022 07:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=9Vy0Q0yOTMgozrHr/k/yV5yONhH9Zbt0a1EaEatVf+M=;
        b=r4J30h3bEqLpGViZoCt3O4Hu1A5Wj8yEoXJyszGfn/2GIs+kmRDBHulPLdUyC4Ipgf
         511lhEjeX6IjV6aAfF4VgBZrNrJgHftDLZbVV7kyp+6VJtKdZ/CQfMINKKgXtPTKNGZt
         5L2uSoPR4Ll1ZcvuB0Pp5zfWhANJGiUi77pZuSpTenN24NJaiedqX+Ma26654YC4zDcg
         +hbWPRjgQObK+W99vRfGDLVj3QX/o1hqIR+2AYQhIKXLEOV2e98MCtRtla8lQgWG9uDV
         BCYikfSKz9/5Et7f0xcWox2UNv/tFKLx+pSXweXdeRvtvKiRMe0thmxCDXTmS1TYJ6OK
         Pvaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=9Vy0Q0yOTMgozrHr/k/yV5yONhH9Zbt0a1EaEatVf+M=;
        b=jbGUyx6m2EIAQadf8UVCF7Ww2Z4WN+N1MY9dxBEQ5fMHZ897bHnZ0RREKT1jbqRG2t
         johwfYT3dVYKQ2AP620HfM1CYlCeDuiO2f6fxDqZ3HLVcr/EZmQna1Zq0DeSgZ+adIAl
         yk+DmyJpIu+gJ+fLDZNt21jdN9H/GTC+3+yS/m4hxCWdpMGFJ+UjP42sMNs2dSN02e4J
         OA4Xt8aO8dQDJ/QBceoLSP6lNnTnrHeaoobxDRq6UABVqFEuJQQ1Ak1NyIvm+/V1kPsL
         BbgNY6YbKfp0++jPpIFs6In0hsCQibOMHRSPD41xR/jieii3Hk5uDAZFHnpgjA6Pc1JM
         3zBA==
X-Gm-Message-State: AJIora8U6fjPhiupO3RAncr4KVogxrotkLaCuGjEwV6fKgNLfeICikWC
	78CDLZ5H2dAf97xgINYdlr+P2Q==
X-Google-Smtp-Source: AGRyM1sZE6o0QXRdpPatXcWMIkBfS5RwTO5A1CXqWo9NWMsluuItsc+JQISfOGpvtoQ5/vBZ9B/ppA==
X-Received: by 2002:a5d:47a1:0:b0:21d:1723:94f3 with SMTP id 1-20020a5d47a1000000b0021d172394f3mr8540807wrb.580.1656600710016;
        Thu, 30 Jun 2022 07:51:50 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id r16-20020a05600c35d000b003a0375c4f73sm7209219wmq.44.2022.06.30.07.51.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 07:51:49 -0700 (PDT)
Date: Thu, 30 Jun 2022 16:51:47 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: John Keeping <john@metanate.com>
Cc: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 14/33] crypto: rockchip: handle reset also in PM
Message-ID: <Yr24g3LoO5uFuCux@Red>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
 <20220508185957.3629088-15-clabbe@baylibre.com>
 <YrBUODGF51oUsF1f@donbot>
 <YrF74tmA9qc+I3JF@Red>
 <YrHJn6Pl5B/1pj9L@donbot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YrHJn6Pl5B/1pj9L@donbot>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_075154_127631_3AB7B900 
X-CRM114-Status: GOOD (  25.54  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Tue, Jun 21, 2022 at 02:37:35PM +0100, John Keeping a =E9crit :
> On Tue, Jun 21, 2022 at 10:05:54AM +0200, LABBE Corentin wrote:
> > Le Mon, Jun 20, 2022 at 12:04:24PM +0100, John Keeping a =E9crit :
> > > On Sun, May 08, 2022 at 06:59:38PM +0000, Corentin Labbe wrote:
> > > > reset could be handled by PM functions.
> > > =

> > > Is there any further rationale for this?
> > > =

> > > After this change there is no longer a guaranteed reset pulse on probe
> > > since the reset control may already be de-asserted.  This is normally
> > > the most important case for a reset as it's the only time when the st=
ate
> > > of the hardware is unknown.
> > > =

> > > The original use of devm_add_action_or_reset() seems a bit weird alre=
ady
> > > since there doesn't seem to be any need to assert reset when the driv=
er
> > > is unloaded.
> > > =

> > =

> > I am not an hw engineer, so my knowledge on reset is low.
> > So why not having a reset pulse on probe is a problem ?
> =

> The point of the reset is to bring the hardware back to a known state.
> Since we don't know what state the hardware will be in following the
> bootloader or previous OS, I think the reset in probe is the only place
> that it is important.
> =

> If this patch isn't fixing anything, I suggest just dropping it.

Thanks for the explanation, I will re-add the reset at probe.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
