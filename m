Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A928C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 11:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuoAk3TmjJhymk3Tz2l5gWPzCLZ+G+F8UtdEpKuWx9U=; b=XI+dAlMjGor84K
	CIbEI147FRJcys4KKrL347InPYK75VvoAjjdlMuhSWN/ccAf1dO/E2j5zyu2cH5m/C4ADuNTqmAsK
	OpyJqi8NA147dyKI1vOIfZG/xoJsTCon0iiyjcGdHa/jjKRE1jh1A5chjfgTp+W3P/J3qYXcRR7+L
	LvIDuJIWVLdSxAge72v3YheYgnyXlmR6BXxHlq/VtQ1ymO+mzlnEuWifNHCDBCajm2YIzCOJxlHqV
	RhaTlw3ZwuYcBGTW6aD9wDIAcm2AbMOKtIWTT8uxI3zikQnGZPVVlEjE7z5MDIQwo+vnBDURIPXrN
	Kjtv302IQ7pVUTqsdYRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r13JZ-0065Eo-0m;
	Thu, 09 Nov 2023 11:35:13 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r13JV-0065DE-06;
	Thu, 09 Nov 2023 11:35:10 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3D3ED6607421;
	Thu,  9 Nov 2023 11:35:06 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699529707;
	bh=wGG+JYaee46Jc94cdQPHhrwgWxti1g7uR47NXJMRWPs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=c2HZJPMU+RJlp9bGpU/z/4TDFlnLjBdWVnSHnQ/RzeERzo16ueDJWzTkwclEBsg2Z
	 dZt+YphS4hO6SgU5kizdOR+bIwXd7QQCM+IMcGQoAiiethCYZLoPylhihnExZZTk+t
	 xJ50alw3c6iuzotTobkKzmTDDP3DpyBIJT8MqExsmR05XAuI0i2L4Um0xp7d3TV6vc
	 xIGstsv0FC1BdjoOJ7m0U1McFFjQIwP/lmhfql6m3K+DYz5SCR573p3QCxCkTMNoxq
	 H42aquTBINLz3ywE7l3Ku5vFm9UGQ2StHfIncCHYn2z3BytaEu5zyUrcBTSC5z3SXx
	 HjSAMjR7Y6BSg==
Message-ID: <43985ffc-ca34-4051-8ae3-1d52c0337918@collabora.com>
Date: Thu, 9 Nov 2023 12:35:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 40/56] media: usb: cx231xx: Stop direct calls to queue
 num_buffers field
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-41-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-41-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_033509_194987_7AD22CEE 
X-CRM114-Status: GOOD (  15.11  )
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

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IFVz
ZSB2YjJfZ2V0X251bV9idWZmZXJzKCkgdG8gYXZvaWQgdXNpbmcgcXVldWUgbnVtX2J1ZmZlcnMg
ZmllbGQgZGlyZWN0bHkuCj4gVGhpcyBhbGxvd3MgdXMgdG8gY2hhbmdlIGhvdyB0aGUgbnVtYmVy
IG9mIGJ1ZmZlcnMgaXMgY29tcHV0ZWQgaW4gdGhlCj4gZnV0dXJlLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoK
UmV2aWV3ZWQtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5j
b20+Cgo+IC0tLQo+ICAgZHJpdmVycy9tZWRpYS91c2IvY3gyMzF4eC9jeDIzMXh4LTQxNy5jICAg
fCA1ICsrKy0tCj4gICBkcml2ZXJzL21lZGlhL3VzYi9jeDIzMXh4L2N4MjMxeHgtdmlkZW8uYyB8
IDUgKysrLS0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3VzYi9jeDIzMXh4L2N4MjMxeHgt
NDE3LmMgYi9kcml2ZXJzL21lZGlhL3VzYi9jeDIzMXh4L2N4MjMxeHgtNDE3LmMKPiBpbmRleCBm
ZTQ0MTBhNWUxMjguLjQ1OTczZmU2OTBiMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3Vz
Yi9jeDIzMXh4L2N4MjMxeHgtNDE3LmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3VzYi9jeDIzMXh4
L2N4MjMxeHgtNDE3LmMKPiBAQCAtMTIxOCwxMiArMTIxOCwxMyBAQCBzdGF0aWMgaW50IHF1ZXVl
X3NldHVwKHN0cnVjdCB2YjJfcXVldWUgKnZxLAo+ICAgewo+ICAgCXN0cnVjdCBjeDIzMXh4ICpk
ZXYgPSB2YjJfZ2V0X2Rydl9wcml2KHZxKTsKPiAgIAl1bnNpZ25lZCBpbnQgc2l6ZSA9IG1wZWds
aW5lc2l6ZSAqIG1wZWdsaW5lczsKPiArCXVuc2lnbmVkIGludCBxX251bV9idWZzID0gdmIyX2dl
dF9udW1fYnVmZmVycyh2cSk7Cj4gICAKPiAgIAlkZXYtPnRzMS50c19wYWNrZXRfc2l6ZSAgPSBt
cGVnbGluZXNpemU7Cj4gICAJZGV2LT50czEudHNfcGFja2V0X2NvdW50ID0gbXBlZ2xpbmVzOwo+
ICAgCj4gLQlpZiAodnEtPm51bV9idWZmZXJzICsgKm5idWZmZXJzIDwgQ1gyMzFYWF9NSU5fQlVG
KQo+IC0JCSpuYnVmZmVycyA9IENYMjMxWFhfTUlOX0JVRiAtIHZxLT5udW1fYnVmZmVyczsKPiAr
CWlmIChxX251bV9idWZzICsgKm5idWZmZXJzIDwgQ1gyMzFYWF9NSU5fQlVGKQo+ICsJCSpuYnVm
ZmVycyA9IENYMjMxWFhfTUlOX0JVRiAtIHFfbnVtX2J1ZnM7Cj4gICAKPiAgIAlpZiAoKm5wbGFu
ZXMpCj4gICAJCXJldHVybiBzaXplc1swXSA8IHNpemUgPyAtRUlOVkFMIDogMDsKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZWRpYS91c2IvY3gyMzF4eC9jeDIzMXh4LXZpZGVvLmMgYi9kcml2ZXJz
L21lZGlhL3VzYi9jeDIzMXh4L2N4MjMxeHgtdmlkZW8uYwo+IGluZGV4IGUyM2I4Y2NkNzlkNC4u
YzhlYjQyMjIzMTlkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvdXNiL2N4MjMxeHgvY3gy
MzF4eC12aWRlby5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS91c2IvY3gyMzF4eC9jeDIzMXh4LXZp
ZGVvLmMKPiBAQCAtNzE0LDExICs3MTQsMTIgQEAgc3RhdGljIGludCBxdWV1ZV9zZXR1cChzdHJ1
Y3QgdmIyX3F1ZXVlICp2cSwKPiAgIAkJICAgICAgIHVuc2lnbmVkIGludCBzaXplc1tdLCBzdHJ1
Y3QgZGV2aWNlICphbGxvY19kZXZzW10pCj4gICB7Cj4gICAJc3RydWN0IGN4MjMxeHggKmRldiA9
IHZiMl9nZXRfZHJ2X3ByaXYodnEpOwo+ICsJdW5zaWduZWQgaW50IHFfbnVtX2J1ZnMgPSB2YjJf
Z2V0X251bV9idWZmZXJzKHZxKTsKPiAgIAo+ICAgCWRldi0+c2l6ZSA9IChkZXYtPndpZHRoICog
ZGV2LT5oZWlnaHQgKiBkZXYtPmZvcm1hdC0+ZGVwdGggKyA3KSA+PiAzOwo+ICAgCj4gLQlpZiAo
dnEtPm51bV9idWZmZXJzICsgKm5idWZmZXJzIDwgQ1gyMzFYWF9NSU5fQlVGKQo+IC0JCSpuYnVm
ZmVycyA9IENYMjMxWFhfTUlOX0JVRiAtIHZxLT5udW1fYnVmZmVyczsKPiArCWlmIChxX251bV9i
dWZzICsgKm5idWZmZXJzIDwgQ1gyMzFYWF9NSU5fQlVGKQo+ICsJCSpuYnVmZmVycyA9IENYMjMx
WFhfTUlOX0JVRiAtIHFfbnVtX2J1ZnM7Cj4gICAKPiAgIAlpZiAoKm5wbGFuZXMpCj4gICAJCXJl
dHVybiBzaXplc1swXSA8IGRldi0+c2l6ZSA/IC1FSU5WQUwgOiAwOwoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
