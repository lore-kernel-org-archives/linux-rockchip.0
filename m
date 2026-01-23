Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C9A6D74ED3
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jan 2026 13:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zyarnAvXkIY0Mi/DZxSHodZ0EssTvShaQ4g8ZuYC5YU=; b=3slLPx5xyevi70
	metvuhAB9vONdWZmUCQLMa/we6LAmVAb8ru3Zk4iHx8EcW7hom52jamMfw1ha7dA7xrJLtH4ZSQRT
	ig7JLIJdl4Na7g1YzcSoZbvZ2CMQAWeWBjBbGELQEPQ+2GiU8GYNbSfEn3HO3Ub++7+2o3GzvkDB6
	KVxuVLvA5q/YeGX3FqyqKczpDIdS3iyFCM1KFkJNZ7IGOSruPTiN+r2Vt3VXbLXGQlLnjxjbK244B
	ghInJ+dq4Kkz7BCq70gaej2YzhXhrlk5gLx+XYD6L/kzXoPKWzjxuKW6GyyHWuIwUByeyb/1U80OC
	Vwhfno/MTAND5KFFKnXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHOL-00000008yxp-1Pnn;
	Fri, 23 Jan 2026 13:40:01 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHOI-00000008ywu-05ix
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Jan 2026 13:39:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A80E31476;
	Fri, 23 Jan 2026 05:39:49 -0800 (PST)
Received: from [10.57.51.35] (unknown [10.57.51.35])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 256A33F632;
	Fri, 23 Jan 2026 05:39:55 -0800 (PST)
Message-ID: <54c76dbe-c0b7-4aca-9d23-1881334b9fff@arm.com>
Date: Fri, 23 Jan 2026 13:39:52 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION][BISECTED] wifi broken on pinebook pro
To: FUKAUMI Naoki <naoki@radxa.com>, Jan Palus <jpalus@fastmail.com>,
 Peter Robinson <pbrobinson@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 regressions@lists.linux.dev
References: <aUKOlj-RvTYlrpiS@rock.grzadka>
 <CALeDE9OzCzbhKmc61Kgbmzr67oJnjZMjsO6yYbkXujzA-OuO+A@mail.gmail.com>
 <aVJutYTmhA14rwPY@rock.grzadka>
 <ADED015D50C33884+c789fd7c-c5fd-4947-8497-033d2938ac34@radxa.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <ADED015D50C33884+c789fd7c-c5fd-4947-8497-033d2938ac34@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_053958_152091_77F91D7F 
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyNi0wMS0wMiAxMjoxNyBwbSwgRlVLQVVNSSBOYW9raSB3cm90ZToKPiBIaSBKYW4sCj4g
Cj4gSnVzdCBGWUksCj4gCj4gT24gMTIvMjkvMjUgMjE6MTgsIEphbiBQYWx1cyB3cm90ZToKPj4g
T24gMjkuMTIuMjAyNSAwNjoyMywgUGV0ZXIgUm9iaW5zb24gd3JvdGU6Cj4+PiBPbiBXZWQsIDE3
IERlYyAyMDI1IGF0IDExOjI2LCBKYW4gUGFsdXMgPGpwYWx1c0BmYXN0bWFpbC5jb20+IHdyb3Rl
Ogo+Pj4+Cj4+Pj4gV2lGaSBubyBsb25nZXIgd29ya3Mgb24gUGluZWJvb2sgUHJvIGFmdGVyIHVw
Z3JhZGUgdG8ga2VybmVsIDYuMTguIEl0Cj4+Pj4gYXBwZWFycyBmaXJtd2FyZSBmYWlscyB0byBs
b2FkOgo+Pj4+Cj4+Pj4gLi4uCj4+Pj4gbW1jX2hvc3QgbW1jMDogY2FyZCBpcyBub24tcmVtb3Zh
YmxlLgo+Pj4+IG1tY19ob3N0IG1tYzA6IEJ1cyBzcGVlZCAoc2xvdCAwKSA9IDQwMDAwMEh6IChz
bG90IHJlcSA0MDAwMDBIeiwgCj4+Pj4gYWN0dWFsIDQwMDAwMEhaIGRpdiA9IDApCj4+Pj4gQmx1
ZXRvb3RoOiBoY2kwOiBCQ006IGZlYXR1cmVzIDB4MGYKPj4+PiBCbHVldG9vdGg6IGhjaTA6IEJD
TTQzNDVDNSBBbXBha19DTDEgVUFSVCAzNy40IE1IeiBCVCA1LjAgW1ZlcnNpb246IAo+Pj4+IFZl
cnNpb246IDAwMzkuMDA4OV0KPj4+PiBCbHVldG9vdGg6IGhjaTA6IEJDTTQzNDVDNSAoMDAzLjAw
Ni4wMDYpIGJ1aWxkIDAwODkKPj4+PiBtbWNfaG9zdCBtbWMwOiBCdXMgc3BlZWQgKHNsb3QgMCkg
PSAxNDg1MDAwMDBIeiAoc2xvdCByZXEgCj4+Pj4gMTUwMDAwMDAwSHosIGFjdHVhbCAxNDg1MDAw
MDBIWiBkaXYgPSAwKQo+Pj4+IGR3bW1jX3JvY2tjaGlwIGZlMzEwMDAwLm1tYzogU3VjY2Vzc2Z1
bGx5IHR1bmVkIHBoYXNlIHRvIDU1Cj4+Pj4gbW1jMDogbmV3IFVIUy1JIHNwZWVkIFNEUjEwNCBT
RElPIGNhcmQgYXQgYWRkcmVzcyAwMDAxCj4+Pj4gYnJjbWZtYWM6IGJyY21mX2Z3X2FsbG9jX3Jl
cXVlc3Q6IHVzaW5nIGJyY20vYnJjbWZtYWM0MzQ1Ni1zZGlvIGZvciAKPj4+PiBjaGlwIEJDTTQz
NDUvOQo+Pj4+IHVzYmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIgYnJjbWZt
YWMKPj4+PiBicmNtZm1hYyBtbWMwOjAwMDE6MTogRGlyZWN0IGZpcm13YXJlIGxvYWQgZm9yIGJy
Y20vYnJjbWZtYWM0MzQ1Ni0gCj4+Pj4gc2Rpby5waW5lNjQscGluZWJvb2stcHJvLmJpbiBmYWls
ZWQgd2l0aCBlcnJvciAtMgo+Pj4+IGJyY21mbWFjOiBicmNtZl9zZGlvX2J1c19yeGN0bDogcmVz
dW1lZCBvbiB0aW1lb3V0Cj4+Pj4gaWVlZTgwMjExIHBoeTA6IGJyY21mX2J1c19zdGFydGVkOiBm
YWlsZWQ6IC0xMTAKPj4+PiBpZWVlODAyMTEgcGh5MDogYnJjbWZfYXR0YWNoOiBkb25nbGUgaXMg
bm90IHJlc3BvbmRpbmc6IGVycj0tMTEwCj4+Pj4gYnJjbWZtYWM6IGJyY21mX3NkaW9fZmlybXdh
cmVfY2FsbGJhY2s6IGJyY21mX2F0dGFjaCBmYWlsZWQKPj4+Pgo+Pj4+IGNvbXBhcmVkIHRvIDYu
MTcgaW5zdGVhZCBvZiBsYXN0IDQgbGluZXMgd2l0aCBlcnJvcnMgdGhlcmUncyBzaW5nbGUgb25l
Cj4+Pj4gd2l0aCBpbmZvIGFib3V0IGxvYWRlZCBmaXJtd2FyZToKPj4+Pgo+Pj4+IGJyY21mbWFj
OiBicmNtZl9jX3ByZWluaXRfZGNtZHM6IEZpcm13YXJlOiBCQ000MzQ1Lzkgd2wwOiBNYXkgMTQg
Cj4+Pj4gMjAyMCAxNzoyNjowOCB2ZXJzaW9uIDcuODQuMTcuMSAocjg3MTU1NCkgRldJRCAwMS0z
ZDllMWQ4Nwo+Pj4+Cj4+Pj4gQmlzZWN0ZWQgdG86Cj4+Pj4KPj4+PiA2ZDU0ZDkzNTA2MmUyZDRh
N2QzZjc3OWNlYjllZWZmMTA4ZDA1MzVkIGlzIHRoZSBmaXJzdCBuZXcgY29tbWl0Cj4+Pj4gY29t
bWl0IDZkNTRkOTM1MDYyZTJkNGE3ZDNmNzc5Y2ViOWVlZmYxMDhkMDUzNWQgKEhFQUQpCj4+Pj4g
QXV0aG9yOiBQZXRlciBSb2JpbnNvbiA8cGJyb2JpbnNvbkBnbWFpbC5jb20+Cj4+Pj4gRGF0ZTrC
oMKgIFdlZCBBdWcgMjcgMTY6MzA6MzcgMjAyNQo+Pj4+Cj4+Pj4gwqDCoMKgwqAgYXJtNjQ6IGR0
czogcm9ja2NoaXA6IEZ1cnRoZXIgZGVzY3JpYmUgdGhlIFdpRmkgZm9yIHRoZSAKPj4+PiBQaW5l
Ym9vayBQcm8KPj4+Pgo+Pj4+IMKgwqDCoMKgIFVwZGF0ZSB0aGUgd2FrZS11cCBwaW4gYW5kIGFz
c29jaWF0ZWQgaW50ZXJ1cHQgZGV0YWlscyBmb3IgdGhlCj4+Pj4gwqDCoMKgwqAgUGluZWJvb2sg
UHJvIFdpRmkgbW9kdWxlLgo+Pj4+Cj4+Pj4gwqDCoMKgwqAgU2lnbmVkLW9mZi1ieTogUGV0ZXIg
Um9iaW5zb24gPHBicm9iaW5zb25AZ21haWwuY29tPgo+Pj4+IMKgwqDCoMKgIExpbms6IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTA4MjcxNDMwNDAuMTY0NDg2Ny0xLSAKPj4+PiBwYnJv
Ymluc29uQGdtYWlsLmNvbQo+Pj4+IMKgwqDCoMKgIFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVi
bmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4+Pj4KPj4+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1waW5lYm9vay1wcm8uZHRzIHwgMTggKysrKysrKysgCj4+Pj4gKysrKysr
KysrKwo+Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCj4+Pj4KPj4+Pgo+
Pj4+IFdpdGggdGhpcyBjb21taXQgcmV2ZXJ0ZWQgb24gdG9wIG9mIDYuMTguMSB3aXJlbGVzcyBj
b25uZWN0aW9uIHdvcmtzCj4+Pj4gZmluZS4KPj4+Pgo+Pj4+IE5vdCBzdXJlIHdoYXQgY291bGQg
YmUgcmVsZXZhbnQgYnV0Ogo+Pj4+IC0gaXQncyBhbiBlYXJseSBtb2RlbCwgSSB0aGluayBzZWNv
bmQgYmF0Y2gsIGRlbGl2ZXJlZCBlbmQgb2YgMjAxOQo+Pj4KPj4+IElzIGl0IHRoZSBTeW5vcHRp
Y3Mgb3IgdGhlIEN5cHJlc3MvSW5maW5lb24gbW9kdWxlPyBXaGF0IGZpcm13YXJlIGFyZSAKPj4+
IHlvdSB1c2luZz8KPj4KPj4gSnVkZ2luZyBieSB0aGUgZmFjdCBhY3F1aXNpdGlvbiBieSBTeW5h
cHRpY3MgaGFwcGVuZWQgc29tZXRpbWUgbGF0ZQo+PiAyMDIwL2Vhcmx5IDIwMjEgSSBndWVzcyBp
dCBtdXN0IGJlIEN5cHJlc3M/IEknbSBub3QgcmVhbGx5IGZhbWlsaWFyIHdpdGgKPj4gQkNNNDM0
NTYgY2hpcCBoaXN0b3J5LiBGaXJtd2FyZSBmaWxlcyB1c2VkIGFyZQo+PiBicmNtL2JyY21mbWFj
NDM0NTYtc2Rpby57YmluLGNsbV9ibG9iLHR4dH0gZXhhY3RseSB0aG9zZSBmb3VuZCBhdDoKPj4K
Pj4gaHR0cHM6Ly9naXRodWIuY29tL1JQaS1EaXN0cm8vZmlybXdhcmUtbm9uZnJlZS90cmVlL3Ry
aXhpZS9kZWJpYW4vIAo+PiBjb25maWcvYnJjbTgwMjExL2JyY20KPiAKPiBJJ20gdXNpbmcgdGhl
IHNhbWUgZmlybXdhcmUgZm9yIHRoZSBSYWR4YSBDTTNKIGVxdWlwcGVkIHdpdGggdGhlIAo+IEFQ
Njc0NShCQ000MzQ1NikgYW5kIGV4cGVyaWVuY2luZyB0aGUgc2FtZSBlcnJvcihicmNtZl9zZGlv
X2J1c19yeGN0bDogCj4gcmVzdW1lZCBvbiB0aW1lb3V0KSB3aGVuIHRoZSBpbnRlcnJ1cHQgaXMg
ZW5hYmxlZC4KCll1cCwgSUlSQyB0aGUgaG9zdF93YWtlIHBpbiBiZWhhdmlvdXIgLSBhdCBsZWFz
dCB0aGUgcG9sYXJpdHksIGFuZCAKcG9zc2libHkgd2hldGhlciBpdCdzIHVzZWQgYXMgYW4gb3V0
LW9mLWJhbmQgaW50ZXJydXB0IGF0IGFsbCAtIGlzIApyZWFsbHkgYSBwcm9wZXJ0eSBvZiB0aGUg
ZmlybXdhcmUgcmF0aGVyIHRoYW4gdGhlIGhhcmR3YXJlLCBhbmQgY2FuIGJlIApkaWZmZXJlbnQg
Zm9yIGRpZmZlcmVudCBibG9icy4KClJvYmluLgoKPiAKPiAgwqBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1yb2NrY2hpcC9BN0FERUIxMkUyNUVEMzQ2KzAwMDQ4ZWU5LSAKPiBjNGQ2LTQ0
MmQtYTAyYy1jZWZiZGM2YmUzNTNAcmFkeGEuY29tLwo+IAo+IEJlc3QgcmVnYXJkcywKPiAKPiAt
LSAKPiBGVUtBVU1JIE5hb2tpCj4gUmFkeGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBDby4sIEx0ZC4K
PiAKPj4+Cj4+Pj4gLSBtYWlubGluZSB1Ym9vdCAyMDI1LjEwIGlzIHVzZWQKPj4+Pgo+Pj4+Cj4+
Pj4gI3JlZ3pib3QgaW50cm9kdWNlZDogNmQ1NGQ5MzUwNgo+Pgo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKPj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4+Cj4gCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
