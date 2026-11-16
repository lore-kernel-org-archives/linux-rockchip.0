Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4AC606A33A
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 09:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Vl8+01Fv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=Zj09dQEo;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=BdHrU6YM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UD7BebnXuVf3F4pGCpHxFt8AoENAjLS4QV2prjBXMVg=; b=Vl8+01FvHLnhngdL/rxLzbnBcp
	mnEp9Z+xmezpBotYdEn2o6wnSE03OCK1d+R8pC76+DT1LGeAy7I/eRwYVWKe1ONuEqzEgRMLbetXa
	6+qhf79yqQv1XtvGN294C91ZY47E184Su/AURQAw1DcCyeRpaB+Vw2GBDw7N9gxhN1zev9bGuCyPe
	a7x+2xXO3/h7f+Vk1lDqYuJWhv8rezsjUV5z4Spj+MaSEr6vWs0j+XaTF4q+CirnmtEVqRCsS8D4n
	ZBflPI40ZudkLbxlDcZkEVy6smm4IcMIBEg8rb/tSH+eZP4PUfNF/4KyS6aYKacAU5wmzQJG3ISXD
	3qrs83WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSslV-00000001j3x-0910;
	Mon, 16 Nov 2026 09:12:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSslO-00000001j1C-2bwG;
	Mon, 16 Nov 2026 09:12:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=TFvQP8aoubAPDYf0wglCKRKdVUTp2ONcSkD8GwBBfng=; b=Zj09dQEo3dUj5uy81GAbnKdirI
	ao2vO0DMWXIHQMWFCujinAt4hKCgfXrR1rvtaUA6KLTTHNrBNTd1edG09m29hLvZUEqa+E8H46o4p
	tPn7v7qdao1ftQ+Izrf7Dek1Noo7YQKLa+3u5IFhT+siq3r1aIYuKD+huFZip5mw883RTnJoLVDFF
	tHLsVAKwUkFYUc8WChwR6gc4qeMml2VV+JrbXjUitWVN5rdZqwcDm7Sm5lUw6WXj++AiN6u4jErSd
	c3UhzCrmliZDl4S2f439cD8Q615qIIUe3uM8j3nWGotcbB8Qp1pZ0FI5wXZWBqHsfDU/U7CzK2zNb
	9jDpR7ow==;
Received: from mgamail.intel.com ([198.175.65.19])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSslJ-0000000DXv2-25EE;
	Mon, 16 Nov 2026 09:12:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794820349; x=1826356349;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=JGdJovIRxiswmzQ/OVHyoYBXcmjw0GscVzdw8XDjrRY=;
  b=BdHrU6YMTM+yr+Lu792JTNaFmhhZTL6D+hdr1hVIfBEBMyVF7DDb72HK
   QHa7+ypgS3tVHv6ingcw5ePk7jD9l0UY7gi9XR9BfUs1jEGeY0P9qpZKQ
   W4M8ZH6ePvzvMawpKZL13Bf4RWt2HOFYI56Qr7j5ccH+eJYldwgT7zJWW
   c2ACFh4nOVOxRmUr5XcauSgZ2Lh/JBFJAdHGol7BHLq3NsgFezjQgG92L
   L5X4A1hXl96j0pexrbcFCBEJR7KOdl6OoP7DUMekaY6D+JdtieK2AGM5e
   Y6gOMg7NuqTbWG5abETh5li/+0e+n1jTSYZb5tR6JOSkeNIZZh2k7yGwu
   A==;
X-CSE-ConnectionGUID: oH+1RYseShe8J24w/M8Z4A==
X-CSE-MsgGUID: StDokaZcRv+V2Ucf2ZddWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11967"; a="3590923"
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="3590923"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 01:12:26 -0800
X-CSE-ConnectionGUID: J66DpBJ2RRW4yBSWi6jh6g==
X-CSE-MsgGUID: 0uoTtDp2RV+r35svTUE34g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="9826077"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.93])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 01:12:19 -0800
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
Subject: [PATCH 04/12] drm/atomic: Highlight that bypass commits need care
Date: Mon, 16 Nov 2026 11:11:22 +0200
Message-ID: <20261116091130.13950-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
References: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_091230_019422_C5F14D12 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -2.4 (--)
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRv
Y3VtZW50IHRoZSBmYWN0IHRoYXQgaW1wbGVtZW50aW5nIGJ5cGFzcyBjb21taXRzCm5lZWQgYWN0
dWFsIGNhcmUgYW5kIGF0dGVudGlvbiB0byBtYWtlIHN1cmUgdGhlCmVmZmVjdGl2ZSBjb21taXQg
cmVvcmRlcmluZyBpcyBhY3R1YWxseSBzYWZlLgoKQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCkNjOiBBbmRyw6kgQWxtZWlkYSA8YW5kcmVhbG1laWRAaWdhbGlhLmNvbT4KQ2M6IEJv
cmlzIEJyZXppbGxvbiA8YmJyZXppbGxvbkBrZXJuZWwub3JnPgpDYzogQ2hyaXN0b3BoZXIgU25v
d2hpbGwgPGNocmlzQGtvZGU1NC5uZXQ+CkNjOiBEYXZlIFN0ZXZlbnNvbiA8ZGF2ZS5zdGV2ZW5z
b25AcmFzcGJlcnJ5cGkuY29tPgpDYzogRGhhcm1hIEJhbGFzdWJpcmFtYW5pIDxkaGFybWEuYkBt
aWNyb2NoaXAuY29tPgpDYzogRG1pdHJ5IEJhcnlzaGtvdiA8bHVtYWdAa2VybmVsLm9yZz4KQ2M6
IGZyZWVkcmVub0BsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IEd1c3Rhdm8gUGFkb3ZhbiA8Z3Vz
dGF2by5wYWRvdmFuQGNvbGxhYm9yYS5jb20+CkNjOiBIdWFjYWkgQ2hlbiA8Y2hlbmh1YWNhaUBr
ZXJuZWwub3JnPgpDYzogSWNlbm93eSBaaGVuZyA8emhlbmd4aW5nZGFAaXNjYXMuYWMuY24+CkNj
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC14ZUBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKQ2M6IEppYW5taW4gTHYgPGx2amlhbm1pbkBsb29uZ3Nvbi5jbj4KQ2M6IGxp
bnV4LWFybS1tc21Admdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZy
YWRlYWQub3JnCkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51
eC10ZWdyYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0u
Y29tPgpDYzogTWHDrXJhIENhbmFsIDxtY2FuYWxAaWdhbGlhLmNvbT4KQ2M6IE1hbmlrYW5kYW4g
TXVyYWxpZGhhcmFuIDxtYW5pa2FuZGFuLm1AbWljcm9jaGlwLmNvbT4KQ2M6IE1heGltZSBSaXBh
cmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KQ2M6IE1pbmdjb25nIEJhaSA8amVmZmJhaUBhb3NjLmlv
PgpDYzogbm91dmVhdUBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IFFpYW5oYWkgV3UgPHd1cWlh
bmhhaUBsb29uZ3Nvbi5jbj4KQ2M6IFJhc3BiZXJyeSBQaSBLZXJuZWwgTWFpbnRlbmFuY2UgPGtl
cm5lbC1saXN0QHJhc3BiZXJyeXBpLmNvbT4KQ2M6IFNpbW9uIFNlciA8Y29udGFjdEBlbWVyc2lv
bi5mcj4KQ2M6IHdheWxhbmQtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBYYXZlciBI
dWdsIDx4YXZlci5odWdsQGtkZS5vcmc+CkNjOiBYaSBSdW95YW8gPHhyeTExMUB4cnkxMTEuc2l0
ZT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBpbmNsdWRlL2RybS9kcm1fbW9kZXNldF9oZWxwZXJfdnRhYmxlcy5oIHwg
NiArKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2RybS9kcm1fbW9kZXNldF9oZWxwZXJfdnRhYmxlcy5oIGIvaW5jbHVkZS9kcm0vZHJt
X21vZGVzZXRfaGVscGVyX3Z0YWJsZXMuaAppbmRleCBkMjhkOGZmYzY2YjQuLjEwMzY3NDRiOTky
MiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX21vZGVzZXRfaGVscGVyX3Z0YWJsZXMuaAor
KysgYi9pbmNsdWRlL2RybS9kcm1fbW9kZXNldF9oZWxwZXJfdnRhYmxlcy5oCkBAIC0xNDMwLDYg
KzE0MzAsMTIgQEAgc3RydWN0IGRybV9wbGFuZV9oZWxwZXJfZnVuY3MgewogCSAqIGdpdmVuIHVw
ZGF0ZSBjYW4gYmUgY29tbWl0dGVkIGJ5cGFzc2luZyB0aGUgYXRvbWljIGNvbW1pdCBtYWNoaW5l
cnkuCiAJICogVGhhdCBpcywgaWYgaXQgY2FuIGp1bXAgYWhlYWQgb2YgdGhlIHN0YXRlIGN1cnJl
bnRseSBxdWV1ZWQgZm9yIHVwZGF0ZS4KIAkgKgorCSAqIEV4dHJlbWUgY2FyZSBpcyBuZWVkZWQg
dG8gbWFrZSB0aGlzIHNhZmUgYXMgdGhlIGFscmVhZHkgcXVldWVkIGNvbW1pdHMKKwkgKiB3aWxs
IG5vdCBiZSBhd2FyZSBvZiB0aGUgYnlwYXNzIGNvbW1pdCB0aGF0IG92ZXJ0b29rIHRoZW0uIEFu
ZCB0aGUKKwkgKiBzdGF0ZSB0aGF0IHRoZSBieXBhc3MgY29tbWl0IHdpbGwgb2JzZXJ2ZSBpcyB0
aGUgZmluYWwgYWxyZWFkeSBxdWV1ZWQKKwkgKiBzdGF0ZSwgbm90IHRoZSBjdXJyZW50IHN0YXRl
IGF0IHRoZSBwb2ludCB3aGVuIHRoZSBieXBhc3MgY29tbWl0CisJICogd2lsbCBhY3R1YWxseSBl
eGVjdXRlLgorCSAqCiAJICogVGhpcyBmdW5jdGlvbiBpcyBhbHNvIGFidXNlZCBieSBkcm1fYXRv
bWljX3NldF9wcm9wZXJ0eSgpIHRvIGRldGVybWluZQogCSAqIGlmIHRoZSBwbGFuZSBjYW4gYmUg
ZmxpcHBlZCBpbiBhc3luYy4gVGhlIGZsaXAgZmxhZyBpcyB1c2VkIHRvCiAJICogZGlzdGluZ3Vp
c2ggaWYgdGhlIGZ1bmN0aW9uIGlzIHVzZWQgZm9yIGp1c3QgdGhlIHBsYW5lIHN0YXRlIG9yIGZv
ciBhCi0tIAoyLjU2LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
