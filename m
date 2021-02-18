Return-Path: <SRS0=3svJ=HU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D027C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 16:35:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CCD0C64EAD
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 16:35:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CCD0C64EAD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cerno.tech
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XhsN/8TQK1SjPJGXHzPF7wikl4Xgc1km9FXj5GIPTfw=; b=saGE37pCzTFe60aK//E+4y1gu
	f52nj+j/55lNke/32BxzhtCbpGVRF5W3nsfi1mMq6ieQytUG4TNWNkhBUvfDfQesOsBfPtof+W0Vg
	iFENxeq9xcl5L9XzTGktAM4es4/niFKfQJN3I3IEDks65HAUEp2Kc7W9w7pW6kZ9j8gabFOm0yS9x
	7UAM53GInFut27xxqtBzHk6kvjqwZQuSkFvc0bxjeK8g7J1U7xKrdtA6S5sd6jjqxnNLDqzxJ5Q84
	F2BEtOJPhfPAeHBd34dKTd1QzOqVxJ2uiO9VPNt8ZTOBhECkHQNnF4AfxK0JVDRx/Nqcdh9Z0t4J1
	NyZ+/KjRw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCmH5-0001qb-IP; Thu, 18 Feb 2021 16:35:31 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCmGz-0001ou-Ru; Thu, 18 Feb 2021 16:35:26 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.west.internal (Postfix) with ESMTP id DF1EFE1F;
 Thu, 18 Feb 2021 11:35:18 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Thu, 18 Feb 2021 11:35:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=9glu1NqYQ89GMrISno2hyWbjb5g
 /OTCuIq2T05YOits=; b=G6pm+BxV6Dh9oiD6SJUz1xXNJ7zPPCZpBW9AEchzgQY
 SsCnHwIhIZleE9PczJeaxSABPuNfyZNS1u3Zj2kDGJdZzYOuF3md0m5GftSNoeev
 ZavMKbuw+WSPSBcY4VpVTBkV/ddPDz1xHbCCETt+RAuJ3CD0g/aAsRM9ST0bJ2+t
 +6ifUhzBy+1w+NmK0Bu03Ar0ji4npJeGmU9jySby/2b7puTSkKn/YECDpUC+LyuL
 6Guj5EkOzfnyrZ7fuCEdeNrI7VmN9ZSWN6LpeNmu5/FnzVAUNcjxOj673ayo+RK2
 5fiMH3d3rCy4RcepJW9kS8GD2lNioOxaP+2WrEFLkFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=9glu1N
 qYQ89GMrISno2hyWbjb5g/OTCuIq2T05YOits=; b=F8tizhTRDZ1QmkV4IX/nKz
 GFGeeljOv0nlv95ycFp0ze5k8JaZwhxcx+uGwtKUsVGuJaf3wBvlVHShQ6AEUuUa
 nYa/M+CR3Q7nQv96fSu/CfaeIwuzJxRKrhn2B8yNMcGRvghgtZ0Vp/RbSek1ItaO
 Huq8VE54K1HbMzSfgJ/qk4vTktg7KPqCaeXhHlIBqpyMVIsKqMHjMXcuPGS+ft/T
 80Nr4qrm62gEv7vJ1wWgcbm6pcoegFAPfttgQ+bfSTEtA0b5vB4AgmFNGzLe9Jjp
 2mDgst8VHznkjEYhvASc+FuMU+CJuXELKFptery4MIiY6qnvOy5wsWIYxYIQt8qA
 ==
X-ME-Sender: <xms:Q5cuYNHGf4DP6s5Yrk94g87bEt9maVsvZUvIZ5_OSwOa3ygXsvSckA>
 <xme:Q5cuYCWJqVHxc0TBvW8RaM0wSdODYkxfn4yClOKahSKwcF7ZJMIFzdXO9brx_KJON
 wVOak8LO-iBIzeTj3U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeeggdekjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Q5cuYPL64pGtEXDOIjB2LytBtepgEjTDIlirUSWB4Z_2bk7CHwRyNw>
 <xmx:Q5cuYDGxFYNq90q1Kozd9_sE8xI5mkNSdlmaFJwB_t_-qpDhKS53yA>
 <xmx:Q5cuYDU83mA2iruvPx6pKrkqUS3fSvQrhe9kV_x71Rp0kdmagu5q-g>
 <xmx:RpcuYHmzfxpDFq6rYEjERoNkSWa7GUcR73y9VFLtc6uo7hgIIot_W0suCF8>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DE99E24005C;
 Thu, 18 Feb 2021 11:35:14 -0500 (EST)
Date: Thu, 18 Feb 2021 17:35:12 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v2] drm/gem: Move drm_gem_fb_prepare_fb() to GEM atomic
 helpers
Message-ID: <20210218163512.arnmixdkygysxrqk@gilmour>
References: <20210211081636.28311-1-tzimmermann@suse.de>
MIME-Version: 1.0
In-Reply-To: <20210211081636.28311-1-tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210218_113526_004508_CFC6C864 
X-CRM114-Status: GOOD (  10.90  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linaro-mm-sig@lists.linaro.org, linux-aspeed@lists.ozlabs.org,
 airlied@linux.ie, linux-arm-msm@vger.kernel.org,
 maarten.lankhorst@linux.intel.com, linux-mips@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org,
 daniel@ffwll.ch, xen-devel@lists.xenproject.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, freedreno@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5709792205565475017=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5709792205565475017==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qyrmapmaovukaths"
Content-Disposition: inline


--qyrmapmaovukaths
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Feb 11, 2021 at 09:16:36AM +0100, Thomas Zimmermann wrote:
> diff --git a/include/drm/drm_gem_framebuffer_helper.h b/include/drm/drm_gem_framebuffer_helper.h
> index 6b013154911d..495d174d9989 100644
> --- a/include/drm/drm_gem_framebuffer_helper.h
> +++ b/include/drm/drm_gem_framebuffer_helper.h
> @@ -9,9 +9,11 @@ struct drm_framebuffer;
>  struct drm_framebuffer_funcs;
>  struct drm_gem_object;
>  struct drm_mode_fb_cmd2;
> +#if 0
>  struct drm_plane;
>  struct drm_plane_state;
>  struct drm_simple_display_pipe;
> +#endif

That's probably not what you meant?

With that fixed,
Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--qyrmapmaovukaths
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYC6XQAAKCRDj7w1vZxhR
xeYjAQDBp12JMmHuiBCHQBmWyl9fGbmCMg6R9psxq9edd+0vigD+MjBWZAmh8A1d
2S0DtBQtnfgH07vDxZs1Eb8jJZ+x/QQ=
=WmxA
-----END PGP SIGNATURE-----

--qyrmapmaovukaths--


--===============5709792205565475017==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5709792205565475017==--

