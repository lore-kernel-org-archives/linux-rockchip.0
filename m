Return-Path: <SRS0=k14b=JX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB0E2C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 12:33:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1E96761178
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 12:33:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1E96761178
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DAmRkSIbPRsZlDivXt4csNC4+krAvf3szuabLENhXBQ=; b=oZmrunnGHUqd+cUlM0nWanFWd
	09h2biwLv5TqS0mAZDCbD4EIx0o6deFiGM1UsCINUD9VKPoCx3qVb+V+uTpYMRGpAroZ1F4gKyOvW
	IIz6VKWWh2kWwrsyoAS7PCbaFzmQL+3l7IdXa0TuacT2v7v3ryaJPiFN8zdW+unTbpTgEwNXgYqM6
	fwanoaHXECLHRPVrjvF/+NNRlcZqUjICVVCKK4EJqdA0OEIqnB6qmOrwjk+tMmCqBRE4aZYfCkv1q
	kRnFESgs6mbDm9527+9O/xH1urKcHv3+V8BBpn0DHdRGeEppwzm5cgQUokST7Hkn7GBS0MAOF1NP1
	0YyTJKyIw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lb0Qn-007cZU-F1; Mon, 26 Apr 2021 12:33:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lb0Qm-007cZG-91
 for linux-rockchip@desiato.infradead.org; Mon, 26 Apr 2021 12:33:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=oTndmGrSsbAcIIP+HW7Qf2ZLcWsw00b+J4Azhrzj8So=; b=ZdQrMzVyFDaxAPSmjXyr2TQtwg
 qku53t7IQ9I8NFL2gmC8zymURr1/3xNhOIDxACCp5mObP8GvQ8dK58Yg9MDaES9y/ME6GFiLAcLqS
 aWQy11dy5hhFvx127gK6lNcVpyC1Bcr/r674J/zPO26ozS1IzC3WSVdEcl3H+5VK9OYW2nn7DMjNw
 WLSaHHc0WAFSoVBbTLbBjxkG0tJovS82W/MLEp/eDuQNSgmbmvWzJQodcQlVcskCg26POwPfgr3D+
 jRg8mvjKMoZDxFIvePMxbWLbO9rMnv9heMl2WAI1SLhaqq6BJdpiiE3iyWmqn2ncutBZmHSCVUmmE
 5MsxiajQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lb0Qh-00FxTT-ST
 for linux-rockchip@lists.infradead.org; Mon, 26 Apr 2021 12:33:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 396B260233;
 Mon, 26 Apr 2021 12:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619440413;
 bh=WvMI72dlNKXKfzflyxeqjv661v4Ptuau37HZFZ2JpCU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TwtJeLFjpMVq02zL6f76cEVapcwXwg7F7oL6Au9/efbENNz9p487RjgC1K0+H/hPo
 njAjp5XPzRdiWqJB3KjMHZ/pBMGQwXe2vc9UsIKhZUSyhqJVfLb3KRmK/hrLAEM3tl
 KdhfMDJeUg8F1bLvq8z6O9bIqDR80gquSkyrikymYcZ8xkeP2YyNU1JXsypS86Jcih
 ybCZ/T3GpFu2sn3SM17EynT+MeDqoYbcILLbJ7tCZfPhIr6hN7w/wgrK7uNr04medK
 e+qCIOm52KmIHG08YIF2jfq/uBi+jQRpYPsynW6sQOENwi1koIZgSWhV2ACv63YX00
 veVJuoVy/KvMg==
Date: Mon, 26 Apr 2021 14:33:27 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 13/78] staging: media: hantro_drv: use
 pm_runtime_resume_and_get()
Message-ID: <20210426143327.4f9fb6ea@coco.lan>
In-Reply-To: <780afdc9b263928ed378dfbd3eaa8a5509a59a35.camel@collabora.com>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
 <0021158fb27035a56089683ee712fb3ed6f6032d.1619191723.git.mchehab+huawei@kernel.org>
 <780afdc9b263928ed378dfbd3eaa8a5509a59a35.camel@collabora.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_053336_035893_BB0FD3FA 
X-CRM114-Status: GOOD (  20.27  )
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

RW0gU2F0LCAyNCBBcHIgMjAyMSAyMDoyMzo1MyAtMDMwMApFemVxdWllbCBHYXJjaWEgPGV6ZXF1
aWVsQGNvbGxhYm9yYS5jb20+IGVzY3JldmV1OgoKPiBIaSBNYXVybywKPiAKPiBPbiBTYXQsIDIw
MjEtMDQtMjQgYXQgMDg6NDQgKzAyMDAsIE1hdXJvIENhcnZhbGhvIENoZWhhYiB3cm90ZToKPiA+
IENvbW1pdCBkZDgwODhkNWE4OTYgKCJQTTogcnVudGltZTogQWRkIHBtX3J1bnRpbWVfcmVzdW1l
X2FuZF9nZXQgdG8gZGVhbCB3aXRoIHVzYWdlIGNvdW50ZXIiKQo+ID4gYWRkZWQgcG1fcnVudGlt
ZV9yZXN1bWVfYW5kX2dldCgpIGluIG9yZGVyIHRvIGF1dG9tYXRpY2FsbHkgaGFuZGxlCj4gPiBk
ZXYtPnBvd2VyLnVzYWdlX2NvdW50IGRlY3JlbWVudCBvbiBlcnJvcnMuCj4gPiAKPiA+IFVzZSB0
aGUgbmV3IEFQSSwgaW4gb3JkZXIgdG8gY2xlYW51cCB0aGUgZXJyb3IgY2hlY2sgbG9naWMuCj4g
PiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3
ZWlAa2VybmVsLm9yZz4KPiA+IC0tLQo+ID4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJv
L2hhbnRyb19kcnYuYyB8IDIgKy0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvaGFudHJvL2hhbnRyb19kcnYuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFu
dHJvX2Rydi5jCj4gPiBpbmRleCA1OTVlODJhODI3MjguLjMxNDdkY2JlYmViOSAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gPiArKysg
Yi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ID4gQEAgLTE1NSw3
ICsxNTUsNyBAQCBzdGF0aWMgdm9pZCBkZXZpY2VfcnVuKHZvaWQgKnByaXYpCj4gPiDCoMKgwqDC
oMKgwqDCoMKgcmV0ID0gY2xrX2J1bGtfZW5hYmxlKGN0eC0+ZGV2LT52YXJpYW50LT5udW1fY2xv
Y2tzLCBjdHgtPmRldi0+Y2xvY2tzKTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAocmV0KQo+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIGVycl9jYW5jZWxfam9iOwo+ID4g
LcKgwqDCoMKgwqDCoMKgcmV0ID0gcG1fcnVudGltZV9nZXRfc3luYyhjdHgtPmRldi0+ZGV2KTsK
PiA+ICvCoMKgwqDCoMKgwqDCoHJldCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoY3R4LT5k
ZXYtPmRldik7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHJldCA8IDApCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gZXJyX2NhbmNlbF9qb2I7Cj4gPiDCoCAgCj4gCj4g
U2VlbXMgdGhpcyBvbmUgbmVlZHMgYSBkaWZmZXJlbnQgZml4OiBlcnJfY2FuY2VsX2pvYgo+IHdp
bGwgY2FsbCBoYW50cm9fam9iX2ZpbmlzaCB3aGljaCBoYXMgYSBwbV9ydW50aW1lIHB1dC4KCkdv
b2QgcG9pbnQuIFRoYW5rcyBmb3IgcmV2aWV3aW5nIGl0IQoKSXQgc291bmRzIHRoYXQgdGhpcyBp
cyBhIHBsYWNlIHdoZXJlIHRoZSBiZXN0IHNlZW1zCnRvIGtlZXAgdXNpbmcgcG1fcnVudGltZV9n
ZXRfc3luYygpLCBidXQgbGV0J3MgYXQgbGVhc3QgYWRkIGEKY29tbWVudCBleHBsYWluaW5nIHdo
eSBpdCBzaG91bGQgYmUga2VwdCBoZXJlLiBUaGlzIHNob3VsZApoZWxwIHRvIGF2b2lkIHBlb3Bs
ZSB0byBjb3B5LWFuZC1wYXN0ZSB0aGUgY29kZSBvbiBzaXR1YXRpb25zCndoZXJlIHBtX3J1bnRp
bWVfcmVzdW1lX2FuZF9nZXQoKSBzaG91bGQgYmUgdXNlZCBpbnN0ZWFkLgoKU2VlIGVuY2xvc2Vk
IHBhdGNoLgoKVGhhbmtzLApNYXVybwoKW1BBVENIXSBtZWRpYTogaGFudHJvOiBkb2N1bWVudCB0
aGUgdXNhZ2Ugb2YgcG1fcnVudGltZV9nZXRfc3luYygpCgpEZXNwaXRlIG90aGVyICpfZ2V0KCkv
Kl9wdXQoKSBmdW5jdGlvbnMsIHdoZXJlIHVzYWdlIGNvdW50IGlzCmluY3JlbWVudGVkIG9ubHkg
aWYgbm90IGVycm9ycywgdGhlIHBtX3J1bnRpbWVfZ2V0X3N5bmMoKSBoYXMKYSBkaWZmZXJlbnQg
YmVoYXZpb3IsIGluY3JlbWVudGluZyB0aGUgY291bnRlciAqZXZlbiogb24KZXJyb3JzLgoKVGhh
dCdzIGFuIGVycm9yIHByb25lIGJlaGF2aW9yLCBhcyBwZW9wbGUgb2Z0ZW4gZm9yZ2V0IHRvCmRl
Y3JlbWVudCB0aGUgdXNhZ2UgY291bnRlci4KCkhvd2V2ZXIsIHRoZSBoYW50cm8gZHJpdmVyIGRl
cGVuZHMgb24gdGhpcyBiZWhhdmlvciwgYXMgaXQKd2lsbCBkZWNyZW1lbnQgdGhlIHVzYWdlX2Nv
dW50IHVuY29uZGl0aW9uYWxseSBhdCB0aGUgbTJtCmpvYiBmaW5pc2ggdGltZSwgd2hpY2ggbWFr
ZXMgc2Vuc2UuCgpTbywgaW50ZWFkIG9mIHVzaW5nIHRoZSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRf
Z2V0KCkgdGhhdAp3b3VsZCBkZWNyZW1lbnQgdGhlIGNvdW50ZXIgb24gZXJyb3IsIGtlZXAgdGhl
IGN1cnJlbnQKQVBJLCBidXQgYWRkIGEgZG9jdW1lbnRhdGlvbiBleHBsYWluaW5nIHRoZSByYXRp
b25hbGUgZm9yCmtlZXAgdXNpbmcgcG1fcnVudGltZV9nZXRfc3luYygpLgoKU2lnbmVkLW9mZi1i
eTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnPgoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jIGIvZHJp
dmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKaW5kZXggNTk1ZTgyYTgyNzI4
Li45NmY5NDBjMWM4NWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
aGFudHJvX2Rydi5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Ry
di5jCkBAIC0xNTUsNiArMTU1LDEzIEBAIHN0YXRpYyB2b2lkIGRldmljZV9ydW4odm9pZCAqcHJp
dikKIAlyZXQgPSBjbGtfYnVsa19lbmFibGUoY3R4LT5kZXYtPnZhcmlhbnQtPm51bV9jbG9ja3Ms
IGN0eC0+ZGV2LT5jbG9ja3MpOwogCWlmIChyZXQpCiAJCWdvdG8gZXJyX2NhbmNlbF9qb2I7CisK
KwkvKgorCSAqIFRoZSBwbV9ydW50aW1lX2dldF9zeW5jKCkgd2lsbCBpbmNyZW1lbnQgZGV2LT5w
b3dlci51c2FnZV9jb3VudCwKKwkgKiBldmVuIG9uIGVycm9ycy4gVGhhdCdzIHRoZSBleHBlY3Rl
ZCBiZWhhdmlvciBoZXJlLCBzaW5jZSB0aGUKKwkgKiBoYW50cm9fam9iX2ZpbmlzaCgpIGZ1bmN0
aW9uIGF0IHRoZSBlcnJvciBoYW5kbGluZyBjb2RlCisJICogd2lsbCBpbnRlcm5hbGx5IGNhbGwg
cG1fcnVudGltZV9wdXRfYXV0b3N1c3BlbmQoKS4KKwkgKi8KIAlyZXQgPSBwbV9ydW50aW1lX2dl
dF9zeW5jKGN0eC0+ZGV2LT5kZXYpOwogCWlmIChyZXQgPCAwKQogCQlnb3RvIGVycl9jYW5jZWxf
am9iOwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
