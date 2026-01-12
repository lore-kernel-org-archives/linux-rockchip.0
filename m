Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02AB4C9EC71
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 11:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UKRnBXkmzD6hYM+mYlO+x+1QyX+AhrjDDdYGE2GqDQ=; b=ttwUBuksm3waDn
	K1hAmHJGmN1MKH4U6v31boOojfHY7Ni+xWig5VgCDI5ZBbmwV8YGpZZgg/SGpY9yGOFbWVvV86uPq
	6FrcwmhKvYBLuC862NvviTyGWPo1/XYp+s9Fiti+UdIRNKe0NmljVrC/FRF8eTgp6cn2vWdp3a5aA
	uTD+JTvvCEtGZPYNzC9IRj9Mgn3IYG7sKwJA9awNflMfTiGCC1Ztm4WKnBx0U+I2fSYdIf9lU4l6m
	lG62/sm0Yfv5aLNGnSykYFAWweONUWAyJtitiAx2hDg4M5Bcu6S+eOAJOo2Pf41cACIE5D2HbxQ2G
	3DLV8cgRCoj7emDFkcDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFlX-00000005Dco-0GIE;
	Mon, 12 Jan 2026 11:07:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFlU-00000005DcS-3u9j
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 11:07:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=YOqp9WOX0i/+P9hRPyDbeTpgtUJdKn7Z2cmGsf9yrvA=; b=H26MM37ELvbpBbRN0PQ9a2hIEh
	gXxuDq6L0zwm+o0S2gPVpndwjt04a/bNaoroL3rRwlsgSO6UbOwoO7KnLP6nuNBYsomWClkqyV8FS
	EFZchS9p2pxJ2zPHU4zryz90u+KEkifT8D5Vz7iGhWQk+B7uJPt9OT9/CGHFjQhDiVcLUgjwDAspk
	i0aZx9LLR0PSjWNWhpS0DHjOAv3IcPFY6dR5Q6bFjYhBO9u2k5wAvd8C0ln6Y0WZPGZ9UuB461ei9
	QaAOJROoxHS/X+bDCTc+HIwRz1uwiuPbbdbvuaywxp/bqb8ZvzhP4t2Muo/4sJzbxQEBIXo1Grl9Q
	JtwcO6mg==;
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vfFlR-001wN4-Jt; Mon, 12 Jan 2026 12:07:14 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 FUKAUMI Naoki <naoki@radxa.com>,
 Marco Schirrmeister <mschirrmeister@gmail.com>,
 John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH 2/3] soc: rockchip: grf: Support multiple grf to be handled
Date: Mon, 12 Jan 2026 12:07:13 +0100
Message-ID: <7339936.aoefvbuG5b@diego>
In-Reply-To: <1768189768-96333-3-git-send-email-shawn.lin@rock-chips.com>
References: <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
 <1768189768-96333-3-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_030716_975427_05CED259 
X-CRM114-Status: GOOD (  16.53  )
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

QW0gTW9udGFnLCAxMi4gSmFudWFyIDIwMjYsIDA0OjQ5OjI3IE1pdHRlbGV1cm9ww6Rpc2NoZSBO
b3JtYWx6ZWl0IHNjaHJpZWIgU2hhd24gTGluOgo+IEN1cnJlbnRseSwgb25seSB0aGUgZmlyc3Qg
bWF0Y2hlZCBub2RlIHdpbGwgYmUgaGFuZGxlZC4gVGhpcyBsZWFkcwo+IHRvIGp0YWcgc3dpdGNo
aW5nIGJyb2tlbiBmb3IgUkszNTc2LCBhcyByazM1NzYtc3lzLWdyZiBpcyBmb3VuZCBiZWZvcmUK
PiByazM1NzYtaW9jLWdyZi4gQ2hhbmdlIHRoZSBjb2RlIHRvIHNjYW4gYWxsIHRoZSBwb3NzaWJs
ZSBub2RlIHRvIGZpeAo+IHRoZSBwcm9ibGVtLgo+IAo+IEZpeGVzOiBlMWFhZWNhY2ZhMTMgKCJz
b2M6IHJvY2tjaGlwOiBncmY6IEFkZCByazM1NzYgZGVmYXVsdCBHUkYgdmFsdWVzIikKPiBTaWdu
ZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiAtLS0KPiAK
PiAgZHJpdmVycy9zb2Mvcm9ja2NoaXAvZ3JmLmMgfCA1OSArKysrKysrKysrKysrKysrKysrKysr
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25z
KCspLCAyOSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2Mvcm9ja2No
aXAvZ3JmLmMgYi9kcml2ZXJzL3NvYy9yb2NrY2hpcC9ncmYuYwo+IGluZGV4IDg5NzRkMWMuLjZk
MWM2MjRlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc29jL3JvY2tjaGlwL2dyZi5jCj4gKysrIGIv
ZHJpdmVycy9zb2Mvcm9ja2NoaXAvZ3JmLmMKPiBAQCAtMjEzLDQwICsyMTMsNDEgQEAgc3RhdGlj
IGludCBfX2luaXQgcm9ja2NoaXBfZ3JmX2luaXQodm9pZCkKPiAgewo+ICAJY29uc3Qgc3RydWN0
IHJvY2tjaGlwX2dyZl9pbmZvICpncmZfaW5mbzsKPiAgCWNvbnN0IHN0cnVjdCBvZl9kZXZpY2Vf
aWQgKm1hdGNoOwo+IC0Jc3RydWN0IGRldmljZV9ub2RlICpucDsKPiArCXN0cnVjdCBkZXZpY2Vf
bm9kZSAqbnAsICpmcm9tX25wID0gTlVMTDsKPiAgCXN0cnVjdCByZWdtYXAgKmdyZjsKPiAgCWlu
dCByZXQsIGk7Cj4gIAo+IC0JbnAgPSBvZl9maW5kX21hdGNoaW5nX25vZGVfYW5kX21hdGNoKE5V
TEwsIHJvY2tjaGlwX2dyZl9kdF9tYXRjaCwKPiAtCQkJCQkgICAgICZtYXRjaCk7Cj4gLQlpZiAo
IW5wKQo+IC0JCXJldHVybiAtRU5PREVWOwo+IC0JaWYgKCFtYXRjaCB8fCAhbWF0Y2gtPmRhdGEp
IHsKPiAtCQlwcl9lcnIoIiVzOiBtaXNzaW5nIGdyZiBkYXRhXG4iLCBfX2Z1bmNfXyk7Cj4gLQkJ
b2Zfbm9kZV9wdXQobnApOwo+IC0JCXJldHVybiAtRUlOVkFMOwo+IC0JfQo+ICsJd2hpbGUgKDEp
IHsKPiArCQlucCA9IG9mX2ZpbmRfbWF0Y2hpbmdfbm9kZV9hbmRfbWF0Y2goZnJvbV9ucCwKPiAr
CQkJCXJvY2tjaGlwX2dyZl9kdF9tYXRjaCwgJm1hdGNoKTsKCkkgdGhpbmsgdGhpcyBsb29wIGNv
dWxkIGJlIHNpbXBsaWZpZWQgYnkgdXNpbmcKCWZvcl9lYWNoX21hdGNoaW5nX25vZGVfYW5kX21h
dGNoCgooaS5lLiBsaWtlIGluIGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE4
LjQvc291cmNlL2RyaXZlcnMvY2xrL2Nsay5jI0w1NTQ1KQoKSGVpa28KCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
