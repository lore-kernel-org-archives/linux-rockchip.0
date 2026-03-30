Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B1B5F3D60F
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Mar 2026 08:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KyvNpvi1/m2HcSTGcUDMX9lqOCm5keUT3d4L6OOSN8=; b=B0hEofeLaDcVxs
	EujpjQW23GqiDI6/lSme9e6GmYmBOFjCeXFzuGqEZRjt/LDNPcGSu7wycoS3aySCyeKvJWRcUEyAy
	NwuVDFY+6jIuyoxBuJ7XZDlI2XT63qk3hTAIV+f8nTzqnoOc4vrg7khLXU3MgyYpvMK4eBFXumy9z
	+mAzyt5F3tM8GBchW0bYMsdjusbszDWdGY4IDndtgpUUHZsHxa26hVvdElMpBWukhFMfMebyd+sf3
	dCkQuEuwMJVtbc8o/boVxZh0tliI0bvPuZemdEvqVV7VAaMxAfNRFSqHBqpgAKClSeuVHHG2fAPSB
	7viYgUvonu0cmUN3Z4Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w77yj-0000000ArD9-2sGL;
	Mon, 30 Mar 2026 08:28:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w77yg-0000000ArBz-3L3I;
	Mon, 30 Mar 2026 08:28:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=IWDxnURTi+IF8/iD9M37ASLzznD8KgRMZxGLGGi0MIw=; b=PwF6o3Bus4nqDZmEr/pMzIT22J
	cHfd1EIWui1UH5vO2QOorMssuZJ2Dd+kF8s0DHsXcOXkSM7RbdTalDnd735//E5P1Yti+6YjnhZv/
	5zPB7X25VbAw/OQzLPETrJDw9kkSjgmnL1k9CjnCgOT5oQEf7eSEN+WyhAofuwnplR7+h2Js/6Ahc
	BJREJ6pAUjAXqVJgMDKgw2c0gys1jAUwcrmMynoqJbsYzhrRn12lJzzagV+d7zqrs6QX60wfMl3v3
	GrnLKJnas26fbqcy6YestrjuvOi5Lxdsq8bK6gn8W1HWeHXLmReGzbnzqUZUJNgxn/FaK8jle9kav
	4wAoCBYA==;
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?B?6LCi6Ie06YKmIChYSUUgWmhpYmFuZyk=?= <Yeking@red54.com>,
 linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add RK3562 serial aliases
Date: Mon, 30 Mar 2026 10:27:52 +0200
Message-ID: <1954782.CQOukoFCf9@phil>
In-Reply-To: <9b3ee9e9-d44d-49b1-81ac-9c3806dc0efb@kernel.org>
References: <tencent_4BED6C3FFB8102B4BB3D08D6F47F2CCFC908@qq.com>
 <9b3ee9e9-d44d-49b1-81ac-9c3806dc0efb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_012806_904422_B87DDE67 
X-CRM114-Status: GOOD (  15.88  )
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

QW0gU2Ftc3RhZywgMjguIE3DpHJ6IDIwMjYsIDE2OjA4OjU3IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3NraToKPiBPbiAyOC8wMy8yMDI2IDE0
OjA1LCDosKLoh7TpgqYgKFhJRSBaaGliYW5nKSB3cm90ZToKPiA+IFRoaXMgZml4ZXMgdGhlIHN0
ZG91dC1wYXRoIGluIHJrMzU2Mi1ldmIyLXYxMC5kdHMuCj4gPiAKPiA+IEZpeGVzOiBjZWI2ZWYx
ZWE5MDAgKCJhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIFJLMzU2MiBldmIyIGRldmljZXRyZWUi
KQo+ID4gU2lnbmVkLW9mZi1ieTog6LCi6Ie06YKmIChYSUUgWmhpYmFuZykgPFlla2luZ0BSZWQ1
NC5jb20+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Mi5k
dHNpIHwgMTAgKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCsp
Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2
Mi5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjIuZHRzaQo+ID4gaW5k
ZXggZTQ4MTZhYTNkYWUwLi4xNGU3NGU4YWM3ZGYgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Mi5kdHNpCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2Mi5kdHNpCj4gPiBAQCAtMjYsNiArMjYsMTYgQEAgYWxpYXNlcyB7
Cj4gPiAgCQlncGlvMiA9ICZncGlvMjsKPiA+ICAJCWdwaW8zID0gJmdwaW8zOwo+ID4gIAkJZ3Bp
bzQgPSAmZ3BpbzQ7Cj4gPiArCQlzZXJpYWwwID0gJnVhcnQwOwo+ID4gKwkJc2VyaWFsMSA9ICZ1
YXJ0MTsKPiA+ICsJCXNlcmlhbDIgPSAmdWFydDI7Cj4gPiArCQlzZXJpYWwzID0gJnVhcnQzOwo+
ID4gKwkJc2VyaWFsNCA9ICZ1YXJ0NDsKPiA+ICsJCXNlcmlhbDUgPSAmdWFydDU7Cj4gPiArCQlz
ZXJpYWw2ID0gJnVhcnQ2Owo+ID4gKwkJc2VyaWFsNyA9ICZ1YXJ0NzsKPiA+ICsJCXNlcmlhbDgg
PSAmdWFydDg7Cj4gPiArCQlzZXJpYWw5ID0gJnVhcnQ5Owo+IAo+IFVBUlQgYWxpYXNlcyBhcmUg
cHJvcGVydGllcyBvZiB0aGUgYm9hcmRzLCBub3QgU29DLgoKV2UgaGFkIHRoaXMgYXJndW1lbnQg
YSBsb3Qgb2YgdGltZXMgZm9yIHRob3NlIG51bWJlcmVkIGFsaWFzZXMKd2hlcmUgZXZlcnl0aGlu
ZyBvbiBhbGwgc29jIGRvY3VtZW50YXRpb24sIHNjaGVtYXRpY3MgYW5kIGFsc28KdXNlciBkb2N1
bWVudGF0aW9uIGZvciBpbmRpdmlkdWFsIGJvYXJkcywgZ2VuZXJhbGx5IHJlZmVyZW5jZXMKZXhh
Y3RseSB0aG9zZSBudW1iZXJzIDotKQoKQnV0IGZpaWlpaWluZSwgaWYgaXQgY29tZXMgdXAgYWxs
IHRoZSB0aW1lIC4uLgoKSSByZWFsbHkgaG9wZSwgeW91J3JlIG9rYXkgd2l0aCBpbnRlcm1pdGVu
ZCBvcmRlcmluZyB0aG91Z2g6CgoJc2VyaWFsMCA9ICZ1YXJ0MDsKCXNlcmlhbDIgPSAmdWFydDI7
CglzZXJpYWw1ID0gJnVhcnQ1OwoKYmVjYXVzZSBvdGhlcndpc2UsIHRoaXMgd291bGQgY2F1c2Ug
cHVyZSBjaGFvcyBldmVyeXdoZXJlLgoKQmVjYXVzZSBhcyBJIHNhaWQgdGhpcyBzZXJpYWwgbnVt
YmVyIGlzIHVzZWQgb24gYm9hcmQtc2NoZW1hdGljcywKYm9hcmQtdXNlci1sZXZlbCBkb2N1bWVu
dGF0aW9uLCBTb0MgZG9jdW1lbnRhdGlvbiwgZXZlbiBzaWxjc2NyZWVuCm9uIGJvYXJkcyAuLi4g
c28gZXZlcnl3aGVyZS4KClNpbWlsYXIgZm9yIGFsbCB0aGUgbnVtYmVyZWQgYnVzc2VzIG9mdGhl
IFNvQ3MuCgoKSGVpa28KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
