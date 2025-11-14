Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46D59CE7AAA
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 10:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4IhT+/G8tzYzA4VLEmWI2UNLecwjG8dRNS38r1SX8as=; b=jGG58S4mczL/w/
	QuzVavTa7+nv+WCeMSq9539YMFiDNi5xyHq9kf7l8a5jBJdtxM3bvHL1C9w94q8pqg14zlfdmcvFw
	oc1jhOOTd+/dz+sNSEtuzMwnotsGFrXaCkMDO7qqne1NpsW8J1VhYl2N6oFXAEftAzU+tClYTaXm6
	iVzQUDQY+O4TfG/h9LRWbkE6oiI9j3RX4Dl2OAUvqwAdk7+sLlPmVbWiJ2Q425gN0cciZf116RRpj
	6D8vgo4Lmk1V2X6PXajn+3OeSfm4AtGUowfULRZ9oQfkGqKrAAqkkk+d0L5L3Pdbr6KtW9e7zKQpB
	POsuboO+M3+nF3hkjaig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJqnB-0000000BzN6-2bAw;
	Fri, 14 Nov 2025 10:12:33 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJqn8-0000000BzMa-49JS
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 10:12:32 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 4659541093;
	Fri, 14 Nov 2025 11:12:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763115147; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Ga6CQ/p0+1az2B4LpE8ZMMJopa5u6rl8UVhUf63Sx3M=;
	b=BlxEt8d4j33DRxLt7GmGjkKWSKz98+SR3gqAU91iuWwSjUEKH1vRUemjP4shpZHusOdEi+
	unyVKRTzgTNIGfBfbAOtQCbrHIEeyaqBPAdEE8h9ML3XdvIYpB6yo5GnY5kMxmyCDrsOFW
	TbMOU9JIGZ11F6JPuTRobwMMFul/ON99QJtRybzhxwlJEc2efmZG9cU27h37iH3A4LGSpc
	lrmrFeJi4WRUkmluCB6xg0/9laQzX+V1e8gQWgIpBiZ9kiGp/t5WXUsFV2o9AJ7t1d0Yib
	wgCh4FsAkIGGsA+CivQrC1wyi+llolNJmRYccFX1esjSaE97cSoA9MG1b08cUA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <1942576.CQOukoFCf9@diego>
References: <20251105051335.17652-1-naoki@radxa.com>
 <A3AD69295D2E2D65+db2dc8bd-054f-4dda-9dd1-3cc0c0feed35@radxa.com>
 <194908a1-f956-ba0a-656f-7b1e8456b51d@manjaro.org> <1942576.CQOukoFCf9@diego>
Date: Fri, 14 Nov 2025 11:12:22 +0100
Cc: "FUKAUMI Naoki" <naoki@radxa.com>, "Krzysztof Kozlowski" <krzk@kernel.org>, joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
MIME-Version: 1.0
Message-ID: <21ea3b50-6000-5202-49cf-685310e6fa18@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 1/3] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Radxa CM5 IO Board
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_021231_409623_DFCF5AA0 
X-CRM114-Status: GOOD (  29.34  )
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

SGVsbG8gSGVpa28sCgpPbiBGcmlkYXksIE5vdmVtYmVyIDE0LCAyMDI1IDExOjA4IENFVCwgSGVp
a28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4gQW0gRnJlaXRhZywgMTQuIE5v
dmVtYmVyIDIwMjUsIDA5OjMyOjI5IE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJp
ZWIgRHJhZ2FuIFNpbWljOgo+ID4gT24gRnJpZGF5LCBOb3ZlbWJlciAxNCwgMjAyNSAwOToyNCBD
RVQsIEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4gd3JvdGU6Cj4gPiA+IE9uIDExLzE0
LzI1IDE2OjUxLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4gPiA+IE9uIDE0LzExLzIw
MjUgMDg6NDcsIEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4gPiA+ID4+IE9uIDExLzE0LzI1IDE2OjQy
LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4gPiA+Pj4gT24gMTQvMTEvMjAyNSAwODoz
NywgRlVLQVVNSSBOYW9raSB3cm90ZToKPiA+ID4gPj4+PiBIaSBLcnp5c3p0b2YsCj4gPiA+ID4+
Pj4KPiA+ID4gPj4+PiBPbiAxMS8xNC8yNSAxNjoxMiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90
ZToKPiA+ID4gPj4+Pj4gT24gMDUvMTEvMjAyNSAwODowOCwgS3J6eXN6dG9mIEtvemxvd3NraSB3
cm90ZToKPiA+ID4gPj4+Pj4+IE9uIDA1LzExLzIwMjUgMDc6NTcsIEZVS0FVTUkgTmFva2kgd3Jv
dGU6Cj4gPiA+ID4+Pj4+Pj4gT24gMTEvNS8yNSAxNTo0MywgS3J6eXN6dG9mIEtvemxvd3NraSB3
cm90ZToKPiA+ID4gPj4+Pj4+Pj4gT24gMDUvMTEvMjAyNSAwNjoxMywgRlVLQVVNSSBOYW9raSB3
cm90ZToKPiA+ID4gPj4+Pj4+Pj4+IEFkZCBkZXZpY2UgdHJlZSBiaW5kaW5nIGRvY3VtZW50YXRp
b24gZm9yIHRoZSBSYWR4YSBDTTUgSU8gQm9hcmQuCj4gPiA+ID4+Pj4+Pj4+Pgo+ID4gPiA+Pj4+
Pj4+Pj4gTGluazogaHR0cHM6Ly9kbC5yYWR4YS5jb20vY201L3JhZHhhX2NtNV9wcm9kdWN0X2Jy
aWVmLnBkZgo+ID4gPiA+Pj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFv
a2lAcmFkeGEuY29tPgo+ID4gPiA+Pj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogSm9zZXBoIEtvZ3V0
IDxqb3NlcGgua29ndXRAZ21haWwuY29tPgo+ID4gPiA+Pj4+Pj4+Pgo+ID4gPiA+Pj4+Pj4+PiBX
cm9uZyBEQ08gY2hhaW4uCj4gPiA+ID4+Pj4+Pj4+Cj4gPiA+ID4+Pj4+Pj4+PiAtLS0KPiA+ID4g
Pj4+Pj4+Pj4+ICAgICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2Nr
Y2hpcC55YW1sIHwgNyArKysrKysrCj4gPiA+ID4+Pj4+Pj4+Cj4gPiA+ID4+Pj4+Pj4+IE5BSywg
eW91IGp1c3Qgc3RvbGVuIG93bmVyc2hpcCBvZiBhbiBhbHJlYWR5IHBvc3RlZCBwYXRjaC4KPiA+
ID4gPj4+Pj4+Pgo+ID4gPiA+Pj4+Pj4+IFJlYWQgIkNoYW5nZXMgaW4gdjYiIGFuZCBwYXRjaGVz
OyBteSBwYXRjaGVzIGFyZSBub3QgdGhlIHNhbWUgYXMgdjUuCj4gPiA+ID4+Pj4+Pj4gWW91ciBy
ZXBseSBpcyB0b3RhbGx5IGluYXBwcm9wcmlhdGUuCj4gPiA+ID4+Pj4+Pgo+ID4gPiA+Pj4+Pj4g
SW5hcHByb3ByaWF0ZSBpcyB0YWtpbmcgYXV0aG9yc2hpcCBvZiBzb21lb25lJ3MgcGF0Y2gsIGJl
Y2F1c2Ugd2UgYWxsCj4gPiA+ID4+Pj4+PiBleHBlY3QgdG8gcHJlc2VydmUgdGhlIG9yaWdpbmFs
IGF1dGhvcnNoaXAuIFRoYXQncyBub3Qgb25seSBiYXNpYwo+ID4gPiA+Pj4+Pj4gZGVjZW5jeSBi
dXQgYWN0dWFsbHkgYSBzdGFuZGFyZC4KPiA+ID4gPj4+Pj4+Cj4gPiA+ID4+Pj4+PiBBZGRpdGlv
bmFsbHksIHJlYWQgSm9zZXBoJ3MgcmVwbHkgdGhhdCBoZSB3YW50cyB0byBjb250aW51ZSB0aGUg
d29yazoKPiA+ID4gPj4+Pj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9DQU1XU003aUh0
QXhld1c0SmtScVJzaWZWbmNjcWVGdmlhQ2dlT3lwcktEcjkyRk91cmdAbWFpbC5nbWFpbC5jb20v
Cj4gPiA+ID4+Pj4+Pgo+ID4gPiA+Pj4+Pj4gWW91IGNsZWFybHkgZG8gbm90IHVuZGVyc3RhbmQg
aG93IHRvIGNvbnRpbnVlIHdpdGggc29tZW9uZSdzIHdvcmsuCj4gPiA+ID4+Pj4+Pgo+ID4gPiA+
Pj4+Pj4gSXQgaXMgc3RpbGwgYSBOQUsuCj4gPiA+ID4+Pj4+Cj4gPiA+ID4+Pj4+IEFuZCBJIHN0
aWxsIHdhaXQgZm9yIGp1c3RpZmljYXRpb24gd2h5IHlvdSB0b29rIGF1dGhvcnNoaXAgb2YgdGhp
cwo+ID4gPiA+Pj4+PiBwYXRjaCwgYmVjYXVzZSB0byBteSBleWUgeW91IGNoYW5nZWQgaGVyZSBu
b3RoaW5nLgo+ID4gPiA+Pj4+Pgo+ID4gPiA+Pj4+PiBTbyB3aGF0IGRpZCB5b3UgY2hhbmdlIEhF
UkUgdGhhdCB5b3UgdGhpbmsgeW91IGFyZSB0aGUgYXV0aG9yIG5vdz8KPiA+ID4gPj4+Pgo+ID4g
PiA+Pj4+IENoYW5nZXMgaW4gdjY6Cj4gPiA+ID4+Pj4gKFBhdGNoIDEvMykKPiA+ID4gPj4+PiAt
IEZpeCBkZXNjcmlwdGlvbjsgIlJhZHhhIENNNSIgaXMgdGhlIGNvcnJlY3QgbmFtZQo+ID4gPiA+
Pj4KPiA+ID4gPj4+IEhFUkUsIGluIHRoaXMgcGF0Y2guIERvbid0IHBhc3RlIG1lIGh1bmRyZWRz
IG9mIHVucmVsYXRlZCBjb2RlLiBXcml0ZQo+ID4gPiA+Pj4gY29uY2lzZSBhbmQgcHJlY2lzZSBh
bnN3ZXJzL2NvbW1lbnRzLgo+ID4gPiA+Pgo+ID4gPiA+PiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1yb2NrY2hpcC9BRTA3MzVBNkM3OTdDQ0ZGKzEwNDk2ZDczLTdjMGEtNDg4NC05NTYx
LTI0NzIxMzA1YTI0ZkByYWR4YS5jb20vCj4gPiA+ID4+Cj4gPiA+ID4+IHwgQnkgdGhlIHdheSwg
YXQgc29tZSBwb2ludCBJIHN3aXRjaGVkIGZyb20gImNvbnRpbnVpbmcgeW91ciB3b3JrIiB0bwo+
ID4gPiA+PiB8ICJyZWNyZWF0aW5nIGEgbmV3IG9uZSBiYXNlZCBvbiBteSBjdXJyZW50IHdvcmsu
IiBUaGUgcmVzdWx0cyBvZiBteQo+ID4gPiA+PiB8IGN1cnJlbnQgd29yaygqMykgaGF2ZSBjaGFu
Z2VkIHNpZ25pZmljYW50bHkuCj4gPiA+ID4gCj4gPiA+ID4gU28gbmV4dCB0aW1lIEkgd2lsbCB0
YWtlIHlvdXIgcGF0Y2gsIHlvdXIgY29kZSwgc2F5ICJJIHJlY3JlYXRlZCBpdCIgYW5kCj4gPiA+
ID4gc3VibWl0IHVuZGVyIG15IGF1dGhvcnNoaXAgYW5kIGZvciB5b3UgaXQgaXMgZmluZT8KPiA+
ID4gCj4gPiA+IFJlZ2FyZGluZyBDTTUgcGF0Y2hlcywgSSdtIGZpbmUuCj4gPiA+IAo+ID4gPiA+
IFBsZWFzZSB0YWtlIEpvc2VwaCdzIHBhdGNoIGluc3RlYWQuIFJlYWQgc3VibWl0dGluZyBwYXRj
aGVzIGRvYyB0bwo+ID4gPiA+IHVuZGVyc3RhbmQgd2hpY2ggb25lIG1vcmUgdGFnIGhhcyB0byBi
ZSBhZGRlZCB3aGVuIHNlbmRpbmcgc29tb2VuZQo+ID4gPiA+IGVsc2UncyB3b3JrLgo+ID4gPiA+
IAo+ID4gPiA+IEluIHRoZSBmdXR1cmUsIEkgc2luY2VyZWx5IHN1Z2dlc3QgYXZvaWRpbmcgcmUt
Y3JlYXRpbmcgcGVvcGxlJ3Mgd29yawo+ID4gPiA+IGJ1dCBidWlsZGluZyBvbiB0b3AsIGJlY2F1
c2UgeW91IGp1c3QgZHVwbGljYXRlIHRoZSBlZmZvcnQuCj4gPiA+IAo+ID4gPiBJIHVuZGVyc3Rh
bmQgdGhhdCB5b3UgZG9uJ3QgdW5kZXJzdGFuZCBob3cgSSBtYWRlIGVmZm9ydHMgdG8gYnVpbGQg
bXkgCj4gPiA+IHdvcmsgb24gdG9wIG9mIEpvc2VwaCdzIHBhdGNoZXMuCj4gPiAKPiA+IE1heWJl
IGEgc29sdXRpb24gZm9yIHRoaXMgaHVnZSBtZXNzIGNvdWxkIGJlIHRoYXQgTmFva2kgc3VibWl0
cwo+ID4gdW5tb2RpZmllZCBwYXRjaGVzIGZyb20gSm9zZXBoIGZpcnN0LCB1c2luZyB0aGUgc3Rh
bmRhcmQgcHJvY2VkdXJlCj4gPiBmb3IgdGhhdCwgYW5kIHRoZW4gdGhlIGFkZGl0aW9uYWwgcGF0
Y2goZXMpIHRoYXQgaW1wcm92ZSBKb3NlcGgncwo+ID4gd29yaz8gIEFsbCB0aGF0IGluIHRoZSBz
YW1lIHNlcmllcy4KPiAKPiBUaGVyZSBpcyBhbHNvIENvLWRldmVsb3BlZC1ieSBhcyBhbiBvcHRp
b24uCgpBaCwgdGhhdCdzIHdoYXQgdGhlIGFib3ZlLWRlc2NyaWJlZCBvcHRpb24gIzEgaW52b2x2
ZXMsIGJ1dCBpdCBhbHNvIApyYWlzZXMgc29tZSBwb3NzaWJsZSBjb25jZXJucywgZGVzY3JpYmVk
IGluIG9uZSBvZiBteSByZXNwb25zZXMuIFsxXQoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xpbnV4LXJvY2tjaGlwL2MwMWI3NTZhLTczZWEtM2QwZC00NGI5LTZjZThhNTM1YTEwM0BtYW5q
YXJvLm9yZy8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
