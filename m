Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0288C43334
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 07:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8YFcjSZnfhBn8ZRLrYsrZEEI4K0p/79QMWMbDguKMg=; b=EbyQ0vUX/YeiLp
	Oezk0PXOEzield2Woeh3HOivzisfW+1iiR2Z+weCHAcmoYN+2UXGZPNlQzhF5cfbDggDF54qfBDrT
	TAekWjmRUfnJK9rOmYOnXm53v6Sgy3su9xZls4qMtL2Qjs4/ayOlMFigoX2aFuoi/MaobE2Wj95Bd
	/W+cchQmUycLo0gr8bbMNaYQeFubqiAaDjlT7HsGNh5MBPIFBw7zaPRPbAFH4cJrrftGvUzLCadlP
	/hPLuZ1R7P4dQOdo9x8IEN9oYwsS1X9NpX/EjrWDPKJMWnj3k4em48Glt4iCTfg5eKN6WIDc2BydK
	fdvMrWJQXe+5i1YvlFgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7Aez-003JEm-Uf; Fri, 01 Jul 2022 07:01:49 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7Aeo-003JAu-Pf; Fri, 01 Jul 2022 07:01:40 +0000
Received: from [IPV6:2a01:e0a:120:3210:2a18:eef7:517c:3467] (unknown [IPv6:2a01:e0a:120:3210:2a18:eef7:517c:3467])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9C6E6660194C;
	Fri,  1 Jul 2022 08:01:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656658893;
	bh=NTiiCjHsVzQfkW49+IKSa3lND9VprClSAoCryBqkY7g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=G0GQiXo3kDQz4wF1/cVHjADGf4/k+qqNIGKSr5xznbhyQVJmTYgEA/RwSr8naWWoX
	 IKvvneS5gwgmXm3JatggW9poKEly4OItp7c2m/iTunYcjADZ686BqOrDkThAUCMlxO
	 N5gJ09i4bg3oX8Grrkr5gdtmxAnM9/ZDuUP9Um1JYH+zNUwAb3TYRDWwEJwtWYS1z2
	 FzXBUTgrhvfVHif3NcpOMwsjWtFMPVKOrR1Mkgh2R39kt1BYRpS5HynQvRD2SK/qlN
	 ZBXTlaItprH8/yy3AyqtiYim1GlQXo1WXypgTsPprbWg4xMuyaGOmLhOFOJDwh51MH
	 Cb1ZCMBK4ZVQg==
Message-ID: <16bb6fe6-0d95-d4d1-f7c7-f2ca61f7bdcc@collabora.com>
Date: Fri, 1 Jul 2022 09:01:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 6/7] media: hantro: imx8m: Enable 10bit decoding
Content-Language: en-US
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@gmail.com,
 samuel@sholland.org, nicolas.dufresne@collabora.com,
 andrzej.p@collabora.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, kernel@collabora.com
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
 <20220617115802.396442-7-benjamin.gaignard@collabora.com>
 <Yr3gDuzOXk58wTnd@eze-laptop>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <Yr3gDuzOXk58wTnd@eze-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_000138_989297_E5C0C1F8 
X-CRM114-Status: GOOD (  16.11  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDMwLzA2LzIwMjIgw6AgMTk6NDAsIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdMKgOgo+IEhp
IEJlbmphbWluLAo+Cj4gT24gRnJpLCBKdW4gMTcsIDIwMjIgYXQgMDE6NTg6MDFQTSArMDIwMCwg
QmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4+IEV4cG9zZSAxMGJpdCBwaXhlbCBmb3JtYXRzIHRv
IGVuYWJsZSAxMGJpdCBkZWNvZGluZyBpbiBJTVg4TSBTb0NzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPiBM
b29rcyBnb29kIHRvIG1lLgo+Cj4gUmV2aWV3ZWQtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVp
ZWxAdmFuZ3VhcmRpYXN1ci5jb20uYXI+Cj4KPiBIYXZlIHlvdSBjaGVja2VkIEZsdXN0ZXIgdGVz
dHMgcGFzc2VzcyB1c2luZyBib3RoIFAwMTAgYW5kIFAwMTBfNEw0Pwo+IEl0IHdvdWxkIGJlIGdv
b2QgdG8gZG91YmxlLWNoZWNrLgoKSXQgaXNuJ3QgcG9zc2libGUgdG8gY2hlY2sgUDAxMF80TDQg
d2l0aCBmbHVzdGVyIGJlY2F1c2UgR1N0cmVhbWVyCnZpZGVvY29udmVydCBlbGVtZW50IGRvZXNu
J3Qgc3VwcG9ydCB0aGlzIGZvcm1hdC4KClJlZ2FyZHMsCkJlbmphbWluCgo+Cj4gVGhhbmtzIGEg
bG90LAo+IEV6ZXF1aWVsCj4KPj4gLS0tCj4+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRy
by9pbXg4bV92cHVfaHcuYyB8IDI3ICsrKysrKysrKysrKysrKysrKysrKwo+PiAgIDEgZmlsZSBj
aGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL2lteDhtX3ZwdV9ody5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hh
bnRyby9pbXg4bV92cHVfaHcuYwo+PiBpbmRleCA3N2Y1NzRmZGZhNzcuLmIzOTAyMjhmZDNiNCAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9pbXg4bV92cHVfaHcu
Ywo+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2lteDhtX3ZwdV9ody5jCj4+
IEBAIC0xNjIsMTIgKzE2MiwzOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgaW14
OG1fdnB1X2cyX3Bvc3Rwcm9jX2ZtdHNbXSA9IHsKPj4gICAJCQkuc3RlcF9oZWlnaHQgPSBNQl9E
SU0sCj4+ICAgCQl9LAo+PiAgIAl9LAo+PiArCXsKPj4gKwkJLmZvdXJjYyA9IFY0TDJfUElYX0ZN
VF9QMDEwLAo+PiArCQkuY29kZWNfbW9kZSA9IEhBTlRST19NT0RFX05PTkUsCj4+ICsJCS5wb3N0
cHJvY2Vzc2VkID0gdHJ1ZSwKPj4gKwkJLmZybXNpemUgPSB7Cj4+ICsJCQkubWluX3dpZHRoID0g
Rk1UX01JTl9XSURUSCwKPj4gKwkJCS5tYXhfd2lkdGggPSBGTVRfVUhEX1dJRFRILAo+PiArCQkJ
LnN0ZXBfd2lkdGggPSBNQl9ESU0sCj4+ICsJCQkubWluX2hlaWdodCA9IEZNVF9NSU5fSEVJR0hU
LAo+PiArCQkJLm1heF9oZWlnaHQgPSBGTVRfVUhEX0hFSUdIVCwKPj4gKwkJCS5zdGVwX2hlaWdo
dCA9IE1CX0RJTSwKPj4gKwkJfSwKPj4gKwl9LAo+PiAgIH07Cj4+ICAgCj4+ICAgc3RhdGljIGNv
bnN0IHN0cnVjdCBoYW50cm9fZm10IGlteDhtX3ZwdV9nMl9kZWNfZm10c1tdID0gewo+PiAgIAl7
Cj4+ICAgCQkuZm91cmNjID0gVjRMMl9QSVhfRk1UX05WMTJfNEw0LAo+PiAgIAkJLmNvZGVjX21v
ZGUgPSBIQU5UUk9fTU9ERV9OT05FLAo+PiArCQkubWF0Y2hfZGVwdGggPSB0cnVlLAo+PiArCQku
ZnJtc2l6ZSA9IHsKPj4gKwkJCS5taW5fd2lkdGggPSBGTVRfTUlOX1dJRFRILAo+PiArCQkJLm1h
eF93aWR0aCA9IEZNVF9VSERfV0lEVEgsCj4+ICsJCQkuc3RlcF93aWR0aCA9IFRJTEVfTUJfRElN
LAo+PiArCQkJLm1pbl9oZWlnaHQgPSBGTVRfTUlOX0hFSUdIVCwKPj4gKwkJCS5tYXhfaGVpZ2h0
ID0gRk1UX1VIRF9IRUlHSFQsCj4+ICsJCQkuc3RlcF9oZWlnaHQgPSBUSUxFX01CX0RJTSwKPj4g
KwkJfSwKPj4gKwl9LAo+PiArCXsKPj4gKwkJLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9QMDEwXzRM
NCwKPj4gKwkJLmNvZGVjX21vZGUgPSBIQU5UUk9fTU9ERV9OT05FLAo+PiArCQkubWF0Y2hfZGVw
dGggPSB0cnVlLAo+PiAgIAkJLmZybXNpemUgPSB7Cj4+ICAgCQkJLm1pbl93aWR0aCA9IEZNVF9N
SU5fV0lEVEgsCj4+ICAgCQkJLm1heF93aWR0aCA9IEZNVF9VSERfV0lEVEgsCj4+IC0tIAo+PiAy
LjMyLjAKPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
