Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5703C531F7
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 19:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LO1wC+UAX8X0AJ4OpsdRMz1uZS6+ADo/7fYUhdOw68=; b=OMcL0yFRxziG2+
	15jDIw6FKjxaoQ7g8V33rjQc6W0X+WNY2iQhAk646BIANtSp+GAT1s1FWeTrsQaj1p4kisdalvLVi
	B7mqVF4jMKyDNn3ve542k6sIrCVnVridAV8Q28eNonyTiohkJR2pl9MoSn3q7mzKfQrVd79mgwQ13
	D5hyZFVnCIh8O8IQrGH3bx2yu5ues6FFfZvTHAqmXJG2UqF3EKN0wZSqpOW25K2BoqlZXgWx1QWeu
	/JpeZ0Vp37Vt0MLOtcsjcseGHQRswihhXYAQJDFf9Z+Kg9LfaHMQbsnqdstA6Mp+vQkTjbdjx1lT0
	Qcj0Rl2tXs7nNlt/BVsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmzJI-0000000Ez8n-1vWp;
	Thu, 23 Jul 2026 19:42:24 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmzIo-0000000EykL-3tMC;
	Thu, 23 Jul 2026 19:41:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784835711;
	bh=FA6gjb7yFKww1Ld0T7YnzSA/v31jHcXY9TgmognE7xI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=LQSFi6NUPLkoLFJprgnNXsnuPUlUhF2CcJo4R1InI8d2146/7s0p4EszApB3rAUuM
	 6VJGB/yMKpX0Rt52z5DCrhtGj8bB+PLWK99B76YD756NSixPzW7iz6IzQXodGjbXUs
	 AQCEcOplFzd81kKwE4a4HDjZZtXa42BV4PhOpKhYh4KHazUK5Rzi+7h8EmpTui7Ljo
	 sJCC1qUdln/c6rOPBVmL7cDdwKVOVWAmnyc/yo+Tkza30dmEYO78hwi8n6ofs51Da5
	 cpvkMH4jmDggDX/yU7xXww5vnJH5nvOHKmBO9yeP0hJGQghbyBPthFllWNRISQnW3C
	 +9SfkOLtjNDIw==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0B08F17E124A;
	Thu, 23 Jul 2026 21:41:51 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 23 Jul 2026 22:41:49 +0300
Subject: [PATCH v5 06/10] phy: rockchip: samsung-hdptx: Drop TMDS rate
 setup workaround
MIME-Version: 1.0
Message-Id: <20260723-hdptx-clk-fixes-v5-6-8e786067865f@collabora.com>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
In-Reply-To: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Thomas_Niederpr=C3=BCm?= <dubito@online.de>, 
 Simon Wright <simon@symple.nz>, Diederik de Haas <diederik@cknow-tech.com>, 
 Andy Yan <andy.yan@rock-chips.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_124155_126838_3831FE66 
X-CRM114-Status: GOOD (  10.22  )
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

U2luY2UgY29tbWl0IGJhOWMyZmUxOGMxNyAoImRybS9yb2NrY2hpcDogZHdfaGRtaV9xcDogU3dp
dGNoIHRvCnBoeV9jb25maWd1cmUoKSIpIHRoZSBUTURTIHJhdGUgc2V0dXAgZG9lc24ndCByZWx5
IGFueW1vcmUgb24gdGhlCnVuY29udmVudGlvbmFsIHVzYWdlIG9mIHRoZSBidXMgd2lkdGgsIGlu
c3RlYWQgaXQgaXMgbWFuYWdlZCBleGNsdXNpdmVseQp0aHJvdWdoIHRoZSBIRE1JIFBIWSBjb25m
aWd1cmF0aW9uIEFQSS4KCkRyb3AgdGhlIG5vdyBvYnNvbGV0ZSB3b3JrYXJvdW5kIHRvIHJldHJp
ZXZlIHRoZSBUTURTIGNoYXJhY3RlciByYXRlIHZpYQpwaHlfZ2V0X2J1c193aWR0aCgpIGR1cmlu
ZyBwb3dlcl9vbigpLgoKVGVzdGVkLWJ5OiBUaG9tYXMgTmllZGVycHLDvG0gPGR1Yml0b0Bvbmxp
bmUuZGU+ClRlc3RlZC1ieTogU2ltb24gV3JpZ2h0IDxzaW1vbkBzeW1wbGUubno+ClRlc3RlZC1i
eTogRGllZGVyaWsgZGUgSGFhcyA8ZGllZGVyaWtAY2tub3ctdGVjaC5jb20+ICAjIE5hbm9QQy1U
NiBMVFMKUmV2aWV3ZWQtYnk6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KU2ln
bmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFi
b3JhLmNvbT4KLS0tCiBkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1o
ZHB0eC5jIHwgMTkgKysrLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMKaW5kZXggNzkyZWI1Nzc1NWViLi4zMWFiZmY1YWRh
OWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5n
LWhkcHR4LmMKKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmct
aGRwdHguYwpAQCAtMTY2MCwyMiArMTY2MCw2IEBAIHN0YXRpYyBpbnQgcmtfaGRwdHhfcGh5X3Bv
d2VyX29uKHN0cnVjdCBwaHkgKnBoeSkKIAllbnVtIHBoeV9tb2RlIG1vZGUgPSBwaHlfZ2V0X21v
ZGUocGh5KTsKIAlpbnQgcmV0LCBsYW5lOwogCi0JaWYgKG1vZGUgIT0gUEhZX01PREVfRFApIHsK
LQkJaWYgKCFoZHB0eC0+aGRtaV9jZmcucmF0ZSAmJiBoZHB0eC0+aGRtaV9jZmcubW9kZSAhPSBQ
SFlfSERNSV9NT0RFX0ZSTCkgewotCQkJLyoKLQkJCSAqIEZJWE1FOiBUZW1wb3Jhcnkgd29ya2Fy
b3VuZCB0byBzZXR1cCBUTURTIGNoYXIgcmF0ZQotCQkJICogZnJvbSB0aGUgUksgRFcgSERNSSBR
UCBicmlkZ2UgZHJpdmVyLgotCQkJICogV2lsbCBiZSByZW1vdmVkIGFzIHNvb24gdGhlIHN3aXRj
aCB0byB0aGUgSERNSSBQSFkKLQkJCSAqIGNvbmZpZ3VyYXRpb24gQVBJIGhhcyBiZWVuIGNvbXBs
ZXRlZCBvbiBib3RoIGVuZHMuCi0JCQkgKi8KLQkJCWhkcHR4LT5oZG1pX2NmZy5yYXRlID0gcGh5
X2dldF9idXNfd2lkdGgoaGRwdHgtPnBoeSkgJiAweGZmZmZmZmY7Ci0JCQloZHB0eC0+aGRtaV9j
ZmcucmF0ZSAqPSAxMDA7Ci0JCX0KLQotCQlkZXZfZGJnKGhkcHR4LT5kZXYsICIlcyByYXRlPSVs
bHUgYnBjPSV1XG4iLCBfX2Z1bmNfXywKLQkJCWhkcHR4LT5oZG1pX2NmZy5yYXRlLCBoZHB0eC0+
aGRtaV9jZmcuYnBjKTsKLQl9Ci0KIAlyZXQgPSBya19oZHB0eF9waHlfY29uc3VtZXJfZ2V0KGhk
cHR4KTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwpAQCAtMTcwNCw2ICsxNjg4LDkgQEAgc3Rh
dGljIGludCBya19oZHB0eF9waHlfcG93ZXJfb24oc3RydWN0IHBoeSAqcGh5KQogCQlpZiAocmV0
KQogCQkJcmtfaGRwdHhfcGh5X2NvbnN1bWVyX3B1dChoZHB0eCwgdHJ1ZSk7CiAJfSBlbHNlIHsK
KwkJZGV2X2RiZyhoZHB0eC0+ZGV2LCAiJXMgcmF0ZT0lbGx1IGJwYz0ldVxuIiwgX19mdW5jX18s
CisJCQloZHB0eC0+aGRtaV9jZmcucmF0ZSwgaGRwdHgtPmhkbWlfY2ZnLmJwYyk7CisKIAkJaWYg
KGhkcHR4LT5wbGxfY29uZmlnX2RpcnR5KQogCQkJcmV0ID0gcmtfaGRwdHhfcGxsX2Ntbl9jb25m
aWcoaGRwdHgpOwogCgotLSAKMi41NS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
