Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD57A606A886
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 09:13:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=N8jIFrxs;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=edbaIGVe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Fa8KaJ/Hm7JraCDSJ1r501ojmLNplSBVJgvr8AjdsbY=; b=N8jIFrxsIX9oR65GdUZHbvoB8M
	L7apjp0CPnkOEuOfpQyTNJypp059KeSNoYo8DNn1CTrd/xfNPshi1G0vg3otVv14hn+qawjsxeWwO
	wZk/FxZIQsm9FACXS/vwTdgn/1vw3wM/97MacxiadO3rbxzKkKFe8hOePN0AlFYFe+kkFWFAplVAa
	K7APrjmXJ2Vi8q7ryHDHIUvmkWIgdspL3xAiy0lOPM99tXcm4dwfVieOiokEPDDlWEJD7elVjxRdj
	A7p0XC0QW+qmjm6dmbBOrQ8O8HJtLW4bkPJbDylrE52YB7hHvovHw38wWfKhXPzSj2830wB1WAuSv
	Unsehv0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSsmH-00000001jZf-0GfT;
	Mon, 16 Nov 2026 09:13:29 +0000
Received: from mgamail.intel.com ([192.198.163.18])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSsmE-00000001jYa-1kOV;
	Mon, 16 Nov 2026 09:13:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794820406; x=1826356406;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=edhm/RUm1gwG1ns28z24sx9rwV2Bz4AIJAEgDfivZos=;
  b=edbaIGVeeLAMucWtoJVU/2RGATgkPjAJEeyv3k+0E3O93Kr4Cdk71War
   Ga6U2lukBVpyEhGqTVo9JFPBPyvjG/r/05W/cw7+aWtOmpp30uZjI63Hf
   3FaDv3KUdOHq4h08hKRgWLfb7Q74UNyXhxK+QzchOPG/xW0YTBdnwJHuN
   WPjnCCL5Kw/Yykx5CuSK4wA5VZwkf0PELmXCVRDG5ysN2siiLeLnbHwbY
   tCUxsJJExXLuRwTrEzwJ+qa4KZ740eoMpOXuQfWHTcBTyeOJ5ki9sp73t
   NhjlO0RADQk61P9qmSVG/bty/MHfun1is9YwNrwWq5w0BFKCWd4oc4RNg
   Q==;
X-CSE-ConnectionGUID: 1Q1gC82rSmKUZMt56h0vuQ==
X-CSE-MsgGUID: se2iDjlpTdyI3KsE2qRR8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11967"; a="3579214"
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="3579214"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 01:13:26 -0800
X-CSE-ConnectionGUID: 9stVJmFCQHClbVwAwSIULg==
X-CSE-MsgGUID: QPpDDzNuR/+FFLzWW1UqMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="10032390"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.93])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 01:13:19 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org,
	Erwin Springer <aot.lerwin@gmail.com>,
	amd-gfx@lists.freedesktop.org,
	=?UTF-8?q?Andr=C3=A9=20Almeida?= <andrealmeid@igalia.com>,
	Boris Brezillon <bbrezillon@kernel.org>,
	Christopher Snowhill <chris@kode54.net>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Dharma Balasubiramani <dharma.b@microchip.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	freedreno@lists.freedesktop.org,
	Gustavo Padovan <gustavo.padovan@collabora.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Icenowy Zheng <zhengxingda@iscas.ac.cn>,
	Jianmin Lv <lvjianmin@loongson.cn>,
	linux-arm-msm@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	Liviu Dudau <liviu.dudau@arm.com>,
	=?UTF-8?q?Ma=C3=ADra=20Canal?= <mcanal@igalia.com>,
	Manikandan Muralidharan <manikandan.m@microchip.com>,
	Maxime Ripard <mripard@kernel.org>,
	Mingcong Bai <jeffbai@aosc.io>,
	nouveau@lists.freedesktop.org,
	Qianhai Wu <wuqianhai@loongson.cn>,
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
	Simon Ser <contact@emersion.fr>,
	wayland-devel@lists.freedesktop.org,
	Xaver Hugl <xaver.hugl@kde.org>,
	Xi Ruoyao <xry111@xry111.site>
Subject: [PATCH 10/12] drm/i915: Complete no-op "async flips" by hand
Date: Mon, 16 Nov 2026 11:11:28 +0200
Message-ID: <20261116091130.13950-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
References: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_011326_471639_AC59B970 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -4.3 (----)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklm
IG5vIHBsYW5lcyBhcHBlYXIgaW4gYW4gYXN5bmMgZmxpcCBjb21taXQgdGhlcmUgd2lsbCBiZQpu
byBmbGlwIGRvbmUgaW50ZXJydXB0LiBDb21wbGV0ZSB0aGUgY29tbWl0IGJ5IGhhbmQgaW4KdGhh
dCBjYXNlLiBTaG91bGRuJ3QgcmVhbGx5IG1hdHRlciB3aGVyZSB3ZSBkbyB0aGlzIGV4YWN0bHks
CmJ1dCBqdXN0IGJlZm9yZSB0aGUgd2FpdCBzdHVmZiBuZWFyIHRoZSBlbmQgb2YgdGhlIGNvbW1p
dApzZWVtcyByZWFzb25hYmxlLgoKVGhpcyBjYW4ndCBoYXBwZW4gdmlhIHRoZSBsZWdhY3kgcGFn
ZSBmbGlwIGlvY3RsIHBhdGgsCmJ1dCBub3RoaW5nIHByZXZlbnRzIGZ1bGx5IG5vLW9wIChhcyBm
YXIgYXMgcGxhbmVzIGFyZQpjb25jZXJuZWQpICJhc3luYyBmbGlwcyIgdmlhIHRoZSBhdG9taWMg
aW9jdGwuCgpUT0RPOiBpZ3QgdGVzdHMgZm9yIGF0b21pYythc3luYyB1YXBpIGRvbid0IHJlYWxs
eSBleGlzdCA6KAoKQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBBbmRyw6kg
QWxtZWlkYSA8YW5kcmVhbG1laWRAaWdhbGlhLmNvbT4KQ2M6IEJvcmlzIEJyZXppbGxvbiA8YmJy
ZXppbGxvbkBrZXJuZWwub3JnPgpDYzogQ2hyaXN0b3BoZXIgU25vd2hpbGwgPGNocmlzQGtvZGU1
NC5uZXQ+CkNjOiBEYXZlIFN0ZXZlbnNvbiA8ZGF2ZS5zdGV2ZW5zb25AcmFzcGJlcnJ5cGkuY29t
PgpDYzogRGhhcm1hIEJhbGFzdWJpcmFtYW5pIDxkaGFybWEuYkBtaWNyb2NoaXAuY29tPgpDYzog
RG1pdHJ5IEJhcnlzaGtvdiA8bHVtYWdAa2VybmVsLm9yZz4KQ2M6IGZyZWVkcmVub0BsaXN0cy5m
cmVlZGVza3RvcC5vcmcKQ2M6IEd1c3Rhdm8gUGFkb3ZhbiA8Z3VzdGF2by5wYWRvdmFuQGNvbGxh
Ym9yYS5jb20+CkNjOiBIdWFjYWkgQ2hlbiA8Y2hlbmh1YWNhaUBrZXJuZWwub3JnPgpDYzogSWNl
bm93eSBaaGVuZyA8emhlbmd4aW5nZGFAaXNjYXMuYWMuY24+CkNjOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IEpp
YW5taW4gTHYgPGx2amlhbm1pbkBsb29uZ3Nvbi5jbj4KQ2M6IGxpbnV4LWFybS1tc21Admdlci5r
ZXJuZWwub3JnCkNjOiBsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC10ZWdyYUB2Z2VyLmtlcm5l
bC5vcmcKQ2M6IExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgpDYzogTWHDrXJhIENh
bmFsIDxtY2FuYWxAaWdhbGlhLmNvbT4KQ2M6IE1hbmlrYW5kYW4gTXVyYWxpZGhhcmFuIDxtYW5p
a2FuZGFuLm1AbWljcm9jaGlwLmNvbT4KQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVs
Lm9yZz4KQ2M6IE1pbmdjb25nIEJhaSA8amVmZmJhaUBhb3NjLmlvPgpDYzogbm91dmVhdUBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKQ2M6IFFpYW5oYWkgV3UgPHd1cWlhbmhhaUBsb29uZ3Nvbi5jbj4K
Q2M6IFJhc3BiZXJyeSBQaSBLZXJuZWwgTWFpbnRlbmFuY2UgPGtlcm5lbC1saXN0QHJhc3BiZXJy
eXBpLmNvbT4KQ2M6IFNpbW9uIFNlciA8Y29udGFjdEBlbWVyc2lvbi5mcj4KQ2M6IHdheWxhbmQt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBYYXZlciBIdWdsIDx4YXZlci5odWdsQGtk
ZS5vcmc+CkNjOiBYaSBSdW95YW8gPHhyeTExMUB4cnkxMTEuc2l0ZT4KU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDM4ICsrKysrKysrKysr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZjRkOTE0OGVmZGUzLi5h
ZmFhZjNmYzQ2NDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCkBAIC0xMTkwLDYgKzExOTAsNDIgQEAgc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19kaXNh
YmxlX2ZsaXBfZG9uZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAl9CiB9CiAK
K3N0YXRpYyB2b2lkIGludGVsX2NydGNfY29tcGxldGVfbm9vcF9hc3luY19mbGlwKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsKKwlzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKKworCWlmICgh
Y3J0Y19zdGF0ZS0+ZG9fYXN5bmNfZmxpcCkKKwkJcmV0dXJuOworCisJLyoKKwkgKiBJZiB0aGVy
ZSBhcmUgcGxhbmVzIGFjdHVhbGx5IHBlcmZvcm1pbmcgdGhlIGFzeW5jIGZsaXAgdGhlbgorCSAq
IHRoZSBjb21taXQgd2lsbCBiZSBjb21wbGV0ZWQgdmlhIHRoZSBmbGlwIGRvbmUgaW50ZXJydXB0
CisJICogaGFuZGxlci4gRm9yIGEgZnVsbHkgbm8tb3AgImFzeW5jIGZsaXAiIHRoZSBjb21taXQg
bXVzdAorCSAqIGJlIGNvbXBsZXRlZCBieSBoYW5kIGFzIG5vIGludGVycnVwdCB3aWxsIGJlIHJh
aXNlZC4KKwkgKi8KKwlpZiAoY3J0Y19zdGF0ZS0+dXBkYXRlX3BsYW5lcykKKwkJcmV0dXJuOwor
CisJaWYgKGNydGNfc3RhdGUtPnVhcGkuZXZlbnQpIHsKKwkJc3Bpbl9sb2NrX2lycSgmZGlzcGxh
eS0+ZHJtLT5ldmVudF9sb2NrKTsKKwkJZHJtX2NydGNfc2VuZF92YmxhbmtfZXZlbnQoJmNydGMt
PmJhc2UsCisJCQkJCSAgIGNydGNfc3RhdGUtPnVhcGkuZXZlbnQpOworCQlzcGluX3VubG9ja19p
cnEoJmRpc3BsYXktPmRybS0+ZXZlbnRfbG9jayk7CisKKwkJY3J0Y19zdGF0ZS0+dWFwaS5ldmVu
dCA9IE5VTEw7CisJfQorfQorCitzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY29tcGxldGVfbm9v
cF9hc3luY19mbGlwcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKK3sKKwlzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGU7CisJc3RydWN0IGludGVsX2NydGMg
KmNydGM7CisKKwlmb3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywg
bmV3X2NydGNfc3RhdGUpCisJCWludGVsX2NydGNfY29tcGxldGVfbm9vcF9hc3luY19mbGlwKG5l
d19jcnRjX3N0YXRlKTsKK30KKwogc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19hc3luY19mbGlwX2Rp
c2FibGVfd2Eoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCQkJCSAgICAgc3Ry
dWN0IGludGVsX2NydGMgKmNydGMpCiB7CkBAIC03ODUyLDYgKzc4ODgsOCBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpCiAJaWYgKGludGVsX2Rpc3BsYXlfcG93ZXJfZGMzY29fYWxsb3dlZChkaXNwbGF5KSkKIAkJ
aW50ZWxfY210Z19wcm9ncmFtKHN0YXRlKTsKIAorCWludGVsX2F0b21pY19jb21wbGV0ZV9ub29w
X2FzeW5jX2ZsaXBzKHN0YXRlKTsKKwogCWludGVsX3dhaXRfZm9yX3ZibGFua193b3JrZXJzKHN0
YXRlKTsKIAogCS8qIEZJWE1FOiBXZSBzaG91bGQgY2FsbCBkcm1fYXRvbWljX2hlbHBlcl9jb21t
aXRfaHdfZG9uZSgpIGhlcmUKLS0gCjIuNTYuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
