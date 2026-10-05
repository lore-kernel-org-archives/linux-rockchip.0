Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB7E9CA5FFC
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 00:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8jbgzMEu7adtDg1VbKem9wZ2vuCtou3Gv4IhN+6QHM=; b=GHnZ1B58D8hAIG
	r0SflxyIJ17uPni1VmHbaLDd4PLZtpApxtkuQOJPBwoXNNpuZgF9bIx7Q0uk1sgEGc3hc4tM88z6V
	XOWgry2Zeu6yHlQZLfsZdwYArHtEQcEPoIjCKONqOYomt/k5OalaolLcS+PfDIEtfCkn26WiJsaQ8
	FGhv1hq31izcaT4BQKF8HcL7WQ9PqyXfjtNuKu4HgqkRAvvkIudN0B9Pw8ejUBKRdv9I/VNC/9dZm
	dwAOEGcTSEmQXbej4kOY4wiWco1SxtoucODKV9dbhwBPQQPGQxlf2hoJ0G5sqMt4WrRUraBQWL7OJ
	R+AVesudweegnKRc+Qjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDWjk-0000000FWor-0LHS;
	Mon, 05 Oct 2026 00:39:24 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDWjK-0000000FW0r-2hkj;
	Mon, 05 Oct 2026 00:39:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1791160736;
	bh=7fGQZHsiMEI+KvEu/Wd3yCNxcl4JUPPlRnzvM//GmE8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Ft5m6Ht/vGUOTYpNAzD91IblMMefBa2GGW/km6qVPt0aLN/LqvF82XDVAZo0EwbLE
	 A+bJLD7FVW45I8FZ8B7YrdY3muJirznAYUAdSaeW/wZ/tS0DxUAqW8+Oqd/MUyD/1M
	 QlCxhAgh7K8aSNa2aOEXXEal1Iz+uL8xMf35wJw/Gu8ZAK4kPcLnPGn+LM/vkGzKo4
	 6g5eoGQ+Le5XEPpwN7hwxhlRmytHVbob+JODXMx2o6q0vIWrNDjLdYlkmXhyvuYcyy
	 daotZIRlt84kanntL1g1+Qnx1oE18aapBjhnjdrmlkQSWsLLsY64KLFdCEIi1SbqyE
	 b/64amG4w/HUA==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A3CD317E14FE;
	Mon, 05 Oct 2026 02:38:56 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 05 Oct 2026 03:38:17 +0300
Subject: [PATCH v12 16/16] drm/bridge: dw-hdmi-qp: Drop unused .setup_hpd()
 phy op
MIME-Version: 1.0
Message-Id: <20261005-dw-hdmi-qp-scramb-v12-16-195157ba0b40@collabora.com>
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
X-CRM114-CacheID: sfid-20261004_173858_860736_E91B503F 
X-CRM114-Status: UNSURE (   7.80  )
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

V2l0aCB0aGUgdHJhbnNpdGlvbiB0byAue2VuYWJsZXxkaXNhYmxlfV9ocGQoKSBwaHkgb3BzIGNv
bXBsZXRlIGluIGJvdGgKdGhlIGJyaWRnZSBhbmQgcGxhdGZvcm0gZHJpdmVycywgLnNldHVwX2hw
ZCgpIGhhcyBubyByZW1haW5pbmcgY2FsbGVycy4KRHJvcCBpdC4KClRlc3RlZC1ieTogTWF1ZCBT
cGllcmluZ3MgPG1hdWRfc3BpZXJpbmdzQGhvdG1haWwuY29tPgpUZXN0ZWQtYnk6IERpZWRlcmlr
IGRlIEhhYXMgPGRpZWRlcmlrQGNrbm93LXRlY2guY29tPiAgIyBOYW5vUEMtVDYgTFRTLCBSb2Nr
IDVCClRlc3RlZC1ieTogUm9iaW4gUsOkYmVyIDxyb2Jpbi5yYWViaUBnbWFpbC5jb20+ClRlc3Rl
ZC1ieTogSWdvciBQYXVub3ZpYyA8cm95YWxuZXQwMjZAZ21haWwuY29tPiAjIFJLMzU4OCBPcmFu
Z2UgUGkgNSBQbHVzLCBkdWFsIEhETUkKU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVh
IDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
YnJpZGdlL3N5bm9wc3lzL2R3LWhkbWktcXAuYyB8IDMgLS0tCiBpbmNsdWRlL2RybS9icmlkZ2Uv
ZHdfaGRtaV9xcC5oICAgICAgICAgICAgICB8IDEgLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHct
aGRtaS1xcC5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLXFwLmMK
aW5kZXggNTQxODFiMDUyZmUyLi5iMjY4YzkzNzYwODcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9i
cmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5jCkBAIC0xMDg5LDkgKzEwODksNiBAQCBzdGF0aWMg
dm9pZCBkd19oZG1pX3FwX2luaXRfaHcoc3RydWN0IGR3X2hkbWlfcXAgKmhkbWkpCiAJLyogQ2xl
YXIgRE9ORSBhbmQgRVJST1IgaW50ZXJydXB0cyAqLwogCWR3X2hkbWlfcXBfd3JpdGUoaGRtaSwg
STJDTV9PUF9ET05FX0NMRUFSIHwgSTJDTV9OQUNLX1JDVkRfQ0xFQVIsCiAJCQkgTUFJTlVOSVRf
MV9JTlRfQ0xFQVIpOwotCi0JaWYgKGhkbWktPnBoeS5vcHMtPnNldHVwX2hwZCkKLQkJaGRtaS0+
cGh5Lm9wcy0+c2V0dXBfaHBkKGhkbWksIGhkbWktPnBoeS5kYXRhKTsKIH0KIAogc3RydWN0IGR3
X2hkbWlfcXAgKmR3X2hkbWlfcXBfYmluZChzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LApk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vYnJpZGdlL2R3X2hkbWlfcXAuaCBiL2luY2x1ZGUvZHJt
L2JyaWRnZS9kd19oZG1pX3FwLmgKaW5kZXggYjRmYjFjNTc4YTViLi5hZDMzZjljYWZkZWIgMTAw
NjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2JyaWRnZS9kd19oZG1pX3FwLmgKKysrIGIvaW5jbHVkZS9k
cm0vYnJpZGdlL2R3X2hkbWlfcXAuaApAQCAtMTYsNyArMTYsNiBAQCBzdHJ1Y3QgZHdfaGRtaV9x
cF9waHlfb3BzIHsKIAlpbnQgKCppbml0KShzdHJ1Y3QgZHdfaGRtaV9xcCAqaGRtaSwgdm9pZCAq
ZGF0YSk7CiAJdm9pZCAoKmRpc2FibGUpKHN0cnVjdCBkd19oZG1pX3FwICpoZG1pLCB2b2lkICpk
YXRhKTsKIAllbnVtIGRybV9jb25uZWN0b3Jfc3RhdHVzICgqcmVhZF9ocGQpKHN0cnVjdCBkd19o
ZG1pX3FwICpoZG1pLCB2b2lkICpkYXRhKTsKLQl2b2lkICgqc2V0dXBfaHBkKShzdHJ1Y3QgZHdf
aGRtaV9xcCAqaGRtaSwgdm9pZCAqZGF0YSk7CiAJdm9pZCAoKmVuYWJsZV9ocGQpKHN0cnVjdCBk
d19oZG1pX3FwICpoZG1pLCB2b2lkICpkYXRhKTsKIAl2b2lkICgqZGlzYWJsZV9ocGQpKHN0cnVj
dCBkd19oZG1pX3FwICpoZG1pLCB2b2lkICpkYXRhKTsKIH07CgotLSAKMi41NS4wCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
