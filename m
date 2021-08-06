Return-Path: <SRS0=27lq=M5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EC8C432BE
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Aug 2021 14:14:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4944561186
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Aug 2021 14:14:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4944561186
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHrcccghs4JixTK937pFi8I27Eyw2Z87x2RmgVV7iRE=; b=FX3X5aXM2U/O1b
	mvnIpJDLxlVUTX7eOQAMav5O88v9+tREA6mx21Ki5KZEc3Yt2xWhwgMHPSMc6iPXT7ynOIqsFNeJS
	Yiw7Q2IPAE6vd+DeuMtsJvV5fLqEKXCVlQJSFkOHYR7q4/DkKtonWppd/TJnLjddI+uVRiKNoGqy/
	cGX0POygCtqg6B2ErEnmR8k3znUo7tD9tUF5/zA/AtCm4fErFl+DYh4g77/LNMRVOLi/oYvY00EyB
	mYUXzS2xFwHZvkwTjNJlblVyE8azjKWcERhTdNjz2Oma7SUIJMzNQU00HPtHjS59FWWgToeadBJWl
	Z5Z0IkixvLwvjXHg1kfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mC0bs-00Cieq-03; Fri, 06 Aug 2021 14:14:04 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mC0bp-00Cid9-8y
 for linux-rockchip@lists.infradead.org; Fri, 06 Aug 2021 14:14:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id D545C1F44A85
Message-ID: <79673df0562db410753c90f9957125f202c5a1b2.camel@collabora.com>
Subject: Re: [PATCH] media: hantro: Fix check for single irq
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Jernej =?UTF-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>, 
 p.zabel@pengutronix.de
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org,
 hverkuil-cisco@xs4all.nl,  emil.velikov@collabora.com,
 linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev,  linux-kernel@vger.kernel.org
Date: Fri, 06 Aug 2021 11:13:46 -0300
In-Reply-To: <8101406.vZ8PxZ7URt@jernej-laptop>
References: <20210805190416.332563-1-jernej.skrabec@gmail.com>
 <6761bb11f4554e9f9cbe468b5ff8f851c57515ef.camel@collabora.com>
 <8101406.vZ8PxZ7URt@jernej-laptop>
Organization: Collabora
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_071401_497896_DAAB7ED5 
X-CRM114-Status: GOOD (  26.09  )
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

T24gRnJpLCAyMDIxLTA4LTA2IGF0IDA2OjQ0ICswMjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6
Cj4gRG5lIHBldGVrLCAwNi4gYXZndXN0IDIwMjEgb2IgMDA6MDM6MzYgQ0VTVCBqZSBFemVxdWll
bCBHYXJjaWEgbmFwaXNhbChhKToKPiA+IEhpIEplcm5laiwKPiA+IAo+ID4gT24gVGh1LCAyMDIx
LTA4LTA1IGF0IDIxOjA0ICswMjAwLCBKZXJuZWogU2tyYWJlYyB3cm90ZToKPiA+ID4gU29tZSBj
b3JlcyB1c2Ugb25seSBvbmUgaW50ZXJydXB0IGFuZCBpbiBzdWNoIGNhc2UgaW50ZXJydXB0IG5h
bWUgaW4gRFQKPiA+ID4gaXMgbm90IG5lZWRlZC4gRHJpdmVyIHN1cHBvc2VkbHkgYWNjb3VudGVk
IHRoYXQsIGJ1dCBkdWUgdG8gdGhlIHdyb25nCj4gPiA+IGZpZWxkIGNoZWNrIGl0IG5ldmVyIHdv
cmtlZC4gRml4IHRoYXQuCj4gPiA+IAo+ID4gPiBGaXhlczogMThkNmM4YjdiNGM5ICgibWVkaWE6
IGhhbnRybzogYWRkIGZhbGxiYWNrIGhhbmRsaW5nIGZvciBzaW5nbGUKPiA+ID4gaXJxL2NsayIp
IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+
Cj4gPiA+IC0tLQo+ID4gPiDCoGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Ry
di5jIHwgMiArLQo+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9o
YW50cm8vaGFudHJvX2Rydi5jCj4gPiA+IGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9o
YW50cm9fZHJ2LmMgaW5kZXgKPiA+ID4gOGEyZWRkNjdmMmM2Li4yMGU1MDgxNTg4NzEgMTAwNjQ0
Cj4gPiA+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4g
PiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gPiA+
IEBAIC05MTksNyArOTE5LDcgQEAgc3RhdGljIGludCBoYW50cm9fcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlm
ICghdnB1LT52YXJpYW50LT5pcnFzW2ldLmhhbmRsZXIpCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7Cj4gPiA+IMKgCj4gPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICh2cHUtPnZhcmlhbnQtPm51bV9jbG9ja3Mg
PiAxKSB7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICh2cHUtPnZhcmlh
bnQtPm51bV9pcnFzID4gMSkgewo+ID4gCj4gPiBPb3BzLCB0aGFua3MgZm9yIHNwb3R0aW5nIHRo
aXMuCj4gPiAKPiA+IEhvdyBhYm91dCB0aGlzIGluc3RlYWQ/Cj4gCj4gTm8sIG9yaWdpbmFsIHNv
bHV0aW9uIGlzIG1vcmUgcm9idXN0LiBXaXRoIHNvbHV0aW9uIGJlbG93LCB5b3UncmUgYXNzdW1p
bmcgCj4gdGhhdCBpcnEgb3JkZXIgaW4gZHJpdmVyIGFycmF5IGlzIHNhbWUgYXMgaW4gRFQuIFRo
YXQgZG9lc24ndCBtYXR0ZXIgaWYgdGhlcmUgCj4gaXMgb25seSBvbmUgbmFtZSBvciBpZiBuYW1l
cyBtYXRjaC4gSG93ZXZlciwgaWYgdGhlcmUgaXMgYSB0eXBvLCBlaXRoZXIgaW4gRFQgCj4gbm9k
ZSBvciBpbiBkcml2ZXIsIGRyaXZlciB3aWxsIHN0aWxsIGhhcHBpbHkgYXNzaWduIGNsb2NrIGJh
c2VkIG9uIGluZGV4IGFuZCAKPiB0aGF0IG1pZ2h0IG5vdCBiZSBjb3JyZWN0IG9uZS4gRXZlbiBp
ZiBpdCB3b3JrcyBvdXQsIHlvdSBjYW4gZWFzaWx5IG1pc3MgdGhhdCAKPiB5b3UgaGF2ZSBhIHR5
cG8uIERyaXZlciBkb2Vzbid0IHRlbGwgeW91IHdoaWNoIGlycSBpcyB1c2VkLCBpZiBpdCBpcyAK
PiBzdWNjZXNzZnVsbHkgYWNxdWlyZWQuCj4gCgpJIGZpbmQgaXQgb2RkIHRvIGl0ZXJhdGUgdXAg
dG8gbnVtX2lycXMgYnV0IHRoZW4KaGF2ZSBhIGNhc2UgZm9yIG51bV9pcnFzID09IDEsIGFuZCBj
YWxsCnBsYXRmb3JtX2dldF9pcnEodnB1LT5wZGV2LCAwKS4KCkJ1dCBPVE9ILCB5b3VyIGZpeCBp
cyBjb3JyZWN0IGFuZCBpdCdzIGEgb25lbGluZXIuCgpSZXZpZXdlZC1ieTogRXplcXVpZWwgR2Fy
Y2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPgoKVGhhbmtzLApFemVxdWllbAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
