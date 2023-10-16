Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DC02CDB465
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 14:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Hz3IzusHpXF/iN3wor9fBCrEzDVSHXBebxbBNn+9Xs=; b=bRu4/nbg94BaKa
	egMuUkjTwN+hiNU70UUuMHVkYrEBG/6G8vR2VkN3pXmho2d7YM23O5KEjbfFx2eWw/7diOWdD4KcH
	9gJS//Wo5PqLhSjl6a4MCwRIHdowYY+MZ/xMqgmFn1w21ZEzF54k8Ix+qwPUlgxni7dHmgz0kXPZg
	WEm9ArNPcprSvQuVgADsM7dGsi6UgKHb3+lwsCNle9mRknSA5fMpNGp5HGshkMsPRK49vOCtez6oN
	qnu+p5Xhc8urCX0bVBq9u6VT8+DT/iD5Oafmz8CVE7l2p926TDkmkOAVju2rg9I9RDJ6U3m3yTrNv
	4zNLlkBLdGuvuZpk4rsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsOSr-009r3O-0Z;
	Mon, 16 Oct 2023 14:21:01 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsOSn-009r1b-2f;
	Mon, 16 Oct 2023 14:20:59 +0000
Received: from [IPV6:2a01:e0a:120:3210:e07f:e79d:cb73:481b] (unknown [IPv6:2a01:e0a:120:3210:e07f:e79d:cb73:481b])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7B8AB66071C7;
	Mon, 16 Oct 2023 15:20:53 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697466053;
	bh=c/L8dFl388l4YQCDz27EHWC74G2f0t+CGWGDGeHXxIA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TAuSs6sYKBn1pNWDBY8a/rjZSeEKDhnhW0jJDLB5hhIl4bEgokQoe/H7qHSkEuHnZ
	 d11Ftw1Icbpqx3LmTZTNS73YUWg3Ut4+nZz0laSrd/sfMHp8qRtRXBXax8TxNnnX8D
	 s0fvJ40lAvvX9ub9o70tTXBmnQdrOkaamT5vyScngNztRGde7fWfO1X5aGMEWc9ezA
	 JX8WWyQ0yXffPc8mhrO8+XDrruoNVMw6MUn7Ms13ZfVnj99mPu+1U7bxBhezz5vn96
	 vd7ucQAnxX17sG4Jzkxe1TAr6T66A4JUEtf3Pz5oVG83gpWUgWvVkJAL5IYUz0W0Vt
	 DLPOJJK9DhrAw==
Message-ID: <b689e7d2-ff87-499e-a165-d227b1865488@collabora.com>
Date: Mon, 16 Oct 2023 16:20:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 45/56] media: test-drivers: vivid: Increase max
 supported buffers for capture queues
Content-Language: en-US
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20231012114642.19040-1-benjamin.gaignard@collabora.com>
 <20231012114642.19040-46-benjamin.gaignard@collabora.com>
 <0ca82921-b71a-4d87-a1f1-6a6158f07c8c@xs4all.nl>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <0ca82921-b71a-4d87-a1f1-6a6158f07c8c@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_072058_080618_C173E0BF 
X-CRM114-Status: GOOD (  12.95  )
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

CkxlIDE2LzEwLzIwMjMgw6AgMTI6MzIsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDEy
LzEwLzIwMjMgMTM6NDYsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiBDaGFuZ2UgdGhlIG1h
eGltdW0gbnVtYmVyIG9mIGJ1ZmZlcnMgb2Ygc29tZSBjYXB0dXJlIHF1ZXVlcyBpbiBvcmRlcgo+
PiB0byB0ZXN0IG1heF9udW1fYnVmZmVycyBmaWVsZC4KPj4KPj4gQWxsb3cgdG8gYWxsb2NhdGUg
dXAgdG86Cj4+IC0gNjQgYnVmZmVycyBmb3IgdmlkZW8gY2FwdHVyZSBxdWV1ZS4KPj4gLSAxMDI0
IGJ1ZmZlcnMgZm9yIHNkciBjYXB0dXJlIHF1ZXVlLgo+PiAtIDMyNzY4IGJ1ZmZlcnMgZm9yIHZi
aSBjYXB0dXJlIHF1ZXVlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8
YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9tZWRp
YS90ZXN0LWRyaXZlcnMvdml2aWQvdml2aWQtY29yZS5jIHwgNyArKysrKysrCj4+ICAgMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRp
YS90ZXN0LWRyaXZlcnMvdml2aWQvdml2aWQtY29yZS5jIGIvZHJpdmVycy9tZWRpYS90ZXN0LWRy
aXZlcnMvdml2aWQvdml2aWQtY29yZS5jCj4+IGluZGV4IDM5NGM5ZjgxZWE3Mi4uYjU2NTYzMzA1
NzhkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3Rlc3QtZHJpdmVycy92aXZpZC92aXZp
ZC1jb3JlLmMKPj4gKysrIGIvZHJpdmVycy9tZWRpYS90ZXN0LWRyaXZlcnMvdml2aWQvdml2aWQt
Y29yZS5jCj4+IEBAIC04NzYsNiArODc2LDEzIEBAIHN0YXRpYyBpbnQgdml2aWRfY3JlYXRlX3F1
ZXVlKHN0cnVjdCB2aXZpZF9kZXYgKmRldiwKPj4gICAJcS0+dHlwZSA9IGJ1Zl90eXBlOwo+PiAg
IAlxLT5pb19tb2RlcyA9IFZCMl9NTUFQIHwgVkIyX0RNQUJVRjsKPj4gICAJcS0+aW9fbW9kZXMg
fD0gVjRMMl9UWVBFX0lTX09VVFBVVChidWZfdHlwZSkgPyAgVkIyX1dSSVRFIDogVkIyX1JFQUQ7
Cj4+ICsJaWYgKGJ1Zl90eXBlID09IFY0TDJfQlVGX1RZUEVfVklERU9fQ0FQVFVSRSkKPj4gKwkJ
cS0+bWF4X251bV9idWZmZXJzID0gNjQ7Cj4+ICsJaWYgKGJ1Zl90eXBlID09IFY0TDJfQlVGX1RZ
UEVfU0RSX0NBUFRVUkUpCj4+ICsJCXEtPm1heF9udW1fYnVmZmVycyA9IDEwMjQ7Cj4+ICsJaWYg
KGJ1Zl90eXBlID09IFY0TDJfQlVGX1RZUEVfVkJJX0NBUFRVUkUpCj4+ICsJCXEtPm1heF9udW1f
YnVmZmVycyA9IDMyNzY4Owo+IFRoaXMgc2hvdWxkIHVzZSB0aGUgc2FtZSBjYWxjdWxhdGlvbiBh
cyBNQVhfQlVGRkVSX0lOREVYLgo+Cj4gSSB3b25kZXIgaWYgdGhvc2UgZGVmaW5lcyBzaG91bGQg
bW92ZSB0byB2aWRlb2J1ZjItY29yZS5oIGluc3RlYWQuCgpJJ20gbm90IHN1cmUgYWJvdXQgd2hh
dCB5b3Ugd2FudCBoZXJlLCBxLT5tYXhfbnVtX2J1ZmZlcnMgaXMgY2xhbXBlZCBpbiB2YjJfY29y
ZV9xdWV1ZV9pbml0KCk6CgovKiBUaGUgbWF4aW11bSBpcyBsaW1pdGVkIGJ5IG9mZnNldCBjb29r
aWUgZW5jb2RpbmcgcGF0dGVybiAqLwpxLT5tYXhfbnVtX2J1ZmZlcnMgPSBtaW5fdCh1bnNpZ25l
ZCBpbnQsIHEtPm1heF9udW1fYnVmZmVycywgTUFYX0JVRkZFUl9JTkRFWCk7CgpEbyB5b3Ugd2Fu
dCB0byByZXVzZSBNQVhfQlVGRkVSX0lOREVYIGZvciB0aGVzZSBkcml2ZXJzID8KClJlZ2FyZHMs
CkJlbmphbWluCgo+Cj4gUmVnYXJkcywKPgo+IAlIYW5zCj4KPj4gKwo+PiAgIAlpZiAoYWxsb2Nh
dG9yc1tkZXYtPmluc3RdICE9IDEpCj4+ICAgCQlxLT5pb19tb2RlcyB8PSBWQjJfVVNFUlBUUjsK
Pj4gICAJcS0+ZHJ2X3ByaXYgPSBkZXY7Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
