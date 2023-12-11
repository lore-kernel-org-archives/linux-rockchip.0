Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72E88C10F09
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 07:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9ccpA0w30dpHu5Cxv+U3Gl2EPg2Qb0l6FVVhoN2AD4=; b=Q5F/I9TgNozp3y
	ELOrRIkmM1qAlfbqS55K90CPCyaBPcd9Bl1amFgjP68tCw2rwmhlZlab2I8eBlZqnz9jMRP+lPdni
	sj+e0aeNNfwIs69p3YII0cuLQoS44MCxrGPb1iH0SYt8ADQeYTlm4n+b7lYV+JE6Vm6GWv7UIUArj
	+iI08CABpIl5vlAl4/sOIJ89xamcNEJOXlaRX/r+TJTMCB189H7VOll2IDJQ24aoyJREHe0CCZ56J
	PO0aT1yWneGKovIUJPQX9GOOotxLsFXu2vXHn4VyIgIvtyY7c5LkV2m4zeZiNXoDNYYS1FCVYIFM0
	6lSPQghmrI+vn+dmqYcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCb0X-004HGi-2z;
	Mon, 11 Dec 2023 07:47:18 +0000
Received: from m1345.mail.163.com ([220.181.13.45])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCb0U-004HFo-0d;
	Mon, 11 Dec 2023 07:47:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=F710GYP3xcaP9Ooa21AJAPHW7LUypG6HJK1DH4SqTXc=; b=n
	HlbUYs94fB8925jo6868GF+bJgyUUJwrzJqhu5irYKpiKGARmmU/8jZ/deyOpi9V
	z1sE+ZQ34FrthgiZaympxRrXJI1mBzwImeOMqrQLlqudu4ZL559iqvEBuvCSJVhc
	Ohe9oA7veD1bvzR+USrcOz3jbebfOzEeVyV444N08k=
Received: from andyshrk$163.com ( [58.22.7.114] ) by ajax-webmail-wmsvr45
 (Coremail) ; Mon, 11 Dec 2023 15:46:55 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Mon, 11 Dec 2023 15:46:55 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
Cc: heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re:Re: [PATCH v2 4/5] dt-bindings: arm: rockchip: Add Cool Pi CM5
 EVB
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2023 www.mailtech.cn 163com
In-Reply-To: <6eb1541b-430b-41cf-b297-ebb3d47f5278@linaro.org>
References: <20231210080313.1667013-1-andyshrk@163.com>
 <20231210080607.1667517-1-andyshrk@163.com>
 <6eb1541b-430b-41cf-b297-ebb3d47f5278@linaro.org>
X-NTES-SC: AL_Qu2bAP6Tv0Aq4yCaY+kXn0kXhec2W8Czvvgg34JRP5k0hynnwAEvc0JFOEPk/d2MNhKrjSWXaid/wONHUYtdeq1hQceGWYjhrD5rcc09IULP
MIME-Version: 1.0
Message-ID: <6d8b8a8b.3c0e.18c57d7e1b4.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: LcGowAD3vzRvvnZlsHMsAA--.7025W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEBRDXmVOA4l+CAABsP
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231210_234714_743119_CDFE3D28 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkhpIEtyenlzenRvZu+8mgoKQXQgMjAyMy0xMi0xMCAxOToxMTozMywgIktyenlzenRvZiBLb3ps
b3dza2kiIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+T24gMTAvMTIv
MjAyMyAwOTowNiwgQW5keSBZYW4gd3JvdGU6Cj4+IEFkZCBDb29sIFBpIENNNSBFVkIsIGEgYm9h
cmQgcG93ZXJlZCBieSBSSzM1ODgKPj4gCj4+IFNpZ25lZC1vZmYtYnk6IEFuZHkgWWFuIDxhbmR5
c2hya0AxNjMuY29tPgo+PiAKPj4gLS0tCj4+IAo+PiBDaGFuZ2VzIGluIHYyOgo+PiAtIGNoYW5n
ZSBib2FyZCBjb21wYXRpYmxlIGZyb20gIkNvb2xQaSBDTTUgRVZCIiB0byAiY29vbHBpLHBpLWNt
NS1ldmIiCj4+IAo+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2Nr
Y2hpcC55YW1sIHwgNSArKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+
PiAKPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
cm9ja2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9j
a2NoaXAueWFtbAo+PiBpbmRleCAxMWQwMzAzNWYzZGIuLjRkYTgzYmJkNjQyYSAxMDA2NDQKPj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1s
Cj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAu
eWFtbAo+PiBAQCAtOTUsNiArOTUsMTEgQEAgcHJvcGVydGllczoKPj4gICAgICAgICAgICAtIGNv
bnN0OiBjaGlwc3BhcmsscmF5ZWFnZXItcHgyCj4+ICAgICAgICAgICAgLSBjb25zdDogcm9ja2No
aXAscmszMDY2YQo+PiAgCj4+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBDb29sIFBpIENvbXB1dGUg
TW9kdWxlIDUoQ001KSBFVkIKPj4gKyAgICAgICAgaXRlbXM6Cj4+ICsgICAgICAgICAgLSBjb25z
dDogY29vbHBpLHBpLWNtNS1ldmIKPgo+SWYgaXQgaXMgbW9kdWxlIHlvdSBhcmUgbWF5YmUgbWlz
c2luZyBoZXJlIG1vZHVsZSBEVFNJIGFuZCBjb21wYXRpYmxlLgo+CgpZZXPvvIwgaXQgaXMgYSBj
b3JlIGJvYXJk77yIQ00177yJICsgbW90aGVyIGJvYXJkID0gQ001IEVWQu+8jHRoaXMgaXMKdGhl
ICB2YXJpYW50IEkgY3VycmVudCBoYXZl77yMIEkgd2FudCB0byBrZWVwIHRoZSBkdHMgYXMgaXQg
aXMgbm9377yMSSB3aWxsCmNvbnZlcnQgaXQgdG8gYSBkdHNpIHdoZW4gSSBnZXQgYW5vdGhlciB2
YXJpYW50IGZvciB0aGlzIGNvcmUgYm9hcmTvvIhDTTXvvIkuCgo+QWNrZWQtYnk6IEtyenlzenRv
ZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KPgo+QmVzdCByZWdh
cmRzLAo+S3J6eXN6dG9mCj4KPgo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj5saW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
