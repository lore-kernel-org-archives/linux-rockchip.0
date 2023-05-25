Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4ADBC77B7E
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 13:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VhaCsWmhOuX8Bm93fzQED6gHb5Nn8tC72QqvqUTB6Dg=; b=TZXiKFGh7IkFu2
	+OotsGnQ7eZxRcEjE3MUNiCAdMuXC5TfeZW8j4Oy1FFQFNidZu9hNF29y24+BunCW/jjsK+s1zyrR
	YEwCFLc/SzbpoB6HLN0P0G7AJMGdiyDVKD9IH3vEPzfK+6LwsYYx9up4ik5aj5m+puECBRuyvk2vF
	zppxqlz1Qvo/Mgj+DqHCMinTZuywRGLJZyowWMFuyjjqX9qUDxI2xHrvK10AJvLuZnGaeEG3OfPPZ
	lqA+Q6+0772seyvGR9vI0+qAfdpA9jMmudzbKZPOlkUgF21RtzBVUI36cYbQNYROVApDlz8iiu4GH
	i4Kmv5yoTCB7f6iv+GBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Asu-00GiZV-0r;
	Thu, 25 May 2023 13:20:04 +0000
Received: from lahtoruutu.iki.fi ([2a0b:5c81:1c1::37])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Aso-00GiXE-0d;
	Thu, 25 May 2023 13:20:00 +0000
Received: from hillosipuli.retiisi.eu (82-181-192-243.bb.dnainternet.fi [82.181.192.243])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sailus)
	by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 4QRpZ35Pkxz49Q76;
	Thu, 25 May 2023 16:19:55 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu;
	t=1685020795;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0qetPBPgd9hVIq6M58pwalvrkrjuv/rSJBgHk7CnDNA=;
	b=NQbDvhVxiaRGXJjuc+Jd2Ockby8SWIOEsMstnWOA5IhXCMoIrFElwCykOp3L+zm7yjC3cY
	Zc/ZxrremUTWFoMLrTKD7ZtVZgYvUbqLwoWggnTZkRc9RgnD4stzgPLitp3bo4IrSytg5g
	a6K1P/vufidWxIRLT29wj5/Gx/ixNpL1vO22RaXuvKEqSmOoda2hFwKK7DqnIqugOUvewa
	KGh7/EDBCyK2Jumr6W/kxjajCjRj8PDbpdGKhUpEeWGw7PmDKcJys0ykJx2yRzTjROgJrv
	pYmJMjlYdzQBker9uQbW2shaIQHjR+9a+POQ/RAu86zhGgIN1VNPFiGUTEaCHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=lahtoruutu; t=1685020795;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0qetPBPgd9hVIq6M58pwalvrkrjuv/rSJBgHk7CnDNA=;
	b=aoVtERg41iMgL2DTOyJXSGRwV7K+2GDB2coIVsnzxBxCJM1T5qJPdgHEM8VXokKQP6AVac
	FZHWPY703xIl5IgXgMhnltcE8WI+GvRc0PCmsu8cpGRlyFUTp8WAocpJ0rqLzlLSVLl8k+
	/8N7oh0TZxl/PmajclTT8a6qEmyCdHobC0H0+TS8RAwLa78V2SxWqaoWGpvp2GyERE0owk
	k11fbNm8pJaFsnfb7NkxIjgm8fR9g1UpNM/hvrMHTrL+rNazB+d3kBOtRQhiO2C/Q4BxcY
	JXh2bG79SNOUuxfaX1Neb9TawjBjyDo1tH6RJJOunXGpLZZfvzgsBpTElMVsew==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sailus smtp.mailfrom=sakari.ailus@iki.fi
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1685020795; a=rsa-sha256;
	cv=none;
	b=efqD3vaGzuMwKAX5crbjHumwetM35Wf3CIlqu3vc9agehICnsodaIH9kn2um0WhroiJYQ5
	usexy3uEPSzkIUoCyvfeed17Un/uE+WRdWg22XaC4z4N0iPZrLMQAaZrpr1qJ+ZF7c++cd
	L5FKqTtMjiccuc8QZGghS0NBCxaoKB19NBpLs+IHCLr2tvwgy4ScjsvWI/9hcD3IkRgv38
	zn+cGrxUXQu+uturY8ca20qAU1sc31M09LEnX8wZA3z+73efIXBYefQ1lwI/0kAviH4+YO
	ZJFzLS+RxWaL4379SLh+isKa94hmQVjcNCslU4h/E4uUu8gOTrTLJkiXU+kCEg==
Received: from valkosipuli.retiisi.eu (valkosipuli.localdomain [192.168.4.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by hillosipuli.retiisi.eu (Postfix) with ESMTPS id 16BBE634C91;
	Thu, 25 May 2023 16:19:55 +0300 (EEST)
Date: Thu, 25 May 2023 16:19:54 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Joe Tessler <jrt@google.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Michael Tretter <m.tretter@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Jacopo Mondi <jacopo+renesas@jmondi.org>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Rui Miguel Silva <rmfrfs@gmail.com>,
	Wenyou Yang <wenyou.yang@microchip.com>,
	Bin Liu <bin.liu@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
	Houlong Wei <houlong.wei@mediatek.com>,
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
	Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Yong Deng <yong.deng@magewell.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	"Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>, Sean Young <sean@mess.org>,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 01/28] media: cec: ch7322: drop of_match_ptr for ID table
Message-ID: <ZG9ger4WE2VWoVEF@valkosipuli.retiisi.eu>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <98a77653-ec58-56c4-9893-3b424f67c87e@linaro.org>
 <5afcec8b-b8f6-35b0-278a-5de185e4a7a2@xs4all.nl>
 <ZG9XJCD98VWjGjTN@valkosipuli.retiisi.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZG9XJCD98VWjGjTN@valkosipuli.retiisi.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_061958_566512_F19D2779 
X-CRM114-Status: GOOD (  23.93  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgZm9sa3MsCgpPbiBUaHUsIE1heSAyNSwgMjAyMyBhdCAwMzo0MDowNFBNICswMzAwLCBTYWth
cmkgQWlsdXMgd3JvdGU6Cj4gSGkgSGFucywKPiAKPiBPbiBTYXQsIE1heSAxMywgMjAyMyBhdCAx
MTo1NzozM0FNICswMjAwLCBIYW5zIFZlcmt1aWwgd3JvdGU6Cj4gPiBPbiAxMi8wNS8yMDIzIDE4
OjM1LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4gPiBPbiAxMi8wMy8yMDIzIDE0OjEy
LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4gPj4gVGhlIGRyaXZlciBjYW4gbWF0Y2gg
b25seSB2aWEgdGhlIERUIHRhYmxlIHNvIHRoZSB0YWJsZSBzaG91bGQgYmUgYWx3YXlzCj4gPiA+
PiB1c2VkIGFuZCB0aGUgb2ZfbWF0Y2hfcHRyIGRvZXMgbm90IGhhdmUgYW55IHNlbnNlICh0aGlz
IGFsc28gYWxsb3dzIEFDUEkKPiA+ID4+IG1hdGNoaW5nIHZpYSBQUlAwMDAxLCBldmVuIHRob3Vn
aCBpdCBtaWdodCBub3QgYmUgcmVsZXZhbnQgaGVyZSkuCj4gPiA+Pgo+ID4gPj4gICBkcml2ZXJz
L21lZGlhL2NlYy9pMmMvY2g3MzIyLmM6NTgzOjM0OiBlcnJvcjog4oCYY2g3MzIyX29mX21hdGNo
4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1d
Cj4gPiA+Pgo+ID4gPj4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6
dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgo+ID4gPj4gLS0tCj4gPiA+IAo+ID4gPiBIYW5zLCBT
YWthcmksCj4gPiA+IAo+ID4gPiBDYW4geW91IHBpY2sgdXAgdGhlIHBhdGNoc2V0PyBUaGVyZSB3
YXMgcG9zaXRpdmUgZmVlZGJhY2s6Cj4gPiA+IGh0dHBzOi8vcGF0Y2h3b3JrLmxpbnV4dHYub3Jn
L3Byb2plY3QvbGludXgtbWVkaWEvcGF0Y2gvMjAyMzAzMTIxMzEzMTguMzUxMTczLTEta3J6eXN6
dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnLwo+ID4gPiAKPiA+ID4gYnV0IGl0IHNlZW1zIGl0IHdh
cyBub3QgYXBwbGllZC4KPiA+IAo+ID4gSSBzZWUgaXQgaXMgZGVsZWdhdGVkIHRvIFNha2FyaSBp
biBwYXRjaHdvcmsgYW5kIG1hcmtlZCBVbmRlciBSZXZpZXcsIGJ1dCBJIGRvbid0Cj4gPiBzZWUg
YSBjb3JyZXNwb25kaW5nIHB1bGwgcmVxdWVzdCBmb3IgdGhpcyBzZXJpZXMuCj4gPiAKPiA+IFNh
a2FyaSwgZGlkIHNvbWV0aGluZyBnbyB3cm9uZz8KPiAKPiBJIHNwb3R0ZWQgdGhpcyBhcyBIYW5z
IG5vdGlmaWVkIG1lIGluIElSQywgSSB3YXNuJ3QgY2MnZC4gQXBvbG9naWVzIGZvcgo+IHRoaXMg
LS0tIEkgaW50ZW5kZWQgdG8gdGFrZSB0aGVzZSBidXQgSSB0aGluayBJIG11c3QgaGF2ZSBtaXNz
ZWQgc29tZXRoaW5nCj4gaW1wb3J0YW50IGluIHRoZSBwcm9jZXNzLiBJJ2xsIHRha2UgdGhlbSBu
b3cuCj4gCj4gVGhhbmtzLgoKVGhpcyBubyBsb25nZXIgYXBwbGllZCBjbGVhbmx5LiBNb3N0bHkg
dGhlcmUgd2FzIGZ1enogbmVhciAub2ZfbWF0Y2hfdGFibGUKY2hhbmdlcyBhcyBwcm9iZV9uZXcg
KGFuZCByZW1vdmVfbmV3PykgY2hhbmdlcyBoYXZlIGJlZW4gcmVjZW50bHkgbWVyZ2VkLgpUaGVy
ZSB3ZXJlIG90aGVyIGlzc3VlcyBhcyB3ZWxsLCBJIG1hcmtlZCBhIGZldyBwYXRjaGVzIGluIHRo
ZSBzZXQgIm5vdAphcHBsaWNhYmxlIiBhcyBvdGhlciBwYXRjaGVzIGhhZCBhbHJlYWR5IGRvbmUg
ZXF1aXZhbGVudCBjaGFuZ2VzIGVhcmxpZXIuCgpUaGVyZSB3ZXJlIHN1YnN0YW5jZS1jaGFuZ2lu
ZyBjaGFuZ2VzIGluIHRoZSAyMHRoIHBhdGNoLCByZXBsaWVkIHRvIHRoZQpkaXN1Y2NzaW9uIHRo
ZXJlLgoKSSd2ZSBwdXNoZWQgdGhlIHJlc3VsdCBoZXJlIGFuZCBpbnRlbmQgdG8gc2VuZCBQUiB0
byBNYXVybyBzb29uIGlmIHRoZXJlCmFyZSBubyBpc3N1ZXM6Cgo8VVJMOmh0dHBzOi8vZ2l0Lmxp
bnV4dHYub3JnL3NhaWx1cy9tZWRpYV90cmVlLmdpdC9sb2cvP2g9b2YtbWF0Y2gtcHRyPgoKLS0g
CktpbmQgcmVnYXJkcywKClNha2FyaSBBaWx1cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
