Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1026BCA6006
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 00:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYF0DdBEe5EEM2jEG9fsPgzH7pY/kLwFxpleUprzDDI=; b=fdc5Fg//WXh3/a
	TrrYUjZdMKmIEFj8ebvFKMsJa62+sBWK3bJOSE5oZvvxR0HLaqD3gU5xfYNE4c6kT10A/1CNvdZ2X
	jGQNaEJ562JYXRLDl8BNyT948WahtaEI53OYuB6EMhdimY+FA++1oxS1UDvBRa3PCE2YH29GxpObl
	Sg8lSEdBgwhJq4rP66aROcIdu+Ty65VT95hwZvSBQkwAhkwyVZVUw5vVlybe1l4CG5ypH2nn9Eg9z
	JT6wBHMeKX881AGZqk1a40bniau+wjkpSd6s0UDnHN//3RaF42slJXSiXLcEtxbJX8UlgwbE6MUg2
	yMFKrNULWM1pOr3EqFzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDWjN-0000000FW7h-3e4P;
	Mon, 05 Oct 2026 00:39:01 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDWjG-0000000FVxS-00xQ;
	Mon, 05 Oct 2026 00:38:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1791160729;
	bh=owHsNVM0dvIItDRqvO4tVUDptJq+19rU1q/eyPIbg64=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=c6g58vfN7hnIOEw6K8Dsr74QkZ5Ik1Ukn0Uge6+vCozNWP8CvQRgNo8oUDw/7fXGC
	 /v7gmnI/sS+7xYzazzZlACqEzFsVHLy1mUFQoxhFY9ifS/pyZ+2GUFt/1Y2SoGNiVf
	 kiB2Whi/ZQ0Pom8rlzZ5tX9L9jy656hBiQDnuGIiXn9mxB2Wm8LbOsM4c47nZoZ+Fx
	 Xstu8EgFk6BQunPluog5V17Ixeg4iLzRG8U0Fv4eWGr0pbiKCkAppL6IhVmrVPZlyP
	 4YAVPuIQyPUa70bJC1Bf7ktZyz5se3cHXtQyE9Ah+qqm+0dN9MOXmtO8E/zJntQlxH
	 hB+NmcoMEgzWA==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BA0FB17E0FB7;
	Mon, 05 Oct 2026 02:38:49 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 05 Oct 2026 03:38:07 +0300
Subject: [PATCH v12 06/16] drm/rockchip: dw_hdmi_qp: Fix invalid drvdata
 access in PM ops
MIME-Version: 1.0
Message-Id: <20261005-dw-hdmi-qp-scramb-v12-6-195157ba0b40@collabora.com>
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
 linux-arm-kernel@lists.infradead.org, Sashiko <sashiko-bot@kernel.org>, 
 =?utf-8?q?Robin_R=C3=A4ber?= <robin.raebi@gmail.com>, 
 Igor Paunovic <royalnet026@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_173854_196774_6A8F2A9B 
X-CRM114-Status: GOOD (  12.57  )
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

VGhlIHN5c3RlbS1zbGVlcCBQTSBjYWxsYmFja3MgZmV0Y2ggdGhlIGRyaXZlciBzdGF0ZSB2aWEK
ZGV2X2dldF9kcnZkYXRhKCkgYW5kIGRlcmVmZXJlbmNlIGl0IHVuY29uZGl0aW9uYWxseS4gIEhv
d2V2ZXIsIHRoZQpwbGF0Zm9ybSBkZXZpY2UgaXMgYm91bmQgYnkgLT5wcm9iZSgpLCB3aGljaCBt
ZXJlbHkgcmVnaXN0ZXJzIGEKY29tcG9uZW50LCBoZW5jZSB0aGUgY2FsbGJhY2tzIG1heSB3ZWxs
IHJ1biB3aGVuIG5vIHZhbGlkIHN0YXRlIGlzCmF2YWlsYWJsZToKCi0gQmVmb3JlIHRoZSBhZ2dy
ZWdhdGUgZHJpdmVyIGNhbGxzIC0+YmluZCgpLCBlLmcuIHdoZW4gdGhlIHN5c3RlbQogIHN1c3Bl
bmRzIHdoaWxlIHByb2JpbmcgaXMgc3RpbGwgZGVmZXJyZWQgd2FpdGluZyBmb3IgdGhlIFZPUCwK
ICBkZXZfZ2V0X2RydmRhdGEoKSByZXR1cm5zIE5VTEwuCgotIEFmdGVyIC0+dW5iaW5kKCksIG9y
IHdoZW4gLT5iaW5kKCkgZmFpbHMgcGFzdCBwbGF0Zm9ybV9zZXRfZHJ2ZGF0YSgpLAogIGRydmRh
dGEgaXMgbGVmdCBwb2ludGluZyB0byBtZW1vcnkgb2J0YWluZWQgdmlhIGRybW1fa3phbGxvYygp
LCB3aGljaAogIGlzIHJlbGVhc2VkIHRvZ2V0aGVyIHdpdGggdGhlIERSTSBkZXZpY2UsIHdoaWxl
IHRoaXMgcGxhdGZvcm0gZGV2aWNlCiAgcmVtYWlucyBib3VuZCBhbmQgUE0tY2FwYWJsZS4KClB1
Ymxpc2ggdGhlIGRyaXZlciBkYXRhIG9ubHkgYWZ0ZXIgLT5iaW5kKCkgY29tcGxldGVzIHN1Y2Nl
c3NmdWxseSwgYW5kCmNsZWFyIGl0IGluIC0+dW5iaW5kKCkuICBUaGlzIGVuc3VyZXMgdGhhdCBh
IG5vbi1OVUxMIGRydmRhdGEgYWx3YXlzCnJlcHJlc2VudHMgbGl2ZSBzdGF0ZSwgYWxsb3dpbmcg
ZWFjaCBQTSBjYWxsYmFjayB0byByZWx5IG9uIGEgc2luZ2xlCk5VTEwgY2hlY2suCgpGaXhlczog
MTI4YTliZjhhY2UyICgiZHJtL3JvY2tjaGlwOiBBZGQgYmFzaWMgUkszNTg4IEhETUkgb3V0cHV0
IHN1cHBvcnQiKQpSZXBvcnRlZC1ieTogU2FzaGlrbyA8c2FzaGlrby1ib3RAa2VybmVsLm9yZz4K
Q2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA3MDIxNTE1NTAuOEUxNEQx
RjAwMEU5QHNtdHAua2VybmVsLm9yZy8KQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9h
bGwvMjAyNjA3MjMwMTQ4MTEuMUY5RjAxRjAwMEU5QHNtdHAua2VybmVsLm9yZy8KVGVzdGVkLWJ5
OiBSb2JpbiBSw6RiZXIgPHJvYmluLnJhZWJpQGdtYWlsLmNvbT4KVGVzdGVkLWJ5OiBJZ29yIFBh
dW5vdmljIDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+ICMgUkszNTg4IE9yYW5nZSBQaSA1IFBsdXMs
IGR1YWwgSERNSQpTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNp
b2NhbHRlYUBjb2xsYWJvcmEuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19o
ZG1pX3FwLXJvY2tjaGlwLmMgfCAxMiArKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9kd19oZG1pX3FwLXJvY2tjaGlwLmMKaW5kZXggOWM0Y2Y2OGQ3OWQ1Li42NDZhNGNiOTY4MzAg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pX3FwLXJvY2tjaGlw
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYwpA
QCAtNjgzLDggKzY4Myw2IEBAIHN0YXRpYyBpbnQgZHdfaGRtaV9xcF9yb2NrY2hpcF9iaW5kKHN0
cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVyLAogCWlmIChyZXQpCiAJCXJl
dHVybiBkZXZfZXJyX3Byb2JlKGhkbWktPmRldiwgcmV0LCAiRmFpbGVkIHRvIGluaXQgZW5jb2Rl
ciIpOwogCi0JcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgaGRtaSk7Ci0KIAloZG1pLT5oZG1p
ID0gZHdfaGRtaV9xcF9iaW5kKHBkZXYsIGVuY29kZXIsICZwbGF0X2RhdGEpOwogCWlmIChJU19F
UlIoaGRtaS0+aGRtaSkpCiAJCXJldHVybiBkZXZfZXJyX3Byb2JlKGhkbWktPmRldiwgUFRSX0VS
UihoZG1pLT5oZG1pKSwKQEAgLTY5NSw2ICs2OTMsOCBAQCBzdGF0aWMgaW50IGR3X2hkbWlfcXBf
cm9ja2NoaXBfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2UgKm1hc3RlciwK
IAkJcmV0dXJuIGRldl9lcnJfcHJvYmUoaGRtaS0+ZGV2LCBQVFJfRVJSKGNvbm5lY3RvciksCiAJ
CQkJICAgICAiRmFpbGVkIHRvIGluaXQgYnJpZGdlIGNvbm5lY3RvclxuIik7CiAKKwlwbGF0Zm9y
bV9zZXRfZHJ2ZGF0YShwZGV2LCBoZG1pKTsKKwogCXJldHVybiAwOwogfQogCkBAIC03MDQsNiAr
NzA0LDggQEAgc3RhdGljIHZvaWQgZHdfaGRtaV9xcF9yb2NrY2hpcF91bmJpbmQoc3RydWN0IGRl
dmljZSAqZGV2LAogewogCXN0cnVjdCByb2NrY2hpcF9oZG1pX3FwICpoZG1pID0gZGV2X2dldF9k
cnZkYXRhKGRldik7CiAKKwlkZXZfc2V0X2RydmRhdGEoZGV2LCBOVUxMKTsKKwogCWNhbmNlbF9k
ZWxheWVkX3dvcmtfc3luYygmaGRtaS0+aHBkX3dvcmspOwogfQogCkBAIC03MjYsNyArNzI4LDgg
QEAgc3RhdGljIGludCBfX21heWJlX3VudXNlZCBkd19oZG1pX3FwX3JvY2tjaGlwX3N1c3BlbmQo
c3RydWN0IGRldmljZSAqZGV2KQogewogCXN0cnVjdCByb2NrY2hpcF9oZG1pX3FwICpoZG1pID0g
ZGV2X2dldF9kcnZkYXRhKGRldik7CiAKLQlkd19oZG1pX3FwX3N1c3BlbmQoZGV2LCBoZG1pLT5o
ZG1pKTsKKwlpZiAoaGRtaSkKKwkJZHdfaGRtaV9xcF9zdXNwZW5kKGRldiwgaGRtaS0+aGRtaSk7
CiAKIAlyZXR1cm4gMDsKIH0KQEAgLTczNSw2ICs3MzgsOSBAQCBzdGF0aWMgaW50IF9fbWF5YmVf
dW51c2VkIGR3X2hkbWlfcXBfcm9ja2NoaXBfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKIHsK
IAlzdHJ1Y3Qgcm9ja2NoaXBfaGRtaV9xcCAqaGRtaSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwog
CisJaWYgKCFoZG1pKQorCQlyZXR1cm4gMDsKKwogCWhkbWktPmN0cmxfb3BzLT5pb19pbml0KGhk
bWkpOwogCiAJZHdfaGRtaV9xcF9yZXN1bWUoZGV2LCBoZG1pLT5oZG1pKTsKCi0tIAoyLjU1LjAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
