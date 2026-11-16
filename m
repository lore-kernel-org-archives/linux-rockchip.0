Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0356606A335
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 09:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=utSqOGfZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=JiiRgnob
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=fjhMy4bcmaFqMV7hDdPUQfiZra0rOPwjPXDIKb+jQGA=; b=utSqOGfZlaWaLfY3FXzm9nuN0R
	c4RkUo+3OxCpfIHkhzs4GC4kF5pNxC6s7rJClOwyQsEy+exeVF3U/2FhOtsZzU+Jkc7u7SY2Kbrde
	dvySOWq2Jvu3Iu4DM1zuAw+ycgLQAIGP0dBhd38Wl9kUl6kkxZHvLw70HgMbudNvQNDdu202lDT5Y
	hm8/PMEJtgl5hPO94p+ZP2uagb5AcAjLnbXpY8arkBVAfjzTb9ss8xcZtK4Q1dsqWbC58Y56g28V4
	/A/krYdHHRujzxUHVM6Qp4yiAN0Md4tXLDW8/Tu7MMZbRlsEVkiIKMdJtoClk7rwRCtlJL7wG7Kwt
	XRq4+eGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSslM-00000001j0E-39fu;
	Mon, 16 Nov 2026 09:12:32 +0000
Received: from mgamail.intel.com ([192.198.163.10])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSskY-00000001ioY-1tue;
	Mon, 16 Nov 2026 09:12:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794820302; x=1826356302;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=l353EF9EPl54Khh5AMtA/qBDbCWKicb1AKbM4kMTiUU=;
  b=JiiRgnobXQY/vsywjXjWEHZe2DOZDejuwek9/2OJLOdp5kBDuOW1BEEh
   ws32kyiQ2SHFy9JMN6wtztGsDBrsFwvr7EbbP1Jn2q79gN4Ll2468zKM7
   JL4GvEpvJhiknGtRl0JbzaJA22I8oHLl41w0ya/6mj8yQoEuWcaT0tdJM
   VWHRTc+BBoLI9lIGBYG2merIFRN56A1Vdb+7Km2+RZFK9CnZdS70CtdPI
   fW82dchUAgf8R+OoKmklLtLg0EJg29sJE8nUYyY6GWDmsPeZ2JhnngCs0
   bi+tOSdUO0jfYtXAA4s1do6QAM48EWQAXQWkcANXS7nUP3aOTzttrha+O
   A==;
X-CSE-ConnectionGUID: RTgpkHcaTNi78eF3MhFFCA==
X-CSE-MsgGUID: Md+TLPX0Ql2KWYmfw1t5eQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11967"; a="3441640"
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="3441640"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 01:11:41 -0800
X-CSE-ConnectionGUID: oDjVyYydS6al3Wos2dGXfg==
X-CSE-MsgGUID: 8mptrhgqRVSxBju7Y/d8gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="9636207"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.93])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 01:11:33 -0800
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
Subject: [PATCH 00/12] drm/atomic: Try to make atomic+async usable, and clear up the "async update" helper confusion
Date: Mon, 16 Nov 2026 11:11:18 +0200
Message-ID: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_011142_514398_8A181044 
X-CRM114-Status: UNSURE (   9.91  )
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSB3ZWlyZCB1YXBpIHNlbWFudGljcyBvZiB0aGUgYXRvbWljIGFzeW5jIGZsaXAgc3VwcG9ydCBt
YWtlIGl0CnJlYWxseSBoYXJkIGZvciBkcml2ZXJzIHRvIGltcGxlbWVudC4gVHJ5IHRvIGZpeCB0
aGF0IGJ5IGZpbHRlcmluZwpvdXQgdGhlIG5vLW9wIGp1bmsgZnJvbSB0aGUgY29tbWl0IHRoYXQg
dXNlcnNwYWNlIGxpa2VzIHRvIHB1dCB0aGVyZS4KCkFsc28gYSBsb3Qgb2YgcGVvcGxlIGFyZSBh
cHBhcmVudGx5IGNvbmZ1c2luZyB0aGUKLmF0b21pY19hc3luY197dXBkYXRlLGNoZWNrfSgpIGhh
Y2sgd2l0aCBhc3luYyBmbGlwcy4gVGhlIHR3bwphcmUgY29tcGxldGVseSBvcnRob2dvbmFsLCBz
byB0cnkgdG8gY2xlYXIgdXAgdGhhdCBtZXNzIGJ5CnJlbmFtaW5nIHRoZSBoYWNrIHRvIC5hdG9t
aWNfYnlwYXNzX3t1cGRhdGUsY2hlY2t9KCkuCgpUT0RPOiBhdG9taWMrYXN5bmMgaXMgaW4gc2Vy
aW91cyBuZWVkIHRvIHByb3BlciB0ZXN0cywgc29tZWhvdwogICAgICBhbGwgdGhhdCBzZWVtcyB0
byBoYXZlIGdvdHRlbiBza2lwcGVkIHdoZW4gdGhlIGZlYXR1cmUKICAgICAgd2FzIGFkZGVkIDoo
CgpDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IEFuZHLDqSBBbG1laWRhIDxh
bmRyZWFsbWVpZEBpZ2FsaWEuY29tPgpDYzogQm9yaXMgQnJlemlsbG9uIDxiYnJlemlsbG9uQGtl
cm5lbC5vcmc+CkNjOiBDaHJpc3RvcGhlciBTbm93aGlsbCA8Y2hyaXNAa29kZTU0Lm5ldD4KQ2M6
IERhdmUgU3RldmVuc29uIDxkYXZlLnN0ZXZlbnNvbkByYXNwYmVycnlwaS5jb20+CkNjOiBEaGFy
bWEgQmFsYXN1YmlyYW1hbmkgPGRoYXJtYS5iQG1pY3JvY2hpcC5jb20+CkNjOiBEbWl0cnkgQmFy
eXNoa292IDxsdW1hZ0BrZXJuZWwub3JnPgpDYzogZnJlZWRyZW5vQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpDYzogR3VzdGF2byBQYWRvdmFuIDxndXN0YXZvLnBhZG92YW5AY29sbGFib3JhLmNvbT4K
Q2M6IEh1YWNhaSBDaGVuIDxjaGVuaHVhY2FpQGtlcm5lbC5vcmc+CkNjOiBJY2Vub3d5IFpoZW5n
IDx6aGVuZ3hpbmdkYUBpc2Nhcy5hYy5jbj4KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogSmlhbm1pbiBMdiA8
bHZqaWFubWluQGxvb25nc29uLmNuPgpDYzogbGludXgtYXJtLW1zbUB2Z2VyLmtlcm5lbC5vcmcK
Q2M6IGxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXRlZ3JhQHZnZXIua2VybmVsLm9yZwpDYzog
TGl2aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFybS5jb20+CkNjOiBNYcOtcmEgQ2FuYWwgPG1jYW5h
bEBpZ2FsaWEuY29tPgpDYzogTWFuaWthbmRhbiBNdXJhbGlkaGFyYW4gPG1hbmlrYW5kYW4ubUBt
aWNyb2NoaXAuY29tPgpDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgpDYzog
TWluZ2NvbmcgQmFpIDxqZWZmYmFpQGFvc2MuaW8+CkNjOiBub3V2ZWF1QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpDYzogUWlhbmhhaSBXdSA8d3VxaWFuaGFpQGxvb25nc29uLmNuPgpDYzogUmFzcGJl
cnJ5IFBpIEtlcm5lbCBNYWludGVuYW5jZSA8a2VybmVsLWxpc3RAcmFzcGJlcnJ5cGkuY29tPgpD
YzogU2ltb24gU2VyIDxjb250YWN0QGVtZXJzaW9uLmZyPgpDYzogd2F5bGFuZC1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKQ2M6IFhhdmVyIEh1Z2wgPHhhdmVyLmh1Z2xAa2RlLm9yZz4KQ2M6
IFhpIFJ1b3lhbyA8eHJ5MTExQHhyeTExMS5zaXRlPgoKVmlsbGUgU3lyasOkbMOkICgxMik6CiAg
ZHJtL2F0b21pYzogUmVtb3ZlIHRhbGwgdGFsZXMgYWJvdXQgdGVhcmluZyB2cy4gImFzeW5jIHVw
ZGF0ZXMiCiAgZHJtL2F0b21pYzogcy9hc3luYy9ieXBhc3MvCiAgZHJtL2F0b21pYzogQWRkIEZJ
WE1FcyBhcm91bmQgdGhlIGluY29ycmVjdCB1c2Ugb2YgdGhlCiAgICAuYXRvbWljX2J5cGFzc19j
aGVjaygpIGZvciBhc3luYyBmbGlwcwogIGRybS9hdG9taWM6IEhpZ2hsaWdodCB0aGF0IGJ5cGFz
cyBjb21taXRzIG5lZWQgY2FyZQogIGRybS9hdG9taWMvdWFwaTogRWxpbWluYXRlIHRoZSBjb25m
dXNpbmcKICAgIGRybV9hdG9taWNfY2hlY2tfcHJvcF9jaGFuZ2VzKCkKICBkcm0vYXRvbWljL3Vh
cGk6IEltcHJvdmUgdGhlIGFzeW5jIGZsaXAgcHJvcGVydHkgcmVqZWN0aW9uIGRlYnVncwogIGRy
bS9hdG9taWMvdWFwaTogRG9jdW1lbnQgdGhlIG5vbi1vYnZpb3VzIGZlbmNlL2ZiX2lkIHByb3Ag
YmVoYXZpb3VyCiAgZHJtL2F0b21pYy91YXBpOiBBZGQgYSBGSVhNRSBhYm91dCBjb2xvcm9wIHZz
LiBhc3luYyBmbGlwcwogIGRybS9hdG9taWMtaGVscGVyOiBNYXJrIGRybV9hdG9taWNfY3J0Y19z
dGF0ZV9mb3JfZWFjaF9wbGFuZV9zdGF0ZSgpCiAgICB1bnNhZmUKICBkcm0vaTkxNTogQ29tcGxl
dGUgbm8tb3AgImFzeW5jIGZsaXBzIiBieSBoYW5kCiAgZHJtL2F0b21pYy91YXBpOiBNYWtlIGFz
eW5jIGZsaXBzIGEgYml0IG1vcmUgcGFsYXRhYmxlIHRocm91Z2ggYXRvbWljCiAgZHJtL2F0b21p
Yy91YXBpOiBFeHRyYWN0IHtjb25uZWN0b3IsY3J0YyxwbGFuZX1fYXN5bmNfZmxpcF9jaGVjaygp
CgogLmNsYW5nLWZvcm1hdCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAyICst
CiAuLi4vZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgfCAgMTIgKy0K
IC4uLi9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtX3BsYW5lLmMgICB8ICAyMCArLQog
Li4uL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG1fcGxhbmUuaCAgIHwgICA2ICstCiAu
Li4vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbV90cmFjZS5oICAgfCAgMTYgKy0KIC4u
Li9hbWRncHVfZG0vdGVzdHMvYW1kZ3B1X2RtX3BsYW5lX3Rlc3QuYyAgICB8ICAzMiArLS0KIGRy
aXZlcnMvZ3B1L2RybS9hcm0vbWFsaWRwX2NydGMuYyAgICAgICAgICAgICB8ICAgNiArLQogZHJp
dmVycy9ncHUvZHJtL2RybV9hdG9taWMuYyAgICAgICAgICAgICAgICAgIHwgIDk3ICsrKysrKysr
CiBkcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY19oZWxwZXIuYyAgICAgICAgICAgfCAgNDkgKyst
LS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYyAgICAgICAgICAgICB8IDIwOCAr
KysrKysrKysrKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Y19pbnRlcm5hbC5oICAg
ICAgICAgICB8ICAgOSArCiBkcml2ZXJzL2dwdS9kcm0vZHJtX3NlbGZfcmVmcmVzaF9oZWxwZXIu
YyAgICAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF93bS5jICAg
ICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgIHwgIDM4ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5oICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2xvb25nc29uL2xzZGNfcGxhbmUuYyAgICAg
ICAgIHwgIDE4ICstCiBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX3BsYW5lLmMgICAgICAg
ICAgfCAgMTIgKy0KIGRyaXZlcnMvZ3B1L2RybS9tc20vZGlzcC9kcHUxL2RwdV9jb3JlX3BlcmYu
YyB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL2RwdTEvZHB1X2NydGMuYyAgICAg
IHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvbWRwNS9tZHA1X2NydGMuYyAgICAg
fCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9tc20vZGlzcC9tZHA1L21kcDVfcGxhbmUuYyAgICB8
ICAxMiArLQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fYXRvbWljLmMgICAgICAgICAgICAgIHwg
ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jICAgfCAg
MTIgKy0KIGRyaXZlcnMvZ3B1L2RybS90ZWdyYS9kYy5jICAgICAgICAgICAgICAgICAgICB8ICAx
OCArLQogZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfaHZzLmMgICAgICAgICAgICAgICAgIHwgICAy
ICstCiBkcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9wbGFuZS5jICAgICAgICAgICAgICAgfCAgMTYg
Ky0KIGluY2x1ZGUvZHJtL2RybV9hdG9taWMuaCAgICAgICAgICAgICAgICAgICAgICB8ICAxMCAr
LQogaW5jbHVkZS9kcm0vZHJtX2F0b21pY19oZWxwZXIuaCAgICAgICAgICAgICAgIHwgIDIwICst
CiBpbmNsdWRlL2RybS9kcm1fbW9kZXNldF9oZWxwZXJfdnRhYmxlcy5oICAgICAgfCAgNTAgKysr
LS0KIDI5IGZpbGVzIGNoYW5nZWQsIDQ4MiBpbnNlcnRpb25zKCspLCAyMDEgZGVsZXRpb25zKC0p
CgotLSAKMi41Ni4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
