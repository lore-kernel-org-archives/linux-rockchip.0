Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1CC0C77B7E
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 12:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71lH+vG6/puLVuRf14DTzJrBCzXsnOVAARBkSmc35z8=; b=Tj7x8u/k07Sz+/
	sgRP93MJn6E3BzRgra20sH1QZ5F4HDiwhiiCgGX9U8eygnwbxyXqxO1x3W3TPKuRfa4S2Lf9l/MvA
	KybK6KpCXxxIMpKrH6BEJzdV8Paj1P09XBR9KyBEu5Kk1Uy6JmgaB8CEPcNS+5Qrv2MxSBz9iO2a5
	ixbpqN81fzGMsuv0p2pmSAAxC+mbKzWTMTTl9xMaOr3xWV3fUxfhTVwo4fkSmESVpBnSxwPybJePC
	6EiXzocaGw90svwFQiz++KWEl1kUkNYrMoTK7yz3y0lAr95AIl+RVvDKLdvyPiSUNwQYspNOaKMGZ
	3+p29yj5KeNPBe/KjW4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2AGX-00GdOG-2K;
	Thu, 25 May 2023 12:40:25 +0000
Received: from lahtoruutu.iki.fi ([2a0b:5c81:1c1::37])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2AGT-00GdMA-1C;
	Thu, 25 May 2023 12:40:22 +0000
Received: from hillosipuli.retiisi.eu (dkzdf0gkyyyyyyyyyyyyt-3.rev.dnainternet.fi [IPv6:2001:14ba:4506:4f15::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sailus)
	by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 4QRnh50mylz49Q1p;
	Thu, 25 May 2023 15:40:04 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu;
	t=1685018410;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ofi9rDKaOj5yyLfZwTQCQwt32Q4sEcICZNEgWEPwvYo=;
	b=DKPXrx/FbnfaMLqgt/vzuwj7wLQ8AXTIVFKzL4YpEKJWfA0kJUKCttjkxWzzwsNd+9klEm
	l/6ItAVlA2uD72MDBos9PRgOUMsxom8qH5LE5/U6YBrnqupwx7ZV8vnd+MiG//eeMrehbp
	csZNtNYSH0/Loy/4M4YM0JIQhX1dz4Q2S5Y/xZQcHnYn1aothuv/tMstqLButi5FQq4AOl
	oeV6l9/Ly1Ip9h42qJP5+BquyPkZZ7iuE0RyVRCKWCC3AXVCsyWxSUrEC0WKx0rLqlDejx
	zbyGccAw9MLbvsS2RmzUansBRfUzc9AoOJ4t45Pf87+4+8zfQg3L68IRhGyJ6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=lahtoruutu; t=1685018410;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ofi9rDKaOj5yyLfZwTQCQwt32Q4sEcICZNEgWEPwvYo=;
	b=pgVmOaEtw4vdoOZ8eaPmA7QgR+wrMMywJgDD60w0UAC7RxyzllFL534IMqFDtenK3XAljS
	m+vzDBMPa4uN11gUQVxXlmFoSIuc5cNzpwdIeRkcDwxfkOBmatYPGzOqQfC47v3uEYhwye
	mriwF2jEfs62hAYYdpqyuh/cZvO07x9niovAMH7lbln2DZRqvbca+ouVSryZHvumuyKzJ1
	b73+02DxuCtEpcT4KN53ZdZoYb4eF4s1N68JDvWQwCkEhSoH4O61Ix2pIgCw5baNCMnyqV
	N+uZ2bNbmJY65VddBTUKx7/mGXqYu4tzyC3fY8AbER5oRBa4YCbIVxAwqTYWLQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sailus smtp.mailfrom=sakari.ailus@iki.fi
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1685018410; a=rsa-sha256;
	cv=none;
	b=EQXr1FrsCQ8foHNMEHA9eY6b/C+Vv6N83O8oWbK948jenc4D+4e7/9RX4f3Dg9YE7JzWBe
	q9WEwFd9OheyWJNGkeIcGlZopb92MLZ2LRM09ycO/d64iCAR916Jst1hA9e6jUZeAcoMjj
	cgobMxqIZ02lc1wO08QVCfrUFb3irmbtvOCTuz/6fH1sWQff0nqktBLnBwp5nLkLmXhaDh
	E5FVqu/1dV//U4IGAsf17xs01k1YUL0VONCZoG2If4cFciNnNUEj0SEVkA6uv02jsGh4x1
	7uLYzOJ5xGWxPQBmzG6nwiCHtmInsVvEIb4y+GNv+D0RsC892mwiMfJ/Yhg30A==
Received: from valkosipuli.retiisi.eu (valkosipuli.localdomain [192.168.4.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by hillosipuli.retiisi.eu (Postfix) with ESMTPS id 6AAE6634C91;
	Thu, 25 May 2023 15:40:04 +0300 (EEST)
Date: Thu, 25 May 2023 15:40:04 +0300
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
Message-ID: <ZG9XJCD98VWjGjTN@valkosipuli.retiisi.eu>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <98a77653-ec58-56c4-9893-3b424f67c87e@linaro.org>
 <5afcec8b-b8f6-35b0-278a-5de185e4a7a2@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5afcec8b-b8f6-35b0-278a-5de185e4a7a2@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_054021_597960_E9305535 
X-CRM114-Status: GOOD (  19.00  )
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

SGkgSGFucywKCk9uIFNhdCwgTWF5IDEzLCAyMDIzIGF0IDExOjU3OjMzQU0gKzAyMDAsIEhhbnMg
VmVya3VpbCB3cm90ZToKPiBPbiAxMi8wNS8yMDIzIDE4OjM1LCBLcnp5c3p0b2YgS296bG93c2tp
IHdyb3RlOgo+ID4gT24gMTIvMDMvMjAyMyAxNDoxMiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90
ZToKPiA+PiBUaGUgZHJpdmVyIGNhbiBtYXRjaCBvbmx5IHZpYSB0aGUgRFQgdGFibGUgc28gdGhl
IHRhYmxlIHNob3VsZCBiZSBhbHdheXMKPiA+PiB1c2VkIGFuZCB0aGUgb2ZfbWF0Y2hfcHRyIGRv
ZXMgbm90IGhhdmUgYW55IHNlbnNlICh0aGlzIGFsc28gYWxsb3dzIEFDUEkKPiA+PiBtYXRjaGlu
ZyB2aWEgUFJQMDAwMSwgZXZlbiB0aG91Z2ggaXQgbWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUp
Lgo+ID4+Cj4gPj4gICBkcml2ZXJzL21lZGlhL2NlYy9pMmMvY2g3MzIyLmM6NTgzOjM0OiBlcnJv
cjog4oCYY2g3MzIyX29mX21hdGNo4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVu
dXNlZC1jb25zdC12YXJpYWJsZT1dCj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2Yg
S296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Cj4gPj4gLS0tCj4gPiAK
PiA+IEhhbnMsIFNha2FyaSwKPiA+IAo+ID4gQ2FuIHlvdSBwaWNrIHVwIHRoZSBwYXRjaHNldD8g
VGhlcmUgd2FzIHBvc2l0aXZlIGZlZWRiYWNrOgo+ID4gaHR0cHM6Ly9wYXRjaHdvcmsubGludXh0
di5vcmcvcHJvamVjdC9saW51eC1tZWRpYS9wYXRjaC8yMDIzMDMxMjEzMTMxOC4zNTExNzMtMS1r
cnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmcvCj4gPiAKPiA+IGJ1dCBpdCBzZWVtcyBpdCB3
YXMgbm90IGFwcGxpZWQuCj4gCj4gSSBzZWUgaXQgaXMgZGVsZWdhdGVkIHRvIFNha2FyaSBpbiBw
YXRjaHdvcmsgYW5kIG1hcmtlZCBVbmRlciBSZXZpZXcsIGJ1dCBJIGRvbid0Cj4gc2VlIGEgY29y
cmVzcG9uZGluZyBwdWxsIHJlcXVlc3QgZm9yIHRoaXMgc2VyaWVzLgo+IAo+IFNha2FyaSwgZGlk
IHNvbWV0aGluZyBnbyB3cm9uZz8KCkkgc3BvdHRlZCB0aGlzIGFzIEhhbnMgbm90aWZpZWQgbWUg
aW4gSVJDLCBJIHdhc24ndCBjYydkLiBBcG9sb2dpZXMgZm9yCnRoaXMgLS0tIEkgaW50ZW5kZWQg
dG8gdGFrZSB0aGVzZSBidXQgSSB0aGluayBJIG11c3QgaGF2ZSBtaXNzZWQgc29tZXRoaW5nCmlt
cG9ydGFudCBpbiB0aGUgcHJvY2Vzcy4gSSdsbCB0YWtlIHRoZW0gbm93LgoKVGhhbmtzLgoKLS0g
CktpbmQgcmVnYXJkcywKClNha2FyaSBBaWx1cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
