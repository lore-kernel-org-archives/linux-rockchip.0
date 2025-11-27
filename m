Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7A70D11183
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Nov 2025 10:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EY2K/42w5VWUHNqG/8mMB0zjckpXzrUOAgi/9HomA3I=; b=4I3xdAet4RYXYD
	J6vTaotMRwXukIw/3/gaoTCHcsGZRW4Nx60h9YBlFCbJ0S3veR62H2Yw+TyDPLxZhwjHjm4rFk/Rp
	ho3xsM+vbQX0WyzxEyhyd1IjhXxwAY+kc8KxVdl9OBlrZx3Oc3mBzUuBpF83B179wGGyp89DCusOT
	7MOhfM9x6biusPi8C7RNrBb1pqDUFiX76PGp1MZoVK1DYm4hXWt9WUy9hJTqcTlTxPCfG/LQ2GySM
	gy6ATBI6sNgTNOJ1QGCUlDVNi0/67P634IBkDSPWPnYEc25cLIFT1veC0+p7ruVfvpL+Z5nG/73iL
	MKjzE6RGC/aj9JL0Z9gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOZD7-0000000GNPS-0VnR;
	Thu, 27 Nov 2025 10:26:49 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOZD3-0000000GNM4-1PeY;
	Thu, 27 Nov 2025 10:26:46 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 33335C16A1C;
	Thu, 27 Nov 2025 10:26:20 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 708376072A;
	Thu, 27 Nov 2025 10:26:35 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4C0F0102F275A;
	Thu, 27 Nov 2025 11:26:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764239194; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=lFvV4pIsDLWnAbmZyAdOTJZYJAocNppm+NL9MdS0/y0=;
	b=lWPPtEyMjs2+lAQ/ndRPyoApXSxEuBSRuO5MvPTgTBY/+XSq1eerRt7s6xaVmkjelp7W1f
	416ddSEWPnyfxy4eSHgieZcESh1ye8Jjzs4dxgw8CjIVnCZKAHqwlY7fkvF//WZhv8F2Ad
	wA6bfpUEykr7Oz+av1gpGrfAq6flT3j41e7Gts9tO4cXi/sh+GmQ0o/AhaQ4PPArA7xqUO
	Gy4X6znMCIR/9+FIqxfI8hJd/loPoc2HvirkiHOUiIzqEALJ8WZ3eq4eJtN218LFOy1++a
	qUAILd+aYh5OyQwTdP381XxKUcDw3FicZEA7AbqpgFrAdiaBpKByeF+ffzBmjw==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Thu, 27 Nov 2025 11:26:17 +0100
Subject: [PATCH v2 2/2] phy: rockchip: inno-usb2: fix communication
 disruption in gadget mode
MIME-Version: 1.0
Message-Id: <20251127-rk3308-fix-usb-gadget-phy-disconnect-v2-2-dac8a02cd2ca@bootlin.com>
References: <20251127-rk3308-fix-usb-gadget-phy-disconnect-v2-0-dac8a02cd2ca@bootlin.com>
In-Reply-To: <20251127-rk3308-fix-usb-gadget-phy-disconnect-v2-0-dac8a02cd2ca@bootlin.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, William Wu <wulf@rock-chips.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, 
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>, 
 Alan Stern <stern@rowland.harvard.edu>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, 
 =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_022645_673288_90CFFDD0 
X-CRM114-Status: GOOD (  16.95  )
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

V2hlbiB0aGUgT1RHIFVTQiBwb3J0IGlzIHVzZWQgdG8gcG93ZXIgdG8gU29DLCBjb25maWd1cmVk
IGFzIHBlcmlwaGVyYWwgYW5kCnVzZWQgaW4gZ2FkZ2V0IG1vZGUsIGNvbW11bmljYXRpb24gc3Rv
cHMgd2l0aG91dCBub3RpY2UgYWJvdXQgNiBzZWNvbmRzCmFmdGVyIHRoZSBnYWRnZXQgaXMgY29u
ZmlndXJlZCBhbmQgZW51bWVyYXRlZC4KClRoZSBwcm9ibGVtIHdhcyBvYnNlcnZlZCBvbiBhIFJh
ZHhhIFJvY2sgUGkgUyBib2FyZCwgd2hpY2ggY2FuIG9ubHkgYmUKcG93ZXJlZCBieSB0aGUgb25s
eSBVU0ItQyBjb25uZWN0b3IuIFRoYXQgY29ubmVjdG9yIGlzIHRoZSBvbmx5IG9uZSB1c2FibGUK
aW4gZ2FkZ2V0IG1vZGUuIFRoaXMgaW1wbGllcyB0aGUgVVNCIGNhYmxlIGlzIGNvbm5lY3RlZCBm
cm9tIGJlZm9yZSBib290CmFuZCBuZXZlciBkaXNjb25uZWN0cyB3aGlsZSB0aGUga2VybmVsIHJ1
bnMuCgpUaGUgcmVsYXRlZCBjb2RlIGZsb3cgaW4gdGhlIFBIWSBkcml2ZXIgY29kZSBjYW4gYmUg
c3VtbWFyaXplZCBhczoKCiAqIHRoZSBmaXJzdCB0aW1lIGNoZ19kZXRlY3Rfd29yayBzdGFydHMg
KDYgc2Vjb25kcyBhZnRlciBnYWRnZXQgaXMKICAgY29uZmlndXJlZCBhbmQgZW51bWVyYXRlZCkK
ICAgLT4gcm9ja2NoaXBfY2hnX2RldGVjdF93b3JrKCk6CiAgICAgICBpZiBjaGdfc3RhdGUgaXMg
VU5ERUZJTkVEOgogICAgICAgICAgcHJvcGVydHlfZW5hYmxlKGJhc2UsICZycGh5LT5waHlfY2Zn
LT5jaGdfZGV0Lm9wbW9kZSwgZmFsc2UpOyBbWV0KCiAqIHJvY2tjaGlwX2NoZ19kZXRlY3Rfd29y
aygpIGNoYW5nZXMgc3RhdGUgYW5kIHJlLXRyaWdnZXJzIGl0c2VsZiBhIGZldwogICB0aW1lcyB1
bnRpbCBpdCByZWFjaGVzIHRoZSBERVRFQ1RFRCBzdGF0ZToKICAgLT4gcm9ja2NoaXBfY2hnX2Rl
dGVjdF93b3JrKCk6CiAgICAgICBpZiBjaGdfc3RhdGUgaXMgREVURUNURUQ6CiAgICAgICAgICBw
cm9wZXJ0eV9lbmFibGUoYmFzZSwgJnJwaHktPnBoeV9jZmctPmNoZ19kZXQub3Btb2RlLCB0cnVl
KTsgW1pdCgpBdCBbWV0gYWxsIGV4aXN0aW5nIGNvbW11bmljYXRpb25zIHN0b3AuIEUuZy4gdXNp
bmcgYSBDREMgc2VyaWFsIGdhZGdldCwKdGhlIC9kZXYvdHR5KiBkZXZpY2VzIGFyZSBzdGlsbCBw
cmVzZW50IG9uIGJvdGggaG9zdCBhbmQgZGV2aWNlLCBidXQgbm8KZGF0YSBpcyB0cmFuc2ZlcnJl
ZCBhbnltb3JlLiBUaGUgbGF0ZXIgY2FsbCB3aXRoIGEgJ3RydWUnIGFyZ3VtZW50IGF0IFtaXQpk
b2VzIG5vdCByZXN0b3JlIGl0LgoKRHVlIHRvIHRoZSBsYWNrIG9mIGRvY3VtZW50YXRpb24sIHdo
YXQgY2hnX2RldC5vcG1vZGUgZG9lcyBleGFjdGx5IGlzIG5vdApjbGVhciwgaG93ZXZlciBieSBj
b2RlIGluc3BlY3Rpb24gaXQgc2VlbXMgcmVhc29uYWJsZSB0aGF0IGlzIGRpc2FibGVzCnNvbWV0
aGluZyBuZWVkZWQgdG8ga2VlcCB0aGUgY29tbXVuaWNhdGlvbiB3b3JraW5nLCBhbmQgdGVzdGlu
ZyBwcm92ZXMgdGhhdApkaXNhYmxpbmcgdGhlc2UgbGluZXMgbGV0cyBnYWRnZXQgbW9kZSBrZWVw
IHdvcmtpbmcuIFNvIHByZXZlbnQgY2hhbmdlcyB0bwpjaGdfZGV0Lm9wbW9kZSB3aGVuIHRoZXJl
IGlzIGEgY2FibGUgY29ubmVjdGVkIChWQlVTIHByZXNlbnQpLgoKRml4ZXM6IDk4ODk4ZjNiYzgz
YyAoInBoeTogcm9ja2NoaXAtaW5uby11c2IyOiBzdXBwb3J0IG90Zy1wb3J0IGZvciByazMzOTki
KQpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwpDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xrbWwvMjAyNTA0MTQxODU0NTguNzc2N2FhYmNAYm9vdHkvClNpZ25lZC1vZmYtYnk6IEx1
Y2EgQ2VyZXNvbGkgPGx1Y2EuY2VyZXNvbGlAYm9vdGxpbi5jb20+ClJldmlld2VkLWJ5OiBUaMOp
byBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4uY29tPgotLS0KIGRyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYyB8IDYgKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYwppbmRleCAwMTA2ZDdiN2FlMjQuLmU1ZWZhZTdiMDEz
NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNi
Mi5jCisrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYwpA
QCAtODMzLDcgKzgzMyw4IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX2NoZ19kZXRlY3Rfd29yayhz
dHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiAJCWlmICghcnBvcnQtPnN1c3BlbmRlZCAmJiAhdmJ1
c19hdHRhY2gpCiAJCQlyb2NrY2hpcF91c2IycGh5X3Bvd2VyX29mZihycG9ydC0+cGh5KTsKIAkJ
LyogcHV0IHRoZSBjb250cm9sbGVyIGluIG5vbi1kcml2aW5nIG1vZGUgKi8KLQkJcHJvcGVydHlf
ZW5hYmxlKGJhc2UsICZycGh5LT5waHlfY2ZnLT5jaGdfZGV0Lm9wbW9kZSwgZmFsc2UpOworCQlp
ZiAoIXZidXNfYXR0YWNoKQorCQkJcHJvcGVydHlfZW5hYmxlKGJhc2UsICZycGh5LT5waHlfY2Zn
LT5jaGdfZGV0Lm9wbW9kZSwgZmFsc2UpOwogCQkvKiBTdGFydCBEQ0QgcHJvY2Vzc2luZyBzdGFn
ZSAxICovCiAJCXJvY2tjaGlwX2NoZ19lbmFibGVfZGNkKHJwaHksIHRydWUpOwogCQlycGh5LT5j
aGdfc3RhdGUgPSBVU0JfQ0hHX1NUQVRFX1dBSVRfRk9SX0RDRDsKQEAgLTg5Niw3ICs4OTcsOCBA
QCBzdGF0aWMgdm9pZCByb2NrY2hpcF9jaGdfZGV0ZWN0X3dvcmsoc3RydWN0IHdvcmtfc3RydWN0
ICp3b3JrKQogCQlmYWxsdGhyb3VnaDsKIAljYXNlIFVTQl9DSEdfU1RBVEVfREVURUNURUQ6CiAJ
CS8qIHB1dCB0aGUgY29udHJvbGxlciBpbiBub3JtYWwgbW9kZSAqLwotCQlwcm9wZXJ0eV9lbmFi
bGUoYmFzZSwgJnJwaHktPnBoeV9jZmctPmNoZ19kZXQub3Btb2RlLCB0cnVlKTsKKwkJaWYgKCF2
YnVzX2F0dGFjaCkKKwkJCXByb3BlcnR5X2VuYWJsZShiYXNlLCAmcnBoeS0+cGh5X2NmZy0+Y2hn
X2RldC5vcG1vZGUsIHRydWUpOwogCQlyb2NrY2hpcF91c2IycGh5X290Z19zbV93b3JrKCZycG9y
dC0+b3RnX3NtX3dvcmsud29yayk7CiAJCWRldl9kYmcoJnJwb3J0LT5waHktPmRldiwgImNoYXJn
ZXIgPSAlc1xuIiwKIAkJCSBjaGdfdG9fc3RyaW5nKHJwaHktPmNoZ190eXBlKSk7CgotLSAKMi41
MS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
