Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77AE0EB64DD
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jul 2023 07:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlYv+srk9Kt6Pq8lHzGyj7hoRJRPnc3wtXsT7RK4fto=; b=h1oVFTuhhx1r8q
	bruJ5wZmuW9l1PiABGag4g/N4+e6xEQBDNCobSfbaAIiBQO4Di0QXgY8R9jomgqzC6dyniCuW+eGa
	DLzGaIRMwytARYX1WYiUXQg+gQ24tnv6QP3B9Q4yyKdlu3XWU2sDGraU8PWdTpcmOVKYRWwyDUy+P
	xF/xHltVb3zZ44JC69v1RbXDpSGgtSANtLwbZg0NUvcYj9UlWIP6IdreOw/N7fRW0yfg2fGlz/1+t
	mPwv1xGATEBvdQ01LO+d8EC1XgZowl9POioRVC7CcXkJQEwf6MK/bPHBv7l1r5rBzwdXRlBRBP/fG
	pxfybYWbWz87nRPJCiVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHJYV-000oYt-38;
	Thu, 06 Jul 2023 07:37:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHJYT-000oXL-09
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Jul 2023 07:37:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1qHJYM-0006DP-4Z; Thu, 06 Jul 2023 09:37:26 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1qHJYK-0007Ou-CB; Thu, 06 Jul 2023 09:37:24 +0200
Date: Thu, 6 Jul 2023 09:37:24 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
	mchehab@kernel.org, m.szyprowski@samsung.com,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	kernel@pengutronix.de, nicolas.dufresne@collabora.com,
	didi.debian@cknow.org, hverkuil-cisco@xs4all.nl
Subject: Re: [PATCH v2] media: verisilicon: Fix crash when probing encoder
Message-ID: <20230706073724.GG13288@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
	mchehab@kernel.org, m.szyprowski@samsung.com,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	kernel@pengutronix.de, nicolas.dufresne@collabora.com,
	didi.debian@cknow.org, hverkuil-cisco@xs4all.nl
References: <20230413104756.356695-1-benjamin.gaignard@collabora.com>
 <20230601132749.GA31313@pengutronix.de>
 <2a892e71-f1be-41eb-5397-87484db7d592@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2a892e71-f1be-41eb-5397-87484db7d592@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_003733_083106_A3FA0804 
X-CRM114-Status: GOOD (  30.88  )
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

T24gVGh1LCAwMSBKdW4gMjAyMyAxNjowODoxMyArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6Cj4gTGUgMDEvMDYvMjAyMyDDoCAxNToyNywgTWljaGFlbCBUcmV0dGVyIGEgw6ljcml0wqA6
Cj4gPiBPbiBUaHUsIDEzIEFwciAyMDIzIDEyOjQ3OjU2ICswMjAwLCBCZW5qYW1pbiBHYWlnbmFy
ZCB3cm90ZToKPiA+ID4gY3R4LT52cHVfZHN0X2ZtdCBpcyBubyBtb3JlIGluaXRpYWxpemVkIGJl
Zm9yZSBjYWxsaW5nIGhhbnRyb190cnlfZm10KCkKPiA+ID4gc28gYXNzaWduZSBpdCB0byB2cHVf
Zm10IGxlZCB0byBjcmFzaCB0aGUga2VybmVsLgo+ID4gPiBMaWtlIGZvciBkZWNvZGVyIGNhc2Ug
dXNlICdmbXQnIGFzIGZvcm1hdCBmb3IgZW5jb2RlciBhbmQgY2xlYW4gdXAKPiA+ID4gdGhlIGNv
ZGUuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFt
aW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPiA+ID4gVGVzdGVkLWJ5OiBNYXJlayBTenlwcm93
c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Cj4gPiA+IEZpeGVzOiBkYjZmNjhiNTFlNWMg
KCJtZWRpYTogdmVyaXNpbGljb246IERvIG5vdCBzZXQgY29udGV4dCBzcmMvZHN0IGZvcm1hdHMg
aW4gcmVzZXQgZnVuY3Rpb25zIikKPiA+ID4gLS0tCj4gPiA+IHZlcnNpb24gMjoKPiA+ID4gLSBS
ZW1vdmUgdXNlbGVzcyB2cHVfZm10Lgo+ID4gPiAKPiA+ID4gICBkcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMgfCAxMCArKystLS0tLS0tCj4gPiA+ICAgMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192
NGwyLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMK
PiA+ID4gaW5kZXggOGYxNDE0MDg1ZjQ3Li5kNzFmNzk0NzEzOTYgMTAwNjQ0Cj4gPiA+IC0tLSBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+ID4gPiAr
KysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMKPiA+
ID4gQEAgLTI3NSw3ICsyNzUsNyBAQCBzdGF0aWMgaW50IGhhbnRyb190cnlfZm10KGNvbnN0IHN0
cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4gPiA+ICAgCQkJICBzdHJ1Y3QgdjRsMl9waXhfZm9ybWF0
X21wbGFuZSAqcGl4X21wLAo+ID4gPiAgIAkJCSAgZW51bSB2NGwyX2J1Zl90eXBlIHR5cGUpCj4g
PiA+ICAgewo+ID4gPiAtCWNvbnN0IHN0cnVjdCBoYW50cm9fZm10ICpmbXQsICp2cHVfZm10Owo+
ID4gPiArCWNvbnN0IHN0cnVjdCBoYW50cm9fZm10ICpmbXQ7Cj4gPiA+ICAgCWJvb2wgY2FwdHVy
ZSA9IFY0TDJfVFlQRV9JU19DQVBUVVJFKHR5cGUpOwo+ID4gPiAgIAlib29sIGNvZGVkOwo+ID4g
PiBAQCAtMjk1LDExICsyOTUsNyBAQCBzdGF0aWMgaW50IGhhbnRyb190cnlfZm10KGNvbnN0IHN0
cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4gPiA+ICAgCWlmIChjb2RlZCkgewo+ID4gPiAgIAkJcGl4
X21wLT5udW1fcGxhbmVzID0gMTsKPiA+ID4gLQkJdnB1X2ZtdCA9IGZtdDsKPiA+ID4gLQl9IGVs
c2UgaWYgKGN0eC0+aXNfZW5jb2Rlcikgewo+ID4gPiAtCQl2cHVfZm10ID0gY3R4LT52cHVfZHN0
X2ZtdDsKPiA+ID4gLQl9IGVsc2Ugewo+ID4gPiAtCQl2cHVfZm10ID0gZm10Owo+ID4gPiArCX0g
ZWxzZSBpZiAoIWN0eC0+aXNfZW5jb2Rlcikgewo+ID4gPiAgIAkJLyoKPiA+ID4gICAJCSAqIFdp
ZHRoL2hlaWdodCBvbiB0aGUgQ0FQVFVSRSBlbmQgb2YgYSBkZWNvZGVyIGFyZSBpZ25vcmVkIGFu
ZAo+ID4gPiAgIAkJICogcmVwbGFjZWQgYnkgdGhlIE9VVFBVVCBvbmVzLgo+ID4gPiBAQCAtMzEx
LDcgKzMwNyw3IEBAIHN0YXRpYyBpbnQgaGFudHJvX3RyeV9mbXQoY29uc3Qgc3RydWN0IGhhbnRy
b19jdHggKmN0eCwKPiA+ID4gICAJcGl4X21wLT5maWVsZCA9IFY0TDJfRklFTERfTk9ORTsKPiA+
ID4gICAJdjRsMl9hcHBseV9mcm1zaXplX2NvbnN0cmFpbnRzKCZwaXhfbXAtPndpZHRoLCAmcGl4
X21wLT5oZWlnaHQsCj4gPiA+IC0JCQkJICAgICAgICZ2cHVfZm10LT5mcm1zaXplKTsKPiA+ID4g
KwkJCQkgICAgICAgJmZtdC0+ZnJtc2l6ZSk7Cj4gPiBUaGlzIGNhdXNlcyBhIHJlZ3Jlc3Npb24g
b24gdGhlIE9VVFBVVCBkZXZpY2Ugb2YgdGhlIGVuY29kZXIuIGZtdC0+ZnJtc2l6ZSBpcwo+ID4g
b25seSB2YWxpZCBmb3IgY29kZWQgKCJiaXRzdHJlYW0iKSBmb3JtYXRzLCBidXQgZm10IG9uIHRo
ZSBPVVRQVVQgb2YgYW4KPiA+IGVuY29kZXIgd2lsbCBiZSBhIHJhdyBmb3JtYXQuIFRoaXMgcmVz
dWx0cyBpbiB3aWR0aCBhbmQgaGVpZ2h0IHRvIGJlIGNsYW1wZWQKPiA+IHRvIDAuCj4gPiAKPiA+
IEkgdGhpbmsgdGhlIGNvcnJlY3QgZml4IHdvdWxkIGJlIHRvIGFwcGx5IHRoZSBmcm1zaXplIGNv
bnN0cmFpbnRzIG9mIHRoZQo+ID4gY3VycmVudGx5IGNvbmZpZ3VyZWQgY29kZWQgZm9ybWF0LCBi
dXQgYXMgY3R4LT52cHVfZHN0X2ZtdCBpcyBub3QgaW5pdGlhbGl6ZWQKPiA+IGJlZm9yZSBjYWxs
aW5nIHRoaXMgY29kZSwgSSBkb24ndCBrbm93IGhvdyB0byBnZXQgdGhlIGNvZGVkIGZvcm1hdC4K
PiAKPiBpZiBjdHgtPmRzdF9mbXQgaXMgY29ycmVjdGx5IHNldCAoYW5kIGl0IHNob3VsZCBiZSkg
dGhlbiBkb2luZzoKPiAKPiBwaXhfbXAtPndpZHRoID0gY3R4LT5kc3RfZm10LndpZHRoOwo+IHBp
eF9tcC0+aGVpZ2h0ID0gY3R4LT5kc3RfZm10LmhlaWdodDsKPiAKPiBzaG91bGQgc29sdmUgdGhl
IGlzc3VlLgoKVXNpbmcgdGhlIHdpZHRoIGFuZCBoZWlnaHQgb2YgZHN0X2ZtdCBmb3IgT1VUUFVU
IGlzIG5vdCBjb3JyZWN0LCBzaW5jZSB0aGUKdjRsMiBzdGF0ZWxlc3MgZW5jb2RlciBzcGVjIGRp
Y3RhdGVzIHRoYXQgdGhlIHNpemUgaXMgc2V0IG9uIHRoZSBPVVRQVVQgZGV2aWNlCmFuZCB3aWxs
IGJlIGlnbm9yZWQgb24gdGhlIENBUFRVUkUgZGV2aWNlLgoKSSBzZW50IGEgcGF0Y2ggWzBdIHRv
IGFwcGx5IHRoZSBmcmFtZSBjb25zdHJhaW50cyB1c2luZyBkc3RfZm10LgoKTWljaGFlbAoKWzBd
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1lZGlhLzIwMjMwNzA2MDcxNTEwLjE3MTc2
ODQtMS1tLnRyZXR0ZXJAcGVuZ3V0cm9uaXguZGUvCgo+ID4gPiAgIAlpZiAoIWNvZGVkKSB7Cj4g
PiA+ICAgCQkvKiBGaWxsIHJlbWFpbmluZyBmaWVsZHMgKi8KPiA+ID4gLS0gCj4gPiA+IDIuMzQu
MQo+ID4gPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
