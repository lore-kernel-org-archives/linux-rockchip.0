Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9947C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 17:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+uu8NeWoL65bi6QiDQUS0ZDig58lhWlt0XosMaqTTxQ=; b=UIi0eAfQxn6dNV
	SMjT1h7p/8+aqCnagUmlNM0Mi/+gCTUvr7b5AsiJIaiNLH44Vuzog0uYxInVozy0xEYp95C1UgtH1
	6I/BGeCFuGHLCwcatz8L4+GN9HsukkP96GHsvehTmcXkAMH2OoJxSTLA58KEb5CBv0koNpdJeJNyG
	v9BBG2ZLceqhC3qs5I+yKAosJ4OLWoc3PyeNyGB4Be+2mFDbbJdfpoCp47I0s0dUHDMQrQUdBz3LE
	zO3CXGr3Mo0hd3L+qHawoplAkT0bv5ReH6dfw5ptkkv0V04Oi+8UyPA4Azj4PHCmyYEEEj0zESy8C
	hdrDVeeUDRaGp3neso1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhaHd-00EOMg-N2; Thu, 21 Apr 2022 17:07:57 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhaHH-00EO8v-K0; Thu, 21 Apr 2022 17:07:40 +0000
Received: by mail-wr1-x42e.google.com with SMTP id p18so7593222wru.5;
 Thu, 21 Apr 2022 10:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mOsXpLWi9QLA5ykkzo2aKVd+yr4+GMP+CHJv0QHqFPU=;
 b=PhOXgh0Q5LE7m9gF9czIrKZRq55dBYQfo6JFtQeE9ijzQGIxBM1V5QZtkJjgUAPcva
 mijV+yVjCD1Y5vzy+S/9QeUO9MiLfeuJRoGQ20nYs5NNhxoMqORFTDdKMo8HmDzrMzo9
 q8voQxoIddhVNAF6gBbxgGFWo3cmsBYPJCeEq5oSHPHkD51e69O6TQt3OmbCXV13dl3x
 1nmhxU/KIU992jK2iLSLd01VSlI71j+KQOLtbEiSIGTgDUEOSG4tqwDOFLyrLtkcvG5s
 D3ssv0r5pDlrF6bXeXPICXsORkR4XZl7J1mLagy+RZiY5nXL4U+gkRy6RvMQllEHIZV5
 tHiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mOsXpLWi9QLA5ykkzo2aKVd+yr4+GMP+CHJv0QHqFPU=;
 b=K4GtCcjqO+l0sZxGOLRUAAG+uHtqbxXsNT4Ave4QjVc/KPLBAFqBeCLeIQS34Lu3It
 xmm/w4uNsJUulWmPl6RwmdZs+Lc8K/tgrQ2sZH29mXFJOVj0Z+EQAy9vCcWTWztceaSF
 FYEikLBCXJc45ALk77ugTeweVmiaF68JCgityuoqq73eztIH2R9rKKawTLj99bIbvpWT
 EvS4snpbsmxEb27xg38GPKPvE/pUqKVePza07vLZv9rl5hySVvSEHvUzea5zj5j98NpJ
 WKjSV8QDqQ2lrHRCzIfuTv3/JU4WaoIPZyQplhrYWVznysrMKhUgE7qf96p7lzYuPclx
 A0tA==
X-Gm-Message-State: AOAM532A4dwPWQUDQljmKOX/2Vvm7M1gPvkeJ1K/ehbK4p3iaN+hV+S6
 1BsC9Ejbdv3VZThwI8ljveE=
X-Google-Smtp-Source: ABdhPJwmkd8rSG5wIeasQSmzXw1Hxgzf6My3j9pRLVWS50GQVQrvimreO3rNSOKpZuUsPU9r5kjkvw==
X-Received: by 2002:a5d:45c5:0:b0:20a:be8f:aca6 with SMTP id
 b5-20020a5d45c5000000b0020abe8faca6mr513028wrs.493.1650560852175; 
 Thu, 21 Apr 2022 10:07:32 -0700 (PDT)
Received: from localhost.localdomain ([94.73.37.128])
 by smtp.gmail.com with ESMTPSA id
 i11-20020a5d584b000000b0020a8d859e5fsm2963849wrf.10.2022.04.21.10.07.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Apr 2022 10:07:31 -0700 (PDT)
From: =?UTF-8?q?Jos=C3=A9=20Exp=C3=B3sito?= <jose.exposito89@gmail.com>
To: inki.dae@samsung.com
Cc: jy0922.shim@samsung.com, sw0312.kim@samsung.com, kyungmin.park@samsung.com,
 airlied@linux.ie, daniel@ffwll.ch, krzk@kernel.org,
 alim.akhtar@samsung.com, lgirdwood@gmail.com, broonie@kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 hjc@rock-chips.com, heiko@sntech.de, linux-rockchip@lists.infradead.org,
 alain.volmat@foss.st.com, p.zabel@pengutronix.de, mripard@kernel.org,
 wens@csie.org, jernej.skrabec@gmail.com, samuel@sholland.org,
 linux-sunxi@lists.linux.dev, laurent.pinchart@ideasonboard.com,
 =?UTF-8?q?Jos=C3=A9=20Exp=C3=B3sito?= <jose.exposito89@gmail.com>
Subject: [PATCH 0/5] Replace drm_detect_hdmi_monitor() with
 drm_display_info.is_hdmi
Date: Thu, 21 Apr 2022 19:07:20 +0200
Message-Id: <20220421170725.903361-1-jose.exposito89@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_100735_749089_E2CE982A 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgZXZlcnlvbmUsCgpBZnRlciBpbXBsZW1lbnRpbmcgYSBzaW1pbGFyIGNoYW5nZSBpbiB0aGUg
VkM0IGRyaXZlciBbMV0sIGFzIHN1Z2dlc3RlZApieSBMYXVyZW50IGluIHRoZSBUb0RvIGxpc3Qg
WzJdLCBJIG5vdGljZWQgdGhhdCBhIHNpbWlsYXIgcGF0dGVybiBpcwp1c2VkIGluIHRoZSBFeHlu
b3MsIFJvY2tjaGlwLCBTVEkgYW5kIHN1bjRpIGRyaXZlcnMuCgpUaGlzIHBhdGNoc2V0IHJlcGxh
Y2VzIGRybV9kZXRlY3RfaGRtaV9tb25pdG9yKCkgd2l0aCBpc19oZG1pIGluIHRoZQptZW50aW9u
ZWQgZHJpdmVycy4KCkJlc3Qgd2lzaGVzLApKb3PDqSBFeHDDs3NpdG8KClsxXSBodHRwczovL2xv
cmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyMjA0MjAxMTQ1MDAuMTg3NjY0LTEtam9zZS5leHBv
c2l0bzg5QGdtYWlsLmNvbS9ULwpbMl0gaHR0cHM6Ly9kb2NzLmtlcm5lbC5vcmcvZ3B1L3RvZG8u
aHRtbCNyZXBsYWNlLWRybS1kZXRlY3QtaGRtaS1tb25pdG9yLXdpdGgtZHJtLWRpc3BsYXktaW5m
by1pcy1oZG1pCgpKb3PDqSBFeHDDs3NpdG8gKDUpOgogIGRybS9leHlub3M6IGhkbWk6IFJlcGxh
Y2UgZHJtX2RldGVjdF9oZG1pX21vbml0b3IoKSB3aXRoIGlzX2hkbWkKICBkcm0vcm9ja2NoaXA6
IGlubm9faGRtaTogUmVwbGFjZSBkcm1fZGV0ZWN0X2hkbWlfbW9uaXRvcigpIHdpdGgKICAgIGlz
X2hkbWkKICBkcm0vcm9ja2NoaXA6IHJrMzA2Nl9oZG1pOiBSZXBsYWNlIGRybV9kZXRlY3RfaGRt
aV9tb25pdG9yKCkgd2l0aAogICAgaXNfaGRtaQogIGRybS9zdGkvc3RpX2hkbWk6IFJlcGxhY2Ug
ZHJtX2RldGVjdF9oZG1pX21vbml0b3IoKSB3aXRoIGlzX2hkbWkKICBkcm0vc3VuNGk6IGhkbWk6
IFJlcGxhY2UgZHJtX2RldGVjdF9oZG1pX21vbml0b3IoKSB3aXRoIGlzX2hkbWkKCiBkcml2ZXJz
L2dwdS9kcm0vZXh5bm9zL2V4eW5vc19oZG1pLmMgICB8IDE1ICsrKysrKysrKy0tLS0tLQogZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL2lubm9faGRtaS5jICAgfCAgOCArKysrLS0tLQogZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMgfCAgNiArKystLS0KIGRyaXZlcnMvZ3B1
L2RybS9zdGkvc3RpX2hkbWkuYyAgICAgICAgIHwgIDcgKysrKy0tLQogZHJpdmVycy9ncHUvZHJt
L3N0aS9zdGlfaGRtaS5oICAgICAgICAgfCAgMiAtLQogZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1
bjRpX2hkbWkuaCAgICAgfCAgMSAtCiBkcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNGlfaGRtaV9l
bmMuYyB8ICA2ICsrKy0tLQogNyBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCAyMiBk
ZWxldGlvbnMoLSkKCi0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
