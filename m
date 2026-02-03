Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 913E0E6E7F6
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Feb 2026 10:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Mvekq5k6PjYL+cCkJ8O99XSWHqS0i/JDOXFpLd1Z18=; b=TiGNkiyAAzk6Xv
	hU74KYxLUxT3ZiLwzI71ckYPYmTLcrn3/gY0pCMWCAkrQbGpEv5eqb9qkBJcSaI5zy7ZK9TXaUBlG
	2KGlenGM4f4B9/rj0hjI0UeZwEirVb2swMWoWIK73VC7CAQ7MagPUaIpDEFSza/kNEiR8LDPedvts
	VuJP5z/7+Zf6B7ub6tZNdChCloOo/49W68+vNZ0ZLd2ySVWyZvAk5MA8gyZXkgRAu6xEqSCUvvGGq
	cdaynNSutyq9PGPqAJ4OoNmERaZJMwYiTXsJdz0cbRjOieeOKvBbn7JU/5cK/eXbNYqfHY6bzNrz3
	cBUZh6nqB5zozJ2Hx7jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnDrM-00000006UmN-05sv;
	Tue, 03 Feb 2026 10:42:16 +0000
Received: from wp530.webpack.hosteurope.de ([80.237.130.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnDrJ-00000006Uli-20KT
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Feb 2026 10:42:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=leemhuis.info; s=he214686; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References; bh=hXHBxdO+y6TAB7miY3sJ/vJlz5vGfecCgP/B8PbW8N0=; t=1770115333;
	x=1770547333; b=wgGrEm4fGYnb/NVvd2YCuO280R9x5XRaZdDkWelGvgvQPWk/SS+dY1przUPHq
	yqV5o1DLZit1d9/BLNTE+6Jm1vsaaXhsMgD3Ezj82raV91y2YkfJAPksQaIxC01KjuJEfylme4J8m
	LzBH8E+1mK02/8QnVsn5RqC6ak4+gAqEfWCk/r1ECywjfMTMUswhZSycdMyQKl52V+I6YaBNzQkKB
	d8edEX7JvtQ4dvzF6cDWB+hv9nIGRqisMLgm17wfGuh24dwh12vG7m69YjnsBSeb8uE5lSthROz6+
	+ITRaULE9dauhtoyRIrWfF29nr+bHoAVAoJgt07YRjMoYIIogw==;
Received: from [2a02:8108:8984:1d00:a0cf:1912:4be:477f]; authenticated
	by wp530.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128)
	id 1vnDrE-002zze-1B;
	Tue, 03 Feb 2026 11:42:08 +0100
Message-ID: <45c528cf-901c-47d5-a8d2-a4010105e30f@leemhuis.info>
Date: Tue, 3 Feb 2026 11:42:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION][BISECTED] wifi broken on pinebook pro
From: Thorsten Leemhuis <regressions@leemhuis.info>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, regressions@lists.linux.dev,
 Jan Palus <jpalus@fastmail.com>, Peter Robinson <pbrobinson@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, FUKAUMI Naoki <naoki@radxa.com>
References: <aUKOlj-RvTYlrpiS@rock.grzadka>
 <CALeDE9OzCzbhKmc61Kgbmzr67oJnjZMjsO6yYbkXujzA-OuO+A@mail.gmail.com>
 <5f8805a8-b2d6-4bc3-9c6c-c8fc696daacd@leemhuis.info>
Content-Language: de-DE, en-US
In-Reply-To: <5f8805a8-b2d6-4bc3-9c6c-c8fc696daacd@leemhuis.info>
X-bounce-key: webpack.hosteurope.de;regressions@leemhuis.info;1770115333;429c26c1;
X-HE-SMSGID: 1vnDrE-002zze-1B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_024213_682817_CC620C28 
X-CRM114-Status: GOOD (  16.04  )
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

T24gMS8xNC8yNiAxNDowMywgVGhvcnN0ZW4gTGVlbWh1aXMgd3JvdGU6Cj4gW3RvcC1wb3N0aW5n
IHRvIGZhY2lsaXRhdGUgcHJvY2Vzc2luZ10KPiAKPiBQZXRlciwgSGVpa28sIHdoYXQncyB0aGUg
ZGVhbCBoZXJlPyBUaGlzIGxvb2tzIHN0YWxsZWQuIElzIHRlbXBvcmFyaWx5Cj4gcmV2ZXJ0aW5n
IGFuIG9wdGlvbiwgb3Igd291bGQgdGhhdCBjYXVzZSByZWdyZXNzaW9ucyBmb3Igb3RoZXIgdXNl
cnMKPiB0aGF0IGFscmVhZHkgYmVuZWZpdCBmcm9tIHRoZSBjaGFuZ2UgdGhhdCBpcyBjYXVzaW5n
IHRoZSBwcm9ibGVtPwoKSSBhc3N1bWUgdGhpcyB3YXNuJ3QgZml4ZWQgeWV0IChKYW4sIHBsZWFz
ZSBjb3JyZWN0IG1lIGlmIEknbSB3cm9uZyEpOgoKSGVpa28sIGNvdWxkIHlvdSBtYXliZSBzdWJt
aXQgYSByZXZlcnQ/IEZpeGluZyB0aGlzIGlzIGxvbmcgb3ZlcmR1ZQphZmFpY3MsIGFzIExpbnVz
IGp1c3QgcmVjZW50bHkgd3JvdGUgIiJydWxlIG9mIHRodW1iIFt0byBnZXQKdXNlci1yZXBvcnRl
ZCByZWdyZXNzaW9ucyBmaXhlZF0gc2hvdWxkIGdlbmVyYWxseSBiZSAid2l0aGluIGEgd2VlayIs
CnByZWZlcmFibHkgYmVmb3JlIHRoZSBuZXh0IHJjLiIiWzFdIOKAkyB3ZSBhcmUgd2F5IHBhc3Qg
dGhhdC4KCk5vdGUsIEkgYXNzdW1lIHRoaXMgd2lsbCBicmVhayB0aGluZ3MgZm9yIHBlb3BsZSB3
aGVyZSB0aGUgY2hhbmdlIGluCnF1ZXN0aW9uIGltcHJvdmVkIHRoaW5ncy4gQnV0IEkgc3VzcGVj
dCBoZSBpbiBhIHNpdHVhdGlvbiBsaWtlIHRoaXMKTGludXMgcHJlZmVycyB0byBnbyBiYWNrIHRv
IHdoYXQgd2FzICJub3JtYWwiIGJlZm9yZSB0aGUgY3VscHJpdCB3YXMKbWVyZ2VkLiBJZiB3ZSBh
cmUgdW5zdXJlIGFib3V0IHRoaXMgSSBndWVzcyB3ZSBzaG91bGQgZ2V0IGhpbSBpbnZvbHZlZAp0
byBjbGVhbiB0aGlzIHVwLgoKQ2lhbywgVGhvcnN0ZW4KClsxXQpodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvQ0FIay0lM0R3aTg2QW9zWHM2Ni15aTU0JTJCbXBRalB1MHVweEI4WkFmRyUyQkxz
TXlKbWN1TVNBQG1haWwuZ21haWwuY29tLwoKCj4gT24gMTIvMjkvMjUgMDc6MjMsIFBldGVyIFJv
Ymluc29uIHdyb3RlOgo+PiBPbiBXZWQsIDE3IERlYyAyMDI1IGF0IDExOjI2LCBKYW4gUGFsdXMg
PGpwYWx1c0BmYXN0bWFpbC5jb20+IHdyb3RlOgo+Pj4KPj4+IFdpRmkgbm8gbG9uZ2VyIHdvcmtz
IG9uIFBpbmVib29rIFBybyBhZnRlciB1cGdyYWRlIHRvIGtlcm5lbCA2LjE4LiBJdAo+Pj4gYXBw
ZWFycyBmaXJtd2FyZSBmYWlscyB0byBsb2FkOgo+Pj4KPj4+IC4uLgo+Pj4gbW1jX2hvc3QgbW1j
MDogY2FyZCBpcyBub24tcmVtb3ZhYmxlLgo+Pj4gbW1jX2hvc3QgbW1jMDogQnVzIHNwZWVkIChz
bG90IDApID0gNDAwMDAwSHogKHNsb3QgcmVxIDQwMDAwMEh6LCBhY3R1YWwgNDAwMDAwSFogZGl2
ID0gMCkKPj4+IEJsdWV0b290aDogaGNpMDogQkNNOiBmZWF0dXJlcyAweDBmCj4+PiBCbHVldG9v
dGg6IGhjaTA6IEJDTTQzNDVDNSBBbXBha19DTDEgVUFSVCAzNy40IE1IeiBCVCA1LjAgW1ZlcnNp
b246IFZlcnNpb246IDAwMzkuMDA4OV0KPj4+IEJsdWV0b290aDogaGNpMDogQkNNNDM0NUM1ICgw
MDMuMDA2LjAwNikgYnVpbGQgMDA4OQo+Pj4gbW1jX2hvc3QgbW1jMDogQnVzIHNwZWVkIChzbG90
IDApID0gMTQ4NTAwMDAwSHogKHNsb3QgcmVxIDE1MDAwMDAwMEh6LCBhY3R1YWwgMTQ4NTAwMDAw
SFogZGl2ID0gMCkKPj4+IGR3bW1jX3JvY2tjaGlwIGZlMzEwMDAwLm1tYzogU3VjY2Vzc2Z1bGx5
IHR1bmVkIHBoYXNlIHRvIDU1Cj4+PiBtbWMwOiBuZXcgVUhTLUkgc3BlZWQgU0RSMTA0IFNESU8g
Y2FyZCBhdCBhZGRyZXNzIDAwMDEKPj4+IGJyY21mbWFjOiBicmNtZl9md19hbGxvY19yZXF1ZXN0
OiB1c2luZyBicmNtL2JyY21mbWFjNDM0NTYtc2RpbyBmb3IgY2hpcCBCQ000MzQ1LzkKPj4+IHVz
YmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIgYnJjbWZtYWMKPj4+IGJyY21m
bWFjIG1tYzA6MDAwMToxOiBEaXJlY3QgZmlybXdhcmUgbG9hZCBmb3IgYnJjbS9icmNtZm1hYzQz
NDU2LXNkaW8ucGluZTY0LHBpbmVib29rLXByby5iaW4gZmFpbGVkIHdpdGggZXJyb3IgLTIKPj4+
IGJyY21mbWFjOiBicmNtZl9zZGlvX2J1c19yeGN0bDogcmVzdW1lZCBvbiB0aW1lb3V0Cj4+PiBp
ZWVlODAyMTEgcGh5MDogYnJjbWZfYnVzX3N0YXJ0ZWQ6IGZhaWxlZDogLTExMAo+Pj4gaWVlZTgw
MjExIHBoeTA6IGJyY21mX2F0dGFjaDogZG9uZ2xlIGlzIG5vdCByZXNwb25kaW5nOiBlcnI9LTEx
MAo+Pj4gYnJjbWZtYWM6IGJyY21mX3NkaW9fZmlybXdhcmVfY2FsbGJhY2s6IGJyY21mX2F0dGFj
aCBmYWlsZWQKPj4+Cj4+PiBjb21wYXJlZCB0byA2LjE3IGluc3RlYWQgb2YgbGFzdCA0IGxpbmVz
IHdpdGggZXJyb3JzIHRoZXJlJ3Mgc2luZ2xlIG9uZQo+Pj4gd2l0aCBpbmZvIGFib3V0IGxvYWRl
ZCBmaXJtd2FyZToKPj4+Cj4+PiBicmNtZm1hYzogYnJjbWZfY19wcmVpbml0X2RjbWRzOiBGaXJt
d2FyZTogQkNNNDM0NS85IHdsMDogTWF5IDE0IDIwMjAgMTc6MjY6MDggdmVyc2lvbiA3Ljg0LjE3
LjEgKHI4NzE1NTQpIEZXSUQgMDEtM2Q5ZTFkODcKPj4+Cj4+PiBCaXNlY3RlZCB0bzoKPj4+Cj4+
PiA2ZDU0ZDkzNTA2MmUyZDRhN2QzZjc3OWNlYjllZWZmMTA4ZDA1MzVkIGlzIHRoZSBmaXJzdCBu
ZXcgY29tbWl0Cj4+PiBjb21taXQgNmQ1NGQ5MzUwNjJlMmQ0YTdkM2Y3NzljZWI5ZWVmZjEwOGQw
NTM1ZCAoSEVBRCkKPj4+IEF1dGhvcjogUGV0ZXIgUm9iaW5zb24gPHBicm9iaW5zb25AZ21haWwu
Y29tPgo+Pj4gRGF0ZTogICBXZWQgQXVnIDI3IDE2OjMwOjM3IDIwMjUKPj4+Cj4+PiAgICAgYXJt
NjQ6IGR0czogcm9ja2NoaXA6IEZ1cnRoZXIgZGVzY3JpYmUgdGhlIFdpRmkgZm9yIHRoZSBQaW5l
Ym9vayBQcm8KPj4+Cj4+PiAgICAgVXBkYXRlIHRoZSB3YWtlLXVwIHBpbiBhbmQgYXNzb2NpYXRl
ZCBpbnRlcnVwdCBkZXRhaWxzIGZvciB0aGUKPj4+ICAgICBQaW5lYm9vayBQcm8gV2lGaSBtb2R1
bGUuCj4+Pgo+Pj4gICAgIFNpZ25lZC1vZmYtYnk6IFBldGVyIFJvYmluc29uIDxwYnJvYmluc29u
QGdtYWlsLmNvbT4KPj4+ICAgICBMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUw
ODI3MTQzMDQwLjE2NDQ4NjctMS1wYnJvYmluc29uQGdtYWlsLmNvbQo+Pj4gICAgIFNpZ25lZC1v
ZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4+Pgo+Pj4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVib29rLXByby5kdHMgfCAxOCArKysrKysr
KysrKysrKysrKysKPj4+ICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQo+Pj4KPj4+
Cj4+PiBXaXRoIHRoaXMgY29tbWl0IHJldmVydGVkIG9uIHRvcCBvZiA2LjE4LjEgd2lyZWxlc3Mg
Y29ubmVjdGlvbiB3b3Jrcwo+Pj4gZmluZS4KPj4+Cj4+PiBOb3Qgc3VyZSB3aGF0IGNvdWxkIGJl
IHJlbGV2YW50IGJ1dDoKPj4+IC0gaXQncyBhbiBlYXJseSBtb2RlbCwgSSB0aGluayBzZWNvbmQg
YmF0Y2gsIGRlbGl2ZXJlZCBlbmQgb2YgMjAxOQo+Pgo+PiBJcyBpdCB0aGUgU3lub3B0aWNzIG9y
IHRoZSBDeXByZXNzL0luZmluZW9uIG1vZHVsZT8gV2hhdCBmaXJtd2FyZSBhcmUgeW91IHVzaW5n
Pwo+Pgo+Pj4gLSBtYWlubGluZSB1Ym9vdCAyMDI1LjEwIGlzIHVzZWQKPj4+Cj4+Pgo+Pj4gI3Jl
Z3pib3QgaW50cm9kdWNlZDogNmQ1NGQ5MzUwNgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
