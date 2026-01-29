Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A488BD46C16
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jan 2026 00:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgMWmDomH3UZpxR66p80bOw9H8iWn8Q1k8fo10ZS+jg=; b=2+mmQCt3OrhyUe
	ROqLXpT9durPX+Tol/uccJeXK3RD+Ao/CFKvAbWwRf817xebDXhFSXPmF1QtlXhv9qc5kIUgHEkW8
	blfuZBSte6so8h8MTpdoILtybnb1sPZi53aD0HkLFcIkmtCHuLetClUyCVA9an9Lg2ZElLsX7Gxnn
	zRJons73dKS9nULoDiHOStDieCBt/URIDC4Hq9NcAW5xpol9Q23R+6Ar1AnE2MfWkPJx9voRKgjH2
	bt0l8ghODXKYv9d0qiAo0kS5ehR3+zCjoDiegd/Baby5R+iH2iGH4Uo0iZyvYams2EdyU2fMDTmMe
	XSF9rsj4E6hAeA0S0vZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlGNv-0000000H18y-3Bm6;
	Thu, 29 Jan 2026 00:59:49 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlGNb-0000000H0sV-1lVu;
	Thu, 29 Jan 2026 00:59:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1769648363;
	bh=/L0lTmhcZkxDMMrnCZSUmTG7CK9mTVDRkVjSQ2g9G1Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=B1CuSe69IMVPX4/EXUGdK0A0KbLVlApwXEAOHflM9csO3FAyndCARODeKkk/Aoyxv
	 Ok/NBIDWqN1XNoBH5khn1FtoFFxkBNCaSdtG1kcFVafx+eyE86YcbVDUs+0BFZUbuQ
	 r1WtbvUfYqfTKadBd64BV9QxO+sNfnjmMxIpqGHN4mh/emASyPUZlUXNnycBTLO4Tp
	 nikvW0CZZMHDKt6L1WPE5utBppPecNT71sp/HZVwBQQmZVJMoi6yuTyNa4Rqi+esmv
	 Mnk18Y/WgH9+9AUh7KBgQ7EJ9jljWpG1CEHc+6QFML8J87SBQXc3IuhHaQBT9dx3rR
	 zdWPIF5Z/VewA==
Received: from localhost (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6E4E817E14F2;
	Thu, 29 Jan 2026 01:59:23 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 29 Jan 2026 02:58:53 +0200
Subject: [PATCH v6 3/4] drm/vkms: Support setting custom background color
MIME-Version: 1.0
Message-Id: <20260129-rk3588-bgcolor-v6-3-c15f755a4055@collabora.com>
References: <20260129-rk3588-bgcolor-v6-0-c15f755a4055@collabora.com>
In-Reply-To: <20260129-rk3588-bgcolor-v6-0-c15f755a4055@collabora.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, 
 Haneen Mohammed <hamohammed.sa@gmail.com>, 
 Melissa Wen <melissa.srw@gmail.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Robert Mader <robert.mader@collabora.com>, kernel@collabora.com, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>, 
 Diederik de Haas <diederik@cknow-tech.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260128_165927_631501_C4E27C35 
X-CRM114-Status: GOOD (  12.37  )
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

TWFrZSB1c2Ugb2YgdGhlIEJBQ0tHUk9VTkRfQ09MT1IgQ1JUQyBwcm9wZXJ0eSB3aGVuIGZpbGxp
bmcgdGhlCmJhY2tncm91bmQgZHVyaW5nIGJsZW5kaW5nLiAgSXQgYWxyZWFkeSBkZWZhdWx0cyB0
byBzb2xpZCBibGFjay4KClNpbmNlIHRoZSBpbnRlcm5hbCByZXByZXNlbnRhdGlvbiBvZiB0aGUg
cGl4ZWwgY29sb3IgaW4gVktNUyByZWxpZXMgb24KMTYgYml0cyBvZiBwcmVjaXNpb24sIHVzZSB0
aGUgbmV3bHkgaW50cm9kdWNlZCBEUk1fQVJHQjY0X0dFVHtSfEd8Qn0oKQpoZWxwZXJzIHRvIGFj
Y2VzcyB0aGUgaW5kaXZpZHVhbCBjb21wb25lbnRzIG9mIHRoZSBiYWNrZ3JvdW5kIGNvbG9yCnBy
b3BlcnR5LCB3aGljaCBpcyBjb21wbGlhbnQgd2l0aCBEUk1fRk9STUFUX0FSR0IxNjE2MTYxNi4K
Ckl0J3Mgd29ydGggbm90aW5nIHRoZSBhbHBoYSBjb21wb25lbnQgaXMgaWdub3JlZCwgaGVuY2Ug
bm9uLW9wYXF1ZQpiYWNrZ3JvdW5kIGNvbG9ycyBhcmUgbm90IHN1cHBvcnRlZC4KClJldmlld2Vk
LWJ5OiBOw61jb2xhcyBGLiBSLiBBLiBQcmFkbyA8bmZyYXByYWRvQGNvbGxhYm9yYS5jb20+ClRl
c3RlZC1ieTogRGllZGVyaWsgZGUgSGFhcyA8ZGllZGVyaWtAY2tub3ctdGVjaC5jb20+ClNpZ25l
ZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9y
YS5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmttc19jb21wb3Nlci5jIHwgMTAgKysr
KysrKystLQogZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmttc19jcnRjLmMgICAgIHwgIDMgKysrCiAy
IGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmttc19jb21wb3Nlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL3ZrbXMvdmttc19jb21wb3Nlci5jCmluZGV4IGNkODVkZTRmZmQwMy4uODNkMjE3MDg1YWQw
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdmttcy92a21zX2NvbXBvc2VyLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmttc19jb21wb3Nlci5jCkBAIC00NzUsOCArNDc1LDE0IEBA
IHN0YXRpYyB2b2lkIGJsZW5kKHN0cnVjdCB2a21zX3dyaXRlYmFja19qb2IgKndiLAogewogCXN0
cnVjdCB2a21zX3BsYW5lX3N0YXRlICoqcGxhbmUgPSBjcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVz
OwogCXUzMiBuX2FjdGl2ZV9wbGFuZXMgPSBjcnRjX3N0YXRlLT5udW1fYWN0aXZlX3BsYW5lczsK
LQotCWNvbnN0IHN0cnVjdCBwaXhlbF9hcmdiX3UxNiBiYWNrZ3JvdW5kX2NvbG9yID0geyAuYSA9
IDB4ZmZmZiB9OworCXU2NCBiZ2NvbG9yID0gY3J0Y19zdGF0ZS0+YmFzZS5iYWNrZ3JvdW5kX2Nv
bG9yOworCisJY29uc3Qgc3RydWN0IHBpeGVsX2FyZ2JfdTE2IGJhY2tncm91bmRfY29sb3IgPSB7
CisJCS5hID0gMHhmZmZmLAorCQkuciA9IERSTV9BUkdCNjRfR0VUUihiZ2NvbG9yKSwKKwkJLmcg
PSBEUk1fQVJHQjY0X0dFVEcoYmdjb2xvciksCisJCS5iID0gRFJNX0FSR0I2NF9HRVRCKGJnY29s
b3IpLAorCX07CiAKIAlpbnQgY3J0Y195X2xpbWl0ID0gY3J0Y19zdGF0ZS0+YmFzZS5tb2RlLnZk
aXNwbGF5OwogCWludCBjcnRjX3hfbGltaXQgPSBjcnRjX3N0YXRlLT5iYXNlLm1vZGUuaGRpc3Bs
YXk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdmttcy92a21zX2NydGMuYyBiL2RyaXZl
cnMvZ3B1L2RybS92a21zL3ZrbXNfY3J0Yy5jCmluZGV4IDlhN2RiMWQ1MTAyMi4uMjUxNGMzNjdm
NzEwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdmttcy92a21zX2NydGMuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vdmttcy92a21zX2NydGMuYwpAQCAtNCw2ICs0LDcgQEAKIAogI2luY2x1
ZGUgPGRybS9kcm1fYXRvbWljLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWNfaGVscGVyLmg+
CisjaW5jbHVkZSA8ZHJtL2RybV9ibGVuZC5oPgogI2luY2x1ZGUgPGRybS9kcm1fbWFuYWdlZC5o
PgogI2luY2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4KICNpbmNsdWRlIDxkcm0vZHJtX3Byb2JlX2hl
bHBlci5oPgpAQCAtMjI4LDYgKzIyOSw4IEBAIHN0cnVjdCB2a21zX291dHB1dCAqdmttc19jcnRj
X2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRybV9wbGFuZSAqcHJpCiAKIAlk
cm1fY3J0Y19lbmFibGVfY29sb3JfbWdtdChjcnRjLCAwLCBmYWxzZSwgVktNU19MVVRfU0laRSk7
CiAKKwlkcm1fY3J0Y19hdHRhY2hfYmFja2dyb3VuZF9jb2xvcl9wcm9wZXJ0eShjcnRjKTsKKwog
CXNwaW5fbG9ja19pbml0KCZ2a21zX291dC0+bG9jayk7CiAJc3Bpbl9sb2NrX2luaXQoJnZrbXNf
b3V0LT5jb21wb3Nlcl9sb2NrKTsKIAoKLS0gCjIuNTIuMAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
