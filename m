Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DB08C001E0
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Aug 2023 06:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zHaA8OYbDRHSKCvh2rPEeXBDDmZdp7G+/S8uqEyN+/M=; b=v/A44rN3WWC3t0HmEhgi7pQ1AD
	W2xIV4faQ3UMNCHrHHSRsoGmAvhdUet+6hNbIDFJ2PvbSW4Qv/yJZGMke1BiHVNa7adECss3RqF2l
	ryscQXIVP/Ott8c050Ho9X2noH/rpuCoUkBhyOnby0w2PeMx/ON4blDr2qFaxUvaQ4OFX3HqZ+9Vh
	DKXUDtijclwN28tDllHNc4A/l3GMGkfqxstmE2w5DUeqRih094kmKxR6IGhMglC2T+Km5HyT9g6kr
	oCsTMIAQeLRoG++pv5gNOnsJoqYgk5C701rm9jn4H6FwaiBNllx9vLsKXnCHvF+CHqCgnA181DRNQ
	I4td1N8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRRyg-006mvQ-2a;
	Thu, 03 Aug 2023 06:38:30 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRRye-006muP-1I
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Aug 2023 06:38:29 +0000
Received: from [192.168.15.130] (94-240-0-14.lukman.pl [94.240.0.14])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1254D66015A0;
	Thu,  3 Aug 2023 07:38:24 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1691044704;
	bh=/MPzKN5AQ/eMWkd2ptH99C/hRYbXpVXz5gDxbinjD+Q=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=P5WbcTEopTLGAMFxcEs6ZzStPiVD5pOsn8Y6FopBKgg43XGno/iOyn1/MxrjXM6Sh
	 +uneTP/pqNMXyVLhDABceDIw4yi85S3t5tjz/6YMu93/bQ/44pKmDqBjVCsUw3TQUy
	 84r+ZXKiai7wQaEnzlbzRc34pSSB3wW2xeCSPAYOd+W/1COyYtdn4TtTcTCCL7EVaj
	 8dNFfL58yMIdr2u7pLp9rPAicuVwe4BLkD9tKxai4EPwRdrInrK6LS+/Iy8b9jA+xW
	 DmAfU9KlnqIVfT37W/13sNWodSsEgeEtyeO+BE40C8W6/L3aMED7hSsbrHK+KaUbuR
	 WNNfWKEpMTHXw==
Message-ID: <0d467e99-8133-861e-c221-e0397a0c5535@collabora.com>
Date: Thu, 3 Aug 2023 08:38:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH -next 2/2] media: verisilicon: Do not check for 0 return
 after calling platform_get_irq()
To: Ruan Jinjie <ruanjinjie@huawei.com>, sylvester.nawrocki@gmail.com,
 mchehab@kernel.org, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 linux-media@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20230803024645.2716057-1-ruanjinjie@huawei.com>
 <20230803024645.2716057-3-ruanjinjie@huawei.com>
Content-Language: en-US
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20230803024645.2716057-3-ruanjinjie@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_233828_632656_AE0A40DA 
X-CRM114-Status: GOOD (  15.23  )
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

VyBkbml1IDMuMDguMjAyMyBvwqAwNDo0NiwgUnVhbiBKaW5qaWUgcGlzemU6Cj4gSXQgaXMgbm90
IHBvc3NpYmxlIGZvciBwbGF0Zm9ybV9nZXRfaXJxKCkgb3IgcGxhdGZvcm1fZ2V0X2lycV9ieW5h
bWUoKQo+IHRvIHJldHVybiAwLiBVc2UgdGhlIHJldHVybiB2YWx1ZSBmcm9tIHBsYXRmb3JtX2dl
dF9pcnEoKQo+IG9yIHBsYXRmb3JtX2dldF9pcnFfYnluYW1lKCkuCj4gCj4gU2lnbmVkLW9mZi1i
eTogUnVhbiBKaW5qaWUgPHJ1YW5qaW5qaWVAaHVhd2VpLmNvbT4KClJldmlld2VkLWJ5OiBBbmRy
emVqIFBpZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgoKPiAtLS0KPiAgIGRy
aXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jIHwgNCArKy0tCj4g
ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYu
YyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4gaW5k
ZXggMzVjYTcxYjE5ZGVmLi40MjNmYzg1ZDc5ZWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKPiArKysgYi9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+IEBAIC0xMDg1LDggKzEwODUsOCBA
QCBzdGF0aWMgaW50IGhhbnRyb19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ICAgCQkJaXJxX25hbWUgPSAiZGVmYXVsdCI7Cj4gICAJCQlpcnEgPSBwbGF0Zm9ybV9nZXRfaXJx
KHZwdS0+cGRldiwgMCk7Cj4gICAJCX0KPiAtCQlpZiAoaXJxIDw9IDApCj4gLQkJCXJldHVybiAt
RU5YSU87Cj4gKwkJaWYgKGlycSA8IDApCj4gKwkJCXJldHVybiBpcnE7Cj4gICAKPiAgIAkJcmV0
ID0gZGV2bV9yZXF1ZXN0X2lycSh2cHUtPmRldiwgaXJxLAo+ICAgCQkJCSAgICAgICB2cHUtPnZh
cmlhbnQtPmlycXNbaV0uaGFuZGxlciwgMCwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
