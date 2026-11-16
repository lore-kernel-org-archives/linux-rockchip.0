Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAE3D606A329
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 09:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FGvc+KT+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=fdhj0z7l
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=yQtaxWMY/yo9i2c/up8sDCliKGZ2t44DnQ9XHhN1/3E=; b=FGvc+KT++EBjIPWJFMEQBJVq1S
	atLLkyAeiilaVXOTV4aEpGKOiWdoJOoxRGkKr5SlX6Bmkdr6BLv5a8KgjsDrbSSI/QbrMANhuS5EZ
	FElLWA4c7DWyv+8obwBnab5hV2Cc8uuBmwXFCkXMsjCoC8H0N+veSMzOqrH5uPcRwfc+uC+llYsIS
	ANf1AB2n7LiuQ/LODH/fZmgcJCPXmSaR2PuFroNCAuPml5UpGYUEiHjUN9DXBbHmGtZ6XGoRhYpGP
	J1A1hrKt0lNJrwY4vIERJZUom8uNjtV8I/onL+kx/J/UrDnJnq+zHypR4mkZ7pp8/bATdPJwgLcn3
	LTAeIwvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSslb-00000001jAj-1cQ8;
	Mon, 16 Nov 2026 09:12:47 +0000
Received: from mgamail.intel.com ([192.198.163.10])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSslR-00000001j3E-1YIK;
	Mon, 16 Nov 2026 09:12:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794820357; x=1826356357;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=RkhyzjuNlXgxmJ1hs/ayERDzfWzK8akCYym0w0pTyDc=;
  b=fdhj0z7lzOaYSJIDDXFaGiMa7TMDQ1nN5DLoX/iOl0hUX1zC3dwAApmT
   o1ZXx3EPaf7TEwKJQLSXbmLtbxmD+7gET61aTVu0jN8jXJ4BnGf0FhJPF
   4rrSP6yi1nViA99m8L3UGia6/07JPfH9gnBrBCKwuYcOf7cY3bao7CdEg
   ci85a+eago+d/qU/3rFREHucWyzmMeib+Pz5GQKMdkpx9CxTbPb7JY/Ux
   5F8l+Ca6mvnvfRdBMT6JLZFeZWi0tZpg+/NjmFkx6GJ31ZuB14iq0oCbu
   dboTPJiaoH15A2AS15LAzPf00QRBzIX9meYqW+8dMZ4bXpBZoqN1tEBDW
   A==;
X-CSE-ConnectionGUID: yKPkR/k6RIGNezVyXo0hrw==
X-CSE-MsgGUID: 8PY7cf2dS5el1cxyikZjWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11967"; a="3441744"
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="3441744"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 01:12:36 -0800
X-CSE-ConnectionGUID: eSWWbGsqQsClMOtxH9qrUQ==
X-CSE-MsgGUID: ujhghr56Si+fr6fdGRMLpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="9636389"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.93])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 01:12:29 -0800
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
Subject: [PATCH 05/12] drm/atomic/uapi: Eliminate the confusing drm_atomic_check_prop_changes()
Date: Mon, 16 Nov 2026 11:11:23 +0200
Message-ID: <20261116091130.13950-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
References: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_011238_812525_D5E3D52F 
X-CRM114-Status: GOOD (  15.64  )
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmRy
bV9hdG9taWNfY2hlY2tfcHJvcF9jaGFuZ2VzKCkgaXMgYSB2ZXJ5IGNvbmZ1c2luZyBmb3IKbWFu
eSByZWFzb25zOgotIHRoZSAncmV0JyBwcm9wYWdhdGlvbiB0aHJvdWdoIGl0IGlzIGNvbXBsZXRl
bHkgbm9uLW9idmlvdXMKLSBmb3IgcGxhbmVzIGl0IHByaW50cyB0aGUgZGVidWcgbWVzc2FnZSBh
Ym91dCByZWplY3RpbmcgdGhlCiAgdXBkYXRlIGJlZm9yZSB3ZSBhY3R1YWxseSBkZWNpZGUgd2hl
dGhlciB0aGUgdXBkYXRlIG5lZWRzCiAgdG8gYmUgcmVqZWN0ZWQgb3Igbm90Ci0gdGhlIGRlYnVn
IG1lc3NhZ2UgaXMgYWxzbyBwcmludGVkIGlmIHRoZSBwcm9wZXJ0eSBkb2Vzbid0CiAgZXhpc3Qs
IHdoaWNoIGlzIGNvbmZ1c2luZwotIHRoZSBkZWJ1ZyBtZXNzYWdlIGxhY2tzIHRoZSBLTVMgb2Jq
ZWN0IHR5cGUvSUQvbmFtZSwKICB3aGljaCBjb3VsZCBiZSBoZWxwZnVsIGR1cmluZyBkZWJ1Z2dp
bmcKCkp1c3QgZ2V0IHJpZCBvZiB0aGUgd2hvbGUgZHJtX2F0b21pY19jaGVja19wcm9wX2NoYW5n
ZXMoKSBhbmQKZG8gdGhpbmdzIGJ5IGhhbmQuCgpBbHNvIHJlbW92ZSB0aGUgZGVidWcgbWVzc2Fn
ZSBmb3IgdGhlIGNhc2Ugd2hlcmUgdGhlIHByb3BlcnR5CmRvZXNuJ3QgZXhpc3QgYXMgZHJtX2F0
b21pY18qX2dldF9wcm9wZXJ0eSgpIHdpbGwgYWxyZWFkeSBwcmludAppdHMgb3duIGRlYnVnIG1l
c3NhZ2UgaW4gdGhhdCBzaXR1YXRpb24uCgpDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKQ2M6IEFuZHLDqSBBbG1laWRhIDxhbmRyZWFsbWVpZEBpZ2FsaWEuY29tPgpDYzogQm9yaXMg
QnJlemlsbG9uIDxiYnJlemlsbG9uQGtlcm5lbC5vcmc+CkNjOiBDaHJpc3RvcGhlciBTbm93aGls
bCA8Y2hyaXNAa29kZTU0Lm5ldD4KQ2M6IERhdmUgU3RldmVuc29uIDxkYXZlLnN0ZXZlbnNvbkBy
YXNwYmVycnlwaS5jb20+CkNjOiBEaGFybWEgQmFsYXN1YmlyYW1hbmkgPGRoYXJtYS5iQG1pY3Jv
Y2hpcC5jb20+CkNjOiBEbWl0cnkgQmFyeXNoa292IDxsdW1hZ0BrZXJuZWwub3JnPgpDYzogZnJl
ZWRyZW5vQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogR3VzdGF2byBQYWRvdmFuIDxndXN0YXZv
LnBhZG92YW5AY29sbGFib3JhLmNvbT4KQ2M6IEh1YWNhaSBDaGVuIDxjaGVuaHVhY2FpQGtlcm5l
bC5vcmc+CkNjOiBJY2Vub3d5IFpoZW5nIDx6aGVuZ3hpbmdkYUBpc2Nhcy5hYy5jbj4KQ2M6IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpDYzogSmlhbm1pbiBMdiA8bHZqaWFubWluQGxvb25nc29uLmNuPgpDYzogbGludXgt
YXJtLW1zbUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVh
ZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXRl
Z3JhQHZnZXIua2VybmVsLm9yZwpDYzogTGl2aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFybS5jb20+
CkNjOiBNYcOtcmEgQ2FuYWwgPG1jYW5hbEBpZ2FsaWEuY29tPgpDYzogTWFuaWthbmRhbiBNdXJh
bGlkaGFyYW4gPG1hbmlrYW5kYW4ubUBtaWNyb2NoaXAuY29tPgpDYzogTWF4aW1lIFJpcGFyZCA8
bXJpcGFyZEBrZXJuZWwub3JnPgpDYzogTWluZ2NvbmcgQmFpIDxqZWZmYmFpQGFvc2MuaW8+CkNj
OiBub3V2ZWF1QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogUWlhbmhhaSBXdSA8d3VxaWFuaGFp
QGxvb25nc29uLmNuPgpDYzogUmFzcGJlcnJ5IFBpIEtlcm5lbCBNYWludGVuYW5jZSA8a2VybmVs
LWxpc3RAcmFzcGJlcnJ5cGkuY29tPgpDYzogU2ltb24gU2VyIDxjb250YWN0QGVtZXJzaW9uLmZy
PgpDYzogd2F5bGFuZC1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IFhhdmVyIEh1Z2wg
PHhhdmVyLmh1Z2xAa2RlLm9yZz4KQ2M6IFhpIFJ1b3lhbyA8eHJ5MTExQHhyeTExMS5zaXRlPgpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYyB8IDUxICsrKysrKysr
KysrKysrKysrKystLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCsp
LCAyMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21p
Y191YXBpLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMKaW5kZXggZWIwMDI3
OTk0OTdjLi4yZWEwM2I0YjBiZTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRv
bWljX3VhcGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMKQEAgLTEx
OTQsMTkgKzExOTQsNiBAQCBpbnQgZHJtX2F0b21pY19jb25uZWN0b3JfY29tbWl0X2RwbXMoc3Ry
dWN0IGRybV9hdG9taWNfY29tbWl0ICpzdGF0ZSwKIAlyZXR1cm4gcmV0OwogfQogCi1zdGF0aWMg
aW50IGRybV9hdG9taWNfY2hlY2tfcHJvcF9jaGFuZ2VzKGludCByZXQsIHVpbnQ2NF90IG9sZF92
YWwsIHVpbnQ2NF90IHByb3BfdmFsdWUsCi0JCQkJCSBzdHJ1Y3QgZHJtX3Byb3BlcnR5ICpwcm9w
KQotewotCWlmIChyZXQgIT0gMCB8fCBvbGRfdmFsICE9IHByb3BfdmFsdWUpIHsKLQkJZHJtX2Ri
Z19hdG9taWMocHJvcC0+ZGV2LAotCQkJICAgICAgICJbUFJPUDolZDolc10gTm8gcHJvcCBjYW4g
YmUgY2hhbmdlZCBkdXJpbmcgYXN5bmMgZmxpcFxuIiwKLQkJCSAgICAgICBwcm9wLT5iYXNlLmlk
LCBwcm9wLT5uYW1lKTsKLQkJcmV0dXJuIC1FSU5WQUw7Ci0JfQotCi0JcmV0dXJuIDA7Ci19Ci0K
IGludCBkcm1fYXRvbWljX3NldF9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2F0b21pY19jb21taXQgKnN0
YXRlLAogCQkJICAgIHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2LAogCQkJICAgIHN0cnVjdCBk
cm1fbW9kZV9vYmplY3QgKm9iaiwKQEAgLTEyMzUsOCArMTIyMiwxNiBAQCBpbnQgZHJtX2F0b21p
Y19zZXRfcHJvcGVydHkoc3RydWN0IGRybV9hdG9taWNfY29tbWl0ICpzdGF0ZSwKIAkJaWYgKGFz
eW5jX2ZsaXApIHsKIAkJCXJldCA9IGRybV9hdG9taWNfY29ubmVjdG9yX2dldF9wcm9wZXJ0eShj
b25uZWN0b3IsIGNvbm5lY3Rvcl9zdGF0ZSwKIAkJCQkJCQkJcHJvcCwgJm9sZF92YWwpOwotCQkJ
cmV0ID0gZHJtX2F0b21pY19jaGVja19wcm9wX2NoYW5nZXMocmV0LCBvbGRfdmFsLCBwcm9wX3Zh
bHVlLCBwcm9wKTsKLQkJCWJyZWFrOworCQkJaWYgKHJldCkKKwkJCQlicmVhazsKKworCQkJaWYg
KG9sZF92YWwgIT0gcHJvcF92YWx1ZSkgeworCQkJCWRybV9kYmdfYXRvbWljKHByb3AtPmRldiwK
KwkJCQkJICAgICAgICJbUFJPUDolZDolc10gTm8gcHJvcCBjYW4gYmUgY2hhbmdlZCBkdXJpbmcg
YXN5bmMgZmxpcFxuIiwKKwkJCQkJICAgICAgIHByb3AtPmJhc2UuaWQsIHByb3AtPm5hbWUpOwor
CQkJCXJldCA9IC1FSU5WQUw7CisJCQkJYnJlYWs7CisJCQl9CiAJCX0KIAogCQlyZXQgPSBkcm1f
YXRvbWljX2Nvbm5lY3Rvcl9zZXRfcHJvcGVydHkoY29ubmVjdG9yLApAQCAtMTI1Nyw4ICsxMjUy
LDE2IEBAIGludCBkcm1fYXRvbWljX3NldF9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2F0b21pY19jb21t
aXQgKnN0YXRlLAogCQlpZiAoYXN5bmNfZmxpcCkgewogCQkJcmV0ID0gZHJtX2F0b21pY19jcnRj
X2dldF9wcm9wZXJ0eShjcnRjLCBjcnRjX3N0YXRlLAogCQkJCQkJCSAgIHByb3AsICZvbGRfdmFs
KTsKLQkJCXJldCA9IGRybV9hdG9taWNfY2hlY2tfcHJvcF9jaGFuZ2VzKHJldCwgb2xkX3ZhbCwg
cHJvcF92YWx1ZSwgcHJvcCk7Ci0JCQlicmVhazsKKwkJCWlmIChyZXQpCisJCQkJYnJlYWs7CisK
KwkJCWlmIChvbGRfdmFsICE9IHByb3BfdmFsdWUpIHsKKwkJCQlkcm1fZGJnX2F0b21pYyhwcm9w
LT5kZXYsCisJCQkJCSAgICAgICAiW1BST1A6JWQ6JXNdIE5vIHByb3AgY2FuIGJlIGNoYW5nZWQg
ZHVyaW5nIGFzeW5jIGZsaXBcbiIsCisJCQkJCSAgICAgICBwcm9wLT5iYXNlLmlkLCBwcm9wLT5u
YW1lKTsKKwkJCQlyZXQgPSAtRUlOVkFMOworCQkJCWJyZWFrOworCQkJfQogCQl9CiAKIAkJcmV0
ID0gZHJtX2F0b21pY19jcnRjX3NldF9wcm9wZXJ0eShjcnRjLApAQCAtMTI4MSwxMiArMTI4NCwx
OCBAQCBpbnQgZHJtX2F0b21pY19zZXRfcHJvcGVydHkoc3RydWN0IGRybV9hdG9taWNfY29tbWl0
ICpzdGF0ZSwKIAkJCS8qIG5vLW9wIGNoYW5nZXMgYXJlIGFsd2F5cyBhbGxvd2VkICovCiAJCQly
ZXQgPSBkcm1fYXRvbWljX3BsYW5lX2dldF9wcm9wZXJ0eShwbGFuZSwgcGxhbmVfc3RhdGUsCiAJ
CQkJCQkJICAgIHByb3AsICZvbGRfdmFsKTsKLQkJCXJldCA9IGRybV9hdG9taWNfY2hlY2tfcHJv
cF9jaGFuZ2VzKHJldCwgb2xkX3ZhbCwgcHJvcF92YWx1ZSwgcHJvcCk7CisJCQlpZiAocmV0KQor
CQkJCWJyZWFrOwogCiAJCQkvKiBmYWlsIGV2ZXJ5dGhpbmcgdGhhdCBpc24ndCBuby1vcCBvciBh
IHB1cmUgZmxpcCAqLwotCQkJaWYgKHJldCAmJiBwcm9wICE9IGNvbmZpZy0+cHJvcF9mYl9pZCAm
JgorCQkJaWYgKG9sZF92YWwgIT0gcHJvcF92YWx1ZSAmJgorCQkJICAgIHByb3AgIT0gY29uZmln
LT5wcm9wX2ZiX2lkICYmCiAJCQkgICAgcHJvcCAhPSBjb25maWctPnByb3BfaW5fZmVuY2VfZmQg
JiYKIAkJCSAgICBwcm9wICE9IGNvbmZpZy0+cHJvcF9mYl9kYW1hZ2VfY2xpcHMpIHsKKwkJCQlk
cm1fZGJnX2F0b21pYyhwcm9wLT5kZXYsCisJCQkJCSAgICAgICAiW1BST1A6JWQ6JXNdIE5vIHBy
b3AgY2FuIGJlIGNoYW5nZWQgZHVyaW5nIGFzeW5jIGZsaXBcbiIsCisJCQkJCSAgICAgICBwcm9w
LT5iYXNlLmlkLCBwcm9wLT5uYW1lKTsKKwkJCQlyZXQgPSAtRUlOVkFMOwogCQkJCWJyZWFrOwog
CQkJfQogCkBAIC0xMjk2LDEwICsxMzA1LDEyIEBAIGludCBkcm1fYXRvbWljX3NldF9wcm9wZXJ0
eShzdHJ1Y3QgZHJtX2F0b21pY19jb21taXQgKnN0YXRlLAogCQkJICogZGVjaXNpb24uIERyaXZl
cnMgdGhhdCB3YW50IHRoaXMgbmVlZCB0byBqdXN0IGRvCiAJCQkgKiB0aGVzZSBjaGVja3MgdGhl
bXNlbHZlcyBzb21ld2hlcmUuCiAJCQkgKi8KLQkJCWlmIChyZXQgJiYgcGxhbmUtPnR5cGUgIT0g
RFJNX1BMQU5FX1RZUEVfUFJJTUFSWSkgeworCQkJaWYgKG9sZF92YWwgIT0gcHJvcF92YWx1ZSAm
JiBwbGFuZS0+dHlwZSAhPSBEUk1fUExBTkVfVFlQRV9QUklNQVJZKSB7CiAJCQkJLyogYXNrIHRo
ZSBkcml2ZXIgaWYgdGhpcyBub24tcHJpbWFyeSBwbGFuZSBpcyBzdXBwb3J0ZWQgKi8KIAkJCQlp
ZiAocGxhbmVfZnVuY3MgJiYgcGxhbmVfZnVuY3MtPmF0b21pY19ieXBhc3NfY2hlY2spCiAJCQkJ
CXJldCA9IHBsYW5lX2Z1bmNzLT5hdG9taWNfYnlwYXNzX2NoZWNrKHBsYW5lLCBzdGF0ZSwgdHJ1
ZSk7CisJCQkJZWxzZQorCQkJCQlyZXQgPSAtRUlOVkFMOwogCiAJCQkJaWYgKHJldCkgewogCQkJ
CQlkcm1fZGJnX2F0b21pYyhwcm9wLT5kZXYsCi0tIAoyLjU2LjAKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
