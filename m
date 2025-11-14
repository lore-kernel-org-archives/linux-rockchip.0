Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB02FCE7AAA
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 10:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7gSLeIX+k8BNg9/8KUYuutRCNruta9Tyb0iLEQeS+8=; b=ZIdVKwUoSHylud
	yc6sOEa5u2R8lJPHOcPTkbQ57a29dYQOYl92G70DYmnDduojbHRScFDxJun1b3BletLebrp/r4lcE
	A69V5A5XLBjSK9scbHV9jiiTbO1TcLYG7jZy9KrFBaiXZ9DrfGDWwumIuXlQQr/VCdhWZvJ7UlqxV
	PJHBNs6vNJqkmbeY2acc1l/jcY5A/YzM9M8j8tePqJvsJLSlBmubd1i7F8SIin4jblhjvF4PHSMbk
	jtYktjo+o33xp1vkTUbLy4o4d6IdP5HYfjtOoCdfJkC5vq9HGwHN0Z7R7RzxMXaTvvJ9ndAuJnPGl
	UlVao8RF6TF/1dfVCJcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJqjf-0000000Bye2-3F4z;
	Fri, 14 Nov 2025 10:08:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJqjd-0000000Bydd-2Yhy
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 10:08:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=0ln02T6LojG3buVVSzQ5rx4KEB5R1qyW8EVRoSWyWKU=; b=Ve05QFEtfRuYPM4VuJMRMAy6GB
	YGt5ufnyN0CxH1fQydVtIT0hfqxHQ8Dgu5XJlf9or/M7oCLPbEueXvuu+a2BQ3lQlobPoaqkdMfBI
	WcCvdv2oqnVmnXhCtt4vRaRiVBPErQyBzC6G9oY4Ph2wJRdddpA07pLvX5HRaSZxQvBzjG8aEdOyB
	Cn9+KQUFZJ6INGOoZsnLo1IaAeDANXZfNpenrBUSj3G8WLMKC3LIHqWFGrpOHOwxwd7QRfcxr+sde
	U5MmXkibCXUT/0HqD+epQ7qWZar+nB8AIv4IJajkAzmy52VBY2uE20q1+NcAa+kdQUwXXo/SJQd/l
	cvr+OGtg==;
Received: from i53875ae8.versanet.de ([83.135.90.232] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJqj8-0001uf-5N; Fri, 14 Nov 2025 11:08:22 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, joseph.kogut@gmail.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com,
 quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
Date: Fri, 14 Nov 2025 11:08:21 +0100
Message-ID: <1942576.CQOukoFCf9@diego>
In-Reply-To: <194908a1-f956-ba0a-656f-7b1e8456b51d@manjaro.org>
References: <20251105051335.17652-1-naoki@radxa.com>
 <A3AD69295D2E2D65+db2dc8bd-054f-4dda-9dd1-3cc0c0feed35@radxa.com>
 <194908a1-f956-ba0a-656f-7b1e8456b51d@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_020853_671242_5E6F15A1 
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

QW0gRnJlaXRhZywgMTQuIE5vdmVtYmVyIDIwMjUsIDA5OjMyOjI5IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+IE9uIEZyaWRheSwgTm92ZW1iZXIg
MTQsIDIwMjUgMDk6MjQgQ0VULCBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+IHdyb3Rl
Ogo+ID4gT24gMTEvMTQvMjUgMTY6NTEsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gPiA+
IE9uIDE0LzExLzIwMjUgMDg6NDcsIEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4gPiA+PiBPbiAxMS8x
NC8yNSAxNjo0MiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+ID4+PiBPbiAxNC8xMS8y
MDI1IDA4OjM3LCBGVUtBVU1JIE5hb2tpIHdyb3RlOgo+ID4gPj4+PiBIaSBLcnp5c3p0b2YsCj4g
PiA+Pj4+Cj4gPiA+Pj4+IE9uIDExLzE0LzI1IDE2OjEyLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOgo+ID4gPj4+Pj4gT24gMDUvMTEvMjAyNSAwODowOCwgS3J6eXN6dG9mIEtvemxvd3NraSB3
cm90ZToKPiA+ID4+Pj4+PiBPbiAwNS8xMS8yMDI1IDA3OjU3LCBGVUtBVU1JIE5hb2tpIHdyb3Rl
Ogo+ID4gPj4+Pj4+PiBPbiAxMS81LzI1IDE1OjQzLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3Rl
Ogo+ID4gPj4+Pj4+Pj4gT24gMDUvMTEvMjAyNSAwNjoxMywgRlVLQVVNSSBOYW9raSB3cm90ZToK
PiA+ID4+Pj4+Pj4+PiBBZGQgZGV2aWNlIHRyZWUgYmluZGluZyBkb2N1bWVudGF0aW9uIGZvciB0
aGUgUmFkeGEgQ001IElPIEJvYXJkLgo+ID4gPj4+Pj4+Pj4+Cj4gPiA+Pj4+Pj4+Pj4gTGluazog
aHR0cHM6Ly9kbC5yYWR4YS5jb20vY201L3JhZHhhX2NtNV9wcm9kdWN0X2JyaWVmLnBkZgo+ID4g
Pj4+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4K
PiA+ID4+Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBKb3NlcGggS29ndXQgPGpvc2VwaC5rb2d1dEBn
bWFpbC5jb20+Cj4gPiA+Pj4+Pj4+Pgo+ID4gPj4+Pj4+Pj4gV3JvbmcgRENPIGNoYWluLgo+ID4g
Pj4+Pj4+Pj4KPiA+ID4+Pj4+Pj4+PiAtLS0KPiA+ID4+Pj4+Pj4+PiAgICAgIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCB8IDcgKysrKysrKwo+ID4g
Pj4+Pj4+Pj4KPiA+ID4+Pj4+Pj4+IE5BSywgeW91IGp1c3Qgc3RvbGVuIG93bmVyc2hpcCBvZiBh
biBhbHJlYWR5IHBvc3RlZCBwYXRjaC4KPiA+ID4+Pj4+Pj4KPiA+ID4+Pj4+Pj4gUmVhZCAiQ2hh
bmdlcyBpbiB2NiIgYW5kIHBhdGNoZXM7IG15IHBhdGNoZXMgYXJlIG5vdCB0aGUgc2FtZSBhcyB2
NS4KPiA+ID4+Pj4+Pj4gWW91ciByZXBseSBpcyB0b3RhbGx5IGluYXBwcm9wcmlhdGUuCj4gPiA+
Pj4+Pj4KPiA+ID4+Pj4+PiBJbmFwcHJvcHJpYXRlIGlzIHRha2luZyBhdXRob3JzaGlwIG9mIHNv
bWVvbmUncyBwYXRjaCwgYmVjYXVzZSB3ZSBhbGwKPiA+ID4+Pj4+PiBleHBlY3QgdG8gcHJlc2Vy
dmUgdGhlIG9yaWdpbmFsIGF1dGhvcnNoaXAuIFRoYXQncyBub3Qgb25seSBiYXNpYwo+ID4gPj4+
Pj4+IGRlY2VuY3kgYnV0IGFjdHVhbGx5IGEgc3RhbmRhcmQuCj4gPiA+Pj4+Pj4KPiA+ID4+Pj4+
PiBBZGRpdGlvbmFsbHksIHJlYWQgSm9zZXBoJ3MgcmVwbHkgdGhhdCBoZSB3YW50cyB0byBjb250
aW51ZSB0aGUgd29yazoKPiA+ID4+Pj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvQ0FN
V1NNN2lIdEF4ZXdXNEprUnFSc2lmVm5jY3FlRnZpYUNnZU95cHJLRHI5MkZPdXJnQG1haWwuZ21h
aWwuY29tLwo+ID4gPj4+Pj4+Cj4gPiA+Pj4+Pj4gWW91IGNsZWFybHkgZG8gbm90IHVuZGVyc3Rh
bmQgaG93IHRvIGNvbnRpbnVlIHdpdGggc29tZW9uZSdzIHdvcmsuCj4gPiA+Pj4+Pj4KPiA+ID4+
Pj4+PiBJdCBpcyBzdGlsbCBhIE5BSy4KPiA+ID4+Pj4+Cj4gPiA+Pj4+PiBBbmQgSSBzdGlsbCB3
YWl0IGZvciBqdXN0aWZpY2F0aW9uIHdoeSB5b3UgdG9vayBhdXRob3JzaGlwIG9mIHRoaXMKPiA+
ID4+Pj4+IHBhdGNoLCBiZWNhdXNlIHRvIG15IGV5ZSB5b3UgY2hhbmdlZCBoZXJlIG5vdGhpbmcu
Cj4gPiA+Pj4+Pgo+ID4gPj4+Pj4gU28gd2hhdCBkaWQgeW91IGNoYW5nZSBIRVJFIHRoYXQgeW91
IHRoaW5rIHlvdSBhcmUgdGhlIGF1dGhvciBub3c/Cj4gPiA+Pj4+Cj4gPiA+Pj4+IENoYW5nZXMg
aW4gdjY6Cj4gPiA+Pj4+IChQYXRjaCAxLzMpCj4gPiA+Pj4+IC0gRml4IGRlc2NyaXB0aW9uOyAi
UmFkeGEgQ001IiBpcyB0aGUgY29ycmVjdCBuYW1lCj4gPiA+Pj4KPiA+ID4+PiBIRVJFLCBpbiB0
aGlzIHBhdGNoLiBEb24ndCBwYXN0ZSBtZSBodW5kcmVkcyBvZiB1bnJlbGF0ZWQgY29kZS4gV3Jp
dGUKPiA+ID4+PiBjb25jaXNlIGFuZCBwcmVjaXNlIGFuc3dlcnMvY29tbWVudHMuCj4gPiA+Pgo+
ID4gPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvQUUwNzM1QTZDNzk3
Q0NGRisxMDQ5NmQ3My03YzBhLTQ4ODQtOTU2MS0yNDcyMTMwNWEyNGZAcmFkeGEuY29tLwo+ID4g
Pj4KPiA+ID4+IHwgQnkgdGhlIHdheSwgYXQgc29tZSBwb2ludCBJIHN3aXRjaGVkIGZyb20gImNv
bnRpbnVpbmcgeW91ciB3b3JrIiB0bwo+ID4gPj4gfCAicmVjcmVhdGluZyBhIG5ldyBvbmUgYmFz
ZWQgb24gbXkgY3VycmVudCB3b3JrLiIgVGhlIHJlc3VsdHMgb2YgbXkKPiA+ID4+IHwgY3VycmVu
dCB3b3JrKCozKSBoYXZlIGNoYW5nZWQgc2lnbmlmaWNhbnRseS4KPiA+ID4gCj4gPiA+IFNvIG5l
eHQgdGltZSBJIHdpbGwgdGFrZSB5b3VyIHBhdGNoLCB5b3VyIGNvZGUsIHNheSAiSSByZWNyZWF0
ZWQgaXQiIGFuZAo+ID4gPiBzdWJtaXQgdW5kZXIgbXkgYXV0aG9yc2hpcCBhbmQgZm9yIHlvdSBp
dCBpcyBmaW5lPwo+ID4gCj4gPiBSZWdhcmRpbmcgQ001IHBhdGNoZXMsIEknbSBmaW5lLgo+ID4g
Cj4gPiA+IFBsZWFzZSB0YWtlIEpvc2VwaCdzIHBhdGNoIGluc3RlYWQuIFJlYWQgc3VibWl0dGlu
ZyBwYXRjaGVzIGRvYyB0bwo+ID4gPiB1bmRlcnN0YW5kIHdoaWNoIG9uZSBtb3JlIHRhZyBoYXMg
dG8gYmUgYWRkZWQgd2hlbiBzZW5kaW5nIHNvbW9lbmUKPiA+ID4gZWxzZSdzIHdvcmsuCj4gPiA+
IAo+ID4gPiBJbiB0aGUgZnV0dXJlLCBJIHNpbmNlcmVseSBzdWdnZXN0IGF2b2lkaW5nIHJlLWNy
ZWF0aW5nIHBlb3BsZSdzIHdvcmsKPiA+ID4gYnV0IGJ1aWxkaW5nIG9uIHRvcCwgYmVjYXVzZSB5
b3UganVzdCBkdXBsaWNhdGUgdGhlIGVmZm9ydC4KPiA+IAo+ID4gSSB1bmRlcnN0YW5kIHRoYXQg
eW91IGRvbid0IHVuZGVyc3RhbmQgaG93IEkgbWFkZSBlZmZvcnRzIHRvIGJ1aWxkIG15IAo+ID4g
d29yayBvbiB0b3Agb2YgSm9zZXBoJ3MgcGF0Y2hlcy4KPiAKPiBNYXliZSBhIHNvbHV0aW9uIGZv
ciB0aGlzIGh1Z2UgbWVzcyBjb3VsZCBiZSB0aGF0IE5hb2tpIHN1Ym1pdHMKPiB1bm1vZGlmaWVk
IHBhdGNoZXMgZnJvbSBKb3NlcGggZmlyc3QsIHVzaW5nIHRoZSBzdGFuZGFyZCBwcm9jZWR1cmUK
PiBmb3IgdGhhdCwgYW5kIHRoZW4gdGhlIGFkZGl0aW9uYWwgcGF0Y2goZXMpIHRoYXQgaW1wcm92
ZSBKb3NlcGgncwo+IHdvcms/ICBBbGwgdGhhdCBpbiB0aGUgc2FtZSBzZXJpZXMuCgpUaGVyZSBp
cyBhbHNvIENvLWRldmVsb3BlZC1ieSBhcyBhbiBvcHRpb24uCgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
