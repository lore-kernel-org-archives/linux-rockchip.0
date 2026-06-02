Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28241CD5BD1
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 21:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0lkbpxShSqBVMwvCLuXgE6PETRBfcGkLtwhpHV5Zlo=; b=tWtFv0sG2eRAFG
	jv9757YRA/JFSJfb3O0uftaZ2q7XIkch/lAIE3grPsIbibjG6xzzyinAnsUtxO363oTD1qifPKn/b
	JrrmIPXQsyTsUmBaNRHssBO6E9GQFFBVB67slb1WiCfXwywizxD3qHeJ7zTTg7TsdoVuuz5UOpky8
	ta0vTmr1Aiuz7dSCiVjNsJmFccvLMJqEEGcThd6a1/02oALv+nrqY15kJgc28Op1yR9fJCtOiMuHk
	hOD58zf1ZuGuO/ULorwFmWZN8l08F2QL3AcvLvcgs320bNdTOTUM2OV5thqiZk5RH8C8ULojkPDmk
	R6uf1iJ7BwantNspoHWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWFj-0000000DnPS-2pkz;
	Tue, 02 Jun 2026 21:02:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWFh-0000000DnOh-35Cz;
	Tue, 02 Jun 2026 21:02:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=NyPSyRLUOFZ5pN/SoGqXQdqwGa+JGoFeCCOZJivTsn8=; b=BHMrXHkrVaEX4fAoOWSvgiF4om
	/u4wFEh0HbB21HLqcwBI2wNR0UQaqIVhsmYq6hGG4F9YMwwFAf14hXCsvvuq1TYGAhT3Omb0jrKKz
	XVCfVXbdPhkqFA6jBE8SF6t96CjwxGI6As7ZDHpha6GBKKGcYH8yTssbdFxYbLtt1fFsyrbe/n89Y
	2tJqoqQ0inusrDVXbJ5NrenuDVc6pAJUr8aN1jqyvX1caeVuAgXvUlR6pA+pkZ2UZpq41NqljO4e8
	WhPKFNdOMUNMyIsfKAB34adwmhRYiYfjaYwgr54UuajxtVRcsfFT6CDV/RAXmp/zL7gKKi+gXYXXS
	ZUkudMFg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Guochun Huang <hero.huang@rock-chips.com>, Chaoyi Chen <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: [PATCH 2/2] drm/rockchip: dsi: Add dphy_get_timing support for multiple
 PHY types
Date: Tue, 02 Jun 2026 23:02:13 +0200
Message-ID: <7091445.e8TTKsaY2g@phil>
In-Reply-To: <20260324085838.90-2-kernel@airkyi.com>
References: <20260324085838.90-1-kernel@airkyi.com>
 <20260324085838.90-2-kernel@airkyi.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_140221_794390_57861D98 
X-CRM114-Status: GOOD (  20.48  )
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

QW0gRGllbnN0YWcsIDI0LiBNw6RyeiAyMDI2LCAwOTo1ODozOCBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIENoYW95aSBDaGVuOgo+IEZyb206IENoYW95aSBDaGVuIDxjaGFv
eWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPiAKPiBDdXJyZW50bHksIHRoZXJlIGFyZSBnZW5lcmFs
bHkgdHdvIHR5cGVzIG9mIERQSFkgZm9yIFJvY2tjaGlwLiBPbmUgaXMKPiB0aGUgRFBIWSB1c2Vk
IGJ5IFJLMzI4OC9SSzMzOTksIHdob3NlIHRpbWluZyBpcyBkZXNjcmliZWQgYnkgVGFibGUgQS0z
Cj4gSGlnaC1TcGVlZCBUcmFuc2l0aW9uIFRpbWVzIGluIHRoZSBkYXRhYm9vay4gVGhlIG90aGVy
IGlzIHRoZSBEUEhZIHVzZWQKPiBieSBQWDMwIGFuZCBpdHMgc3VjY2Vzc29ycy4gSWYgaXRzIHRp
bWluZyBpcyBzdGlsbCBkZXNjcmliZWQgdXNpbmcKPiBSSzMyODgvUkszMzk5LCBpdCBtYXkgbm90
IHBlcmZvcm0gY29ycmVjdGx5IG9uIHNvbWUgRFNJIHBhbmVsLgo+IAo+IEFkZCBkcGh5X2dldF90
aW1pbmcgZm9yIGRpZmZlcmVudCBELVBIWSB0eXBlcyB0byBhZGFwdCB0byB0aW1pbmcKPiBkaWZm
ZXJlbmNlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9j
ay1jaGlwcy5jb20+Cj4gLS0tCj4gIC4uLi9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLXJv
Y2tjaGlwLmMgICB8IDQ1ICsrKysrKysrKysrKysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDQz
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL2R3LW1pcGktZHNpLXJvY2tjaGlwLmMKPiBpbmRleCBkM2JhY2ZhZTE3NGUuLjJk
MWM5ZTU0ZmY4NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlw
aS1kc2ktcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBp
LWRzaS1yb2NrY2hpcC5jCj4gQEAgLTI0Nyw2ICsyNDcsNyBAQCBlbnVtIHsKPiAgCUJJQVNFWFRS
XzEyN183LAo+ICB9Owo+ICAKPiArc3RydWN0IGR3X21pcGlfZHNpX3JvY2tjaGlwOwo+ICBzdHJ1
Y3Qgcm9ja2NoaXBfZHdfZHNpX2NoaXBfZGF0YSB7Cj4gIAl1MzIgcmVnOwo+ICAKPiBAQCAtMjYy
LDYgKzI2Myw5IEBAIHN0cnVjdCByb2NrY2hpcF9kd19kc2lfY2hpcF9kYXRhIHsKPiAgCXUzMiBs
YW5lY2ZnMl9ncmZfcmVnOwo+ICAJdTMyIGxhbmVjZmcyOwo+ICAKPiArCWludCAoKmRwaHlfZ2V0
X3RpbWluZykoc3RydWN0IGR3X21pcGlfZHNpX3JvY2tjaGlwICpkc2ksIHVuc2lnbmVkIGludCBs
YW5lX21icHMsCj4gKwkJCSAgICAgICBzdHJ1Y3QgZHdfbWlwaV9kc2lfZHBoeV90aW1pbmcgKnRp
bWluZyk7Cj4gKwo+ICAJaW50ICgqZHBoeV9yeF9pbml0KShzdHJ1Y3QgcGh5ICpwaHkpOwo+ICAJ
aW50ICgqZHBoeV9yeF9wb3dlcl9vbikoc3RydWN0IHBoeSAqcGh5KTsKPiAgCWludCAoKmRwaHlf
cnhfcG93ZXJfb2ZmKShzdHJ1Y3QgcGh5ICpwaHkpOwo+IEBAIC03MjEsOCArNzI1LDkgQEAgc3Rh
dGljIHN0cnVjdCBoc3R0IGhzdHRfdGFibGVbXSA9IHsKPiAgfTsKPiAgCj4gIHN0YXRpYyBpbnQK
PiAtZHdfbWlwaV9kc2lfcGh5X2dldF90aW1pbmcodm9pZCAqcHJpdl9kYXRhLCB1bnNpZ25lZCBp
bnQgbGFuZV9tYnBzLAo+IC0JCQkgICBzdHJ1Y3QgZHdfbWlwaV9kc2lfZHBoeV90aW1pbmcgKnRp
bWluZykKPiArZHdfbWlwaV9kc2lfcGh5X3JrMzI4OF9nZXRfdGltaW5nKHN0cnVjdCBkd19taXBp
X2RzaV9yb2NrY2hpcCAqZHNpLAo+ICsJCQkJICB1bnNpZ25lZCBpbnQgbGFuZV9tYnBzLAo+ICsJ
CQkJICBzdHJ1Y3QgZHdfbWlwaV9kc2lfZHBoeV90aW1pbmcgKnRpbWluZykKPiAgewo+ICAJaW50
IGk7Cj4gIAo+IEBAIC03MzgsNiArNzQzLDMyIEBAIGR3X21pcGlfZHNpX3BoeV9nZXRfdGltaW5n
KHZvaWQgKnByaXZfZGF0YSwgdW5zaWduZWQgaW50IGxhbmVfbWJwcywKPiAgCXJldHVybiAwOwo+
ICB9Cj4gIAo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGR3X21pcGlfZHNpX2RwaHlfdGltaW5nIGRw
aHlfdGltaW5nX3B4MzAgPSB7Cj4gKwkuY2xrX2xwMmhzID0gMHg0MCwKPiArCS5jbGtfaHMybHAg
PSAweDQwLAo+ICsJLmRhdGFfbHAyaHMgPSAweDEwLAo+ICsJLmRhdGFfaHMybHAgPSAweDE0LAo+
ICt9OwoKc28ganVzdCB0byBtYWtlIHN1cmUsIHRoZSB0aW1pbmcgb24gdGhlIHB4MzAgKGFuZCBs
YXRlcikgdmFyaWFudCBpcyB0aGUKc2FtZSBmb3IgYWxsIGxhbmUgc3BlZWRzPwoKUGxlYXNlIGlu
Y2x1ZGUgdGhhdCBiaXQgaW4gdGhlIGNvbW1pdCBkZXNjcmlwdGlvbgoKVGhhbmtzCkhlaWtvCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
