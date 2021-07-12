Return-Path: <SRS0=7Rgf=ME=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1F58C07E99
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 22:22:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 972BE611F1
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 22:22:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 972BE611F1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4nDE8fPlJWqTDzC7L7+w+uRj+pYNxptS1anHRSPtrew=; b=IwQgIC6m01T46L
	87MsgNkNGm8yUTull2b5dPd63pUxYZC3CrKtpvQuCThob+T4SmQ0y6IZsp8hkDxegUtO/tK1d8Uc4
	cHZcsbIW0HoA0FTWP5OaeCj+PpCZ7QkQ9aBYQksK5mjbR3mCJhsLqER7KBpQB0Z77j93lfWJiuTCs
	F47BeDnvh3QM71moqMHdeENMtazqljkMX5xA9OrrWvcLvl1R/U6h3vRHixYqB69Yj3mtGooQnuES6
	uXgvbaij0x5M/Uq+02Os515xWwWVl8YUYBFY3vnzI1qq/aiBDIsrPPkbXYIeDtN0lQeBLGpT8365M
	LvN/mIEGl512HsN+ia9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m34JJ-008dgg-0x; Mon, 12 Jul 2021 22:21:57 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m34J4-008dcx-Dn; Mon, 12 Jul 2021 22:21:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 520EA1F42053
Message-ID: <043580ca84a9f3bf38ee633eda910a19781e9e76.camel@collabora.com>
Subject: Re: [PATCH v4 8/9] media: hevc: Add scaling matrix control
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, hverkuil@xs4all.nl,
 p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com, andrzej.p@collabora.com,
 jc@kynesim.co.uk, jernej.skrabec@gmail.com, nicolas@ndufresne.ca, 
 cphealy@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Mon, 12 Jul 2021 19:21:25 -0300
In-Reply-To: <20210625141143.577998-9-benjamin.gaignard@collabora.com>
References: <20210625141143.577998-1-benjamin.gaignard@collabora.com>
 <20210625141143.577998-9-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_152142_631092_22E4B892 
X-CRM114-Status: GOOD (  22.89  )
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

SGkgQmVuamFtaW4sCgpJIGJlbGlldmUgdGhlIHNjYWxpbmcgbWF0cml4IHVBUEkgcGF0Y2goZXMp
IGFuZCB0aGUgc3VwcG9ydAppbiBIYW50cm8gRzIgY291bGQgYmUgbW92ZWQgdG8gaXRzIG93biBz
ZXJpZXMgYW5kIG1heWJlCm1lcmdlZCBzb29uZXIgdGhhbiB0aGUgcmVzdCAod2hpY2ggbWF5IG5l
ZWQgbW9yZSBkaXNjdXNzaW9uKS4KCkNvdXBsZSByZW1hcmtzIGJlbG93LgogCk9uIEZyaSwgMjAy
MS0wNi0yNSBhdCAxNjoxMSArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gSEVWQyBz
Y2FsaW5nIGxpc3RzIGFyZSB1c2VkIGZvciB0aGUgc2NhbGluZyBwcm9jZXNzIGZvciB0cmFuc2Zv
cm0KPiBjb2VmZmljaWVudHMuCj4gVjRMMl9IRVZDX1NQU19GTEFHX1NDQUxJTkdfTElTVF9FTkFC
TEVEIGhhcyB0byBzZXQgd2hlbiB0aGV5IGFyZQo+IGVuY29kZWQgaW4gdGhlIGJpdHN0cmVhbS4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRA
Y29sbGFib3JhLmNvbT4KPiAtLS0KPiBOb3RlOiBWNEwyX0hFVkNfU1BTX0ZMQUdfU0NBTElOR19M
SVNUX0VOQUJMRUQgaXMgbm90IGNoYW5nZSBieSB0aGlzCj4gcGF0Y2guIFRoZXJlIGlzIGEgdGhy
ZWFkIGFib3V0IHRoZSBuYW1pbmcvdXNhZ2Ugb2YgdGhpcyBmbGFnIGhlcmU6Cj4gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLWtlcm5lbC8yMDIxMDYxMDE1NDQ0Mi44MDYxMDctOC1i
ZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tLwo+IGJ1dCB0aGF0IGRvZXNuJ3QgY29uY2Vy
biB0aGUgc2NhbGluZyBtYXRyaXggY29udHJvbCBieSBpdHNlbGYuCj4gCgpJZiBJIGFtIHJlYWRp
bmcgdGhlIHNwZWMgY29ycmVjdGx5LCB3ZSBoYXZlIGZpZWxkcyBpbgpTUFMgKHNjYWxpbmdfbGlz
dF9lbmFibGVkX2ZsYWcsIHNjYWxpbmdfbGlzdF9kYXRhX3ByZXNlbnRfZmxhZykKYW5kIFBQUyAo
c2NhbGluZ19saXN0X2RhdGFfcHJlc2VudF9mbGFnKS4KCldlIGRvbid0IG5lZWQgYWxsIHRoYXQs
IHNpbmNlIGFsbCBhIGRyaXZlciBuZWVkcyB0byBrbm93CmlzIHdoZXRoZXIgYSBzY2FsaW5nIGxp
c3QgaXMgdG8gYmUgYXBwbGllZCBmb3IgdGhlIGN1cnJlbnQgZnJhbWUuCiAgCldvdWxkIHlvdSBt
aW5kIGFkZGluZyBhIHBhdGNoIG1vdmluZyB0aGUgZmxhZyB0byB0aGUgUFBTPwoKPiB2ZXJzaW9u
IDI6Cj4gwqAtIEZpeCBzdHJ1Y3R1cmUgbmFtZSBpbiBleHQtY3RybHMtY29kZWMucnN0Cj4gCj4g
wqAuLi4vbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3TCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfCA0NSArKysrKysrKysrKysrKysrKysrCj4gwqAuLi4vbWVkaWEvdjRsL3ZpZGlvYy1xdWVy
eWN0cmwucnN0wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNiArKysKPiDCoGRyaXZlcnMvbWVk
aWEvdjRsMi1jb3JlL3Y0bDItY3RybHMtY29yZS5jwqDCoMKgwqAgfMKgIDYgKysrCj4gwqBkcml2
ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWN0cmxzLWRlZnMuY8KgwqDCoMKgIHzCoCA0ICsrCj4g
wqBpbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHwgMTEgKysrKysKPiDCoDUgZmlsZXMgY2hhbmdlZCwgNzIgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRs
L2V4dC1jdHJscy1jb2RlYy5yc3QgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEv
djRsL2V4dC1jdHJscy1jb2RlYy5yc3QKPiBpbmRleCBkYzA5NmE1NTYyY2QuLjM4NjVhY2I5ZTBm
ZCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2V4
dC1jdHJscy1jb2RlYy5yc3QKPiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVk
aWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3QKPiBAQCAtMzA3MSw2ICszMDcxLDUxIEBAIGVudW0g
djRsMl9tcGVnX3ZpZGVvX2hldmNfc2l6ZV9vZl9sZW5ndGhfZmllbGQgLQo+IMKgCj4gwqDCoMKg
wqAgXG5vcm1hbHNpemUKPiDCoAo+ICtgYFY0TDJfQ0lEX01QRUdfVklERU9fSEVWQ19TQ0FMSU5H
X01BVFJJWCAoc3RydWN0KWBgCj4gK8KgwqDCoCBTcGVjaWZpZXMgdGhlIEhFVkMgc2NhbGluZyBt
YXRyaXggcGFyYW1ldGVycyB1c2VkIGZvciB0aGUgc2NhbGluZyBwcm9jZXNzCj4gK8KgwqDCoCBm
b3IgdHJhbnNmb3JtIGNvZWZmaWNpZW50cy4KPiArwqDCoMKgIFRoZXNlIG1hdHJpeCBhbmQgcGFy
YW1ldGVycyBhcmUgZGVmaW5lZCBhY2NvcmRpbmcgdG8gOnJlZjpgaGV2Y2AuCj4gK8KgwqDCoCBU
aGV5IGFyZSBkZXNjcmliZWQgaW4gc2VjdGlvbiA3LjQuNSAiU2NhbGluZyBsaXN0IGRhdGEgc2Vt
YW50aWNzIiBvZgo+ICvCoMKgwqAgdGhlIHNwZWNpZmljYXRpb24uCj4gKwoKVGhpcyBuZWVkcyBz
b21lIGFkZGl0aW9uYWwgZG9jdW1lbnRhdGlvbiBhYm91dCB0aGUgb3JkZXIgb2YgdGhlIGxpc3Rz
LgpTZWUgdGhlIGRvY3MgdGhhdCB3ZSd2ZSBhZGRlZCBmb3IgdGhlIHNjYWxpbmdfbGlzdF97fSBm
aWVsZHMgaW4KVjRMMl9DSURfU1RBVEVMRVNTX0gyNjRfU0NBTElOR19NQVRSSVguCgpUaGFua3Mh
Ci0tIApLaW5kbHksCkV6ZXF1aWVsCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
