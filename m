Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BDF606A329
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 09:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Q+WWpMa2;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=f3tHVCR6;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=ZsUKwdgc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OSYNmVtTciasRBz/xrROrhF7beNrmyabWF6SvXWo1JM=; b=Q+WWpMa2+mbe7CtMcvTr2UAwez
	b/zhohpuToRpU2XlVshYm5vc+qwdnQK60R22uZlVIDyRIYvBi1o3tJY099qpYnS/uVW4ewbPl0SCy
	n5cVrV8FDa1b+dAFAJXczPzrrcHAFPh1rs4B5BfkGdV2Cbn3gHqcB3uHvDr0awDi/4l0iyl/CDuJD
	gX1wFcLHm4Vi7YRsvg0beV9nGmbujsBANTx2MHdCDaTdY4Aj8orY168/SecrQAy4oNYC4ZXeGc2ey
	G1e+w3bseVJ1Ariv4R5G5EO0FORddJNTUeUKw1/0AwkEyLYK3kt344a7lDBdKu6SPAG5uzrz5pdXo
	wXZcy5DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSskv-00000001iqs-3hhV;
	Mon, 16 Nov 2026 09:12:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSsku-00000001ipw-2AVB;
	Mon, 16 Nov 2026 09:12:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=NrDYEklcNqtXALhiWj2mxwxsxekgaDasLuoDRGoiOmU=; b=f3tHVCR6z5LMEJt5LMSIZKuwRe
	Y/XP8NWv+iuN6Gf5NH3RoK/abU4cMtDL+93dKaScoj5+IbL3lCKGfCn+mt3Z1UMInYsiMoGd79fTZ
	ge/AltoHBatTAoccSZk3Ihk3hU/zmM/V3QI/mTTgar+I7OYrlRzgai/yyvZK3Aa22g0Iwqb6cd26G
	D6q0+jEAg7gsVkdV06oW424wnh/9pFcpxaGC/Glw61HRIX2kUDINVixATr3yyr+yEwhiIxrp9+n+t
	rCep26JTYSTKeg6Jwx3J95mr4OmeLcmnDLMdct6R58vEp1KRvUIX72itjOIQ/UUp1j2A9JPYp7h1r
	2RXQTB9g==;
Received: from mgamail.intel.com ([192.198.163.10])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSskp-0000000DXnt-3ImY;
	Mon, 16 Nov 2026 09:12:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794820319; x=1826356319;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=V0qINld4Q/jbv63AGGXVfg5Qb1nzcot1g6RG8D+B2bI=;
  b=ZsUKwdgc+C5KbemMQcD/7Fpl8to+OGp480nXYG+dTmfPOMIsD/r8jNRR
   Z/3bSUyH+enf0A0RXUi9BgXH+64kOpwz4Rah77l4vtUhhZnfaKmYIX1m6
   RFmDGUAfUaXJcc3pIObauZbTkL6OYM4p1ZpuLpZrrevFQ6Zo72Fpxfqta
   s2oHI/tZS5gxqTBadqzn+ZUBbI7RJt/4TFsZqfI7OP2jNUYm4VIkKZ28s
   SYHvfH3I8kGiElbDcTCUdCJpFIiC2NK+ZFnLeV2dCi/ukBpFT3SpceQhP
   edlycjk4Sjieg6TwtHc+g4llb1/LI8hKg9ZZR2v75+2WeN/D1AsID8crb
   g==;
X-CSE-ConnectionGUID: 6AyVZGJ0S7W9NCG2T5i+qQ==
X-CSE-MsgGUID: RPIxmGEXRBa8+PJ1LGsK6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11967"; a="3441670"
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="3441670"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 01:11:52 -0800
X-CSE-ConnectionGUID: UWh9ypXlQsaOXMJK/Z1GcQ==
X-CSE-MsgGUID: jIMoPLvWRfiBfA74S7kVag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="9636263"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.93])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 01:11:45 -0800
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
Subject: [PATCH 01/12] drm/atomic: Remove tall tales about tearing vs. "async updates"
Date: Mon, 16 Nov 2026 11:11:19 +0200
Message-ID: <20261116091130.13950-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
References: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_091200_311560_283AD6CB 
X-CRM114-Status: GOOD (  20.44  )
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSAiYXN5bmMgdXBkYXRlIiBzdHVmZiBoYXMgbm90aGluZyB0byBkbyB3aXRoIGFzeW5jIHZzLgpz
eW5jIHVwZGF0ZXMgYXMgZmFyIGFzIHRoZSBoYXJkd2FyZSBpcyBjb25jZXJuZWQgKGFzIGluCnRl
YXJpbmcgdnMuIG5vdCkuIFdoYXQgaXQgZG9lcyBpcyBieXBhc3MgdGhlIG5vcm1hbCBjb21taXQK
bWFjaGluZXJ5IGFuZCBqdXN0IGxldCB0aGUgZHJpdmVyIGRpcmVjdGx5IHBlcmZvcm0gdGhlCnVw
ZGF0ZSAoYXMgaXQgc2VlcyBmaXQpIGFuZCBzd2FwIHRoZSBwbGFuZSBzdGF0ZSB3aXRob3V0Cmlu
dm9sdmluZyB0aGUgd2hvbGUgY3J0YyBjb21taXQgbWFjaGluZXJ5LgoKVGhlIGFjdHVhbCBoYXJk
d2FyZSB1cGRhdGUgaXQgZG9lcyBjb3VsZCBiZSBhbiBhc3luYyBmbGlwCihhcyBpbiB0ZWFyaW5n
KSBvciBhIG1haWxib3ggZmxpcCwgZGVwZW5kaW5nIG9uIGhvdyB0aGUKZHJpdmVyIGRlY2lkZXMg
dG8gZG8gaXQuCgpJIGFsc28gc3VzcGVjdCBzb21lIGRyaXZlcnMgYWJ1c2luZyB0aGlzIGZvciBh
c3luYyBmbGlwcyBtaWdodApiZSBwZXJmb3JtaW5nIG1haWxib3ggdXBkYXRlcyB1bmRlciB0aGUg
aG9vZCwgd2hpY2ggaXMKdmVyeSBicm9rZW4gYmVjYXVzZSB0aGUgY29tbWl0cyBjb21wbGV0ZSBp
biBjb21wbGV0ZWx5IHJhbmRvbQpvcmRlciBhbmQgdXNlcnNwYWNlIGhhcyBubyBpZGVhIHdoZW4g
dGhlIGhhcmR3YXJlIGhhcyBzdG9wcGVkCnNjYW5uaW5nIG91dCBmcm9tIHRoZSBvbGQgZnJhbWVi
dWZmZXIuIFRoYXQgbWVhbnMgdXNlcnNwYWNlCnRoaW5rcyBpdCBjYW4gc3RhcnQgcmVuZGVyaW5n
IG5ldyBzdHVmZiB0byB3aGF0IGlzIHN0aWxsIHRoZQpjdXJyZW50IGhhcmR3YXJlIHNjYW5vdXQg
YnVmZmVyLiBUaGF0IHdpbGwgbGVhZCB0byBpbmNvbXBsZXRlCmxpdmUgcmVuZGVyaW5nIGFwcGVh
cmluZyBvbiB0aGUgc2NyZWVuLCB3aGljaCBpcyBuZXZlciBPSy4KRWZmZWN0aXZlbHkgb25lIGlz
IHBlcmZvcm1pbmcgZnJvbnQgYnVmZmVyIHJlbmRlcmluZyBhdCB0aGF0CnBvaW50LiBUaGlzIGtp
bmQgb2YgZmFrZSBhc3luYyBmbGlwIGltcGxlbWVudGF0aW9uIHdvdWxkCmltbWVkaWF0ZWx5IGZh
aWwgaWd0L2ttc19hc3luY19mbGlwcy9jcmMsIGJ1dCB0aGF0IHRlc3QKcmVxdWlyZXMgdGhlIGRy
aXZlci9oYXJkd2FyZSB0byBoYXZlIHdvcmtpbmcgQ1JDIHN1cHBvcnQuClRvIG1ha2UgbWFpbGJv
eCB1cGRhdGVzIGFjdHVhbGx5IGNvcnJlY3Qgd2Ugd291bGQgbmVlZApvdXQgZmVuY2VzLCBhbmQg
YSBtZWNoYW5pc20gdG8gc2lnbmFsIHRoZW0gaW4gdGhlIGNvcnJlY3QKb3JkZXIuCgpDYzogYW1k
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IEFuZHLDqSBBbG1laWRhIDxhbmRyZWFsbWVp
ZEBpZ2FsaWEuY29tPgpDYzogQm9yaXMgQnJlemlsbG9uIDxiYnJlemlsbG9uQGtlcm5lbC5vcmc+
CkNjOiBDaHJpc3RvcGhlciBTbm93aGlsbCA8Y2hyaXNAa29kZTU0Lm5ldD4KQ2M6IERhdmUgU3Rl
dmVuc29uIDxkYXZlLnN0ZXZlbnNvbkByYXNwYmVycnlwaS5jb20+CkNjOiBEaGFybWEgQmFsYXN1
YmlyYW1hbmkgPGRoYXJtYS5iQG1pY3JvY2hpcC5jb20+CkNjOiBEbWl0cnkgQmFyeXNoa292IDxs
dW1hZ0BrZXJuZWwub3JnPgpDYzogZnJlZWRyZW5vQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzog
R3VzdGF2byBQYWRvdmFuIDxndXN0YXZvLnBhZG92YW5AY29sbGFib3JhLmNvbT4KQ2M6IEh1YWNh
aSBDaGVuIDxjaGVuaHVhY2FpQGtlcm5lbC5vcmc+CkNjOiBJY2Vub3d5IFpoZW5nIDx6aGVuZ3hp
bmdkYUBpc2Nhcy5hYy5jbj4KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6
IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogSmlhbm1pbiBMdiA8bHZqaWFubWlu
QGxvb25nc29uLmNuPgpDYzogbGludXgtYXJtLW1zbUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4
LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXRlZ3JhQHZnZXIua2VybmVsLm9yZwpDYzogTGl2aXUgRHVk
YXUgPGxpdml1LmR1ZGF1QGFybS5jb20+CkNjOiBNYcOtcmEgQ2FuYWwgPG1jYW5hbEBpZ2FsaWEu
Y29tPgpDYzogTWFuaWthbmRhbiBNdXJhbGlkaGFyYW4gPG1hbmlrYW5kYW4ubUBtaWNyb2NoaXAu
Y29tPgpDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgpDYzogTWluZ2Nvbmcg
QmFpIDxqZWZmYmFpQGFvc2MuaW8+CkNjOiBub3V2ZWF1QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpD
YzogUWlhbmhhaSBXdSA8d3VxaWFuaGFpQGxvb25nc29uLmNuPgpDYzogUmFzcGJlcnJ5IFBpIEtl
cm5lbCBNYWludGVuYW5jZSA8a2VybmVsLWxpc3RAcmFzcGJlcnJ5cGkuY29tPgpDYzogU2ltb24g
U2VyIDxjb250YWN0QGVtZXJzaW9uLmZyPgpDYzogd2F5bGFuZC1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKQ2M6IFhhdmVyIEh1Z2wgPHhhdmVyLmh1Z2xAa2RlLm9yZz4KQ2M6IFhpIFJ1b3lh
byA8eHJ5MTExQHhyeTExMS5zaXRlPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRv
bWljX2hlbHBlci5jICAgICAgfCA5ICsrKystLS0tLQogaW5jbHVkZS9kcm0vZHJtX21vZGVzZXRf
aGVscGVyX3Z0YWJsZXMuaCB8IDYgKystLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0
b21pY19oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX2hlbHBlci5jCmluZGV4
IGNjZmUzODQwZDUwNS4uZjgxZWIyOWQ5YWM4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2F0b21pY19oZWxwZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY19oZWxw
ZXIuYwpAQCAtMjE4NywxMSArMjE4NywxMCBAQCBFWFBPUlRfU1lNQk9MKGRybV9hdG9taWNfaGVs
cGVyX2FzeW5jX2NoZWNrKTsKICAqIEBkZXY6IERSTSBkZXZpY2UKICAqIEBzdGF0ZTogdGhlIGRy
aXZlciBzdGF0ZSBvYmplY3QKICAqCi0gKiBUaGlzIGZ1bmN0aW9uIGNvbW1pdHMgYSBzdGF0ZSBh
c3luY2hyb25vdXNseSwgaS5lLiwgbm90IHZibGFuawotICogc3luY2hyb25pemVkLiBJdCBzaG91
bGQgYmUgdXNlZCBvbiBhIHN0YXRlIG9ubHkgd2hlbgotICogZHJtX2F0b21pY19hc3luY19jaGVj
aygpIHN1Y2NlZWRzLiBBc3luYyBjb21taXRzIGFyZSBub3Qgc3VwcG9zZWQgdG8gc3dhcAotICog
dGhlIHN0YXRlcyBsaWtlIG5vcm1hbCBzeW5jIGNvbW1pdHMsIGJ1dCBqdXN0IGRvIGluLXBsYWNl
IGNoYW5nZXMgb24gdGhlCi0gKiBjdXJyZW50IHN0YXRlLgorICogVGhpcyBmdW5jdGlvbiBjb21t
aXRzIGEgc3RhdGUgYXN5bmNocm9ub3VzbHkuIEl0IHNob3VsZCBiZSB1c2VkIG9uIGEgc3RhdGUK
KyAqIG9ubHkgd2hlbiBkcm1fYXRvbWljX2FzeW5jX2NoZWNrKCkgc3VjY2VlZHMuIEFzeW5jIGNv
bW1pdHMgYXJlIG5vdCBzdXBwb3NlZAorICogdG8gc3dhcCB0aGUgc3RhdGVzIGxpa2Ugbm9ybWFs
IHN5bmMgY29tbWl0cywgYnV0IGp1c3QgZG8gaW4tcGxhY2UgY2hhbmdlcworICogb24gdGhlIGN1
cnJlbnQgc3RhdGUuCiAgKgogICogVE9ETzogSW1wbGVtZW50IGZ1bGwgc3dhcCBpbnN0ZWFkIG9m
IGRvaW5nIGluLXBsYWNlIGNoYW5nZXMuCiAgKi8KZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2Ry
bV9tb2Rlc2V0X2hlbHBlcl92dGFibGVzLmggYi9pbmNsdWRlL2RybS9kcm1fbW9kZXNldF9oZWxw
ZXJfdnRhYmxlcy5oCmluZGV4IDYwYjMwY2MyNjk0MC4uYzI0MzFjMDhhNjBhIDEwMDY0NAotLS0g
YS9pbmNsdWRlL2RybS9kcm1fbW9kZXNldF9oZWxwZXJfdnRhYmxlcy5oCisrKyBiL2luY2x1ZGUv
ZHJtL2RybV9tb2Rlc2V0X2hlbHBlcl92dGFibGVzLmgKQEAgLTE0MjQsOCArMTQyNCw3IEBAIHN0
cnVjdCBkcm1fcGxhbmVfaGVscGVyX2Z1bmNzIHsKIAkgKiBAYXRvbWljX2FzeW5jX2NoZWNrOgog
CSAqCiAJICogRHJpdmVycyBzaG91bGQgc2V0IHRoaXMgZnVuY3Rpb24gcG9pbnRlciB0byBjaGVj
ayBpZiB0aGUgcGxhbmUncwotCSAqIGF0b21pYyBzdGF0ZSBjYW4gYmUgdXBkYXRlZCBpbiBhIGFz
eW5jIGZhc2hpb24uIEhlcmUgYXN5bmMgbWVhbnMKLQkgKiAibm90IHZibGFuayBzeW5jaHJvbml6
ZWQiLgorCSAqIGF0b21pYyBzdGF0ZSBjYW4gYmUgdXBkYXRlZCBpbiBhIGFzeW5jIGZhc2hpb24u
CiAJICoKIAkgKiBUaGlzIGhvb2sgaXMgY2FsbGVkIGJ5IGRybV9hdG9taWNfYXN5bmNfY2hlY2so
KSB0byBlc3RhYmxpc2ggaWYgYQogCSAqIGdpdmVuIHVwZGF0ZSBjYW4gYmUgY29tbWl0dGVkIGFz
eW5jaHJvbm91c2x5LCB0aGF0IGlzLCBpZiBpdCBjYW4KQEAgLTE0NDksOCArMTQ0OCw3IEBAIHN0
cnVjdCBkcm1fcGxhbmVfaGVscGVyX2Z1bmNzIHsKIAkgKgogCSAqIERyaXZlcnMgc2hvdWxkIHNl
dCB0aGlzIGZ1bmN0aW9uIHBvaW50ZXIgdG8gcGVyZm9ybSBhc3luY2hyb25vdXMKIAkgKiB1cGRh
dGVzIG9mIHBsYW5lcywgdGhhdCBpcywganVtcCBhaGVhZCBvZiB0aGUgY3VycmVudGx5IHF1ZXVl
ZAotCSAqIHN0YXRlIGFuZCB1cGRhdGUgdGhlIHBsYW5lLiBIZXJlIGFzeW5jIG1lYW5zICJub3Qg
dmJsYW5rCi0JICogc3luY2hyb25pemVkIi4KKwkgKiBzdGF0ZSBhbmQgdXBkYXRlIHRoZSBwbGFu
ZS4KIAkgKgogCSAqIFRoaXMgaG9vayBpcyBjYWxsZWQgYnkgZHJtX2F0b21pY19oZWxwZXJfYXN5
bmNfY29tbWl0KCkuCiAJICoKLS0gCjIuNTYuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
