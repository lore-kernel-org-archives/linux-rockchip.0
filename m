Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4DC1C531DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Aug 2024 20:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hxgKQTyWGIAlxS15zbSHvP/uj1DWGkuWLXLrgyn2hwg=; b=GI3fLp3qmEjmNZ
	/44leSej/Ba8qI6jbZxsijIq5ruSWXk/VaebitQ7x1Pi4/Gv4E2oycDMsZeqknU6DzNoo5UgGkBol
	BCXWiDyIY+ZLCDXO3DDCjcaQ2LyERdYqWHHjhm6HyoPH22Wj3B74hTKXBxlnm/sHQkBydIq890Tc8
	LQZWRwHNvj30vrY+gsFiKDbC9ej5UGfeNmNIYjNx62WPclkyWCyn53iveK1Zx5Rc5K2h6M+mv5vG0
	h3oHaXQa39iAC9h/8jSJKW27575KL5ShyzeZXdC7kq0ClTP1bYP4H6mkzTUgp3AraAy0OtwpFWd3l
	WjTEJIlmb+5CcSr09N+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfPmr-0000000FhHU-1zqO;
	Sat, 17 Aug 2024 20:12:33 +0000
Received: from smtpbgeu2.qq.com ([18.194.254.142])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfPmk-0000000FhGd-3RIk
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Aug 2024 20:12:31 +0000
X-QQ-mid: bizesmtp77t1723925506tjl1wngu
X-QQ-Originating-IP: Lk1eH66D08nXFgcuyV1qxOac97/pn+lgXLXmmhjS5PU=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 18 Aug 2024 04:11:43 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12810706158528102203
Message-ID: <8004404B5BC5F6F8+a4938a46-868b-4058-a9a2-655a0950dbf8@radxa.com>
Date: Sun, 18 Aug 2024 05:11:42 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: add support for Radxa ROCK
 Pi E v3.0
From: FUKAUMI Naoki <naoki@radxa.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240816213429.1093-1-naoki@radxa.com>
 <20240816213429.1093-2-naoki@radxa.com> <1819066.TLkxdtWsSY@diego>
 <85AB3D0B7214AEEA+d54aaa4a-ce0b-43ef-8cb8-ea2c2f305bcd@radxa.com>
 <cd08ce18bde728e2b33a995834441399@manjaro.org>
 <10ac45cf5bb5dfab9c08160c826c9b28@manjaro.org>
 <B26198585C33E0EC+958ace8d-0f31-4fc1-acc2-f090a31fa2e6@radxa.com>
Content-Language: en-US
In-Reply-To: <B26198585C33E0EC+958ace8d-0f31-4fc1-acc2-f090a31fa2e6@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240817_131227_344649_2EAEAF05 
X-CRM114-Status: GOOD (  12.74  )
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

T24gOC8xOC8yNCAwNTowNCwgRlVLQVVNSSBOYW9raSB3cm90ZToKPiBIaSwKPiAKPiBPbiA4LzE4
LzI0IDA0OjUxLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4+IE9uIDIwMjQtMDgtMTcgMjE6MjgsIERy
YWdhbiBTaW1pYyB3cm90ZToKPj4+IEhlbGxvIEZ1a2F1bWksCj4+Pgo+Pj4gT24gMjAyNC0wOC0x
NyAwMDoyMCwgRlVLQVVNSSBOYW9raSB3cm90ZToKPj4+PiBPbiA4LzE3LzI0IDA3OjExLCBIZWlr
byBTdMO8Ym5lciB3cm90ZToKPj4+Pj4gQW0gRnJlaXRhZywgMTYuIEF1Z3VzdCAyMDI0LCAyMzoz
NDoyOSBDRVNUIHNjaHJpZWIgRlVLQVVNSSBOYW9raToKPj4+Pj4+IFJhZHhhIFJPQ0sgUGkgRSB2
My4wIGlzIGEgY29tcGFjdCBuZXR3b3JraW5nIFNCQ1sxXSB1c2luZyB0aGUgCj4+Pj4+PiBSb2Nr
Y2hpcAo+Pj4+Pj4gUkszMzI4IGNoaXAgdGhhdCBzaGlwcyBpbiBhIG51bWJlciBvZiBSQU0vZU1N
Qy9XaUZpL0JUIAo+Pj4+Pj4gY29uZmlndXJhdGlvbnM6Cj4+Pj4+Pgo+Pj4+Pj4gLSBSb2NrY2hp
cCBSSzMzMjggU29DCj4+Pj4+PiAtIFF1YWQgQTUzIENQVQo+Pj4+Pj4gLSA1MTJNQi8xR0IvMkdC
IEREUjQgUkFNCj4+Pj4gKHNuaXApCj4+Pj4+IGNhbiB5b3UgcGxlYXNlIGRlc2NyaWJlIHdoYXQg
aXMgZGlmZmVyZW50IGluIHRoYXQgdjMgYm9hcmQ/Cj4+Pj4+IERlc2NyaWJpbmcgd2hhdCBpcyBk
aWZmZXJlbnQgdG8gcmVxdWlyZSBhIHNlcGFyYXRlIGJvYXJkIHNob3VsZCd2ZSAKPj4+Pj4gYmVl
bgo+Pj4+PiBwYXJ0IG9mIHRoZSBjb21taXQgbWVzc2FnZS4KPj4+Pj4KPj4+Pj4gQmVjYXVzZSBm
cm9tIHRob3NlIGNoYW5nZXMsIHRoZSBib3R0b20gbGluZSBjdXJyZW50bHkgc2VlbXMgdG8gYmUK
Pj4+Pj4gdGhlIHNhbWUgYm9hcmQgd2l0aCBzd2FwcGVkIG1tYyBhbGlhc2VzPwo+Pj4+Cj4+Pj4g
aXQncyBuZXcgYm9hcmQgd2hpY2ggdXNlcyBERFI0IFJBTSAoaW5zdGVhZCBvZiBERFIzIFJBTSBv
biBQaSBFKS4KPj4+PiBkaWZmZXJlbnQgYm9vdGxvYWRlciAoVS1Cb290KSBpcyByZXF1aXJlZC4K
Pj4+Pgo+Pj4+IGFkZGluZyB2MyBkdHMgc2VlbXMgbm90IHRvIGJlIHNvIGltcG9ydGFudCBmb3Ig
TGludXgsIGJ1dCBpdCdzIHZlcnkKPj4+PiBpbXBvcnRhbnQgZm9yIFUtQm9vdCBhbmQgT3Blbldy
dChpdCBpbmNsdWRlcyBib290bG9hZGVyIGZvcgo+Pj4+IGRpc3RyaWJ1dGVkIGJpbmFyeSkuCj4+
Pgo+Pj4gQXJlbid0IHRoZXJlIGRpZmZlcmVudCBtZXRob2RzIHRoYXQgYWxsb3cgc3VjaCBib2Fy
ZCB2YXJpYW50cyB0byBiZQo+Pj4gc3VwcG9ydGVkIGluIFUtQm9vdCwgd2l0aCBubyBuZWVkIGZv
ciBhIHNlcGFyYXRlIERUIGluIHRoZSBrZXJuZWw/Cj4+PiBJSVJDLCB0aGVyZSBhcmUgYWxyZWFk
eSBtb3JlIHRoYW4gYSBmZXcgZXhhbXBsZXMgb2Ygc3VjaCBib2FyZCB2YXJpYW50cywKPj4+IHdo
aWNoIHJlcXVpcmUgZGlmZmVyZW50IERSQU0gaW5pdGlhbGl6YXRpb24sIHdoaWNoIGlzIGNvdmVy
ZWQgaW4gVS1Cb290Cj4+PiBieSBwcm92aWRpbmcgZGlmZmVyZW50IGJ1aWxkcyB0aGF0IHVzZSB0
aGUgc2FtZSBEVC4KPj4KPj4gQXMgYW4gZXhhbXBsZSwgcGxlYXNlIGhhdmUgYSBsb29rIGF0IHRo
ZSBmb2xsb3dpbmcgZmlsZXMgaW4gVS1Cb290Ogo+Pgo+PiAtIGFyY2gvYXJtL2R0cy9yazMzOTkt
bmFub3BpLW00LXUtYm9vdC5kdHNpCj4+IC0gYXJjaC9hcm0vZHRzL3JrMzM5OS1uYW5vcGktbTQt
MmdiLXUtYm9vdC5kdHNpCj4+IC0gY29uZmlncy9uYW5vcGktbTQtcmszMzk5X2RlZmNvbmZpZwo+
PiAtIGNvbmZpZ3MvbmFub3BpLW00LTJnYi1yazMzOTlfZGVmY29uZmlnCj4+Cj4+IEJhc2ljYWxs
eSwgdGhlcmUncyBubyBuZWVkIGZvciBzZXBhcmF0ZSBEVHMgaW4gdGhlIGtlcm5lbCwganVzdCB0
byAKPj4gc3VwcG9ydAo+PiBib2FyZCB2YXJpYW50cyB3aXRoIGRpZmZlcmVudCBEUkFNIHR5cGVz
IGluIFUtQm9vdC4KPiAKPiBPcGVuV3J0IGZpcm13YXJlIHVwZ3JhZGluZyB0b29sIChzeXN1cGdy
YWRlKSByZWZlcnMgImNvbXBhdGlibGUiIHN0cmluZyAKPiB0byB2YWxpZGF0ZSBuZXcgZmlybXdh
cmUgZmlsZSBpcyBzdXJlbHkgImZvciB0aGlzIGJvYXJkIi4KPiAKPiBjdXJyZW50bHkgYm90aCBQ
aSBFIGR0cyBoYXZlICJyYWR4YSxyb2NrcGktZSIsIGl0IG1ha2VzIGZsYXNoaW5nIHdyb25nIAo+
IGZpcm13YXJlIChpbmNsdWRlIGJvb3Rsb2FlciwgVS1Cb290KSBwb3NzaWJsZS4KCl5DdXJyZW50
bHkgYm90aCBQaSBFIGZpcm13YXJlIGhhdmUgLi4uCgo+IFJhZHhhIFJPQ0sgUGkgRSB2MS54KERE
UjMpIGFuZCBST0NLIFBpIEUgdjMoRERSNCkgYXJlIGRpZmZlcmVudCAKPiBpbmNvbXBhdGlibGUg
Ym9hcmRzLCBpdCBtdXN0IGhhdmUgZGlmZmVyZW50ICJjb21wYXRpYmxlIiBzdHJpbmcuCj4gCj4g
QmVzdCByZWdhcmRzLAo+IAo+IC0tIAo+IEZVS0FVTUkgTmFva2kKPiBSYWR4YSBDb21wdXRlciAo
U2hlbnpoZW4pIENvLiwgTHRkLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
