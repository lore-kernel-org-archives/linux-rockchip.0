Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ED18C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 09:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPh7v1Z9/Gx3l4z7iDPRDFUzpdwzuQZ0tiZVzzA2RK0=; b=V7TP1nYYDwHSrr
	tPdBMHnbide13vWfkrNcKWhQcb/jZ2cP6eRZA0q/pPXVx8ycdRO1pFZYtDUZITNL2MGg3e2g1jsfo
	QWIPwBeiWZmJm3tG8jahaZMVko3J8gwrmLm0zosEig8UtHaMli1V22ykApxSY8afdjDaAFiehT4xM
	0uMB6OcnM72GgmOuuvOOT54mQPUkvCGZFU+xTNG5VOGwDnIvuliBlLyebM0LpndUxyFz9VHZvQr2N
	dwp6+ToquiQfRuEBBrpgpbWiJaFWY36y2+qkJgVKR7f5hQNkspmnpuxGZzINvsQoa26qLq8enJkFw
	sAOwB1/ePBrMytbk1NEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11Ec-005lTY-0m;
	Thu, 09 Nov 2023 09:21:58 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11EX-005lRV-2y;
	Thu, 09 Nov 2023 09:21:55 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 09BF76607410;
	Thu,  9 Nov 2023 09:21:50 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699521712;
	bh=f8JXp5DFigmWZNSo/1/xIIcN/xL2hsK0xHFmM9ZToL0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=GhASGxhw40oITC1953wmOIZmXueh8mIWI9sy6ITxawXx67Jiz7uuD3m3plQGR3GFS
	 +mKwqeGFgJrCX8RMLO919BPvowQy4hSLxkXaIm6936+JP9oyW2S5tlDXWw/L88jNQK
	 g9Te4OtfxIx5Tek0ycpNfoJkR4YE4pXWTanCUigOuyE09hKEgZ+s7w3efbXOwfwGGc
	 ZV0VsLNy2f7kP0z8DRpX07zRPjLug6VKyUkqCwmZInQe+H6wrdzkcbMaOhbsl549iF
	 eX4oZzV6YbVIt6HLkUf0+OcsfKSscbztj7pSjrVs3/D266AeoVEMLaGuvWab6LMxXh
	 FPFtvJ9TBQ5Tw==
Message-ID: <7972851a-9a78-426a-b864-4de8411cd15a@collabora.com>
Date: Thu, 9 Nov 2023 10:21:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 13/56] media: mediatek: vcodec: Stop direct calls to
 queue num_buffers field
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com,
 Bin Liu <bin.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-14-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-14-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_012154_086435_2315CCA3 
X-CRM114-Status: GOOD (  14.19  )
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
UmV2aWV3ZWQtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5yZHplai5wQGNvbGxhYm9yYS5j
b20+Cgo+IENDOiBCaW4gTGl1IDxiaW4ubGl1QG1lZGlhdGVrLmNvbT4KPiBDQzogTWF0dGhpYXMg
QnJ1Z2dlciA8bWF0dGhpYXMuYmdnQGdtYWlsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vbWVkaWF0ZWsvdmNvZGVjL2VuY29kZXIvbXRrX3Zjb2RlY19lbmMuYyB8IDIgKy0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL21lZGlhdGVrL3Zjb2RlYy9lbmNvZGVy
L210a192Y29kZWNfZW5jLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL21lZGlhdGVrL3Zjb2Rl
Yy9lbmNvZGVyL210a192Y29kZWNfZW5jLmMKPiBpbmRleCBlYjM4MWZhNmU3ZDEuLjE4MTg4NGU3
OThmZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL21lZGlhdGVrL3Zjb2Rl
Yy9lbmNvZGVyL210a192Y29kZWNfZW5jLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L21lZGlhdGVrL3Zjb2RlYy9lbmNvZGVyL210a192Y29kZWNfZW5jLmMKPiBAQCAtOTEyLDcgKzkx
Miw3IEBAIHN0YXRpYyBpbnQgdmIyb3BzX3ZlbmNfc3RhcnRfc3RyZWFtaW5nKHN0cnVjdCB2YjJf
cXVldWUgKnEsIHVuc2lnbmVkIGludCBjb3VudCkKPiAgIAlyZXR1cm4gMDsKPiAgIAo+ICAgZXJy
X3N0YXJ0X3N0cmVhbToKPiAtCWZvciAoaSA9IDA7IGkgPCBxLT5udW1fYnVmZmVyczsgKytpKSB7
Cj4gKwlmb3IgKGkgPSAwOyBpIDwgdmIyX2dldF9udW1fYnVmZmVycyhxKTsgKytpKSB7Cj4gICAJ
CXN0cnVjdCB2YjJfYnVmZmVyICpidWYgPSB2YjJfZ2V0X2J1ZmZlcihxLCBpKTsKPiAgIAo+ICAg
CQkvKgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
