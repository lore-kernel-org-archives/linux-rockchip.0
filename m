Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B838CC531DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Aug 2024 20:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rf6I4AOxLOdKMPNZ+IR69hp855RgNi6JGhLWoTTusyI=; b=wmVIrCh/UMY4lF
	YIB3xOmBEQ8yHrVnO59vXGGjPuNfntKB3dW7c9TPaa7DaSBtaOx00w8M1CLmw5uMfc1v3wqTA5vM4
	REo8RXVP6NphYf3VNqPnx4ofY2/6ym21xkm9dfs9g1BH5b1GtCV1tXCXYMxPzXKyqx77V8ZgEWmVh
	vN5FWZe/y/Z0ex1iNxzt3VlPAIPObkuEU77KWQ/79UPXIPbmsehqTlP30Fge4FVlBApyh0LJ5eNLw
	kETE0cqQfuKql0rM+oPzIa2fraDrCxvWgiDhOWlogWY9Cj8pyn+jGAna8IaFLnuetYkyhdAcN5kZL
	ETBDBJ6y6qt+mSH6Rg9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfPfY-0000000Fh17-3E04;
	Sat, 17 Aug 2024 20:05:00 +0000
Received: from smtpbgbr1.qq.com ([54.207.19.206])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfPfU-0000000Fgzm-3quc
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Aug 2024 20:04:59 +0000
X-QQ-mid: bizesmtp85t1723925062tzsbwaiz
X-QQ-Originating-IP: CBGgm4hhFCjI2/gjcT4v0DHMDAL6Xep/C4wbePg+xOY=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 18 Aug 2024 04:04:19 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 5138856890497871707
Message-ID: <B26198585C33E0EC+958ace8d-0f31-4fc1-acc2-f090a31fa2e6@radxa.com>
Date: Sun, 18 Aug 2024 05:04:19 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: add support for Radxa ROCK
 Pi E v3.0
To: Dragan Simic <dsimic@manjaro.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240816213429.1093-1-naoki@radxa.com>
 <20240816213429.1093-2-naoki@radxa.com> <1819066.TLkxdtWsSY@diego>
 <85AB3D0B7214AEEA+d54aaa4a-ce0b-43ef-8cb8-ea2c2f305bcd@radxa.com>
 <cd08ce18bde728e2b33a995834441399@manjaro.org>
 <10ac45cf5bb5dfab9c08160c826c9b28@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <10ac45cf5bb5dfab9c08160c826c9b28@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240817_130457_884217_3B771A04 
X-CRM114-Status: GOOD (  11.54  )
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

SGksCgpPbiA4LzE4LzI0IDA0OjUxLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gT24gMjAyNC0wOC0x
NyAyMToyOCwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+PiBIZWxsbyBGdWthdW1pLAo+Pgo+PiBPbiAy
MDI0LTA4LTE3IDAwOjIwLCBGVUtBVU1JIE5hb2tpIHdyb3RlOgo+Pj4gT24gOC8xNy8yNCAwNzox
MSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+Pj4gQW0gRnJlaXRhZywgMTYuIEF1Z3VzdCAyMDI0
LCAyMzozNDoyOSBDRVNUIHNjaHJpZWIgRlVLQVVNSSBOYW9raToKPj4+Pj4gUmFkeGEgUk9DSyBQ
aSBFIHYzLjAgaXMgYSBjb21wYWN0IG5ldHdvcmtpbmcgU0JDWzFdIHVzaW5nIHRoZSBSb2NrY2hp
cAo+Pj4+PiBSSzMzMjggY2hpcCB0aGF0IHNoaXBzIGluIGEgbnVtYmVyIG9mIFJBTS9lTU1DL1dp
RmkvQlQgY29uZmlndXJhdGlvbnM6Cj4+Pj4+Cj4+Pj4+IC0gUm9ja2NoaXAgUkszMzI4IFNvQwo+
Pj4+PiAtIFF1YWQgQTUzIENQVQo+Pj4+PiAtIDUxMk1CLzFHQi8yR0IgRERSNCBSQU0KPj4+IChz
bmlwKQo+Pj4+IGNhbiB5b3UgcGxlYXNlIGRlc2NyaWJlIHdoYXQgaXMgZGlmZmVyZW50IGluIHRo
YXQgdjMgYm9hcmQ/Cj4+Pj4gRGVzY3JpYmluZyB3aGF0IGlzIGRpZmZlcmVudCB0byByZXF1aXJl
IGEgc2VwYXJhdGUgYm9hcmQgc2hvdWxkJ3ZlIGJlZW4KPj4+PiBwYXJ0IG9mIHRoZSBjb21taXQg
bWVzc2FnZS4KPj4+Pgo+Pj4+IEJlY2F1c2UgZnJvbSB0aG9zZSBjaGFuZ2VzLCB0aGUgYm90dG9t
IGxpbmUgY3VycmVudGx5IHNlZW1zIHRvIGJlCj4+Pj4gdGhlIHNhbWUgYm9hcmQgd2l0aCBzd2Fw
cGVkIG1tYyBhbGlhc2VzPwo+Pj4KPj4+IGl0J3MgbmV3IGJvYXJkIHdoaWNoIHVzZXMgRERSNCBS
QU0gKGluc3RlYWQgb2YgRERSMyBSQU0gb24gUGkgRSkuCj4+PiBkaWZmZXJlbnQgYm9vdGxvYWRl
ciAoVS1Cb290KSBpcyByZXF1aXJlZC4KPj4+Cj4+PiBhZGRpbmcgdjMgZHRzIHNlZW1zIG5vdCB0
byBiZSBzbyBpbXBvcnRhbnQgZm9yIExpbnV4LCBidXQgaXQncyB2ZXJ5Cj4+PiBpbXBvcnRhbnQg
Zm9yIFUtQm9vdCBhbmQgT3BlbldydChpdCBpbmNsdWRlcyBib290bG9hZGVyIGZvcgo+Pj4gZGlz
dHJpYnV0ZWQgYmluYXJ5KS4KPj4KPj4gQXJlbid0IHRoZXJlIGRpZmZlcmVudCBtZXRob2RzIHRo
YXQgYWxsb3cgc3VjaCBib2FyZCB2YXJpYW50cyB0byBiZQo+PiBzdXBwb3J0ZWQgaW4gVS1Cb290
LCB3aXRoIG5vIG5lZWQgZm9yIGEgc2VwYXJhdGUgRFQgaW4gdGhlIGtlcm5lbD8KPj4gSUlSQywg
dGhlcmUgYXJlIGFscmVhZHkgbW9yZSB0aGFuIGEgZmV3IGV4YW1wbGVzIG9mIHN1Y2ggYm9hcmQg
dmFyaWFudHMsCj4+IHdoaWNoIHJlcXVpcmUgZGlmZmVyZW50IERSQU0gaW5pdGlhbGl6YXRpb24s
IHdoaWNoIGlzIGNvdmVyZWQgaW4gVS1Cb290Cj4+IGJ5IHByb3ZpZGluZyBkaWZmZXJlbnQgYnVp
bGRzIHRoYXQgdXNlIHRoZSBzYW1lIERULgo+IAo+IEFzIGFuIGV4YW1wbGUsIHBsZWFzZSBoYXZl
IGEgbG9vayBhdCB0aGUgZm9sbG93aW5nIGZpbGVzIGluIFUtQm9vdDoKPiAKPiAtIGFyY2gvYXJt
L2R0cy9yazMzOTktbmFub3BpLW00LXUtYm9vdC5kdHNpCj4gLSBhcmNoL2FybS9kdHMvcmszMzk5
LW5hbm9waS1tNC0yZ2ItdS1ib290LmR0c2kKPiAtIGNvbmZpZ3MvbmFub3BpLW00LXJrMzM5OV9k
ZWZjb25maWcKPiAtIGNvbmZpZ3MvbmFub3BpLW00LTJnYi1yazMzOTlfZGVmY29uZmlnCj4gCj4g
QmFzaWNhbGx5LCB0aGVyZSdzIG5vIG5lZWQgZm9yIHNlcGFyYXRlIERUcyBpbiB0aGUga2VybmVs
LCBqdXN0IHRvIHN1cHBvcnQKPiBib2FyZCB2YXJpYW50cyB3aXRoIGRpZmZlcmVudCBEUkFNIHR5
cGVzIGluIFUtQm9vdC4KCk9wZW5XcnQgZmlybXdhcmUgdXBncmFkaW5nIHRvb2wgKHN5c3VwZ3Jh
ZGUpIHJlZmVycyAiY29tcGF0aWJsZSIgc3RyaW5nIAp0byB2YWxpZGF0ZSBuZXcgZmlybXdhcmUg
ZmlsZSBpcyBzdXJlbHkgImZvciB0aGlzIGJvYXJkIi4KCmN1cnJlbnRseSBib3RoIFBpIEUgZHRz
IGhhdmUgInJhZHhhLHJvY2twaS1lIiwgaXQgbWFrZXMgZmxhc2hpbmcgd3JvbmcgCmZpcm13YXJl
IChpbmNsdWRlIGJvb3Rsb2FlciwgVS1Cb290KSBwb3NzaWJsZS4KClJhZHhhIFJPQ0sgUGkgRSB2
MS54KEREUjMpIGFuZCBST0NLIFBpIEUgdjMoRERSNCkgYXJlIGRpZmZlcmVudCAKaW5jb21wYXRp
YmxlIGJvYXJkcywgaXQgbXVzdCBoYXZlIGRpZmZlcmVudCAiY29tcGF0aWJsZSIgc3RyaW5nLgoK
QmVzdCByZWdhcmRzLAoKLS0KRlVLQVVNSSBOYW9raQpSYWR4YSBDb21wdXRlciAoU2hlbnpoZW4p
IENvLiwgTHRkLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
