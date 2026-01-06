Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66E22CEFCF2
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jan 2026 18:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6sfxHC4UgMkBLW83s97xMFnW7KhrYPzgvGwD4t4omuE=; b=b7f6d1o+3k/TrT
	zTr2JG/gDV39yOReEhPwZX+feXqbVdaO5gl/x9lHp1Sa0nYZTbBACDPc2F6r0+Y5VB/6EVxk0ma6r
	ZrfZjI7B7xnqkI/+1/mA1eZLuUQ7HfJdN4nvN6rpXsZQ+uqBRmq4EprtoD5RH9qrFkxTsVGQVOz3n
	W90zsxsGvQt3GjKhwhCnUbfUxZAaiTMOKTF6dI8QAPURocNnz/avyOskDTR64+ABIK41UHYZEdUMS
	tO9Xa9BVYdQQom08MRa/oNbWUe7nkfKJHXgrdVCWuXPDb1rL+lk+pfMi+pWI52c4OujMkvKZZIIAB
	ysmTx3X2CEMYtZ6cIxjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdCAw-0000000Dip1-0R6i;
	Tue, 06 Jan 2026 18:53:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdCAs-0000000DioV-3QoI;
	Tue, 06 Jan 2026 18:53:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=oYO5p75UGgbGYm00blLvxwY4qfzPbnXHml3ls2BGkb0=; b=Eps9U6h0eO3F9Yk1f/nHDeanUD
	j+4USqm9bCRG/fAm+n39Sa3TQtaF/7vCKAtxQ9YXzkIP5tZeuxJTzq/y0eY2gRPlWP6mWVeRSu1js
	l8d37K5Q2zKK98KdZ087U1NdgvnO2Z7YpxLCgqUg5aR9ruRPGcGEkwED+sFO9baxR4OI1uNCN/+tJ
	GwaXrlxbw9ytJilp79JSRhN0Bkw4g+yHIilWUT0VQBGXZtEf0vB+ooTgzoYsXrMt84R0igoAYpLgP
	epz5yrl5uP2PMtS92d1ih+JDAhHjUhDyEEBSGIw2kMyXdPvJL6izYs9iTheV90yW+FXrfQo2GYHfM
	jGUF7DCQ==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdCAq-001Hmr-6q; Tue, 06 Jan 2026 19:52:56 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: enable NPU on rk3588-tiger
Date: Tue, 06 Jan 2026 19:52:56 +0100
Message-ID: <4495583.CbtlEUcBR6@phil>
In-Reply-To: <de401340-be1c-4354-b6c8-c86d6f724c73@cherry.de>
References: <20250812085213.1071106-1-heiko@sntech.de>
 <de401340-be1c-4354-b6c8-c86d6f724c73@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_105258_876920_EE922013 
X-CRM114-Status: GOOD (  18.94  )
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

QW0gRnJlaXRhZywgMjguIE5vdmVtYmVyIDIwMjUsIDExOjMyOjE3IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgUXVlbnRpbiBTY2h1bHo6Cj4gSGkgSGVpa28sCj4gCj4gT24g
OC8xMi8yNSAxMDo1MiBBTSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gPiBGcm9tOiBIZWlrbyBT
dHVlYm5lciA8aGVpa28uc3R1ZWJuZXJAY2hlcnJ5LmRlPgo+ID4gCj4gPiBFbmFibGUgdGhlIE5Q
VSBjb3JlcyBhbmQgdGhlaXIgbW11cyBhbmQgd2lyZSB1cCB0aGUgc3VwcGx5LXJlZ3VsYXRvci4K
PiA+IFRoZSByZWd1bGF0b3IgaXRzZWxmIHdhcyBhbHJlYWR5IGRlZmluZWQsIGJ1dCBpdCBkb2Vz
IG5vdCBuZWVkIHRvIGJlCj4gPiBhbHdheXMgb24gLSB0aGUgbnB1IGNhbiBjb250cm9sIGl0Lgo+
ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa28uc3R1ZWJuZXJAY2hl
cnJ5LmRlPgo+IAo+IFJldmlld2VkLWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpA
Y2hlcnJ5LmRlPgo+IFRlc3RlZC1ieTogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QGNo
ZXJyeS5kZT4KPiAKPiBJIHN0aWxsIGhhdmUgdGhlIHNhbWUgcmVtYXJrIGFib3V0IHJlZ3VsYXRv
ci1ib290LW9uIGJ1dCB0aGlzIGlzbid0IGEgCj4gYmxvY2tlciBwZXItc2UuCj4gCj4gVGhlIE9v
cHMgSSBhbGx1ZGVkIHRvIGluIG15IGFuc3dlciB0byB0aGUgSmFndWFyIHBhdGNoIGlzIHRyaWdn
ZXJlZCBieSAKPiBtYWtpbmcgRFJNX0FDQ0VMX1JPQ0tFVCBkcml2ZXIgYnVpbHQtaW4gaW5zdGVh
ZCBvZiBhcyBhIG1vZHVsZS4gSSdtIG5vdCAKPiBzdXJlIGhvdyBtdWNoIEkgd2lsbCBkZWJ1ZyB0
aGlzIG9uIG15IHNpZGUsIEknbGwgcHJvbGx5IGp1c3QgcmVwb3J0IHRoaXMgCj4gb24gdGhlIE1M
IGluIGEgZmV3IGhvdXJzLgoKSnVzdCBmb3IgcGVvcGxlIHN0dW1ibGluZyBvdmVyIHRoaXMsIHRo
ZSBjYXVzZSBpcyB0aGUgcG0tZG9tYWlucwpiZWluZyBvbiBvbiBib290IGFuZCB0aGUgaW9tbXUg
YWZ0ZXIgcHJvYmluZyBkaXNhYmxpbmcgdGhlIGRvbWFpbi4KClNlZSBkaXNjdXNzaW9uIGluCmh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjUxMjE2MDU1MjQ3LjEzMTUw
LTEtcm14cHpsYkBnbWFpbC5jb20vCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
