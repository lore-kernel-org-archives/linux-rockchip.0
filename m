Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42DD51091903
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 17:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2jPtPisrwJe4ndTPxauvDCOQSiHbWv+vx6DgdYA0o8=; b=JER0C7JmLicDlG
	5aFbIoG4crIKELpAiQ+ap5EVv39fLKXh56pgnAk01XdTyhDB26pPdEMaWyhfXL1oHGG83FxbDHAGo
	aEk7zKFV3Kkzf5hZUtnxA5TYix6vJ+Nk12+/VW0xifeZAuZHaiYF9PPn9k/R6yM/1vDjlVaxz5K4I
	qrci5Nile6Rf3zR4FNgOQ5mClColEEFSVBSG+TXOg/XZ5zqI7EeE4nzy2d9n8NrZtZ+1I7D0BO7hm
	S+ev0v5zvkGlcSz+1awbN0pNVS//2nwEgqoERvguIR/tFETuGyRzKEW4NztQYJoDfj1fTpuOYPcwr
	UXOEDOg3yTZXC0A4Igvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3HcT-0000000BFRl-1FX8;
	Thu, 19 Mar 2026 17:57:17 +0000
Received: from out-171.mta1.migadu.com ([95.215.58.171])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3HcN-0000000BFPk-2Hhw
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 17:57:15 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1773943026;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aWCvDePssY8LSMdn+qxdvWAIDGVpPq9kczSxC2iv/Ac=;
	b=Wi33a0SRZnMRoYeEBL0WR1s9jRw1ebKC6a+77w3NbORnzbdyEmaRR2Te9kCtLPAHQwlWZq
	j8jN+01NGffQcSiFASueERTHIwuXWj4sB6XFdFff7CoKAUJMOPLmYr1jJjBDcAcI2HSFJB
	aSGQee76SzRKYvXXldjeCc6Fuc+sJaUQthgoIg+lijiWy5rYs9YW1+Kssiq0owm5mRAonk
	lrUEgnXQ3ZXRSTBACVmGSQVEOiGhxM6Kjf/gTW6xJn9ePc3EIA8je+8EWqxjdxn/SLk0lU
	ny+PnSUW1SOxTcvAgrFRdRwtwcG5UW7CBkPXYZSoPSzFx8EZseoxQm2H6Ma31Q==
Date: Thu, 19 Mar 2026 18:56:59 +0100
Message-Id: <DH6YBGOJGS8F.1KVA57WLCE235@cknow-tech.com>
Subject: Re: [PATCH v2] drm: rockchip-dw-dp: add missing dependency on
 bridge_connector
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Marius Dinu" <m95d+git@psihoexpert.ro>,
 <linux-rockchip@lists.infradead.org>
Cc: "Andy Yan" <andyshrk@163.com>
References: <20260319155051.1944-1-m95d+git@psihoexpert.ro>
In-Reply-To: <20260319155051.1944-1-m95d+git@psihoexpert.ro>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_105714_612990_07B1F4E0 
X-CRM114-Status: GOOD (  11.00  )
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

T24gVGh1IE1hciAxOSwgMjAyNiBhdCA0OjUwIFBNIENFVCwgTWFyaXVzIERpbnUgd3JvdGU6Cj4g
QXZvaWRzIHRoaXMgZXJyb3I6Cj4gICBsZDogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2Rw
LXJvY2tjaGlwLm86IGluIGZ1bmN0aW9uIGBkd19kcF9yb2NrY2hpcF9iaW5kJzoKPiAgIC91c3Iv
c3JjL2xpbnV4L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19kcC1yb2NrY2hpcC5jOjEwODoo
LnRleHQrMHgxODgpOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBkcm1fYnJpZGdlX2Nvbm5lY3Rv
cl9pbml0Jwo+Cj4gU2lnbmVkLW9mZi1ieTogTWFyaXVzIERpbnUgPG05NWQrZ2l0QHBzaWhvZXhw
ZXJ0LnJvPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyB8IDEgKwoK
JCBzY3JpcHRzL2dldF9tYWludGFpbmVyLnBsIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29u
ZmlnClNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+IChtYWludGFpbmVyOkRSTSBEUklW
RVJTIEZPUiBST0NLQ0hJUCkKIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPiAobWFp
bnRhaW5lcjpEUk0gRFJJVkVSUyBGT1IgUk9DS0NISVApCkFuZHkgWWFuIDxhbmR5LnlhbkByb2Nr
LWNoaXBzLmNvbT4gKG1haW50YWluZXI6RFJNIERSSVZFUlMgRk9SIFJPQ0tDSElQKQpNYWFydGVu
IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPiAobWFpbnRhaW5l
cjpEUk0gRFJJVkVSUyBBTkQgTUlTQyBHUFUgUEFUQ0hFUykKTWF4aW1lIFJpcGFyZCA8bXJpcGFy
ZEBrZXJuZWwub3JnPiAobWFpbnRhaW5lcjpEUk0gRFJJVkVSUyBBTkQgTUlTQyBHUFUgUEFUQ0hF
UykKVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+IChtYWludGFpbmVyOkRS
TSBEUklWRVJTIEFORCBNSVNDIEdQVSBQQVRDSEVTKQpEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21h
aWwuY29tPiAobWFpbnRhaW5lcjpEUk0gRFJJVkVSUykKU2ltb25hIFZldHRlciA8c2ltb25hQGZm
d2xsLmNoPiAobWFpbnRhaW5lcjpEUk0gRFJJVkVSUykKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZyAob3BlbiBsaXN0OkRSTSBEUklWRVJTIEZPUiBST0NLQ0hJUCkKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnIChtb2RlcmF0ZWQgbGlzdDpBUk0vUm9ja2NoaXAgU29D
IHN1cHBvcnQpCmxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcgKG9wZW4gbGlzdDpB
Uk0vUm9ja2NoaXAgU29DIHN1cHBvcnQpCmxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcgKG9w
ZW4gbGlzdCkKCkknbSBtaXNzaW5nIHF1aXRlIGEgZmV3IG9mIHRoZXNlIC4uLgoKQ2hlZXJzLAog
IERpZWRlcmlrCgo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9LY29uZmlnCj4gaW5kZXggMTQ3OWI4YzRlZDQwLi4zOWNkMzgzNzVlOGEgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZwo+IEBAIC02Nyw2ICs2Nyw3IEBAIGNvbmZpZyBST0NL
Q0hJUF9DRE5fRFAKPiAgCj4gIGNvbmZpZyBST0NLQ0hJUF9EV19EUAo+ICAJYm9vbCAiUm9ja2No
aXAgc3BlY2lmaWMgZXh0ZW5zaW9ucyBmb3IgU3lub3BzeXMgRFcgRFAiCj4gKwlzZWxlY3QgRFJN
X0JSSURHRV9DT05ORUNUT1IKPiAgCWhlbHAKPiAgCSAgVGhpcyBzZWxlY3RzIHN1cHBvcnQgZm9y
IFJvY2tjaGlwIFNvQyBzcGVjaWZpYyBleHRlbnNpb25zCj4gIAkgIHRvIGVuYWJsZSBTeW5vcHN5
cyBEZXNpZ25XYXJlIENvcmVzIGJhc2VkIERpc3BsYXlQb3J0IHRyYW5zbWl0CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
