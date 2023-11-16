Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E498BC54FB9
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 15:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1IVO3ElYSifJjNnL5TXEytfiA5b/e6vmVFwRb4bPg0=; b=P7gDkuaS9P7rJ/
	bAa/KMV+1bm6yvlZO2T1R0dcpNUIaMR9LsiLYyWnSAdUiLotR71mjL0wanidlvlRv3d2K2pvBeOTk
	/zQrUu+Y3B4MuondqBSHS4/bigxQ6uq/yKMD2lwDSWdiIcH4Yikp2P7Ia41P4UkbKc8jO26xW5BEl
	WShg9y000UKoaBYIq2LNSCgiaKroKCIT2Yg9oTfkPxpWEcPRp7ZPjtkmQK8P9faGtXYg3jrASWQvS
	R37DYY1JwkFudRRmzEzNjDhHnY8/49VMJ/eyOCecb+svZG0RPAS2TPFTTjN71IngDbELjncbROhoE
	VjSxbcNuCja/x775lKFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3edS-003s7C-1H;
	Thu, 16 Nov 2023 15:50:30 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3edO-003s5i-21;
	Thu, 16 Nov 2023 15:50:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CD623CE1FC2;
	Thu, 16 Nov 2023 15:50:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E78DC433C7;
	Thu, 16 Nov 2023 15:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700149824;
	bh=BolSwldx43V1s8lR3ByoyIMODjpgx8SOOvx2mkBrbUI=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=UF9HIah3VHoLbYth2CTAiD1ubicY+3D8g70w32pOj8EiJBfWgopgAv+aS118WcvSd
	 D7MOh9+8VypvhXwQX8ohvQYLcPhvCTYogzjM/RJUefhmFk2hzi+hgq3MiD081Fom4i
	 XH1a33/MHR4QzKmupt6urAfAFvX4pn8AbQskBC1CE1gqPAPNSSadHvbyew2Anb6KXO
	 Tm9KCx/wJ+y9Hgl8A7/U8BQlpfD8g53pcMErzwqdFJGhO+5lt2FdSF0EjWGPN7A8bW
	 IpKruvN8lZK3aXyVB9xtnd33CfwZtqonmfZuuG2RDyIyK8DIexINh0OH1Jr4j6wOSb
	 ULZu8Hu6cjEDw==
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-28039ee1587so716475a91.2;
        Thu, 16 Nov 2023 07:50:24 -0800 (PST)
X-Gm-Message-State: AOJu0YwRo2ixr8qAIJNs9RRmb62LTFPFLatOv5A47a+zQtV/ciFTc8/o
	nYJy2NeEewUh6mV9fF+onTxnya3l+zinQnRRICs=
X-Google-Smtp-Source: AGHT+IEMGFlu4SzYQe96Vr6F03Rp/SrNkJGccyxr7tmeveiTXRgztgXi+I4dU+cty9a2FC6wuDTy4PmEvaAETZ2DgJ8=
X-Received: by 2002:a17:90b:1802:b0:280:1c25:b633 with SMTP id
 lw2-20020a17090b180200b002801c25b633mr14521522pjb.2.1700149823613; Thu, 16
 Nov 2023 07:50:23 -0800 (PST)
MIME-Version: 1.0
References: <20231116154816.70959-1-andrzej.p@collabora.com> <20231116154816.70959-2-andrzej.p@collabora.com>
In-Reply-To: <20231116154816.70959-2-andrzej.p@collabora.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 16 Nov 2023 23:50:12 +0800
X-Gmail-Original-Message-ID: <CAGb2v64dFzqvvY4BanJ6WO667jFvxaoAX68EACYz7-Byu9i7qg@mail.gmail.com>
Message-ID: <CAGb2v64dFzqvvY4BanJ6WO667jFvxaoAX68EACYz7-Byu9i7qg@mail.gmail.com>
Subject: Re: [RFC 1/6] media: verisilicon Correct a typo in H1_REG_ENC_CTRL2_DEBLOCKING_FILTER_MODE
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Cc: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Hugues Fruchet <hugues.fruchet@foss.st.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	Daniel Almeida <daniel.almeida@collabora.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_075026_834082_E6285283 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBOb3YgMTYsIDIwMjMgYXQgMTE6NDjigK9QTSBBbmRyemVqIFBpZXRyYXNpZXdpY3oK
PGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEl0J3MgYSBGSUxURVIgYW5kIG5v
dCBGSUxFVEVSLgo+Cj4gU2lnbmVkLW9mZi1ieTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRy
emVqLnBAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBDaGVuLVl1IFRzYWkgPHdlbnNAY3Np
ZS5vcmc+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
