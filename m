Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEDEAC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 17:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVSuyeHW9mfKrXnIzztg9OiKbKC5Gp9kyIY/TVCnC8o=; b=dJ8HWlQPATu2yC
	DXIjtHbTaOglWnEmqVoW0WWAGr6YCHnNi3tZwL3dOBg15+GAIL4Pc0+FGfEdB2/PLkf5yvRl0ZmUf
	n03AWFNFOCIMSUOJqT46i4jYysAmTzbOQDYTbPpJ41MU+9B2pwLIJJwxSnIGh7iRF8dQZvvMgKePo
	ZLdwwNsTkshFOWC/45ScCkeH6bGCQQdVWUKu2Z4haxfb6KRAHWM44fpttP2A8cyOUt55saTGfXxxU
	zw+1ZJCKNUDJpdYQJvhT7CXPXK1akHmCoHNME/kqAfiOts1Iq5uwRtIPVslY1GFQInuoFQd8yphj+
	g4HMm5W/1+wYdEuXg/Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhaIZ-00EOqe-Qe; Thu, 21 Apr 2022 17:08:55 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhaHT-00EOEH-S1; Thu, 21 Apr 2022 17:07:49 +0000
Received: by mail-wr1-x42c.google.com with SMTP id t6so4155290wra.4;
 Thu, 21 Apr 2022 10:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dLb9n6Vqs4Ih6Tde/WV0zahdLSPBAQf9NPHM6Jy9hzo=;
 b=LAevyX/ERqtxF65hYRvst71jOVYt9rxNi2LfjZ3L4IvPvF3WP6C6foYJwdUqmgc9Uz
 3DIsXUyUOQFeHRz3NsIo4oChjNW1OCy6txnH8L4BbdXswQosN4TMfCACw1LMm3EUoGcW
 w/YN9U3gZRYMLrDoUzse9t2+NaarYg2H3R4Qb5AEHrQDoBbfX/Umx/8r2KqHv4WnSlDg
 xGZ0YsuUYnS5tu4PO/M9Ff3iq+eFrJ/BfqjRx59gzmbdDqIj8mpYMkD+euQeJa7DJuOO
 RGO2VuwabF3TTZDyScm1NSbxJEaTFG8bAbkFTFv3WpVPXJFWGINMOtgCQ5/U2SuQXeLp
 4d4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dLb9n6Vqs4Ih6Tde/WV0zahdLSPBAQf9NPHM6Jy9hzo=;
 b=FZc/Vbc5sBBBWiM1EshaUz5Nl4/2Wb8zjGq5XioTMA1sNedSoyoRL4jCAxBdKLMKOi
 0/Z6ZColYBRqxIBk6lLqeyCNeypstERpbIsFyBJIVItwAM5IVr3+h716gYJ+bCqQTIvk
 fzr3/jcJvNJwypcV0dHsIHvfRzmVNt3MsNyXD//tWsurbJwYh5mPhhaGsFLD/Abmj/zK
 w4qzHuJV08a7ToDMKaQzcs525oqtQ587b7XVQzQjmmC6RGHEFeAjZW+MtnPHB74fQLYT
 8CYwcJl/Reh/AEfaztu1EkZSkQ2k9AcyVmA0TG6s5kfBkJZ2CpRn6BiktczY9OUcrwR6
 PMXg==
X-Gm-Message-State: AOAM530FccroygfKubrY1eJguqnWi7T/vkj2WaUM+Jz9zAmjXGGiid/6
 hSGLn5wBtqViJt01j5Eokr8=
X-Google-Smtp-Source: ABdhPJx/kFGrmr6cOw1E9qfYzW98wPDX3Gw0oBcObPlkQWqdzFcmeXcXxIP+Db0E7MqTjK84xMOdHQ==
X-Received: by 2002:a5d:6488:0:b0:203:b628:70d2 with SMTP id
 o8-20020a5d6488000000b00203b62870d2mr522020wri.83.1650560864504; 
 Thu, 21 Apr 2022 10:07:44 -0700 (PDT)
Received: from localhost.localdomain ([94.73.37.128])
 by smtp.gmail.com with ESMTPSA id
 i11-20020a5d584b000000b0020a8d859e5fsm2963849wrf.10.2022.04.21.10.07.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Apr 2022 10:07:44 -0700 (PDT)
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
Subject: [PATCH 3/5] drm/rockchip: rk3066_hdmi: Replace
 drm_detect_hdmi_monitor() with is_hdmi
Date: Thu, 21 Apr 2022 19:07:23 +0200
Message-Id: <20220421170725.903361-4-jose.exposito89@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220421170725.903361-1-jose.exposito89@gmail.com>
References: <20220421170725.903361-1-jose.exposito89@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_100748_002211_7AD88090 
X-CRM114-Status: GOOD (  13.95  )
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

T25jZSBFRElEIGlzIHBhcnNlZCwgdGhlIG1vbml0b3IgSERNSSBzdXBwb3J0IGluZm9ybWF0aW9u
IGlzIGF2YWlsYWJsZQp0aHJvdWdoIGRybV9kaXNwbGF5X2luZm8uaXNfaGRtaS4KClRoaXMgZHJp
dmVyIGNhbGxzIGRybV9kZXRlY3RfaGRtaV9tb25pdG9yKCkgdG8gcmVjZWl2ZSB0aGUgc2FtZQpp
bmZvcm1hdGlvbiBhbmQgc3RvcmVzIGl0cyBvd24gY2FjaGVkIHZhbHVlLCB3aGljaCBpcyBsZXNz
IGVmZmljaWVudC4KCkF2b2lkIGNhbGxpbmcgZHJtX2RldGVjdF9oZG1pX21vbml0b3IoKSBhbmQg
dXNlIGRybV9kaXNwbGF5X2luZm8uaXNfaGRtaQppbnN0ZWFkIGFuZCBhbHNvIHJlbW92ZSBoZG1p
X2RhdGFfaW5mby5zaW5rX2lzX2hkbWkgYXMgaXQgaXMgbm8gbG9uZ2VyCm5lY2Vzc2FyeS4KClNp
Z25lZC1vZmYtYnk6IEpvc8OpIEV4cMOzc2l0byA8am9zZS5leHBvc2l0bzg5QGdtYWlsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcmszMDY2X2hkbWkuYyB8IDYgKysrLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZfaGRtaS5jIGIvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMKaW5kZXggMWM1NDZjM2E4OTk4Li5hMDlkYmI3ZDQ0
NmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZfaGRtaS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZfaGRtaS5jCkBAIC0yMiw3ICsyMiw2
IEBACiAKIHN0cnVjdCBoZG1pX2RhdGFfaW5mbyB7CiAJaW50IHZpYzsgLyogVGhlIENFQSBWaWRl
byBJRCAoVklDKSBvZiB0aGUgY3VycmVudCBkcm0gZGlzcGxheSBtb2RlLiAqLwotCWJvb2wgc2lu
a19pc19oZG1pOwogCXVuc2lnbmVkIGludCBlbmNfb3V0X2Zvcm1hdDsKIAl1bnNpZ25lZCBpbnQg
Y29sb3JpbWV0cnk7CiB9OwpAQCAtMzE3LDYgKzMxNiw4IEBAIHN0YXRpYyB2b2lkIHJrMzA2Nl9o
ZG1pX2NvbmZpZ19waHkoc3RydWN0IHJrMzA2Nl9oZG1pICpoZG1pKQogc3RhdGljIGludCByazMw
NjZfaGRtaV9zZXR1cChzdHJ1Y3QgcmszMDY2X2hkbWkgKmhkbWksCiAJCQkgICAgIHN0cnVjdCBk
cm1fZGlzcGxheV9tb2RlICptb2RlKQogeworCXN0cnVjdCBkcm1fZGlzcGxheV9pbmZvICpkaXNw
bGF5ID0gJmhkbWktPmNvbm5lY3Rvci5kaXNwbGF5X2luZm87CisKIAloZG1pLT5oZG1pX2RhdGEu
dmljID0gZHJtX21hdGNoX2NlYV9tb2RlKG1vZGUpOwogCWhkbWktPmhkbWlfZGF0YS5lbmNfb3V0
X2Zvcm1hdCA9IEhETUlfQ09MT1JTUEFDRV9SR0I7CiAKQEAgLTM0OSw3ICszNTAsNyBAQCBzdGF0
aWMgaW50IHJrMzA2Nl9oZG1pX3NldHVwKHN0cnVjdCByazMwNjZfaGRtaSAqaGRtaSwKIAogCXJr
MzA2Nl9oZG1pX2NvbmZpZ192aWRlb190aW1pbmcoaGRtaSwgbW9kZSk7CiAKLQlpZiAoaGRtaS0+
aGRtaV9kYXRhLnNpbmtfaXNfaGRtaSkgeworCWlmIChkaXNwbGF5LT5pc19oZG1pKSB7CiAJCWhk
bWlfbW9kYihoZG1pLCBIRE1JX0hEQ1BfQ1RSTCwgSERNSV9WSURFT19NT0RFX01BU0ssCiAJCQkg
IEhETUlfVklERU9fTU9ERV9IRE1JKTsKIAkJcmszMDY2X2hkbWlfY29uZmlnX2F2aShoZG1pLCBt
b2RlKTsKQEAgLTQ3Miw3ICs0NzMsNiBAQCBzdGF0aWMgaW50IHJrMzA2Nl9oZG1pX2Nvbm5lY3Rv
cl9nZXRfbW9kZXMoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKIAogCWVkaWQgPSBk
cm1fZ2V0X2VkaWQoY29ubmVjdG9yLCBoZG1pLT5kZGMpOwogCWlmIChlZGlkKSB7Ci0JCWhkbWkt
PmhkbWlfZGF0YS5zaW5rX2lzX2hkbWkgPSBkcm1fZGV0ZWN0X2hkbWlfbW9uaXRvcihlZGlkKTsK
IAkJZHJtX2Nvbm5lY3Rvcl91cGRhdGVfZWRpZF9wcm9wZXJ0eShjb25uZWN0b3IsIGVkaWQpOwog
CQlyZXQgPSBkcm1fYWRkX2VkaWRfbW9kZXMoY29ubmVjdG9yLCBlZGlkKTsKIAkJa2ZyZWUoZWRp
ZCk7Ci0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
