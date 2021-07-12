Return-Path: <SRS0=7Rgf=ME=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8897C07E99
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 13:21:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 64648610FA
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 13:21:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 64648610FA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BX4ebk82krIrIMf4VmG2EmU8iyMA+pdz6hyNNXJ1NQ8=; b=G3geovjDLZkmM3xBFXDIgBVVAX
	AWxqBKtJ3QCdkdk4d6gxk+ihp73CgLHOeL4D+XyOL5qNyVjNGYksX9SB6F7MDB4MP+dIvTix19WL2
	DGpcBUQzrSXxaa0Pef4xOX9tgcdSzqveGBlaYHayeZiWZ5cP+bL/aOnLmWYI70BfVCVUtImGe9aFr
	qZetEDNANVCUi4K/edYjZEMIzKBy6GDXkK4ar6hJtTGPkbISnrNqU3i1m1f4kouWOG85k7j8F6N3g
	Up0zYrHj0lpgt60p8HGTz6fPbTzosOOaFN1BSoOfkPDA3dpqYpgDad1UmJkRdJVeRfUdJ9TEs/sCM
	5twq6ogQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2vrx-007Npe-6E; Mon, 12 Jul 2021 13:21:09 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2vru-007Np1-Kt
 for linux-rockchip@lists.infradead.org; Mon, 12 Jul 2021 13:21:08 +0000
Received: from [IPv6:2a02:810a:880:f54:e464:19d5:3655:dde7] (unknown
 [IPv6:2a02:810a:880:f54:e464:19d5:3655:dde7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 11CB21F423B6;
 Mon, 12 Jul 2021 14:21:04 +0100 (BST)
Subject: Re: [PATCH 2/2] media: rkisp1: cap: initialize dma buf address in
 'buf_init' cb
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Cc: laurent.pinchart@ideasonboard.com, helen.koike@collabora.com,
 hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com,
 sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org,
 mchehab@kernel.org, tfiga@chromium.org
References: <20210625082309.24944-1-dafna.hirschfeld@collabora.com>
 <20210625082309.24944-3-dafna.hirschfeld@collabora.com>
 <a3144cc37a11e43d984c71aa160079cab65cc335.camel@collabora.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <b627ea79-459e-f3af-ab22-3c486296ed23@collabora.com>
Date: Mon, 12 Jul 2021 15:21:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <a3144cc37a11e43d984c71aa160079cab65cc335.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_062106_860448_6DF34B5B 
X-CRM114-Status: GOOD (  26.74  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkKCk9uIDI2LjA2LjIxIDAzOjA4LCBFemVxdWllbCBHYXJjaWEgd3JvdGU6Cj4gSGkgRGFmbmEs
Cj4gCj4gT24gRnJpLCAyMDIxLTA2LTI1IGF0IDExOjIzICswMzAwLCBEYWZuYSBIaXJzY2hmZWxk
IHdyb3RlOgo+PiBJbml0aWFsaXppbmcgdGhlIGRtYSBhZGRyZXNzZXMgb2YgdGhlIGNhcHR1cmUg
YnVmZmVycyBjYW4KPj4gbW92ZSB0byB0aGUgJ2J1Zl9pbml0JyBjYWxsYmFjaywgc2luY2UgaXQg
aXMgZW5vdWdoIHRvIGRvCj4+IGl0IG9uY2UgZm9yIGVhY2ggYnVmZmVyIGFuZCBub3QgZXZlcnkg
dGltZSBpdCBpcyBxdWV1ZWQuCj4+Cj4gCj4gQXJlIHlvdSBhYmxlIHRvIG1lYXN1cmUgYW55IGlt
cGFjdCB3aXRoIHRoaXMgY2hhbmdlPwoKSSBkaWRuJ3QgbWVhc3VyZSB0aGUgaW1wYWN0LCBJIGp1
c3QgdGhvdWdodCBpdCBpcyBhIG1vcmUgY29ycmVjdAp1c2Ugb2YgdGhlIEFQSS4KWW91IHRoaW5r
IGl0IHdvcnRoIG1lYXN1cmluZyB0aGUgaW1wYWN0PwoKVGhhbmtzLApEYWZuYQoKPiAKPj4gU2ln
bmVkLW9mZi1ieTogRGFmbmEgSGlyc2NoZmVsZCA8ZGFmbmEuaGlyc2NoZmVsZEBjb2xsYWJvcmEu
Y29tPgo+PiAtLS0KPj4gIMKgLi4uL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lz
cDEtY2FwdHVyZS5jwqAgfCAxMiArKysrKysrKysrKy0KPj4gIMKgMSBmaWxlIGNoYW5nZWQsIDEx
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jYXB0dXJlLmMgYi9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtY2FwdHVyZS5jCj4+IGluZGV4
IDYwY2QyMjAwZTdhZS4uNDE5ODhlYjBlYzBhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtY2FwdHVyZS5jCj4+ICsrKyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jYXB0dXJlLmMKPj4gQEAg
LTc1MCw3ICs3NTAsNyBAQCBzdGF0aWMgaW50IHJraXNwMV92YjJfcXVldWVfc2V0dXAoc3RydWN0
IHZiMl9xdWV1ZSAqcXVldWUsCj4+ICDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDA7Cj4+ICDCoH0K
Pj4gICAKPj4gLXN0YXRpYyB2b2lkIHJraXNwMV92YjJfYnVmX3F1ZXVlKHN0cnVjdCB2YjJfYnVm
ZmVyICp2YikKPj4gK3N0YXRpYyBpbnQgcmtpc3AxX3ZiMl9idWZfaW5pdChzdHJ1Y3QgdmIyX2J1
ZmZlciAqdmIpCj4+ICDCoHsKPj4gIMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgdmIyX3Y0bDJfYnVm
ZmVyICp2YnVmID0gdG9fdmIyX3Y0bDJfYnVmZmVyKHZiKTsKPj4gIMKgwqDCoMKgwqDCoMKgwqBz
dHJ1Y3Qgcmtpc3AxX2J1ZmZlciAqaXNwYnVmID0KPiAKPiBTaW5jZSB5b3UgYXJlIGludGVyZXN0
ZWQgYXQgdGhlc2Uga2luZCBvZiBjbGVhbnVwcywgeW91IGNhbgo+IGRvIHNvbWV0aGluZyBsaWtl
Ogo+IAo+ICtlbnVtIHJraXNwMV9wbGFuZSB7Cj4gKyAgICAgICBSS0lTUDFfUExBTkVfWSAgPSAw
LAo+ICsgICAgICAgUktJU1AxX1BMQU5FX0NCID0gMSwKPiArICAgICAgIFJLSVNQMV9QTEFORV9D
UiA9IDIsCj4gKyAgICAgICBSS0lTUDFfTlVNX1BMQU5FUyA9IDMKPiArfTsKPiArCj4gICAvKgo+
ICAgICogc3RydWN0IHJraXNwMV9idWZmZXIgLSBBIGNvbnRhaW5lciBmb3IgdGhlIHZiMiBidWZm
ZXJzIHVzZWQgYnkgdGhlIHZpZGVvIGRldmljZXM6Cj4gICAgKiAgICAgICAgICAgICAgICAgICAg
ICAgcGFyYW1zLCBzdGF0cywgbWFpbnBhdGgsIHNlbGZwYXRoCj4gQEAgLTE2MCw3ICsxNjcsNyBA
QCBzdHJ1Y3Qgcmtpc3AxX3ZkZXZfbm9kZSB7Cj4gICBzdHJ1Y3Qgcmtpc3AxX2J1ZmZlciB7Cj4g
ICAgICAgICAgc3RydWN0IHZiMl92NGwyX2J1ZmZlciB2YjsKPiAgICAgICAgICBzdHJ1Y3QgbGlz
dF9oZWFkIHF1ZXVlOwo+IC0gICAgICAgdTMyIGJ1ZmZfYWRkcltWSURFT19NQVhfUExBTkVTXTsK
PiArICAgICAgIHUzMiBidWZmX2FkZHJbUktJU1AxX05VTV9QTEFORVNdOwo+ICAgfTsKPiAKPiBB
bmQgdGhlbiB5b3UgY2FuIGdldCByaWQgb2YgdGhlIG1lbXNldCwgYW5kIHJlbHkgb24KPiB2YjJf
ZG1hX2NvbnRpZ19wbGFuZV9kbWFfYWRkciByZXR1cm5pbmcgTlVMTC4KPiAKPiBAQCAtNzU5LDgg
Kzc1Myw3IEBAIHN0YXRpYyB2b2lkIHJraXNwMV92YjJfYnVmX3F1ZXVlKHN0cnVjdCB2YjJfYnVm
ZmVyICp2YikKPiAgICAgICAgICBjb25zdCBzdHJ1Y3QgdjRsMl9waXhfZm9ybWF0X21wbGFuZSAq
cGl4bSA9ICZjYXAtPnBpeC5mbXQ7Cj4gICAgICAgICAgdW5zaWduZWQgaW50IGk7Cj4gICAKPiAt
ICAgICAgIG1lbXNldChpc3BidWYtPmJ1ZmZfYWRkciwgMCwgc2l6ZW9mKGlzcGJ1Zi0+YnVmZl9h
ZGRyKSk7Cj4gLSAgICAgICBmb3IgKGkgPSAwOyBpIDwgcGl4bS0+bnVtX3BsYW5lczsgaSsrKQo+
ICsgICAgICAgZm9yIChpID0gMDsgaSA8IFJLSVNQMV9OVU1fUExBTkVTOyBpKyspCj4gICAgICAg
ICAgICAgICAgICBpc3BidWYtPmJ1ZmZfYWRkcltpXSA9IHZiMl9kbWFfY29udGlnX3BsYW5lX2Rt
YV9hZGRyKHZiLCBpKTsKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
