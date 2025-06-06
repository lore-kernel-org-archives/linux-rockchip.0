Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 061F1C5AD49
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jun 2025 08:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KV758rZG2mUh9QF53YuIwsAHoL/QcLFYmf8tOaTnBLQ=; b=oNNuCcTvDdeu3m
	VPEwWp30V+Tf3c273/ybLnOiXcCAnnTmVWWArbUUBoVWus2Lt866RPcYQuU+tUZblZi5YowtIBdsF
	Kxlr/arT1HcdRPgr0jWgA430CLB8/N3/TA3gvuTbyGc9c1TicktJ2JVXSdwEpJD5vK2XSnKLnMr1w
	2FywqBJZumvrXK2sIMVHRwNN11XEca3pu1Bgeon5XShj7yR9lYwi+7hHhqAzlU5/McOzvc4DwjFMr
	hthE7HlLiGrq0/nz2n9KOwFGiZO/Z+5jCYbi3oeuLWqXB4NtauWDYAONy+pGgs708zXErAx0xvJIm
	mtCzCYXE7BsoVm+/YCXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSM6-0000000HOUA-3Mwo;
	Fri, 06 Jun 2025 08:23:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSJu-0000000HOIA-3MYA;
	Fri, 06 Jun 2025 08:20:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=s9a3aqKy83KVXHUN2ItZ55YpPJ8j6cwV9IyFJ9G/oSo=; b=ZuOGLuINMM2lb52TpTR62Dny3i
	KVCVpu5XS3qh14Fd4tVoADvzGKog97I3VKyauy9qA2idNKEPiXb0FSvxlx7Ut4+pi5g67v4rGWeOO
	4ypWUD3Q75UwJDmWaj9Rlb9OsdCPoyE027bZCgh7ylLSorNAUksugqazL7JTd9uyTzDDJx17cLZCZ
	F0dvewxpW3z9o+av+CU4gD/c/LjfuG/fivCMs+rvbPOk08/qjJMfLZKmeLVC9bwtS1vMpO9D5Pz2U
	W8iWe5y00u8K1Cj/bisReat6296kN0jqkAvGqajsIUUM6hDJIGULenU7SOhyb/qX9EW03LRrtEzsp
	+7bUgNfA==;
Received: from i53875ad6.versanet.de ([83.135.90.214] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uNSJp-0005BS-H0; Fri, 06 Jun 2025 10:20:53 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: wens@kernel.org
Cc: quentin.schulz@cherry.de, jonas@kwiboo.se, dsimic@manjaro.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add regulator-enable-ramp-delay to
 RK860-0/-2/-3 regulators
Date: Fri, 06 Jun 2025 10:20:52 +0200
Message-ID: <3115271.687JKscXgg@diego>
In-Reply-To: <CAGb2v65C0jHsD2HD_AEt+AGqMfWUUwwWV0bXw4i9Hw2tCNHZpA@mail.gmail.com>
References: <20250605185001.377055-1-heiko@sntech.de>
 <CAGb2v65C0jHsD2HD_AEt+AGqMfWUUwwWV0bXw4i9Hw2tCNHZpA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_012058_859481_34478881 
X-CRM114-Status: GOOD (  31.20  )
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

QW0gRnJlaXRhZywgNi4gSnVuaSAyMDI1LCAwNDoxNzo1MyBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIENoZW4tWXUgVHNhaToKPiBPbiBGcmksIEp1biA2LCAyMDI1IGF0IDI6
NTfigK9BTSBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+Cj4gPiBU
aGUgUks4NjAtMC8tMS8tMi8tMyByZWd1bGF0b3JzIGFyZSB1c2VkIG9uIHJrMzU4OCBib2FyZHMg
aW4gYWRkaXRpb24gdG8KPiA+IHRoZSBtYWluIHBtaWMsIHRvIHN1cHBseSBjb21wb25lbnRzIGxp
a2UgdGhlIGJpZyBjcHUtY2x1c3RlcnMgYW5kIG5wdS4KPiA+Cj4gPiBTbyBmYXIgbm9ib2R5IGhh
ZCBhIHVzZS1jYXNlIGZvciB0dXJuaW5nIHRoZXNlIG9mZi4gVGhlIHN1cHBsaWVzIGZvciB0aGUK
PiA+IGJpZyBjcHUtY2x1c3RlcnMgYXJlIG9uIGJ5IGRlZmF1bHQgYW5kIHRob3NlIGNsdXN0ZXJz
IG5vcm1hbGx5IGFyZSBub3QKPiA+IGNvbXBsZXRlbHkgdHVybmVkIG9mZiBkdXJpbmcgcnVudGlt
ZS4KPiA+Cj4gPiBUaGlzIGNoYW5nZWQgd2l0aCB0aGUgbmV3IFJvY2tldCBkcml2ZXIgZm9yIHRo
ZSBOUFUsIHdoaWNoIGRvZXMgdXNlCj4gPiBydW50aW1lLXBtIGFuZCB0aHVzIGRvZXMgdHVybiBv
ZmYgYW5kIG9uIHRoZSBOUFUncyBzdXBwbHkgcmVndWxhdG9yIGFzCj4gPiBuZWVkZWQuIFRoaXMg
cmVndWxhdG9yIGlzIGFsc28gbmVlZGVkIHRvIHJ1biB0byBhY3R1YWxseSB0dXJuIG9uIHRoZQo+
ID4gcG93ZXItZG9tYWluIGZvciB0aGUgTlBVLgo+ID4KPiA+IElmIHRoZSByb2NrZXQgZHJpdmVy
IG5vdyBydW50aW1lLXN1c3BlbmRzIHdoaWxlIHJ1bm5pbmcgYSBsb2FkIGFuZCB0aGVuCj4gPiBy
dW50aW1lLXJlc3VtZXMgYWdhaW4sIGhhbmdzIGNhbiBiZSBvYnNlcnZlZCB3aXRoIG1lc3NhZ2Vz
IGxpa2UKPiA+Cj4gPiAgIHJvY2tjaGlwLXBtLWRvbWFpbiBmZDhkODAwMC5wb3dlci1tYW5hZ2Vt
ZW50OnBvd2VyLWNvbnRyb2xsZXI6IGZhaWxlZCB0byBzZXQgZG9tYWluICducHV0b3AnIG9uLCB2
YWw9MAo+ID4KPiA+IEEgd2F5IHRvICJmaXgiIHRoYXQgaXNzdWUgd2hlbiBpdCBoYXBwZW5zLCBp
cyB0byBzZXQgdGhlIHJlZ3VsYXRvciB0bwo+ID4gYWx3YXlzLW9uLiBUaGlzIHN1Z2dlc3RzIHRo
YXQgdGhlIHBvd2VyLWRvbWFpbiBpcyB0cnlpbmcgdG8gZ2V0IHBvd2VyCj4gPiBmcm9tIHRoZSBy
ZWd1bGF0b3IgYmVmb3JlIGl0IGlzIHJlYWR5IHRvIGRlbGl2ZXIgcG93ZXIuCj4gPgo+ID4gQW5k
IGluIGZhY3QgdGhlIGRhdGFzaGVldCBmb3IgdGhlIHJlZ3VsYXRvciBkZWZpbmVzIGFuICJJbnRl
cm5hbCBzb2Z0LXN0YXJ0Cj4gPiB0aW1lIiBjaGFyYWN0ZXJpc3RpYy4gRm9yIGEgdGFyZ2V0IG91
dHB1dCB2b2x0YWdlIG9mIDEuMFYgdGhlIF90eXBpY2FsXwo+ID4gdGltZSB0byByZWFjaCBhdCBs
ZWFzdCA5MiUgb2YgdGhlIG91dHB1dCwgaXMgZ2l2ZW4gYXMgMjYwdVMuCj4gPgo+ID4gVGhhdCBt
ZWFucyB0aGUgdGltZSBpcyBkZXBlbmRlbnQgb24gdGhlIHRhcmdldCB2b2x0YWdlICh1cCB0byAx
LjVWIGZvcgo+ID4gdGhlIHR5cGUpIGFuZCBhbHNvIHRoZSByZXN0IG9mIHRoZSBib2FyZCBkZXNp
Z24uCj4gPgo+ID4gU28gYWRkIGEgcmVndWxhdG9yLWVuYWJsZS1yYW1wLWRlbGF5IHRvIGFsbCBy
azg2MC0yLy0zIG5vZGVzIHdlIGhhdmUgaW4KPiA+IG1haW5saW5lIHJpZ2h0IG5vdy4gSSd2ZSBj
aG9zZW4gNTAwdVMgdG8gYmUgb24gdGhlIHNhZmUgc2lkZSwgYXMKPiA+IDI2MHVTIGlzIHRoZSAi
dHlwaWNhbCIgdmFsdWUgZm9yIDEuMFYgYW5kIHNhZGx5IG5vIG1heCB2YWx1ZSBpcyBnaXZlbgo+
ID4gaW4gdGhlIGRhdGFzaGVldC4KPiAKPiBTaW5jZSB0aGVzZSBhcmUgY2hhcmFjdGVyaXN0aWNz
IG9mIHRoZSBQTUlDLCBJIHdvbmRlciBpZiBpdCBtYWtlcyBtb3JlCj4gc2Vuc2UgdG8gcHV0IHRo
ZW0gaW4gdGhlIGRyaXZlcj8gQXQgbGVhc3QgdGhhdCdzIHdoYXQgd2UndmUgZG9uZSB3aXRoIGEK
PiBzaW1pbGFyIGZpeCBmb3IgdGhlIEFYUCBQTUlDcy4KCnllYWggLSBkZWZpbml0bHkuCgpBZnRl
ciBzZW5kaW5nIHRoaXMgdjIgeWVzdGVyZGF5LCBJIHJlLXJlYWQgUXVlbnRpbidzIGNvbW1lbnQg
b24gdjEgYW5kCmZpbmFsbHkgdW5kZXJzdG9vZCB0aGUgbWVhbmluZyAtIHdoaWNoIHdhcyB0aGUg
c2FtZSwgdGhhdCB0aGUgZHJpdmVyCm1pZ2h0IGJlIGEgbmljZXIgcGxhY2UgZm9yIGRlZmF1bHQg
dmFsdWVzLgoKU28geWVzdGVyZGF5IGV2ZW5pbmcgSSBkaWQgcGFyc2UgdGhlIGRhdGFzaGVldHMg
b2YgYWxsIHRoZSByZWd1bGF0b3IKdmFyaWFudHMgdG8gZ2V0IHRoZSByZWxldmFudCAoYW5kIGRp
ZmZlcmVudCkgc3RhcnR1cCB0aW1lcy4KCkhvcGVmdWxseSBJJ2xsIGdldCB0aGlzIGRvbmUgYW5k
IHNlbnQgb3V0IGJlZm9yZSBsdW5jaCB0b2RheSA6LSkgLgoKSGVpa28KCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
