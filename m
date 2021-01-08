Return-Path: <SRS0=mPU+=GL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79DBC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 13:14:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C027235FC
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 13:14:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4C027235FC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A+Jdgr4FguQRKeCijepVcJVRPSG0yoHOyyvKRK/7zoQ=; b=yE102bliso7/m238lHBqmksjy
	fryjik63jR2xqyj2RH1SURGu8S95+Ew6XSkesK8vn3Ed6WeLh9U9m2BTqi0EPgQr+Iz4UDh0t0wYa
	Y6lOPkD0H5QHYdnpvZRprRtGcVPe63NoqAw4RH/zX2D4xABzeiwfIvpsl2sHUym4Y37PS3CLqz71M
	5KMFtDLhORic5nri8Irmmf5kRXBmBO923zF0ttyJVccFb6kd24Vf7rclOHCBCW0+DcwzLunedgs8i
	IfJc1Aghz8L2R6SjACTSPbAwuDpt0G0sSmbc7EoGEGxOBzEKuDXfxSweaVHX5KAXD1AYoPxP1iu5s
	CI5Gs+5uw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxrat-0006tc-86; Fri, 08 Jan 2021 13:14:19 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxraQ-0006pV-C2; Fri, 08 Jan 2021 13:13:55 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id B596C1F469E7
Message-ID: <f9a163675ae05cc77b2d527ea5d68064fbbeead9.camel@collabora.com>
Subject: Re: [PATCH 5/5] media: hantro: Add support for the Rockchip PX30
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Date: Fri, 08 Jan 2021 10:13:36 -0300
In-Reply-To: <X/ggTOOTBhGoFDpW@aptenodytes>
References: <20210107134101.195426-1-paul.kocialkowski@bootlin.com>
 <20210107134101.195426-6-paul.kocialkowski@bootlin.com>
 <f7291b83fe39d71c3192ea58ebf71e3909bd38af.camel@collabora.com>
 <X/ggTOOTBhGoFDpW@aptenodytes>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210108_081350_535111_7EA1E73A 
X-CRM114-Status: GOOD (  22.42  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Jacob Chen <jacob-chen@iotwrt.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCAyMDIxLTAxLTA4IGF0IDEwOjA1ICswMTAwLCBQYXVsIEtvY2lhbGtvd3NraSB3cm90
ZToKPiBIaSBFemVxdWllbCwKPiAKPiBPbiBUaHUgMDcgSmFuIDIxLCAxNjowOCwgRXplcXVpZWwg
R2FyY2lhIHdyb3RlOgo+ID4gSGFwcHkgdG8gc2VlIHRoaXMgcGF0Y2guIEl0IHdhcyBvbiBteSBU
T0RPIGxpc3QsCj4gPiBidXQgSSBoYWRuJ3QgaGFkIHRpbWUgdG8gYnJpbmd1cCBteSByazMzMjYg
ZGV2aWNlLgo+IAo+IFNhbWUgaGVyZSwgSSBqdXN0IGhhZCBhbiBvY2Nhc2lvbiB0byB1c2UgaXQg
YWdhaW4gdGhlc2UgZGF5cyBzbyBJIGp1bXBlZAo+IG9uIGl0IQo+IAo+ID4gQSBmZXcgY29tbWVu
dHMuCj4gPiAKPiA+IE9uIFRodSwgMjAyMS0wMS0wNyBhdCAxNDo0MSArMDEwMCwgUGF1bCBLb2Np
YWxrb3dza2kgd3JvdGU6Cj4gPiA+IFRoZSBQWDMwIFNvQyBpbmNsdWRlcyBib3RoIHRoZSBWRFBV
MiBhbmQgVkVQVTIgYmxvY2tzIHdoaWNoIGFyZSBzaW1pbGFyCj4gPiA+IHRvIHRoZSBSSzMzOTkg
KEhhbnRybyBHMS9IMSB3aXRoIHNodWZmbGVkIHJlZ2lzdGVycykuCj4gPiA+IAo+ID4gPiBCZXNp
ZGVzIHRha2luZyBhbiBleHRyYSBjbG9jaywgaXQgYWxzbyBzaGFyZXMgYW4gaW50ZXJydXB0IHdp
dGggdGhlIElPTU1VCj4gPiA+IHNvIGl0J3MgbmVjZXNzYXJ5IHRvIHJlcXVlc3QgdGhlIGludGVy
cnVwdCBzaGFyZWQuCj4gPiA+IAo+ID4gClsuLl0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2h3LmggYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL2hhbnRyb19ody5oCj4gPiA+IGluZGV4IDM0YzllNDY0OWEyNS4uMDdmNTE2ZmQ3YTJl
IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19o
dy5oCj4gPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2h3LmgK
PiA+ID4gQEAgLTE0OCw2ICsxNDgsNyBAQCBlbnVtIGhhbnRyb19lbmNfZm10IHsKPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoFJLMzI4OF9WUFVfRU5DX0ZNVF9VWVZZNDIyID0gMywKPiA+ID4gwqB9Owo+
ID4gPiDCoAo+ID4gPiArZXh0ZXJuIGNvbnN0IHN0cnVjdCBoYW50cm9fdmFyaWFudCBweDMwX3Zw
dV92YXJpYW50Owo+ID4gPiDCoGV4dGVybiBjb25zdCBzdHJ1Y3QgaGFudHJvX3ZhcmlhbnQgcmsz
Mzk5X3ZwdV92YXJpYW50Owo+ID4gPiDCoGV4dGVybiBjb25zdCBzdHJ1Y3QgaGFudHJvX3Zhcmlh
bnQgcmszMzI4X3ZwdV92YXJpYW50Owo+ID4gPiDCoGV4dGVybiBjb25zdCBzdHJ1Y3QgaGFudHJv
X3ZhcmlhbnQgcmszMjg4X3ZwdV92YXJpYW50Owo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
dGFnaW5nL21lZGlhL2hhbnRyby9yazMzOTlfdnB1X2h3LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvaGFudHJvL3JrMzM5OV92cHVfaHcuYwo+ID4gPiBpbmRleCA3YTc5NjJjZjc3MWUuLjQxMTJm
OThiYWE2MCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9y
azMzOTlfdnB1X2h3LmMKPiA+ID4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9y
azMzOTlfdnB1X2h3LmMKPiA+IAo+ID4gUGVyaGFwcyBpdCdzIHRpbWUgdG8gcmVuYW1lIHRoaXMg
dG8gcm9ja2NoaXBfdnB1X2h3LmMsCj4gPiBhbmQgbWVyZ2UgcmszMjg4IGFuZCByazMzOTk/IEl0
J3MgYSBuaXRwaWNrLCB0aG91Z2guCj4gCj4gSGFoYSwgSSB3YXMgdGhpbmtpbmcgdGhlIGV4YWN0
IHNhbWUgdGhpbmcgYnV0IHdhc24ndCBzdXJlIGl0IHdvdWxkIGJlIHdlbGNvbWUhCj4gCj4gSSB3
YXMgdGhpbmtpbmcgb2Ygcm9ja2NoaXBfdnB1Ml9ody5jIG9yIHJvY2tjaGlwX3ZkcHUyX2h3LmMg
c2luY2UgdGhhdCdzCj4gYXBwYXJlbnRseSBob3cgaXQncyBjYWxsZWQgaW4gUm9ja2NoaXAgdGVy
bWlub2xvZ3k6IFZEUFUyIGFuZCBWRVBVMiBmb3IgdGhlCj4gSGFudHJvIEcxIGFuZCBIMSB3aXRo
IHRoZSBzaHVmZmxlZCByZWdpc3RlciBsYXlvdXQuIFRoZSByazMyODggc3R1ZmYgaXMKPiBwcm9i
YWJseSBWRFBVMS9WRVBVMSBhbmQgd2UgbWlnaHQgd2FudCB0byByZW5hbWUgaXQgYWNjb3JkaW5n
bHkgYXMgd2VsbC4KPiAKCkknZCByYXRoZXIga2VlcCBpdCBzaW1wbGUgYXMgcm9ja2NoaXBfdnB1
X2h3LmMgYW5kIGp1c3QgdGhyb3cgaW4gdGhlcmUKYWxsIHRoZSByb2NrY2hpcCBzdHVmZi4KClRo
YW5rcywKRXplcXVpZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
