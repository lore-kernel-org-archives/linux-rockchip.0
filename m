Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9C4606A329
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 09:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FgWdT73K;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=RPj3y5Vs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=YrqDoMZvKmZAgFnLGA0cO3zAlCVjBZmlMK3l7RDi8CM=; b=FgWdT73K7capmvH2FOhHFSy2u6
	wGgOMWTo0R+Axp/IqsS0PJjGhj1tcRpMhKq86ZZ6dMteC68JwFfL/+XM7bgmMLGjE5biYU84k1Lqh
	DfLoZxkZ23xQFzbVOFKaIOEEaiomA657Zv5LTfiFTJg6CjusRsiOAgRjDGZGYDsQdH3vvTYM/1QCR
	VEZAjswwQFIj2rhyElEMRIEVIDmi/zlTiMTd5nFFXi8exX1uV+t9A/yr1fznf3v8hOkBWmtzYdT47
	pk9JyJTndzAl6FkvBExn/9m8ZttmggK72s5NHW4fwy23YAinPBQcwmnBtKzWGIQP2nb0XacbjPDxk
	qD55mb9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSslk-00000001jJN-3GZl;
	Mon, 16 Nov 2026 09:12:56 +0000
Received: from mgamail.intel.com ([198.175.65.14])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSslh-00000001jGS-28nq;
	Mon, 16 Nov 2026 09:12:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794820373; x=1826356373;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=lgXiNcTty7xTAzrRCls8eXQdKOJV57lUY6JX7ooMS6s=;
  b=RPj3y5VshtFG5SgaEJ+cweHMvY6kWspgC/uGE9a61Ty6Q7xW87sLnQ5t
   4ivOj0hadsymn+1JOsoH3GtLtYmdMDuLZk6thTTtz0GVHHXcN+kGVrA1m
   q28Aj2ZaUGV5asGQd3YH9v66j4npmd04aJ09/ZPTdDqyAeD4aiL/dMpEy
   f2gm7Ndv3FudA46tsVvMVLbJJAshBfZMG6GS7lEr/rsDZaQnG7dIAypJt
   T4RtqOjd6B+BN5qJxsecxXuGZgbZ5g8RR2kSw1VCmFHfuY0/YZPpffkFW
   bL6Dw7V0QFfIcc7AMyoGhKwj4xQ0GT63zOl12O2eZrO0MezlakjpG09+e
   Q==;
X-CSE-ConnectionGUID: Zs22ZcVzQAK2fzuFMmOgZQ==
X-CSE-MsgGUID: AnMo0WAZQdGWqZKaOeA9Ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11967"; a="3443443"
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="3443443"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 01:12:52 -0800
X-CSE-ConnectionGUID: MbF+WPQPQreUpryutwuyyw==
X-CSE-MsgGUID: Mfg8cZhcS0ynPIvV9t4bKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="9909164"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.93])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 01:12:45 -0800
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
Subject: [PATCH 07/12] drm/atomic/uapi: Document the non-obvious fence/fb_id prop behaviour
Date: Mon, 16 Nov 2026 11:11:25 +0200
Message-ID: <20261116091130.13950-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
References: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_011253_615995_2C941E47 
X-CRM114-Status: GOOD (  10.81  )
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBhdG9taWMgYXN5bmMgZmxpcCBjaGVja3Mgd2FudCB0byBjb21wYXJlIHRoZSBvbGQgdnMuIG5l
dwpwcm9wZXJ0eSB2YWx1ZXMuIEZvciBub3JtYWwgcHJvcGVydGllcyB0aGF0IGlzIGFsbCBwZXJm
ZWN0bHkKY2xlYXIsIGJ1dCBmb3IgdGhlIGZlbmNlL2ZiX2lkIHByb3BlcnRpZXMgdGhlIG9sZCB2
YWx1ZSBpcwpub3Qgd2hhdCBvbmUgbWlnaHQgZXhwZWN0LiBBZGQgc29tZSBub3RlcyB0byByZW1p
bmQgdGhlIHJlYWRlcgp3aGF0IGlzIGhhcHBlbmluZy4KCkNjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpDYzogQW5kcsOpIEFsbWVpZGEgPGFuZHJlYWxtZWlkQGlnYWxpYS5jb20+CkNj
OiBCb3JpcyBCcmV6aWxsb24gPGJicmV6aWxsb25Aa2VybmVsLm9yZz4KQ2M6IENocmlzdG9waGVy
IFNub3doaWxsIDxjaHJpc0Brb2RlNTQubmV0PgpDYzogRGF2ZSBTdGV2ZW5zb24gPGRhdmUuc3Rl
dmVuc29uQHJhc3BiZXJyeXBpLmNvbT4KQ2M6IERoYXJtYSBCYWxhc3ViaXJhbWFuaSA8ZGhhcm1h
LmJAbWljcm9jaGlwLmNvbT4KQ2M6IERtaXRyeSBCYXJ5c2hrb3YgPGx1bWFnQGtlcm5lbC5vcmc+
CkNjOiBmcmVlZHJlbm9AbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBHdXN0YXZvIFBhZG92YW4g
PGd1c3Rhdm8ucGFkb3ZhbkBjb2xsYWJvcmEuY29tPgpDYzogSHVhY2FpIENoZW4gPGNoZW5odWFj
YWlAa2VybmVsLm9yZz4KQ2M6IEljZW5vd3kgWmhlbmcgPHpoZW5neGluZ2RhQGlzY2FzLmFjLmNu
PgpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogaW50ZWwteGVAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCkNjOiBKaWFubWluIEx2IDxsdmppYW5taW5AbG9vbmdzb24uY24+CkNj
OiBsaW51eC1hcm0tbXNtQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtbWVkaWF0ZWtAbGlzdHMu
aW5mcmFkZWFkLm9yZwpDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzog
bGludXgtdGVncmFAdmdlci5rZXJuZWwub3JnCkNjOiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVA
YXJtLmNvbT4KQ2M6IE1hw61yYSBDYW5hbCA8bWNhbmFsQGlnYWxpYS5jb20+CkNjOiBNYW5pa2Fu
ZGFuIE11cmFsaWRoYXJhbiA8bWFuaWthbmRhbi5tQG1pY3JvY2hpcC5jb20+CkNjOiBNYXhpbWUg
UmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+CkNjOiBNaW5nY29uZyBCYWkgPGplZmZiYWlAYW9z
Yy5pbz4KQ2M6IG5vdXZlYXVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBRaWFuaGFpIFd1IDx3
dXFpYW5oYWlAbG9vbmdzb24uY24+CkNjOiBSYXNwYmVycnkgUGkgS2VybmVsIE1haW50ZW5hbmNl
IDxrZXJuZWwtbGlzdEByYXNwYmVycnlwaS5jb20+CkNjOiBTaW1vbiBTZXIgPGNvbnRhY3RAZW1l
cnNpb24uZnI+CkNjOiB3YXlsYW5kLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogWGF2
ZXIgSHVnbCA8eGF2ZXIuaHVnbEBrZGUub3JnPgpDYzogWGkgUnVveWFvIDx4cnkxMTFAeHJ5MTEx
LnNpdGU+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfdWFwaS5jIHwgMTgg
KysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGku
YyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYwppbmRleCBhYWQ3MWQzZTIxMDUu
LmNmMWVkY2IyNDJjYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfdWFw
aS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYwpAQCAtMTIyNSw2ICsx
MjI1LDExIEBAIGludCBkcm1fYXRvbWljX3NldF9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2F0b21pY19j
b21taXQgKnN0YXRlLAogCQkJaWYgKHJldCkKIAkJCQlicmVhazsKIAorCQkJLyoKKwkJCSAqIE5v
dGUgdGhhdCBmb3IgV1JJVEVCQUNLX0ZCX0lEIGFuZCBXUklURUJBQ0tfT1VUX0ZFTkNFX1BUUgor
CQkJICogdGhlIG9sZCB2YWx1ZSB3aWxsIGFsd2F5cyBiZSAwLiBTbyBhbnkgY29tbWl0IHRoYXQg
c2V0cyBlaXRoZXIKKwkJCSAqIHByb3BlcnR5IHRvIGFueSBvdGhlciB2YWx1ZSB3aWxsIG5vdCBi
ZSBjb25zaWRlcmVkIGEgbm8tb3AuCisJCQkgKi8KIAkJCWlmIChvbGRfdmFsICE9IHByb3BfdmFs
dWUpIHsKIAkJCQlkcm1fZGJnX2F0b21pYyhwcm9wLT5kZXYsCiAJCQkJCSAgICAgICAiW0NPTk5F
Q1RPUjolZDolc11bUFJPUDolZDolc10gVW5zdXBwb3J0ZWQgcHJvcGVydHkgY2hhbmdlIGR1cmlu
ZyBhc3luYyBmbGlwXG4iLApAQCAtMTI1Niw2ICsxMjYxLDExIEBAIGludCBkcm1fYXRvbWljX3Nl
dF9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2F0b21pY19jb21taXQgKnN0YXRlLAogCQkJaWYgKHJldCkK
IAkJCQlicmVhazsKIAorCQkJLyoKKwkJCSAqIE5vdGUgdGhhdCBmb3IgT1VUX0ZFTkNFX1BUUiB0
aGUgb2xkIHZhbHVlIHdpbGwgYWx3YXlzIGJlIDAuCisJCQkgKiBTbyBhbnkgY29tbWl0IHRoYXQg
c2V0cyB0aGUgcHJvcGVydHkgdG8gYW55IG90aGVyIHZhbHVlCisJCQkgKiB3aWxsIG5vdCBiZSBj
b25zaWRlcmVkIGEgbm8tb3AuCisJCQkgKi8KIAkJCWlmIChvbGRfdmFsICE9IHByb3BfdmFsdWUp
IHsKIAkJCQlkcm1fZGJnX2F0b21pYyhwcm9wLT5kZXYsCiAJCQkJCSAgICAgICAiW0NSVEM6JWQ6
JXNdW1BST1A6JWQ6JXNdIFVuc3VwcG9ydGVkIHByb3BlcnR5IGNoYW5nZSBkdXJpbmcgYXN5bmMg
ZmxpcFxuIiwKQEAgLTEyODksNyArMTI5OSwxMyBAQCBpbnQgZHJtX2F0b21pY19zZXRfcHJvcGVy
dHkoc3RydWN0IGRybV9hdG9taWNfY29tbWl0ICpzdGF0ZSwKIAkJCWlmIChyZXQpCiAJCQkJYnJl
YWs7CiAKLQkJCS8qIGZhaWwgZXZlcnl0aGluZyB0aGF0IGlzbid0IG5vLW9wIG9yIGEgcHVyZSBm
bGlwICovCisJCQkvKgorCQkJICogRmFpbCBldmVyeXRoaW5nIHRoYXQgaXNuJ3Qgbm8tb3Agb3Ig
YSBwdXJlIGZsaXAuCisJCQkgKgorCQkJICogTm90ZSB0aGF0IGZvciBJTl9GRU5DRV9GRCB0aGUg
b2xkIHZhbHVlIHdpbGwgYWx3YXlzIGJlIC0xLgorCQkJICogU28gYW55IGNvbW1pdCB0aGF0IHNl
dHMgdGhlIHByb3BlcnR5IHRvIGFueSBvdGhlciB2YWx1ZQorCQkJICogd2lsbCBub3QgYmUgY29u
c2lkZXJlZCBhIG5vLW9wLgorCQkJICovCiAJCQlpZiAob2xkX3ZhbCAhPSBwcm9wX3ZhbHVlICYm
CiAJCQkgICAgcHJvcCAhPSBjb25maWctPnByb3BfZmJfaWQgJiYKIAkJCSAgICBwcm9wICE9IGNv
bmZpZy0+cHJvcF9pbl9mZW5jZV9mZCAmJgotLSAKMi41Ni4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
