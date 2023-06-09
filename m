Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF1A0C7EE37
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jun 2023 08:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iU4KtlltBekDZPMx117DvKqwrSKwOAOjxo4opcc+Lm4=; b=AY1rhh9YD3ubuy
	Idn4Y2Bo+/0601Zw4aZJNsE5nx3ElDGm7qUjSNIJ1D8ZDvsH5qskgnSpRa451b7JGfRb0bYz1BJcr
	JwRLCpgENBTOQHI390n9AyOA32bGzHFy0D48lCa+yRVW8FSOMF5WmqgwQOchz22gCaRwmt9twbtOX
	7Hfcsbo9qF4+UI1SYXgjw7TTQGPwmzG09tUasjtt3n2DjBjUw5WN96IM+yeDn+VujzUzhrrZxewjm
	fg00Cqe3WxiJju677McYDvWdlTJ6Qv0gK72iexj7P4yd9opggGrCFQktqub3rMH+0dWyWOs0Jlwhc
	Xb0HU36Cnk1YPM6I8xcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7XtC-00CJoI-1Y;
	Fri, 09 Jun 2023 08:54:34 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Xt8-00CJly-2u;
	Fri, 09 Jun 2023 08:54:32 +0000
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1686300868;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yESK7y37bOjN3SANEmCGOV67A0u0f7lUiT19nPSlg4M=;
	b=jNN1WoLiV8ZGE/w2aBcCzWEts/3/G2/blZSW4AUZRnDkdl9/15/4LKJLzjX+ZBHOScRrWL
	68KSYL+V/Esx7DiJZA9tJZl803n4v95QOojdjfUxPoV6wDm/1qPaMUkYpN7K1Uugzj2OZd
	sC9r2Ot9qCWGz8viHLnErWaV+oLUyss+CyCdzsL6n3I4/Mlo1HkLSOjWlvZ1bqBqJLE00L
	49LXjLuvoKyPeUoxcoYxaBbz4Kifu2uqT+llPjM9z0sCtVypvAVACK46Iq5M3WO4qnGyuz
	J/RIO5NTU8TsKlYKPpPDVMyicNyiWSYd7D4ntKYGCSy73c7+97uwQDLZAzRDiA==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1169960010;
	Fri,  9 Jun 2023 08:54:26 +0000 (UTC)
Date: Fri, 9 Jun 2023 10:54:25 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: richard@nod.at, vigneshr@ti.com, heiko@sntech.de,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 yifeng.zhao@rock-chips.com
Subject: Re: [PATCH v1 5/5] mtd: nand: add support for the Sandisk SDTNQGAMA
 chip
Message-ID: <20230609105425.60543d8b@xps-13>
In-Reply-To: <c21a0de8-f8f6-a8f9-417b-eca99dc8b55b@gmail.com>
References: <19bf714a-43f9-c30a-8197-91aaaf4a6e5d@gmail.com>
	<c21a0de8-f8f6-a8f9-417b-eca99dc8b55b@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_015431_074163_49EDA3D6 
X-CRM114-Status: GOOD (  13.60  )
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

SGkgSm9oYW4sCgpqYng2MjQ0QGdtYWlsLmNvbSB3cm90ZSBvbiBUaHUsIDggSnVuIDIwMjMgMTg6
MzE6MDQgKzAyMDA6Cgo+IFNhbmRpc2sgU0RUTlFHQU1BIGlzIGEgOEdCIHNpemUsIDMuM1YgOCBi
aXQgY2hpcCB3aXRoIDE2S0IgcGFnZSBzaXplLAo+IDFLQiB3cml0ZSBzaXplIGFuZCA0MCBiaXQg
ZWNjIHN1cHBvcnQKPiAKPiBTaWduZWQtb2ZmLWJ5OiBQYXdlxYIgSmFyb3N6IDxwYXdlbGphcm9z
ejM2OTFAZ21haWwuY29tPgoKUGF3ZWwgbmVlZHMgdG8gYmUgYXV0aG9yIG9mIHRoZSBwYXRjaCBv
ciBjcmVkaXRlZCB3aXRoIGEKY28tZGV2ZWxvcHBlZC1ieStTb0Igb3RoZXJ3aXNlLiBUaGUgY3Vy
cmVudCBTb0IgbGluZXMgYXJlIGludmFsaWQuCgo+IFNpZ25lZC1vZmYtYnk6IEpvaGFuIEpvbmtl
ciA8amJ4NjI0NEBnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRf
aWRzLmMgfCAzICsrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfaWRzLmMgYi9kcml2ZXJzL210ZC9u
YW5kL3Jhdy9uYW5kX2lkcy5jCj4gaW5kZXggZGFjYzU1MjliLi41M2M0MTE4ZGUgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9pZHMuYwo+ICsrKyBiL2RyaXZlcnMvbXRk
L25hbmQvcmF3L25hbmRfaWRzLmMKPiBAQCAtNDQsNiArNDQsOSBAQCBzdHJ1Y3QgbmFuZF9mbGFz
aF9kZXYgbmFuZF9mbGFzaF9pZHNbXSA9IHsKPiAgCXsiVEM1OE5WRzZEMiA2NEcgMy4zViA4LWJp
dCIsCj4gIAkJeyAuaWQgPSB7MHg5OCwgMHhkZSwgMHg5NCwgMHg4MiwgMHg3NiwgMHg1NiwgMHgw
NCwgMHgyMH0gfSwKPiAgCQkgIFNaXzhLLCBTWl84SywgU1pfMk0sIDAsIDgsIDY0MCwgTkFORF9F
Q0NfSU5GTyg0MCwgU1pfMUspIH0sCj4gKwl7IlNEVE5RR0FNQSA2NEcgMy4zViA4LWJpdCIsCj4g
KwkJeyAuaWQgPSB7MHg0NSwgMHhkZSwgMHg5NCwgMHg5MywgMHg3NiwgMHg1N30gfSwKPiArCQkg
IFNaXzE2SywgU1pfOEssIFNaXzRNLCAwLCA2LCAxMjgwLCBOQU5EX0VDQ19JTkZPKDQwLCBTWl8x
SykgfSwKCkkgZ3Vlc3MgeW91J2xsIG5lZWQgYSBzYW5kaXNrIGRyaXZlciB0byByZWZsZWN0IHRo
ZSBtaXNzaW5nIHRpbWluZ3M/Cgo+ICAJeyJTRFROUkdBTUEgNjRHIDMuM1YgOC1iaXQiLAo+ICAJ
CXsgLmlkID0gezB4NDUsIDB4ZGUsIDB4OTQsIDB4OTMsIDB4NzYsIDB4NTB9IH0sCj4gIAkJICBT
Wl8xNkssIFNaXzhLLCBTWl80TSwgMCwgNiwgMTI4MCwgTkFORF9FQ0NfSU5GTyg0MCwgU1pfMUsp
IH0sCj4gLS0KPiAyLjMwLjIKPiAKCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
