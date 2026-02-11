Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 829F0E9E30F
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Feb 2026 14:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lm31eXEzOcwzkx2yTrhJqoJIIuQ/rO7gXONPX14ZaAU=; b=rKIsmoARJYjA/ijPzKqN1/Opys
	VOVe4142hr5dXpvmuLN6ZLLsrQrtQmEhOZTXRtgtoF257aGKvwkwJ+HhA195LE3LSjT2Y4kGZ8i6X
	cSbD7lWt1icWrmFq1LV5q3udhYkOluTA+6w30+J9U1t68jUZrNJX5yDoWuXjuLkRT5QKHWsq1+5y5
	5xsnI+ZxznyQnn+8t3jL6lvgGdOvYLdli8+5KjJyLG35R0ZR9EymVG4+UbVosKVykq7Nh3xr8Yo/k
	IQRPiwW9DtyBu1cs60Z0WEvO4xgL/X4rhIGhnskaAlV7Cot/+Qhl4ZqhvdoMz5Wk1g/q92qVOc3D+
	KrCp4cAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqBFJ-00000000jX6-0dUp;
	Wed, 11 Feb 2026 14:31:13 +0000
Received: from mail-m3285.qiye.163.com ([220.197.32.85])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqBFF-00000000jWX-13Yn;
	Wed, 11 Feb 2026 14:31:11 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 33e12f8f4;
	Wed, 11 Feb 2026 22:31:04 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, quentin.schulz@cherry.de,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v2 4/4] arm64: dts: rockchip: Make Jaguar PCIe-refclk pin
 use pull-up config
To: Heiko Stuebner <heiko@sntech.de>
References: <20260210080303.680403-1-heiko@sntech.de>
 <20260210080303.680403-5-heiko@sntech.de>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <21f56816-e616-f353-c945-dd49cf34b0cf@rock-chips.com>
Date: Wed, 11 Feb 2026 22:31:02 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260210080303.680403-5-heiko@sntech.de>
X-HM-Tid: 0a9c4d1ce25909cckunm430335901141a9
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhgeH1YeGBpIQ0hITBhMS0pWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Wc4O1Dxp4Am6HwCKvaxUnxCsPZcq7kUgtEBK5kUUS9IKC4eAkZHNw3pePazHGC0zOfw/Ciwy6AIKvjBqHSI5FQTUDlaAZFtIlMJTei4XHQwqBOCeJHFXXIDYD9uy8oTOmimcRT0vWC+/ToBGxHC+tVTI6k7zSjA3dYQAzjqhVsI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=hxmu4o5Owrd/s+GWT59foXAajtPwkD1n1OFz15Tl5zM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_063109_832837_072939DA 
X-CRM114-Status: GOOD (  19.92  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

1NogMjAyNi8wMi8xMCDQx8batv4gMTY6MDMsIEhlaWtvIFN0dWVibmVyINC0tcA6Cj4gRnJvbTog
SGVpa28gU3R1ZWJuZXIgPGhlaWtvLnN0dWVibmVyQGNoZXJyeS5kZT4KPiAKPiBEaWZmZXJlbnQg
dG8gUkszNTg4LVRpZ2VyLCBvbiBSSzM1ODgtSmFndWFyIHRoZSBzaWduYWwgZW5hYmxpbmcgdGhl
Cj4gUENJZS1yZWZjbGsgZ2VuZXJhdG9yIGNvbnRyb2xzIGEgdHJhbnNpc3RvciB3aGljaCBpbiB0
dXJuIGNvbnRyb2xzIHRoZQo+IG91dHB1dC1lbmFibGUgaW5wdXQgb2YgdGhlIFBJNkM1NTcgYW5k
IHRoZXJlJ3Mgbm8gZXh0ZXJuYWwgUHVsbC1VcCBvcgo+IFB1bGwtRG93biBiZXR3ZWVuIHRoZSBT
b0MgYW5kIHRoZSB0cmFuc2lzdG9yIGdhdGUuCj4gCj4gT24gVGlnZXIgdGhlIHBpbiBpcyBkaXJl
Y3RseSBjb25uZWN0ZWQgdG8gdGhlIFBEbiBpbnB1dCB3aGljaCBoYXMgYW4KPiBpbnRlcm5hbCBw
dWxsIHVwLgo+IAo+IFNvIG1hdGNoIHRoYXQgYmVoYXZpb3VyIG9uIEphZ3VhciBieSBjaGFuZ2lu
ZyB0aGUgcGluIGNvbmZpZyB0byBlbmFibGUKPiB0aGUgU29DJ3MgcHVsbC11cCBjb25maWcuCj4g
Cj4gU3VnZ2VzdGVkLWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAY2hlcnJ5LmRl
Pgo+IEZpeGVzOiAwZWM3ZTEwOTYzMzIgKCJhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIFBDSWUz
IHN1cHBvcnQgb24gcmszNTg4LWphZ3VhciIpCj4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJu
ZXIgPGhlaWtvLnN0dWVibmVyQGNoZXJyeS5kZT4KPiAtLS0KPiAgIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LWphZ3Vhci5kdHMgfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtamFndWFyLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LWphZ3Vhci5kdHMKPiBpbmRleCBlMjFhZDc1NzVjYjYuLjVmNWQ4
OWEzM2E0YSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OC1qYWd1YXIuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgt
amFndWFyLmR0cwo+IEBAIC01NzksNyArNTc5LDcgQEAgbGVkMV9waW46IGxlZDEtcGluIHsKPiAg
IAo+ICAgCXBjaWUzMHg0IHsKPiAgIAkJcGNpZTMweDRfY2xrcmVxbl9tMDogcGNpZTMweDQtY2xr
cmVxbi1tMCB7Cj4gLQkJCXJvY2tjaGlwLHBpbnMgPSA8MCBSS19QQzYgUktfRlVOQ19HUElPICZw
Y2ZnX3B1bGxfbm9uZT47Cj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8MCBSS19QQzYgUktfRlVOQ19H
UElPICZwY2ZnX3B1bGxfdXA+OwoKSWYgSmFndWFyIG5lZWQgc3VwcG9ydCBMMSBzdWJzdGF0ZSwg
SSBndWVzcyBpdCBzaG91bGQgYmUgY2hhbmdlZCB0bwpmdWNudGlvbiBJTyBhZ2FpbiBpbnN0ZWFk
IG9mIEdQSU8uIEZyb20gdGhlIHJlZmNsayBkZXNpZ24gd2hpY2ggdXNlcwpwY2llMzB4NF9jbGty
ZXFuX20wIGFzIGVuYWJsZSBjb250cm9sIGluIGFjdGl2ZSBsb3cgbW9kZSAsIGl0J3MgZmluZSB0
bwpzdXBwb3J0IHRoZXNlIGxvdyBwb3dlciBtb2RlLgoKT3RoZXJ3aXNlLCBmaW5lIHdpdGggbWUK
ClJldmlld2VkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KCj4gICAJ
CX07Cj4gICAKPiAgIAkJcGNpZTMweDRfcGVyc3RuX20wOiBwY2llMzB4NC1wZXJzdG4tbTAgewo+
IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
