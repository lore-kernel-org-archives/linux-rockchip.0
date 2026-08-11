Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F7BAC5DF63
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 15:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZYr1/i2q37/lb6GXpBYC+aeYLFXP5DDxew8kh2y4PVw=; b=ITflUHGPNbQD+K
	hZ3fo4Tz6TuwN3y6IRGLHHpCRPE89bT4Mw5A/4nVxWSEoKLbhfrBMNjsvbWHAHeadvh5iAKhLeTyC
	WTxEgyDaUV0pLcQREd3ACAcq0ZNnSPbU5IHdksEu2AZq7s+kA7kKVghj8CLTW7Y7qLQ0UPXkf9Fru
	GNahSkb7bmaB1AftgX2+tocSe8/ch/vsuBoLKd2OK3cUl2lBqe9RWnBTB8Ij/k3hhD3Y8sp1INHq6
	TucQJBYAeC+rB2cR9hB5WXFoJ7WjRqzTDeDKD2BpR4tCNmyoHidH/QEufbszlE3aPqhJxRoaP9udB
	vU7j/Tsn08cTz1NGt6Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtofc-0000000ENL0-2HOH;
	Tue, 11 Aug 2026 15:45:40 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtofL-0000000EMvy-1rEY;
	Tue, 11 Aug 2026 15:45:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1786463117;
	bh=OR69W3Sz5Kv9VlsRaW6N29FL/WGFCcoWCD8adSWa8mw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ai32/2bgJgCkLqKOwnoiKWvft6WMsfg8u4xSsC2GCzxYvo1bdKB0fBoE1do6DOmZ2
	 8p3ow5OkPMoe3DxTSCCGRHklxO88EGLQ63W8PMUdWv3XDnBW5jQbvFnoNPXJA6Enf7
	 T5AEjpTdapwaWZPAP9KmQgxELej5ztSyDr4IE2/36PovFzyCofvJVx9yy9ShQ0FtWI
	 0SJPRD2K1Q5V8o73yI8xdOKQhITL/elG0CpwS46vFqrkUEnPGDU3dU8UrtbV1dzGd3
	 8FiyAj4ttB4kEtqD8+ZkLnsufYVVukODchSWeO21JWAGpZwlamV9Z5Or4KMDFeQkMp
	 raCh7f0pxpNwg==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B928517E0F83;
	Tue, 11 Aug 2026 17:45:17 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 11 Aug 2026 18:44:47 +0300
Subject: [PATCH v6 06/10] phy: rockchip: samsung-hdptx: Drop TMDS rate
 setup workaround
MIME-Version: 1.0
Message-Id: <20260811-hdptx-clk-fixes-v6-6-75bca0ee5753@collabora.com>
References: <20260811-hdptx-clk-fixes-v6-0-75bca0ee5753@collabora.com>
In-Reply-To: <20260811-hdptx-clk-fixes-v6-0-75bca0ee5753@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Thomas_Niederpr=C3=BCm?= <dubito@online.de>, 
 Simon Wright <simon@symple.nz>, Diederik de Haas <diederik@cknow-tech.com>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_084523_659932_4828A5B5 
X-CRM114-Status: GOOD (  10.57  )
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
NiBMVFMKUmV2aWV3ZWQtYnk6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KUmV2
aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9z
cy5xdWFsY29tbS5jb20+ClNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3Rp
YW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Ci0tLQogZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5
LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYyB8IDE5ICsrKy0tLS0tLS0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCmluZGV4IGMyNGU3
ZjI4NDE3MC4uNjk0MWRhYzlkZWI0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCisrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMKQEAgLTE2NjAsMjIgKzE2NjAsNiBAQCBzdGF0aWMg
aW50IHJrX2hkcHR4X3BoeV9wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCiAJZW51bSBwaHlfbW9k
ZSBtb2RlID0gcGh5X2dldF9tb2RlKHBoeSk7CiAJaW50IHJldCwgbGFuZTsKIAotCWlmIChtb2Rl
ICE9IFBIWV9NT0RFX0RQKSB7Ci0JCWlmICghaGRwdHgtPmhkbWlfY2ZnLnJhdGUgJiYgaGRwdHgt
PmhkbWlfY2ZnLm1vZGUgIT0gUEhZX0hETUlfTU9ERV9GUkwpIHsKLQkJCS8qCi0JCQkgKiBGSVhN
RTogVGVtcG9yYXJ5IHdvcmthcm91bmQgdG8gc2V0dXAgVE1EUyBjaGFyIHJhdGUKLQkJCSAqIGZy
b20gdGhlIFJLIERXIEhETUkgUVAgYnJpZGdlIGRyaXZlci4KLQkJCSAqIFdpbGwgYmUgcmVtb3Zl
ZCBhcyBzb29uIHRoZSBzd2l0Y2ggdG8gdGhlIEhETUkgUEhZCi0JCQkgKiBjb25maWd1cmF0aW9u
IEFQSSBoYXMgYmVlbiBjb21wbGV0ZWQgb24gYm90aCBlbmRzLgotCQkJICovCi0JCQloZHB0eC0+
aGRtaV9jZmcucmF0ZSA9IHBoeV9nZXRfYnVzX3dpZHRoKGhkcHR4LT5waHkpICYgMHhmZmZmZmZm
OwotCQkJaGRwdHgtPmhkbWlfY2ZnLnJhdGUgKj0gMTAwOwotCQl9Ci0KLQkJZGV2X2RiZyhoZHB0
eC0+ZGV2LCAiJXMgcmF0ZT0lbGx1IGJwYz0ldVxuIiwgX19mdW5jX18sCi0JCQloZHB0eC0+aGRt
aV9jZmcucmF0ZSwgaGRwdHgtPmhkbWlfY2ZnLmJwYyk7Ci0JfQotCiAJcmV0ID0gcmtfaGRwdHhf
cGh5X2NvbnN1bWVyX2dldChoZHB0eCk7CiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKQEAgLTE3
MDQsNiArMTY4OCw5IEBAIHN0YXRpYyBpbnQgcmtfaGRwdHhfcGh5X3Bvd2VyX29uKHN0cnVjdCBw
aHkgKnBoeSkKIAkJaWYgKHJldCkKIAkJCXJrX2hkcHR4X3BoeV9jb25zdW1lcl9wdXQoaGRwdHgs
IHRydWUpOwogCX0gZWxzZSB7CisJCWRldl9kYmcoaGRwdHgtPmRldiwgIiVzIHJhdGU9JWxsdSBi
cGM9JXVcbiIsIF9fZnVuY19fLAorCQkJaGRwdHgtPmhkbWlfY2ZnLnJhdGUsIGhkcHR4LT5oZG1p
X2NmZy5icGMpOworCiAJCWlmIChoZHB0eC0+cGxsX2NvbmZpZ19kaXJ0eSkKIAkJCXJldCA9IHJr
X2hkcHR4X3BsbF9jbW5fY29uZmlnKGhkcHR4KTsKIAoKLS0gCjIuNTUuMAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
