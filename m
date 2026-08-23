Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D055BC5DF8C
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Aug 2026 19:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TmN92lTPRkjpu4Smc86oxsGVu/a1f8s4MD2Bz6ba/P8=; b=yCrRwMspWp+iv+
	vwWPqB6eYLXjivVE2FQiktLurnwoa6ObWLr9bMsTCOYXI9/iObCuuCNv308mhEMtsIyiYBMe9vyWn
	jKppeBil913m3GIhFNm6XpzzPaHrhcd+75ja8ZihPZHRBP6/qh7BZZbxor26Pj5VA5etF9EmSH4X9
	mHJHWO43vUUeyj/+Nuc3jbw7AhqM+TK9JKoHRs8qSH3oEObUHdluobk/6lJS6wwyAZc6jQzhULidi
	KZ83VfnrM5lCG1ZLUhwoZOm4fHF7xdlOPTQJszuOoMdgIAB+gnbkvu/+R5ePo0YpKk5mvXA42IAIB
	uGDyOXpSQHhrmgfLgvlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyDjK-0000000FYhO-1SeZ;
	Sun, 23 Aug 2026 19:19:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyDjH-0000000FYgf-3Cdm;
	Sun, 23 Aug 2026 19:19:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JHIFFPoPBok4Enb1vmDibOlXvjE96+mvh5k+3E9o3Q4=; b=yRSIcm0K+2lJ8cWUbdK8pWzTNU
	TfHVkAKDP77B+xQF1Lglr2vLwDSXcVqdK98cKyUGyWv/LbnUxHInIWIS1LHajfG4pHqhUqTK7/jbn
	3havtYtAE6CumxuekTvkOpAh7mSNKUxsHSPKioljrWIH/NDBW5f3rj9etT+SrupqI2rreW59nW30o
	1YeV+dee1Jz81c6P9o/BorXHbbiMHrLRLRVPH6wqpHCp+87xUDFqwaUGE6qb6Zy8CmvPHI/42wKgB
	O3MVopmuwtwwUiupII0/cqJ0YE29nRPx/Vkl9qZ+LmbM2uVCm26N5OZkloDFFzGp2bZkTjIZNDQkG
	GRCXoH2A==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, andy.yan@rock-chips.com
Cc: hjc@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v1] drm: rockchip: add drm_plane_create_blend_mode_property
Date: Sun, 23 Aug 2026 21:19:28 +0200
Message-ID: <25031028.6Emhk5qWAg@diego>
In-Reply-To: <1ab6fb88-3b84-49b5-aa05-202a84edbd3d@gmail.com>
References: <1ab6fb88-3b84-49b5-aa05-202a84edbd3d@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_121939_804551_900C5211 
X-CRM114-Status: GOOD (  14.73  )
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

SGkgSm9oYW4sCgpBbSBTb25udGFnLCAyMy4gQXVndXN0IDIwMjYsIDE0OjI5OjA5IE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgSm9oYW4gSm9ua2VyOgo+IEEgdmFsaWRhdGVf
YmxlbmRfbW9kZV9mb3JfYWxwaGFfZm9ybWF0cygpIGZ1bmN0aW9uIHdhcyBhZGRlZCB0aGF0Cj4g
ZmlsbHMgdGhlIGtlcm5lbCBsb2cgd2l0aCB3YXJuaW5ncyBmb3IgUm9ja2NoaXAgVk9QIHZlcnNp
b24gMSBTb0NzLgo+IEFkZCBhIGRybV9wbGFuZV9jcmVhdGVfYmxlbmRfbW9kZV9wcm9wZXJ0eSgp
IGZ1bmN0aW9uIGFzIGZpeC4KClRoaXMgaXMgbWlzc2luZyBleHBsYW5hdGlvbiBvbiB3aHkgUElY
RUxfTk9ORSBpcyB0aGUgY29ycmVjdCB2YWx1ZS4KClZPUDIgc2VlbXMgdG8gc3VwcG9ydCBhbGwg
MyBibGVuZCBtb2Rlcz8gU28gYSBzZW50ZWNlIGV4cGxhaW5pbmcKdGhlIHBpeGVsX25vbmUgdmFs
dWUgd291bGQgYmUgaGVscGZ1bC4KCgpIZWlrbwoKPiBTaWduZWQtb2ZmLWJ5OiBKb2hhbiBKb25r
ZXIgPGpieDYyNDRAZ21haWwuY29tPgo+IC0tLQo+IAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2FsbC8yMDI2MDUyNjE4MTcwMC4yNTMxMC0zLWxlYW5kcm8ucmliZWlyb0Bjb2xsYWJvcmEuY29t
Lwo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jIHwg
MiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgYi9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4gaW5kZXggMDA5MGQ4ZmYwYzc5Li4w
YmM1YjYwNmYwMjEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX2RybV92b3AuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fdm9wLmMKPiBAQCAtMTg1MCw2ICsxODUwLDggQEAgc3RhdGljIHZvaWQgdm9wX3BsYW5lX2Fk
ZF9wcm9wZXJ0aWVzKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAo+ICAJaWYgKGZsYWdzKQo+ICAJ
CWRybV9wbGFuZV9jcmVhdGVfcm90YXRpb25fcHJvcGVydHkocGxhbmUsIERSTV9NT0RFX1JPVEFU
RV8wLAo+ICAJCQkJCQkgICBEUk1fTU9ERV9ST1RBVEVfMCB8IGZsYWdzKTsKPiArCWRybV9wbGFu
ZV9jcmVhdGVfYmxlbmRfbW9kZV9wcm9wZXJ0eShwbGFuZSwKPiArCQkJCQkgICAgIEJJVChEUk1f
TU9ERV9CTEVORF9QSVhFTF9OT05FKSk7Cj4gIH0KPiAgCj4gIHN0YXRpYyBpbnQgdm9wX2NyZWF0
ZV9jcnRjKHN0cnVjdCB2b3AgKnZvcCkKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
