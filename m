Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D49E1C74A4B
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 18:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grv3QMkfaxtMj6hZ/YXqqG+n5yyyfJqT7XEd/qMFys0=; b=IaLfu5fnogFkaV
	3Hl/jLdqXUC7jsXl/GAdH/APiORWtCaeYbGMbT3dUiQKjobcWIVIY92VcQ16jfsOXJ2DmfaX/eTXq
	bMhOxHvhDbbdIFRSUcRgiXGpXZ6fk7oPUdzm/sKVYkfETf9aQEdTfJkHOUFbTAbEEwbkRIrjt9Q7c
	ufo1mM2aFHsb6Uk/cjYLFCZIptyPzaN2ANvryezC9CPdCawgCDYqUYH1LczK1CEZYYUrlQ2rcOkJb
	cxb/EyY7fKlk42XHMWhvhSx5USBSImFtGI9ofeGpZtRWQNaUGblaKBS7l8QxfJ6yMNCC28a0imd3k
	iBkQzGZwXQ5B8tNR6XxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbmmp-007HGi-Rv; Mon, 13 Mar 2023 18:20:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbmmc-007HDN-Of; Mon, 13 Mar 2023 18:20:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DDBAF6146B;
	Mon, 13 Mar 2023 18:20:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB93AC433D2;
	Mon, 13 Mar 2023 18:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678731629;
	bh=1k+17pceWuz4rSCcRjkRFIddbKW4ybClD+tgo7no39E=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=Ilby0VO8KhswP+sNBOB1Scx6AP/OGbMJswQgv6SUaOS/JihC1/IN66ytBUWIYi/L9
	 jg1hnG1M4HK7pzXvCisry0+UdXjEQeyE0jEmIR9wieYbq+9hIKVXZwAh6Rb0HN2Qos
	 qYwaGbi3GO1cwASGE05A+h2zZ4Dgm6K0whZdHye188J7bVITqcTeL6GjWu1bPC2RBB
	 3wBN+JNxQuUglraoSEBrhIaund88t9dkv2zpiK37WJHYkx0ahbQth9HmhERlb76Egu
	 fuudSeztn+3Pd45badX1HRQODgBEWpcEmqvXtYag7AYFMm6jcNNxOb1YwlY/us59uf
	 Nz+oFG/J9J1aw==
From: Mark Brown <broonie@kernel.org>
To: Kamal Dasu <kdasu.kdev@gmail.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>, 
 Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>, 
 Andi Shyti <andi@etezian.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Stephen Boyd <sboyd@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 01/16] spi: armada-3700: Drop of_match_ptr for
 ID table
Message-Id: <167873162468.102913.17330751630125213207.b4-ty@kernel.org>
Date: Mon, 13 Mar 2023 18:20:24 +0000
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-bd1bf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_112030_922465_A3A15EE6 
X-CRM114-Status: GOOD (  14.51  )
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

T24gRnJpLCAxMCBNYXIgMjAyMyAyMzoyODo0MiArMDEwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3
cm90ZToKPiBUaGUgZHJpdmVyIGNhbiBtYXRjaCBvbmx5IHZpYSB0aGUgRFQgdGFibGUgc28gdGhl
IHRhYmxlIHNob3VsZCBiZSBhbHdheXMKPiB1c2VkIGFuZCB0aGUgb2ZfbWF0Y2hfcHRyIGRvZXMg
bm90IGhhdmUgYW55IHNlbnNlICh0aGlzIGFsc28gYWxsb3dzIEFDUEkKPiBtYXRjaGluZyB2aWEg
UFJQMDAwMSwgZXZlbiB0aG91Z2ggaXQgaXMgbm90IHJlbGV2YW50IGhlcmUpLgo+IAo+ICAgZHJp
dmVycy9zcGkvc3BpLWFybWFkYS0zNzAwLmM6ODA3OjM0OiBlcnJvcjog4oCYYTM3MDBfc3BpX2R0
X2lkc+KAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFi
bGU9XQo+IAo+IAo+IFsuLi5dCgpBcHBsaWVkIHRvCgogICBodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9icm9vbmllL3NwaS5naXQgZm9yLW5leHQKClRoYW5r
cyEKClsxMi8xNl0gc3BpOiBweGEyeHg6IE1hcmsgT0YgcmVsYXRlZCBkYXRhIGFzIG1heWJlIHVu
dXNlZAogICAgICAgIGNvbW1pdDogZDk0ZGYyNWU4YjljOGRlZWZjNWQ3ZmNkMzQ0ZWI1ZDRiZDQx
Y2Y3YgpbMTMvMTZdIHNwaTogYmNtLXFzcGk6IE1hcmsgT0YgcmVsYXRlZCBkYXRhIGFzIG1heWJl
IHVudXNlZAogICAgICAgIGNvbW1pdDogNjM0MGZkZjJlMTNjNWYxZmYzYTk2MjJmMGNiM2I4ZTlj
Mzk1NWEzMQpbMTQvMTZdIHNwaTogc2gtbXNpb2Y6IE1hcmsgT0YgcmVsYXRlZCBkYXRhIGFzIG1h
eWJlIHVudXNlZAogICAgICAgIGNvbW1pdDogZDk0NmI2YjBlZDAxOTQ5YjFhMzg1NmUwMzQ2OTM2
MWZjOTE2ODMxOApbMTUvMTZdIHNwaTogc2MxOGlzNjAyOiBNYXJrIE9GIHJlbGF0ZWQgZGF0YSBh
cyBtYXliZSB1bnVzZWQKICAgICAgICBjb21taXQ6IDgzM2Y0MzMwODIzNDYwMGU5MzRlOWM2ZmE3
MGZkOGI3ZWViYzYzMmIKWzE2LzE2XSBzcGk6IHJzcGk6IE1hcmsgT0YgcmVsYXRlZCBkYXRhIGFz
IG1heWJlIHVudXNlZAogICAgICAgIGNvbW1pdDogZWRmYTk3MDM3MGE3NTljMmM2YTM4YjI4ODQ4
ODc5MzdiMWFlYTU1MgoKQWxsIGJlaW5nIHdlbGwgdGhpcyBtZWFucyB0aGF0IGl0IHdpbGwgYmUg
aW50ZWdyYXRlZCBpbnRvIHRoZSBsaW51eC1uZXh0CnRyZWUgKHVzdWFsbHkgc29tZXRpbWUgaW4g
dGhlIG5leHQgMjQgaG91cnMpIGFuZCBzZW50IHRvIExpbnVzIGR1cmluZwp0aGUgbmV4dCBtZXJn
ZSB3aW5kb3cgKG9yIHNvb25lciBpZiBpdCBpcyBhIGJ1ZyBmaXgpLCBob3dldmVyIGlmCnByb2Js
ZW1zIGFyZSBkaXNjb3ZlcmVkIHRoZW4gdGhlIHBhdGNoIG1heSBiZSBkcm9wcGVkIG9yIHJldmVy
dGVkLgoKWW91IG1heSBnZXQgZnVydGhlciBlLW1haWxzIHJlc3VsdGluZyBmcm9tIGF1dG9tYXRl
ZCBvciBtYW51YWwgdGVzdGluZwphbmQgcmV2aWV3IG9mIHRoZSB0cmVlLCBwbGVhc2UgZW5nYWdl
IHdpdGggcGVvcGxlIHJlcG9ydGluZyBwcm9ibGVtcyBhbmQKc2VuZCBmb2xsb3d1cCBwYXRjaGVz
IGFkZHJlc3NpbmcgYW55IGlzc3VlcyB0aGF0IGFyZSByZXBvcnRlZCBpZiBuZWVkZWQuCgpJZiBh
bnkgdXBkYXRlcyBhcmUgcmVxdWlyZWQgb3IgeW91IGFyZSBzdWJtaXR0aW5nIGZ1cnRoZXIgY2hh
bmdlcyB0aGV5CnNob3VsZCBiZSBzZW50IGFzIGluY3JlbWVudGFsIHVwZGF0ZXMgYWdhaW5zdCBj
dXJyZW50IGdpdCwgZXhpc3RpbmcKcGF0Y2hlcyB3aWxsIG5vdCBiZSByZXBsYWNlZC4KClBsZWFz
ZSBhZGQgYW55IHJlbGV2YW50IGxpc3RzIGFuZCBtYWludGFpbmVycyB0byB0aGUgQ0NzIHdoZW4g
cmVwbHlpbmcKdG8gdGhpcyBtYWlsLgoKVGhhbmtzLApNYXJrCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
