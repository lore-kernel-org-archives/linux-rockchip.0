Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49F49C47DA2
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 21:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/bzHB/Csd8lorbuXaNMSzfjh2AHksute8tNCMoqIwLE=; b=Ga93xDJwSBmhoj
	crj0dmIsvGb1GzgRnsHRIBeYX54Ke8lcfgMwfxVxwSycSluJEEzGD/leySXjIUi9eP4xeKWD5LOND
	ONXRKZ1UJrPK7IvlvYVZbID94g3BC8msoovQTpg2vWaJXjH5nJEarpfjQoZvcln4OvWIHEeABkhay
	p0y+PSmLKW0zvR3Undi/mNTe3jcg1MlCaobuX6dqF/v1H1UZ05Nj1ALTus7k+KqrNW94KjvMMG6Og
	ea2m1EDXwcLDvG75Fo5r5Cz2Cb4qBH64rVFv71WouDf9Rzqs1coPb8IoABU24vBi7t7/u2Xl0808x
	mmCEt81Gvq6Nu6mKlNlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQDDb-000kRu-3D;
	Wed, 17 Jan 2024 21:13:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQDDY-000kQA-1R;
	Wed, 17 Jan 2024 21:13:01 +0000
Received: from i5e860cd7.versanet.de ([94.134.12.215] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rQDDH-00039N-To; Wed, 17 Jan 2024 22:12:43 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jianfeng Liu <liujianfeng1994@gmail.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 Nicolas Dufresne <nicolas@ndufresne.ca>
Subject: Re: [PATCH v3 0/2] [v3]Add hantro g1 video decoder support for RK3588
Date: Wed, 17 Jan 2024 22:12:42 +0100
Message-ID: <2196595.7aRn1RRit1@diego>
In-Reply-To: <5490507acc121113e52a8cdddb155fddf6dbb374.camel@ndufresne.ca>
References: <20231231151112.3994194-1-liujianfeng1994@gmail.com>
 <5490507acc121113e52a8cdddb155fddf6dbb374.camel@ndufresne.ca>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_131300_487977_90D64356 
X-CRM114-Status: GOOD (  19.44  )
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
Cc: sfr@canb.auug.org.au, Ezequiel Garcia <elezegarcia@gmail.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, knaerzche@gmail.com, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Nicolas,

Am Mittwoch, 17. Januar 2024, 20:16:24 CET schrieb Nicolas Dufresne:
> Le dimanche 31 d=E9cembre 2023 =E0 23:11 +0800, Jianfeng Liu a =E9crit :
> > This is the v3 version of this series adding hantro g1 video decoder
> > support for rk3588.
> > =

> > RK3588 has Hantro G1 video decoder known as VDPU121 in TRM of RK3588 wh=
ich
> > is capable to decode MPEG2/H.264/VP8 up to 1920x1088. This vpu ip is al=
so
> > found in RK3568.
> =

> The only concern I have is that we rejected enabling this VPU on RK3399, =
since
> having two H.264 decoders was confusing userspace softwares at the time, =
causing
> the slow one to be picked sometimes. I know the selection is not fully
> implemented in GStreamer either, not sure for LibreELEC ffmpeg fork, Chro=
mium or
> Cros-codec.
> =

> Of course, its not a problem now, but only when someone provides an rkvde=
c2
> driver that enables the much more capable HW decoder. Shall we hold on H.=
264
> mainline for now ?

hmm, reading the TRM the VDPU121 claims to support:
- VP8
- VC1
- MPEG-1,2,4
- H.263
- JPEG

So at least the TRM doesn't list h.264 as supported at all on VDPU121 .
Not sure what is up with that or is Rockchip also just suggesting that h.264
should be in the VDPU381 [where h.264 is listed as featured] ?


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
