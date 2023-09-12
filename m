Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD19ACA0EF3
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Sep 2023 15:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ey4wyCLEady5vqduYYh+VAbN3QMsCBnfKGVm2d/xzHM=; b=VQegyC1DFEyRVH
	9CJMCQKk1unK6FxG3KIWCaHOk2Jr4rsh4vd8rC92sSwhF03nFG2dXBugdlXBL8qYXpYNPP3iRdatx
	kPfc//J24G30pPBJpxiWTpPc5GHdLrpPCjPcYwGIIzCspnFykL+CPBMA+ZtJ1EIA6n9lWqY7zEaDB
	/AVuSopaX230YG1+tMIL38BEq5Tqz7dQC1VJMaHpXgKGev77+lQvdo/cxC2Bfx2eKA/5cXKi4kkyH
	vQcn2h1oJ61FTl/GtTeYeGmWjtaYfbAE26t5e2S3kyTUx/F+Oe1F3TvJD8m6SG+/R/jrKh8ygzxMm
	FCcMZJp5IEVdgo12463Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qg5fa-003kk5-13;
	Tue, 12 Sep 2023 15:51:18 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qg5fW-003kir-2t;
	Tue, 12 Sep 2023 15:51:16 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-52c9be5e6f0so7005262a12.1;
        Tue, 12 Sep 2023 08:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694533871; x=1695138671; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZUdgHz1EThvHhDCfER2QcOxP464/TYWECsF6ss3Llv8=;
        b=sN11SYaf+ieCv6Fb/1bhcZwNployLM5eAG5XUNxSF11dj9vWyyxTS3++zedScR9VRs
         DKpJC/uKDb3VM8djcyeCZF/Kvl8vIMAk3/g5CDTRh1SNE87YKUGqlItOQlwuPAZof3Kx
         gdjpIpMB6o81LyhuIOxHFSfEcBfx3cninV6/hb34/KAdejCQN6RBdVPn50tn72LzecZy
         NNzI7GVwoHqTa1me0SSgPxt3GwinEOAz7omW5bJTY4qhSKFsXdRy8japIWsfZtY/dM1D
         CJD81sL3ueEDAVSWeNJ6suh91GQ0hRiHFDq5xpOVZd1jKrHSkPU8gjCAY0PkW5EVounJ
         w7dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694533871; x=1695138671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZUdgHz1EThvHhDCfER2QcOxP464/TYWECsF6ss3Llv8=;
        b=cap9k4gVfbemFGg85iRC6X6RDDAYLufL+96D9TlHZFm/AbnV6HLa885SRt2I4s7A1r
         ivdykycfy/hPexoy7oGEOQ4f3nuVF15WPhaaiSTui2+uZMuaQO9yWVC5OWUIMPhdQoJS
         bhSeeWvOFCYIWV7YS3Ij+G/dfE7F6H8xzaAXGAGxculOtd6l5huo6EeMMEu19XFRR8p2
         CKuqZpY87Cr5P6m0j9w6Z7QaEfullHdtyqKIZ4o+6Tnor+F/ixqPq5Pqel7p7DNLbim1
         J+dStaUMauoHdHKKXyNlRqc9ZQT0sJboEzuhAxLaF7bBADi5MreA0A9GNO2RMNbXussL
         sBPw==
X-Gm-Message-State: AOJu0YxnvUuCOXkWBTkJG7f2XV3qH18p6H2+KAm5fLzSIEFEJMovK02G
	bv6jsDV09163aO5niFmrpRcmETrq4sP+YL/T
X-Google-Smtp-Source: AGHT+IEPyTBOuD137PDb5hsrEYqnclMHOWuZ7gkQz54FV5aXlia/e1v2LPpVwhbzWGM1Q6iInFPsoA==
X-Received: by 2002:a17:906:a18b:b0:99d:e417:d6f6 with SMTP id s11-20020a170906a18b00b0099de417d6f6mr9574690ejy.32.1694533870294;
        Tue, 12 Sep 2023 08:51:10 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id op5-20020a170906bce500b009a1fef32ce6sm7143043ejb.177.2023.09.12.08.51.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 08:51:09 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: mchehab@kernel.org, tfiga@chromium.org, m.szyprowski@samsung.com,
 ming.qian@nxp.com, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
Subject: Re: [PATCH v6 14/18] media: verisilicon: vp9: Use destination buffer height
 to compute chroma offset
Date: Tue, 12 Sep 2023 17:51:07 +0200
Message-ID: <1940906.PYKUYFuaPT@jernej-laptop>
In-Reply-To: <40329795-a57d-d0f3-adb4-0720dd20f6e2@collabora.com>
References: <20230901124414.48497-1-benjamin.gaignard@collabora.com>
 <3248154.aeNJFYEL58@jernej-laptop>
 <40329795-a57d-d0f3-adb4-0720dd20f6e2@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_085114_959229_FB4EC8EE 
X-CRM114-Status: GOOD (  26.35  )
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

RG5lIHRvcmVrLCAxMi4gc2VwdGVtYmVyIDIwMjMgb2IgMTA6NDE6MTAgQ0VTVCBqZSBCZW5qYW1p
biBHYWlnbmFyZCAKbmFwaXNhbChhKToKPiBMZSAxMS8wOS8yMDIzIMOgIDE4OjM2LCBKZXJuZWog
xaBrcmFiZWMgYSDDqWNyaXQgOgo+ID4gRG5lIHBvbmVkZWxqZWssIDExLiBzZXB0ZW1iZXIgMjAy
MyBvYiAxMDo1NTowMiBDRVNUIGplIEJlbmphbWluIEdhaWduYXJkCj4gPiAKPiA+IG5hcGlzYWwo
YSk6Cj4gPj4gTGUgMTAvMDkvMjAyMyDDoCAxNToyMSwgSmVybmVqIMWga3JhYmVjIGEgw6ljcml0
IDoKPiA+Pj4gSGkgQmVuamFtaW4hCj4gPj4+IAo+ID4+PiBEbmUgcGV0ZWssIDAxLiBzZXB0ZW1i
ZXIgMjAyMyBvYiAxNDo0NDoxMCBDRVNUIGplIEJlbmphbWluIEdhaWduYXJkCj4gPj4+IAo+ID4+
PiBuYXBpc2FsKGEpOgo+ID4+Pj4gU291cmNlIGFuZCBkZXN0aW5hdGlvbiBidWZmZXIgaGVpZ2h0
IG1heSBub3QgYmUgdGhlIHNhbWUgYmVjYXVzZQo+ID4+Pj4gYWxpZ25tZW50IGNvbnN0cmFpbnQg
YXJlIGRpZmZlcmVudC4KPiA+Pj4+IFVzZSBkZXN0aW5hdGlvbiBoZWlnaHQgdG8gY29tcHV0ZSBj
aHJvbWEgb2Zmc2V0IGJlY2F1c2Ugd2UgdGFyZ2V0Cj4gPj4+PiB0aGlzIGJ1ZmZlciBhcyBoYXJk
d2FyZSBvdXRwdXQuCj4gPj4+PiAKPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWdu
YXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+ID4+Pj4gRml4ZXM6IGUyZGE0
NjU0NTVjZSAoIm1lZGlhOiBoYW50cm86IFN1cHBvcnQgVlA5IG9uIHRoZSBHMiBjb3JlIikKPiA+
Pj4+IC0tLQo+ID4+Pj4gCj4gPj4+PiAgICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL2hhbnRyb19nMl92cDlfZGVjLmMgfCA0ICstLS0KPiA+Pj4+ICAgIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkKPiA+Pj4+IAo+ID4+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cyX3ZwOV9kZWMu
Ywo+ID4+Pj4gYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl92
cDlfZGVjLmMgaW5kZXgKPiA+Pj4+IDZkYjFjMzJmY2U0ZC4uMWYzZjVlN2NlOTc4IDEwMDY0NAo+
ID4+Pj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzJf
dnA5X2RlYy5jCj4gPj4+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29u
L2hhbnRyb19nMl92cDlfZGVjLmMKPiA+Pj4+IEBAIC05Myw5ICs5Myw3IEBAIHN0YXRpYyBpbnQg
c3RhcnRfcHJlcGFyZV9ydW4oc3RydWN0IGhhbnRyb19jdHggKmN0eCwKPiA+Pj4+IGNvbnN0IHN0
cnVjdCB2NGwyX2N0cmxfdnA5XyBzdGF0aWMgc2l6ZV90IGNocm9tYV9vZmZzZXQoY29uc3Qgc3Ry
dWN0Cj4gPj4+PiBoYW50cm9fY3R4ICpjdHgsCj4gPj4+PiAKPiA+Pj4+ICAgIAkJCSAgICBjb25z
dCBzdHJ1Y3QgdjRsMl9jdHJsX3ZwOV9mcmFtZQo+ID4+PiAKPiA+Pj4gKmRlY19wYXJhbXMpCj4g
Pj4+IAo+ID4+Pj4gICAgewo+ID4+Pj4gCj4gPj4+PiAtCWludCBieXRlc19wZXJfcGl4ZWwgPSBk
ZWNfcGFyYW1zLT5iaXRfZGVwdGggPT0gOCA/IDEgOiAyOwo+ID4+Pj4gLQo+ID4+Pj4gLQlyZXR1
cm4gY3R4LT5zcmNfZm10LndpZHRoICogY3R4LT5zcmNfZm10LmhlaWdodCAqIGJ5dGVzX3Blcl9w
aXhlbDsKPiA+Pj4+ICsJcmV0dXJuIGN0eC0+ZHN0X2ZtdC53aWR0aCAqIGN0eC0+ZHN0X2ZtdC5o
ZWlnaHQgKiBjdHgtPmJpdF9kZXB0aCAvCj4gPj4+IAo+ID4+PiA4Owo+ID4+PiAKPiA+Pj4gQ29t
bWl0IG1lc3NhZ2UgZG9lc24ndCBtZW50aW9uIGJpdF9kZXB0aCBjaGFuZ2UgYXQgYWxsLiBXaGls
ZSBJIHRoaW5rCj4gPj4+IHRoZXJlIGlzIG5vIGRpZmZlcmVuY2UgYmV0d2VlbiBkZWNfcGFyYW1z
LT5iaXRfZGVwdGggYW5kIGN0eC0+Yml0X2RlcHRoLAo+ID4+PiB5b3Ugc2hvdWxkbid0IGp1c3Qg
dXNlIG9yZGluYXJ5IGRpdmlzaW9uLiBJZiBiaXRfZGVwdGggaXMgMTAsIGl0IHdpbGwgYmUKPiA+
Pj4gcm91bmRlZCBkb3duLiBBbmQgaWYgeW91IGRlY2lkZSB0byB1c2UgYml0X2RlcHRoIGZyb20g
Y29udGV4dCwgcGxlYXNlCj4gPj4+IHJlbW92ZSBkZWNfcGFyYW1zIGFyZ3VtZW50Lgo+ID4+IAo+
ID4+IEkgd2lsbCBjaGFuZ2UgdGhpcyBwYXRjaCBhbmQgY3JlYXRlIGEgaGVscGVycyBmdW5jdGlv
biBmb3IgY2hyb21hIGFuZAo+ID4+IG1vdGlvbiB2ZWN0b3JzIG9mZnNldHMgdGhhdCBWUDkgYW5k
IEhFVkMgY29kZSB3aWxsIHVzZSBzaW5jZSB0aGV5IGFyZQo+ID4+IGlkZW50aWNhbC4gSSBkb24n
dCBzZWUgaXNzdWUgd2l0aCB0aGUgZGl2aXNpb24uIElmIHlvdSBoYXZlIGluIG1pbmQgYQo+ID4+
IHNvbHV0aW9uIHBsZWFzZSB3cml0ZSBpdCBzbyBJIGNvdWxkIHRlc3QgaXQuCj4gPiAKPiA+IFNv
bHV0aW9uIGlzIHNhbWUgYXMgdGhlIGNvZGUgdGhhdCB5b3UgcmVtb3ZlZDoKPiA+IGludCBieXRl
c19wZXJfcGl4ZWwgPSBkZWNfcGFyYW1zLT5iaXRfZGVwdGggPT0gOCA/IDEgOiAyOwo+ID4gCj4g
PiBPciBhbHRlcm5hdGl2ZWx5Ogo+ID4gaW50IGJ5dGVzX3Blcl9waXhlbCA9IERJVl9ST1VORF9V
UChkZWNfcGFyYW1zLT5iaXRfZGVwdGgsIDgpOwo+ID4gCj4gPiBDb25zaWRlciBiaXRfZGVwdGgg
YmVpbmcgMTAuIFdpdGggb2xkIGNvZGUgeW91IGdldCAyLCB3aXRoIHlvdXJzIHlvdSBnZXQKPiA+
IDEuCj4gCj4gVGhlIG9sZCBjb2RlIGlzIHdyb25nIDstKQo+IElmIHRoZSBmb3JtYXQgZGVwdGgg
aXMgMTAgYml0cyBwZXIgcGl4ZWwgdGhlbiBjaHJvbWEgb2Zmc2V0IChpbiBieXRlcykKPiBmb3Jt
dWxhIGlzIHdpZHRoICogaGVpZ2h0ICogMTAgLyA4IG5vdCB3aWR0aCAqIGhlaWdodCAqIDE2IC8g
OC4KPiAKPiBJIGhhdmUgYWxyZWFkeSBjb25maXJtIHRoYXQgd2l0aCBIRVZDIG9uIHRoZSBzYW1l
IGhhcmR3YXJlLgoKT2ssIG1lbnRpb24gb2YgYml0X2RlcHRoIGlzc3VlIGluIGNvbW1pdCBsb2cg
d291bGQgYmUgZ3JlYXQuIEl0IHRhbGtzIG9ubHkgCmFib3V0IHdpZHRoIGFuZCBoZWlnaHQuCgpJ
biBhbnkgY2FzZSwgYXJlIHdpZHRoIGFuZC9vciBoZWlnaHQgYWx3YXlzIGRpdmlkYWJsZSBieSA4
PwoKQmVzdCByZWdhcmRzLApKZXJuZWoKCj4gCj4gUmVnYXJkcywKPiBCZW5qYW1pbgo+IAo+ID4g
QmVzdCByZWdhcmRzLAo+ID4gSmVybmVqCj4gPiAKPiA+PiBSZWdhcmRzLAo+ID4+IEJlbmphbWlu
Cj4gPj4gCj4gPj4+IEJlc3QgcmVnYXJkcywKPiA+Pj4gSmVybmVqCj4gPj4+IAo+ID4+Pj4gICAg
fQo+ID4+Pj4gICAgCj4gPj4+PiAgICBzdGF0aWMgc2l6ZV90IG12X29mZnNldChjb25zdCBzdHJ1
Y3QgaGFudHJvX2N0eCAqY3R4LAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
