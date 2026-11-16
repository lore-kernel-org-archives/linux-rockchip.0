Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB05C606A32A
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 09:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MjVRSSJB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=oa+EEamq;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=Nte6RQMY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FABqgR6nssM3V2PtHpfEPGNX2Ob0DNMIgc33cvyPY54=; b=MjVRSSJBtahD/NsB3Wk6Ucykyy
	ALyLCLWGiPjVckO/e6EzrcXbyQy0X3a86jrJzwwpykIrs+YC6E1lJ3EjFhoo/FNTt+lRDRN77yOyM
	r1erEWX1jDeHmx9W6Z5lnXswKNagR8raMKKmUEAvoVDA90W1X5NB8KMhnfaCL6x6UG16Z9DfE5Kkc
	ONnJLQ5KZ56zV2c3UwcIF7PfZNzRouciqszUXrwUCaaIPlC9pR00OGblP5yJY+EhNqXmMxrCty+CI
	46Bv01YCwGjGXfBiu1Xmt7fDg/Zigqky1Zyxayjd5CfEduKSAjul4K0Rvj76ql/NjgyE27J9kM7Gv
	jNtf31xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSslE-00000001iwt-22M2;
	Mon, 16 Nov 2026 09:12:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSslD-00000001iwE-1x6X;
	Mon, 16 Nov 2026 09:12:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=HCZA7h4dhtZFsDeAg5DlvyxhK/gg8Zq5jpN13t+4dmw=; b=oa+EEamqOqhtbmfRXgbiESguwx
	A4yJhbkxP5YENjKjnMH+WStg/3zmy0D/LpM+2UWGSiO2VMnDx6I9hpuCVxLmUd756IMrI2wN2npba
	yznx9/dqp8i9NNiWPZCtNYWVqSEBYcrZ4AjTd3uxbm86nzEf0HqXqOgarVx0fr737YvdPAros9T3r
	R+bnpmh5LtdvCE/NuNb/Z4dJ99wF1XlpiXAbTF+sbCrLp12TrxS1vB3COZEu7XmMS3vyvmJ6sk7CV
	J9mituyEbOSB138H+yX73IALPt3x7ImloL8UaTZa2W3QY2JcaBRJKLCJmtjaP9oWiaxhGgv1IxTIL
	8IiuqtFw==;
Received: from mgamail.intel.com ([192.198.163.9])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSsl8-0000000DXsI-0ENl;
	Mon, 16 Nov 2026 09:12:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794820338; x=1826356338;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=GQ6nvZncaJPWB21Rm55NWdBG4xu4kDWV0iEJex5xTMo=;
  b=Nte6RQMYd5/ZOmlVzh3Asj+kAoXfXI7WYPqxuo1blJQ2FnZ+BWsKJ2zB
   6fVMl2BY5HCvwbLTSEJ2FxkuV/dFceM9ZE4K0cvv/kZaTWlps/XJtDPTp
   FmyWJOARA0sFD6qyffKTATTN/YgREVPEaj4GoaY0k64EzJFTkiqfy/1XU
   Onk+HE89oVwVIbvEYnIid5snqqxMPuwLvqQVHfQqepC/y4Ar1NwhC6aMA
   JyfmacBzjkovGLVM7qFq8kMzuukWtS7GQSjHezGOrc+AuZgiEOckPSTPu
   ehmsf9H5qw8xI9AK9wfj7prJRF4HV/RsP3BSbHtOzx3RDBnmMlCy76qQ5
   Q==;
X-CSE-ConnectionGUID: tx6Mt0KzQaqfDfi9XyZd1Q==
X-CSE-MsgGUID: C05Ni8wfT/SNYXN8KPtqvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11967"; a="3428576"
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="3428576"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 01:12:16 -0800
X-CSE-ConnectionGUID: kZCPs1nAQZOSz0ZFfl6zzQ==
X-CSE-MsgGUID: 8V2PE1BoR/CxCzo6AyKZPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="9486461"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.93])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 01:12:08 -0800
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
Subject: [PATCH 03/12] drm/atomic: Add FIXMEs around the incorrect use of the .atomic_bypass_check() for async flips
Date: Mon, 16 Nov 2026 11:11:21 +0200
Message-ID: <20261116091130.13950-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
References: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_091218_731063_2A438BF0 
X-CRM114-Status: GOOD (  18.45  )
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
ZSAiYnlwYXNzIHVwZGF0ZSIgc3R1ZmYgaGFzIG5vdGhpbmcgdG8gZG8gd2l0aCBhc3luYyB2cy4K
c3luYyB1cGRhdGVzIGFzIGZhciBhcyB0aGUgaGFyZHdhcmUgaXMgY29uY2VybmVkIChhcyBpbgp0
ZWFyaW5nIHZzLiBub3QpLiBXaGF0IGl0IGRvZXMgaXMgYnlwYXNzIHRoZSBub3JtYWwgY29tbWl0
Cm1hY2hpbmVyeSBhbmQganVzdCBsZXQgdGhlIGRyaXZlciBkaXJlY3RseSBwZXJmb3JtIHRoZQp1
cGRhdGUgKGFzIGl0IHNlZXMgZml0KSBhbmQgc3dhcCB0aGUgcGxhbmUgc3RhdGUgd2l0aG91dApp
bnZvbHZpbmcgdGhlIHdob2xlIGNydGMgY29tbWl0IG1hY2hpbmVyeS4KClRoZSBhY3R1YWwgaGFy
ZHdhcmUgdXBkYXRlIGl0IGRvZXMgY291bGQgYmUgYW4gYXN5bmMgZmxpcAooYXMgaW4gdGVhcmlu
Zykgb3IgYSBtYWlsYm94IGZsaXAsIGRlcGVuZGluZyBvbiBob3cgdGhlCmRyaXZlciBkZWNpZGVz
IHRvIGRvIGl0LgoKVGhlIHVzZSBvZiBieXBhc3MgdXBkYXRlcyB2cy4gbm90IGlzIGEgZHJpdmVy
IGRlY2lzaW9uLCBhbmQKdGhlIGhpZ2ggbGV2ZWwgYXRvbWljIGNvZGUgc2hvdWxkIG5vdCBiZSBt
YWtpbmcgaW5jb3JyZWN0CmFzc3VtcHRpb25zIGFib3V0IGl0LiBUb3NzIGluIHNvbWUgRklYTUVz
IGluIHRoZSBob3Blcwp0aGF0IHBlb3BsZSB3aWxsIHJlbG9jYXRlIHRoaXMgc3R1ZmYgdG8gYSBt
b3JlIGFwcHJvcHJpYXRlCnBsYWNlLgoKQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
CkNjOiBBbmRyw6kgQWxtZWlkYSA8YW5kcmVhbG1laWRAaWdhbGlhLmNvbT4KQ2M6IEJvcmlzIEJy
ZXppbGxvbiA8YmJyZXppbGxvbkBrZXJuZWwub3JnPgpDYzogQ2hyaXN0b3BoZXIgU25vd2hpbGwg
PGNocmlzQGtvZGU1NC5uZXQ+CkNjOiBEYXZlIFN0ZXZlbnNvbiA8ZGF2ZS5zdGV2ZW5zb25AcmFz
cGJlcnJ5cGkuY29tPgpDYzogRGhhcm1hIEJhbGFzdWJpcmFtYW5pIDxkaGFybWEuYkBtaWNyb2No
aXAuY29tPgpDYzogRG1pdHJ5IEJhcnlzaGtvdiA8bHVtYWdAa2VybmVsLm9yZz4KQ2M6IGZyZWVk
cmVub0BsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IEd1c3Rhdm8gUGFkb3ZhbiA8Z3VzdGF2by5w
YWRvdmFuQGNvbGxhYm9yYS5jb20+CkNjOiBIdWFjYWkgQ2hlbiA8Y2hlbmh1YWNhaUBrZXJuZWwu
b3JnPgpDYzogSWNlbm93eSBaaGVuZyA8emhlbmd4aW5nZGFAaXNjYXMuYWMuY24+CkNjOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKQ2M6IEppYW5taW4gTHYgPGx2amlhbm1pbkBsb29uZ3Nvbi5jbj4KQ2M6IGxpbnV4LWFy
bS1tc21Admdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQu
b3JnCkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC10ZWdy
YUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgpD
YzogTWHDrXJhIENhbmFsIDxtY2FuYWxAaWdhbGlhLmNvbT4KQ2M6IE1hbmlrYW5kYW4gTXVyYWxp
ZGhhcmFuIDxtYW5pa2FuZGFuLm1AbWljcm9jaGlwLmNvbT4KQ2M6IE1heGltZSBSaXBhcmQgPG1y
aXBhcmRAa2VybmVsLm9yZz4KQ2M6IE1pbmdjb25nIEJhaSA8amVmZmJhaUBhb3NjLmlvPgpDYzog
bm91dmVhdUBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IFFpYW5oYWkgV3UgPHd1cWlhbmhhaUBs
b29uZ3Nvbi5jbj4KQ2M6IFJhc3BiZXJyeSBQaSBLZXJuZWwgTWFpbnRlbmFuY2UgPGtlcm5lbC1s
aXN0QHJhc3BiZXJyeXBpLmNvbT4KQ2M6IFNpbW9uIFNlciA8Y29udGFjdEBlbWVyc2lvbi5mcj4K
Q2M6IHdheWxhbmQtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBYYXZlciBIdWdsIDx4
YXZlci5odWdsQGtkZS5vcmc+CkNjOiBYaSBSdW95YW8gPHhyeTExMUB4cnkxMTEuc2l0ZT4KU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMgICAgICAgIHwgNiArKysr
KysKIGluY2x1ZGUvZHJtL2RybV9tb2Rlc2V0X2hlbHBlcl92dGFibGVzLmggfCA0ICsrLS0KIDIg
ZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9k
cm1fYXRvbWljX3VhcGkuYwppbmRleCAwNGZjYWE3MmM0NmYuLmViMDAyNzk5NDk3YyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfdWFwaS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9kcm1fYXRvbWljX3VhcGkuYwpAQCAtMTI5MCw2ICsxMjkwLDEyIEBAIGludCBkcm1fYXRv
bWljX3NldF9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2F0b21pY19jb21taXQgKnN0YXRlLAogCQkJCWJy
ZWFrOwogCQkJfQogCisJCQkvKgorCQkJICogRklYTUUgdGhpcyBpcyBpbiB0aGUgd3JvbmcgcGxh
Y2UuIFdoZXRoZXIgdG8gZG8gYQorCQkJICogYnlwYXNzIGNvbW1pdCBmb3IgYXN5bmMgZmxpcHMg
d291bGQgaXMgYSBkcml2ZXIKKwkJCSAqIGRlY2lzaW9uLiBEcml2ZXJzIHRoYXQgd2FudCB0aGlz
IG5lZWQgdG8ganVzdCBkbworCQkJICogdGhlc2UgY2hlY2tzIHRoZW1zZWx2ZXMgc29tZXdoZXJl
LgorCQkJICovCiAJCQlpZiAocmV0ICYmIHBsYW5lLT50eXBlICE9IERSTV9QTEFORV9UWVBFX1BS
SU1BUlkpIHsKIAkJCQkvKiBhc2sgdGhlIGRyaXZlciBpZiB0aGlzIG5vbi1wcmltYXJ5IHBsYW5l
IGlzIHN1cHBvcnRlZCAqLwogCQkJCWlmIChwbGFuZV9mdW5jcyAmJiBwbGFuZV9mdW5jcy0+YXRv
bWljX2J5cGFzc19jaGVjaykKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9tb2Rlc2V0X2hl
bHBlcl92dGFibGVzLmggYi9pbmNsdWRlL2RybS9kcm1fbW9kZXNldF9oZWxwZXJfdnRhYmxlcy5o
CmluZGV4IGNjNTExMDY4ZjUzYS4uZDI4ZDhmZmM2NmI0IDEwMDY0NAotLS0gYS9pbmNsdWRlL2Ry
bS9kcm1fbW9kZXNldF9oZWxwZXJfdnRhYmxlcy5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9tb2Rl
c2V0X2hlbHBlcl92dGFibGVzLmgKQEAgLTE0MzAsMTAgKzE0MzAsMTAgQEAgc3RydWN0IGRybV9w
bGFuZV9oZWxwZXJfZnVuY3MgewogCSAqIGdpdmVuIHVwZGF0ZSBjYW4gYmUgY29tbWl0dGVkIGJ5
cGFzc2luZyB0aGUgYXRvbWljIGNvbW1pdCBtYWNoaW5lcnkuCiAJICogVGhhdCBpcywgaWYgaXQg
Y2FuIGp1bXAgYWhlYWQgb2YgdGhlIHN0YXRlIGN1cnJlbnRseSBxdWV1ZWQgZm9yIHVwZGF0ZS4K
IAkgKgotCSAqIFRoaXMgZnVuY3Rpb24gaXMgYWxzbyB1c2VkIGJ5IGRybV9hdG9taWNfc2V0X3By
b3BlcnR5KCkgdG8gZGV0ZXJtaW5lCisJICogVGhpcyBmdW5jdGlvbiBpcyBhbHNvIGFidXNlZCBi
eSBkcm1fYXRvbWljX3NldF9wcm9wZXJ0eSgpIHRvIGRldGVybWluZQogCSAqIGlmIHRoZSBwbGFu
ZSBjYW4gYmUgZmxpcHBlZCBpbiBhc3luYy4gVGhlIGZsaXAgZmxhZyBpcyB1c2VkIHRvCiAJICog
ZGlzdGluZ3Vpc2ggaWYgdGhlIGZ1bmN0aW9uIGlzIHVzZWQgZm9yIGp1c3QgdGhlIHBsYW5lIHN0
YXRlIG9yIGZvciBhCi0JICogZmxpcC4KKwkgKiBmbGlwLiBGSVhNRSB0aGlzIGlzIHdyb25nLCBh
bmQgbmVlZHMgdG8gYmUgbW92ZWQgaW50byB0aGUgZHJpdmVycy4KIAkgKgogCSAqIFJFVFVSTlM6
CiAJICoKLS0gCjIuNTYuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
