Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B181FC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Mar 2022 13:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzYpaZvhOfiVKBC2gG2xxDetU+83ASD66JJsCG/YucY=; b=Rdl+HxXqfq2LaI
	BqLJIs5XquXRNGk0NA54jmIxNfV7UsQ8AN61UNBi7+4MMYUIjdQmKD19j4u1WOzqC/582FSzy3cvS
	0AGE4qYWdcPXK69C3PeUwhb1nNbGi4Ip+cu2OxSIKq0gtcTK8sO6qIvLwxg4Yi+7J80+/L4M6UH+m
	MKMWcIMFzuXnIc6Yb2n7DeU1GDHUINaJcPrwTDSHUzbfLcROyjRkaoUE+2t+UlK5Qi18pML5fw64j
	BUjMSO/uOaNoiuOx+nYDrx0g6T4KT53+iinr2uh79zzEBQ5uJTrZkBGxXD8HypiYe30qHi6gvq6hx
	FkHlrrID0gQCSFNPQk4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nX0wq-00DiC9-Tn; Wed, 23 Mar 2022 13:22:48 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nX0wn-00DiBC-Ls
 for linux-rockchip@lists.infradead.org; Wed, 23 Mar 2022 13:22:47 +0000
Received: by mail-wr1-x435.google.com with SMTP id j18so2113157wrd.6
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Mar 2022 06:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=nFhPQ/2TAffPjbDjiI/2I0v37r+CcQs5C7D/sWxAMI8=;
 b=quPIS4rlbqNNwzlG7UsIcANuXUutqUX2+fS2vwwVrkSb8FadLyZ9PZuzt3n4FECs6b
 JD3NheA8m53Arv3IJp2+FRXgb8apclZMBwVLZzL1u949YS0k93kjWRoPRC7j6cfksk60
 qxWnya1GQ0o6FnD0kdxsnW3YSZ6iUb00BQ9WyMilezQ5n3ltGCDn+C8jl6rMTHz5Oakz
 /607HtEh8xP6zzvxbUd5PSpNYWuV9/bc8PQYBMTN/o3/amywjFJkjwFPiEjWUSPZsUf+
 UUicmWGMkDbN/NfGnIkjbJTQNk7WhHnpkDNNvhtM2OQ7+b+7vY0duYDYvrj3Vwl6M31g
 2puA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=nFhPQ/2TAffPjbDjiI/2I0v37r+CcQs5C7D/sWxAMI8=;
 b=CcPC6G546ioHWvYtJD102Gg1lqEVayR+PKVOawIqgYglyFjiUZF5NuldfOaFPnbIAU
 IsKJEQi3gARwda8bLRk1xQEmkAtRdYFU2OMW871sbf33FAm8Y6YES9KjTjaD8gI4dLbX
 UTKpDwrEGQAvJgsOGL8Jer/8C132emvRePlwWnq6os4r+P9lWk0HxBOtmuBiuUwHYRzH
 74bC8O1Fgm5DSrW+Yit4kQ10ha2ui7aw/S/VPJojcEWgTk/Q4W1zTty516FTbbBqe6mV
 qeddKFe37A1Lpc0QCpDEG26yfb8VXo5UJ992p0WEE63Rs1dLC2ZuLOhZE4l7My4eikT6
 CEUw==
X-Gm-Message-State: AOAM532OlkTD2kCsQeLaDojX+631dSWz1c3RkT3IfAtLny6xJWJexXU1
 Y2X0993xR1QnfrjubZYoDe7N8Q==
X-Google-Smtp-Source: ABdhPJzktCyQ+4ZXtq4E5zEr/KHSW2QBwhlwN+M/BloZ0THBfCmhcKR2IkHX5we1S2uX5VNg/THYAA==
X-Received: by 2002:a05:6000:1b86:b0:1f0:d6f:1424 with SMTP id
 r6-20020a0560001b8600b001f00d6f1424mr26954876wru.174.1648041764214; 
 Wed, 23 Mar 2022 06:22:44 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 l15-20020a05600c4f0f00b0038cbdf5221dsm2806353wmq.41.2022.03.23.06.22.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Mar 2022 06:22:43 -0700 (PDT)
Date: Wed, 23 Mar 2022 14:22:41 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 18/26] arm64: dts: rockchip: rk3399: add crypto node
Message-ID: <YjsfIbLQRvoxkana@Red>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
 <20220321200739.3572792-19-clabbe@baylibre.com>
 <70422777-a3f9-b2f1-5faa-94d24fe200ac@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70422777-a3f9-b2f1-5faa-94d24fe200ac@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220323_062245_728570_9546FB9F 
X-CRM114-Status: GOOD (  30.89  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Tue, Mar 22, 2022 at 12:00:06PM +0000, Robin Murphy a =E9crit :
> On 2022-03-21 20:07, Corentin Labbe wrote:
> > The rk3399 has a crypto IP handled by the rk3288 crypto driver so adds a
> > node for it.
> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 12 ++++++++++++
> >   1 file changed, 12 insertions(+)
> > =

> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot=
/dts/rockchip/rk3399.dtsi
> > index 88f26d89eea1..ca2c658371a5 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > @@ -573,6 +573,18 @@ saradc: saradc@ff100000 {
> >   		status =3D "disabled";
> >   	};
> >   =

> > +	crypto0: crypto@ff8b0000 {
> > +		compatible =3D "rockchip,rk3399-crypto";
> > +		reg =3D <0x0 0xff8b0000 0x0 0x4000>,
> > +		      <0x0 0xff8b8000 0x0 0x4000>;
> > +		interrupts =3D <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH 0>,
> > +			     <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		clocks =3D <&cru SCLK_CRYPTO0>, <&cru HCLK_M_CRYPTO0>, <&cru HCLK_S_=
CRYPTO0>,
> > +			 <&cru SCLK_CRYPTO1>, <&cru HCLK_M_CRYPTO1>, <&cru HCLK_S_CRYPTO1>;
> > +		resets =3D <&cru SRST_CRYPTO0>, <&cru SRST_CRYPTO0_S>, <&cru SRST_CR=
YPTO0_M>,
> > +			 <&cru SRST_CRYPTO1>, <&cru SRST_CRYPTO1_S>, <&cru SRST_CRYPTO1_M>;
> > +	};
> =

> What's going on here? If these are simply two instances of the same IP =

> block as the evidence suggests, why are they crammed into a single DT =

> node rather than simply being described as two separate instances? I was =

> rather wondering what all the confusing mess in patch #16 was about, =

> until I got here.
> =

> If there's something in the crypto API that means the driver can't =

> simply naively register itself multiple times, there should be any =

> number of ways for the probe routine to keep track of whether it's =

> already registered something and associate any subsequent devices with =

> the first one internally if need be. Linux implementation details should =

> not leak out as non-standard DT weirdness.
> =

> I know the Rockchip IOMMU driver does this, but in that case the two =

> IOMMU instances are closely coupled and sharing work such that they =

> effectively need to be programmed identically at all times, so it was a =

> bit more justifiable. I don't know the full story here, but it certainly =

> looks like rk_get_engine_number() is just a means to schedule work on =

> any available unit independently, so looks like it wouldn't take much to =

> select between distinct devices at that point, and actually end up a lot =

> simpler and cleaner overall.

Yes rk3399 has 2 instances of the same IP (Exception: crypto1 does not have=
 RSA).

The problem is that only one drivername (like rk-md5) could exists.
If crypto0 and crypto1 register with different drivername (rk-md5-0/rk-md5-=
1), only one will be used anyway.
So I merged them into only one instance.
I think this way will be easier, but you are right, this is not pretty.

I found another way with 2 nodes:
You could preview it at https://github.com/montjoie/linux/tree/cryptorockch=
ipv4
Basicly the crypto0 is a normal instance, and crypto1 "registers" itself ag=
ainst crypto0.
So if crypto0 know another instance exists it will load balance requests.

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
