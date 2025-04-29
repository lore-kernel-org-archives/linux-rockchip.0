Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CC46C369D5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Apr 2025 02:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CNnYCECovVGC2QLo0M3WHlWcfG2uVzty991nkerMmoY=; b=MaQNtYP2+u71b64Rn0c1Ip0NMH
	UPlDqflkHFWQJOjWenCk9afCI9hVix8d20Jtx+om788/9VgUxPGNihBdapXWJ6v4K3tmt8+tecsiL
	EVCmnz9HpQg1EkVxSgne4rePJmq+qHQ3m76njBP3QPtvk8iyN4UXWGcgMNmQ9DW4hrSAejWqf5vEV
	jfPKvPSeLOREk18bNc2g0lMRl2wiX8gr3RYOoo62GUMqLGPd0uSYZF8J/bml1SlrhYwuKtjgTVTiw
	EgcZDW719RV7rcm2JRq15G+Nz/cn9LCrUvkM2PVTEB43t3qzNX+bTZFj4TxrBb9PGbtkwOj+V2mQZ
	dtyPoMGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9awJ-000000087Ov-0aFG;
	Tue, 29 Apr 2025 02:43:19 +0000
Received: from mail-m49205.qiye.163.com ([45.254.49.205])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9awG-000000087OG-1Yv1;
	Tue, 29 Apr 2025 02:43:18 +0000
Received: from [127.0.0.1] (gy-adaptive-ssl-proxy-1-entmail-virt204.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 137882886;
	Tue, 29 Apr 2025 10:42:59 +0800 (GMT+08:00)
Message-ID: <027de192-4227-4010-a759-5283b6af1531@rock-chips.com>
Date: Tue, 29 Apr 2025 10:42:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add rk3399-evb-ind board
To: Andrew Lunn <andrew@lunn.ch>
References: <20250427094211.246-1-kernel@airkyi.com>
 <20250427094211.246-3-kernel@airkyi.com>
 <6291f6b8-75d3-4243-9935-9b64450e2b7f@lunn.ch>
 <c583c59a-d5b7-4e20-9a1f-96f51bd7b4f3@rock-chips.com>
 <15ee1a6b-55ba-41e9-b8a0-6e0bf62cabf0@lunn.ch>
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <15ee1a6b-55ba-41e9-b8a0-6e0bf62cabf0@lunn.ch>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkpKT1YaHh0ZH05OSEIYTB1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE
	5VSktLVUpCS0tZBg++
X-HM-Tid: 0a967f6d1f6303abkunm137882886
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MhA6Hww5QjJCHSkuOjw5LhUD
	C0lPCg9VSlVKTE9OQ0JPTkNMSEpPVTMWGhIXVRgTGhQCElUYEx4VOwkUGBBWGBMSCwhVGBQWRVlX
	WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBSElCSzcG
DKIM-Signature: a=rsa-sha256;
	b=EpGcqWX9zy7b4aOQJQl3I+h7mRCxOtfrxcfOyZWgCO5Xbg67xbaFmiQOrSj42HnlGh3mT2NSrLAHkxuGFUuURJhC9/XoiI1g47KLJ33keDr/FvfvjP0JhZUJzOwuhpVsunq+3DGBVLesmqCEjhgrA/sFnyq1HT1xtUBZjxkaPhQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=gkmGwA1JNJSi9vWgEDnuu8pe72dV9P14DRuR/dc+N4Y=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250428_194316_945850_2C3C02FB 
X-CRM114-Status: GOOD (  15.02  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chaoyi Chen <kernel@airkyi.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Jonas Karlman <jonas@kwiboo.se>, Jimmy Hon <honyuenkwun@gmail.com>, linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Quentin Schulz <quentin.schulz@cherry.de>, Alexey Charkov <alchark@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org, Jianfeng Liu <liujianfeng1994@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQW5kcmV3LAoKT24gMjAyNS80LzI4IDIwOjQ1LCBBbmRyZXcgTHVubiB3cm90ZToKPiBPbiBN
b24sIEFwciAyOCwgMjAyNSBhdCAwOTo0NzozNEFNICswODAwLCBDaGFveWkgQ2hlbiB3cm90ZToK
Pj4gSGkgQW5kcmV3LAo+Pgo+PiBPbiAyMDI1LzQvMjggNDo0MiwgQW5kcmV3IEx1bm4gd3JvdGU6
Cj4+Pj4gKyZnbWFjIHsKPj4+PiArCWFzc2lnbmVkLWNsb2NrcyA9IDwmY3J1IFNDTEtfUk1JSV9T
UkM+Owo+Pj4+ICsJYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwmY2xraW5fZ21hYz47Cj4+Pj4g
KwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+Pj4+ICsJcGluY3RybC0wID0gPCZyZ21paV9w
aW5zPjsKPj4+PiArCWNsb2NrX2luX291dCA9ICJpbnB1dCI7Cj4+Pj4gKwlwaHktc3VwcGx5ID0g
PCZ2Y2NfcGh5PjsKPj4+PiArCXBoeS1tb2RlID0gInJnbWlpIjsKPj4+IERvZXMgdGhlIFBDQiBo
YXZlIGV4dHJhIGxvbmcgY2xvY2sgbGluZXMgdG8gaW1wbGVtZW50IHRoZSBSR01JSSAybnMKPj4+
IGRlbGF5Pwo+PiBUaGUgMm5zIGRlbGF5IG9mIFJHTUlJIGlzIGltcGxlbWVudGVkIGluc2lkZSB0
aGUgUkszMzk5IGNoaXAgaW5zdGVhZCBvZiBQQ0IKPj4gbGluZXMsIGFuZCB0aGVyZSBhcmUgYWxz
byBhZGRpdGlvbmFsIGRlbGF5bGluZSBjb25maWd1cmF0aW9ucy4KPiBJZiB0aGUgUENCIGRvZXMg
bm90IGltcGxlbWVudCB0aGUgZGVsYXksIHJnbWlpIGlzIHdyb25nLgo+Cj4gSWYgdGhlIE1BQy9Q
SFkgcGFpciBpcyBpbXBsZW1lbnRpbmcgdGhlIGRlbGF5LCB5b3UgbmVlZCB0byB1c2UKPiByZ21p
aS1pZC4gWW91IGNhbiB0aGVuIHVzZSBhZGRpdGlvbmFsIHByb3BlcnRpZXMgdG8gZmluZSB0dW5l
IHRoZQo+IGRlbGF5IHRoZSBNQUMvUEhZIGlzIGFkZGluZy4gQW5kIHRoZSBMaW51eCBwcmVmZXJl
bmNlIGlzIHRoYXQgdGhlIFBIWQo+IGFkZHMgdGhlIGRlbGF5LgoKVGhlIHNpZ25hbCBwYXRoIG9m
IFJLMzM5OSBpcyBhcyBmb2xsb3dzOgoKTUFDIDwtLS0+IElPIDwtLS0+IFBIWQoKSW4gZmFjdCwg
dGhlIGRlbGF5IGlzIGFkZGVkIHRvIHRoZSBwYXRoIGJldHdlZW4gdGhlIE1BQyBhbmQgdGhlIElP
LCAKcmF0aGVyIHRoYW4gYmVpbmcgaW1wbGVtZW50ZWQgaW4gdGhlIE1BQyBpdHNlbGYuIFRoZXNl
IGRlbGF5IHZhbHVlIGlzIApjb250cm9sbGVkIGJ5IHRoZSBHUkYgcmVnaXN0ZXJbMF0gLiBUaGVz
ZSBwYXRocyBhcmUgaW1wbGVtZW50ZWQgaW5zaWRlIAp0aGUgU29DIGFuZCBoYXZlIG5vdCB5ZXQg
cmVhY2hlZCB0aGUgYm9hcmQgbGV2ZWwuCgpBY2NvcmRpbmcgdG8gdGhlIGRvY3VtZW50WzFdLCB1
c2UgInJnbWlpIiB3aGVuICJSWCBhbmQgVFggZGVsYXlzIGFyZSAKYWRkZWQgYnkgdGhlIE1BQyB3
aGVuIHJlcXVpcmVkIi4gSW4gYWRkaXRpb24sIGN1cnJlbnRseSB3ZSBjYW4gc2VlIHRoYXQgCmFs
bCBSSzMzOTkgYm9hcmRzIHVzZSAicmdtaWkiLsKgIElzIHRoZXJlIGFueXRoaW5nIEkgbWlzc2Vk
PyBUaGFuayB5b3UuCgoKWzBdOiAKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzE0NzI3
NTIyMDQtODkyNC0yLWdpdC1zZW5kLWVtYWlsLXd4dEByb2NrLWNoaXBzLmNvbS8KClsxXTogCmh0
dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvZXRoZXJuZXQtY29udHJvbGxlci55YW1sCgo+Cj4gCUFuZHJldwo+Cj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
