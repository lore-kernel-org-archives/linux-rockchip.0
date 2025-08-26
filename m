Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC885CA0EFA
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Aug 2025 14:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9KgPucs7TOwGmov8dQ32wlwJg4xl58Duy+a6qC9dFU=; b=WW8vJcLpGEUSsb
	tAsLhyADM8J5nb9x5LDPUF3RUqMHAQ4K0u3V0mGkJdUsFHKq6naqFbQGwvVrppN9S1KsCGNMXqCeZ
	5OamSkLy0JcsLQYDjYpS5bRsDrVJ7INYrYBl248DJDQIsA2SSV0mqdfTaC7J1QX7QlEtC/mu7jQyb
	DQLAsYj4x8W2uhoQYQQYYlP8O1j4vR0lmSuUMenoEntPq+BmDY/YvClNzHIZg7gA17gaj/T+SZtUo
	W+vXg093JZ6paOHBKb1gSoRKS4cHxF4cZnwPdAmcobnhzUclZuG/hsBlxa/WIscHYoVQEMUcko1pk
	CNmOomE3M9dMFReolziQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqv9G-0000000CMLQ-0o0t;
	Tue, 26 Aug 2025 14:59:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqv7f-0000000CM0u-0VrV;
	Tue, 26 Aug 2025 14:58:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=iTrfIIo2NpXSs0VUQcS4tLNwuwhXMeQFQWFcRoLCwVY=; b=D2XHvLjjqX3PhhxJH6SySYYqgB
	1O9/+hsF1mXfum+scpQEW7fkvGngUSNtC2AEmRJiYeC+WkkdQF/J7Ju63n5qKhNqHRtj/b16BGD5P
	7B0427PHgn6FBjyUm43hrKpg9xaPP5nj26FNASxX1bI8hG+SKRfprtXLUJ+SmytMLdUlYV/hmMCkX
	UfESNgDDTa/reqn3EDauXyxzV6Iv7xUqbKnzpfN9ol/OR7LyeciRfLzh3XUxhfLj9iOoWy6viAd5w
	G4jnOyHlSvK5YiNw3aoPPKr7bNmUtRzjauWPtBP+WEnF/zk1Y5+oFAb4dWB9SNoCiXJ1tRAPTErGt
	qvk0NCpQ==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uqv7C-0000eD-0n; Tue, 26 Aug 2025 16:57:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Hsun Lai <i@chainsx.cn>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Fred Bloggs <f.blogs@napier.co.nz>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v2 0/2] Add support for 100ASK DShanPi A1
Date: Tue, 26 Aug 2025 16:57:37 +0200
Message-ID: <12479023.CDJkKcVGEf@phil>
In-Reply-To: <175621649670.159455.15557432322730951360.robh@kernel.org>
References: <20250826030818.3485927-1-i@chainsx.cn>
 <175621649670.159455.15557432322730951360.robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_075807_179548_C74435F1 
X-CRM114-Status: GOOD (  25.97  )
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

QW0gRGllbnN0YWcsIDI2LiBBdWd1c3QgMjAyNSwgMTU6NTY6NDMgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBSb2IgSGVycmluZyAoQXJtKToKPiAKPiBPbiBUdWUsIDI2IEF1
ZyAyMDI1IDExOjA4OjE1ICswODAwLCBIc3VuIExhaSB3cm90ZToKPiA+IFRoaXMgc2VyaWVzIGFk
ZCBzdXBwb3J0IGZvciAxMDBBU0sgRFNoYW5QaSBBMS4KPiA+IAo+ID4gSW5mbyBvZiBkZXZpY2Ug
Y2FuIGJlIGZvdW5kIGF0Ogo+ID4gaHR0cHM6Ly93aWtpLmRzaGFucGkub3JnL2VuL2RvY3MvRHNo
YW5QaS1BMS9pbnRyby8KPiA+IAo+ID4gQ2hhbmdlcyBpbiB2MjoKPiA+IC0gRGVsZXRlIHRoZSBw
d20gaW5jbHVkZSBmaWxlIChDaHVrdW4gUGFuLCB2MSkKPiA+IC0gRml4IHZjYzN2M19wY2llIGdw
aW9zIChDaHVrdW4gUGFuLCB2MSkKPiA+IC0gQWRqdXN0IHRoZSBvcmRlciBvZiBzb21lIG5vZGVz
IChDaHVrdW4gUGFuLCB2MSkKPiA+IC0gRml4IHNkbW1jIChDaHVrdW4gUGFuLCB2MSkKPiA+IC0g
QWRkIHBoeS1zdXBwbHkgZm9yIHUycGh5MF9vdGcgKENodWt1biBQYW4sIHYxKQo+ID4gCj4gPiBD
aGFuZ2VzIGluIHYxOgo+ID4gLSBBZGQgc3VwcG9ydCBmb3IgMTAwQVNLIERTaGFuUGkgQTEKPiA+
IAo+ID4gSHN1biBMYWkgKDIpOgo+ID4gICBkdC1iaW5kaW5nczogYXJtOiByb2NrY2hpcDogQWRk
IDEwMEFTSyBEU2hhblBpIEExCj4gPiAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgRFRzIGZv
ciAxMDBBU0sgRFNoYW5QaSBBMQo+ID4gCj4gPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJt
L3JvY2tjaGlwLnlhbWwgICAgIHwgICA1ICsKPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL01ha2VmaWxlICAgICAgICAgfCAgIDEgKwo+ID4gIC4uLi9kdHMvcm9ja2NoaXAvcmszNTc2
LTEwMGFzay1kc2hhbnBpLWExLmR0cyB8IDgzOCArKysrKysrKysrKysrKysrKysKPiA+ICAzIGZp
bGVzIGNoYW5nZWQsIDg0NCBpbnNlcnRpb25zKCspCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LTEwMGFzay1kc2hhbnBpLWExLmR0cwo+
ID4gCj4gPiAtLQo+ID4gMi4zNC4xCj4gPiAKPiA+IAo+ID4gCj4gCj4gCj4gTXkgYm90IGZvdW5k
IG5ldyBEVEIgd2FybmluZ3Mgb24gdGhlIC5kdHMgZmlsZXMgYWRkZWQgb3IgY2hhbmdlZCBpbiB0
aGlzCj4gc2VyaWVzLgo+IAo+IFNvbWUgd2FybmluZ3MgbWF5IGJlIGZyb20gYW4gZXhpc3Rpbmcg
U29DIC5kdHNpLiBPciBwZXJoYXBzIHRoZSB3YXJuaW5ncwo+IGFyZSBmaXhlZCBieSBhbm90aGVy
IHNlcmllcy4gVWx0aW1hdGVseSwgaXQgaXMgdXAgdG8gdGhlIHBsYXRmb3JtCj4gbWFpbnRhaW5l
ciB3aGV0aGVyIHRoZXNlIHdhcm5pbmdzIGFyZSBhY2NlcHRhYmxlIG9yIG5vdC4gTm8gbmVlZCB0
byByZXBseQo+IHVubGVzcyB0aGUgcGxhdGZvcm0gbWFpbnRhaW5lciBoYXMgY29tbWVudHMuCj4g
Cj4gSWYgeW91IGFscmVhZHkgcmFuIERUIGNoZWNrcyBhbmQgZGlkbid0IHNlZSB0aGVzZSBlcnJv
cihzKSwgdGhlbgo+IG1ha2Ugc3VyZSBkdC1zY2hlbWEgaXMgdXAgdG8gZGF0ZToKPiAKPiAgIHBp
cDMgaW5zdGFsbCBkdHNjaGVtYSAtLXVwZ3JhZGUKPiAKPiAKPiBUaGlzIHBhdGNoIHNlcmllcyB3
YXMgYXBwbGllZCAodXNpbmcgYjQpIHRvIGJhc2U6Cj4gIEJhc2U6IGF0dGVtcHRpbmcgdG8gZ3Vl
c3MgYmFzZS1jb21taXQuLi4KPiAgQmFzZTogdGFncy92Ni4xNy1yYzEtMjItZzdkMTFiOGMyNjBl
YSAoZXhhY3QgbWF0Y2gpCj4gCj4gSWYgdGhpcyBpcyBub3QgdGhlIGNvcnJlY3QgYmFzZSwgcGxl
YXNlIGFkZCAnYmFzZS1jb21taXQnIHRhZwo+IChvciB1c2UgYjQgd2hpY2ggZG9lcyB0aGlzIGF1
dG9tYXRpY2FsbHkpCj4gCj4gTmV3IHdhcm5pbmdzIHJ1bm5pbmcgJ21ha2UgQ0hFQ0tfRFRCUz15
IGZvciBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwLycgZm9yIDIwMjUwODI2MDMwODE4LjM0
ODU5MjctMS1pQGNoYWluc3guY246Cgpib3RoIHdhcm5pbmdzIGFyZSBub3QgdGhlIGZhdWx0IG9m
IHRoaXMgYm9hcmQgYWRkaXRpb24sIGJ1dCBpbnN0ZWFkCmNvbWUgZnJvbSAidW5yZWxhdGVkIiBz
b3VyY2VzIGluIHRoZSBtYWluIHJrMzU3NiBkdHNpOgoKCj4gYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NzYtMTAwYXNrLWRzaGFucGktYTEuZHRiOiBzeXNjb25AMjYwMzQwMDAgKHJv
Y2tjaGlwLHJrMzU3Ni1kY3BoeS1ncmYpOiBjbG9ja3M6IEZhbHNlIHNjaGVtYSBkb2VzIG5vdCBh
bGxvdyBbWzIxLCA0OTJdXQo+IAlmcm9tIHNjaGVtYSAkaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9y
Zy9zY2hlbWFzL3NvYy9yb2NrY2hpcC9ncmYueWFtbCMKCkkgbWVzc2VkIHVwIGFuZCBmb3Jnb3Qg
dG8gYWRkIHRoZSBuZXcgc3lzY29uIHRvIHRoZSBjbG9ja3MtcmVxdWlyZWQgbGlzdC4KV2lsbCBm
aXggdGhhdCBzaG9ydGx5LgoKCj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYt
MTAwYXNrLWRzaGFucGktYTEuZHRiOiAvc29jL2RzaUAyN2Q4MDAwMDogZmFpbGVkIHRvIG1hdGNo
IGFueSBzY2hlbWEgd2l0aCBjb21wYXRpYmxlOiBbJ3JvY2tjaGlwLHJrMzU3Ni1taXBpLWRzaTIn
XQoKdGhlIHJrMzU3NiBkc2kgY29tcGF0aWJsZSBpcyBpbiBkcm0tbWlzYy1uZXh0IFswXSwgc28g
c2hvdWxkCmhpdCBsaW51eC1uZXh0IHNob3J0bHkuCgoKWzBdIGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9kcm0vbWlzYy9rZXJuZWwvLS9jb21taXQvZjA1NTMwYmRhZjQyYWEwZTZiYjRj
ZGU3NmJhNmEwODFjZjQ3M2Q0NAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
