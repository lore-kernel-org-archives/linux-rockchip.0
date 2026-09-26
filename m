Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 129F3C98328
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 08:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=27a0hWSyMGU4cCW3s0+v7cLW0XLW6OV3UQs9TWfuOjM=; b=I6+Eqw5/t7ga78
	7SsPxV+ew71NWKTjRkvVzhZyKKKIAhyXhFJX4+Y0LwwlcumL2M+FxBviE7q2HZ1jQ+gvomciyKpNM
	NV4ubfG+WJZbq6mCQKOrXjt/fwESXLx65e0UiN15DeFX4urlW2G294nUbt4jKrR9EtpYO/Lb24940
	lnrYd3wk8+ZDtwHYRzQ5BlBkd2Q0ecbdB0IPYaqNfskhQyqSREOJKOrQtBTaDjfgo9DiYjqp7qKlB
	DlVd8erCIlWJsfn9dFsooIL3vrSjcalP2I+0P55Z8DTp1qSwlRbG7daQrIXoxddgzJ0063St2W0VF
	xPLzYEjd+gGvT0eoIBEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANwA-0000000FAHd-0DSw;
	Sat, 26 Sep 2026 08:39:14 +0000
Received: from mail-m10313119144.xmail.ntesmail.com ([103.131.191.44])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANw4-0000000FAFl-1spL;
	Sat, 26 Sep 2026 08:39:13 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4f2fa0730;
	Sat, 26 Sep 2026 16:38:53 +0800 (GMT+08:00)
Message-ID: <24633d41-00d3-4a8b-90e4-ddc1e672c7f8@rock-chips.com>
Date: Sat, 26 Sep 2026 16:38:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: Remove cap-sd-highspeed on Rock
 Pi S eMMC
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>
References: <1790147498-47766-1-git-send-email-shawn.lin@rock-chips.com>
 <1790147498-47766-3-git-send-email-shawn.lin@rock-chips.com>
 <d3c0b1c9-a9fe-42c1-b865-dd1a8cc4e416@kwiboo.se>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <d3c0b1c9-a9fe-42c1-b865-dd1a8cc4e416@kwiboo.se>
X-HM-Tid: 0aa0dcde061103a4kunm87f2fe97652717
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDTEtCVh4ZSU5MSRpJH0sfS1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=VSCXCpU5/D/xkwJrMyVDi9DoaQOs69ywuO8KZyfsplSi7Ki8KJTvgViqq3uvWFMHcOFN1PW6TMYGPwN6ZLOz641AimPio1PQbPNEB10QfljpMiAPFQ4YYeJYWg0kGaETwjLSL+jm8o7NP10EN9A/mhmiBC8xs+EKHahi963482w=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=AImZn33N8xlyKL2p3b90Oxr51XFIQu7conwqFgIqVCs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260926_013909_085819_460A43C5 
X-CRM114-Status: GOOD (  14.64  )
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

SGkgSm9uYXMKCuWcqCAyMDI2LzA5LzI1IOaYn+acn+S6lCAwOjAyLCBKb25hcyBLYXJsbWFuIOWG
memBkzoKPiBIaSwKPiAKPiBPbiA5LzIzLzIwMjYgOToxMSBBTSwgU2hhd24gTGluIHdyb3RlOgo+
PiBjYXAtc2QtaGlnaHNwZWVkIGRlY2xhcmVzIFNEIGhpZ2gtc3BlZWQgc3VwcG9ydCBhbmQgaGFz
IG5vIHBsYWNlIG9uCj4+IHRoZSBub24tcmVtb3ZhYmxlIGVNTUMgbm9kZS4gRHJvcCBpdC4KPj4K
Pj4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4+
IC0tLQo+Pgo+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzA4LXJvY2stcGkt
cy5kdHMgfCAxIC0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMDgtcm9jay1waS1zLmR0
cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzA4LXJvY2stcGktcy5kdHMKPj4g
aW5kZXggYzFlMzA5OC4uNjc3ZDEyOSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzMDgtcm9jay1waS1zLmR0cwo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzMwOC1yb2NrLXBpLXMuZHRzCj4+IEBAIC0xMzMsNyArMTMzLDYgQEAK
Pj4gICAKPj4gICAmZW1tYyB7Cj4+ICAgCWNhcC1tbWMtaGlnaHNwZWVkOwo+PiAtCWNhcC1zZC1o
aWdoc3BlZWQ7Cj4gCj4gVGhlIFJvY2sgUGkgUyBib2FyZCBoYXMgdHdvIHNpbWlsYXIgcmV2aXNp
b25zIHRoYXQgaXMgc3VwcG9ydGVkIGJ5IHRoaXMKPiBEVCwgb25lIGhhcyBvbmJvYXJkIFNEIE5B
TkQgRmxhc2ggYW5kIHRoZSBvdGhlciBvbmUgaGFzIG9uYm9hcmQgZU1NQwo+IHN1cHBvcnRlZCBi
eSB0aGUgZW1tYyBkdy1tc2hjLgo+IAo+IFNvIHRoaXMgYm9hcmQgc2hvdWxkIGhhdmUgYm90aCBj
YXAtbW1jLWhpZ2hzcGVlZCBhbmQgY2FwLXNkLWhpZ2hzcGVlZAo+IGhlcmUgdG8gc3VwcG9ydCBi
ZXN0IHNwZWVkIGRlcGVuZGluZyBvbiBib2FyZCByZXZpc2lvbi4KCkkgZGlkbid0IGtub3cgYWJv
dXQgdGhlIGJvYXJkIHJldmlzaW9uLCBzbyBwbGVhc2UgaWdub3JlIHBhdGNoIDIvNC4KClRoYW5r
cy4KCj4gCj4gUmVnYXJkcywKPiBKb25hcwo+IAo+PiAgIAluby1zZGlvOwo+PiAgIAlub24tcmVt
b3ZhYmxlOwo+PiAgIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+IAo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKPiAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
