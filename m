Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDAC606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 09:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xY4cBgz9;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=DQj9+7CG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dKV2pNA4mE51LMhiw6iGzCBvRb+aJx92Dc8IHdS5fAg=; b=xY4cBgz9LEv/r/WVNFWRj/ZJna
	5HLQNY5xhqr2eqzZ3hqO/98cG9IwPHT7dcKwRcR7sGhDTfO+YS7cjHXKszLKsB1TNql6zv+WZYz0X
	S98B+X0kkp21CbEoYIP75Us6Q9nJlQ0OxHHVtMeXA/JgUqTFMxf53tUymldvr1Rt6z9w7ixSBfKuM
	ZHdvJj99R9yatsrirgCF2MkYKkBqj6UEupo81nWHsMVs2xkq0MHJqw2S/XcCBBSba7DtV4TowePiK
	lU/wrThkuochS3H+zS8OUawYwz0OUKdKQL6x9vm7c6O28yAd9lx/XurjPDCVvd+4AKvVqzZ6B469x
	R+U8gHNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQMK-00000002idP-1qjl;
	Mon, 23 Nov 2026 09:29:12 +0000
Received: from sender6-op-o11.zoho.com ([165.173.180.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQLw-00000002icD-1u9s
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 09:29:10 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1795426122; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TgqzDKVEL05neW6G3OiXqN/NYFeY0JBuHTOpsKcaNHJ/7MlsUSMQ1snWnTLodHVpybgZhsii0ccE/eydlvwpzpWDn3TWDII7ON++Q24OnUhwgsqbahhN4Nuzp4//msYTulAZTgGdAllaqAzsxp9RIc2by3M4AGCTmjLCB6P3fV0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1795426122; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=53LL2D2w2EtJWe1+ddsR6vv92olybDI66APL3fli6Ak=; 
	b=Wn32+qDuW+Qgs2SnyxdeAWxG347VXmalFRCh6dyUQHASp1SbrJ/6Lvv7JUeF8JP0k85V6bQYye/qOczGtvIHhLg99uoDCdQOxGnG+rAS+Au0CXiWednfhkeSzLHvExC3WaUF7yba71/Mwjc7MnhWvq51skMYEHKdWayMSwrCFio=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: a=rsa-sha256; b=DQj9+7CGafMRyuGqodovNZbhyVhriEePnrEDodKxF/BU9L8aNqTKtKsJeOdLJSmTTLJbYQ6iivtbuXVV+HxZt4b8QmkMyONezmeoK0tM1jaxB5XDJRYvG2AjbMlZMkRvCtuw0JkRjf6E8T4C5Lgn9R25dUj5t9S0tSckMHjyyog=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=53LL2D2w2EtJWe1+ddsR6vv92olybDI66APL3fli6Ak=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1795426120017335.5726507575188;
	Mon, 23 Nov 2026 01:28:40 -0800 (PST)
Message-ID: <ad73cef4-0212-4749-8950-140dcfe4438c@collabora.com>
Date: Mon, 23 Nov 2026 10:28:34 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] media: verisilicon: Set need_postproc before
 resetting the CAPTURE format
To: aiyengar1990@gmail.com, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Hans Verkuil <hverkuil@kernel.org>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20261115-hantro-fixes-v2-0-bfecfb07a3e7@gmail.com>
 <20261115-hantro-fixes-v2-2-bfecfb07a3e7@gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20261115-hantro-fixes-v2-2-bfecfb07a3e7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_012858_187817_21A51AAF 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CkxlIDE1LzExLzIwMjYgw6AgMDk6MzksIEFydW4gSXllbmdhciB2aWEgQjQgUmVsYXkgYSDDqWNy
aXTCoDoKPiBGcm9tOiBBcnVuIEl5ZW5nYXIgPGFpeWVuZ2FyMTk5MEBnbWFpbC5jb20+Cj4KPiBo
YW50cm9fcmVzZXRfcmF3X2ZtdCgpIHNldHMgYml0X2RlcHRoIGFuZCBuZWVkX3Bvc3Rwcm9jIG9u
bHkgYWZ0ZXIKPiBoYW50cm9fc2V0X2ZtdF9jYXAoKSwgc28gaGFudHJvX3RyeV9mbXQoKSBzaXpl
cyB0aGUgZm9ybWF0IHdpdGggdGhlIG9sZAo+IHZhbHVlczogYWZ0ZXIgQVYxIGZpbG0gZ3JhaW4g
aXMgdHVybmVkIG9mZiwgdGhlIENBUFRVUkUgYnVmZmVycyBsYWNrIHRoZQo+IG1vdGlvbiB2ZWN0
b3IgYXJlYS4gU2V0IHRoZW0gZmlyc3QgYW5kIHJlc3RvcmUgdGhlbSBvbiBlcnJvci4KPgo+IEZp
eGVzOiA4MGM3MzczYTQ1NmUgKCJtZWRpYTogdmVyaXNpbGljb246IENvbmRpdGlvbmFsbHkgaWdu
b3JlIG5hdGl2ZSBmb3JtYXRzIikKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IFNpZ25l
ZC1vZmYtYnk6IEFydW4gSXllbmdhciA8YWl5ZW5nYXIxOTkwQGdtYWlsLmNvbT4KClJldmlld2Vk
LWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4K
Cj4gLS0tCj4gICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwy
LmMgfCAxMSArKysrKysrKy0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zl
cmlzaWxpY29uL2hhbnRyb192NGwyLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL2hhbnRyb192NGwyLmMKPiBpbmRleCA4M2FmOWZhMWNlOTQuLjU5MzlmZmZjMzUwZCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwy
LmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwy
LmMKPiBAQCAtNDQ5LDYgKzQ0OSw4IEBAIGhhbnRyb19yZXNldF9yYXdfZm10KHN0cnVjdCBoYW50
cm9fY3R4ICpjdHgsIGludCBiaXRfZGVwdGgsIGJvb2wgbmVlZF9wb3N0cHJvYykKPiAgIHsKPiAg
IAljb25zdCBzdHJ1Y3QgaGFudHJvX2ZtdCAqcmF3X3ZwdV9mbXQ7Cj4gICAJc3RydWN0IHY0bDJf
cGl4X2Zvcm1hdF9tcGxhbmUgcmF3X2ZtdCwgKmVuY29kZWRfZm10Owo+ICsJYm9vbCBvbGRfbmVl
ZF9wb3N0cHJvYyA9IGN0eC0+bmVlZF9wb3N0cHJvYzsKPiArCWludCBvbGRfYml0X2RlcHRoID0g
Y3R4LT5iaXRfZGVwdGg7Cj4gICAJaW50IHJldDsKPiAgIAo+ICAgCXJhd192cHVfZm10ID0gaGFu
dHJvX2dldF9kZWZhdWx0X2ZtdChjdHgsIGZhbHNlLCBiaXRfZGVwdGgsIG5lZWRfcG9zdHByb2Mp
Owo+IEBAIC00NjUsMTQgKzQ2NywxNyBAQCBoYW50cm9fcmVzZXRfcmF3X2ZtdChzdHJ1Y3QgaGFu
dHJvX2N0eCAqY3R4LCBpbnQgYml0X2RlcHRoLCBib29sIG5lZWRfcG9zdHByb2MpCj4gICAJaGFu
dHJvX3Jlc2V0X2ZtdCgmcmF3X2ZtdCwgcmF3X3ZwdV9mbXQpOwo+ICAgCXJhd19mbXQud2lkdGgg
PSBlbmNvZGVkX2ZtdC0+d2lkdGg7Cj4gICAJcmF3X2ZtdC5oZWlnaHQgPSBlbmNvZGVkX2ZtdC0+
aGVpZ2h0Owo+ICsKPiArCWN0eC0+Yml0X2RlcHRoID0gYml0X2RlcHRoOwo+ICsJY3R4LT5uZWVk
X3Bvc3Rwcm9jID0gbmVlZF9wb3N0cHJvYzsKPiAgIAlpZiAoY3R4LT5pc19lbmNvZGVyKQo+ICAg
CQlyZXQgPSBoYW50cm9fc2V0X2ZtdF9vdXQoY3R4LCAmcmF3X2ZtdCwgbmVlZF9wb3N0cHJvYyk7
Cj4gICAJZWxzZQo+ICAgCQlyZXQgPSBoYW50cm9fc2V0X2ZtdF9jYXAoY3R4LCAmcmF3X2ZtdCk7
Cj4gICAKPiAtCWlmICghcmV0KSB7Cj4gLQkJY3R4LT5iaXRfZGVwdGggPSBiaXRfZGVwdGg7Cj4g
LQkJY3R4LT5uZWVkX3Bvc3Rwcm9jID0gbmVlZF9wb3N0cHJvYzsKPiArCWlmIChyZXQpIHsKPiAr
CQljdHgtPmJpdF9kZXB0aCA9IG9sZF9iaXRfZGVwdGg7Cj4gKwkJY3R4LT5uZWVkX3Bvc3Rwcm9j
ID0gb2xkX25lZWRfcG9zdHByb2M7Cj4gICAJfQo+ICAgCj4gICAJcmV0dXJuIHJldDsKPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
