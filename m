Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94BF9E81E17
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Oct 2023 16:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W+S0xINFG41nP/lZaYlAz80NU9PYzI7lVSKotw2RXJc=; b=lsdAWzumlvCQ3c
	I4pLmZX/bCjdoVF3tJrJxVPEuJLP/mmdYDLBs+jPio5W3HWy/GMpKV6Jm+efJpFId3fK8Ty1sAgSZ
	6DV7q5dJ41QdqzKJHBIez5hM790yTpQsZbLwmkAxDuQUvkRw8c/pkYEAkY68lMP4FmyAWvor/CVm5
	HqyNoaLnf1Q6sg4n9HWNJ4zfXSAV+4/4Jj6opCanWf7lX00X4y6lpHHF6qD0HqH5qNrlr0ITQtKdn
	csWSnruMvk3M2b7mp78o6JWevTaFsvos8v77FGpku9gVvgQlBmv/J8KxL9prE4Crvirs2nHwoA7a3
	eP1VXxWVmdY4qDXeW2Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qonfV-006BZN-0g;
	Fri, 06 Oct 2023 16:27:13 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qonfR-006BXn-0v;
	Fri, 06 Oct 2023 16:27:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 34EC0CE255E;
	Fri,  6 Oct 2023 16:27:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DE25C433C8;
	Fri,  6 Oct 2023 16:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696609626;
	bh=SVGR/dgN3Ia2g/ceGF5AhDwZ0Sefym/pCcWKrkUlFKM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CITwWzMH2g2fBjiW+AXqbUZj0vPTcGj7f8bAVh7Oe5DcE97YDA2mheL32aZ+K5jNI
	 pKS6nY0cQ8JxKwOKttq6+T8BWP3EdbF5sjzFixfOJfCTM8e1OmLn7nn28iKhjxFqYQ
	 n2G9es+KaFUV+lPkfNJx3q3iAvihKyW6Fw0NCdOBEJKaxMImWeFxATrjN1swsvEMaZ
	 07UlLpaTtQKPU60RnfeNGam5IGSnqJQfE+yXfuPRlYdA4JjjHtrNir/sa6qSchQhj9
	 3qYXuB4ar4+AfHVgKOLQwLoMF81K7ilczQ8k9YrXGMb0mZxjNFAxBan8I31OL15+NH
	 Xv4RGfNvG8G2w==
Received: (nullmailer pid 4034213 invoked by uid 1000);
	Fri, 06 Oct 2023 16:27:03 -0000
Date: Fri, 6 Oct 2023 11:27:03 -0500
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: Hugues Fruchet <hugues.fruchet@foss.st.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, linux-stm32@st-md-mailman.stormreply.com, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH 3/7] dt-bindings: media: Document STM32MP25 VENC video
 encoder
Message-ID: <20231006162703.GA4030032-robh@kernel.org>
References: <20231004091552.3531659-1-hugues.fruchet@foss.st.com>
 <20231004091552.3531659-4-hugues.fruchet@foss.st.com>
 <CAHCN7xKrriTPaRMJ-r86cSgFDUUP1At08imLBr_zEP0g3fga_g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xKrriTPaRMJ-r86cSgFDUUP1At08imLBr_zEP0g3fga_g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_092709_497276_E78A9E19 
X-CRM114-Status: GOOD (  18.02  )
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

T24gV2VkLCBPY3QgMDQsIDIwMjMgYXQgMDY6NDE6MDlQTSAtMDUwMCwgQWRhbSBGb3JkIHdyb3Rl
Ogo+IE9uIFdlZCwgT2N0IDQsIDIwMjMgYXQgNDoxNuKAr0FNIEh1Z3VlcyBGcnVjaGV0Cj4gPGh1
Z3Vlcy5mcnVjaGV0QGZvc3Muc3QuY29tPiB3cm90ZToKPiA+Cj4gPiBBZGQgU1RNMzJNUDI1IFZF
TkMgdmlkZW8gZW5jb2RlciBiaW5kaW5ncy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBIdWd1ZXMg
RnJ1Y2hldCA8aHVndWVzLmZydWNoZXRAZm9zcy5zdC5jb20+Cj4gPiAtLS0KPiA+ICAuLi4vYmlu
ZGluZ3MvbWVkaWEvc3Qsc3RtMzJtcDI1LXZlbmMueWFtbCAgICAgfCA1NiArKysrKysrKysrKysr
KysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDU2IGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N0LHN0
bTMybXAyNS12ZW5jLnlhbWwKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL21lZGlhL3N0LHN0bTMybXAyNS12ZW5jLnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvc3Qsc3RtMzJtcDI1LXZlbmMueWFtbAo+ID4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uYzY5ZTBhMzRmNjc1
Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbWVkaWEvc3Qsc3RtMzJtcDI1LXZlbmMueWFtbAo+ID4gQEAgLTAsMCArMSw1NiBAQAo+
ID4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wIE9SIEJTRC0yLUNsYXVzZSkK
PiA+ICsKPiA+ICslWUFNTCAxLjIKPiA+ICstLS0KPiA+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVl
Lm9yZy9zY2hlbWFzL21lZGlhL3N0LHN0bTMybXAyNS12ZW5jLnlhbWwjCj4gCj4gQ2FuIHRoaXMg
ZHQtYmluZGluZyBiZSBtYWRlIG1vcmUgZ2VuZXJpYywgbGlrZSBzb21ldGhpbmcgbGlrZQo+IGhh
bnRyby1oMSBvciBWQzgwMDBOYW5vRT8KPiAKPiBJIHRoaW5rIHRoZXJlIHdpbGwgYmUgbW9yZSBi
b2FyZHMgdGhhdCBtYXkgaW5jb3Jwb3JhdGUgdGhlIEhhbnRyby1IMQo+IG9yIGEgVkM4MDAwIGlu
IHRoZSBmdXR1cmUsIGJlY2F1c2UgSSBkb24ndCB0aGluayB0aGlzIElQIGlzIHVuaXF1ZSB0bwo+
IHRoZSBTVE0zMk1QMjUuCgpVbmxlc3MgdGhlIHVuZGVybHlpbmcgSVAgaXMgd2VsbCBkb2N1bWVu
dGVkIChpLmUuIHB1YmxpYyksIHRoZW4gaXQncyAKa2luZCBvZiBwb2ludGxlc3MuIEV2ZXJ5b25l
IHdpbGwganVzdCBpbnZlbnQgdGhlaXIgb3duIG51bWJlcnMgYW5kIG5hbWVzIApvZiBjbG9ja3Ms
IHJlc2V0cywgZXRjLiB1bmxlc3Mgc29tZW9uZSBjYW4gZW5mb3JjZSBub3QgZG9pbmcgdGhhdC4K
ClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
