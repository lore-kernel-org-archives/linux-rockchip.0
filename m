Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88676C54E68
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 09:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jdx0xdLF7KufLqB39x5aQTluTJD2e0aRmI8qMAqQ4zs=; b=EHARcQCxOm2A0x
	7yPBPWmKUxKnP307TOTwu65jAKkwX+WffMS0GQqBMpqtq8xInUZYzcTvbgD9bj3TA1JaQeKzgGobA
	7u+hPD5Uza2+UzNqHrPICvYPyLmT9U2BHQRA3+jrvVhIyd5U8oEC3oXPqHLfuy5css3bTw0NaCnYv
	S2tMBljp0FgyloGzX8T0rwzexyWqo7fcIKXo6T1Sb2HHB1rM1EOerTRFcihFDQ9diW0nxOyvXV5RV
	OLyET2IreE4fQ7doyhwZywZ4QIYIgYVotFvUCoyeLYiyaijOl4dz8UIamGL26ZJJyzBd1J0UV793Z
	vWmYkmOMa+NTHcfEWcyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnEnF-00000002Uvk-15P9;
	Thu, 21 Mar 2024 09:33:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnEnC-00000002Uuo-0yVS;
	Thu, 21 Mar 2024 09:32:59 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rnEmn-000801-MU; Thu, 21 Mar 2024 10:32:33 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Chris Morgan <macromorgan@hotmail.com>, Andy Yan <andy.yan@rock-chips.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev
Subject: Re: [PATCH 2/4] media: dt-binding: media: Document
 =?UTF-8?B?cmszNTg44oCZcw==?= vepu121
Date: Thu, 21 Mar 2024 10:32:32 +0100
Message-ID: <2798331.BEx9A2HvPv@diego>
In-Reply-To: <70439a01-7949-46bf-a701-c82ba961171a@linaro.org>
References: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
 <855507987.0ifERbkFSE@diego>
 <70439a01-7949-46bf-a701-c82ba961171a@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_023258_288068_591AF63A 
X-CRM114-Status: GOOD (  17.16  )
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

Am Donnerstag, 21. M=E4rz 2024, 10:19:54 CET schrieb Krzysztof Kozlowski:
> On 21/03/2024 09:47, Heiko St=FCbner wrote:
> >>>      enum:
> >>>        - rockchip,rk3568-vepu
> >>> +      - rockchip,rk3588-vepu121
> >>
> >> What is 121?
> > =

> > That is the strange naming of the ip block inside the soc.
> > =

> > I.e. the rk3588 TRM lists a number of different video encoders and deco=
ders:
> > - VDPU121 is decoding h.263 and mpeg1,2,4
> > - VDPU381 is decoding h.265, h.264 and some more
> > - VDPU720 is decoding jpeg
> > - VDPU981 decodes AV1
> > - VEPU121 is the jpeg encoder above
> > - VEPU580 encodes h.264 and h.265
> > =

> > Each of those are separate IP blocks with their own io-memory, their own
> > interrupts and their own iommus, etc.
> =

> Thanks for explanation. Short introduction in commit msg would be nice
> (e.g. VEPU121, one of two VEPU encoders). OTOH, why not documenting all
> of them? Bindings are supposed to be as complete as possible.

We have a concurrent series for the vdpu121 running at
  https://lore.kernel.org/all/20240316071100.2419369-1-liujianfeng1994@gmai=
l.com

I think not all of those encoders/decoders are based on the Hantro IP
or at least at the moment we don't know this yet.
Hence people adding compatibles for the blocks they have actually
managed to run on their hardware.

Bindings are supposed to be as complete as possible, but revising a wrong
binding later is very hard. And the whole media part is full of binary libr=
aries
in the vendor kernel and has not the best documentation.

So I guess people are just cautious ;-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
