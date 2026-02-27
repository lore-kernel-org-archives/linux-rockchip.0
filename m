Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B7B2FEFB7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 19:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6h2gQtpjdNfMxFpOXC8fAPlzP2cwlsbqN0gFSJK1GSQ=; b=2Q5nlNS7fBmhFh
	zhnQKfISMrg6z3Zi5hUvdJth30oEa0gJaLERbMmKLcBJozvdMbGnWWw7h0fhTZ+iTf6y8jaFc6ZI8
	4D/thfVL9WddYV90kbS2HYo05XT7r64bm/koNcdcwAAlOWBU4fQpVpbuEcwQtXxbub4hDRXtwrwPT
	4PCGRq78+JEhTJhFfnQXFL4oHmtvKN9KlZNqR057UYTcgEOHpQHFkcLNhUJ1eAequBXzzaRBXD0AR
	Mq5BCvUjp+qYjlim+SnN5XTjfVYfTpWm8GkQqI9IYKgNTsOKyh6Jw4cn8n9RJaDhvc8b+z8E1re91
	RgveujEFMdLokStj5Skg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw3cI-000000091tw-0MMW;
	Fri, 27 Feb 2026 19:35:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw3cG-000000091tV-21xj;
	Fri, 27 Feb 2026 19:35:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Pd2l+JTyDm5qt4ZPcX8V0lrEq9wdUKoWy5MeIE+NzpQ=; b=cHRBAgM/KlAZr7BjsdGkHsIrMC
	T4htGQPLsNzcEvmdnClPDGIMmmBMvZUSwElQBTtLTJ9iONgGpswg91N5oP+tg0/USJXWHuFYa2Qq7
	d1JxkFr5GSkJ4GX2yuK+U+m9Zn4IVJAglyooWQb6ydZRzGJvJlXqSKpZm+xdAG+raxBXdEAX3k5XH
	PFRooQRAwHtQdNfX18g5Av05jVWf6HsadB4cS8CMMMwwuM6/qVuFeJw6Lp+GATPRlBXvd+o6dTa0Q
	qkiz0Rd11QuinS4DaIswbV8ir6Mvw4vaNdycyg+d1JMQKWoqO5Z9Xl6PEZeANFVepMCwaCr3NO+rj
	QgN/m2wQ==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw3cD-0000000Dmim-1vl6;
	Fri, 27 Feb 2026 19:35:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772220903;
	bh=Sg54OHilyAiTowHFweIO6TJCUr6DyO95/X7Kg56nUng=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=SNHJkD4qc1tUROyxSAmioCvtFHdr+ptpOsexJkTIm6QkjAfpJ2L15X1kLH+fGLs5g
	 7ndaE5+jAT+zJsOJOvlTe8YovpNQMVAzjC5J95Jhr+2oUXzydiKA4ejk2u39Y0039t
	 XUXJfi32zXzLQzrJpu+Sj1ekJg2493LqPBx+wLIl0LempNsx8HJMjMvCUA8UsAASJK
	 2X3k1aroMu5TApfnb+oh+lsqPgeNM3JKm5wjUk4rPn6SQJJf88gzRejBHyc/J8GkZ+
	 kV7mS0xFGj/ejS3CxAxVOBm8KeVwRTLkE9oEo78yTpAOQaj+xW7h4Mn6UNfMHg9pSe
	 Oh2jitFB7ccNg==
Received: from [192.168.1.90] (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6C39217E03E5;
	Fri, 27 Feb 2026 20:35:02 +0100 (CET)
Message-ID: <9cf5677d-8b90-4ccc-9b70-3e05a5a4a1c7@collabora.com>
Date: Fri, 27 Feb 2026 21:35:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] media: dt-bindings: rockchip,vdec: Add alternative
 reg-names order for RK35{76,88}
To: Conor Dooley <conor@kernel.org>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
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
 <86f4e4ee-cf49-4ebe-8cc6-0a9763ade36a@collabora.com>
 <20260227-wreckage-cozily-200175c6efce@spud>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20260227-wreckage-cozily-200175c6efce@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_193509_697553_E4AD964A 
X-CRM114-Status: GOOD (  28.35  )
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

T24gMi8yNy8yNiA4OjEwIFBNLCBDb25vciBEb29sZXkgd3JvdGU6Cj4gT24gRnJpLCBGZWIgMjcs
IDIwMjYgYXQgMDc6NDk6MzNQTSArMDIwMCwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIHdyb3RlOgo+PiBP
biAyLzI3LzI2IDc6MTggUE0sIENvbm9yIERvb2xleSB3cm90ZToKPj4+IE9uIFRodSwgRmViIDI2
LCAyMDI2IGF0IDA0OjU2OjMwUE0gLTA1MDAsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4+Pj4g
TGUgamV1ZGkgMjYgZsOpdnJpZXIgMjAyNiDDoCAyMDo1OSArMDAwMCwgQ29ub3IgRG9vbGV5IGEg
w6ljcml0IDoKPj4+Pj4gT24gVGh1LCBGZWIgMjYsIDIwMjYgYXQgMDI6NDU6MTFQTSAtMDUwMCwg
Tmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPj4+Pj4+IExlIGpldWRpIDI2IGbDqXZyaWVyIDIwMjYg
w6AgMTg6NDMgKzAwMDAsIENvbm9yIERvb2xleSBhIMOpY3JpdCA6Cj4+Pgo+Pj4+Pj4+IERlcHJl
Y2F0aW5nIHRoZSBvcmRlciBhbHNvIG1ha2VzIGxpdHRsZSBzZW5zZSB0byBtZSwgZ2l2ZW4gdGhh
dCBzb21lIG9mCj4+Pj4+Pj4gdGhlc2UgZGV2aWNlcyBvbmx5IGhhdmUgb25lIHJlZyBlbnRyeSwg
d2hpY2ggYXMgZmFyIGFzIEkgY2FuIHRlbGwgZnJvbQo+Pj4+Pj4+IGxvb2tpbmcgYXQgdGhlIGRy
aXZlciAqaXMqIHRoZSAiZnVuY3Rpb24iIHJlZ2lvbiwgc28gaXQgY2FuIG5ldmVyIGJlCj4+Pj4+
Pj4gZW50aXJlbHkgZGVwcmVjYXRlZC4KPj4+Pj4+Cj4+Pj4+PiBXaGF0IEknZCBsaWtlIHRvIHNl
ZSwgaXMgYSBiaW5kaW5nIGV4cHJlc3Npb24gdGhhdCBiZWhhdmUgbGlrZSBhIHNldCwgbm90IGEK
Pj4+Pj4+IGxpc3QsIGFuZCBsZWF2ZSB0aGUgb3JkZXJpbmcgb3Blbi4gQXMgcGVvcGxlIGtlZXAg
cmVwZWF0aW5nLCB0aGVyZSBpcyBub3RoaW5nIGluCj4+Pj4+PiBhIGJpbmRpbmcgdGhhdCBhc3Np
c3QgdG8gZGVmaW5lIHRoZSByaWdodCBvcmRlcmluZyAoaXRzIG5vdCBhZGRyZXNzIG9yIGJhc2UK
Pj4+Pj4+IGFkZHJlcyBhd2FyZSkuIFRoYXQgYmFzaWNhbGx5IG1lYW5zLCB3ZSBjYW4ndCBhcyBy
ZXZpZXdlciBzZWUgdGhhdCBvcmRlcmluZyBpcwo+Pj4+Pj4gZ29pbmcgdG8gaW1wb3NpbmcgdXNp
bmcgYSBiYXNlIGFkZHJlc3MgaW4gdGhlIHVuaXQgbmFtZSAod2hpY2ggaXMgYSBjb252ZW5pZW5j
ZSwKPj4+Pj4+IG5vdCBhIHJ1bGUgSSBzdXBwb3NlKSB0aGF0IGRpZmZlciBmcm9tIHRoZSB2ZW5k
b3IgZG9jdW1lbnRlZCBiYXNlIGFkZHJlc3MuCj4+Pj4+Pgo+Pj4+Pj4gQnkgZXhwbGljaXRseSBy
ZW1vdmluZyB0aGUgb3JkZXJpbmcgaW4gdGhlIGJpbmRpbmcsIHdlIGNyZWF0ZSBhIHN0cmljdCBy
dWxlIHRoYXQKPj4+Pj4+IGRyaXZlciBzaG91bGQgcmV0cmlldmUgdGhpcyBieSBuYW1lLCBhbmQg
bmV2ZXIgYXNzdW1lIHRoZSBvcmRlcmluZywgd2hpY2ggSQo+Pj4+Pj4gcGVyc29uYWxseSBsaWtl
Lgo+Pj4+Pj4KPj4+Pj4+IHRob3VnaHRzID8KPj4+Pj4KPj4+Pj4gWWVhaCwgeW91IGNhbiBkbyB0
aGlzLCBidXQgdG8gYXZvaWQgcG90ZW50aWFsIGJyZWFrcyB5b3UgaGF2ZSB0byBkbyBpdAo+Pj4+
PiBmcm9tIHRoZSBzdGFydCwgbm90IGFmdGVyIHRoZSBmYWN0LiBQcm9iYWJseSB0aGVyZSdzIGJp
bmRpbmdzIHRoYXQgZ2V0Cj4+Pj4+IGFja2VkIGV2ZXJ5IGRheSB0aGF0IGRvIGRvIHRoaXMuIEV2
ZW4gdGhlIHJldGNvbiBpcyBva2F5IHRvIGRvIHdoZW4KPj4+Pj4gcmVnLW5hbWVzIGlzIG1hbmRh
dGVkIGJ5IHRoZSBiaW5kaW5nIGFuZCB0aGUgdXNlcnMgdXNlIHJlZy1uYW1lcyBpbiBteQo+Pj4+
PiBvcGluaW9uLgo+Pj4+Cj4+Pj4gSSB0aGluayBmcm9tIHRoZSBhYm92ZSBhbmFseXNlcywgc2lu
Y2UgdGhlIHVzYWdlIG9ubHkgc3RhcnRzIGluIHJjMSwgd2UgaGF2ZQo+Pj4+IHJvb20gZm9yIGlt
cHJvdmluZyBpdCBrbm93aW5nIHdlIGFyZW4ndCBjcmVhdGluZyBwcm9ibGVtIGZvciBhbnlvbmUu
IE5vdGUgdGhhdCBJCj4+Pj4gaGF2ZSBubyBpZGVhIHdoYXQgdGhlIHN5bnRheCBpcyB0byAiZG8g
dGhpcyIsIGFuZCBJIGRvdWJ0IGVpdGhlciBEZXRsZXYgb3IKPj4+PiBDcmlzdGlhbiBoYXZlIGEg
Y2x1ZS4KPj4+Cj4+PiBJIHRoaW5rIHRoaXMgaXMgdGhlIG9ubHkgYml0IHRoYXQgcmVhbGx5IHN0
aWxsIG5lZWRzIGEgcmVwbHksIHRoaXMgY2FuCj4+PiBiZSBzb2x2ZWQgYnkgYWRkaW5nIHJlZy1u
YW1lcyBhcyAicmVxdWlyZWQiIHRvIHRoZSBleGlzdGluZyBjb25kaXRpb25hbAo+Pj4gcG9ydGlv
biBvZiB0aGUgYmluZGluZy4gVGhlcmUncyBwcm9iYWJseSBodW5kcmVkcyBvZiBleGFtcGxlcyBp
ZiBvbmUKPj4+IGRvZXMgYSBzZWFyY2ggZm9yICJ0aGVuOlxuLipyZXF1aXJlZDoiIHRvIHVzZSBh
IGJhc2lzIGZvciB0aGUgY2hhbmdlCj4+PiBoZXJlLiBQcm9iYWJseSBzaG91bGQgYmUgYW4gaW5k
ZXBlbmRlbnQgY2hhbmdlLCBzaW5jZSBpdCBpcyBuZWVkZWQgZXZlbgo+Pj4gd2l0aG91dCB0aGUg
cmUtb3JkZXIgZ2l2ZW4gdGhlIGJ1ZyBJIGJyb3VnaHQgdXAuCj4+Cj4+IEFzIG1lbnRpb25lZCBp
biBteSBwcmV2aW91cyByZXBseSwgdGhlIGFjdHVhbCBwcm9ibGVtIGlzIHRoYXQgdGhlIGJpbmRp
bmcgaGFzCj4+IGJlZW4gYWxyZWFkeSByZWxlYXNlZCwgYW5kIEknbSBub3Qgc3VyZSB3ZSBjYW4g
Y2hhbmdlIHRoaXMgd2l0aG91dCBicmVha2luZyB0aGUKPj4gQUJJLgogClsuLi5dCgo+IFNvIHll
cywgd2hpbGUgd2hhdCBJIHByb3Bvc2UgaXMgYW4gQUJJIGJyZWFrLCB0aGUgZHJpdmVyIGN1cnJl
bnRseQo+IGV4cGVjdHMgcmVnLW5hbWVzIHRvIGJlIG1hbmRhdG9yeSBmb3IgdGhlIHJrMzU4OC12
ZGVjLiBBZGRpdGlvbmFsbHksIG5ldwo+IHJlcXVpcmVkIHByb3BlcnRpZXMgYXJlIG9ubHkgcmVh
bGx5IGEgbWVhbmluZ2Z1bCBBQkkgYnJlYWsgaWYgdGhlIGRyaXZlcgo+IGlzIGNoYW5nZWQgdG8g
cmVxdWlyZWQgdGhlbSwgc2luY2UgdGhhdCB3b3VsZCByZW5kZXIgb2xkIGRldmljZXRyZWVzCj4g
bm9uLWZ1bmN0aW9uYWwuIFRoZSBkcml2ZXIgaW4gcXVlc3Rpb24gYWxyZWFkeSByZXF1aXJlcyB0
aGVtLCBzbyB0aGF0J3MKPiBwcmV0dHkgbW9vdCEgCgpJIHRoaW5rIHRoYXQncyBwcmVjaXNlbHkg
dGhlIGluZm9ybWF0aW9uIEkgd2FzIGxvb2tpbmcgZm9yLCBpLmUuIGJyZWFraW5nIEFCSQppbiB0
aGlzIGNhc2UgaXMgZnVsbHkganVzdGlmaWVkIHNpbmNlIHdlIGNhbm5vdCByZWFsbHkgZml4IHRo
ZSBkcml2ZXIuICBJIG1lYW4gCndlIHdvdWxkIGhhdmUgdGltZSB0byBkbyB0aGlzLCBzaW5jZSB0
aGUgcmszNTg4IHJlbGF0ZWQgY2hhbmdlcyBsYW5kZWQgaW4KdjcuMC1yYzEsIGJ1dCBpdCdzIG5v
dCBmZWFzaWJsZSB0byBhY2NvbW1vZGF0ZSB0byB0aGUgY3VycmVudCBzdGF0ZSBvZiB0aGUKYmlu
ZGluZywgYXMgeW91IGNsZWFybHkgcG9pbnRlZCBvdXQuCgo+IEhvcGVmdWxseSBJJ3ZlIG1hZGUg
bXkgcG9pbnQgYWJvdXQgcmVnLW5hbWVzIGJlaW5nIG1hbmRhdG9yeSB0aGlzIHRpbWUKPiBhcm91
bmQ/CgpUb3RhbGx5LCB0aGFua3MgZm9yIHlvdXIgdGltZSBhbmQgc29ycnkgZm9yIHRoZSBjb25m
dXNpb24gYXJvdW5kIHRoZSB0b3BpYyEKCk15IG9ubHkgcXVlc3Rpb24gbm93IGlzIGhvdyBzaG91
bGQgd2UgcHJvY2VlZCB3aXRoIHRoaXMgcGFydGljdWxhciBjaGFuZ2UgLSBJJ2QKaGFuZGxlIGl0
IGluIGEgZGVkaWNhdGVkIHBhdGNoLCBwcmVjZWRpbmcgdGhpcyBvbmUuCgpSZWdhcmRzLApDcmlz
dGlhbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
