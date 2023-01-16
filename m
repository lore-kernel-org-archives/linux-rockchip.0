Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF11CC46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 07:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xSyRcRcB1B0MYkSFbTU/3atU6o7USqEDiCwdsF/7yLI=; b=fB44FjrzQMnFh2
	+Zaf/KpfdA7+M7XmJRdFi+XXeIBoGLxYDMN6yECfsG/mvgRgY0vkSRfphW5C3I5G2MezgRpGxjbqK
	nj7Xx4Z1jKmvZlxfzqGUPHofRBHyOd64NfEkGaa9K808RaAr8yBxRHt3bnUCxAWfQZeEw4grFbdmY
	MFPQsySiIyvkFJHt24euui1S1J2zvEee/4+fEfJB3uqdeLFbvClOlnAuOstGKVLZ+zqhxset1VFbi
	DmbDEQOiOmxjh/Rd49WasKQW/NWBybcWS5tnmkSr5IkertOpm7sTNL6Xn/dY7AVTyH6bAHXka1BcJ
	hkKwYQYgfZTV4i3J3D6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHKKi-0094LI-2W; Mon, 16 Jan 2023 07:55:08 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHKKe-0094Js-Sp
	for linux-rockchip@lists.infradead.org; Mon, 16 Jan 2023 07:55:06 +0000
Received: from [192.168.15.130] (unknown [194.152.46.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C55B56602D09;
	Mon, 16 Jan 2023 07:54:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673855699;
	bh=VHAdl9bhBGxxREJcOK8QcHBboqqMjDLzA64zCLk2l4c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mmMzMDUxd1Uj7zkfzPCFVdPtwFr3bM70WpOweD7P6lrlWASLUg2VaWDDnlGz34TnY
	 eP6yhnBIoYvznGtKkgMFvt/NDwMomiYL0d8Mwl3cbfKLL6u8AvVZ3RcJK7kuWYMcHx
	 z2y12CndWrYuBga4rDfPHRd5rd1yKTOBy2VwKr6hsZb3Fd7DdLV0h4CR8O4Urzl098
	 JhAhHEYdFxWNome5EFmx+TQWoN4fM+EuxtJDeC8m9e8bTMKeJrQO/Zz5CymOZK3XwL
	 KPyOhyJPAX7jq0DxzzDSFDly0i7A4eRWgTQasoQO0YcfR6sBMchH/wFa1RDAb3ocp1
	 yizjFpglTZjVw==
Message-ID: <4cbfcbfb-4d77-83e9-f5f2-d8752d8860eb@collabora.com>
Date: Mon, 16 Jan 2023 08:54:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 03/12] staging: media: rkvdec: Helper for buffer queue
 busy check
To: Sebastian Fricke <sebastian.fricke@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 Jonas Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel-domain <kernel@collabora.com>,
 Robert Beckett <bob.beckett@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
References: <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com>
 <20230101-patch-series-v2-6-2-rc1-v2-3-fa1897efac14@collabora.com>
Content-Language: en-US
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20230101-patch-series-v2-6-2-rc1-v2-3-fa1897efac14@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230115_235505_183092_DFB49B0D 
X-CRM114-Status: GOOD (  22.06  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgU2ViYXN0aWFuLAoKVyBkbml1IDEyLjAxLjIwMjMgb8KgMTM6NTYsIFNlYmFzdGlhbiBGcmlj
a2UgcGlzemU6Cj4gSW1wbGVtZW50IGEgaGVscGVyIGZ1bmN0aW9uLCB3cmFwcGluZyBhcm91bmQg
Z2V0dGluZyBhIHZiMiBxdWV1ZSBhbmQKPiBjaGVja2luZyB3aGV0aGVyIGl0IGlzIGJ1c3ksIHRv
IHJlZHVjZSB0aGUgYW1vdW50IG9mIGNvZGUgZHVwbGljYXRpb24gaW4KPiB0aGUgZHJpdmVyLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBGcmlja2UgPHNlYmFzdGlhbi5mcmlja2VAY29s
bGFib3JhLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVj
LmMgfCAyMSArKysrKysrKysrKysrKy0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNl
cnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9y
a3ZkZWMuYwo+IGluZGV4IDdiYWI3NTg2OTE4Yy4uYzg0OWY2YzIwMjc5IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKPiArKysgYi9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4gQEAgLTI3LDYgKzI3LDE3IEBACj4gICAjaW5j
bHVkZSAicmt2ZGVjLmgiCj4gICAjaW5jbHVkZSAicmt2ZGVjLXJlZ3MuaCIKPiAgIAo+ICtzdGF0
aWMgaW50IHJrdmRlY19xdWV1ZV9idXN5KHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgsIGVudW0gdjRs
Ml9idWZfdHlwZSBidWZfdHlwZSkKPiArewo+ICsJc3RydWN0IHZiMl9xdWV1ZSAqdnE7Cj4gKwo+
ICsJdnEgPSB2NGwyX20ybV9nZXRfdnEoY3R4LT5maC5tMm1fY3R4LCBidWZfdHlwZSk7Cj4gKwlp
ZiAodmIyX2lzX2J1c3kodnEpKQo+ICsJCXJldHVybiAtRUJVU1k7Cj4gKwllbHNlCj4gKwkJcmV0
dXJuIDA7CgpPcHRpb25hbGx5IHlvdSBjYW4gdXNlIHRoZSB0ZXJuYXJ5IG9wZXJhdG9yOgoKcmV0
dXJuIHZiMl9pc19idXN5KHZnKSA/IC1FQlVTWSA6IDA7CgpCdXQgdGhlbiB0aGlzIG5ldyBmdW5j
dGlvbiBlc3NlbnRpYWxseSBiZWNvbWVzIGEgd3JhcHBlciBhcm91bmQgZXh0cmFjdGluZwp0aGUg
dnEuIFRoZSB3cmFwcGVyIHRoZW4gZW5jb2RlcyBpdHMgcmVzdWx0IGluIHRoZSByZXR1cm4gdmFs
dWUsCndoaWNoIGlzIGxhdGVyIGRlY29kZWQgYXQgY2FsbCBzaXRlIHRvIG9ubHkgcmV0dXJuIC1F
QlVTWSBpZiB0aGUgd3JhcHBlcgpyZXR1cm5zIC1FQlVTWSBhbmQgaWdub3JlIHRoZSByZXN1bHQg
aWYgMC4gVGhpcyBtYWtlcyBtZSB0aGluayB0aGF0Cm1heWJlIHlvdSB3YW50IGEgbWFjcm8gaW5z
dGVhZDoKCiNkZWZpbmUgcmt2ZGVjX3F1ZXVlX2J1c3koY3R4LCB0eXBlKSBcCgl2YjJfaXNfYnVz
eSh2NGwyX20ybV9nZXRfdnEoKGN0eCktPmZoLm0ybV9jdHgsICh0eXBlKSkpCgphbmQgY2FsbCBp
dCBsaWtlIHRoaXM6CgppZiAocmt2ZGVjX3F1ZXVlX2J1c3koYywgdCkpCglyZXR1cm4gLUVCVVNZ
OwoKPiArfQo+ICsKPiAgIHN0YXRpYyBpbnQgcmt2ZGVjX3RyeV9jdHJsKHN0cnVjdCB2NGwyX2N0
cmwgKmN0cmwpCj4gICB7Cj4gICAJc3RydWN0IHJrdmRlY19jdHggKmN0eCA9IGNvbnRhaW5lcl9v
ZihjdHJsLT5oYW5kbGVyLCBzdHJ1Y3Qgcmt2ZGVjX2N0eCwgY3RybF9oZGwpOwo+IEBAIC0zMTEs
MTMgKzMyMiwxMCBAQCBzdGF0aWMgaW50IHJrdmRlY19zX2NhcHR1cmVfZm10KHN0cnVjdCBmaWxl
ICpmaWxlLCB2b2lkICpwcml2LAo+ICAgCQkJCXN0cnVjdCB2NGwyX2Zvcm1hdCAqZikKPiAgIHsK
PiAgIAlzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4ID0gZmhfdG9fcmt2ZGVjX2N0eChwcml2KTsKPiAt
CXN0cnVjdCB2YjJfcXVldWUgKnZxOwo+ICAgCWludCByZXQ7Cj4gICAKPiAgIAkvKiBDaGFuZ2Ug
bm90IGFsbG93ZWQgaWYgcXVldWUgaXMgYnVzeSAqLwo+IC0JdnEgPSB2NGwyX20ybV9nZXRfdnEo
Y3R4LT5maC5tMm1fY3R4LAo+IC0JCQkgICAgIFY0TDJfQlVGX1RZUEVfVklERU9fQ0FQVFVSRV9N
UExBTkUpOwo+IC0JaWYgKHZiMl9pc19idXN5KHZxKSkKPiArCWlmIChya3ZkZWNfcXVldWVfYnVz
eShjdHgsIFY0TDJfQlVGX1RZUEVfVklERU9fQ0FQVFVSRV9NUExBTkUpICE9IDApCgppZiB5b3Ug
a2VlcCB0aGUgY3VycmVudCB2ZXJzaW9uIHlvdSBjYW4gZHJvcCB0aGUgIiE9IDAiCgpSZWdhcmRz
LAoKQW5kcnplagoKPiAgIAkJcmV0dXJuIC1FQlVTWTsKPiAgIAo+ICAgCXJldCA9IHJrdmRlY190
cnlfY2FwdHVyZV9mbXQoZmlsZSwgcHJpdiwgZik7Cj4gQEAgLTMzNSw3ICszNDMsNyBAQCBzdGF0
aWMgaW50IHJrdmRlY19zX291dHB1dF9mbXQoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYs
Cj4gICAJc3RydWN0IHY0bDJfbTJtX2N0eCAqbTJtX2N0eCA9IGN0eC0+ZmgubTJtX2N0eDsKPiAg
IAljb25zdCBzdHJ1Y3Qgcmt2ZGVjX2NvZGVkX2ZtdF9kZXNjICpkZXNjOwo+ICAgCXN0cnVjdCB2
NGwyX2Zvcm1hdCAqY2FwX2ZtdDsKPiAtCXN0cnVjdCB2YjJfcXVldWUgKnBlZXJfdnEsICp2cTsK
PiArCXN0cnVjdCB2YjJfcXVldWUgKnZxOwo+ICAgCWludCByZXQ7Cj4gICAKPiAgIAkvKgo+IEBA
IC0zNTQsOCArMzYyLDcgQEAgc3RhdGljIGludCBya3ZkZWNfc19vdXRwdXRfZm10KHN0cnVjdCBm
aWxlICpmaWxlLCB2b2lkICpwcml2LAo+ICAgCSAqIHF1ZXVlLCB3ZSBjYW4ndCBhbGxvdyBkb2lu
ZyBzbyB3aGVuIHRoZSBDQVBUVVJFIHF1ZXVlIGhhcyBidWZmZXJzCj4gICAJICogYWxsb2NhdGVk
Lgo+ICAgCSAqLwo+IC0JcGVlcl92cSA9IHY0bDJfbTJtX2dldF92cShtMm1fY3R4LCBWNEwyX0JV
Rl9UWVBFX1ZJREVPX0NBUFRVUkVfTVBMQU5FKTsKPiAtCWlmICh2YjJfaXNfYnVzeShwZWVyX3Zx
KSkKPiArCWlmIChya3ZkZWNfcXVldWVfYnVzeShjdHgsIFY0TDJfQlVGX1RZUEVfVklERU9fQ0FQ
VFVSRV9NUExBTkUpICE9IDApCj4gICAJCXJldHVybiAtRUJVU1k7Cj4gICAKPiAgIAlyZXQgPSBy
a3ZkZWNfdHJ5X291dHB1dF9mbXQoZmlsZSwgcHJpdiwgZik7Cj4gCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
