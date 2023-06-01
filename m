Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BBF0C77B7A
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jun 2023 08:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wmm5DNqYJSlCLkuQBTEmkykXhhJYozXR/xd7v+uCE+Q=; b=ejLo8BCzvMpcsm
	V7YoQ148rqYKxFrEU+w8vIS6jeN+o5DocUtRS+al5ABsKJXReYuzuXcek0den44FeT1DRo3g1BXUI
	2QpUwk0GxY2q6vAEmXS39GmKb1zmhkXJ0vZ4OS+Ij4ed6EP3EiEhHoDBESyRUixw0pyUrNsrZ2TTI
	KUNbbIO0mvwvvN3Uwve4imSfA5I4U54kcraKKEqyGz112k+v+lzAxmswFXxt6xy7NgeW/dHyN+aLB
	zPRGcqrVU1kLElsrOlS/TeK56xqVFTIX+JYB7AGx7TAo1Xwct6np9X2PodoRPyQGYfftNyCY0ODUC
	rXwsznsy9N3IGk1fyVUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dlh-002aBU-2j;
	Thu, 01 Jun 2023 08:34:49 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dle-002a8w-0z;
	Thu, 01 Jun 2023 08:34:47 +0000
Received: from pendragon.ideasonboard.com (om126205251136.34.openmobile.ne.jp [126.205.251.136])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 14E272B6;
	Thu,  1 Jun 2023 10:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1685608460;
	bh=gjjeif7oGjHL6hoGkZVclWwy0gG6mXm12g9c6do6TMY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JUUnACbDpEB6bOR3h2O5ln8qOzpTqf9VBhkZ21myMqir6gqWJBUH2lhbgPljo3AUr
	 ZLmbW7sTAYzT5ej8JCl0YnN2x2g7F+RvAmu0lgbeX4QT61LRIobNk04EA1PyP66ClH
	 YW/Xq3c4rgNzXp9p+1Ol32sfvdB3/t8nHUJEqQMg=
Date: Thu, 1 Jun 2023 11:34:38 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Hans Verkuil <hverkuil-cisco@xs4all.nl>, tfiga@chromium.org,
	m.szyprowski@samsung.com, mchehab@kernel.org, ming.qian@nxp.com,
	shijie.qin@nxp.com, eagle.zhou@nxp.com, bin.liu@mediatek.com,
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
	tiffany.lin@mediatek.com, andrew-ct.chen@mediatek.com,
	yunfei.dong@mediatek.com, stanimir.k.varbanov@gmail.com,
	quic_vgarodia@quicinc.com, agross@kernel.org, andersson@kernel.org,
	konrad.dybcio@linaro.org, ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de, daniel.almeida@collabora.com,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 3/8] media: videobuf2: Add a module param to limit vb2
 queue buffer storage
Message-ID: <20230601083438.GE22609@pendragon.ideasonboard.com>
References: <20230321102855.346732-1-benjamin.gaignard@collabora.com>
 <20230321102855.346732-4-benjamin.gaignard@collabora.com>
 <6c4658fd-3a64-b3f8-67cd-17ed2d7d3567@xs4all.nl>
 <20230531080331.GB6496@pendragon.ideasonboard.com>
 <608ae7d6-3f3b-137d-08d2-d41a240be2c4@xs4all.nl>
 <20230531123945.GF27043@pendragon.ideasonboard.com>
 <6f53b5f6-6649-f194-1808-5f5757b449f4@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f53b5f6-6649-f194-1808-5f5757b449f4@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_013446_515124_9D77F7C1 
X-CRM114-Status: GOOD (  37.90  )
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

SGkgQmVuamFtaW4sCgpPbiBUaHUsIEp1biAwMSwgMjAyMyBhdCAxMDowMzozOUFNICswMjAwLCBC
ZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiBMZSAzMS8wNS8yMDIzIMOgIDE0OjM5LCBMYXVyZW50
IFBpbmNoYXJ0IGEgw6ljcml0wqA6Cj4gPiBPbiBXZWQsIE1heSAzMSwgMjAyMyBhdCAxMDozMDoz
NkFNICswMjAwLCBIYW5zIFZlcmt1aWwgd3JvdGU6Cj4gPj4gT24gNS8zMS8yMyAxMDowMywgTGF1
cmVudCBQaW5jaGFydCB3cm90ZToKPiA+Pj4gT24gV2VkLCBNYXkgMzEsIDIwMjMgYXQgMDg6MzY6
NTlBTSArMDIwMCwgSGFucyBWZXJrdWlsIHdyb3RlOgo+ID4+Pj4gT24gMjEvMDMvMjAyMyAxMToy
OCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gPj4+Pj4gQWRkIG1vZHVsZSBwYXJhbWV0ZXIg
Im1heF92Yl9idWZmZXJfcGVyX3F1ZXVlIiB0byBiZSBhYmxlIHRvIGxpbWl0Cj4gPj4+Pj4gdGhl
IG51bWJlciBvZiB2YjIgYnVmZmVycyBzdG9yZSBpbiBxdWV1ZS4KPiA+Pj4+Pgo+ID4+Pj4+IFNp
Z25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJv
cmEuY29tPgo+ID4+Pj4+IC0tLQo+ID4+Pj4+ICAgZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9i
dWYyL3ZpZGVvYnVmMi1jb3JlLmMgfCAxNSArKystLS0tLS0tLS0tLS0KPiA+Pj4+PiAgIGluY2x1
ZGUvbWVkaWEvdmlkZW9idWYyLWNvcmUuaCAgICAgICAgICAgICAgICAgIHwgMTEgKysrKysrKysr
LS0KPiA+Pj4+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRp
b25zKC0pCj4gPj4+Pj4KPiA+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9jb21tb24v
dmlkZW9idWYyL3ZpZGVvYnVmMi1jb3JlLmMgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1
ZjIvdmlkZW9idWYyLWNvcmUuYwo+ID4+Pj4+IGluZGV4IGFlOWQ3MmY0ZDE4MS4uZjRkYTkxN2Nj
ZjNmIDEwMDY0NAo+ID4+Pj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92
aWRlb2J1ZjItY29yZS5jCj4gPj4+Pj4gKysrIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9i
dWYyL3ZpZGVvYnVmMi1jb3JlLmMKPiA+Pj4+PiBAQCAtMzQsNiArMzQsOCBAQAo+ID4+Pj4+ICAg
c3RhdGljIGludCBkZWJ1ZzsKPiA+Pj4+PiAgIG1vZHVsZV9wYXJhbShkZWJ1ZywgaW50LCAwNjQ0
KTsKPiA+Pj4+PiAgIAo+ID4+Pj4+ICttb2R1bGVfcGFyYW0obWF4X3ZiX2J1ZmZlcl9wZXJfcXVl
dWUsIHVsb25nLCAwNjQ0KTsKPiA+Pj4+IFRoZXJlIGlzIG5vIE1PRFVMRV9QQVJNX0RFU0MgaGVy
ZT8gUGxlYXNlIGFkZC4gSSBzZWUgaXQgaXMgbm90IHRoZXJlIGZvcgo+ID4+Pj4gdGhlIGRlYnVn
IHBhcmFtIGVpdGhlciwgaXQgc2hvdWxkIGJlIGFkZGVkIGZvciB0aGF0IGFzIHdlbGwuCj4gPj4+
IFdvdWxkIHRoaXMgYmUgdGhlIHJpZ2h0IHRpbWUgdG8gY29uc2lkZXIgcmVzb3VyY2UgYWNjb3Vu
dGluZyBpbiBWNEwyIGZvcgo+ID4+PiBidWZmZXJzID8gSGF2aW5nIGEgbW9kdWxlIHBhcmFtZXRl
ciBkb2Vzbid0IHNvdW5kIHZlcnkgdXNlZnVsLCBhbgo+ID4+PiBhcHBsaWNhdGlvbiBjb3VsZCBl
YXNpbHkgYWxsb2NhdGUgbW9yZSBidWZmZXJzIGJ5IHVzaW5nIGJ1ZmZlciBvcnBoYW5pbmcKPiA+
Pj4gKGFsbG9jYXRpbmcgYnVmZmVycywgZXhwb3J0aW5nIHRoZW0gYXMgZG1hYnVmIG9iamVjdHMs
IGFuZCBmcmVlaW5nIHRoZW0sCj4gPj4+IHdoaWNoIGxlYXZlcyB0aGUgbWVtb3J5IGFsbG9jYXRl
ZCkuIFJlcGVhdGluZyBhbGxvY2F0aW9uIGN5Y2xlcyB1cCB0bwo+ID4+PiBtYXhfdmJfYnVmZmVy
X3Blcl9xdWV1ZSB3aWxsIGFsbG93IGFsbG9jYXRpbmcgYW4gdW5ib3VuZGVkIG51bWJlciBvZgo+
ID4+PiBidWZmZXJzLCB1c2luZyBhbGwgdGhlIGF2YWlsYWJsZSBzeXN0ZW0gbWVtb3J5LiBJJ2Qg
cmF0aGVyIG5vdCBhZGQgYQo+ID4+PiBtb2R1bGUgYXJndW1lbnQgdGhhdCBvbmx5IGdpdmVzIHRo
ZSBpbXByZXNzaW9uIG9mIHNvbWUga2luZCBvZiBzYWZldHkKPiA+Pj4gd2l0aG91dCBhY3R1YWxs
eSBwcm92aWRpbmcgYW55IHZhbHVlLgo+ID4+IERvZXMgZG1hYnVmIGl0c2VsZiBwcm92aWRlIHNv
bWUgYWNjb3VudGluZyBtZWNoYW5pc20/IEp1c3Qgd29uZGVyaW5nLgo+ID4+Cj4gPj4gTW9yZSBz
cGVjaWZpYyB0byBWNEwyOiBJJ20gbm90IHNvIHN1cmUgYWJvdXQgdGhpcyBtb2R1bGUgcGFyYW1l
dGVyIGVpdGhlci4KPiA+PiBJdCBtYWtlcyBzZW5zZSB0byBoYXZlIGEgY2hlY2sgc29tZXdoZXJl
IGFnYWluc3QgcmlkaWN1bG91cyB2YWx1ZXMgKGkuZS4KPiA+PiBhbGxvY2F0aW5nIE1BWElOVCBi
dWZmZXJzKSwgYnV0IHRoYXQgY2FuIGJlIGEgZGVmaW5lIGFzIHdlbGwuIEJ1dCBvdGhlcndpc2UK
PiA+PiBJIGFtIGZpbmUgd2l0aCBhbGxvd2luZyBhcHBsaWNhdGlvbnMgdG8gYWxsb2NhdGUgYnVm
ZmVycyB1bnRpbCB0aGUgbWVtb3J5Cj4gPj4gaXMgZnVsbC4KPiA+Pgo+ID4+IFRoZSBxdWVzdGlv
biBpcyByZWFsbHk6IHdoYXQgaXMgdGhpcyBwYXJhbWV0ZXIgc3VwcG9zZWQgdG8gZG8/IFRoZSBv
bmx5Cj4gPj4gdGhpbmcgaXQgZG9lcyBpcyB0byBzYW5pdGl6ZSB1bmxpa2VseSBpbnB1dHMgKGUu
Zy4gYWxsb2NhdGluZyBNQVhJTlQgYnVmZmVycykuCj4gPj4KPiA+PiBJIHByZWZlciB0aGF0IGFz
IGEgZGVmaW5lLCB0byBiZSBob25lc3QuCj4gPj4KPiA+PiBJIHRoaW5rIGl0IGlzIHBlcmZlY3Rs
eSBmaW5lIGZvciB1c2VycyB0byB0cnkgdG8gcmVxdWVzdCBtb3JlIGJ1ZmZlcnMgdGhhbgo+ID4+
IG1lbW9yeSBhbGxvd3MuIEl0IHdpbGwganVzdCBmYWlsIGluIHRoYXQgY2FzZSwgbm90IGEgcHJv
YmxlbS4KPiA+Pgo+ID4+IEFuZCBpZiBhbiBhcHBsaWNhdGlvbiBpcyBkb2luZyBzaWxseSB0aGlu
Z3MgbGlrZSBidWZmZXIgb3JwaGFuaW5nLCB0aGVuIHNvCj4gPj4gd2hhdD8gSXMgdGhhdCBhbnkg
ZGlmZmVyZW50IHRoYW4gYWxsb2NhdGluZyBtZW1vcnkgYW5kIG5vdCBmcmVlaW5nIGl0Pwo+ID4+
IEV2ZW50dWFsbHkgaXQgd2lsbCBydW4gb3V0IG9mIG1lbW9yeSBhbmQgY3Jhc2gsIHdoaWNoIGlz
IG5vcm1hbC4KPiA+Cj4gPiBMaW51eCBwcm92aWRlcyBBUElzIHRvIGFjY291bnQgZm9yIGFuZCBs
aW1pdCB1c2FnZSBvZiByZXNvdXJjZXMsCj4gPiBpbmNsdWRpbmcgbWVtb3J5LiBBIHN5c3RlbSBh
ZG1pbmlzdHJhdG9yIGNhbiBwcmV2ZW50IHJvZ3VlIHByb2Nlc3Nlcwo+ID4gZnJvbSBzdGFydmlu
ZyBzeXN0ZW0gcmVzb3VyY2VzLiBUaGUgbWVtb3J5IGNvbnN1bWVkIGJ5IHZiMiBidWZmZXIgaXNu
J3QKPiA+IHRha2VuIGludG8gYWNjb3VudCwgbWFraW5nIFY0TDIgZXNzZW50aWFsbHkgdW5zYWZl
IGZvciB1bnRydXN0ZWQKPiA+IHByb2Nlc3Nlcy4KPiA+Cj4gPiBOb3csIHRvIGJlIGZhaXIsIHRo
ZXJlIGFyZSBtYW55IHJlYXNvbnMgd2h5IGFsbG93aW5nIGFjY2VzcyB0byB2NEwyCj4gPiBkZXZp
Y2VzIHRvIHVudHJ1c3RlZCBhcHBsaWNhdGlvbnMgaXMgYSBiYWQgaWRlYSwgYW5kIG1lbW9yeSBj
b25zdW1wdGlvbgo+ID4gaXMgbGlrZWx5IG5vdCBldmVuIHRoZSB3b3JzdCBvbmUuIFN0aWxsLCBp
cyB0aGlzIHNvbWV0aGluZyB3ZSB3YW50IHRvCj4gPiBmaXgsIG9yIGRvIHdlIHdhbnQgdG8gY29u
c2lkZXIgVjRMMiB0byBiZSBwcml2aWxlZGdlZCBBUEkgb25seSA/IFJpZ2h0Cj4gPiBub3cgd2Ug
Y2FuJ3QgZG8gc28sIGJ1dCB3aXRoIG1hbnkgTGludXggc3lzdGVtcyBtb3ZpbmcgdG93YXJkcyBw
aXBld2lyZSwKPiA+IHdlIGNvdWxkIHBvc3NpYmx5IGhhdmUgYSBzeXN0ZW0gZGFlbW9uIGlzb2xh
dGluZyB1bnRydXN0ZWQgYXBwbGljYXRpb25zCj4gPiBmcm9tIHRoZSByZXN0IG9mIHRoZSBzeXN0
ZW0uIFdlIG1heSB0aHVzIG5vdCBuZWVkIHRvIGZpeCB0aGlzIGluIHRoZQo+ID4gVjRMMiBBUEku
Cj4gCj4gSSdtIHdvcmtpbmcgaW4gdjMgd2hlcmUgSSdtIHVzaW5nIFhhcnJheSBBUEkuCj4gCj4g
SnVzdCB0byBiZSBzdXJlIHRvIHVuZGVyc3RhbmQgeW91IHdlbGw6Cj4gSSBjYW4ganVzdCByZW1v
dmUgVkIyX01BWF9GUkFNRSBsaW1pdCB3aXRob3V0IGFkZGluZyBhIG5ldyBvbmUgPwoKQXMgbG9u
ZyBhcyB0aGUgY29kZSBpcyBwcm90ZWN0ZWQgYWdhaW5zdCBvdmVyZmxvd3MgKGUuZy4gaWYgaXQg
dXNlcwpudW1fYnVmZmVycyArIDEgaW4gc29tZSBjYWxjdWxhdGlvbnMgYW5kIGFsbG93cyBudW1f
YnVmZmVycyB0byBiZQpVSU5UX01BWCwgeW91J2xsIGhhdmUgYW4gaXNzdWUpLCBpdCBzaG91bGQg
YmUgZmluZSBmb3IgdGhlIHZiMiBhbmQgVjRMMgpjb3JlLiBMaW1pdGluZyB0aGUgbnVtYmVyIG9m
IGJ1ZmZlcnMgZG9lc24ndCByZWFsbHkgcHJvdGVjdCBhZ2FpbnN0Cm11Y2guCgotLSAKUmVnYXJk
cywKCkxhdXJlbnQgUGluY2hhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
