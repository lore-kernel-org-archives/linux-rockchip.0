Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD404D2CE12
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 17:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wt/q++zTrERfj14B763ylmWj+a9tJrvLusjf79FqxjY=; b=ly1d31yq6nUE4Z
	TMHRJEUASP7Umvn16BvUHfH56iQNysJptCY3Mwf12NsMtjwvwMYIJlCG5EjZfnkakEsMuA3jz9TcE
	o6hsRVhoWA6sSikknnfX9yobW0vDNEA/77ftc+2EyLheLlWh0gKep5UZHFM/12YQidOUBN/OtvHKA
	jHxAqtdi9gywM5QXDwnVcFnPhKIWeBgxKBxt9gsgWHKRwRuhWsMnFX//DkPqVMGEPbwOzY4z6MkIF
	E2wLxdGkawJhb/76K6yaOHMZkUCaUO3CC7nAhGcN6qdZ7Mvb24VMloCylgYxaubwei6Mt2LualniW
	Lo8cq3qY9IrJeyzYpnDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3J7W-0000000BkBG-2Mam;
	Tue, 22 Oct 2024 17:56:38 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3J7S-0000000Bk8n-08cw
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Oct 2024 17:56:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1729619774;
 bh=YGvLjOzdMUUNlRyiBCim3QXE0H0tSBA3xLQ6miTXyIw=;
 b=F205EJ2vCko4LMsf5gAXQje2kuR34Xeuuz1iVeTEbP5ZB7nDURVWbZzeVHLj3/1FlsMJ53VKB
 aWaV/IcDXE0YcFqzFNEzJmr6D87bruShq1Y8EkyaatQuNfNQlt6OTJXod1esN4eRccTOxGz3duB
 X78Oy/dzRVmV0Z7HsL93poR6RS4dLdlS5rKWmi6ZFJvaT6a/trtvR7pbDCGrkXG2IxkWc3FhhAC
 oldXeQ2Q1RkRKu87LqLi9WsxWTi8NwOr1jyfkxL2BUiZ7o0KIPklf4Gn0HvZDDYfP8JH0zvWNHf
 Kh19IuRBKkf1lKa2P3iVFgejQWW2KJIbFKZ5ceBUGwkA==
Message-ID: <c2a4e8a8-9466-41c4-83b3-57210fdf5a5c@kwiboo.se>
Date: Tue, 22 Oct 2024 19:56:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add FriendlyARM NanoPi R3S
 board
To: Tianling Shen <cnsztl@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chris Morgan <macromorgan@hotmail.com>, Andy Yan <andyshrk@163.com>,
 Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <13bb8657-f048-4f79-a2c1-3680445f2bef@kwiboo.se>
 <20241022173901.892190-1-cnsztl@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20241022173901.892190-1-cnsztl@gmail.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 6717e73d289888ca1b5a4034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_105634_266606_4FB7EE9E 
X-CRM114-Status: GOOD (  17.85  )
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

SGkgVGlhbmxpbmcsCgpPbiAyMDI0LTEwLTIyIDE5OjM4LCBUaWFubGluZyBTaGVuIHdyb3RlOgo+
IEhpIEpvbmFzLAo+IAo+IE9uIFdlZCwgT2N0IDIzLCAyMDI0IGF0IDEyOjQ5w6LigqzCr0FNIEpv
bmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4gd3JvdGU6Cj4+Cj4+IEhpIFRpYW5saW5nLAo+
Pgo+PiBPbiAyMDI0LTEwLTIwIDE5OjM5LCBUaWFubGluZyBTaGVuIHdyb3RlOgo+Pj4gVGhlIE5h
bm9QaSBSM1MoYXMgIlIzUyIpIGlzIGFuIG9wZW4gc291cmNlIHBsYXRmb3JtIHdpdGggZHVhbC1H
YnBzCj4+PiBFdGhlcm5ldCBwb3J0cyBkZXNpZ25lZCBhbmQgZGV2ZWxvcGVkIGJ5IEZyaWVuZGx5
RWxlYyBmb3IgSW9UCj4+PiBhcHBsaWNhdGlvbnMuCj4+Pgo+Pj4gU3BlY2lmaWNhdGlvbjoKPj4+
IC0gUm9ja2NoaXAgUkszNTY2Cj4+PiAtIDJHQiBMUEREUjRYIFJBTQo+Pj4gLSBvcHRpb25hbCAz
MkdCIGVNTUMgbW9kdWxlCj4+PiAtIFNEIGNhcmQgc2xvdAo+Pj4gLSAyeCAxMDAwIEJhc2UtVAo+
Pj4gLSAzeCBMRURzIChQT1dFUiwgTEFOLCBXQU4pCj4+PiAtIDJ4IEJ1dHRvbnMgKFJlc2V0LCBN
YXNrUk9NKQo+Pj4gLSAxeCBVU0IgMy4wIFBvcnQKPj4+IC0gVHlwZS1DIDVWIDJBIFBvd2VyCj4+
Pgo+Pj4gU2lnbmVkLW9mZi1ieTogVGlhbmxpbmcgU2hlbiA8Y25zenRsQGdtYWlsLmNvbT4KPj4+
IC0tLQo+Pj4gw4LCoGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgw4LCoCDD
gsKgIMOCwqAgw4LCoCB8IMOCwqAgMSArCj4+PiDDgsKgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU2Ni1uYW5vcGktcjNzLmR0cyDDgsKgIHwgNTU0ICsrKysrKysrKysrKysrKysrKwo+Pj4gw4LC
oDIgZmlsZXMgY2hhbmdlZCwgNTU1IGluc2VydGlvbnMoKykKPj4+IMOCwqBjcmVhdGUgbW9kZSAx
MDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtbmFub3BpLXIzcy5kdHMK
Pj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmls
ZSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPj4+IGluZGV4IDhlMTAy
NWNiNWQyMC4uZTY0MTAzM2QyM2QxIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9NYWtlZmlsZQo+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9NYWtlZmlsZQo+Pj4gQEAgLTEwOSw2ICsxMDksNyBAQCBkdGItJChDT05GSUdfQVJDSF9ST0NL
Q0hJUCkgKz0gcmszNTY2LXNvcXVhcnR6LW1vZGVsLWEuZHRiCj4+PiDDgsKgZHRiLSQoQ09ORklH
X0FSQ0hfUk9DS0NISVApICs9IHJrMzU2Ni1ib3gtZGVtby5kdGIKPj4+IMOCwqBkdGItJChDT05G
SUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY2LWxja2ZiLXRzcGkuZHRiCj4+PiDDgsKgZHRiLSQo
Q09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU2Ni1sdWJhbmNhdC0xLmR0Ygo+Pj4gK2R0Yi0k
KENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1NjYtbmFub3BpLXIzcy5kdGIKPj4+IMOCwqBk
dGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LWJwaS1yMi1wcm8uZHRiCj4+PiDD
gsKgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU2OC1ldmIxLXYxMC5kdGIKPj4+
IMOCwqBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LWZhc3RyaGluby1yNjZz
LmR0Ygo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2
LW5hbm9waS1yM3MuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtbmFu
b3BpLXIzcy5kdHMKPj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+PiBpbmRleCAwMDAwMDAwMDAw
MDAuLjk1MWRkOWJjYjRiMAo+Pj4gLS0tIC9kZXYvbnVsbAo+Pj4gKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NjYtbmFub3BpLXIzcy5kdHMKPj4+IEBAIC0wLDAgKzEsNTU0
IEBACj4+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIgT1Ig
TUlUCj4+PiArLyoKPj4+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjAgUm9ja2NoaXAgRWxlY3Ryb25p
Y3MgQ28uLCBMdGQuCj4+PiArICoKPj4+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjQgRnJpZW5kbHlF
bGVjIENvbXB1dGVyIFRlY2guIENvLiwgTHRkLgo+Pj4gKyAqIChodHRwOi8vd3d3LmZyaWVuZGx5
YXJtLmNvbS8KClRoaXMgY291bGQgcHJvYmFibHkgYmUgdXBkYXRlZCB0byB1c2UgaHR0cHM6Ly93
d3cuZnJpZW5kbHllbGVjLmNvbS8KCj4+PiArICoKPj4+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjQg
VGlhbmxpbmcgU2hlbiA8Y25zenRsQGdtYWlsLmNvbT4KPj4+ICsgKi8KPj4+ICsKPj4+ICsvZHRz
LXYxLzsKPj4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+Cj4+PiArI2luY2x1
ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2lucHV0Lmg+Cj4+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L2xlZHMvY29tbW9uLmg+Cj4+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BpbmN0cmwvcm9ja2No
aXAuaD4KPj4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3Mvc29jL3JvY2tjaGlwLHZvcDIuaD4KPj4+
ICsjaW5jbHVkZSAicmszNTY2LmR0c2kiCj4+PiArCj4+PiArLyB7Cj4+PiArIMOCwqAgw4LCoCBt
b2RlbCA9ICJGcmllbmRseUFSTSBOYW5vUGkgUjNTIjsKPj4KPj4gUGxlYXNlIHVzZSB0aGUgbWFy
a2V0aW5nIG5hbWUsIGFuZCB0aGUgbmFtZSBhZGRlZCBpbiBiaW5kaW5nOgo+Pgo+PiDDgsKgIMOC
wqBGcmllbmRseUVsZWMgTmFub1BpIFIzUwo+IAo+IFNvcnJ5IGZvciB0aGUgY29weSAmIHBhc3Rl
IGVycm9yLCB3aWxsIGZpeCBpdCBpbiBuZXcgcGF0Y2guCgpUaGUgY29tbWl0IHN1YmplY3QgY291
bGQgcHJvYmFibHkgYWxzbyBiZSB1cGRhdGVkIDotKQoKPiAKPj4KPj4+ICsgw4LCoCDDgsKgIGNv
bXBhdGlibGUgPSAiZnJpZW5kbHlhcm0sbmFub3BpLXIzcyIsICJyb2NrY2hpcCxyazM1NjYiOwo+
Pj4gKwo+Pj4gKyDDgsKgIMOCwqAgYWxpYXNlcyB7Cj4+PiArIMOCwqAgw4LCoCDDgsKgIMOCwqAg
w4LCoCDDgsKgIGV0aGVybmV0MCA9ICZnbWFjMTsKPj4+ICsgw4LCoCDDgsKgIMOCwqAgw4LCoCDD
gsKgIMOCwqAgbW1jMCA9ICZzZG1tYzA7Cj4+PiArIMOCwqAgw4LCoCDDgsKgIMOCwqAgw4LCoCDD
gsKgIG1tYzEgPSAmc2RoY2k7Cj4+Cj4+IFRoaXMgYm9hcmQgY29tZXMgd2l0aCBvbi1ib2FyZCBl
TU1DIHRoaXMgcGxlYXNlIHVzZSBtbWMwIGFzIGFsaWFzIGZvcgo+PiAmc2RoY2k7IGFuZCBtbWMx
IGZvciBzZC1jYXJkLgo+IAo+IElzIHVzaW5nIG1tYzAgZm9yIHNkaGNpIGEgY29tbW9uIHByYWN0
aWNlIGZvciBlTU1DIGJvYXJkcz8KPiBUaGUgZU1NQyBtb2R1bGUgb24gUjNTIGlzIG9wdGlvbmFs
IGFuZCB1c2VycyBtYXkgZ2V0IGJvYXJkcyB3aXRob3V0IGl0LgoKVHlwaWNhbGx5IGFueSBub24t
cmVtb3ZhYmxlIHN0b3JhZ2UgKGVtbWMpIGlzIGxpc3RlZCBiZWZvcmUgcmVtb3ZhYmxlCnN0b3Jh
Z2UgKHNkLWNhcmQpIG9wdGlvbnMuIEFsc28gVS1Cb290IHdpbGwgdHJ5IHRvIG92ZXJyaWRlIGFu
ZCB1c2UKbW1jMD1zZGhjaSBhbmQgbW1jMT1zZG1tYzAgZm9yIGFsbCByazM1NnggYm9hcmRzLCBz
byBmb3IgRUZJIGJvb2luZwp1c2luZyBjb250cm9sIEZEVCB0aGUgYWxpYXMgbWF5IGJlIGRpZmZl
cmVudC4KClJlZ2FyZHMsCkpvbmFzCgpbc25pcF0KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
