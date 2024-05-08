Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D94CC04FFE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 11:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eq8UfOwiJt+4AuaWvYGTUD/Tey8KDOk5MBEd7UF5ucM=; b=1dKCSCM9pai8RW8cVn5s7pIVRa
	opjG0Es6ScbOmV/vJbsewvHz3wVd+XzC81nz6dfnzNX7wFcr7S1IZ66gizzI57T+vty+PBF4FZtBC
	93TpinJLCc2evQHbVPmJWicvUeJ8jyWc51j4sPS5qmBAXHUkoiwLsxRqG/4AQNH0+dZT9Cu7NFjzG
	BfMHYnLXdrdbB7xKbrXDdJjgbCyKycTJYj009DOoYM01zE8UZGhNko0Rxr45f9b57n0Y+WMC935YN
	pRCwCrDz9gJ0MgUe0l7Dd0PM0OFFRRxqniZW9dg6E7ukAR1naldDcr4bERmRHjnn5TOgQGb48Z8mg
	dMi1P/cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4fkV-0000000FKOv-1Ccd;
	Wed, 08 May 2024 11:46:15 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4fkP-0000000FKO7-3lkE;
	Wed, 08 May 2024 11:46:12 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1715168767;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/7KXEahwdtvUHXhII1BOAbQafO3CV4psWNz/FLhIG2g=;
	b=QDBh2tlZN0XdVR745PuNwmWJC81aogbhng6PQhi+qBJqxqGUGmC/52WntbUpuDCRS7Q1rJ
	qpyGLnZv9v/rePHAR/gDp30SXIk8+DSC5TOPtgFYCxoasYkLMniuupOWuE3WcfrEUYdnvb
	iJK34MVophrNrh0fei13bBCDKN48ECL5q/DjXqTakJ1wF/zJ17M3LQyjQZkqW6KOlMLK4d
	ieaFbxtAx75tFD/QWjRLux7J6Zf9sRUW3ZWzp6MbwpJHPWjDM3/emsJ5vyZBizH8VCHtvf
	3vDyP87b1LjoTrQf3evKXqaO4jYE5EY9RPYtfjGblH3ctfOp2MrxxMl8FhBiKA==
Date: Wed, 08 May 2024 13:46:06 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Alexey Charkov <alchark@gmail.com>, Diederik de Haas
 <didi.debian@cknow.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu
 Tsai <wens@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/6] arm64: dts: rockchip: enable thermal management on
 all RK3588 boards
In-Reply-To: <CANAwSgTU7UF_RaNnVSZR7SehQqC7Eo6D=JqT11gN7jK2diN_Ug@mail.gmail.com>
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <20240506-rk-dts-additions-v4-2-271023ddfd40@gmail.com>
 <2543817.5xW6y1K4kI@bagend>
 <CABjd4Yw-JA5=SfcgtVNYZN37hFbqf14Ut1yHTSz1YZiZ3NQ-pw@mail.gmail.com>
 <CANAwSgTU7UF_RaNnVSZR7SehQqC7Eo6D=JqT11gN7jK2diN_Ug@mail.gmail.com>
Message-ID: <a1fb157c88f420cd85d56edff2a4d85b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_044610_346663_A9399402 
X-CRM114-Status: GOOD (  29.91  )
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

SGVsbG8gQW5hbmQsCgpPbiAyMDI0LTA1LTA4IDEzOjQwLCBBbmFuZCBNb29uIHdyb3RlOgo+IE9u
IE1vbiwgNiBNYXkgMjAyNCBhdCAxODoyNCwgQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwu
Y29tPiB3cm90ZToKPj4gT24gTW9uLCBNYXkgNiwgMjAyNCBhdCA0OjI54oCvUE0gRGllZGVyaWsg
ZGUgSGFhcyAKPj4gPGRpZGkuZGViaWFuQGNrbm93Lm9yZz4gd3JvdGU6Cj4+ID4gT24gTW9uZGF5
LCA2IE1heSAyMDI0IDExOjM2OjMzIENFU1QgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4+ID4gPiBU
aGlzIGVuYWJsZXMgdGhlIG9uLWNoaXAgdGhlcm1hbCBtb25pdG9yaW5nIHNlbnNvciAoVFNBREMp
IG9uIGFsbAo+PiA+ID4gUkszNTg4KHMpIGJvYXJkcyB0aGF0IGRvbid0IGhhdmUgaXQgZW5hYmxl
ZCB5ZXQuIEl0IHByb3ZpZGVzIHRlbXBlcmF0dXJlCj4+ID4gPiBtb25pdG9yaW5nIGZvciB0aGUg
U29DIGFuZCBlbWVyZ2VuY3kgdGhlcm1hbCBzaHV0ZG93bnMsIGFuZCBpcyB0aHVzCj4+ID4gPiBp
bXBvcnRhbnQgdG8gaGF2ZSBpbiBwbGFjZSBiZWZvcmUgQ1BVIERWRlMgaXMgZW5hYmxlZCwgYXMg
aGlnaCBDUFUKPj4gPiA+IG9wZXJhdGluZyBwZXJmb3JtYW5jZSBwb2ludHMgY2FuIG92ZXJoZWF0
IHRoZSBjaGlwIHF1aWNrbHkgaW4gdGhlCj4+ID4gPiBhYnNlbmNlIG9mIHRoZXJtYWwgbWFuYWdl
bWVudC4KPj4gPiA+Cj4+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFy
a0BnbWFpbC5jb20+Cj4+ID4gPiAtLS0KPj4gPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1yb2NrLTViLmR0cyAgICAgICAgICAgICAgIHwgNCArKysrCj4+ID4gPiAgOCBm
aWxlcyBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspCj4+ID4gPgo+PiA+ID4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4+ID4gPiBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzIGluZGV4Cj4+
ID4gPiBiOGUxNWI3NmE4YTYuLjIxZTk2YzIxMmRkOCAxMDA2NDQKPj4gPiA+IC0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4+ID4gPiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+PiA+ID4gQEAg
LTc0Miw2ICs3NDIsMTAgQEAgcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4+ID4gPiAgICAgICB9Owo+
PiA+ID4gIH07Cj4+ID4gPgo+PiA+ID4gKyZ0c2FkYyB7Cj4+ID4gPiArICAgICBzdGF0dXMgPSAi
b2theSI7Cj4+ID4gPiArfTsKPj4gPiA+ICsKPj4gPiA+ICAmdWFydDIgewo+PiA+ID4gICAgICAg
cGluY3RybC0wID0gPCZ1YXJ0Mm0wX3hmZXI+Owo+PiA+ID4gICAgICAgc3RhdHVzID0gIm9rYXki
Owo+PiA+Cj4+ID4gSSBidWlsdCBhIGtlcm5lbCB3aXRoIHYzIG9mIHlvdXIgcGF0Y2ggc2V0IGFu
ZCBzb21lb25lIHRlc3RlZCBpdCBvbiBhIFJPQ0sgNUIKPj4gPiAnZm9yIG1lJyBhbmQgaXQgaGFk
IHRoZSBmb2xsb3dpbmcgbGluZSBpbiBkbWVzZzoKPj4gPgo+PiA+IHJvY2tjaGlwLXRoZXJtYWwg
ZmVjMDAwMDAudHNhZGM6IE1pc3Npbmcgcm9ja2NoaXAsZ3JmIHByb3BlcnR5Cj4+ID4KPj4gPiBJ
J20gZ3Vlc3NpbmcgdGhhdCB0dXJuZWQgdXAgZHVlIHRvIGVuYWJsaW5nIHRzYWRjLCBidXQgKGFs
c28pIGluIHY0IEkgZGlkbid0Cj4+ID4gc2VlIGEgY2hhbmdlIHdydCAicm9ja2NoaXAsZ3JmIi4K
Pj4gPiBTaG91bGQgdGhhdCBiZSBkb25lPyAoYXNraW5nOyBJIGRvbid0IGtub3cpCj4+IAo+PiBJ
J20gZ2V0dGluZyB0aGUgc2FtZS4gTmVpdGhlciB0aGUgbWFpbmxpbmUgVFNBREMgZHJpdmVyIFsx
XSwgbm9yIHRoZQo+PiBkb3duc3RyZWFtIG9uZSBbMl0gc2VlbXMgdG8gdXNlIHRoZSBncmYgcG9p
bnRlciBvbiBSSzM1ODggYXQgYWxsLiBJdAo+PiBzdGlsbCB3b3JrcyBpbiBzcGl0ZSBvZiB0aGF0
IHdhcm5pbmcsIGFsdGhvdWdoIEkgY2FuJ3Qgc2VlIGhvdyAob3IgaWYpCj4+IGl0IGNvbmZpZ3Vy
ZXMgdGhlIHJlc2V0IG1lY2hhbmlzbSB3aXRob3V0IHRob3NlIEdSRiByZWdpc3RlcnMuCj4+IAo+
PiBCZXN0IHJlZ2FyZHMsCj4+IEFsZXhleQo+PiAKPj4gWzFdIAo+PiBodHRwczovL2dpdC5rZXJu
ZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9k
cml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jI244MTgKPj4gWzJdIAo+PiBodHRwczov
L2dpdGh1Yi5jb20vcmFkeGEva2VybmVsL2Jsb2Ivc3RhYmxlLTUuMTAtcm9jazUvZHJpdmVycy90
aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyNMOTYxCj4+IAo+IAo+IElmIHRoZSBmb2xsb3dpbmcg
Y2hhbmdlcyBmaXggdGhlIHdhcm5pbmcuCj4gCj4gQ2hlY2tpbmcgdGhlIFJvY2tjaGlwIFJLMzU4
OCBUUk0gVjEuMC1QYXJ0MS0yMDIyMDMwOS5wZGYKPiBQTVUxR1JGX1NPQ19DT04zIHdoaWNoIGhh
cyB0c2FkY19zaHV0X3Jlc2V0X3RyaWdnZXJfZW4gYml0Cj4gdG8gY29udHJvbCB0aGUgRW5hYmxl
IFRTQURDIHNodXQgcmVzZXQgdHJpZ2dlciBmb3IgRERSIGZhaWwgc2FmZS4KPiAKPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKPiBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCj4gaW5kZXggODVjMjVkNWVmZGFk
Li41NDkwYTQ0ZTA5M2UgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODhzLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OHMuZHRzaQo+IEBAIC0yNjYyLDYgKzI2NjIsNyBAQCB0c2FkYzogdHNhZGNAZmVjMDAwMDAgewo+
ICAgICAgICAgICAgICAgICByb2NrY2hpcCxody10c2h1dC10ZW1wID0gPDEyMDAwMD47Cj4gICAg
ICAgICAgICAgICAgIHJvY2tjaGlwLGh3LXRzaHV0LW1vZGUgPSA8MD47IC8qIHRzaHV0IG1vZGUg
MDpDUlUgCj4gMTpHUElPICovCj4gICAgICAgICAgICAgICAgIHJvY2tjaGlwLGh3LXRzaHV0LXBv
bGFyaXR5ID0gPDA+OyAvKiB0c2h1dCBwb2xhcml0eQo+IDA6TE9XIDE6SElHSCAqLwo+ICsgICAg
ICAgICAgICAgICByb2NrY2hpcCxwbXUgPSA8JnBtdTFncmY+Owo+ICAgICAgICAgICAgICAgICBw
aW5jdHJsLTAgPSA8JnRzYWRjX2dwaW9fZnVuYz47Cj4gICAgICAgICAgICAgICAgIHBpbmN0cmwt
MSA9IDwmdHNhZGNfc2h1dD47Cj4gICAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZ3Bp
byIsICJvdHBvdXQiOwoKQmFzaWNhbGx5LCB0aGUgcm9ja2NoaXBfdGhlcm1hbCBkcml2ZXIgZG9l
c24ndCB1c2UgR1JGIGF0IGFsbCBvbgp0aGUgUkszNTg4KHMpLCBzbyB2aXJ0dWFsbHkgYW55IHZh
bHVlIHNwZWNpZmllZCBhcyAicm9ja2NoaXAscG11IgpjYW4gZWxpbWluYXRlIHRoZSB3YXJuaW5n
LgoKSSdtIGFscmVhZHkgd29ya2luZyBvbiBhIHJhdGhlciBsYXJnZSBkZXZpY2UtdHJlZSBjbGVh
bnVwIHNlcmllcywKYW5kIHRoaXMgaXMgYWxyZWFkeSBmaXhlZCBpbiBpdC4gIEFyZSB5b3UgZmlu
ZSB3aXRoIGRyb3BwaW5nIHlvdXIKcGF0Y2ggYXMgYSBzZXBhcmF0ZSBvbmUsIGFuZCBJJ2xsIHRh
ZyB5b3Ugd2l0aCBDby1kZXZlbG9wZWQtYnkgaW4KdGhlIHJlbGV2YW50IHBhdGNoIGZyb20gbXkg
c2VyaWVzPwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
