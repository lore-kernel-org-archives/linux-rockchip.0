Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 404B7C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 18:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3nMeMtg3wJBz6hXo5G2PXtn2hO0fCYIFYhpzO0fPS0=; b=CD2BZWkAwUARoV
	tDWbl2X5jzmeaL2HbAPixSipLL7yhjPcklSXwTvaS4lqHgRryLb6c1kcucRrpFxWTV4ckyz1X0esW
	sZ44ybvjz2Sa+RA0jRxUnfwTaxzoucLaVjtTQZCk/8Ck0L0zsQY+UeCqt+Ptwt19Fn0XMLjZV/FIH
	c2uKlF9jFaR+CYZGC2kCE5incuYWuf1Ocf8T0QMIo5Ew9o7mU5edhxxFtZtXQaGIskABeFMGsEQbh
	53oj7iZMZP0GiPlwJ/uhTxfNfD1uamitzFZ31hwga65RJUgzfaE8JNYU+2fCptORkHEJrSinmJbSG
	uMMFkOVnR4+coQ11FKlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Kz7-00HZTX-CM; Mon, 19 Dec 2022 18:35:33 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7JFo-00GG3n-KS; Mon, 19 Dec 2022 16:44:45 +0000
Received: from [IPV6:2a01:e0a:120:3210:f69c:5603:d4ce:7aa2] (unknown [IPv6:2a01:e0a:120:3210:f69c:5603:d4ce:7aa2])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9A2EA660037C;
	Mon, 19 Dec 2022 16:44:38 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671468279;
	bh=E0r3d2ox1oE9eTKDNfe4pYrofvO/8Q+8UC+WxtJKOUE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DuGMS5QH7ZJSZPLa55sJEBRHIeiLRJgrJoH29Aij2zShuTiq5+P/mBsQnx/GroFKV
	 gLqu+BpsXOSxrA1cFhHdsoedC9oxlxFaK+mU4seAXg5R7KrOs6FRkVmt88/DNPdzST
	 u/nmCae7I3YT8cKE7S6s+hkubloGxnFlzviMHjYu5SUXvt9lRTUcLAXRRP9mvrH9a3
	 TglSlRJ8o5EsfZ1EKOBJJ3L+KV2+o/WJX0tloCDcdS0MPuQXmhEQ0kNfRb8/wd5/n1
	 c16c3FN/sBIG2rd3qXimaIyZJOvSNr0lWrwkJd9Jcu1TDsQDNBfsg2HA1ClCEZVwvt
	 zXSKiWS29wDEQ==
Message-ID: <ec38d798-1b7b-2fc2-5be8-30ef28330760@collabora.com>
Date: Mon, 19 Dec 2022 17:44:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v1 1/9] dt-bindings: media: rockchip-vpu: Add rk3588 vpu
 compatible
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
 <20221219155616.848690-2-benjamin.gaignard@collabora.com>
 <15146b26-438b-698a-9e17-cb4ef2318420@linaro.org>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <15146b26-438b-698a-9e17-cb4ef2318420@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_084443_519217_02F8CC78 
X-CRM114-Status: GOOD (  10.59  )
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

CkxlIDE5LzEyLzIwMjIgw6AgMTc6MDYsIEtyenlzenRvZiBLb3psb3dza2kgYSDDqWNyaXTCoDoK
PiBPbiAxOS8xMi8yMDIyIDE2OjU2LCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4gQWRkIGNv
bXBhdGlibGUgZm9yIHJrMzU4OCBBVjEgdnB1IGRlY29kZXIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+PiAt
LS0KPj4gICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAt
dnB1LnlhbWwgfCAxICsKPj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPj4KPj4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2Nr
Y2hpcC12cHUueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9y
b2NrY2hpcC12cHUueWFtbAo+PiBpbmRleCA2Y2M0ZDNlNWE2MWQuLjg0NTRkZjUzZjVjYiAxMDA2
NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tj
aGlwLXZwdS55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9t
ZWRpYS9yb2NrY2hpcC12cHUueWFtbAo+PiBAQCAtMjQsNiArMjQsNyBAQCBwcm9wZXJ0aWVzOgo+
PiAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzM5OS12cHUKPj4gICAgICAgICAgICAgLSByb2Nr
Y2hpcCxweDMwLXZwdQo+PiAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU2OC12cHUKPj4gKyAg
ICAgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1hdjEtdnB1Cj4gV2h5ICJhdjEiIHN1ZmZpeD8gSXMg
dGhlcmUgYW5vdGhlciB0eXBlIChkaWZmZXJlbnQgZGV2aWNlLCBkaWZmZXJlbnQKPiBwcm9ncmFt
bWluZyBtb2RlbCkgZXhwZWN0ZWQgb24gcmszNTg4PwoKWWVzIHRoZXJlIGlzIDQgZGlmZmVyZW50
IHZwdSBvbiByazM1ODguClRoaXMgb25lIG9ubHkgZG9lcyBhdjEuCgo+Cj4gQmVzdCByZWdhcmRz
LAo+IEtyenlzenRvZgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
