Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8914CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 10:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9PYYfbIQcBVHgsb7uE5f7FJB0735nonyTwcK41xjlk=; b=cXaZTtrsocmMPJ
	foDSP7Zzsg6kp0zaVMJezrEtnqVWIuQKPELKiDjp3oVNXOqE2FplbruVF+/nJ/n0ZtVfN3A62lidi
	3wPFwO6PTKVfG4OJL0qvyJWC18fvq7dcQId3fdOISK+Bo5Ao1FmKwdEguZF0LKbpn/HXsp3w96Mhw
	exW2hs6abCCAn9RX+ppP0AAqKfuR/gre5Hz5hhqJ5Fm3o22LHWCX0haln8s3z+3cupMXl8YaKW+Bd
	pwiwzunm5GsBEqxob4lrCP/rO0fNPp2Ry/30QU/ZXmm2baCXzXH160jrNU8w7rHhdjdVn81TKPOjq
	p4yvisZni3dviWsOwO0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIOmF-000000059Hd-248F;
	Mon, 10 Nov 2025 10:05:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIOmB-000000059H6-2Cak
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 10:05:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=OVl0m+iJFqCNpf4hEKL/dy7zGf1DyPHpcG4DHQdATvk=; b=RYJ1+OX5Gk0y/frfM6z0AoF1FI
	bLGFErqzoLCoS212jcjSdoP2t3JNqEZ4hphhgAT/CJS/BzFEoYN4bZc+3QvrSrjJBKqitvUNnvTaN
	pIKDozEP4ib/hX6AZVttcb+kgpzkm+1jpR0WZTPLq1Vn25QJMZDcfIban63+c7HWW7r5gxB0WZByi
	eqpcwm1rM/G0yEbVRCejeQAVhH+whipUQatV/Hc/MshMMUM1oPKL1OUga0g6O879VO0j0V0Arc69X
	h81iiTdPMx0ZQp5zEdFEwoC7oNAVkjPx/QtdwyfSalwOFmaHQyBadREoROKUkrM5OU+3xmclraSWe
	b62SH1yQ==;
Received: from i53875bc2.versanet.de ([83.135.91.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vIOlz-0003HF-EC; Mon, 10 Nov 2025 11:05:19 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [RFC PATCH] arm64: dts: rockchip: Fix microSD card detect for Radxa ROCK
 5 ITX
Date: Mon, 10 Nov 2025 11:05:18 +0100
Message-ID: <2242815.irdbgypaU6@diego>
In-Reply-To: <EECF7629320EEEDD+03c6ee06-4351-4150-b1b0-957d5cfc3d6d@radxa.com>
References: <20251110030036.825150-1-naoki@radxa.com>
 <EECF7629320EEEDD+03c6ee06-4351-4150-b1b0-957d5cfc3d6d@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_020531_671862_D73E48C5 
X-CRM114-Status: GOOD (  17.52  )
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

SGksCgpBbSBNb250YWcsIDEwLiBOb3ZlbWJlciAyMDI1LCAwNDoxNjozNyBNaXR0ZWxldXJvcMOk
aXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIEZVS0FVTUkgTmFva2k6Cj4gT24gMTEvMTAvMjUgMTI6
MDAsIEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4gPiBEdWUgdG8gdGhlIGRpc2N1c3Npb24gYWJvdXQg
Y2QtZ3Bpb3MgYW5kIHNkbW1tY19kZXQgcGluCj4gPiBmdW5jdGlvbmFsaXR5WzFdLCBpdCB3b3Vs
ZCBiZSBiZXR0ZXIgdG8gdXNlIGNkLWdwaW9zIGZvciBub3cuCj4gPiAKPiA+IFsxXSBodHRwczov
L2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI0MDkxMjE1MjUzOC4xLkk4NThjMmEw
YmY4MzYwNmM4YjU5YmExYWI2OTQ0OTc4YTM5OGQyYWM1QGNoYW5nZWlkL1QvI3UKPiA+IAo+ID4g
Rml4ZXM6IDMxMzkwZWI4ZmZiZjIgKCJhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIFJPQ0sgNSBJ
VFggYm9hcmQiKQo+ID4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEu
Y29tPgo+ID4gLS0tCj4gPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJv
Y2stNS1pdHguZHRzIHwgOSArKysrKysrKy0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01LWl0eC5kdHMgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTUtaXR4LmR0cwo+ID4gaW5kZXggYmM4MTQwODgzZGU0
Ny4uMzkxYzY0ODJlOGVlMyAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LXJvY2stNS1pdHguZHRzCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1yb2NrLTUtaXR4LmR0cwo+ID4gQEAgLTY3MCw2ICs2NzAsMTIgQEAg
bGVkX3BpbnM6IGxlZC1waW5zIHsKPiA+ICAgCQl9Owo+ID4gICAJfTsKPiA+ICAgCj4gPiArCW1t
YyB7Cj4gPiArCQlzZG1tY19kZXRfZ3Bpbzogc2RtbWMtZGV0LWdwaW8gewo+ID4gKwkJCXJvY2tj
aGlwLHBpbnMgPSA8MCBSS19QQTQgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4gPiAr
CQl9Owo+ID4gKwl9Owo+ID4gKwo+IAo+IEkgZ290IGZvbGxvd2luZyBlcnJvcjoKPiAKPiAkIG1h
a2UgQ0hFQ0tfRFRCUz15IHJvY2tjaGlwL3JrMzU4OC1yb2NrLTUtaXR4LmR0Ygo+ICAgIFVQRCAg
ICAgaW5jbHVkZS9jb25maWcva2VybmVsLnJlbGVhc2UKPiAgICBEVEMgW0NdIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNS1pdHguZHRiCj4gL2hvbWUvcmFkeGEvbGlu
dXgvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01LWl0eC5kdGI6IAo+
IG1tYzogc2RtbWMtZGV0LWdwaW86IHsncm9ja2NoaXAscGlucyc6IFtbMCwgNCwgMCwgMjcwXV0s
ICdwaGFuZGxlJzogMTQ1fSAKPiBpcyBub3Qgb2YgdHlwZSAnYXJyYXknCj4gCWZyb20gc2NoZW1h
ICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvZ3Bpby9ncGlvLWNvbnN1bWVyLnlh
bWwjCj4gCj4gV2hhdCdzIHdyb25nPwoKdGhlIHByb2JsZW0gaXMgdGhlICItZ3BpbyIgaW4gdGhl
IHBpbmN0cmwgbm9kZS1uYW1lLHdoaWNoIHRyaWdnZXJzCmEgcGF0dGVybiBtYXRjaGluZyBhZ2Fp
bnN0IGEgbm9ybWFsIGdwaW9zIHByb3BlcnR5LgoKU28gaWRlYWxseSByZW5hbWUgc2RtbWMtZGV0
LWdwaW8gdG8gc2RtbWMtZGV0LXBpbiBvciBzby4KCgpIb3BlIHRoYXQgaGVscHMKSGVpa28KCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
