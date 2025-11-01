Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE385CCFA03
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Nov 2025 12:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q54eG6zS4EaCtnXxKlBATuhp+9qX8kmdLeJ1s3VTHQk=; b=27GwblSCyjWVa/
	Jpo0nCDWet2azaJoFouVm/YAsGUT0QEiQmgI1Y2q2zHLGG4Uf1WgqXzabFo39dRyJJrQJBsWy73Sw
	EAz4Pdi3D/nJisUYyfuyApg4t7XnR14QMFwmyww4BngWtkaqGrAQDSuRa4J7+vnamC6iWujeUcqan
	kO66MqKge1C2VD0x3dAv1oSyEZGzRQImu2mGxJWCq5EOk8pMlSr202sPB/qJ96RNKWGqYItgB8+PY
	BEvrjuh0PxyzXObPK8D+ZbXxsGgM2iPj8ro8AkHffJn/cAZwVdrD/gruBqjRxsMU0XJoqLv9MNjx3
	hwHDar+XQ72kY3nVTVOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFB4d-00000007kPI-1euX;
	Sat, 01 Nov 2025 12:51:15 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFB4a-00000007kOZ-3AtW;
	Sat, 01 Nov 2025 12:51:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id CBA4340E0A;
	Sat,  1 Nov 2025 13:50:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762001463; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=fQvbdhiXZZph0YAYJiNdm8OJtzwwngVKL/B8nmm12Vc=;
	b=bzkZ44vfgDZOcAzzR08beda9GaadarJtptSNqvAwy8aIv4HWsvMPJ2+iZS/50wypTQTy7g
	dNeURtHLT34G9vAf6hfv7SShnBj8ghs//nLo74Cojy+jm/gqQw3fWIACg+7caq5tPVhLbD
	w7yLteKmYySaEdjZeHK58xpNH4WUX6aMQUqAr6ueN0efIfjSiwMWkZVQzAdlftiynd5/hx
	uALokfjnoBno9fktxvRo+cSv/lY6xL831ktF5Dt6rbtaTCl5hKaaN5eVQvJBcAMzu2vrL9
	4Yk1UFSJq4jovHfYGj78G3rOS+BQ5+1on/cmmcnIJOmIMcaSuAIy/dCr2LATEw==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <10751338.nUPlyArG6x@phil>
References: <20251017073954.130710-1-cnsztl@gmail.com>
 <08911ae2-fef3-432d-a236-d820c9cb67ac@gmail.com>
 <5af928c4-4b6e-489c-ad39-26cef3dd7473@gmail.com> <10751338.nUPlyArG6x@phil>
Date: Sat, 01 Nov 2025 13:50:59 +0100
Cc: "Shawn Lin" <shawn.lin@rock-chips.com>, "Tianling Shen" <cnsztl@gmail.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Grzegorz Sterniczuk" <grzegorz@sternicz.uk>, "Jonas Karlman" <jonas@kwiboo.se>, "Jianfeng Liu" <liujianfeng1994@gmail.com>
To: "Heiko Stuebner" <heiko@sntech.de>
MIME-Version: 1.0
Message-ID: <e52de2b5-bf10-ce0e-66b7-66b1c46525f3@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= fix eMMC corruption on NanoPC-T6 with A3A444 chips
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_055113_126051_85DD2222 
X-CRM114-Status: GOOD (  23.26  )
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

SGVsbG8gSGVpa28sCgpPbiBTYXR1cmRheSwgTm92ZW1iZXIgMDEsIDIwMjUgMTI6NTQgQ0VULCBI
ZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiBBbSBNb250YWcsIDI3LiBP
a3RvYmVyIDIwMjUsIDE4OjM0OjI1IE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJp
ZWIgVGlhbmxpbmcgU2hlbjoKPiA+IE9uIDIwMjUvMTAvMjAgMTI6NDQsIFRpYW5saW5nIFNoZW4g
d3JvdGU6Cj4gPiA+IE9uIDIwMjUvMTAvMjAgOTo1MywgU2hhd24gTGluIHdyb3RlOgo+ID4gPj4g
T24gMjAyNS8xMC8xNyBGcmlkYXkgMTU6MzksIFRpYW5saW5nIFNoZW4gd3JvdGU6Cj4gPiA+Pj4g
RnJvbTogR3J6ZWdvcnogU3Rlcm5pY3p1ayA8Z3J6ZWdvcnpAc3Rlcm5pY3oudWs+Cj4gPiA+Pj4K
PiA+ID4+PiBTb21lIE5hbm9QQy1UNiBib2FyZHMgd2l0aCBBM0E0NDQgZU1NQyBjaGlwcyBleHBl
cmllbmNlIEkvTyBlcnJvcnMgYW5kCj4gPiA+Pj4gY29ycnVwdGlvbiB3aGVuIHVzaW5nIEhTNDAw
IG1vZGUuIERvd25ncmFkZSB0byBIUzIwMCBtb2RlIHRvIGVuc3VyZQo+ID4gPj4+IHN0YWJsZSBv
cGVyYXRpb24uCj4gPiA+Pgo+ID4gPj4gTWF5IEkgYXNrIHlvdSB0byB0ZXN0IGFub3RoZXIgcGF0
Y2ggSSBqdXN0IHBvc3RlZCB0byBzZWUgaWYgaXQgZml4ZXMKPiA+ID4+IHlvdXIgaXNzdWU/Cj4g
PiA+Pgo+ID4gPj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LW1t
Yy8gCj4gPiA+PiBwYXRjaC8xNzYwOTI0OTgxLTUyMzM5LTEtIGdpdC1zZW5kLWVtYWlsLXNoYXdu
LmxpbkByb2NrLWNoaXBzLmNvbS8KPiA+ID4gCj4gPiA+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNo
ISBJIHdpbGwgYXNrIG15IGZyaWVuZCB0byB0ZXN0IGl0IGJ1dCBoZSB1c2VzIAo+ID4gPiB0aGlz
IGJvYXJkIGFzIGEgaG9tZSByb3V0ZXIsIHNvIGl0IG1heSB0YWtlIGEgZmV3IGRheXMgb3Igd2Vl
a3MgdG8gCj4gPiA+IHJlcG9ydCB0aGUgcmVzdWx0Lgo+ID4gCj4gPiBIaSBhbGwsIHNvcnJ5IGZv
ciB0aGUgbGF0ZS4gTXkgZnJpZW5kIGhhcyB0ZXN0ZWQgdGhpcyBwYXRjaCBhbmQgaXQgd29ya3Mg
Cj4gPiBmaW5lIGFmdGVyIDUwIHRpbWVzIGRkIG9wZXJhdGlvbi4gQSBiaWcgdGhhbmtzIHRvIFNo
YXduIQo+IAo+IFNvIEkgZ3Vlc3MsIHdlIGRvbid0IG5lZWQgdGhlIHBhdGNoIHJlZHVjaW5nIHRo
ZSBzcGVlZCBhbnltb3JlLCByaWdodD8KCkV4YWN0bHksIHRoZSBhcHByb2FjaCBvZiBsb3dlcmlu
ZyB0aGUgc3BlZWQgb2YgZU1NQyB0byBpbXByb3ZlCml0cyByZWxpYWJpbGl0eSBpcyBubyBsb25n
ZXIgbmVlZGVkLCB0aGFua3MgdG8gU2hhd24gY29ycmVjdGluZwp0aGUgRExMX1NUUkJJTl9UQVBO
VU1fREVGQVVMVCB2YWx1ZSBpbiB0aGUgYWJvdmUtbGlua2VkIHBhdGNoLgoKV2UganVzdCBuZWVk
IHRvIHRlc3QgZG9lcyBIUzQwMCB3b3JrIG9uIHRoZSBST0NLIDUgSVRYIHJlbGlhYmx5CmFzIHdl
bGwsIHNvIHRoZSBwcmV2aW91cyBsb3dlcmluZyB0byBIUzIwMCBpbiBjb21taXQgYjM2NDAyZTRh
MDc3CigiYXJtNjQ6IGR0czogcm9ja2NoaXA6IHNsb3cgZG93biBlbW1jIGZyZXEgZm9yIHJvY2sg
NSBpdHgiLCAyMDI1LQowMi0yOCkgY291bGQgYmUgcmV2ZXJ0ZWQgYXMgbm8gbG9uZ2VyIG5lZWRl
ZC4KCj4gPiBBbmQgaGkgSmlhbmZlbmcsIEkgZm91bmQgeW91IG1hZGUgYSBzaW1pbGlhciBwYXRj
aFsxXSBmb3IgdGhlIFJPQ0sgNSBJVFggCj4gPiBib2FyZCB0byBsb3dlciBkb3duIHRoZSBtbWMg
c3BlZWQsIGNvdWxkIHlvdSBwbGVhc2UgY2hlY2sgaWYgdGhpcyBwYXRjaCAKPiA+IGFsc28gZml4
ZXMgeW91ciBpc3N1ZT8KPiA+IAo+ID4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4
LXJvY2tjaGlwLzIwMjUwMjI4MTQzMzQxLjcwMjQ0LTEtbGl1amlhbmZlbmcxOTk0QGdtYWlsLmNv
bS8KPiA+IAo+ID4gPj4+IFNpZ25lZC1vZmYtYnk6IEdyemVnb3J6IFN0ZXJuaWN6dWsgPGdyemVn
b3J6QHN0ZXJuaWN6LnVrPgo+ID4gPj4+IFNpZ25lZC1vZmYtYnk6IFRpYW5saW5nIFNoZW4gPGNu
c3p0bEBnbWFpbC5jb20+Cj4gPiA+Pj4gLS0tCj4gPiA+Pj4gICBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzaSB8IDMgKy0tCj4gPiA+Pj4gICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+Pj4KPiA+ID4+PiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtbmFub3BjLXQ2
LmR0c2kgYi8gCj4gPiA+Pj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtbmFu
b3BjLXQ2LmR0c2kKPiA+ID4+PiBpbmRleCBmYWZlYWJlOWFkZjkuLjVmNjNmMzhmNzMyNiAxMDA2
NDQKPiA+ID4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5v
cGMtdDYuZHRzaQo+ID4gPj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LW5hbm9wYy10Ni5kdHNpCj4gPiA+Pj4gQEAgLTcxNyw4ICs3MTcsNyBAQCAmc2RoY2kgewo+
ID4gPj4+ICAgICAgIG5vLXNkOwo+ID4gPj4+ICAgICAgIG5vbi1yZW1vdmFibGU7Cj4gPiA+Pj4g
ICAgICAgbWF4LWZyZXF1ZW5jeSA9IDwyMDAwMDAwMDA+Owo+ID4gPj4+IC0gICAgbW1jLWhzNDAw
LTFfOHY7Cj4gPiA+Pj4gLSAgICBtbWMtaHM0MDAtZW5oYW5jZWQtc3Ryb2JlOwo+ID4gPj4+ICsg
ICAgbW1jLWhzMjAwLTFfOHY7Cj4gPiA+Pj4gICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gPj4+
ICAgfTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
