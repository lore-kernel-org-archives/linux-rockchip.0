Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E509FC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 08:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FOhd8BXeBLVRer+xjfqhE6nFLCHcCKM8zCeUX9ul0UE=; b=dMTdm/oNg7lzmix4ZPMsDU5+RI
	rMasfjIxSsKPrpDIDIPUFg19VzcMpMk5fFAc6jSPoeloZmxVYEMX8qg9zEB1msHmQlBqgcWZnUCWL
	1fSt/Oiy2hLeW8GMQbNPLmYvAEhU+nJcA5u7yDOk32e6D8XYzNldCqDgcs443sfj4ImuaAs4JdEr3
	a3v34GLdU60STsHL6yTddPHJb+IDgi/wvluG/qGYNo52Z42S56bPwywc6gqJGs/BOQCSLdIeLpmbH
	Enw85bMx4NcFlWglcr70k5WmfW6QZxYtu88nFQZ0o3oWHrC0wJeD0/rgGRNUdFLfOqJc+fQLWi2hh
	cIArTbhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peXIn-00BfPC-1n;
	Tue, 21 Mar 2023 08:25:05 +0000
Received: from wnew1-smtp.messagingengine.com ([64.147.123.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peXIi-00BfMd-1j;
	Tue, 21 Mar 2023 08:25:01 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailnew.west.internal (Postfix) with ESMTP id 724D62B0786B;
	Tue, 21 Mar 2023 04:24:56 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
  by compute6.internal (MEProxy); Tue, 21 Mar 2023 04:24:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1679387096; x=1679394296; bh=4iLq9Xa+73gwOb3UlDSdvfiv5ERn90/uFq1
	d82g+tiU=; b=rdHvg9X4s7IuEFLwOqkG2UcVTIQtMo8CBrROImB1m0gBuy+6tJz
	nvN25hQYXWBWd5TzOsNAIqUSBdYOZO1LNd4xgYDblKk1cO1IIxfJRNa0bvyvrazT
	xrQvrf7L3YhkORUS0fS9fSWLf4ZxEyyNkc5xzP30dy1zJYFIHDjhau2Elll//dY9
	nYo/KGN53Slm4iVLuTGVY/ucB82e0s6lj9GBrB0b2RBU4jKugBQlAzYVvGCyLsvK
	2ODAwwWJq1I2P/+tdewXjtdtX5Sv2Kgq2XB+/9KpDgnNksthZYFizt8nG6W7AYF2
	4O39Vbl93iCYb/8DvYwEw037Qaa+zZGkWCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1679387096; x=
	1679394296; bh=4iLq9Xa+73gwOb3UlDSdvfiv5ERn90/uFq1d82g+tiU=; b=B
	hyxCBqLaapFDZlJ/HOkIlV7PkLct4IPKtWpVJysyq05qIwjT91pxeaQ/1D+SxwNg
	H996FUt8AgY59kr/cndqRtmddhjjtBqoXd+P+jhcdCxSOu/AcOSw6g8fNIYCNDsH
	W2TAUc2dJQ/hHGo+zVZSt76m4iGOdKhAgczNI1j5EjJJv+CUm8A5bhWhSyuMRP36
	Mq06D0tf6/F6GGpwLfPyyKaN6v53AhqU3QLGMoIcZ/EBbIbwFFnWqLAL8j8iSvxA
	072iFPGtt/rf2otztkR9jlPOdcwq4gr+6Lh6n5qBRFUEV7UhjwNarXciqTCZXfe7
	FQNDgYBCRA7QP/+/ZPeYQ==
X-ME-Sender: <xms:1WkZZGXrpB-bCzWA0vrcEQrvJKNMHcgkvOtw4MMBqNSm0yE40GuuIA>
    <xme:1WkZZCkUx4PzphnKgVxbx2x-w-4-Ur27OODA8sdKYb1jL1Rq1Zlt7RBDtskyQ--4g
    afdIPi0VZx5axXnCOw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdefledguddujecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvufgtgfesthhqredtreerjeenucfhrhhomhepfdet
    rhhnugcuuegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrg
    htthgvrhhnpeffkedtffejkeeihedtffevtedvhfdvhfehfffgleekgffgveeftdefgeek
    vedvjeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivg
    eptdenucfrrghrrghmpehmrghilhhfrhhomheprghrnhgusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:1WkZZKbDDBO7G9zG6aM76fUgHKZuJRgiGx001mneKGt_bEavigDz5g>
    <xmx:1WkZZNXdISqhAYAQRAIDIM-Fw0V3uIrscbZkVvbBnHoPV5Coh5zkxQ>
    <xmx:1WkZZAmWWNDcJWKV2dZpqSHpIRhV5OGT-3qQH-5yKjBiwJ7lDCZHug>
    <xmx:2GkZZIhAHpgfZEhxZJ_CzumJNBOoMxu-GwEfC42g24b9XnBmRluH5M0OZTc>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id C764EB60086; Tue, 21 Mar 2023 04:24:53 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-221-gec32977366-fm-20230306.001-gec329773
Mime-Version: 1.0
Message-Id: <b9342459-efec-4e17-aee6-332ee17f44d2@app.fastmail.com>
In-Reply-To: <8b7816b0-1daa-1c49-6f9d-40769d228a39@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <20230312131318.351173-20-krzysztof.kozlowski@linaro.org>
 <86431868-488b-4a72-944b-231b6d0382b0@app.fastmail.com>
 <8b7816b0-1daa-1c49-6f9d-40769d228a39@linaro.org>
Date: Tue, 21 Mar 2023 09:24:33 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>,
 "Joe Tessler" <jrt@google.com>,
 "Hans Verkuil" <hverkuil-cisco@xs4all.nl>,
 "Mauro Carvalho Chehab" <mchehab@kernel.org>,
 "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Kevin Hilman" <khilman@baylibre.com>,
 "Jerome Brunet" <jbrunet@baylibre.com>,
 "Martin Blumenstingl" <martin.blumenstingl@googlemail.com>,
 "Thierry Reding" <thierry.reding@gmail.com>,
 "Jon Hunter" <jonathanh@nvidia.com>,
 "Manivannan Sadhasivam" <mani@kernel.org>,
 "Michael Tretter" <m.tretter@pengutronix.de>,
 "Pengutronix Kernel Team" <kernel@pengutronix.de>,
 "Jacopo Mondi" <jacopo+renesas@jmondi.org>,
 "Kieran Bingham" <kieran.bingham+renesas@ideasonboard.com>,
 "Laurent Pinchart" <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?=
 <niklas.soderlund+renesas@ragnatech.se>,
 "Rui Miguel Silva" <rmfrfs@gmail.com>,
 "Wenyou Yang" <wenyou.yang@microchip.com>,
 "Bin Liu" <bin.liu@mediatek.com>,
 "Matthias Brugger" <matthias.bgg@gmail.com>,
 "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>,
 "Minghsiu Tsai" <minghsiu.tsai@mediatek.com>,
 "Houlong Wei" <houlong.wei@mediatek.com>,
 "Andrew-CT Chen" <andrew-ct.chen@mediatek.com>,
 "Andrzej Pietrasiewicz" <andrzejtp2010@gmail.com>,
 "Jacek Anaszewski" <jacek.anaszewski@gmail.com>,
 "Sylwester Nawrocki" <s.nawrocki@samsung.com>,
 "Patrice Chotard" <patrice.chotard@foss.st.com>,
 "Yong Deng" <yong.deng@magewell.com>,
 "Paul Kocialkowski" <paul.kocialkowski@bootlin.com>,
 "Chen-Yu Tsai" <wens@csie.org>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>,
 "Samuel Holland" <samuel@sholland.org>,
 Prabhakar <prabhakar.csengg@gmail.com>,
 "Ezequiel Garcia" <ezequiel@vanguardiasur.com.ar>,
 "Philipp Zabel" <p.zabel@pengutronix.de>, "Sean Young" <sean@mess.org>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org,
 oushixiong <oushixiong@kylinos.cn>
Subject: Re: [PATCH 20/28] media: platform: jpeg: always reference OF data
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_012500_619152_3B5293CB 
X-CRM114-Status: GOOD (  10.20  )
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

T24gVHVlLCBNYXIgMjEsIDIwMjMsIGF0IDA5OjIxLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3Rl
Ogo+IE9uIDIxLzAzLzIwMjMgMDk6MTEsIEFybmQgQmVyZ21hbm4gd3JvdGU6Cj4+IE9uIFN1biwg
TWFyIDEyLCAyMDIzLCBhdCAxNDoxMywgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+IFRo
ZSBkcml2ZXIgY2FuIG1hdGNoIG9ubHkgdmlhIHRoZSBEVCB0YWJsZSBzbyB0aGUgdGFibGUgc2hv
dWxkIGJlIGFsd2F5cwo+Pj4gdXNlZCBhbmQgdGhlIG9mX21hdGNoX3B0ciBkb2VzIG5vdCBoYXZl
IGFueSBzZW5zZSAodGhpcyBhbHNvIGFsbG93cyBBQ1BJCj4+PiBtYXRjaGluZyB2aWEgUFJQMDAw
MSwgZXZlbiB0aG91Z2ggaXQgbWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUpLiAgVGhpcwo+Pj4g
YWxzbyBmaXhlcyAhQ09ORklHX09GIGVycm9yOgo+Pj4KPj4+ICAgZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9tZWRpYXRlay9qcGVnL210a19qcGVnX2NvcmUuYzoxODkwOjM4OiBlcnJvcjogCj4+PiDi
gJhtdGs4MTk1X2pwZWdkZWNfZHJ2ZGF0YeKAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCAKPj4+IFst
V2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogS3J6
eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgo+PiAKPj4g
SSBzZWUgbm93IHRoYXQgd2UgYm90aCBzdWJtaXR0ZWQgdGhlIHNhbWUgcGF0Y2gsIGJ1dCBub3cg
SGFucwo+Cj4gV2UgYXMgeW91IGFuZCBtZT8gSSBjYW5ub3QgZmluZCB5b3VyIHBhdGNoIG9uIGxv
cmU6Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLz9xPWYlM0Fhcm5kJTQwYXJuZGIuZGUK
ClRoaXMgaXMgdGhlIG9uZSB0aGF0IEkgc2VudCBiYWNrIGluIEphbnVhcnk6CgpodHRwczovL2xv
cmUua2VybmVsLm9yZy9hbGwvMjAyMzAxMTcxNzI2NDQuMzA0NDI2NS0xLWFybmRAa2VybmVsLm9y
ZwoKICAgICAgQXJuZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
