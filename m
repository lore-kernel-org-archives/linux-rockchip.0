Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AC35CA5FF5
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 00:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtiX8sdaZCfLT4RSrle4PSsd7C/THZleN5NI+lxejOs=; b=kaUb8a8ApIdMLc
	cMjXs1ZCcTNhDlwQ11Iy7BKv3K2fuMN+6dl+KXgoqBFKy+z6EMPokHkH78RZgXmXNF/gWVBc7EQz8
	j/KTSw+EXbHCkyIDlalmnniq7qKQz54wet/7LDqAUIHW/117DQCOo4d7jsQ9qYxyIuiYnKfbJgAXl
	V+uKiedqsHO4D2OCT1UVLh9n0jWSEF0HSo85vPA/Tx1UsKp+rjK3/YesjgJpbtF1txfo58qM/XStF
	WoPMfdSBqUflMH/gB9HmOy+uYzG+2Sy1PPOKQNbiO84RvHhU8WMqe5rDWU+YYqUhNLQ90WS5i7Teq
	/CYljnctySnLr//YdQaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDWjK-0000000FW3A-3ey5;
	Mon, 05 Oct 2026 00:38:58 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDWjC-0000000FVw2-3Vd4;
	Mon, 05 Oct 2026 00:38:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1791160727;
	bh=jwLPOEGGJOoXjOKVp5mZSiU34m6SGcdTjMrVAQrZjI0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=EcZO59ibF7X9WX2Xow2DK2LYFJr5TpLjA7UQ6kd04WO5cLWhpRMbanYcYTZ2CNM35
	 7sXsYi46zXbuJlizP3JT6vUnpbZhOn8MCoCFTxah3Y/NBWHUbPfrk+NdYJ1+GhdyY4
	 sYEFKRe5hpf2fyh+PJNLWeNQZwtaZAnaUWhmuWlw9iwrTlQpqxvGF3hMi9iE8f/w7p
	 KaPEITlIR1GcJu9odAKPkTwUuGbFV5AeKLHko7SATZYh7RPyKVbxTRL5Uf8D5RiWC4
	 /RB3ta0cNeiANXh5KLmn6cBGb+3CW/MLAB26+cNqu/k2V1nCn2USFWyGMxDcryqgo4
	 LNg6j8lNMp7bw==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id ECC8F17E0CA6;
	Mon, 05 Oct 2026 02:38:46 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 05 Oct 2026 03:38:03 +0300
Subject: [PATCH v12 02/16] drm/bridge: dw-hdmi-qp: Provide
 .{enable,disable}_hpd() PHY ops
MIME-Version: 1.0
Message-Id: <20261005-dw-hdmi-qp-scramb-v12-2-195157ba0b40@collabora.com>
References: <20261005-dw-hdmi-qp-scramb-v12-0-195157ba0b40@collabora.com>
In-Reply-To: <20261005-dw-hdmi-qp-scramb-v12-0-195157ba0b40@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Algea Cao <algea.cao@rock-chips.com>, Daniel Stone <daniels@collabora.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Maud Spierings <maud_spierings@hotmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>, 
 =?utf-8?q?Robin_R=C3=A4ber?= <robin.raebi@gmail.com>, 
 Igor Paunovic <royalnet026@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_173851_058139_DAC0B57F 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
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

SW1wbGVtZW50IHRoZSAuaHBkX2VuYWJsZSgpIGFuZCAuaHBkX2Rpc2FibGUoKSBicmlkZ2UgY2Fs
bGJhY2tzIGFuZApleHRlbmQgZHdfaGRtaV9xcF9waHlfb3BzIHdpdGggY29ycmVzcG9uZGluZyBo
b29rcy4KClRoaXMgZW5hYmxlcyB0aGUgRFJNIGNvcmUgdG8gY29udHJvbCB3aGVuIEhQRCBpbnRl
cnJ1cHRzIGFyZSBhcm1lZCwKd2hpY2ggaXMgbmVlZGVkIHRvIHByZXZlbnQgcHJlbWF0dXJlIGlu
dGVycnVwdCBkZWxpdmVyeSBiZWZvcmUgdGhlCmNvbm5lY3RvciBpcyBmdWxseSBpbml0aWFsaXpl
ZCwgYW5kIHRvIHByb3Blcmx5IHF1aWVzY2UgSFBEIGR1cmluZwpzdXNwZW5kLgoKVGVzdGVkLWJ5
OiBNYXVkIFNwaWVyaW5ncyA8bWF1ZF9zcGllcmluZ3NAaG90bWFpbC5jb20+ClRlc3RlZC1ieTog
RGllZGVyaWsgZGUgSGFhcyA8ZGllZGVyaWtAY2tub3ctdGVjaC5jb20+ICAjIE5hbm9QQy1UNiBM
VFMsIFJvY2sgNUIKVGVzdGVkLWJ5OiBSb2JpbiBSw6RiZXIgPHJvYmluLnJhZWJpQGdtYWlsLmNv
bT4KVGVzdGVkLWJ5OiBJZ29yIFBhdW5vdmljIDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+ICMgUksz
NTg4IE9yYW5nZSBQaSA1IFBsdXMsIGR1YWwgSERNSQpTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBD
aW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5jIHwgMTggKysrKysrKysrKysrKysr
KysrCiBpbmNsdWRlL2RybS9icmlkZ2UvZHdfaGRtaV9xcC5oICAgICAgICAgICAgICB8ICAyICsr
CiAyIGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWktcXAuYyBiL2RyaXZlcnMvZ3B1L2RybS9i
cmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5jCmluZGV4IDlhYmNlYTkyYjcyMC4uYmVkNzQzY2Uz
OTA5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkt
cXAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWktcXAuYwpA
QCAtOTc0LDYgKzk3NCwyMiBAQCBzdGF0aWMgaW50IGR3X2hkbWlfcXBfY2VjX3RyYW5zbWl0KHN0
cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UsIHU4IGF0dGVtcHRzLAogI2RlZmluZSBkd19oZG1pX3Fw
X2NlY190cmFuc21pdCBOVUxMCiAjZW5kaWYgLyogQ09ORklHX0RSTV9EV19IRE1JX1FQX0NFQyAq
LwogCitzdGF0aWMgdm9pZCBkd19oZG1pX3FwX2JyaWRnZV9ocGRfZW5hYmxlKHN0cnVjdCBkcm1f
YnJpZGdlICpicmlkZ2UpCit7CisJc3RydWN0IGR3X2hkbWlfcXAgKmhkbWkgPSBicmlkZ2UtPmRy
aXZlcl9wcml2YXRlOworCisJaWYgKGhkbWktPnBoeS5vcHMtPmVuYWJsZV9ocGQpCisJCWhkbWkt
PnBoeS5vcHMtPmVuYWJsZV9ocGQoaGRtaSwgaGRtaS0+cGh5LmRhdGEpOworfQorCitzdGF0aWMg
dm9pZCBkd19oZG1pX3FwX2JyaWRnZV9ocGRfZGlzYWJsZShzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJp
ZGdlKQoreworCXN0cnVjdCBkd19oZG1pX3FwICpoZG1pID0gYnJpZGdlLT5kcml2ZXJfcHJpdmF0
ZTsKKworCWlmIChoZG1pLT5waHkub3BzLT5kaXNhYmxlX2hwZCkKKwkJaGRtaS0+cGh5Lm9wcy0+
ZGlzYWJsZV9ocGQoaGRtaSwgaGRtaS0+cGh5LmRhdGEpOworfQorCiBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGRybV9icmlkZ2VfZnVuY3MgZHdfaGRtaV9xcF9icmlkZ2VfZnVuY3MgPSB7CiAJLmF0b21p
Y19nZXRfb3V0cHV0X2J1c19mbXRzID0gZHJtX2F0b21pY19oZWxwZXJfYnJpZGdlX2dldF9oZG1p
X291dHB1dF9idXNfZm10cywKIAkuYXRvbWljX2R1cGxpY2F0ZV9zdGF0ZSA9IGRybV9hdG9taWNf
aGVscGVyX2JyaWRnZV9kdXBsaWNhdGVfc3RhdGUsCkBAIC05ODIsNiArOTk4LDggQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBkcm1fYnJpZGdlX2Z1bmNzIGR3X2hkbWlfcXBfYnJpZGdlX2Z1bmNzID0g
ewogCS5hdG9taWNfZW5hYmxlID0gZHdfaGRtaV9xcF9icmlkZ2VfYXRvbWljX2VuYWJsZSwKIAku
YXRvbWljX2Rpc2FibGUgPSBkd19oZG1pX3FwX2JyaWRnZV9hdG9taWNfZGlzYWJsZSwKIAkuZGV0
ZWN0ID0gZHdfaGRtaV9xcF9icmlkZ2VfZGV0ZWN0LAorCS5ocGRfZW5hYmxlID0gZHdfaGRtaV9x
cF9icmlkZ2VfaHBkX2VuYWJsZSwKKwkuaHBkX2Rpc2FibGUgPSBkd19oZG1pX3FwX2JyaWRnZV9o
cGRfZGlzYWJsZSwKIAkuZWRpZF9yZWFkID0gZHdfaGRtaV9xcF9icmlkZ2VfZWRpZF9yZWFkLAog
CS5oZG1pX3RtZHNfY2hhcl9yYXRlX3ZhbGlkID0gZHdfaGRtaV9xcF9icmlkZ2VfdG1kc19jaGFy
X3JhdGVfdmFsaWQsCiAJLmhkbWlfY2xlYXJfYXZpX2luZm9mcmFtZSA9IGR3X2hkbWlfcXBfYnJp
ZGdlX2NsZWFyX2F2aV9pbmZvZnJhbWUsCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9icmlkZ2Uv
ZHdfaGRtaV9xcC5oIGIvaW5jbHVkZS9kcm0vYnJpZGdlL2R3X2hkbWlfcXAuaAppbmRleCA2ZWE5
YzU2MWNmZWYuLmI4MGZjZWZmYzMxNSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vYnJpZGdlL2R3
X2hkbWlfcXAuaAorKysgYi9pbmNsdWRlL2RybS9icmlkZ2UvZHdfaGRtaV9xcC5oCkBAIC0xNyw2
ICsxNyw4IEBAIHN0cnVjdCBkd19oZG1pX3FwX3BoeV9vcHMgewogCXZvaWQgKCpkaXNhYmxlKShz
dHJ1Y3QgZHdfaGRtaV9xcCAqaGRtaSwgdm9pZCAqZGF0YSk7CiAJZW51bSBkcm1fY29ubmVjdG9y
X3N0YXR1cyAoKnJlYWRfaHBkKShzdHJ1Y3QgZHdfaGRtaV9xcCAqaGRtaSwgdm9pZCAqZGF0YSk7
CiAJdm9pZCAoKnNldHVwX2hwZCkoc3RydWN0IGR3X2hkbWlfcXAgKmhkbWksIHZvaWQgKmRhdGEp
OworCXZvaWQgKCplbmFibGVfaHBkKShzdHJ1Y3QgZHdfaGRtaV9xcCAqaGRtaSwgdm9pZCAqZGF0
YSk7CisJdm9pZCAoKmRpc2FibGVfaHBkKShzdHJ1Y3QgZHdfaGRtaV9xcCAqaGRtaSwgdm9pZCAq
ZGF0YSk7CiB9OwogCiBzdHJ1Y3QgZHdfaGRtaV9xcF9wbGF0X2RhdGEgewoKLS0gCjIuNTUuMAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
