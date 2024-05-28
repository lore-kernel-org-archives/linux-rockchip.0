Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AE47C25B7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 15:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3sS3z2Ny6mb0Gln4/1RV+i5BW9cBBliJaCNAE1bTm1I=; b=bpZePQF9V24Y9ke72ToVjyvP4X
	rPtovzGEvSq2NrKrYweORp0AUbWlzt0rGx44JgTUaDvZg4N1xCJrLZMcr3BRoRY8nJwVoBjXfnVat
	ZLSmAdYts8px3OEYOVKba3S02YM2Q6+Yekdpy2LC9LHSAYOXGVt5EA4ABHpStYhGEzX3il8urEPCF
	Td43DWtztxQP9k4PNpuxS7KoVuIDH1q7qnSNNm5ZKSjRhS1xBYT/fzR63v8OxTP/WewhlpOS7DAbX
	lW2R8GU263cx36EC/EJuqElmkiLXWDAi2E81L7Nc4fRrRQdG+8dSOoyOepn7zzxciM/giGxfp75iK
	jEyF4y0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sByKt-000000017TB-2LwA;
	Tue, 28 May 2024 15:01:59 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sByKp-000000017QI-2XGE;
	Tue, 28 May 2024 15:01:57 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1716908509;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pTliwcQUwlXfpyzNkH7+3TEPpHv8Li6OUQHn1YDk4Fc=;
	b=SrjPBIbOw4eZdlN/lXyx4lnXvyGApnt42U//NCwDoha9Dj2K/3HO+djVQnT1dkkoouYQme
	6ObDD7JR1vSs5lLmyM2GIoe4rZZQTSZA4XyTkCwlPcuEXTC0HsJQK7W0DYmIbGGipU+080
	/33zX+GipGSCAnw3U6Rm0+6QDwVXyd+pUXrjYLXEpp6Xqa+bi/5NDwLoOTOAPP8xXGfpHW
	RK8oX4E9Ei8SvzhHQ43fF0Y9fkeezFpU9soRoljKia3sNBtBYn47rlz3E6LDuwbEa9Xo13
	XOgiq7xnQzwsyTMf8CyBLfUIbSqLL1IVyyjy6hdnL4W9pABMgOLBST3YzbEO7w==
Date: Tue, 28 May 2024 17:01:48 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Alexey Charkov <alchark@gmail.com>, Quentin Schulz
 <quentin.schulz@cherry.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, Viresh
 Kumar <viresh.kumar@linaro.org>, Chen-Yu Tsai <wens@kernel.org>, Diederik de
 Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/6] RK3588 and Rock 5B dts additions: thermal, OPP and
 fan
In-Reply-To: <5122636.irdbgypaU6@phil>
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <CABjd4YyuDsWGbSfNyqcW3s=59p8adVf5Js79PYyKFqfyM71dxA@mail.gmail.com>
 <ea2311d7a41162a847d37ce05d0fc441@manjaro.org> <5122636.irdbgypaU6@phil>
Message-ID: <8727e1c29bd6f562a7fc3de0ddac62cf@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_080155_972537_77F2CD3B 
X-CRM114-Status: GOOD (  35.82  )
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

T24gMjAyNC0wNS0yOCAxNjozNCwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gQW0gRGllbnN0YWcs
IDI4LiBNYWkgMjAyNCwgMTY6MDU6MDQgQ0VTVCBzY2hyaWViIERyYWdhbiBTaW1pYzoKPj4gT24g
MjAyNC0wNS0yOCAxMTo0OSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4+ID4gT24gTW9uLCBNYXkg
NiwgMjAyNCBhdCAxOjM34oCvUE0gQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29tPgo+
PiA+IHdyb3RlOgo+PiA+Pgo+PiA+PiBUaGlzIGVuYWJsZXMgdGhlcm1hbCBtb25pdG9yaW5nIGFu
ZCBDUFUgRFZGUyBvbiBSSzM1ODgocyksIGFzIHdlbGwgYXMKPj4gPj4gYWN0aXZlIGNvb2xpbmcg
b24gUmFkeGEgUm9jayA1QiB2aWEgdGhlIHByb3ZpZGVkIFBXTSBmYW4uCj4+ID4+Cj4+ID4+IFNv
bWUgUkszNTg4IGJvYXJkcyB1c2Ugc2VwYXJhdGUgcmVndWxhdG9ycyB0byBzdXBwbHkgQ1BVcyBh
bmQgdGhlaXIKPj4gPj4gcmVzcGVjdGl2ZSBtZW1vcnkgaW50ZXJmYWNlcywgc28gdGhpcyBpcyBo
YW5kbGVkIGJ5IGNvdXBsaW5nIHRob3NlCj4+ID4+IHJlZ3VsYXRvcnMgaW4gYWZmZWN0ZWQgYm9h
cmRzJyBkZXZpY2UgdHJlZXMgdG8gZW5zdXJlIHRoYXQgdGhlaXIKPj4gPj4gdm9sdGFnZSBpcyBh
ZGp1c3RlZCBpbiBzdGVwLgo+PiA+Pgo+PiA+PiBUaGlzIGFsc28gZW5hYmxlcyB0aGUgYnVpbHQt
aW4gdGhlcm1hbCBzZW5zb3IgKFRTQURDKSBmb3IgYWxsIGJvYXJkcwo+PiA+PiB0aGF0IGRvbid0
IGN1cnJlbnRseSBoYXZlIGl0IGVuYWJsZWQsIHVzaW5nIHRoZSBkZWZhdWx0IENSVSBiYXNlZAo+
PiA+PiBlbWVyZ2VuY3kgdGhlcm1hbCByZXNldC4gVGhpcyBkZWZhdWx0IGNvbmZpZ3VyYXRpb24g
b25seSB1c2VzIG9uLVNvQwo+PiA+PiBkZXZpY2VzIGFuZCBkb2Vzbid0IHJlbHkgb24gYW55IGV4
dGVybmFsIHdpcmluZywgdGh1cyBpdCBzaG91bGQgd29yawo+PiA+PiBmb3IgYWxsIGRldmljZXMg
KHRlc3RlZCBvbmx5IG9uIFJvY2sgNUIgdGhvdWdoKS4KPj4gPj4KPj4gPj4gVGhlIGJvYXJkcyB0
aGF0IGhhdmUgVFNBRENfU0hVVCBzaWduYWwgd2lyZWQgdG8gdGhlIFBNSUMgcmVzZXQgbGluZQo+
PiA+PiBjYW4gY2hvb3NlIHRvIG92ZXJyaWRlIHRoZSBkZWZhdWx0IHJlc2V0IGxvZ2ljIGluIGZh
dm91ciBvZiBHUElPCj4+ID4+IGRyaXZlbiAoUE1JQyBhc3Npc3RlZCkgcmVzZXQsIGJ1dCBpbiBt
eSB0ZXN0aW5nIGl0IGRpZG4ndCB3b3JrIG9uCj4+ID4+IFJhZHhhIFJvY2sgNUIgLSBtYXliZSBJ
J20gcmVhZGluZyB0aGUgc2NoZW1hdGljIHdyb25nIGFuZCBpdCBkb2Vzbid0Cj4+ID4+IHN1cHBv
cnQgUE1JQyBhc3Npc3RlZCByZXNldCBhZnRlciBhbGwuCj4+ID4+Cj4+ID4+IEZhbiBjb250cm9s
IG9uIFJvY2sgNUIgaGFzIGJlZW4gc3BsaXQgaW50byB0d28gaW50ZXJ2YWxzOiBsZXQgaXQgc3Bp
bgo+PiA+PiBhdCB0aGUgbWluaW11bSBjb29saW5nIHN0YXRlIGJldHdlZW4gNTVDIGFuZCA2NUMs
IGFuZCB0aGVuIGFjY2VsZXJhdGUKPj4gPj4gaWYgdGhlIHN5c3RlbSBjcm9zc2VzIHRoZSA2NUMg
bWFyayAtIHRoYW5rcyB0byBEcmFnYW4gZm9yIHN1Z2dlc3RpbmcuCj4+ID4+IFRoaXMgbGV0cyBz
b21lIGNvb2xpbmcgc2V0dXBzIHdpdGggYmVlZmllciBoZWF0c2lua3MgYW5kL29yIGxhcmdlcgo+
PiA+PiBmYW4gZmlucyB0byBzdGF5IGluIHRoZSBxdWlldGVzdCBub24temVybyBmYW4gc3RhdGUg
d2hpbGUgc3RpbGwKPj4gPj4gZ2FpbmluZyBwb3RlbnRpYWwgYmVuZWZpdHMgZnJvbSB0aGUgYWly
ZmxvdyBpdCBnZW5lcmF0ZXMsIGFuZAo+PiA+PiBwb3NzaWJseSBhdm9pZGluZyBub2lzeSBzcGVl
ZHMgYWx0b2dldGhlciBmb3Igc29tZSB3b3JrbG9hZHMuCj4+ID4+Cj4+ID4+IE9QUHMgaGVscCBh
Y3R1YWxseSBzY2FsZSBDUFUgZnJlcXVlbmNpZXMgdXAgYW5kIGRvd24gZm9yIGJvdGggY29vbGlu
Zwo+PiA+PiBhbmQgcGVyZm9ybWFuY2UgLSB0ZXN0ZWQgb24gUm9jayA1QiB1bmRlciB2YXJpZWQg
bG9hZHMuIEkndmUgZHJvcHBlZAo+PiA+PiB0aG9zZSBPUFBzIHRoYXQgY2F1c2UgZnJlcXVlbmN5
IHJlZHVjdGlvbnMgd2l0aG91dCBhY2NvbXBhbnlpbmcKPj4gPj4gZGVjcmVhc2UKPj4gPj4gaW4g
Q1BVIHZvbHRhZ2UsIGFzIHRoZXkgZG9uJ3Qgc2VlbSB0byBiZSBhZGRpbmcgbXVjaCBiZW5lZml0
IGluIGRheSB0bwo+PiA+PiBkYXkgdXNlLCB3aGlsZSB0aGUga2VybmVsIGxvZyBnZXRzIGEgbnVt
YmVyIG9mICJPUFAgaXMgaW5lZmZpY2llbnQiCj4+ID4+IGxpbmVzLgo+PiA+Pgo+PiA+PiBOb3Rl
IHRoYXQgdGhpcyBzdWJtaXNzaW9uIGRvZXNuJ3QgdG91Y2ggdGhlIFNSQU0gcmVhZCBtYXJnaW4g
dXBkYXRlcwo+PiA+PiBvcgo+PiA+PiB0aGUgT1BQIGNhbGlicmF0aW9uIGJhc2VkIG9uIHNpbGlj
b24gcXVhbGl0eSB3aGljaCB0aGUgZG93bnN0cmVhbQo+PiA+PiBkcml2ZXIKPj4gPj4gZG9lcyBh
bmQgd2hpY2ggd2VyZSBtZW50aW9uZWQgaW4gWzFdLiBJdCB3b3JrcyBhcyBpdCBpcyAoYWxzbwo+
PiA+PiBjb25maXJtZWQgYnkKPj4gPj4gU2ViYXN0aWFuIGluIGhpcyBmb2xsb3ctdXAgbWVzc2Fn
ZSBbMl0pLCBhbmQgaXQgaXMgc3RhYmxlIGluIG15Cj4+ID4+IHRlc3Rpbmcgb24KPj4gPj4gUm9j
ayA1Qiwgc28gaXQgc291bmRzIGJldHRlciB0byBtZXJnZSBhIHNpbXBsZSB2ZXJzaW9uIGZpcnN0
IGFuZCB0aGVuCj4+ID4+IGV4dGVuZCB3aGVuL2lmIHJlcXVpcmVkLgo+PiA+Pgo+PiA+PiBbMV0K
Pj4gPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvQ0FCamQ0WXpUTD01
UzdjUzhBQ05BWVZhNzMwV0EzaUdkNUxfd1AxVm45PWY4M1JDT1JBQG1haWwuZ21haWwuY29tLwo+
PiA+PiBbMl0KPj4gPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvcGt5
bmU0ZzJjbG4yN2RjZHUzam03YnFkcXBtZDJrd2tiZ3Vpb2xtb3pudGp1aWFqcmJAZ3ZxNG51cHpu
YTRvLwo+PiA+Pgo+PiA+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0Bn
bWFpbC5jb20+Cj4+ID4+IC0tLQo+PiA+Cj4+ID4gSGkgSGVpa28sCj4+ID4KPj4gPiBEbyB5b3Ug
dGhpbmsgdGhpcyBjYW4gYmUgbWVyZ2VkIGZvciA2LjExPyBMb29rcyBsaWtlIHRoZXJlIGhhc24n
dCBiZWVuCj4+ID4gYW55IG5ldyBmZWVkYmFjayBpbiBhIHdoaWxlLCBhbmQgaXQgd291bGQgYmUg
Z29vZCB0byBoYXZlIGZyZXF1ZW5jeQo+PiA+IHNjYWxpbmcgaW4gcGxhY2UgZm9yIFJLMzU4OC4K
Pj4gPgo+PiA+IFBsZWFzZSBsZXQgbWUga25vdyBpZiB5b3UgaGF2ZSBhbnkgcmVzZXJ2YXRpb25z
IG9yIGlmIHdlIG5lZWQgYW55Cj4+ID4gYnJvYWRlciBkaXNjdXNzaW9uLgo+IAo+IG5vdCByZWFs
bHkgcmVzZXJ2YXRpb25zLCBtb3JlIGxpa2UgdGhlcmUgd2FzIHN0aWxsIGRpc2N1c3Npb24gZ29p
bmcgb24KPiBhcm91bmQgdGhlIE9QUHMuIE1lYW53aGlsZSB3ZSBoYWQgbW9yZSBkaXNjdXNzaW9u
cyByZWdhcmRpbmcgdGhlIHdob2xlCj4gc3BlZWQgYmlubmluZyBSb2NrY2hpcCBzZWVtcyB0byBk
byBmb3IgcmszNTg4IHZhcmlhbnRzLgo+IAo+IEFuZCB3YWl0aW5nIGZvciB0aGUgdGVzdGluZyBE
cmFnYW4gd2FudGVkIHRvIGRvIDstKSAuCgpJJ20gc29ycnkgZm9yIHRoZSBkZWxheXMuCgo+IFNv
IHRoaXMgc2hvdWxkIGRlZmluaXRseSBtYWtlIGl0IGludG8gNi4xMSB0aG91Z2gsIGFzIHRoZXJl
IGlzIHN0aWxsCj4gYSBsb3Qgb2YgdGltZS4KPiAKPj4gQXMgSSBwcm9taXNlZCBlYXJsaWVyLCBJ
IHdhcyBnb2luZyB0byB0ZXN0IHRoaXMgcGF0Y2ggc2VyaWVzIGluIAo+PiBkZXRhaWwuCj4+IEFs
YXMsIEkgaGF2ZW4ndCBtYW5hZ2VkIHRvIGRvIHRoYXQgeWV0LCA6LyBkdWUgdG8gbWFueSByZWFz
b25zLCBidXQKPj4gSSBzdGlsbCByZW1haW4gZmlybWx5IGNvbW1pdHRlZCB0byBkb2luZyB0aGF0
Lgo+PiAKPj4gSXMgLXJjNCB0aGUgY3V0b2ZmIGZvciA2LjExPyAgSWYgc28sIHRoZXJlJ3Mgc3Rp
bGwgdGltZSBhbmQgSSdsbCBkbyBteQo+PiBiZXN0IHRvIHRlc3QgYW5kIHJldmlldyB0aGVzZSBw
YXRjaGVzIGFzIHNvb24gYXMgcG9zc2libGUuCj4gCj4gQXMgZWFybHkgYXMgcG9zc2libGUsIHRo
ZSBoYXJkIGN1dG9mZiB3b3VsZCBiZSAtcmM2IHRob3VnaC4KPiBJIGd1ZXNzIEknbGwganVzdCBz
dGFydCBwaWNraW5nIHRoZSBlYXN5IHBhdGNoZXMgZnJvbSB0aGUgc2VyaWVzLgoKSSdsbCBkbyBt
eSBiZXN0IHRvIGhhdmUgdGhlIHBhdGNoZXMgdGVzdGVkIGFuZCByZXZpZXdlZCBpbiBkZXRhaWwg
QVNBUC4KQXMgYSBzdWdnZXN0aW9uLCBwZXJoYXBzIGl0IHdvdWxkIGJlIGJldHRlciB0byB0YWtl
IHRoZSBzZXJpZXMgYXMgYSAKd2hvbGUsCnNvIHdlIGRvbid0IGJyaW5nIHBhcnRpYWwgbWVyZ2lu
ZyBpbnRvIHRoZSBtaXguCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
