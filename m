Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9DDCC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 01:54:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2BA7222472
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 01:54:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2BA7222472
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oYvCcSRgS5CTcfLyMbaBP5QN6g6QhfidBzxR+oF5IIA=; b=jf7No6IOTvH6Ylx5PLKe6n7o0
	lLCbvogXH4k0Udto4krvREG8EwhWHio/zRiSESvjxbFuxv/QPpZtsXqTmJ6dZ3CluM3WYQX2bFmNs
	8dALthBUawLrrGz/nNcDBPSaOSgZeLCgLfQfJjRsXwYFAyZAYbKDgjCV5e+pkoyk+3Px/Z3hEg1cs
	L9GK0WFP7CGHOafm2DElhDA5YZMmJX+jZjUtSVD53YiguRUEcI+ZG8yZcxQls8sSJgOHjcVR1bsc1
	1OUMkFNjc5FFkbqeI6tuMgPGf3Ckr3Q2yUOFZWD5NFD7V52qEBl2LMOfGHtN8inQilZ7AKFPPfaS/
	D9rFmgsJw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l22h9-0000b0-OM; Wed, 20 Jan 2021 01:54:03 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l22h5-0000a5-4s
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 01:54:02 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 7F7DA1DC1;
 Wed, 20 Jan 2021 09:53:45 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.31.83] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P11934T140583756891904S1611107624645924_; 
 Wed, 20 Jan 2021 09:53:45 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <49e71bb9943766a8ef228fe03093d29a>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH 1/3] PCI: dwc: Skip allocating own MSI domain if using
 external MSI domain
To: Robin Murphy <robin.murphy@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20210118091739.247040-1-xxm@rock-chips.com>
 <e17fcf83-18f1-c2c4-3a0c-a68e74138e15@arm.com>
From: xxm <xxm@rock-chips.com>
Message-ID: <c6e2d613-c398-2ed1-a9b9-bdc31d3a5c20@rock-chips.com>
Date: Wed, 20 Jan 2021 09:53:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <e17fcf83-18f1-c2c4-3a0c-a68e74138e15@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_205359_656034_79407BA6 
X-CRM114-Status: GOOD (  20.11  )
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
Cc: linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUm9iaW4sCgrlnKggMjAyMS8xLzIwIDM6NDcsIFJvYmluIE11cnBoeSDlhpnpgZM6Cj4gT24g
MjAyMS0wMS0xOCAwOToxNywgU2ltb24gWHVlIHdyb3RlOgo+PiBGcm9tOiBTaGF3biBMaW4gPHNo
YXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPj4KPj4gT24gc29tZSBwbGF0Zm9ybSwgZXh0ZXJuYWwg
TVNJIGRvbWFpbiBpcyB1c2luZyBpbnN0ZWFkIG9mIHRoZSBvbmUKPj4gY3JlYXRlZCBieSBkZXNp
Z253YXJlIGRyaXZlci4gRm9yIGluc3RhbmNlLCBpZiB1c2luZyBHSUMtVjMtSVRTCj4+IGFzIGEg
TVNJIGRvbWFpbiwgd2Ugb25seSBuZWVkIHNldCBtc2ktbWFwIGluIHRoZSBkZXZpY2V0cmVlIGJ1
dAo+PiBuZXZlciBuZWVkIGFueSBiaXQgaW4gdGhlIGRlc2lnbndhcmUgZHJpdmVyIHRvIGhhbmRs
ZSBNU0kgc3R1ZmYuCj4+IFNvIHNraXAgYWxsb2NhdGluZyBpdHMgb3duIE1TSSBkb21haW4gZm9y
IHRoYXQgY2FzZS4KPgo+IEhvdyBpcyB0aGlzIGRpZmZlcmVudCBmcm9tIHRoZSBleGlzdGluZyBw
cC0+aGFzX21zaV9jdHJsPyBBRkFJQ1MsIAo+IGR3X3BjaWVfaG9zdF9pbml0KCkgd29uJ3QgY2Fs
bCBkd19wY2llX2FsbG9jYXRlX2RvbWFpbnMoKSBhbnl3YXkgaWYgYW4gCj4gZXh0ZXJuYWwgTVNJ
IGNvbnRyb2xsZXIgaXMgcHJlc2VudC4KClRoYW5rcyBmb3IgeW91ciByZXZpZXcsIEkgZGlkbid0
IG5vdGljZSBwcC0+aGFzX21zaV9jdHJsIGFscmVhZHkgZXhpc3QsIAp3aWxsIGFiYW5kb24gdGhp
cyBwYXRjaC4KClNpbW9uIFh1ZS4KCj4KPiBSb2Jpbi4KPgo+PiBTaWduZWQtb2ZmLWJ5OiBTaGF3
biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogU2ltb24g
WHVlIDx4eG1Acm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtaG9zdC5jIHwgMTAgKysrKysrKysrLQo+PiDCoCBkcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuaMKgwqDCoMKgwqAgfMKgIDEg
Kwo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
Pj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdu
d2FyZS1ob3N0LmMgCj4+IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253
YXJlLWhvc3QuYwo+PiBpbmRleCA4YTg0YzAwNWYzMmIuLmQ5ZDkzY2FiOTcwYSAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWhvc3QuYwo+
PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtaG9zdC5j
Cj4+IEBAIC0yMzUsNiArMjM1LDEwIEBAIGludCBkd19wY2llX2FsbG9jYXRlX2RvbWFpbnMoc3Ry
dWN0IHBjaWVfcG9ydCAqcHApCj4+IMKgwqDCoMKgwqAgc3RydWN0IGR3X3BjaWUgKnBjaSA9IHRv
X2R3X3BjaWVfZnJvbV9wcChwcCk7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGZ3bm9kZV9oYW5kbGUg
KmZ3bm9kZSA9IAo+PiBvZl9ub2RlX3RvX2Z3bm9kZShwY2ktPmRldi0+b2Zfbm9kZSk7Cj4+IMKg
ICvCoMKgwqAgLyogUmVseSBvbiB0aGUgZXh0ZXJuYWwgTVNJIGRvbWFpbiAqLwo+PiArwqDCoMKg
IGlmIChwcC0+bXNpX2V4dCkKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiArCj4+IMKg
wqDCoMKgwqAgcHAtPmlycV9kb21haW4gPSBpcnFfZG9tYWluX2NyZWF0ZV9saW5lYXIoZndub2Rl
LCBwcC0+bnVtX3ZlY3RvcnMsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICZkd19wY2llX21zaV9kb21haW5fb3BzLCBwcCk7Cj4+IMKg
wqDCoMKgwqAgaWYgKCFwcC0+aXJxX2RvbWFpbikgewo+PiBAQCAtMjU4LDYgKzI2Miw5IEBAIGlu
dCBkd19wY2llX2FsbG9jYXRlX2RvbWFpbnMoc3RydWN0IHBjaWVfcG9ydCAqcHApCj4+IMKgIMKg
IHN0YXRpYyB2b2lkIGR3X3BjaWVfZnJlZV9tc2koc3RydWN0IHBjaWVfcG9ydCAqcHApCj4+IMKg
IHsKPj4gK8KgwqDCoCBpZiAocHAtPm1zaV9leHQpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm47
Cj4+ICsKPj4gwqDCoMKgwqDCoCBpZiAocHAtPm1zaV9pcnEpIHsKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgIGlycV9zZXRfY2hhaW5lZF9oYW5kbGVyKHBwLT5tc2lfaXJxLCBOVUxMKTsKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIGlycV9zZXRfaGFuZGxlcl9kYXRhKHBwLT5tc2lfaXJxLCBOVUxMKTsKPj4g
QEAgLTM1OSw3ICszNjYsOCBAQCBpbnQgZHdfcGNpZV9ob3N0X2luaXQoc3RydWN0IHBjaWVfcG9y
dCAqcHApCj4+IMKgwqDCoMKgwqAgaWYgKHBjaS0+bGlua19nZW4gPCAxKQo+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgcGNpLT5saW5rX2dlbiA9IG9mX3BjaV9nZXRfbWF4X2xpbmtfc3BlZWQobnApOwo+
PiDCoCAtwqDCoMKgIGlmIChwY2lfbXNpX2VuYWJsZWQoKSkgewo+PiArwqDCoMKgIGlmIChwY2lf
bXNpX2VuYWJsZWQoKSAmJgo+PiArwqDCoMKgwqDCoMKgwqAgIXBwLT5tc2lfZXh0KSB7Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCBwcC0+aGFzX21zaV9jdHJsID0gIShwcC0+b3BzLT5tc2lfaG9zdF9p
bml0IHx8Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9m
X3Byb3BlcnR5X3JlYWRfYm9vbChucCwgIm1zaS1wYXJlbnQiKSB8fAo+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wobnAs
ICJtc2ktbWFwIikpOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1kZXNpZ253YXJlLmggCj4+IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1k
ZXNpZ253YXJlLmgKPj4gaW5kZXggMDIwNzg0MDc1NmM0Li5jZjNiMDY2NDMwMmEgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS5oCj4+ICsr
KyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS5oCj4+IEBAIC0x
OTUsNiArMTk1LDcgQEAgc3RydWN0IHBjaWVfcG9ydCB7Cj4+IMKgwqDCoMKgwqAgdTMywqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBpcnFfbWFza1tNQVhfTVNJX0NUUkxTXTsKPj4gwqDCoMKgwqDCoCBz
dHJ1Y3QgcGNpX2hvc3RfYnJpZGdlwqAgKmJyaWRnZTsKPj4gwqDCoMKgwqDCoCByYXdfc3Bpbmxv
Y2tfdMKgwqDCoMKgwqDCoMKgIGxvY2s7Cj4+ICvCoMKgwqAgaW50wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBtc2lfZXh0Owo+PiDCoMKgwqDCoMKgIERFQ0xBUkVfQklUTUFQKG1zaV9pcnFfaW5fdXNl
LCBNQVhfTVNJX0lSUVMpOwo+PiDCoCB9Owo+Pgo+Cj4KCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
