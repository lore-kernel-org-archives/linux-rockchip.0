Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CBE4C54E58
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 08:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hN/gav0plZyECRBf2bfRF5ibdUQLiX97lzzQefQz+UI=; b=bRmlIocZkpI6ME
	IaeJfdL9Q2FYRSrVPswoQzhynkLcve+4oCc/Oy+I5lTzqpjwKYrFPIAg1VSvogPQSMx2xPgjO+saW
	BYu7gOwm6zUXYVsDZAIQggzio0JqEcoEFMr68jQiQek547yADxtB0BcSuA2kn8aBT2aZwhxl9o+Xu
	3O2iOO7JKkJzlijQ8Xc1sYMqf+PfMnMtNI10v2iOwIcw3iBPG9dLGg74CpzOIBi4YePBHjZa7oL1H
	GLQnrws3QhygkkfUKv+0HgP2ZqF4IAXYJlmGJi2bUVJCutXkJEkoKjRkFIe2wngSFG3oe+Hpf7D85
	SN0VlRjUV8MS1o56dFmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnE5n-00000002NlD-2XBM;
	Thu, 21 Mar 2024 08:48:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnE5l-00000002Njt-0CVf;
	Thu, 21 Mar 2024 08:48:06 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rnE5N-0007Gb-C8; Thu, 21 Mar 2024 09:47:41 +0100
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
Date: Thu, 21 Mar 2024 09:47:39 +0100
Message-ID: <855507987.0ifERbkFSE@diego>
In-Reply-To: <4c05d3c0-aa79-4ce0-918c-7d0967ace520@linaro.org>
References: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
 <20240320173736.2720778-3-linkmauve@linkmauve.fr>
 <4c05d3c0-aa79-4ce0-918c-7d0967ace520@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_014805_093519_A887F34C 
X-CRM114-Status: GOOD (  14.74  )
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

Am Donnerstag, 21. M=E4rz 2024, 09:14:51 CET schrieb Krzysztof Kozlowski:
> On 20/03/2024 18:37, Emmanuel Gil Peyrot wrote:
> > This encoder-only device is present four times on this SoC, and should
> > support everything the rk3568 vepu supports (so JPEG, H.264 and VP8
> > encoding).
> > =

> > Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> > ---
> >  .../devicetree/bindings/media/rockchip,rk3568-vepu.yaml          | 1 +
> >  1 file changed, 1 insertion(+)
> > =

> > diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-ve=
pu.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
> > index 9d90d8d0565a..947ad699cc5e 100644
> > --- a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
> > +++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
> > @@ -17,6 +17,7 @@ properties:
> >    compatible:
> >      enum:
> >        - rockchip,rk3568-vepu
> > +      - rockchip,rk3588-vepu121
> =

> What is 121?

That is the strange naming of the ip block inside the soc.

I.e. the rk3588 TRM lists a number of different video encoders and decoders:
- VDPU121 is decoding h.263 and mpeg1,2,4
- VDPU381 is decoding h.265, h.264 and some more
- VDPU720 is decoding jpeg
- VDPU981 decodes AV1
- VEPU121 is the jpeg encoder above
- VEPU580 encodes h.264 and h.265

Each of those are separate IP blocks with their own io-memory, their own
interrupts and their own iommus, etc.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
