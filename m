Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0002CA1005
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Sep 2025 06:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ud0Mti7L2tig28HST0sHLA2CjSu2acC0uVcB2gkhu6A=; b=O50iV5VNA6MKbl
	5tlqMqhtGfjzTnvyM+WvWBaTk1nZjRJQgrS+V+4A/U0um/vsu0yE0wUDKozcHzQOzT0hCJw86ZChm
	KlGA6Kfdpg4geyRKUamQLhZxG57dZRG68Fhyr/pXC57t0WQGAB0ad5zQETWmT/oFK7p5XfSwjsXOg
	Ms945S2PivfzaatVx00x2UQIwdB16R64jLFoQt5/cmYmFity67AKyqlEcorf0CgMHszpg8Phpw0AF
	3SY+t2lN3aDEoBwngMzrhLMvDW3OCsCyGW56gAtzZAie3nObky8+iflROwzTTIUhlC5PIxiViuxFz
	kvrF6OQRsdh/xPrEigCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utKsc-0000000FcC5-3w7x;
	Tue, 02 Sep 2025 06:52:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utKpr-0000000Fbdt-2OXV;
	Tue, 02 Sep 2025 06:49:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=L3hysh1IuHC3Dp9XzTNJn7TLfYrR5FrB1YWba0t3M3k=; b=cjdiXPnWzvSvRuv8Q6fPuIwF/4
	sHkk1gs59SSS6D16goSAnv08ppr71gIlpiKtrGwjWSvhv/ZyOouGVsLmf/Y429du9uAXmv4M0fI6m
	3MGd0rZ+b1Ov/laSJ9w6G6KiRBdYw0EY9D+m8gLKaNAmsu7ZVCx4rTzWsZUT9tg5QP3vjCPShjeVM
	yjDna1BAzyPmkD7XPvRdHZJbHHl/nR2PPOubn74Tcg9ShSIoAb5F4xv6GPHW+CcBaXkr++nwz/IyV
	FYAFPYqj9qz8406lYoZvNonf6I4XZKG8SUeRI1mjUFsr+hYGhtOlCSJbmM0HHuS3kLH+pIXpjwEgE
	r7DFLeNg==;
Received: from [61.8.145.255] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1utKpf-0003Qz-Ke; Tue, 02 Sep 2025 08:49:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?B?5p2O57u06LGq?= <cn.liweihao@gmail.com>
Cc: robh@kernel.org, hjc@rock-chips.com, andy.yan@rock-chips.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v1 3/7] dt-bindings: clock: rk3368: Add SCLK_MIPIDSI_24M
Date: Tue, 02 Sep 2025 08:49:29 +0200
Message-ID: <5052759.PIDvDuAF1L@phil>
In-Reply-To: <CAPEOAkQYA+XSx9QJSmNFLypH0ifE1jvui=MHiEHZ+5a3SR7=uA@mail.gmail.com>
References: <20250831104855.45883-1-cn.liweihao@gmail.com> <2235041.irdbgypaU6@diego>
 <CAPEOAkQYA+XSx9QJSmNFLypH0ifE1jvui=MHiEHZ+5a3SR7=uA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_234943_630720_5740CD5E 
X-CRM114-Status: GOOD (  24.29  )
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

SGksCgpBbSBNb250YWcsIDEuIFNlcHRlbWJlciAyMDI1LCAwMjoxNzowMCBNaXR0ZWxldXJvcMOk
aXNjaGUgU29tbWVyemVpdCBzY2hyaWViIOadjue7tOixqjoKPiBJIGFjdHVhbGx5IHVzZWQgc2Ny
aXB0IHRvIGdldCB0aGUgbWFpbnRhaW5lciBsaXN0LCBidXQgSSB3YXMgbm90IHN1cmUKPiB3aGV0
aGVyIEkgc2hvdWxkIHNlbmQtdG8gb3IgY2MgZXZlcnkgbWFpbnRhaW5lciwgc28gSSBjb25zdWx0
ZWQgdGhlCj4gQUksIGFuZCB0aGUgQUkgc2FpZCB0byB0cnkgbm90IHRvIGRvIHNvIGJlY2F1c2Ug
aXQgbWlnaHQgYmUgY29uc2lkZXJlZAo+IG5vaXNlIGVtYWlsLCBhbmQgb25seSBzZW5kIGl0IHRv
IHRoZSBtYWluIG1haW50YWluZXJzLgoKcGxlYXNlIGRvbid0IHRvcC1wb3N0IDotKQpodHRwczov
L2RvY3Mua2VybmVsLm9yZy9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5odG1sI3VzZS10cmlt
bWVkLWludGVybGVhdmVkLXJlcGxpZXMtaW4tZW1haWwtZGlzY3Vzc2lvbnMKCgo+IFNob3VsZCBJ
IGNjIGFsbCB0aGUgZGV2aWNldHJlZSBtYWludGFpbmVycyB3aXRoIHRoZSBuZXh0IHBhdGNoZXM/
CgpMb29rcyBsaWtlIHdlIGRpZCBnZXQgYW4gQWNrIHN0aWxsIHdpdGggZXZlbiBvbmx5IG9uZSBt
YWludGFpbmVyIGxpc3RlZCwKc28gZG9uJ3QgbmVlZCBhIHJlc2VuZCAuLi4gYnV0IHllYWgsIHBs
ZWFzZSBpbmNsdWRlIHBlb3BsZSBsaXN0ZWQgYXMKZGlyZWN0IG1haW50YWluZXJzIGluIHRoZSBm
dXR1cmUuCgpXb3JrZmxvd3MgZGlmZmVyLCBzbyB3aGVuIHN1Ym1pdHRpbmcgYSBwYXRjaCB5b3Ug
Y2FuJ3Qga25vdyBpZiBtYWludGFpbmVycwp3b3JrIGZyb20gcGF0Y2h3b3JrIG9yIGRpcmVjdGx5
IGZyb20gdGhlaXIgaW5ib3guCgpTbyBpdCdzIHNhZmVyIHRvIGluY2x1ZGUgbW9yZSBwZW9wbGUg
dGhhbiBub3QgZW5vdWdoIDotKQoKU29tZSB0cmltbWluZyBvZiB0aGUgbGlzdCBjYW4gYmUgZG9u
ZSB0aG91Z2gsIGZvciBleGFtcGxlIHlvdXIgZHJtIHBhdGNoZXMKd291bGQgbGlzdCB0aGUgY29y
ZSBkcm0gbWFpbnRhaW5lcnMgd2hvIG1vc3QgbGlrZWx5IGRvIG5vdCByZWFsbHkgY2FyZQphYm91
dCBpbmRpdmlkdWFsIGRyaXZlciBwYXRjaGVzIDstKSAuCgpnZXRfbWFpbnRhaW5lcnMucGwgdGhh
bmtmdWxseSBkb2VzIGxpc3QgdGhlIHJvbGUsIHNvIHlvdSBjYW4gZGVjaWRlIGJhc2VkCm9uIHRo
YXQuCgoKSGVpa28KCgo+IEJlc3QgcmVnYXJkcywKPiBXZWlIYW8KPiAKPiBIZWlrbyBTdMO8Ym5l
ciA8aGVpa29Ac250ZWNoLmRlPiDkuo4yMDI15bm0OOaciDMx5pel5ZGo5pelIDIzOjAw5YaZ6YGT
77yaCj4gPgo+ID4gSGksCj4gPiBBbSBTb25udGFnLCAzMS4gQXVndXN0IDIwMjUsIDEyOjQ4OjUx
IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgV2VpSGFvIExpOgo+ID4gPiBB
ZGQgYSBjbG9jayBpZCBmb3IgbWlwaSBkc2kgcmVmZXJlbmNlIGNsb2NrLCBtaXBpIGRzaSBub2Rl
IHVzZWQgaXQuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFdlaUhhbyBMaSA8Y24ubGl3ZWlo
YW9AZ21haWwuY29tPgo+ID4KPiA+IHlvdSBtaXNzZWQgYSBudW1iZXIgb2YgZGV2aWNldHJlZSBt
YWludGFpbmVycywgUm9iIHRoYW5rZnVsbHkgZG9lcwo+ID4gbm90IG5lZWQgdG8gZG8gdGhpcyBv
biBoaXMgb3duIGFueW1vcmUuCj4gPgo+ID4gc28gcGxlYXNlIGdldCB0aGUgYXBwcm9wcmlhdGUg
bGlzdCBvZiBtYWludGFpbmVycyB2aWEgc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbAo+ID4KPiA+
IENoYW5nZSBpdHNlbGYgbG9va3MgZmluZSB0aG91Z2guCj4gPgo+ID4gSGVpa28KPiA+Cj4gPiA+
IC0tLQo+ID4gPiAgaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yazMzNjgtY3J1LmggfCAxICsK
PiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+ID4gPgo+ID4gPiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yazMzNjgtY3J1LmggYi9pbmNsdWRlL2R0
LWJpbmRpbmdzL2Nsb2NrL3JrMzM2OC1jcnUuaAo+ID4gPiBpbmRleCBlYmFlM2NiZjguLmI5NTFl
MjkwNiAxMDA2NDQKPiA+ID4gLS0tIGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yazMzNjgt
Y3J1LmgKPiA+ID4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yazMzNjgtY3J1LmgK
PiA+ID4gQEAgLTcyLDYgKzcyLDcgQEAKPiA+ID4gICNkZWZpbmUgU0NMS19TRkMgICAgICAgICAg
ICAgMTI2Cj4gPiA+ICAjZGVmaW5lIFNDTEtfTUFDICAgICAgICAgICAgIDEyNwo+ID4gPiAgI2Rl
ZmluZSBTQ0xLX01BQ1JFRl9PVVQgICAgICAgICAgICAgIDEyOAo+ID4gPiArI2RlZmluZSBTQ0xL
X01JUElEU0lfMjRNICAgICAxMjkKPiA+ID4gICNkZWZpbmUgU0NMS19USU1FUjEwICAgICAgICAg
MTMzCj4gPiA+ICAjZGVmaW5lIFNDTEtfVElNRVIxMSAgICAgICAgIDEzNAo+ID4gPiAgI2RlZmlu
ZSBTQ0xLX1RJTUVSMTIgICAgICAgICAxMzUKPiA+ID4KPiA+Cj4gPgo+ID4KPiA+Cj4gCgoKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
