Return-Path: <SRS0=Ln7Z=LW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 433F2C49EAB
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 07:16:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0C7F660FE9
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 07:16:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0C7F660FE9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBj5tXTbfb+Kd1576/VBgJk1mHfEe1JhzDjapo+9Vps=; b=sVFvzY9PCpzMNh
	+DUpFIVqknW3V0OgdWf/qCI7dCQYtx1dS81Ic2EFse6hXAiOPR2qTuCfEq2CKSlP7ZyQQueCDfvpJ
	zK5rcvLA2yUdrFPewFAERZYFNBmDeTTZe41HUcYxAh1KdBqJCCwJJVM+kHqYatw31pVoiA5nuV1Sa
	6zpKyez30CvtlNyfIesYl+lceQdjMFG0eMLB0k7CnksDlP9TyJUlBWYKE78TL2K7hto3lMKjNlDmB
	kGmWmcU4yXjdFwgx1BMDLLpLCSooPNXmEY5PhjogQCHx3aD94quvqjlDl5cb4TgwRDzMwVLfUZA+V
	oQacxQ3qRLGOBI7rTl1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxlVV-007D3g-NT; Mon, 28 Jun 2021 07:16:37 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxlVS-007D1T-Uc
 for linux-rockchip@lists.infradead.org; Mon, 28 Jun 2021 07:16:36 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C995FE1A;
 Mon, 28 Jun 2021 09:16:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1624864590;
 bh=AIY84fWmOd5/rzOIBI5mmSVxqzuO5GGnEPOiHYOvKs0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a0OxphVnReTi51rSlRczbNR/4iJ17Q81ZYnsDBGXLmQhyrC1ZhtPNOZBOpNp5xWi6
 8zofecBV3GpSxfwv6cg7EBCFp9DbloexEcjgACBsWOwf361fYpTkb7xr8G4NweH/ow
 JU34ueMlIz4iAIY96cgN73SFOwY8yCWs1C6D2cFs=
Date: Mon, 28 Jun 2021 10:16:28 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, helen.koike@collabora.com,
 hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com,
 sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org,
 mchehab@kernel.org, tfiga@chromium.org
Subject: Re: [PATCH 2/2] media: rkisp1: cap: initialize dma buf address in
 'buf_init' cb
Message-ID: <YNl3TPzoNhUTpkDO@pendragon.ideasonboard.com>
References: <20210625082309.24944-1-dafna.hirschfeld@collabora.com>
 <20210625082309.24944-3-dafna.hirschfeld@collabora.com>
 <a3144cc37a11e43d984c71aa160079cab65cc335.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a3144cc37a11e43d984c71aa160079cab65cc335.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_001635_183651_F25B81E0 
X-CRM114-Status: GOOD (  25.24  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKdW4gMjUsIDIwMjEgYXQgMTA6MDg6NDRQTSAtMDMwMCwgRXplcXVpZWwgR2FyY2lh
IHdyb3RlOgo+IE9uIEZyaSwgMjAyMS0wNi0yNSBhdCAxMToyMyArMDMwMCwgRGFmbmEgSGlyc2No
ZmVsZCB3cm90ZToKPiA+IEluaXRpYWxpemluZyB0aGUgZG1hIGFkZHJlc3NlcyBvZiB0aGUgY2Fw
dHVyZSBidWZmZXJzIGNhbgo+ID4gbW92ZSB0byB0aGUgJ2J1Zl9pbml0JyBjYWxsYmFjaywgc2lu
Y2UgaXQgaXMgZW5vdWdoIHRvIGRvCj4gPiBpdCBvbmNlIGZvciBlYWNoIGJ1ZmZlciBhbmQgbm90
IGV2ZXJ5IHRpbWUgaXQgaXMgcXVldWVkLgo+IAo+IEFyZSB5b3UgYWJsZSB0byBtZWFzdXJlIGFu
eSBpbXBhY3Qgd2l0aCB0aGlzIGNoYW5nZT8KPiAKPiA+IFNpZ25lZC1vZmYtYnk6IERhZm5hIEhp
cnNjaGZlbGQgPGRhZm5hLmhpcnNjaGZlbGRAY29sbGFib3JhLmNvbT4KPiA+IC0tLQo+ID4gwqAu
Li4vbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jYXB0dXJlLmPCoCB8IDEy
ICsrKysrKysrKysrLQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNhcHR1cmUuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jYXB0dXJlLmMKPiA+IGluZGV4IDYwY2QyMjAwZTdhZS4u
NDE5ODhlYjBlYzBhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9ya2lzcDEvcmtpc3AxLWNhcHR1cmUuYwo+ID4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNhcHR1cmUuYwo+ID4gQEAgLTc1MCw3ICs3NTAs
NyBAQCBzdGF0aWMgaW50IHJraXNwMV92YjJfcXVldWVfc2V0dXAoc3RydWN0IHZiMl9xdWV1ZSAq
cXVldWUsCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDA7Cj4gPiDCoH0KPiA+IMKgCj4gPiAt
c3RhdGljIHZvaWQgcmtpc3AxX3ZiMl9idWZfcXVldWUoc3RydWN0IHZiMl9idWZmZXIgKnZiKQo+
ID4gK3N0YXRpYyBpbnQgcmtpc3AxX3ZiMl9idWZfaW5pdChzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIp
Cj4gPiDCoHsKPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgdmIyX3Y0bDJfYnVmZmVyICp2YnVm
ID0gdG9fdmIyX3Y0bDJfYnVmZmVyKHZiKTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qgcmtp
c3AxX2J1ZmZlciAqaXNwYnVmID0KPiAKPiBTaW5jZSB5b3UgYXJlIGludGVyZXN0ZWQgYXQgdGhl
c2Uga2luZCBvZiBjbGVhbnVwcywgeW91IGNhbgo+IGRvIHNvbWV0aGluZyBsaWtlOgo+IAo+ICtl
bnVtIHJraXNwMV9wbGFuZSB7Cj4gKyAgICAgICBSS0lTUDFfUExBTkVfWSAgPSAwLAo+ICsgICAg
ICAgUktJU1AxX1BMQU5FX0NCID0gMSwKPiArICAgICAgIFJLSVNQMV9QTEFORV9DUiA9IDIsCj4g
KyAgICAgICBSS0lTUDFfTlVNX1BMQU5FUyA9IDMKPiArfTsKPiArCj4gIC8qCj4gICAqIHN0cnVj
dCBya2lzcDFfYnVmZmVyIC0gQSBjb250YWluZXIgZm9yIHRoZSB2YjIgYnVmZmVycyB1c2VkIGJ5
IHRoZSB2aWRlbyBkZXZpY2VzOgo+ICAgKiAgICAgICAgICAgICAgICAgICAgICAgcGFyYW1zLCBz
dGF0cywgbWFpbnBhdGgsIHNlbGZwYXRoCj4gQEAgLTE2MCw3ICsxNjcsNyBAQCBzdHJ1Y3Qgcmtp
c3AxX3ZkZXZfbm9kZSB7Cj4gIHN0cnVjdCBya2lzcDFfYnVmZmVyIHsKPiAgICAgICAgIHN0cnVj
dCB2YjJfdjRsMl9idWZmZXIgdmI7Cj4gICAgICAgICBzdHJ1Y3QgbGlzdF9oZWFkIHF1ZXVlOwo+
IC0gICAgICAgdTMyIGJ1ZmZfYWRkcltWSURFT19NQVhfUExBTkVTXTsKPiArICAgICAgIHUzMiBi
dWZmX2FkZHJbUktJU1AxX05VTV9QTEFORVNdOwo+ICB9Owo+IAo+IEFuZCB0aGVuIHlvdSBjYW4g
Z2V0IHJpZCBvZiB0aGUgbWVtc2V0LCBhbmQgcmVseSBvbgo+IHZiMl9kbWFfY29udGlnX3BsYW5l
X2RtYV9hZGRyIHJldHVybmluZyBOVUxMLgo+IAo+IEBAIC03NTksOCArNzUzLDcgQEAgc3RhdGlj
IHZvaWQgcmtpc3AxX3ZiMl9idWZfcXVldWUoc3RydWN0IHZiMl9idWZmZXIgKnZiKQo+ICAgICAg
ICAgY29uc3Qgc3RydWN0IHY0bDJfcGl4X2Zvcm1hdF9tcGxhbmUgKnBpeG0gPSAmY2FwLT5waXgu
Zm10Owo+ICAgICAgICAgdW5zaWduZWQgaW50IGk7Cj4gIAo+IC0gICAgICAgbWVtc2V0KGlzcGJ1
Zi0+YnVmZl9hZGRyLCAwLCBzaXplb2YoaXNwYnVmLT5idWZmX2FkZHIpKTsKPiAtICAgICAgIGZv
ciAoaSA9IDA7IGkgPCBwaXhtLT5udW1fcGxhbmVzOyBpKyspCj4gKyAgICAgICBmb3IgKGkgPSAw
OyBpIDwgUktJU1AxX05VTV9QTEFORVM7IGkrKykKClRoaXMgc2hvdWxkIHVzZSBBUlJBWV9TSVpF
KCkuCgo+ICAgICAgICAgICAgICAgICBpc3BidWYtPmJ1ZmZfYWRkcltpXSA9IHZiMl9kbWFfY29u
dGlnX3BsYW5lX2RtYV9hZGRyKHZiLCBpKTsKCkJ1dCB3aWxsIHZiMl9kbWFfY29udGlnX3BsYW5l
X2RtYV9hZGRyKCkgYmUgaGFwcHkgd2hlbiBpIGlzIGxhcmdlciB0aGFuCnRoZSBudW1iZXIgb2Yg
cGxhbmVzID8KCi0tIApSZWdhcmRzLAoKTGF1cmVudCBQaW5jaGFydAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
