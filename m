Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1405CD6E49
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 May 2026 14:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3udMSWu1MFSEnYCZ5tpmbLwBtHJXIO9iRy3/Gvj2y5A=; b=jrodPyoBngRRGr
	fbrk8zhuMk9ddiMByZTQ2PZNq4MFi8SeIuTxc25qELRUrxb+5VNYiQa3Jzxm1TZgNR4n5mGCAtHmH
	nSuJ5HnpV6drgWuaFjWEV1DAo+owEqCIg++xfId2gV9jaOSRUxVTEc/1jG011mNIGp0z3N1J0cr0D
	ueP37SjAl2i4KqnQN1u+Yht9kcbQztH6xdk/GUlkUGW+QOqtN0a4dAM0053BDdxxXcHk3OT7LgDhp
	t/bm3zTZ+RqxYvjZP+u60f3jc0CuwjwHuQO5IBstoim6aqBS0zkyj9dI5b3erNUVjCsGB3OCaInUX
	5cVvwgkBQcD2uZmJVfBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTKHA-00000008ntP-49JF;
	Sat, 30 May 2026 14:02:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTKGz-00000008nmS-0eZR;
	Sat, 30 May 2026 14:02:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 95FCE600CB;
	Sat, 30 May 2026 14:02:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBC0E1F00893;
	Sat, 30 May 2026 14:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780149764;
	bh=GNl9FOy9Ix19VA8ulFghHHdbCugAk+tj+Vcor/u18O0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=bphkh3Z6y4f+U7pqrYgA5zVNul8eOAyYvmmaLyZXvHQp+p6CSgjRanXxw31qGM+zx
	 /cxquDGqy84x+yqjiquAakrcWM3N/VGSI6/DU6KMykaVPd8utr/6dxN9n+Q2u4KXo7
	 1qbsMRbRLhGoWMlbh4MrkAL/a564fM4jyuaG7X0i+8v4FsLLqtsx8NBH2U9pxCVRdo
	 oXVBlg40Z36G46z0pXvIndyV5lwEOT4bYcXuXnsjUXtX/0yRAfSRh7FcytsiKmvVMX
	 kyV0MQxQLnZBdwx/2HFG77TrD8WBLRziV+qFvFnmIi5UJf+TvHkqj5082WRsLO4kch
	 luOaQcooTKXSg==
From: Maxime Ripard <mripard@kernel.org>
Date: Sat, 30 May 2026 16:00:08 +0200
Subject: [PATCH 63/76] drm/rockchip: rk3066_hdmi: Switch to
 atomic_create_state
MIME-Version: 1.0
Message-Id: <20260530-drm-no-more-bridge-reset-v1-63-875d828d31bc@kernel.org>
References: <20260530-drm-no-more-bridge-reset-v1-0-875d828d31bc@kernel.org>
In-Reply-To: <20260530-drm-no-more-bridge-reset-v1-0-875d828d31bc@kernel.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>
Cc: Dmitry Baryshkov <lumag@kernel.org>, dri-devel@lists.freedesktop.org, 
 Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1535; i=mripard@kernel.org;
 h=from:subject:message-id; bh=RpRLFH4wlWNiMYLwvBRpsy60KmT6bRKyF+DLn9QpabU=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFlSbwOn/Ji6RWL2gcYcm+zbH7fNij+t4bundgbbjRKdu
 Kvf1O+WdExlYRDmZJAVU2R5IhN2enn74ioH+5U/YOawMoEMYeDiFICJqK5grHdQ41x/wObUB37V
 VM1l3Y18Hn3/Ts63fW4yVeKWr+78nMYohhmsWQuD3ydoSKy4YOFTxtiwWGZylcu2C4LmVmbajdu
 21nm5K5oufb3g7zLdlLPxjEV7dBmXPjxsa2GwyoQ/Y5n1RD4A
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
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

VGhlIGRybV9icmlkZ2VfZnVuY3MuYXRvbWljX3Jlc2V0IGNhbGxiYWNrIGFuZCBpdHMKZHJtX2F0
b21pY19oZWxwZXJfYnJpZGdlX3Jlc2V0KCkgaGVscGVyIGFyZSBkZXByZWNhdGVkLgoKU3dpdGNo
IHRvIHRoZSBhdG9taWNfY3JlYXRlX3N0YXRlIGNhbGxiYWNrIGFuZCBpdHMKZHJtX2F0b21pY19o
ZWxwZXJfYnJpZGdlX2NyZWF0ZV9zdGF0ZSgpIGNvdW50ZXJwYXJ0LgoKU2lnbmVkLW9mZi1ieTog
TWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgoKLS0tClRvOiBTYW5keSBIdWFuZyA8
aGpjQHJvY2stY2hpcHMuY29tPgpUbzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRl
PgpUbzogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgpDYzogZHJpLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQogZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcmszMDY2X2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZf
aGRtaS5jCmluZGV4IDE5OTZmODY1NjYxMi4uOWI4OTgxZmExOWFlIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcmszMDY2X2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcmszMDY2X2hkbWkuYwpAQCAtNDk1LDExICs0OTUsMTEgQEAgcmszMDY2X2hkbWlf
YnJpZGdlX21vZGVfdmFsaWQoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSwKIH0KIAogc3RhdGlj
IGNvbnN0IHN0cnVjdCBkcm1fYnJpZGdlX2Z1bmNzIHJrMzA2Nl9oZG1pX2JyaWRnZV9mdW5jcyA9
IHsKIAkuYXRvbWljX2R1cGxpY2F0ZV9zdGF0ZSA9IGRybV9hdG9taWNfaGVscGVyX2JyaWRnZV9k
dXBsaWNhdGVfc3RhdGUsCiAJLmF0b21pY19kZXN0cm95X3N0YXRlID0gZHJtX2F0b21pY19oZWxw
ZXJfYnJpZGdlX2Rlc3Ryb3lfc3RhdGUsCi0JLmF0b21pY19yZXNldCA9IGRybV9hdG9taWNfaGVs
cGVyX2JyaWRnZV9yZXNldCwKKwkuYXRvbWljX2NyZWF0ZV9zdGF0ZSA9IGRybV9hdG9taWNfaGVs
cGVyX2JyaWRnZV9jcmVhdGVfc3RhdGUsCiAJLmF0b21pY19lbmFibGUgPSByazMwNjZfaGRtaV9i
cmlkZ2VfYXRvbWljX2VuYWJsZSwKIAkuYXRvbWljX2Rpc2FibGUgPSByazMwNjZfaGRtaV9icmlk
Z2VfYXRvbWljX2Rpc2FibGUsCiAJLmRldGVjdCA9IHJrMzA2Nl9oZG1pX2JyaWRnZV9kZXRlY3Qs
CiAJLmVkaWRfcmVhZCA9IHJrMzA2Nl9oZG1pX2JyaWRnZV9lZGlkX3JlYWQsCiAJLmhkbWlfY2xl
YXJfYXZpX2luZm9mcmFtZSA9IHJrMzA2Nl9oZG1pX2JyaWRnZV9jbGVhcl9hdmlfaW5mb2ZyYW1l
LAoKLS0gCjIuNTQuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
