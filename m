Return-Path: <SRS0=V4ex=M4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83E68C4320A
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 22:03:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3ED0060EB9
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 22:03:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3ED0060EB9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzVIBrWs0EomLyu1k3qdE1wZ2aixNU/vmhf0ZoyWz48=; b=0ewNSSfJAAYM4z
	aka1Y8wRZlrTj9V1KtZW8fX5y4PK2UxK0LK0U0dTxiaVvqTCEHvOcTXMZCgl4IMYNFblUTl43c7za
	QxZP4qkQ6Ql/xn6op+5ohXkV1hIUNi0c8khbdTKr8t9Bx35noVEMTH7J1YvGsyABL9S8j3ex61J34
	y5Jjf8AZVuWPdgi/3y8pruuQrnzJFKayPDEVf81+D/qQNqW4h4lhIFeIrJQU/1PwuNYG0y1/pDQuJ
	Hyc/5WUQUmfFvrgGuJaY+GVj/z8O+ooUtYtZ5l+kBLUeYnbc/62LkB8S+l2IoQ2K7YFWZOWJk/3x0
	fYRKM6nS0kfkpNPEyBYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBlSw-00Avo4-K3; Thu, 05 Aug 2021 22:03:50 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBlSt-00AvnM-Os
 for linux-rockchip@lists.infradead.org; Thu, 05 Aug 2021 22:03:49 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 873A21F44331
Message-ID: <6761bb11f4554e9f9cbe468b5ff8f851c57515ef.camel@collabora.com>
Subject: Re: [PATCH] media: hantro: Fix check for single irq
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Jernej Skrabec <jernej.skrabec@gmail.com>, p.zabel@pengutronix.de
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org,
 hverkuil-cisco@xs4all.nl,  emil.velikov@collabora.com,
 linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev,  linux-kernel@vger.kernel.org
Date: Thu, 05 Aug 2021 19:03:36 -0300
In-Reply-To: <20210805190416.332563-1-jernej.skrabec@gmail.com>
References: <20210805190416.332563-1-jernej.skrabec@gmail.com>
Organization: Collabora
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_150347_987358_159277CC 
X-CRM114-Status: GOOD (  21.10  )
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

SGkgSmVybmVqLAoKT24gVGh1LCAyMDIxLTA4LTA1IGF0IDIxOjA0ICswMjAwLCBKZXJuZWogU2ty
YWJlYyB3cm90ZToKPiBTb21lIGNvcmVzIHVzZSBvbmx5IG9uZSBpbnRlcnJ1cHQgYW5kIGluIHN1
Y2ggY2FzZSBpbnRlcnJ1cHQgbmFtZSBpbiBEVAo+IGlzIG5vdCBuZWVkZWQuIERyaXZlciBzdXBw
b3NlZGx5IGFjY291bnRlZCB0aGF0LCBidXQgZHVlIHRvIHRoZSB3cm9uZwo+IGZpZWxkIGNoZWNr
IGl0IG5ldmVyIHdvcmtlZC4gRml4IHRoYXQuCj4gCj4gRml4ZXM6IDE4ZDZjOGI3YjRjOSAoIm1l
ZGlhOiBoYW50cm86IGFkZCBmYWxsYmFjayBoYW5kbGluZyBmb3Igc2luZ2xlIGlycS9jbGsiKQo+
IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+
Cj4gLS0tCj4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYyB8IDIg
Ky0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYyBi
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gaW5kZXggOGEyZWRk
NjdmMmM2Li4yMGU1MDgxNTg4NzEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlh
L2hhbnRyby9oYW50cm9fZHJ2LmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJv
L2hhbnRyb19kcnYuYwo+IEBAIC05MTksNyArOTE5LDcgQEAgc3RhdGljIGludCBoYW50cm9fcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGlmICghdnB1LT52YXJpYW50LT5pcnFzW2ldLmhhbmRsZXIpCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29udGludWU7Cj4gwqAKPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKHZwdS0+dmFyaWFudC0+bnVtX2Nsb2Nr
cyA+IDEpIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKHZwdS0+dmFyaWFu
dC0+bnVtX2lycXMgPiAxKSB7CgpPb3BzLCB0aGFua3MgZm9yIHNwb3R0aW5nIHRoaXMuCiAKSG93
IGFib3V0IHRoaXMgaW5zdGVhZD8KCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL2hhbnRyb19kcnYuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJv
X2Rydi5jCmluZGV4IDMxZDg0NDljYTFkMi4uYWY3MDU0YjA0MTU1IDEwMDY0NAotLS0gYS9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYworKysgYi9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwpAQCAtOTE4LDE2ICs5MTgsMTUgQEAgc3RhdGlj
IGludCBoYW50cm9fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKICAgICAgICAg
ICAgICAgIGlmICghdnB1LT52YXJpYW50LT5pcnFzW2ldLmhhbmRsZXIpCiAgICAgICAgICAgICAg
ICAgICAgICAgIGNvbnRpbnVlOwogCi0gICAgICAgICAgICAgICBpZiAodnB1LT52YXJpYW50LT5u
dW1fY2xvY2tzID4gMSkgewotICAgICAgICAgICAgICAgICAgICAgICBpcnFfbmFtZSA9IHZwdS0+
dmFyaWFudC0+aXJxc1tpXS5uYW1lOwotICAgICAgICAgICAgICAgICAgICAgICBpcnEgPSBwbGF0
Zm9ybV9nZXRfaXJxX2J5bmFtZSh2cHUtPnBkZXYsIGlycV9uYW1lKTsKLSAgICAgICAgICAgICAg
IH0gZWxzZSB7CisgICAgICAgICAgICAgICBpcnFfbmFtZSA9IHZwdS0+dmFyaWFudC0+aXJxc1tp
XS5uYW1lOworICAgICAgICAgICAgICAgaXJxID0gcGxhdGZvcm1fZ2V0X2lycV9ieW5hbWUodnB1
LT5wZGV2LCBpcnFfbmFtZSk7CisgICAgICAgICAgICAgICBpZiAoaXJxIDw9IDApIHsKICAgICAg
ICAgICAgICAgICAgICAgICAgLyoKLSAgICAgICAgICAgICAgICAgICAgICAgICogSWYgdGhlIGRy
aXZlciBoYXMgYSBzaW5nbGUgSVJRLCBjaGFuY2VzIGFyZSB0aGVyZQotICAgICAgICAgICAgICAg
ICAgICAgICAgKiB3aWxsIGJlIG5vIGFjdHVhbCBuYW1lIGluIHRoZSBEVCBiaW5kaW5ncy4KKyAg
ICAgICAgICAgICAgICAgICAgICAgICogTWlzc2luZyBpbnRlcnJ1cHQtbmFtZXMgcHJvcGVydHkg
aW4gZGV2aWNlIHRyZWUsCisgICAgICAgICAgICAgICAgICAgICAgICAqIGxvb2tpbmcgdXAgaW50
ZXJydXB0cyBieSBpbmRleC4KICAgICAgICAgICAgICAgICAgICAgICAgICovCiAgICAgICAgICAg
ICAgICAgICAgICAgIGlycV9uYW1lID0gImRlZmF1bHQiOwotICAgICAgICAgICAgICAgICAgICAg
ICBpcnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHZwdS0+cGRldiwgMCk7CisgICAgICAgICAgICAgICAg
ICAgICAgIGlycSA9IHBsYXRmb3JtX2dldF9pcnEodnB1LT5wZGV2LCBpKTsKICAgICAgICAgICAg
ICAgIH0KICAgICAgICAgICAgICAgIGlmIChpcnEgPD0gMCkKICAgICAgICAgICAgICAgICAgICAg
ICAgcmV0dXJuIC1FTlhJTzsKCgoKLS0gCktpbmRseSwKRXplcXVpZWwKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
