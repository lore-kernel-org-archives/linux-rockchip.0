Return-Path: <SRS0=A5oP=LU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D8FDC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Jun 2021 01:09:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C2BC461925
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Jun 2021 01:09:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C2BC461925
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SnSfHbRiepgDrcs9bWyitwjowCm5hlfNiulA+rR8/6s=; b=PE3BNiWNeNk7t5
	i+Ao5KdacqNfevY/2PQC9b+Okth1VAfe+YtBDZcFu0U6zG3HmflfyMnGSND9AdyqG2qiGBbm/X/ox
	l3RQhI/MVnmRczv1Mbr2SbYNEX9iROyv4Zbjzzma2zdyAkDFRtMs9kops3FuawSXIUMbS4rxtDmd7
	xP4USVIfGqMze4//QplEQqRFXxavX4xQu/5CidAAVAmNvIg/+PwW1kwecah14n0DRlAVSu4XWMXxO
	QFF/SY0UyH+KYaBRyraRt/re865pE4okAqY7PmjIUg+S57muYsPDhb8sEj/nOA/+A1fV57KdLxlk6
	fsJXTu+VoUlLGG18mgAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwwod-003C3s-QO; Sat, 26 Jun 2021 01:08:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwwob-003C39-2t
 for linux-rockchip@lists.infradead.org; Sat, 26 Jun 2021 01:08:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 3C3BC1F428C5
Message-ID: <a3144cc37a11e43d984c71aa160079cab65cc335.camel@collabora.com>
Subject: Re: [PATCH 2/2] media: rkisp1: cap: initialize dma buf address in
 'buf_init' cb
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, 
 linux-media@vger.kernel.org
Cc: laurent.pinchart@ideasonboard.com, helen.koike@collabora.com, 
 hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, 
 sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, 
 mchehab@kernel.org, tfiga@chromium.org
Date: Fri, 25 Jun 2021 22:08:44 -0300
In-Reply-To: <20210625082309.24944-3-dafna.hirschfeld@collabora.com>
References: <20210625082309.24944-1-dafna.hirschfeld@collabora.com>
 <20210625082309.24944-3-dafna.hirschfeld@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_180857_296058_CBBFD5D0 
X-CRM114-Status: GOOD (  20.11  )
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

SGkgRGFmbmEsCgpPbiBGcmksIDIwMjEtMDYtMjUgYXQgMTE6MjMgKzAzMDAsIERhZm5hIEhpcnNj
aGZlbGQgd3JvdGU6Cj4gSW5pdGlhbGl6aW5nIHRoZSBkbWEgYWRkcmVzc2VzIG9mIHRoZSBjYXB0
dXJlIGJ1ZmZlcnMgY2FuCj4gbW92ZSB0byB0aGUgJ2J1Zl9pbml0JyBjYWxsYmFjaywgc2luY2Ug
aXQgaXMgZW5vdWdoIHRvIGRvCj4gaXQgb25jZSBmb3IgZWFjaCBidWZmZXIgYW5kIG5vdCBldmVy
eSB0aW1lIGl0IGlzIHF1ZXVlZC4KPiAKCkFyZSB5b3UgYWJsZSB0byBtZWFzdXJlIGFueSBpbXBh
Y3Qgd2l0aCB0aGlzIGNoYW5nZT8KCj4gU2lnbmVkLW9mZi1ieTogRGFmbmEgSGlyc2NoZmVsZCA8
ZGFmbmEuaGlyc2NoZmVsZEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+IMKgLi4uL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtY2FwdHVyZS5jwqAgfCAxMiArKysrKysrKysrKy0K
PiDCoDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNw
MS1jYXB0dXJlLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lz
cDEtY2FwdHVyZS5jCj4gaW5kZXggNjBjZDIyMDBlN2FlLi40MTk4OGViMGVjMGEgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNhcHR1
cmUuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNw
MS1jYXB0dXJlLmMKPiBAQCAtNzUwLDcgKzc1MCw3IEBAIHN0YXRpYyBpbnQgcmtpc3AxX3ZiMl9x
dWV1ZV9zZXR1cChzdHJ1Y3QgdmIyX3F1ZXVlICpxdWV1ZSwKPiDCoMKgwqDCoMKgwqDCoMKgcmV0
dXJuIDA7Cj4gwqB9Cj4gwqAKPiAtc3RhdGljIHZvaWQgcmtpc3AxX3ZiMl9idWZfcXVldWUoc3Ry
dWN0IHZiMl9idWZmZXIgKnZiKQo+ICtzdGF0aWMgaW50IHJraXNwMV92YjJfYnVmX2luaXQoc3Ry
dWN0IHZiMl9idWZmZXIgKnZiKQo+IMKgewo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgdmIyX3Y0
bDJfYnVmZmVyICp2YnVmID0gdG9fdmIyX3Y0bDJfYnVmZmVyKHZiKTsKPiDCoMKgwqDCoMKgwqDC
oMKgc3RydWN0IHJraXNwMV9idWZmZXIgKmlzcGJ1ZiA9CgpTaW5jZSB5b3UgYXJlIGludGVyZXN0
ZWQgYXQgdGhlc2Uga2luZCBvZiBjbGVhbnVwcywgeW91IGNhbgpkbyBzb21ldGhpbmcgbGlrZToK
CitlbnVtIHJraXNwMV9wbGFuZSB7CisgICAgICAgUktJU1AxX1BMQU5FX1kgID0gMCwKKyAgICAg
ICBSS0lTUDFfUExBTkVfQ0IgPSAxLAorICAgICAgIFJLSVNQMV9QTEFORV9DUiA9IDIsCisgICAg
ICAgUktJU1AxX05VTV9QTEFORVMgPSAzCit9OworCiAvKgogICogc3RydWN0IHJraXNwMV9idWZm
ZXIgLSBBIGNvbnRhaW5lciBmb3IgdGhlIHZiMiBidWZmZXJzIHVzZWQgYnkgdGhlIHZpZGVvIGRl
dmljZXM6CiAgKiAgICAgICAgICAgICAgICAgICAgICAgcGFyYW1zLCBzdGF0cywgbWFpbnBhdGgs
IHNlbGZwYXRoCkBAIC0xNjAsNyArMTY3LDcgQEAgc3RydWN0IHJraXNwMV92ZGV2X25vZGUgewog
c3RydWN0IHJraXNwMV9idWZmZXIgewogICAgICAgIHN0cnVjdCB2YjJfdjRsMl9idWZmZXIgdmI7
CiAgICAgICAgc3RydWN0IGxpc3RfaGVhZCBxdWV1ZTsKLSAgICAgICB1MzIgYnVmZl9hZGRyW1ZJ
REVPX01BWF9QTEFORVNdOworICAgICAgIHUzMiBidWZmX2FkZHJbUktJU1AxX05VTV9QTEFORVNd
OwogfTsKCkFuZCB0aGVuIHlvdSBjYW4gZ2V0IHJpZCBvZiB0aGUgbWVtc2V0LCBhbmQgcmVseSBv
bgp2YjJfZG1hX2NvbnRpZ19wbGFuZV9kbWFfYWRkciByZXR1cm5pbmcgTlVMTC4KCkBAIC03NTks
OCArNzUzLDcgQEAgc3RhdGljIHZvaWQgcmtpc3AxX3ZiMl9idWZfcXVldWUoc3RydWN0IHZiMl9i
dWZmZXIgKnZiKQogICAgICAgIGNvbnN0IHN0cnVjdCB2NGwyX3BpeF9mb3JtYXRfbXBsYW5lICpw
aXhtID0gJmNhcC0+cGl4LmZtdDsKICAgICAgICB1bnNpZ25lZCBpbnQgaTsKIAotICAgICAgIG1l
bXNldChpc3BidWYtPmJ1ZmZfYWRkciwgMCwgc2l6ZW9mKGlzcGJ1Zi0+YnVmZl9hZGRyKSk7Ci0g
ICAgICAgZm9yIChpID0gMDsgaSA8IHBpeG0tPm51bV9wbGFuZXM7IGkrKykKKyAgICAgICBmb3Ig
KGkgPSAwOyBpIDwgUktJU1AxX05VTV9QTEFORVM7IGkrKykKICAgICAgICAgICAgICAgIGlzcGJ1
Zi0+YnVmZl9hZGRyW2ldID0gdmIyX2RtYV9jb250aWdfcGxhbmVfZG1hX2FkZHIodmIsIGkpOwoK
LS0gCktpbmRseSwKRXplcXVpZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
