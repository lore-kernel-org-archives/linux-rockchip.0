Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A41AC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 13:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DbSHWKFmRE06d5+SsbSibQ2s4tAVLMc7pEOtL4Osmnc=; b=kga8y92W9djKnq
	Oqrzdx05H+P2AhFz5kLHrNQlk1fSR1TyudRr5qbgqjygct/+WPo9gBgoZ+c199gIfVTMbKDl8oQGB
	RjzRs2f8SckXiTS+Qs1sV0UhZPs7VuyD89HbNgHcAJDC03WuOGiYQ8l9Q8spWWeVy3RYk1nOIQSg9
	gM1duf7AeEJokt4PrYd46A3ONCUal3ILuECDl6tpT4MQ3qGEK8fVCI7vSxd2CY6eu1JkUmzR5LhdC
	AfpFA/7rcw72wc3Ffyw+vzehdOdX8iOe1q+0JNlkYGy9EUoJfjFOtpmeyQwv6Xab4tPEfowavXrzx
	rwF0AhRitTr2sgxC44Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seaQv-0000000A1X6-0ln5;
	Thu, 15 Aug 2024 13:22:29 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seaQq-0000000A1Wa-3ncU;
	Thu, 15 Aug 2024 13:22:26 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723728133; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=F+f+/m+3yoalyK2PJzkFo+Tupgp9cPh4Tjb5I8Bo0B6JwGSNH+RspfAWYBAghyJaMwqpBfsB4CnaGXyBqoxqnDA/CThDVeVg+N3jpbQVUeLCUEGFAhuylTw4CXyyu41AT5PyLxxM6mHCL05d/8DAPfVdEd45nI3x06XdYoTk+kg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723728133; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=3jD5WsZNkgzCPHbwdRHU3z7HY4AhHudi/075H3onC+g=; 
	b=d5pNEIS5M++TnFvZssINEBI2Pz69a8A2BJ374wxLHQMc662ocw1uH38KUAktY/pp2aWSEj3LvtaqCOn7vPTvth5uS7XoMtvscJT6JMVvuiKL/20BxLOTWR7K5Rlx9pxJULjDBPeLPKwghq7tOswavlAPBx6MEtDg0ZXU1NuE1AQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723728133;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=3jD5WsZNkgzCPHbwdRHU3z7HY4AhHudi/075H3onC+g=;
	b=DcfGVhQ3UnLTLR5cZ/XXIxZUpgSGP0lCd/ysHHzVPav0BueYScAUr7i3Z6d8ekh/
	6znr1w2Xwj3l+aAyO9IKfWTO7REENho7qdz5Af/GKWDohudjhr+c+pdxtLdqv3dB7FL
	mCndEleBPQAQUdaG3ZwYigYbNwrJHmDaDqEk0Es0=
Received: by mx.zohomail.com with SMTPS id 1723728131107663.2447060327355;
	Thu, 15 Aug 2024 06:22:11 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
Cc: shawn.lin@rock-chips.com, Ulf Hansson <ulf.hansson@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v3 2/3] mmc: dw_mmc-rockchip: Add v2 tuning support
Date: Thu, 15 Aug 2024 09:23:40 -0400
Message-ID: <2742918.mvXUDI8C0e@trenzalore>
In-Reply-To: <5dc82aa2-82a0-4778-b598-88775d5f791c@rock-chips.com>
References: <20240814223555.3695-1-detlev.casanova@collabora.com>
 <20240814223555.3695-3-detlev.casanova@collabora.com>
 <5dc82aa2-82a0-4778-b598-88775d5f791c@rock-chips.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_062225_016234_61FB06C2 
X-CRM114-Status: GOOD (  19.62  )
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

T24gV2VkbmVzZGF5LCAxNCBBdWd1c3QgMjAyNCAyMDo1NTozNyBFRFQgU2hhd24gTGluIHdyb3Rl
Ogo+IEhpIERldGxldgo+IAo+IOWcqCAyMDI0LzgvMTUgNjozNCwgRGV0bGV2IENhc2Fub3ZhIOWG
memBkzoKPiA+IEZyb206IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+ID4g
Cj4gPiB2MiB0dW5pbmcgd2lsbCBpbmhlcml0IHByZS1zdGFnZSBsb2FkZXIncyBwaGFzZSBzZXR0
aW5ncyBmb3IgdGhlIGZpcnN0Cj4gPiB0aW1lLCBhbmQgZG8gcmUtdHVuZSBpZiBuZWNlc3Nhcnku
Cj4gPiBSZS10dW5lIHdpbGwgc3RpbGwgdHJ5IHRoZSByb3VnaCBkZWdyZWVzLCBmb3IgaW5zdGFu
Y2UsIDkwLCAxODAsIDI3MCwKPiA+IDM2MCBidXQgY29udGludWUgdG8gZG8gdGhlIGZpbmUgdHVu
aW5nIGlmIHNhbXBsZSB3aW5kb3cgaXNuJ3QgZ29vZAo+ID4gZW5vdWdoLgo+ID4gCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiA+IFNpZ25l
ZC1vZmYtYnk6IERldGxldiBDYXNhbm92YSA8ZGV0bGV2LmNhc2Fub3ZhQGNvbGxhYm9yYS5jb20+
Cj4gPiAtLS0KPiA+IAo+ID4gICBkcml2ZXJzL21tYy9ob3N0L2R3X21tYy1yb2NrY2hpcC5jIHwg
NDkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA0
OSBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9ob3N0L2R3
X21tYy1yb2NrY2hpcC5jCj4gPiBiL2RyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMg
aW5kZXggYjA3MTkwYmE0YjdhYy4uMzY3NjMzZjRlODg5Mgo+ID4gMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL21tYy9ob3N0L2R3X21tYy1yb2NrY2hpcC5jCj4gPiArKysgYi9kcml2ZXJzL21tYy9o
b3N0L2R3X21tYy1yb2NrY2hpcC5jCgpbLi4uXQoKPiA+ICAgCQkKPiA+ICAgCQlwcml2LT5kZWZh
dWx0X3NhbXBsZV9waGFzZSA9IDA7Cj4gPiAKPiA+ICsJcHJpdi0+dXNlX3YyX3R1bmluZyA9Cj4g
PiArCQlvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShob3N0LT5kZXYtPm9mX25vZGUsCj4gPiArCQkJ
CQkicm9ja2NoaXAscmszNTc2LWR3LQptc2hjIik7Cj4gPiArCj4gCj4gdjIgaXMgYSBraW5kIG9m
IHNvZnR3YXJlIGRlY2lzaW9uIGluc3RlYWQgb2YgaGFyZHdhcmUgZGVwZW5kZW5jeS4KPiBTbyBp
biB0aGVvcnksIGFueSBTb0MgY2FuIGNsYWltIHRvIHVzZSBpdCB2aWEgRFQuCgpZZXMgYnV0IGZy
b20gbXkgdGVzdHMsIG9ubHkgcmszNTc2IHdvbid0IHdvcmsgd2l0aG91dCBpdC4gU28gaXQgbWFr
ZXMgc2Vuc2UgdG8gCm9ubHkgdXNlIHYyIGZvciB0aGlzIFNvQyAoYW5kIG90aGVyIGZ1dHVyZSBv
bmVzIG5vdCBzdXBwb3J0ZWQgeWV0KQoKPiAKPiA+ICAgCXByaXYtPmRydl9jbGsgPSBkZXZtX2Ns
a19nZXQoaG9zdC0+ZGV2LCAiY2l1LWRyaXZlIik7Cj4gPiAgIAlpZiAoSVNfRVJSKHByaXYtPmRy
dl9jbGspKQo+ID4gICAJCj4gPiAgIAkJZGV2X2RiZyhob3N0LT5kZXYsICJjaXUtZHJpdmUgbm90
IGF2YWlsYWJsZVxuIik7CgoKRGV0bGV2LgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
