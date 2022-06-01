Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08377C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jun 2022 15:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhsLLnJxSqMDIwg9Jg05KrMY2kHMg5sMdtvgWfNtk1A=; b=0fwl1NBbeaMr9U
	H0ejrzT85+VeYkBX9KuyNin2sWFXXjCQ03iwnRmDgb5s5rS4vAmEujmJ8Lf0Af5bOyM5uwVv5ttWY
	CUA+h9ok4Hh7NVqInrJQ2OlHx+Mx2vBlUEs58kUOss2szmf2w2LHow/CAVUJkWltKY6eeYW3Trwgs
	vGXx0uWgp/+2xIc0NaQVxLvOuxY/cDW5LnSZC3l5yoSZESCFhXmosfGZuAkSN9igbeu+xA9KROap8
	KtpEbXJSjBhGoN2MsxkEvf4VX/IG47ch3YcQicH0dbeuvJr5//bN/rxB+Glf7XvKtNO4yHPSXFVrV
	NT4sMX5n9iySz9j1pEXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwQVG-00Gwsy-5A; Wed, 01 Jun 2022 15:43:22 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwQVC-00GwrV-Ma; Wed, 01 Jun 2022 15:43:20 +0000
Received: by mail-ej1-x631.google.com with SMTP id m20so4570372ejj.10;
        Wed, 01 Jun 2022 08:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eExjNr6fs8mRydGKpSFoBAs8yn0OjvvcMBEWL8NYO50=;
        b=QeReasI5nzyoYwf2HE7Um3WaNjpgzi3+hs2cEneet2shfyHEcSAHMZIM5CDltIicgj
         9trv5RBkl+Qwg6C5l4NSIYsZGROSeBalRbv/xmfvI2l5JNHo0ZDFEL2VEVqQoTdah8aU
         IpvV17x4HdV+PHg2mOSKRk4+sPyzfcZ/hPpEr5H6IUl/kHtp4rCxAyRY5NykWyVqHYdu
         BuE1bLInE6xolADRW15X0ZFlMJZ5lXWdO8fFe9bBMaUaVMEzvLm4F5d41EtnLadU54jL
         wf4tjgEEIHg9B5ccnUw39SyOgaxNm6CA3xYc8avFezur+ZmsJ6wvKUdBSQhJxCQg+pBV
         wYNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eExjNr6fs8mRydGKpSFoBAs8yn0OjvvcMBEWL8NYO50=;
        b=BYCUtKDtZEfGKh64wQ12a9vxMyhDpDexvXfMLJV4q0XRooOqylqIRh9QjLtpNJo30P
         o+l5XDKkO4lFlouZPNDewwZH1I7YKByzqcvnjsucPp0YwNFCGv2x/PByoRPWfY3oCoe1
         4X4nWI9Tlkvl5UcN8v+9IeDkuukpcbrJpb93WKYb59lUOIh6tOS0sYVHM1MhbKPgtDe4
         e1Ibdbfb7ob3X/6RIUdMN/VLwMl6ExAbd6BI71DsUvF+dYEUKjBw4JiayQWZ5Xr2QYeF
         X84sZ3ePOZuAasCfRo6AisuzL/aVBXh8tfaE0uWnPGA0cCfL6B6MT9M+/GR+7mndozmk
         tWZA==
X-Gm-Message-State: AOAM530Tkk+fHVFvovBSkUCtROh7pIujvjFPIcTzN+3nKCMbnv1UQaI2
	+2z2JWdPS3HTJk8v6LotLvc=
X-Google-Smtp-Source: ABdhPJw7dHJzyhHVwkls8V0XWmtPtkUmYRDHSLb69EOifEu5t+2w0RzoTsPyS4kP1QriRFySeTgQlg==
X-Received: by 2002:a17:907:7f26:b0:6ff:ab8:e85 with SMTP id qf38-20020a1709077f2600b006ff0ab80e85mr98874ejc.281.1654098194360;
        Wed, 01 Jun 2022 08:43:14 -0700 (PDT)
Received: from kista.localnet (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id w20-20020a17090652d400b006f3ef214e22sm861447ejn.136.2022.06.01.08.43.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 08:43:13 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, samuel@sholland.org, nicolas.dufresne@collabora.com, andrzej.p@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, kernel@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: Re: [PATCH v6 09/17] media: uapi: HEVC: Define V4L2_CID_STATELESS_HEVC_SLICE_PARAMS as a dynamic array
Date: Wed, 01 Jun 2022 17:43:12 +0200
Message-ID: <8069971.T7Z3S40VBb@kista>
In-Reply-To: <2630478.mvXUDI8C0e@kista>
References: <20220527143134.3360174-1-benjamin.gaignard@collabora.com> <20220527143134.3360174-10-benjamin.gaignard@collabora.com> <2630478.mvXUDI8C0e@kista>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_084318_776468_1FC45633 
X-CRM114-Status: GOOD (  23.56  )
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

RG5lIG5lZGVsamEsIDI5LiBtYWogMjAyMiBvYiAxMToxOToxMiBDRVNUIGplIEplcm5laiDFoGty
YWJlYyBuYXBpc2FsKGEpOgo+IERuZSBwZXRlaywgMjcuIG1haiAyMDIyIG9iIDE2OjMxOjI2IENF
U1QgamUgQmVuamFtaW4gR2FpZ25hcmQgbmFwaXNhbChhKToKPiA+IE1ha2UgZXhwbGljaXQgdGhh
dCBWNEwyX0NJRF9TVEFURUxFU1NfSEVWQ19TTElDRV9QQVJBTVMgY29udHJvbCBpcwo+ID4gYSBk
eW5hbWljIGFycmF5IGNvbnRyb2wgdHlwZS4KPiA+IFNvbWUgZHJpdmVycyBtYXkgYmUgYWJsZSB0
byByZWNlaXZlIG11bHRpcGxlIHNsaWNlcyBpbiBvbmUgY29udHJvbAo+ID4gdG8gaW1wcm92ZSBk
ZWNvZGluZyBwZXJmb3JtYW5jZS4KPiA+IAo+ID4gRGVmaW5lIHRoZSBtYXggc2l6ZSBvZiB0aGUg
ZHluYW1pYyB0aGF0IGNhbiBkcml2ZXIgY2FuIHNldCBpbiAuZGltcyA9IHt9Lgo+ID4gCj4gPiBT
aWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFi
b3JhLmNvbT4KPiA+IC0tLQo+ID4gdmVyc2lvbiA2Ogo+ID4gLSBTZXQgVjRMMl9DVFJMX0ZMQUdf
RFlOQU1JQ19BUlJBWSBmbGFnIGF1dG9tYXRpY2FsbHkgd2hlbiB1c2luZwo+ID4gICBWNEwyX0NJ
RF9TVEFURUxFU1NfSEVWQ19TTElDRV9QQVJBTVMgY29udHJvbC4KPiA+IC0gQWRkIGEgZGVmaW5l
IGZvciBtYXggc2xpY2VzIGNvdW50Cj4gPiAKPiA+ICBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1h
cGkvbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3QgfCAyICsrCj4gPiAgZHJpdmVycy9tZWRp
YS92NGwyLWNvcmUvdjRsMi1jdHJscy1kZWZzLmMgICAgICAgICAgICAgICAgIHwgMSArCj4gPiAg
aW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmggICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgNSArKysrKwo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4gPiAKPiA+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2V4dC1j
dHJscy1jb2RlYy5yc3QgYi8KPiBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRs
L2V4dC1jdHJscy1jb2RlYy5yc3QKPiA+IGluZGV4IDA2Yjk2N2RlMTQwYy4uMDc5NmIxNTYzZGFh
IDEwMDY0NAo+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9l
eHQtY3RybHMtY29kZWMucnN0Cj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkv
bWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3QKPiA+IEBAIC0yOTg2LDYgKzI5ODYsOCBAQCBl
bnVtIHY0bDJfbXBlZ192aWRlb19oZXZjX3NpemVfb2ZfbGVuZ3RoX2ZpZWxkIC0KPiA+ICAgICAg
VGhlc2UgYml0c3RyZWFtIHBhcmFtZXRlcnMgYXJlIGRlZmluZWQgYWNjb3JkaW5nIHRvIDpyZWY6
YGhldmNgLgo+ID4gICAgICBUaGV5IGFyZSBkZXNjcmliZWQgaW4gc2VjdGlvbiA3LjQuNyAiR2Vu
ZXJhbCBzbGljZSBzZWdtZW50IGhlYWRlcgo+ID4gICAgICBzZW1hbnRpY3MiIG9mIHRoZSBzcGVj
aWZpY2F0aW9uLgo+ID4gKyAgICBUaGlzIGNvbnRyb2wgaXMgYSBkeW5hbWljYWxseSBzaXplZCAx
LWRpbWVuc2lvbmFsIGFycmF5LAo+ID4gKyAgICBWNEwyX0NUUkxfRkxBR19EWU5BTUlDX0FSUkFZ
IGZsYWcgbXVzdCBiZSBzZXQgd2hlbiB1c2luZyBpdC4KPiA+ICAKPiA+ICAuLiBjOnR5cGU6OiB2
NGwyX2N0cmxfaGV2Y19zbGljZV9wYXJhbXMKPiA+ICAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L21lZGlhL3Y0bDItY29yZS92NGwyLWN0cmxzLWRlZnMuYyBiL2RyaXZlcnMvbWVkaWEvCnY0bDIt
Cj4gY29yZS92NGwyLWN0cmxzLWRlZnMuYwo+ID4gaW5kZXggOWY1NTUwM2NkM2Q2Li5kNTk0ZWZi
Y2JiOTMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWN0cmxz
LWRlZnMuYwo+ID4gKysrIGIvZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1jdHJscy1kZWZz
LmMKPiA+IEBAIC0xNTEwLDYgKzE1MTAsNyBAQCB2b2lkIHY0bDJfY3RybF9maWxsKHUzMiBpZCwg
Y29uc3QgY2hhciAqKm5hbWUsIGVudW0gCj4gdjRsMl9jdHJsX3R5cGUgKnR5cGUsCj4gPiAgCQli
cmVhazsKPiA+ICAJY2FzZSBWNEwyX0NJRF9TVEFURUxFU1NfSEVWQ19TTElDRV9QQVJBTVM6Cj4g
PiAgCQkqdHlwZSA9IFY0TDJfQ1RSTF9UWVBFX0hFVkNfU0xJQ0VfUEFSQU1TOwo+ID4gKwkJKmZs
YWdzIHw9IFY0TDJfQ1RSTF9GTEFHX0RZTkFNSUNfQVJSQVk7Cj4gCj4gVGhpcyBjaGFuZ2UgYnJl
YWtzIENlZHJ1cy4gSSdsbCBjaGVjayB3aGF0IG5lZWRzIHRvIGJlIGNoYW5nZWQuCgpQbGVhc2Ug
aW5jbHVkZSB0aGUgY2hhbmdlIGJlbGxvdyB0byBrZWVwIENlZHJ1cyB3b3JraW5nLiBJJ2xsIGV4
cGFuZCBzdXBwb3J0IApmb3IgbW9yZSBzbGljZXMgbGF0ZXIuCgogQmVzdCByZWdhcmRzLAogSmVy
bmVqCgotLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1cy5jCisr
KyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzLmMKQEAgLTE3OCw2
ICsxNzgsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGNlZHJ1c19jb250cm9sIGNlZHJ1c19jb250
cm9sc1tdID0gewogICAgICAgIHsKICAgICAgICAgICAgICAgIC5jZmcgPSB7CiAgICAgICAgICAg
ICAgICAgICAgICAgIC5pZCAgICAgPSBWNEwyX0NJRF9TVEFURUxFU1NfSEVWQ19TTElDRV9QQVJB
TVMsCisgICAgICAgICAgICAgICAgICAgICAgIC5kaW1zICAgPSB7IDEgfSwKICAgICAgICAgICAg
ICAgIH0sCiAgICAgICAgICAgICAgICAuY29kZWMgICAgICAgICAgPSBDRURSVVNfQ09ERUNfSDI2
NSwKICAgICAgICB9LAogCj4gPiAgCQlicmVhazsKPiA+ICAJY2FzZSBWNEwyX0NJRF9TVEFURUxF
U1NfSEVWQ19TQ0FMSU5HX01BVFJJWDoKPiA+ICAJCSp0eXBlID0gVjRMMl9DVFJMX1RZUEVfSEVW
Q19TQ0FMSU5HX01BVFJJWDsKPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL21lZGlhL2hldmMtY3Ry
bHMuaCBiL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4gPiBpbmRleCAwZGJkNWQ2ODFjMjgu
LjE0MDE1MTYwOWM5NiAxMDA2NDQKPiA+IC0tLSBhL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5o
Cj4gPiArKysgYi9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaAo+ID4gQEAgLTMxMSw5ICszMTEs
MTQgQEAgc3RydWN0IHY0bDJfaGV2Y19wcmVkX3dlaWdodF90YWJsZSB7Cj4gPiAgI2RlZmluZSAK
VjRMMl9IRVZDX1NMSUNFX1BBUkFNU19GTEFHX1NMSUNFX0xPT1BfRklMVEVSX0FDUk9TU19TTElD
RVNfRU5BQkxFRCAKPiAoMVVMTCA8PCA4KQo+ID4gICNkZWZpbmUgVjRMMl9IRVZDX1NMSUNFX1BB
UkFNU19GTEFHX0RFUEVOREVOVF9TTElDRV9TRUdNRU5UCSgxVUxMIDw8IAo+IDkpCj4gPiAgCj4g
PiArI2RlZmluZSBWNEwyX0hFVkNfU0xJQ0VfTUFYX0NPVU5UCTYwMAo+ID4gKwo+ID4gIC8qKgo+
ID4gICAqIHY0bDJfY3RybF9oZXZjX3NsaWNlX3BhcmFtcyAtIEhFVkMgc2xpY2UgcGFyYW1ldGVy
cwo+ID4gICAqCj4gPiArICogVGhpcyBjb250cm9sIGlzIGEgZHluYW1pY2FsbHkgc2l6ZWQgMS1k
aW1lbnNpb25hbCBhcnJheSwKPiA+ICsgKiBWNEwyX0NUUkxfRkxBR19EWU5BTUlDX0FSUkFZIGZs
YWcgbXVzdCBiZSBzZXQgd2hlbiB1c2luZyBpdC4KPiA+ICsgKgo+ID4gICAqIEBiaXRfc2l6ZTog
c2l6ZSAoaW4gYml0cykgb2YgdGhlIGN1cnJlbnQgc2xpY2UgZGF0YQo+ID4gICAqIEBkYXRhX2Jp
dF9vZmZzZXQ6IG9mZnNldCAoaW4gYml0cykgdG8gdGhlIHZpZGVvIGRhdGEgaW4gdGhlIGN1cnJl
bnQgCnNsaWNlIAo+IGRhdGEKPiA+ICAgKiBAbmFsX3VuaXRfdHlwZTogc3BlY2lmaWVzIHRoZSBj
b2RpbmcgdHlwZSBvZiB0aGUgc2xpY2UgKEIsIFAgb3IgSSkKPiA+IC0tIAo+ID4gMi4zMi4wCj4g
PiAKPiA+IAo+IAo+IAo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
