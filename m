Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83E47C27C52
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 08:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eKMZzJBGVhj03E5EhDB4E3wEcp63U90X6rXDrU911zg=; b=T+a1XXh5gxN4mt
	2iTD9uqFVfeWQTdu8SOwWWTbpMg4IX/+YbUgzBs1RgzSdMOL/tWOt/oageL1O9suq4s0fysRtoj30
	AliQbaphr1rpVU7bevAD/Hvee8+TSyn6qjl/v5IV2/DdpWvJyPYUv7HRZc+A4Wpmq5VqmcFpMBm2T
	JjVA28poCuTK7YWtf7Q5IVfcw527+NMNYxbTvOBoAIV5G9mlN/pd+2m5MLHGXtIrIwXVPxWQa/t4A
	RDBoH2gfVigvBPMc+MGEBimgC2q0jVfLidbL6Sli57i6SBo9NHyC5YH/cstfRaUGtlGK8yQrU8ST6
	REHgPUi1aGmO+hMd8InA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sElqc-000000059Qa-3pFN;
	Wed, 05 Jun 2024 08:18:18 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sElqU-000000059IY-1QCV
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jun 2024 08:18:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 294A16172D;
	Wed,  5 Jun 2024 08:18:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A334C32781;
	Wed,  5 Jun 2024 08:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717575488;
	bh=AaNMFa474izpGRkn1s2bqhLMgtZao6BeoKtAM/4bkRI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QuXzzy2QmnMeVrq08FbdVt/73QHryni6SoM0SVxGGuiz6A4ghxNqCCZLNCEecbtu4
	 IdgdnbLINDiAizZoS+N79/csAIyM4fv+50RhuZY1Z/d5cyYdzmFXLSezPJP9czv3cy
	 NF2BUTwaug+THss1Oo4UscXBvOJctBQrTyB21nc8fEMRkZj45V4MVoK4vY6hijv331
	 Ldvx61iNLXJgcnHTMN8JvVtuqlk+rqy55z2CbuSVMc55eI7TPwiUZ3x6loS3DoX9PE
	 Dsjim1vDbwOHx2HXWV/DDwFKYd8ghDGYwXgDHgqxWQA08+Lz8M43+p2xmiB/rsKaRL
	 woG/EIr73aK6w==
Date: Wed, 5 Jun 2024 13:47:53 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 10/13] PCI: dw-rockchip: Add endpoint mode support
Message-ID: <20240605081753.GK5085@thinkpad>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
 <20240529-rockchip-pcie-ep-v1-v4-10-3dc00fe21a78@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240529-rockchip-pcie-ep-v1-v4-10-3dc00fe21a78@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_011810_843841_2E471DFC 
X-CRM114-Status: GOOD (  23.06  )
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

T24gV2VkLCBNYXkgMjksIDIwMjQgYXQgMTA6Mjk6MDRBTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBUaGUgUENJZSBjb250cm9sbGVyIGluIHJrMzU2OCBhbmQgcmszNTg4IGNhbiBvcGVy
YXRlIGluIGVuZHBvaW50IG1vZGUuCj4gVGhpcyBlbmRwb2ludCBtb2RlIHN1cHBvcnQgaGVhdmls
eSBsZXZlcmFnZXMgdGhlIGV4aXN0aW5nIGNvZGUgaW4KPiBwY2llLWRlc2lnbndhcmUtZXAuYy4K
PiAKPiBBZGQgc3VwcG9ydCBmb3IgZW5kcG9pbnQgbW9kZSB0byB0aGUgZXhpc3RpbmcgcGNpZS1k
dy1yb2NrY2hpcCBnbHVlCj4gZHJpdmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5pa2xhcyBDYXNz
ZWwgPGNhc3NlbEBrZXJuZWwub3JnPgoKQ291cGxlIG9mIGNvbW1lbnRzIGJlbG93LiBXaXRoIHRo
b3NlIGFkZHJlc3NlZCwKClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2
YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgoKPiAtLS0KPiAgZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvS2NvbmZpZyAgICAgICAgICAgIHwgIDE3ICsrLQo+ICBkcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgfCAyMTAgKysrKysrKysrKysrKysrKysrKysr
KysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAyMjQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZyBi
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL0tjb25maWcKPiBpbmRleCA4YWZhY2M5MGM2M2Iu
LjlmYWUwZDk3NzI3MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9L
Y29uZmlnCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZwo+IEBAIC0z
MTEsMTYgKzMxMSwyNyBAQCBjb25maWcgUENJRV9SQ0FSX0dFTjRfRVAKPiAgCSAgU29Dcy4gVG8g
Y29tcGlsZSB0aGlzIGRyaXZlciBhcyBhIG1vZHVsZSwgY2hvb3NlIE0gaGVyZTogdGhlIG1vZHVs
ZQo+ICAJICB3aWxsIGJlIGNhbGxlZCBwY2llLXJjYXItZ2VuNC5rby4gVGhpcyB1c2VzIHRoZSBE
ZXNpZ25XYXJlIGNvcmUuCj4gIAo+ICtjb25maWcgUENJRV9ST0NLQ0hJUF9EVwo+ICsJYm9vbAoK
V2hlcmUgaXMgdGhpcyBzeW1ib2wgdXNlZD8KCj4gKwo+ICBjb25maWcgUENJRV9ST0NLQ0hJUF9E
V19IT1NUCj4gLQlib29sICJSb2NrY2hpcCBEZXNpZ25XYXJlIFBDSWUgY29udHJvbGxlciIKPiAt
CXNlbGVjdCBQQ0lFX0RXCj4gKwlib29sICJSb2NrY2hpcCBEZXNpZ25XYXJlIFBDSWUgY29udHJv
bGxlciAoaG9zdCBtb2RlKSIKPiAgCXNlbGVjdCBQQ0lFX0RXX0hPU1QKPiAgCWRlcGVuZHMgb24g
UENJX01TSQo+ICAJZGVwZW5kcyBvbiBBUkNIX1JPQ0tDSElQIHx8IENPTVBJTEVfVEVTVAo+ICAJ
ZGVwZW5kcyBvbiBPRgo+ICAJaGVscAo+ICAJICBFbmFibGVzIHN1cHBvcnQgZm9yIHRoZSBEZXNp
Z25XYXJlIFBDSWUgY29udHJvbGxlciBpbiB0aGUKPiAtCSAgUm9ja2NoaXAgU29DIGV4Y2VwdCBS
SzMzOTkuCj4gKwkgIFJvY2tjaGlwIFNvQyAoZXhjZXB0IFJLMzM5OSkgdG8gd29yayBpbiBob3N0
IG1vZGUuCj4gKwo+ICtjb25maWcgUENJRV9ST0NLQ0hJUF9EV19FUAo+ICsJYm9vbCAiUm9ja2No
aXAgRGVzaWduV2FyZSBQQ0llIGNvbnRyb2xsZXIgKGVuZHBvaW50IG1vZGUpIgo+ICsJc2VsZWN0
IFBDSUVfRFdfRVAKPiArCWRlcGVuZHMgb24gQVJDSF9ST0NLQ0hJUCB8fCBDT01QSUxFX1RFU1QK
PiArCWRlcGVuZHMgb24gT0YKPiArCWhlbHAKPiArCSAgRW5hYmxlcyBzdXBwb3J0IGZvciB0aGUg
RGVzaWduV2FyZSBQQ0llIGNvbnRyb2xsZXIgaW4gdGhlCj4gKwkgIFJvY2tjaGlwIFNvQyAoZXhj
ZXB0IFJLMzM5OSkgdG8gd29yayBpbiBlbmRwb2ludCBtb2RlLgo+ICAKPiAgY29uZmlnIFBDSV9F
WFlOT1MKPiAgCXRyaXN0YXRlICJTYW1zdW5nIEV4eW5vcyBQQ0llIGNvbnRyb2xsZXIiCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyBi
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IGluZGV4IGUx
MzM1MTE2OTJhZi4uMzQ3NzIxMjA3MTYxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwoKWy4uLl0KCj4gK3N0YXRpYyBpcnFyZXR1cm5fdCBy
b2NrY2hpcF9wY2llX2VwX3N5c19pcnFfdGhyZWFkKGludCBpcnEsIHZvaWQgKmFyZykKPiArewo+
ICsJc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwID0gYXJnOwo+ICsJc3RydWN0IGR3X3Bj
aWUgKnBjaSA9ICZyb2NrY2hpcC0+cGNpOwo+ICsJc3RydWN0IGRldmljZSAqZGV2ID0gcGNpLT5k
ZXY7Cj4gKwl1MzIgcmVnLCB2YWw7Cj4gKwo+ICsJcmVnID0gcm9ja2NoaXBfcGNpZV9yZWFkbF9h
cGIocm9ja2NoaXAsIFBDSUVfQ0xJRU5UX0lOVFJfU1RBVFVTX01JU0MpOwo+ICsKPiArCWRldl9k
YmcoZGV2LCAiUENJRV9DTElFTlRfSU5UUl9TVEFUVVNfTUlTQzogJSN4XG4iLCByZWcpOwo+ICsJ
ZGV2X2RiZyhkZXYsICJMVFNTTV9TVEFUVVM6ICUjeFxuIiwgcm9ja2NoaXBfcGNpZV9nZXRfbHRz
c20ocm9ja2NoaXApKTsKPiArCj4gKwlpZiAocmVnICYgUENJRV9MSU5LX1JFUV9SU1RfTk9UX0lO
VCkgewo+ICsJCWRldl9kYmcoZGV2LCAiaG90IHJlc2V0IG9yIGxpbmstZG93biByZXNldFxuIik7
Cj4gKwkJZHdfcGNpZV9lcF9saW5rZG93bigmcGNpLT5lcCk7Cj4gKwl9Cj4gKwo+ICsJaWYgKHJl
ZyAmIFBDSUVfUkRMSF9MSU5LX1VQX0NIR0VEKSB7Cj4gKwkJdmFsID0gcm9ja2NoaXBfcGNpZV9n
ZXRfbHRzc20ocm9ja2NoaXApOwo+ICsJCWlmICgodmFsICYgUENJRV9MSU5LVVApID09IFBDSUVf
TElOS1VQKSB7Cj4gKwkJCWRldl9kYmcoZGV2LCAibGluayB1cFxuIik7Cj4gKwkJCWR3X3BjaWVf
ZXBfbGlua3VwKCZwY2ktPmVwKTsKPiArCQl9Cj4gKwl9Cj4gKwo+ICsJcm9ja2NoaXBfcGNpZV93
cml0ZWxfYXBiKHJvY2tjaGlwLCByZWcsIFBDSUVfQ0xJRU5UX0lOVFJfU1RBVFVTX01JU0MpOwoK
SXQgaXMgcmVjb21tZW5kZWQgdG8gY2xlYXIgdGhlIElSUXMgYXQgdGhlIHN0YXJ0IG9mIHRoZSBo
YW5kbGVyIChhZnRlciBzdGF0dXMKcmVhZCkuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPg
r43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
