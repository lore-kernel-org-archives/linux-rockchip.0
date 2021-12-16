Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9446FC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 23:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vP0aRKSE2NXeKfTywLMJOXHWpoTHGeOTqMaHCQzrahQ=; b=JrpWUmt+2tDXDj
	XzYi/1wLcZDSGyjI09GWE/k5969hkWxZf0hUmm2JbQz8KVkPjNRklSEy32p0mDFaToo0Hc1ZkiZaT
	3MnnC0eI0rGeSPF9lsyd3gJ62vhS3LEx4OSM05d9D+AN2oAi4S3rIKKZFPtdZ+IHKMfOHRs7tOyBZ
	B5Fn9s16L4vQ2bUHBcIJUW1GRS2Tc5Pn/EG6IGegaL9ZmDlShlICn7YHMgP3hcJPebSRj6GYBRgbf
	HR9Q83lsDrLOl7FPBAs8WqUPFamhRbZseP8vckJxvsnDRYqCRaq+9m/jqjHUC5WwI4vvl30INTVuB
	YqhyfMAjUyxF7Zz29hCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxznG-007sl4-Su; Thu, 16 Dec 2021 23:04:10 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxzn6-007sj4-QW
 for linux-rockchip@lists.infradead.org; Thu, 16 Dec 2021 23:04:02 +0000
Received: by mail-ed1-x533.google.com with SMTP id z29so1077082edl.7
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Dec 2021 15:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4XGBi9AWqlgW2iEFwQL1/1nQ3YHkq178Ji39UpQv5Mc=;
 b=5Z/zpo/llfSzl3vtey+5DTAVBphRj7/CDJ9pOYMjp3eqjbJXmr/AEdLxoqB69mFv5j
 ZpwLQI2rHW7KiiUd8nvbKYaBDF7hBvG1sITJkCnUq2r3HhLPikA52eYtnpIS8WB94HPh
 K5++om3EAiuvbLWowQ4mrDzb6BJQUbeomwO4G5kkrc/hm8MyeVdr3IdRfWVlRIHsBnB0
 SZDB77wt9U079h1sU4FLwKwQ2VBgNHae7A/yaW8mYjJy5az1ZTi8VDdO1vC9woQKGaFc
 bM2PAcIX0LN3bauj8SGE+llAKBWqtX8LLgNyFd3MnoXhKqBccaqVcOp90/uwWN21dVsC
 tW1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4XGBi9AWqlgW2iEFwQL1/1nQ3YHkq178Ji39UpQv5Mc=;
 b=gGu7U8UwqZldT06B39h6CMbI0j+cwXNI/+/EzEhKF/DpcFi1VYV2mOuvTS5GnvL2L4
 zrCgeKMLIWdKXh6LHf00bFfpBJBDMmSuZVQ6E3scSCULPxfejXi8WuLksAOTrlcHDxCV
 VRsgs7JAusaKEPV6p8u3sWeFCAp+C1w7F8utELk9En9z0IY9JxNRc5iTSK7J4jIY/rVW
 Z6CKizqwaRDXCC+6lzOzcKhqom1NvpMj0O1g7l2C5lyWiHXVP1WM+gC276mT8ppEHsYg
 XHguQsRJKYaCd2VEcoJ1gLc50uwZ+cg9QBwXUD/OOPpOIZhogTdrgTL7jO0EThMsWlia
 p+WQ==
X-Gm-Message-State: AOAM530jbJNAQRmI5F1MnsaU/B/YtnKhRmvehsY3IzHErBV0Md7Cvofa
 NwtsHw79d/kJzbY9OJXijkqeiz4ZkxxiIfUlk29vgg==
X-Google-Smtp-Source: ABdhPJwik5gP8WcxT/LlRWowNvewmqUiNaIiabdowVwZ57bu4+JUk4W5a8admDXC7cAvMFqmgEIUFgnO/YFxPYict7s=
X-Received: by 2002:a17:907:9608:: with SMTP id
 gb8mr243974ejc.301.1639695835285; 
 Thu, 16 Dec 2021 15:03:55 -0800 (PST)
MIME-Version: 1.0
References: <20211216111256.2362683-1-aford173@gmail.com>
 <20211216111256.2362683-9-aford173@gmail.com>
 <YbuqpayfYVPp1dTe@robh.at.kernel.org>
 <CAHCN7xLGeu4=CwqCv8BBowuQQ5t9iFDQV0adPNmy9dufW8soAg@mail.gmail.com>
In-Reply-To: <CAHCN7xLGeu4=CwqCv8BBowuQQ5t9iFDQV0adPNmy9dufW8soAg@mail.gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 16 Dec 2021 20:03:43 -0300
Message-ID: <CAAEAJfCNQJ+fQzTMM27usxaHhVNa5ime62UKvvbn1U=LSFNg_A@mail.gmail.com>
Subject: Re: [PATCH V2 08/10] dt-bindings: media: nxp, imx8mq-vpu: Add support
 for G1 and G2 on imx8mm
To: Adam Ford <aford173@gmail.com>
Cc: Rob Herring <robh@kernel.org>, linux-media <linux-media@vger.kernel.org>, 
 Abel Vesa <abel.vesa@nxp.com>, Adam Ford-BE <aford@beaconembedded.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Lucas Stach <l.stach@pengutronix.de>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_150400_875025_544AE4C7 
X-CRM114-Status: GOOD (  22.60  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Adam,

On Thu, 16 Dec 2021 at 18:21, Adam Ford <aford173@gmail.com> wrote:
>
> On Thu, Dec 16, 2021 at 3:07 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Thu, Dec 16, 2021 at 05:12:53AM -0600, Adam Ford wrote:
> > > The i.MX8M mini appears to have a similar G1 and G2 decoder but the
> > > post-procesing isn't present, so different compatible flags are requred.
> >
> > post-processing
> >
> > > Since all the other parameters are the same with imx8mq, just add
> > > the new compatible flags to nxp,imx8mq-vpu.yaml.
> > >
> > > Signed-off-by: Adam Ford <aford173@gmail.com>
> > >
> > > diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > index c1e157251de7..b1f24c48c73b 100644
> > > --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > @@ -5,7 +5,7 @@
> > >  $id: "http://devicetree.org/schemas/media/nxp,imx8mq-vpu.yaml#"
> > >  $schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > >
> > > -title: Hantro G1/G2 VPU codecs implemented on i.MX8MQ SoCs
> > > +title: Hantro G1/G2 VPU codecs implemented on i.MX8MQ/i.MX8MM SoCs
> >
> > Just 'i.MX8' so we don't have to change this everytime?
>
> Are you OK with i.MX8M?  8MQ, 8MM, and 8MP all appear to have G1 and
> G2 decoders.  The i.MX8 is different.
> >
> > >
> > >  maintainers:
> > >    - Philipp Zabel <p.zabel@pengutronix.de>
> > > @@ -20,6 +20,8 @@ properties:
> > >          deprecated: true
> > >        - const: nxp,imx8mq-vpu-g1
> > >        - const: nxp,imx8mq-vpu-g2
> > > +      - const: nxp,imx8mm-vpu-g1
> > > +      - const: nxp,imx8mm-vpu-g2
> >
> > Not compatible with the imx8mq variants?
>
> No, the structures associated with these compatible flags telling the
> driver what features are available have options for the post-processor
> in the 8MQ which are not present in the 8MM.
>

Just as G1 and G2 are different blocks, their "post-processor"
features are really different too.

The G2 core typically produces a tiled format, NV12_4L4,
and it an inline post-processor to convert that to linear NV12.

How does this work on the 8MM? What pixel format does it
produce natively?

It's hard to imagine the G2 block doesn't do linear NV12,
so I'm inclined to think it has that post-processing feature.

Thanks,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
