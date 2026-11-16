Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A82C606A887
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 09:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PVD2MKW8;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=K7KYmL/+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=reBZMgXjpOIvytjsrw6rHdZ1jg0qkaevkzSTEn+muC4=; b=PVD2MKW8KoZSZg/OhvB+ulvZ61
	gMqSRYtyBf1QdBX4XwieaKw1uDve/957qvNiF2b12hirhrOr5VrP2iToICUZBOUFSxgARMDYXYloz
	g9xpyjgw66j1poqqWiCUxqvOvRAMr/RLv0O0U+3yD9MJisWtaXas1tSkMnc/qszK+JwvTJfj46vHe
	W6DuyPUnDh5Axdwt6jQUbuAC0lBjIZmibJ67uO/0xVlYxanoT+XCm3QGsqUah3mPIrPZDcTBulUZf
	93CGnvf6IMCuun8km4/jqXiYlCVWm+bi6Z+Ev/F7SI3ODtGSvg+OwDst1av5uIrUEp1Q+9DujdVQo
	jsxw8JuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSslu-00000001jO8-24Hg;
	Mon, 16 Nov 2026 09:13:06 +0000
Received: from mgamail.intel.com ([198.175.65.14])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSsls-00000001jMw-0gcP;
	Mon, 16 Nov 2026 09:13:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794820384; x=1826356384;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=S5+QBdtzFuG1IgfXisOS9Q/+F8LHAa5I2PukkMFG620=;
  b=K7KYmL/+xjJjIzCLOby2YMx8cFhOVAohgbjok0dxd56pyLzYrL+p9tWV
   h3EmuYfLd6rj6MQf4T0GF59olz7x17YAZU2eOB1fqIZtfM4IzvNYMLQUP
   p6EfGhbfjduH1Jc3I13MdKk3S5vOdL6OAqh5q+qIhlU1/sEd9qFmdZYC/
   bBR4YguXYIcP1BEyL/L65ffHuyWun5wmZJ5NeiUrf2ObJyLXGg1bdTMxU
   IzOIeRuURYHfNtkuQJeFumyMx0ucyh43CMv/C8f2Av4Nblz87lVcnaLgE
   F18Hn6gt/xCsmUKA5SUUijKGjZpsKu9LpeJ07gC6uTabYKSIoK/xy73tI
   A==;
X-CSE-ConnectionGUID: ORVBVdDgTq2hUbTzYiowEg==
X-CSE-MsgGUID: sTDwV8EiTESK0wGawqQPZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11967"; a="3443480"
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="3443480"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 01:13:03 -0800
X-CSE-ConnectionGUID: c7lMIM38S3al4Q++ns5YpQ==
X-CSE-MsgGUID: TXHuWpbRTv+ZkikzxiX0lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="9909191"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.93])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 01:12:56 -0800
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
Subject: [PATCH 08/12] drm/atomic/uapi: Add a FIXME about colorop vs. async flips
Date: Mon, 16 Nov 2026 11:11:26 +0200
Message-ID: <20261116091130.13950-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
References: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_011304_246613_EF2D6A51 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
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
ZSBjb2xvcm9wIHN0dWZmIGluIHRoZSBhdG9taWMgaW9jdGwgaGFuZGxlciBpcyBjb21wbGV0ZWx5
Cm1pc3NpbmcgYW55IGFzeW5jIGZsaXAgaGFuZGxpbmcuIEFkZCBhIEZJWE1FIGluIHRoZSBob3Bl
cwp0aGF0IHNvbWVvbmUgd2lsbCBmaXggaXQuCgpDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKQ2M6IEFuZHLDqSBBbG1laWRhIDxhbmRyZWFsbWVpZEBpZ2FsaWEuY29tPgpDYzogQm9y
aXMgQnJlemlsbG9uIDxiYnJlemlsbG9uQGtlcm5lbC5vcmc+CkNjOiBDaHJpc3RvcGhlciBTbm93
aGlsbCA8Y2hyaXNAa29kZTU0Lm5ldD4KQ2M6IERhdmUgU3RldmVuc29uIDxkYXZlLnN0ZXZlbnNv
bkByYXNwYmVycnlwaS5jb20+CkNjOiBEaGFybWEgQmFsYXN1YmlyYW1hbmkgPGRoYXJtYS5iQG1p
Y3JvY2hpcC5jb20+CkNjOiBEbWl0cnkgQmFyeXNoa292IDxsdW1hZ0BrZXJuZWwub3JnPgpDYzog
ZnJlZWRyZW5vQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogR3VzdGF2byBQYWRvdmFuIDxndXN0
YXZvLnBhZG92YW5AY29sbGFib3JhLmNvbT4KQ2M6IEh1YWNhaSBDaGVuIDxjaGVuaHVhY2FpQGtl
cm5lbC5vcmc+CkNjOiBJY2Vub3d5IFpoZW5nIDx6aGVuZ3hpbmdkYUBpc2Nhcy5hYy5jbj4KQ2M6
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpDYzogSmlhbm1pbiBMdiA8bHZqaWFubWluQGxvb25nc29uLmNuPgpDYzogbGlu
dXgtYXJtLW1zbUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJh
ZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4
LXRlZ3JhQHZnZXIua2VybmVsLm9yZwpDYzogTGl2aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFybS5j
b20+CkNjOiBNYcOtcmEgQ2FuYWwgPG1jYW5hbEBpZ2FsaWEuY29tPgpDYzogTWFuaWthbmRhbiBN
dXJhbGlkaGFyYW4gPG1hbmlrYW5kYW4ubUBtaWNyb2NoaXAuY29tPgpDYzogTWF4aW1lIFJpcGFy
ZCA8bXJpcGFyZEBrZXJuZWwub3JnPgpDYzogTWluZ2NvbmcgQmFpIDxqZWZmYmFpQGFvc2MuaW8+
CkNjOiBub3V2ZWF1QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogUWlhbmhhaSBXdSA8d3VxaWFu
aGFpQGxvb25nc29uLmNuPgpDYzogUmFzcGJlcnJ5IFBpIEtlcm5lbCBNYWludGVuYW5jZSA8a2Vy
bmVsLWxpc3RAcmFzcGJlcnJ5cGkuY29tPgpDYzogU2ltb24gU2VyIDxjb250YWN0QGVtZXJzaW9u
LmZyPgpDYzogd2F5bGFuZC1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IFhhdmVyIEh1
Z2wgPHhhdmVyLmh1Z2xAa2RlLm9yZz4KQ2M6IFhpIFJ1b3lhbyA8eHJ5MTExQHhyeTExMS5zaXRl
PgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYyB8IDIgKysKIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX2F0b21pY191YXBpLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMK
aW5kZXggY2YxZWRjYjI0MmNjLi43NTE3OTUwZDJlNTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fYXRvbWljX3VhcGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191
YXBpLmMKQEAgLTEzNTIsNiArMTM1Miw4IEBAIGludCBkcm1fYXRvbWljX3NldF9wcm9wZXJ0eShz
dHJ1Y3QgZHJtX2F0b21pY19jb21taXQgKnN0YXRlLAogCQlzdHJ1Y3QgZHJtX2NvbG9yb3Bfc3Rh
dGUgKmNvbG9yb3Bfc3RhdGU7CiAJCWJvb2wgcmVwbGFjZWQgPSBmYWxzZTsKIAorCQkvKiBGSVhN
RSBhc3luYyBmbGlwIGNoZWNrcyBjb21wbGV0ZWx5IG1pc3NpbmcgaGVyZSAqLworCiAJCWNvbG9y
b3Bfc3RhdGUgPSBkcm1fYXRvbWljX2dldF9jb2xvcm9wX3N0YXRlKHN0YXRlLCBjb2xvcm9wKTsK
IAkJaWYgKElTX0VSUihjb2xvcm9wX3N0YXRlKSkgewogCQkJcmV0ID0gUFRSX0VSUihjb2xvcm9w
X3N0YXRlKTsKLS0gCjIuNTYuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
