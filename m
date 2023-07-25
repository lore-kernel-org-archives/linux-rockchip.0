Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23017C001DE
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jul 2023 10:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CsQGO1ERMp7JO9k7lKInGMKnaW8f7I+CGS5820YjEZk=; b=0MjiaeDcIQX7Dm
	2ekSzdvc6zRw3co42ipsMVWRUvM89Jk2wEC7MD2MpaD/noe3gFEzQ1ADYlNVX+3szn/bvPKGgL6xC
	aeUYajpLjK5EMFUVh76E80Aq1Zf7PYhMnzl06xoZscOwv1VQ8YL8IHH4nDUlmCDQbxWtobDZXyM/Y
	hSJhlM3Bwm2tKbD/U7gnAJtuN8FaQOLdd1mJldcFq7IatVBtTtKovacVyxhXXHzJ1I3xauhmDjC3h
	RtC6uu01Pb6HYjaP9xdh8B2gXb5QbTTcdeNvjLY2Wu/0iYGcI6MdLMWQmzI6VXdLwHlUGmaVjlgmB
	KJ6X06FIIgEAsZqYmH6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOFe3-007EfZ-01;
	Tue, 25 Jul 2023 10:51:59 +0000
Received: from meesny.iki.fi ([195.140.195.201])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOFdx-007EUk-03;
	Tue, 25 Jul 2023 10:51:55 +0000
Received: from hillosipuli.retiisi.eu (dkzdf0gkyyyyyyyyyyyyt-3.rev.dnainternet.fi [IPv6:2001:14ba:4506:4f15::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sailus)
	by meesny.iki.fi (Postfix) with ESMTPSA id 4R9DNk1zV3zyRB;
	Tue, 25 Jul 2023 13:51:33 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
	t=1690282303;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nVTFYmNWV1jP27+FDM4eqhSzMI/cuSd7gi5VmMNOAfg=;
	b=OIKPneVysIIsOt0iRF7c9GoTrhfIJR3pJ1fYanttlyHbKxBnxdV50h3BXqREUF1tnvN/8H
	ttNqApgMpAYqB7vDQZc+xH2UvgGKtx66Hw1y+pGiPqPEw8hU2G2wzUdMtgPO8868lDUEuC
	mAamey/Dq8fuzD8h9oyCJhONbjrEu28=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=meesny; t=1690282303;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nVTFYmNWV1jP27+FDM4eqhSzMI/cuSd7gi5VmMNOAfg=;
	b=B8bdNu9uBV5ZXRnWapFwaJRrCRvDVUeUl1pyKdPWhaxXOVJ824gQaLzPRbWHbGIpGc9grs
	jqcDmI9Bw1kzqTupLqxIloBqC/4NgCsOXWuXufhnKIg2jSO/0Ve1RtJU6Ax3Z+d0PLJPoe
	dAV05DsdXtLCk2N97Jcdz7E1wVO/iwM=
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sailus smtp.mailfrom=sakari.ailus@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1690282303; a=rsa-sha256; cv=none;
	b=vct141sa+XcGyQ1kVIQejOrk1qw2TvdjLqv5zflvOIbiywY4zEj5ryKGPtYOfkQM0he69/
	7oqKcieTLFTTIM75qqs7mrU3HO4obQNPfyig41htRHqPfObXhKwFeAh5H9FyPca2wIIHTX
	Wvb5rALlBcEDu3u29PPObFj7UthU4Mw=
Received: from valkosipuli.retiisi.eu (valkosipuli.localdomain [192.168.4.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by hillosipuli.retiisi.eu (Postfix) with ESMTPS id 304E7634C23;
	Tue, 25 Jul 2023 13:51:33 +0300 (EEST)
Date: Tue, 25 Jul 2023 10:51:33 +0000
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Joe Tessler <jrt@google.com>,
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
Message-ID: <ZL+pNUYymeXv5EoU@valkosipuli.retiisi.eu>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <98a77653-ec58-56c4-9893-3b424f67c87e@linaro.org>
 <5afcec8b-b8f6-35b0-278a-5de185e4a7a2@xs4all.nl>
 <ZG9XJCD98VWjGjTN@valkosipuli.retiisi.eu>
 <ZG9ger4WE2VWoVEF@valkosipuli.retiisi.eu>
 <158425ec-86e8-ca3e-eed8-e14b37c42730@linaro.org>
 <ce217ae6-6dd5-26ea-2ce7-95d97ef791c4@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ce217ae6-6dd5-26ea-2ce7-95d97ef791c4@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_035153_245245_FD1B258B 
X-CRM114-Status: GOOD (  27.73  )
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

SGkgS3J6eXN6dG9mLAoKT24gVGh1LCBKdWwgMTMsIDIwMjMgYXQgMDg6NDY6NThBTSArMDIwMCwg
S3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAxOS8wNi8yMDIzIDE2OjEzLCBLcnp5c3p0
b2YgS296bG93c2tpIHdyb3RlOgo+ID4gT24gMjUvMDUvMjAyMyAxNToxOSwgU2FrYXJpIEFpbHVz
IHdyb3RlOgo+ID4+IEhpIGZvbGtzLAo+ID4+Cj4gPj4gT24gVGh1LCBNYXkgMjUsIDIwMjMgYXQg
MDM6NDA6MDRQTSArMDMwMCwgU2FrYXJpIEFpbHVzIHdyb3RlOgo+ID4+PiBIaSBIYW5zLAo+ID4+
Pgo+ID4+PiBPbiBTYXQsIE1heSAxMywgMjAyMyBhdCAxMTo1NzozM0FNICswMjAwLCBIYW5zIFZl
cmt1aWwgd3JvdGU6Cj4gPj4+PiBPbiAxMi8wNS8yMDIzIDE4OjM1LCBLcnp5c3p0b2YgS296bG93
c2tpIHdyb3RlOgo+ID4+Pj4+IE9uIDEyLzAzLzIwMjMgMTQ6MTIsIEtyenlzenRvZiBLb3psb3dz
a2kgd3JvdGU6Cj4gPj4+Pj4+IFRoZSBkcml2ZXIgY2FuIG1hdGNoIG9ubHkgdmlhIHRoZSBEVCB0
YWJsZSBzbyB0aGUgdGFibGUgc2hvdWxkIGJlIGFsd2F5cwo+ID4+Pj4+PiB1c2VkIGFuZCB0aGUg
b2ZfbWF0Y2hfcHRyIGRvZXMgbm90IGhhdmUgYW55IHNlbnNlICh0aGlzIGFsc28gYWxsb3dzIEFD
UEkKPiA+Pj4+Pj4gbWF0Y2hpbmcgdmlhIFBSUDAwMDEsIGV2ZW4gdGhvdWdoIGl0IG1pZ2h0IG5v
dCBiZSByZWxldmFudCBoZXJlKS4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gICBkcml2ZXJzL21lZGlhL2Nl
Yy9pMmMvY2g3MzIyLmM6NTgzOjM0OiBlcnJvcjog4oCYY2g3MzIyX29mX21hdGNo4oCZIGRlZmlu
ZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCj4gPj4+Pj4+
Cj4gPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5r
b3psb3dza2lAbGluYXJvLm9yZz4KPiA+Pj4+Pj4gLS0tCj4gPj4+Pj4KPiA+Pj4+PiBIYW5zLCBT
YWthcmksCj4gPj4+Pj4KPiA+Pj4+PiBDYW4geW91IHBpY2sgdXAgdGhlIHBhdGNoc2V0PyBUaGVy
ZSB3YXMgcG9zaXRpdmUgZmVlZGJhY2s6Cj4gPj4+Pj4gaHR0cHM6Ly9wYXRjaHdvcmsubGludXh0
di5vcmcvcHJvamVjdC9saW51eC1tZWRpYS9wYXRjaC8yMDIzMDMxMjEzMTMxOC4zNTExNzMtMS1r
cnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmcvCj4gPj4+Pj4KPiA+Pj4+PiBidXQgaXQgc2Vl
bXMgaXQgd2FzIG5vdCBhcHBsaWVkLgo+ID4+Pj4KPiA+Pj4+IEkgc2VlIGl0IGlzIGRlbGVnYXRl
ZCB0byBTYWthcmkgaW4gcGF0Y2h3b3JrIGFuZCBtYXJrZWQgVW5kZXIgUmV2aWV3LCBidXQgSSBk
b24ndAo+ID4+Pj4gc2VlIGEgY29ycmVzcG9uZGluZyBwdWxsIHJlcXVlc3QgZm9yIHRoaXMgc2Vy
aWVzLgo+ID4+Pj4KPiA+Pj4+IFNha2FyaSwgZGlkIHNvbWV0aGluZyBnbyB3cm9uZz8KPiA+Pj4K
PiA+Pj4gSSBzcG90dGVkIHRoaXMgYXMgSGFucyBub3RpZmllZCBtZSBpbiBJUkMsIEkgd2Fzbid0
IGNjJ2QuIEFwb2xvZ2llcyBmb3IKPiA+Pj4gdGhpcyAtLS0gSSBpbnRlbmRlZCB0byB0YWtlIHRo
ZXNlIGJ1dCBJIHRoaW5rIEkgbXVzdCBoYXZlIG1pc3NlZCBzb21ldGhpbmcKPiA+Pj4gaW1wb3J0
YW50IGluIHRoZSBwcm9jZXNzLiBJJ2xsIHRha2UgdGhlbSBub3cuCj4gPj4+Cj4gPj4+IFRoYW5r
cy4KPiA+Pgo+ID4+IFRoaXMgbm8gbG9uZ2VyIGFwcGxpZWQgY2xlYW5seS4gTW9zdGx5IHRoZXJl
IHdhcyBmdXp6IG5lYXIgLm9mX21hdGNoX3RhYmxlCj4gPj4gY2hhbmdlcyBhcyBwcm9iZV9uZXcg
KGFuZCByZW1vdmVfbmV3PykgY2hhbmdlcyBoYXZlIGJlZW4gcmVjZW50bHkgbWVyZ2VkLgo+ID4+
IFRoZXJlIHdlcmUgb3RoZXIgaXNzdWVzIGFzIHdlbGwsIEkgbWFya2VkIGEgZmV3IHBhdGNoZXMg
aW4gdGhlIHNldCAibm90Cj4gPj4gYXBwbGljYWJsZSIgYXMgb3RoZXIgcGF0Y2hlcyBoYWQgYWxy
ZWFkeSBkb25lIGVxdWl2YWxlbnQgY2hhbmdlcyBlYXJsaWVyLgo+ID4+Cj4gPj4gVGhlcmUgd2Vy
ZSBzdWJzdGFuY2UtY2hhbmdpbmcgY2hhbmdlcyBpbiB0aGUgMjB0aCBwYXRjaCwgcmVwbGllZCB0
byB0aGUKPiA+PiBkaXN1Y2NzaW9uIHRoZXJlLgo+ID4+Cj4gPj4gSSd2ZSBwdXNoZWQgdGhlIHJl
c3VsdCBoZXJlIGFuZCBpbnRlbmQgdG8gc2VuZCBQUiB0byBNYXVybyBzb29uIGlmIHRoZXJlCj4g
Pj4gYXJlIG5vIGlzc3VlczoKPiA+Pgo+ID4+IDxVUkw6aHR0cHM6Ly9naXQubGludXh0di5vcmcv
c2FpbHVzL21lZGlhX3RyZWUuZ2l0L2xvZy8/aD1vZi1tYXRjaC1wdHI+Cj4gPiAKPiA+IE9uZSBt
b250aCBsYXRlciwgSSBzdGlsbCBkb24ndCBzZWUgdGhpcyBzZXQgaW4gdGhlIGxpbnV4LW5leHQu
ICBXaGF0J3MKPiA+IGhhcHBlbmluZyBoZXJlPwo+ID4gCj4gCj4gSSBkb24ndCB0aGluayB0aGlz
IHdhcyBtZXJnZWQgaW4gdjYuNS1yYzEuIEl0J3Mgbm90IGluIGxpbnV4LW5leHQsCj4gZWl0aGVy
LiBBbm90aGVyIG1vbnRoIHBhc3NlZC4uLgoKVGhlc2UgYXJlIG5vdyBpbiB0aGUgbWVkaWEtc3Rh
Z2UgdHJlZQo8VVJMOmh0dHBzOi8vZ2l0LmxpbnV4dHYub3JnL21lZGlhX3N0YWdlLmdpdC9sb2cv
Pi4gQXNzdW1pbmcgbm90aGluZyBnb2VzCndyb25nLCB0aGVzZSBzaG91bGQgZW5kIHVwIGluIExp
bnVzJ3MgdHJlZSBmb3IgNi42LgoKVGhlIGlzc3VlcyByZWxhdGVkIHRvIG1lZGlhIHRyZWUgbWFp
bnRlbmFuY2UgYXJlIGJlaW5nIGFkZHJlc3NlZCBhcyB3ZSdyZQpjaGFuZ2luZyB0aGUgcHJvY2Vz
cyBob3cgdGhlIHRyZWUgaXMgbWFpbnRhaW5lZC4gVGhlIHBhdGNoZXMgd2lsbApldmVudHVhbGx5
IGdldCBpbiBzdGlsbCwgYWxzbyBleHBlY3QgdGhpcyB0byBpbXByb3ZlIGluIHRoZSBmdXR1cmUu
CgotLSAKUmVnYXJkcywKClNha2FyaSBBaWx1cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
