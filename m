Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16F6BE7719A
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jan 2025 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3C0OkyhM0oogFQDZePH2uehRbBn9DzIspyulfNW5kLQ=; b=W9tlqVa4rMbb9WG45HW4LyiVZn
	kkuRLnnYVvspnmJKQAm3dTYeqD0II+uVsyosGHsxvjgndG56pen7m0VFrwhUUYaMPrfEGgHc4izwR
	jqkwuNc3Gv2qFDAgP+pkQW4cbWwN9qW7yg9eBk48KHal90CVAbLzgS9NPJbTiy+KKCsKQRtqM+wy1
	XNHQOi+pUVAfkp1Pnn2X3TOgSb94rUt1gjplykzNBvQ4ZQLpgl1Ln5x8IQE0BfwL3UZqOZmcObwfe
	GcF4BZsRgujeU/xtbQGOz4CeQ9NBO7nXjOepJEcbASBXqrs8kHFportwFBwPjLtEji4fqhlji1fXi
	Rt/gU/EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXC7f-00000003zG0-3JYd;
	Mon, 13 Jan 2025 04:32:19 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXC6P-00000003z64-1JVb;
	Mon, 13 Jan 2025 04:31:02 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1736742659;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=07ejYXIKIrcD3/kHRGf9djGVZsaJOUEXa1BtdRMH9Dw=;
	b=HQMw8pc01xVq5qweIoyG+O9dX2sCtsMT7qubGQMankj+ewQmkUqfUteq8KagLgXr7fnQd6
	hX6ey6CdgF+DAzQezUXMy35u0pzDqfb0MjCtblTTnjSYd9WV8MzPN0FpZdekwZpgNNx+bZ
	1bM4jjH7prDU6UYUaOP9R7U3hEWg/4DzLN/UmeM2i6JQraf/kAw7i/3sQnlnf3H6FKV7XR
	NtA1pggxmGSz+I6CqJjnYi1balKCXFERMvNWL3/xbABDtQ3D0IkUxDghMChXL4cWEuiOoA
	U2u+v1od9oU7zB64+kyXInci43aYdfACpWZaGtNQDzm8Ti3glxnOZ3vhmYJAsA==
Date: Mon, 13 Jan 2025 05:30:59 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jonas
 Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki
 <naoki@radxa.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 0/3] Add support for Ariaboard Photonicat RK3568
In-Reply-To: <526e0c19-6495-4dcf-bf6b-b5bd62a7a631@classfun.cn>
References: <20250112073344.1976411-1-bigfoot@classfun.cn>
 <c520a0d829bbe26b9802f57f94f3957c@manjaro.org>
 <526e0c19-6495-4dcf-bf6b-b5bd62a7a631@classfun.cn>
Message-ID: <ff16c764821c3d010f49524e4a3a177b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_203101_638152_B6AC630C 
X-CRM114-Status: GOOD (  18.50  )
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

SGVsbG8gSnVuaGFvLAoKT24gMjAyNS0wMS0xMiAyMzoyNywgSnVuaGFvIFhpZSB3cm90ZToKPiBP
biAyMDI1LzEvMTIgMTY6NTAsIERyYWdhbiBTaW1pYyB3cm90ZToKPj4gT24gMjAyNS0wMS0xMiAw
ODozMywgSnVuaGFvIFhpZSB3cm90ZToKPj4+IEFkZCBkdHMgZm9yIEFyaWFib2FyZCBQaG90b25p
Y2F0IFJLMzU2OC4KPj4+IAo+Pj4gVGhpcyBzZXJpZXMgYnJpbmcgc3VwcG9ydCBmb3I6Cj4+PiAq
IERlYnVnIFVBUlQKPj4+ICogU0RJTyBRQ0E5Mzc3IFdpRmkgYW5kIEJsdWV0b290aAo+Pj4gKiBN
LjIgRS1LZXkgUENJZSBXaUZpIGFuZCBCbHVldG9vdGgKPj4+ICogTS4yIEItS2V5IFVTQiBNb2Rl
bSBXV0FOCj4+PiAqIEV0aGVybmV0IFdBTiBQb3J0Cj4+PiAqIE1pY3JvU0QgQ2FyZCBzbG90Cj4+
PiAqIGVNTUMKPj4+ICogSERNSSBPdXRwdXQKPj4+ICogTWFsaSBHUFUKPj4+ICogVVNCIFR5cGUt
QQo+Pj4gCj4+PiBDaGFuZ2VkIGZyb20gdjE6Cj4+PiAtIG1vdmUgc29tZSBnZW5lcmFsIG5vZGVz
IChmaXJtd2FyZSwgcmFtb29wcywgcmVib290LW1vZGUpIHRvIAo+Pj4gcmszNTZ4LmR0c2kKPj4g
Cj4+IFRoaXMgZW50cnkgZnJvbSB0aGUgY2hhbmdlbG9nIGNhdWdodCBteSBhdHRlbnRpb24sIHNv
IEkgdHJpZWQKPj4gdG8gZmluZCBvdXQgd2hhdCBleGFjdGx5IGhhcHBlbmVkIGJhY2sgdGhlbi7C
oCBUaG91Z2gsIGFmdGVyIGdvaW5nCj4+IHRocm91Z2ggdGhlIG1haWxpbmcgbGlzdCBhcmNoaXZl
LCBJIHN0aWxsIGRvbid0IHNlZSB3aGVyZSB0aGUKPj4gYXMtZGVzY3JpYmVkIGNoYW5nZSB0b29r
IHBsYWNlLCBzbyBwZXJoYXBzIHRoaXMgY2hhbmdlbG9nIGVudHJ5Cj4+IG5lZWRzIGFkanVzdGlu
Zy4KPiAKPiBDaHVrdW4gUGFuIHN1Z2dlc3RlZCBtb3ZpbmcgdGhlc2Ugbm9kZXMgdG8gcmszNTZ4
LmR0c2ksIGJ1dCBJIGhhdmUKPiBub3QgZG9uZSB0aGF0IHlldCBhbmQgc2ltcGx5IGRlbGV0ZWQg
dGhlbS4gSSB3aWxsIGZpeCB0aGUgY2hhbmdlbG9nLgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xrbWwvMjAyNDA5MDUwMzQwMDkuMjgxMjQtMS1hbWFkZXVzQGptdS5lZHUuY24vCj4gCj4gLSBy
ZW1vdmUgc29tZSBnZW5lcmFsIG5vZGVzIChmaXJtd2FyZSwgcmFtb29wcywgcmVib290LW1vZGUp
CgpPaCwgdGhhbmtzIGZvciB0aGUgbnVkZ2UsIEkganVzdCBhZGRlZCBhIFRPRE8gdG8gInNwcmlu
a2xlIiBhIGZldwoic3lzY29uLXJlYm9vdC1tb2RlIiBhbmQgInJhbW9vcHMiIG5vZGVzIG9udG8g
dGhlIHJlbGV2YW50IFNvQyBkdHNpCmZpbGVzLiAgVGhvc2Ugd2lsbCBiZSBoaWdobHkgdXNlZnVs
IHdoZW4gZGVidWdnaW5nIG15c3RlcmlvdXMgY3Jhc2hlcwphbmQgbG9ja3VwcyB0aGF0IGhhcHBl
biBvbiB2YXJpb3VzIGRldmljZXMgaW4gdGhlIGZpZWxkLgoKPj4+IC0gZ21hYzEgY2hhbmdlIHRv
IHBoeS1tb2RlIHJnbWlpLWlkCj4+PiAtIGNvcnJlY3RlZCBzb21lIHJlZ3VsYXRvciB0byBiZSBj
bG9zZXIgdG8gc2NoZW1hdGljcwo+Pj4gLSByZW5hbWUgcmszNTY4LWFyaWFib2FyZC1waG90b25p
Y2F0LmR0cyB0byByazM1NjgtcGhvdG9uaWNhdC5kdHMKPj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xrbWwvMjAyNDA5MDQxMTE0NTYuODcwODktMS1iaWdmb290QGNsYXNzZnVuLmNuLwo+Pj4g
Cj4+PiBDaGFuZ2VkIGZyb20gdjI6Cj4+PiAtIHJlbW92ZSB1bnVzZWQgaGVhZGVycwo+Pj4gLSBj
b3JyZWN0ZWQgc29tZSByZWd1bGF0b3IgdG8gYmUgY2xvc2VyIHRvIHNjaGVtYXRpY3MKPj4+IC0g
cmVtb3ZlIHVzYl9ob3N0MV9vaGNpLCB1c2JfaG9zdDFfZWhjaSwgdXNiMnBoeTFfaG9zdCB0aGF0
IGhhdmUgbm8gCj4+PiBjb25uZWN0aW9uCj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21s
LzIwMjQwOTA2MDQ1NzA2LjEwMDQ4MTMtMS1iaWdmb290QGNsYXNzZnVuLmNuLwo+Pj4gCj4+PiBD
aGFuZ2VkIGZyb20gdjM6Cj4+PiAtIGNvcnJlY3RlZCBzb21lIHJlZ3VsYXRvciB0byBiZSBjbG9z
ZXIgdG8gc2NoZW1hdGljcwo+Pj4gLSBjaGFuZ2VkIHRvIHVzaW5nIGNsazMya19vdXQxIGluIHhp
bjMyawo+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDI0MDkxMTEyMjgwOS4xNzg5
Nzc4LTItYmlnZm9vdEBjbGFzc2Z1bi5jbi8KPj4+IAo+Pj4gQ2hhbmdlZCBmcm9tIHY0Ogo+Pj4g
LSBjb3JyZWN0ZWQgc29tZSByZWd1bGF0b3IgdG8gYmUgY2xvc2VyIHRvIHNjaGVtYXRpY3MKPj4+
IC0gY29ycmVjdGVkIHNvbWUgbGFiZWwgdG8gbWF0Y2ggbm9kZSBuYW1lCj4+PiAtIHVzZSByZXNl
dHMgcHJvcHMgaW4gcGh5IG5vZGUgaW5zdGVhZCBkZXByZWNhdGVkIHNucHMscmVzZXQtZ3Bpbwo+
Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDI0MDkxNDE0NTU0OS44Nzk5MzYtMS1i
aWdmb290QGNsYXNzZnVuLmNuLwo+Pj4gCj4+PiBDaGFuZ2VkIGZyb20gdjU6Cj4+PiAtIHJlc29y
dCByZWd1bGF0b3Igbm9kZXMKPj4+IC0gcmVtb3ZlIGRyX21vZGUgZnJvbSB1c2JfaG9zdDFfeGhj
aQo+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDI0MTEwODAzMTg0Ny43MDA2MDYt
MS1iaWdmb290QGNsYXNzZnVuLmNuLwo+Pj4gCj4+PiBKdW5oYW8gWGllICgzKToKPj4+IMKgIGR0
LWJpbmRpbmdzOiB2ZW5kb3ItcHJlZml4ZXM6IEFkZCBwcmVmaXggZm9yIEFyaWFib2FyZAo+Pj4g
wqAgZHQtYmluZGluZ3M6IGFybTogcm9ja2NoaXA6IEFkZCBBcmlhYm9hcmQgUGhvdG9uaWNhdCBS
SzM1NjgKPj4+IMKgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgZHRzIGZvciBBcmlhYm9hcmQg
UGhvdG9uaWNhdCBSSzM1NjgKPj4+IAo+Pj4gwqAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
cm9ja2NoaXAueWFtbMKgwqDCoMKgIHzCoMKgIDUgKwo+Pj4gwqAuLi4vZGV2aWNldHJlZS9iaW5k
aW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbMKgIHzCoMKgIDIgKwo+Pj4gwqBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAxICsKPj4+IMKg
Li4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1waG90b25pY2F0LmR0c8KgwqAgfCA1OTkgCj4+
PiArKysrKysrKysrKysrKysrKysKPj4+IMKgNCBmaWxlcyBjaGFuZ2VkLCA2MDcgaW5zZXJ0aW9u
cygrKQo+Pj4gwqBjcmVhdGUgbW9kZSAxMDA2NDQgCj4+PiBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2OC1waG90b25pY2F0LmR0cwo+IAo+IFRoYW5rcyBmb3IgeW91ciByZXZpZXcs
IEkgd2lsbCBmaXggYWxsIHByb2JsZW1zIGluIG5leHQgdmVyc2lvbiEKClRoYW5rcywgYWx0aG91
Z2ggaXQgd2FzIGp1c3QgYSAibWlsZS1oaWdoIiByZXZpZXcgdGhhdCBjb3ZlcmVkCm9ubHkgYSBm
ZXcgdGhpbmdzIHRoYXQgY2F1Z2h0IG15IGF0dGVudGlvbi4gOikKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
