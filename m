Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C91F10F9960
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Apr 2026 16:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poPNFZlEJvAyvHu+i2kKxTxsrLucgDXcUD3n+Rx/ZjM=; b=ox1bP/BRxSiCxF
	gkKiWslZdEvLr72KteVxefJa5lbVg6XfYnP0XN/bXvkNF+cJwN24wuQZNuZaTFbq5LzXwGh6LJ0T2
	i/ZZNgiHzWZjto228wfhJ2m5MuXTMzk+AGIOkjQ3ZIDP2A+VJj6oeSmnPn9eYWwC0zl/r0eudnpnG
	M8HvRqqYlcnRyu+wnbUcbU4AK2PYZGjb9Xm402hpHmRJqz6uWWctcxN385+q0DG6wFUiXZ1UvZdmQ
	9St3+6unw3+1o5uz2GAIUHzeH4Cwgt/kpkzzlbuaxKO2N6zCBEhiv5Nnqh9ph4JvH80O/gTQF2gI0
	k+d9jHFtGEiWSEQzyxUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAWFJ-0000000999E-1mD3;
	Wed, 08 Apr 2026 16:59:17 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAWFF-0000000998I-3jDB
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Apr 2026 16:59:15 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2b2ae8a0103so502245ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Apr 2026 09:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775667552; x=1776272352; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iNqmvT7YdCXAJg4FUIwYA7EHq158uKGOYNj5DRKvtwE=;
        b=fVYqaTh3dCgOX94mL4lEe7rBid52FoIfNY7OO5d7qbBps9AZ/fjqkNYb5BvJW/lL68
         8BJgnrUMs4z3sNAxQgBLR16bZtjplUcnHwnk8eWKiNCOahJr3f4XgZYJiyaxKOq3M7XW
         ENCof/Jzi4jqTxck/b+Ffb5E2bft8QSHk6/60DxtLu1x4ayDn6H34OHE2djBENOcYZhv
         MXw6I+9e1kROcqgwY6hE2twO7uqaDsKDpETWCvQj5VHMVF+T0iFK9RIBL0JF6oagVqfu
         LxTniWLNupKfF/jEZ6Rdy4MDOTy/so3G9SwuiB4R2xAeXxs3WfrjATpjgZVqphWneL08
         o6Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775667552; x=1776272352;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iNqmvT7YdCXAJg4FUIwYA7EHq158uKGOYNj5DRKvtwE=;
        b=IjVJ9Dks5r7VUlMI1xuvjyc7/euFzB7UlklCpb/SWaZC6RbR6+pOmcuRIyKtBuZj27
         gY9XWWsRR3XS1yJtzHaggRZyvhIT1xi77qewlyOP/k57fwwl/zbKYkhjXDkxDI6yORLV
         vL7uxeb+4CjhuC6gizZ0khP4fPDROPqfAKY1T1mD2i9Kv2dn7j9Q7537tEYoXeX6gFxl
         8lNoB/wecWW5dgUvBj9/Ca6YhSWUmy28zkI3/75ijJeTQ38nUcwiIdVmQIMp8fiF/Zrz
         NFhSMjaja5q4Fk55rqgzGqNBSDeKSUT6V4Ulbl49WL/ZT1VzRj8gcNn/D/1RLK+YR/Uq
         WJTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcy1bO18ntilF0MfybRqF/COkGIAD3rkSphmNAoyOke9HoM30zdeNUw0PKVaKATX9JJ6zF0HRC47kYxWN2eg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzfllqZifJX8HMyhV+kJYZSGO4dh6mW9JHSygSywjHGLD/WW/Yh
	BbxWTSQ9plE2DdvlpIO7/FXl5FgRD2v64+wxhoJadBNXa3OwvWFAkR/G
X-Gm-Gg: AeBDietgeT33BGvV32r3UXxa8041fJK1Lr9LnRbU+Mxd9Qt9pRe2m1ZQB6Fv9KB1z/k
	DqUPTfAy7gJgp2KJ8O3VlyrYnnnva3e4c+zHfmOI5dtSMv3u1NF5YmdT2YkTxtgDhOAAnvo+DEA
	RiMJCzDqNo11w3G5DqHYXearjL380DJJJEonPHxP9/5iqIraws7PfIPaqtV0kFZuuSOqr+ky+A8
	bBWeOxkFYGEdrkr6vcytxcPrVmG9ptpaFcYuk2c2mt9nFxJKFTUkYo0utLC3CIlnEkvuweySnCj
	eH2/ejE/1b4W5o+ROef1fHKBn5G8DyIEiDYPIS/6Nmk+UarWrgvntkMOQVOdceZyfsuMTPVorAn
	KOk3DSRuzXXVV4BvzEU+hvEaQp4W1uiIVJ30dW9QHUUijGYiJcrxLimrjnzU74RhfhTrNwD9vVl
	/PE68kEJ16FhAsb6LTTljcsZ5Mo/faYttPc1r45ebS+g1PJJFT1rHLYsGR5Kg/0yMi
X-Received: by 2002:a05:7301:6097:b0:2b7:38cf:c2fd with SMTP id 5a478bee46e88-2d40e9cdf98mr157907eec.26.1775667552362;
        Wed, 08 Apr 2026 09:59:12 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:f3cf:7538:b120:7924])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ca760b0518sm22328464eec.0.2026.04.08.09.59.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Apr 2026 09:59:11 -0700 (PDT)
Date: Wed, 8 Apr 2026 09:59:08 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Heiko Stuebner <heiko@sntech.de>, kernel@collabora.com, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/4] dt-bindings: input: adc-keys: allow
 linux,input-type property
Message-ID: <adaJOEZHHmvZM_cB@google.com>
References: <20251215-rock4d-audio-v2-0-82a61de39b4c@collabora.com>
 <20251215-rock4d-audio-v2-1-82a61de39b4c@collabora.com>
 <20251217-tough-ultra-junglefowl-f1a9ae@quoll>
 <6778765.lOV4Wx5bFT@workhorse>
 <20251217133440.GA724723-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251217133440.GA724723-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260408_095913_962249_06C9BAFE 
X-CRM114-Status: GOOD (  30.02  )
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

On Wed, Dec 17, 2025 at 07:34:40AM -0600, Rob Herring wrote:
> On Wed, Dec 17, 2025 at 01:57:46PM +0100, Nicolas Frattaroli wrote:
> > On Wednesday, 17 December 2025 09:31:15 Central European Standard Time =
Krzysztof Kozlowski wrote:
> > > On Mon, Dec 15, 2025 at 01:29:29PM +0100, Nicolas Frattaroli wrote:
> > > > adc-keys, unlike gpio-keys, does not allow linux,input-type as a va=
lid
> > > > property. This makes it impossible to model devices that have ADC i=
nputs
> > > > that should generate switch events.
> > > =

> > > The solution is to use unevaluatedProps instead, which also allows
> > > dropping other properties.
> > > =

> > > Best regards,
> > > Krzysztof
> > > =

> > > =

> > =

> > Hi Krzysztof,
> > =

> > to understand the motivation behind this suggestion correctly:
> > are the "linux," vendor prefixed properties, especially with regards
> > to key codes, generally a bit of a thorn in the side of DT bindings
> > maintainers?
> =

> Not really. Most have existed for decades. New ones get extra scrutiny =

> and often end up dropping the linux prefix.
> =

> > I'd imagine so since they technically tie the DT to a specific OS
> > kernel (though of course, others are free to translate those key
> > codes). And the whole idea of configuring which code is emitted
> > from something is basically abusing DT for configuring software
> > rather than describing hardware.
> > =

> > I'm mainly interested because this is a thought that has been in
> > the back of my mind for a while now, and I'm curious if the DT
> > binding maintainers happen to have arrived at the same impass=E9,
> > where linux,input-type et al abuse the DT model for something we
> > would tell any other vendor not to abuse it for, but no better
> > solution exists right now to achieve the same thing.
> =

> Not sure what the BSDs do here. It's never come up that I remember. Best =

> I can tell is they just make it a userspace problem. So every possible =

> keyboard needs a keymap file. Though I'm not sure how that would work =

> with GPIO keys as you don't really have a scan code.

Is there an update for this binding or should I apply the current
version? I am OK with the driver changes...

Thanks.

-- =

Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
