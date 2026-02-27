Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 184DFFEFB6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 17:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zP8d/9MUap/v4Ytvnxq5ySozDUIQUqaHtP7/Eri6DRo=; b=rsQ4TXSTFm4R25
	RHcm75KoRKLOwU7Ro09QdbTEj/nhrpKhix3WoPK1Ax0CRnLQ0fUkK8F+H0DzOX9pW4AOCH4ktmXFS
	oIrXy8eiXwrcSkw5tzRKZVNCGJSdCyetrVsxGw1fkiTPtM3zUgsylztcZRa62fDY0y8Fwo1sMwEFK
	J7vc0B/N7hgTcfh1ROtW1wMkpnHlBfMCRrAftW3snXtlIj6l0lspMBhdjeuQsUO8iNSWQ4RNrvnpz
	xJfBpPHod0XCNk8SQn33dLg0/Az0uLsyozoALlrUqAl+iMgJubRTavA9D/nNLxmPCw5MnEFRiDutR
	w8/pSs7Nzd0AADcNgVVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw1yB-00000008pWo-08cD;
	Fri, 27 Feb 2026 17:49:43 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw1y5-00000008pWA-38UF;
	Fri, 27 Feb 2026 17:49:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772214574;
	bh=SpE+cfNaP1TFrPzaUFYC0O9H8FoRYo0yR/OZFLjxALo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DVaKcqErMmK37/uJXaKthCMiluQqJM7uAJYCmJcrnFscZ4q+4KopoQJ+kelS7x7jw
	 3YaldOMsay/sDkvHIHQw6Iuqmw9XDH7+TMWuetAm5rW9kgUOntjSJE2nBUc85SDs81
	 0M88Z1csETPWYBba9DmoDjZReGL9fo7PGZRYiz6dJDQ4byM9jWuMTSyqdg6e/dBMYP
	 RpbzOwsS3E4AqG9TY+jcdS+m9Ha9taIcgFm8H084/xiGRq7zaKvANQEfCzgOOlvQlS
	 v62oXqNpUmHncmwHovx9ANNPB7XIxEo4rdRaFNSvqLqX/8KXty5Ccb72vCQAoXoRfb
	 yOGMqWMxIf7TQ==
Received: from [192.168.1.90] (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C587C17E03E5;
	Fri, 27 Feb 2026 18:49:33 +0100 (CET)
Message-ID: <86f4e4ee-cf49-4ebe-8cc6-0a9763ade36a@collabora.com>
Date: Fri, 27 Feb 2026 19:49:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] media: dt-bindings: rockchip,vdec: Add alternative
 reg-names order for RK35{76,88}
To: Conor Dooley <conor@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@kernel.org>, kernel@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Conor Dooley <conor.dooley@microchip.com>, linux-media@vger.kernel.org
References: <20260226-vdec-reg-order-rk3576-v4-0-b8d72dc75250@collabora.com>
 <20260226-vdec-reg-order-rk3576-v4-1-b8d72dc75250@collabora.com>
 <20260226-salute-threaten-a3eabb232396@spud>
 <429f3c7aa22eccffedbf8db6aa91bee3dd13814a.camel@collabora.com>
 <20260226-snide-foil-a05e1aa156a8@spud>
 <3d28c699e47f606bad46bb6447785badace37793.camel@collabora.com>
 <20260227-atonable-glamorous-920cfd832bc1@spud>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20260227-atonable-glamorous-920cfd832bc1@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_094937_936524_8FE9F395 
X-CRM114-Status: GOOD (  21.68  )
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

T24gMi8yNy8yNiA3OjE4IFBNLCBDb25vciBEb29sZXkgd3JvdGU6Cj4gT24gVGh1LCBGZWIgMjYs
IDIwMjYgYXQgMDQ6NTY6MzBQTSAtMDUwMCwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPj4gTGUg
amV1ZGkgMjYgZsOpdnJpZXIgMjAyNiDDoCAyMDo1OSArMDAwMCwgQ29ub3IgRG9vbGV5IGEgw6lj
cml0IDoKPj4+IE9uIFRodSwgRmViIDI2LCAyMDI2IGF0IDAyOjQ1OjExUE0gLTA1MDAsIE5pY29s
YXMgRHVmcmVzbmUgd3JvdGU6Cj4+Pj4gTGUgamV1ZGkgMjYgZsOpdnJpZXIgMjAyNiDDoCAxODo0
MyArMDAwMCwgQ29ub3IgRG9vbGV5IGEgw6ljcml0IDoKPiAKPj4+Pj4gRGVwcmVjYXRpbmcgdGhl
IG9yZGVyIGFsc28gbWFrZXMgbGl0dGxlIHNlbnNlIHRvIG1lLCBnaXZlbiB0aGF0IHNvbWUgb2YK
Pj4+Pj4gdGhlc2UgZGV2aWNlcyBvbmx5IGhhdmUgb25lIHJlZyBlbnRyeSwgd2hpY2ggYXMgZmFy
IGFzIEkgY2FuIHRlbGwgZnJvbQo+Pj4+PiBsb29raW5nIGF0IHRoZSBkcml2ZXIgKmlzKiB0aGUg
ImZ1bmN0aW9uIiByZWdpb24sIHNvIGl0IGNhbiBuZXZlciBiZQo+Pj4+PiBlbnRpcmVseSBkZXBy
ZWNhdGVkLgo+Pj4+Cj4+Pj4gV2hhdCBJJ2QgbGlrZSB0byBzZWUsIGlzIGEgYmluZGluZyBleHBy
ZXNzaW9uIHRoYXQgYmVoYXZlIGxpa2UgYSBzZXQsIG5vdCBhCj4+Pj4gbGlzdCwgYW5kIGxlYXZl
IHRoZSBvcmRlcmluZyBvcGVuLiBBcyBwZW9wbGUga2VlcCByZXBlYXRpbmcsIHRoZXJlIGlzIG5v
dGhpbmcgaW4KPj4+PiBhIGJpbmRpbmcgdGhhdCBhc3Npc3QgdG8gZGVmaW5lIHRoZSByaWdodCBv
cmRlcmluZyAoaXRzIG5vdCBhZGRyZXNzIG9yIGJhc2UKPj4+PiBhZGRyZXMgYXdhcmUpLiBUaGF0
IGJhc2ljYWxseSBtZWFucywgd2UgY2FuJ3QgYXMgcmV2aWV3ZXIgc2VlIHRoYXQgb3JkZXJpbmcg
aXMKPj4+PiBnb2luZyB0byBpbXBvc2luZyB1c2luZyBhIGJhc2UgYWRkcmVzcyBpbiB0aGUgdW5p
dCBuYW1lICh3aGljaCBpcyBhIGNvbnZlbmllbmNlLAo+Pj4+IG5vdCBhIHJ1bGUgSSBzdXBwb3Nl
KSB0aGF0IGRpZmZlciBmcm9tIHRoZSB2ZW5kb3IgZG9jdW1lbnRlZCBiYXNlIGFkZHJlc3MuCj4+
Pj4KPj4+PiBCeSBleHBsaWNpdGx5IHJlbW92aW5nIHRoZSBvcmRlcmluZyBpbiB0aGUgYmluZGlu
Zywgd2UgY3JlYXRlIGEgc3RyaWN0IHJ1bGUgdGhhdAo+Pj4+IGRyaXZlciBzaG91bGQgcmV0cmll
dmUgdGhpcyBieSBuYW1lLCBhbmQgbmV2ZXIgYXNzdW1lIHRoZSBvcmRlcmluZywgd2hpY2ggSQo+
Pj4+IHBlcnNvbmFsbHkgbGlrZS4KPj4+Pgo+Pj4+IHRob3VnaHRzID8KPj4+Cj4+PiBZZWFoLCB5
b3UgY2FuIGRvIHRoaXMsIGJ1dCB0byBhdm9pZCBwb3RlbnRpYWwgYnJlYWtzIHlvdSBoYXZlIHRv
IGRvIGl0Cj4+PiBmcm9tIHRoZSBzdGFydCwgbm90IGFmdGVyIHRoZSBmYWN0LiBQcm9iYWJseSB0
aGVyZSdzIGJpbmRpbmdzIHRoYXQgZ2V0Cj4+PiBhY2tlZCBldmVyeSBkYXkgdGhhdCBkbyBkbyB0
aGlzLiBFdmVuIHRoZSByZXRjb24gaXMgb2theSB0byBkbyB3aGVuCj4+PiByZWctbmFtZXMgaXMg
bWFuZGF0ZWQgYnkgdGhlIGJpbmRpbmcgYW5kIHRoZSB1c2VycyB1c2UgcmVnLW5hbWVzIGluIG15
Cj4+PiBvcGluaW9uLgo+Pgo+PiBJIHRoaW5rIGZyb20gdGhlIGFib3ZlIGFuYWx5c2VzLCBzaW5j
ZSB0aGUgdXNhZ2Ugb25seSBzdGFydHMgaW4gcmMxLCB3ZSBoYXZlCj4+IHJvb20gZm9yIGltcHJv
dmluZyBpdCBrbm93aW5nIHdlIGFyZW4ndCBjcmVhdGluZyBwcm9ibGVtIGZvciBhbnlvbmUuIE5v
dGUgdGhhdCBJCj4+IGhhdmUgbm8gaWRlYSB3aGF0IHRoZSBzeW50YXggaXMgdG8gImRvIHRoaXMi
LCBhbmQgSSBkb3VidCBlaXRoZXIgRGV0bGV2IG9yCj4+IENyaXN0aWFuIGhhdmUgYSBjbHVlLgo+
IAo+IEkgdGhpbmsgdGhpcyBpcyB0aGUgb25seSBiaXQgdGhhdCByZWFsbHkgc3RpbGwgbmVlZHMg
YSByZXBseSwgdGhpcyBjYW4KPiBiZSBzb2x2ZWQgYnkgYWRkaW5nIHJlZy1uYW1lcyBhcyAicmVx
dWlyZWQiIHRvIHRoZSBleGlzdGluZyBjb25kaXRpb25hbAo+IHBvcnRpb24gb2YgdGhlIGJpbmRp
bmcuIFRoZXJlJ3MgcHJvYmFibHkgaHVuZHJlZHMgb2YgZXhhbXBsZXMgaWYgb25lCj4gZG9lcyBh
IHNlYXJjaCBmb3IgInRoZW46XG4uKnJlcXVpcmVkOiIgdG8gdXNlIGEgYmFzaXMgZm9yIHRoZSBj
aGFuZ2UKPiBoZXJlLiBQcm9iYWJseSBzaG91bGQgYmUgYW4gaW5kZXBlbmRlbnQgY2hhbmdlLCBz
aW5jZSBpdCBpcyBuZWVkZWQgZXZlbgo+IHdpdGhvdXQgdGhlIHJlLW9yZGVyIGdpdmVuIHRoZSBi
dWcgSSBicm91Z2h0IHVwLgoKQXMgbWVudGlvbmVkIGluIG15IHByZXZpb3VzIHJlcGx5LCB0aGUg
YWN0dWFsIHByb2JsZW0gaXMgdGhhdCB0aGUgYmluZGluZyBoYXMKYmVlbiBhbHJlYWR5IHJlbGVh
c2VkLCBhbmQgSSdtIG5vdCBzdXJlIHdlIGNhbiBjaGFuZ2UgdGhpcyB3aXRob3V0IGJyZWFraW5n
IHRoZQpBQkkuCgpSZWdhcmRzLApDcmlzdGlhbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
