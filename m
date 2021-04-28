Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA15BC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 17:10:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 81A5D6143A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 17:10:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 81A5D6143A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QPUkxdEtLeiFRb9qRZOhOghjkI8+C/hHY7Pd3ulIBSQ=; b=M84itigXbUt+iB4A8/00qvp7S
	22seBSPCWjImgMNV+zjII5bB1pGLElZGlWIglNKnrkEgAkYwAmJVQMd6nXfZpXg5W5kJoyhyTBWNI
	gwNE96Q9rlzGIH5hd/UvmtLeHEFhvKBoWYjc81CQ4OUvF1kDC6q3w/SJzPKMg2GOC2LOPkNxjsqL1
	dnnav3xhvjigm6OimqHhrPh8iFJU7iWkrdwBn9iWQS83m3gUzn+2VIgHUYH//yZM18iwa3yOSSoWI
	IQZg9iZIhu0y4CUY+kPdOivXcGVwgzog+dcgNetuaxnvG5xuqqcb86N9fUHSsNxkUEvOecm2+tnBj
	911exu9UQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbnhT-003yGq-IL; Wed, 28 Apr 2021 17:10:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbnhE-003yEm-4W; Wed, 28 Apr 2021 17:09:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=nnUWswK9/uEZvQi7Bvq3hnY4+retTlAmSA7Daw142P8=; b=3fKYGe4nePu33s8X86yEMA1XAp
 C7Sf2ZOhqc7703NBrk9N36jvyE3YhGw4iyYO2VJj54uZ3b0mcFNFEVDOvbqwSJyT/91rA6NuewmRQ
 jtQo9G3iCeAO0RzUUW3c1S1lIrWcyIykow6C+VsSHkZpMoUTl2r/QehVxFe9katr3Bmf4Nw5IwqLh
 NWMLMAhC7LKJOb2mEIWM9MQtI1pLZLvtBGBCpy5H/LRe+0f76+BQW18sPMRYGG7wMVaylce8FehhV
 CdKeKxNCDA+Qerld+ol8un1jsrbdYnW8sgNTVMZ0azeb5xSbLXv319bhzFmS6WKgUdeVJKZ+KyyMJ
 2pe++/Gw==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbnhB-0003C5-D3; Wed, 28 Apr 2021 17:09:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 986DE1F42B77
Message-ID: <a56aee6c6e80cc0166cec9b0a331873e9651df0a.camel@collabora.com>
Subject: Re: [PATCH 70/78] media: rga-buf: use pm_runtime_resume_and_get()
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com, Heiko Stuebner
 <heiko@sntech.de>,  Jacob Chen <jacob-chen@iotwrt.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>,  linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Date: Wed, 28 Apr 2021 14:09:40 -0300
In-Reply-To: <d81e6df2d1a77dc70a4172b77fc15576010e05b3.1619191723.git.mchehab+huawei@kernel.org>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
 <d81e6df2d1a77dc70a4172b77fc15576010e05b3.1619191723.git.mchehab+huawei@kernel.org>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_100953_586884_00FC7ABA 
X-CRM114-Status: GOOD (  14.55  )
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

T24gU2F0LCAyMDIxLTA0LTI0IGF0IDA4OjQ1ICswMjAwLCBNYXVybyBDYXJ2YWxobyBDaGVoYWIg
d3JvdGU6Cj4gQ29tbWl0IGRkODA4OGQ1YTg5NiAoIlBNOiBydW50aW1lOiBBZGQgcG1fcnVudGlt
ZV9yZXN1bWVfYW5kX2dldCB0byBkZWFsIHdpdGggdXNhZ2UgY291bnRlciIpCj4gYWRkZWQgcG1f
cnVudGltZV9yZXN1bWVfYW5kX2dldCgpIGluIG9yZGVyIHRvIGF1dG9tYXRpY2FsbHkgaGFuZGxl
Cj4gZGV2LT5wb3dlci51c2FnZV9jb3VudCBkZWNyZW1lbnQgb24gZXJyb3JzLgo+IAo+IFVzZSB0
aGUgbmV3IEFQSSwgaW4gb3JkZXIgdG8gY2xlYW51cCB0aGUgZXJyb3IgY2hlY2sgbG9naWMuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBr
ZXJuZWwub3JnPgoKClJldmlld2VkLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxh
Ym9yYS5jb20+CgpUaGFua3MsCgo+IC0tLQo+IMKgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9yZ2EvcmdhLWJ1Zi5jIHwgMyArLS0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWJ1Zi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9yZ2EvcmdhLWJ1Zi5jCj4gaW5kZXggYmY5YTc1Yjc1MDgzLi44MTUwOGVkNWFiZjMgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWJ1Zi5j
Cj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWJ1Zi5jCj4g
QEAgLTc5LDkgKzc5LDggQEAgc3RhdGljIGludCByZ2FfYnVmX3N0YXJ0X3N0cmVhbWluZyhzdHJ1
Y3QgdmIyX3F1ZXVlICpxLCB1bnNpZ25lZCBpbnQgY291bnQpCj4gwqDCoMKgwqDCoMKgwqDCoHN0
cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSA9IGN0eC0+cmdhOwo+IMKgwqDCoMKgwqDCoMKgwqBpbnQg
cmV0Owo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgcmV0ID0gcG1fcnVudGltZV9nZXRfc3luYyhyZ2Et
PmRldik7Cj4gK8KgwqDCoMKgwqDCoMKgcmV0ID0gcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldChy
Z2EtPmRldik7Cj4gwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQgPCAwKSB7Cj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHBtX3J1bnRpbWVfcHV0X25vaWRsZShyZ2EtPmRldik7Cj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZ2FfYnVmX3JldHVybl9idWZmZXJzKHEsIFZC
Ml9CVUZfU1RBVEVfUVVFVUVEKTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJl
dHVybiByZXQ7Cj4gwqDCoMKgwqDCoMKgwqDCoH0KCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
