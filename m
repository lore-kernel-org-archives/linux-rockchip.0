Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2EDACA6001
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 00:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DixCoE2583u7CLwo5z4VAjiplLXrVdjOFr6/ixcwAjA=; b=YVnfh2fg+mYVsj
	TNYjWmt754iwEsliownPpPKzs1/bhElAQzfvYhqcwAfomJae7o1ResxRsJ6Q6vQtadJ9vI2c9ujrj
	TV84vk9dWd1NaGKx//1fkf3bCZB8tHFbJLIbd0Kf0/X7RXg3gG1z/91YFPPLb0GwSvWPEj/VCWB/c
	o3Damac+dwGiNF3vXRlZRea+xgCB+kGk1YuVCFWdFdYwEKgDD6RKHZcw3xZ1UeI6zyOs5SE7+SFIp
	eXCA+2AnpkrMXwLdSR5nPmdLuEWiWwWpPIepAkYdNvwSX7zV1YMurAEepr18RrXH4alUQ6NbvdAnq
	tHO3j5Exg422Tyq9355A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDWjg-0000000FWh4-3zI9;
	Mon, 05 Oct 2026 00:39:20 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDWjG-0000000FVxX-19uQ;
	Mon, 05 Oct 2026 00:39:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1791160731;
	bh=CEmFIxcW5jMhb33b5/3+j7ej/shN2i0E61ZoLgFe8A0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=CL2M6mKZMdxcxjfmoGMz69ZGdZRldZy3JNytW3rPTaF8WLtSuEzvu3SlowAXOUZzD
	 VGPYDNrcEkV24orRFzim+rbd+Bys6gGxSwz6Lr7/iQ8y9H66gZIrtyAqRXd4M/kHPC
	 NaTkXB+4Yhr9kdfQkCRl80R5S6k/RITuqN1iCTEb/A0hXq7nI0DN33efLTRS7JJu1n
	 3xMz0d8Ph4okw69o5TfT/6AzMojIdfYyM4ZQym1keVLW3S6gRj9kyHCtQsRuSRc2YZ
	 ukj72B/Dww+VMOBp5LQI0BGAsJCoOxsCgVyP/stqXYRBkcHkl7T9+00ISK/QnQvwmD
	 fyQl9NifVTqoA==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1FC3517E1023;
	Mon, 05 Oct 2026 02:38:51 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 05 Oct 2026 03:38:09 +0300
Subject: [PATCH v12 08/16] drm/rockchip: dw_hdmi_qp: Add missing newlines
 in dev_err_probe() messages
MIME-Version: 1.0
Message-Id: <20261005-dw-hdmi-qp-scramb-v12-8-195157ba0b40@collabora.com>
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
X-CRM114-CacheID: sfid-20261004_173854_464070_3A6CE2AB 
X-CRM114-Status: UNSURE (   9.73  )
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

QWRkIHRoZSBtaXNzaW5nIHRyYWlsaW5nIG5ld2xpbmVzIHRvIGEgY291cGxlIG9mIGRldl9lcnJf
cHJvYmUoKSBjYWxscwppbiBkd19oZG1pX3FwX3JvY2tjaGlwX2JpbmQoKS4KCkZpeGVzOiBiNjcz
NmE0ZWEzZmEgKCJkcm0vcm9ja2NoaXA6IGR3X2hkbWlfcXA6IEltcHJvdmUgZXJyb3IgaGFuZGxp
bmcgd2l0aCBkZXZfZXJyX3Byb2JlKCkiKQpGaXhlczogZTFmN2I3Y2JkNzRjICgiZHJtL3JvY2tj
aGlwOiBkd19oZG1pX3FwOiBTd2l0Y2ggdG8gZHJtbV9lbmNvZGVyX2luaXQoKSIpClJldmlld2Vk
LWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgpUZXN0ZWQtYnk6IE1hdWQgU3Bp
ZXJpbmdzIDxtYXVkX3NwaWVyaW5nc0Bob3RtYWlsLmNvbT4KVGVzdGVkLWJ5OiBEaWVkZXJpayBk
ZSBIYWFzIDxkaWVkZXJpa0Bja25vdy10ZWNoLmNvbT4gICMgTmFub1BDLVQ2IExUUywgUm9jayA1
QgpUZXN0ZWQtYnk6IFJvYmluIFLDpGJlciA8cm9iaW4ucmFlYmlAZ21haWwuY29tPgpUZXN0ZWQt
Ynk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4gIyBSSzM1ODggT3Jhbmdl
IFBpIDUgUGx1cywgZHVhbCBIRE1JClNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8
Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYwppbmRleCA0MmYyNjI3ZTFhMDUuLmRmMGUyYmIxZWVk
YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2No
aXAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5j
CkBAIC02ODEsMTIgKzY4MSwxMiBAQCBzdGF0aWMgaW50IGR3X2hkbWlfcXBfcm9ja2NoaXBfYmlu
ZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2UgKm1hc3RlciwKIAlkcm1fZW5jb2Rl
cl9oZWxwZXJfYWRkKGVuY29kZXIsICZkd19oZG1pX3FwX3JvY2tjaGlwX2VuY29kZXJfaGVscGVy
X2Z1bmNzKTsKIAlyZXQgPSBkcm1tX2VuY29kZXJfaW5pdChkcm0sIGVuY29kZXIsIE5VTEwsIERS
TV9NT0RFX0VOQ09ERVJfVE1EUywgTlVMTCk7CiAJaWYgKHJldCkKLQkJcmV0dXJuIGRldl9lcnJf
cHJvYmUoaGRtaS0+ZGV2LCByZXQsICJGYWlsZWQgdG8gaW5pdCBlbmNvZGVyIik7CisJCXJldHVy
biBkZXZfZXJyX3Byb2JlKGhkbWktPmRldiwgcmV0LCAiRmFpbGVkIHRvIGluaXQgZW5jb2Rlclxu
Iik7CiAKIAloZG1pLT5oZG1pID0gZHdfaGRtaV9xcF9iaW5kKHBkZXYsIGVuY29kZXIsICZwbGF0
X2RhdGEpOwogCWlmIChJU19FUlIoaGRtaS0+aGRtaSkpCiAJCXJldHVybiBkZXZfZXJyX3Byb2Jl
KGhkbWktPmRldiwgUFRSX0VSUihoZG1pLT5oZG1pKSwKLQkJCQkgICAgICJGYWlsZWQgdG8gYmlu
ZCBkdy1oZG1pLXFwIik7CisJCQkJICAgICAiRmFpbGVkIHRvIGJpbmQgZHctaGRtaS1xcFxuIik7
CiAKIAljb25uZWN0b3IgPSBkcm1fYnJpZGdlX2Nvbm5lY3Rvcl9pbml0KGRybSwgZW5jb2Rlcik7
CiAJaWYgKElTX0VSUihjb25uZWN0b3IpKQoKLS0gCjIuNTUuMAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
