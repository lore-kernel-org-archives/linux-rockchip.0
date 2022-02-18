Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9B81C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Feb 2022 10:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8tsooXIfwzapN5BtES4XNxGZVjJbImt4WoicXlZlNT8=; b=h5CDLOTKbKeAoh
	8AtGrQkUq2ArtPsFp8LYguCiUAtQqbci5rjjaYyB1eUq4fMzChycilHaV1yL5LWT0mY11dCPio4Z0
	qgJO6Ei1GIJ0el4ZwfSpifUfUzioVDY02z6UudN71O52ysGZcFrFIKKhaoNlUAl+AXNenzL4D0qo4
	+ZL3fzK8JN9vnV5OZyMuJ0LKNNyehlvXyxpu9ZbQUXCGCHocCQbnMroMAS/7Stqe3W06DXdDgGu4M
	Xv/3fsXx39EKzXR9gz649sAl7kBB+QHOpIITd9pR/MfC1U7/b+0GmDhq7tUduRYWTXA8d6KxoEBWQ
	gptR62iJsyk9jJ9FIVLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nL08i-00DjRf-Vq; Fri, 18 Feb 2022 10:05:25 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nL08U-00DjKs-So; Fri, 18 Feb 2022 10:05:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645178710; x=1676714710;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=snM9WT8bzeQ8MIyRP4h6q0MnlUe9Shqgn3XY53nm0Mk=;
 b=Q0I/UXnB7LrOvc3fsYuxLU/g88dCxFtcINOgsGr8UheC2gZZVMX96TP1
 GwmMTMeunfHrn9GomqciRKvgkT5Yhb9qFzeqXabx7CrxLnfLdwZFjcjHL
 BdiPDfiiU7ZDmOLBvE7IjuRXNFDhfgLDP1HXueLMRrInpspu8T38kH/Ds
 32nv61cYkCfus8XAJrwPcZkOTcvvr1PmSiEF3RTGDFuCXtZskAgTFOnJY
 Z/p6HAXMGkWRsInGnxtl4ciC+pvFBqUdItn+gKb1JNPH9v1wNl76l6sMl
 guM7jDjlgqRXgYSe40DCO9zWds4P+a1Ks7Ske+xpfCBuna69r/kzfnRvu A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="251296921"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="251296921"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 02:05:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="572252023"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 18 Feb 2022 02:05:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Feb 2022 12:05:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 14/22] drm/rockchip: Use drm_mode_copy()
Date: Fri, 18 Feb 2022 12:03:55 +0200
Message-Id: <20220218100403.7028-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
References: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220218_020510_975274_F8E220E9 
X-CRM114-Status: GOOD (  19.15  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCnN0
cnVjdCBkcm1fZGlzcGxheV9tb2RlIGVtYmVkcyBhIGxpc3QgaGVhZCwgc28gb3ZlcndyaXRpbmcK
dGhlIGZ1bGwgc3RydWN0IHdpdGggYW5vdGhlciBvbmUgd2lsbCBjb3JydXB0IHRoZSBsaXN0Cihp
ZiB0aGUgZGVzdGluYXRpb24gbW9kZSBpcyBvbiBhIGxpc3QpLiBVc2UgZHJtX21vZGVfY29weSgp
Cmluc3RlYWQgd2hpY2ggZXhwbGljaXRseSBwcmVzZXJ2ZXMgdGhlIGxpc3QgaGVhZCBvZgp0aGUg
ZGVzdGluYXRpb24gbW9kZS4KCkV2ZW4gaWYgd2Uga25vdyB0aGUgZGVzdGluYXRpb24gbW9kZSBp
cyBub3Qgb24gYW55IGxpc3QKdXNpbmcgZHJtX21vZGVfY29weSgpIHNlZW1zIGRlY2VudCBhcyBp
dCBzZXRzIGEgZ29vZApleGFtcGxlLiBCYWQgZXhhbXBsZXMgb2Ygbm90IHVzaW5nIGl0IG1pZ2h0
IGV2ZW50dWFsbHkKZ2V0IGNvcGllZCBpbnRvIGNvZGUgd2hlcmUgcHJlc2VydmluZyB0aGUgbGlz
dCBoZWFkCmFjdHVhbGx5IG1hdHRlcnMuCgpPYnZpb3VzbHkgb25lIGNhc2Ugbm90IGNvdmVyZWQg
aGVyZSBpcyB3aGVuIHRoZSBtb2RlCml0c2VsZiBpcyBlbWJlZGRlZCBpbiBhIGxhcmdlciBzdHJ1
Y3R1cmUgYW5kIHRoZSB3aG9sZQpzdHJ1Y3R1cmUgaXMgY29waWVkLiBCdXQgaWYgd2UgYXJlIGNh
cmVmdWwgd2hlbiBjb3B5aW5nCmludG8gbW9kZXMgZW1iZWRkZWQgaW4gc3RydWN0dXJlcyBJIHRo
aW5rIHdlIGNhbiBiZSBhCmxpdHRsZSBtb3JlIHJlYXNzdXJlZCB0aGF0IGJvZ3VzIGxpc3QgaGVh
ZHMgaGF2ZW4ndCBiZWVuCnByb3BhZ2F0ZWQgaW4uCgpAaXNfbW9kZV9jb3B5QApAQApkcm1fbW9k
ZV9jb3B5KC4uLikKewouLi4KfQoKQGRlcGVuZHMgb24gIWlzX21vZGVfY29weUAKc3RydWN0IGRy
bV9kaXNwbGF5X21vZGUgKm1vZGU7CmV4cHJlc3Npb24gRSwgUzsKQEAKKAotICptb2RlID0gRQor
IGRybV9tb2RlX2NvcHkobW9kZSwgJkUpCnwKLSBtZW1jcHkobW9kZSwgRSwgUykKKyBkcm1fbW9k
ZV9jb3B5KG1vZGUsIEUpCikKCkBkZXBlbmRzIG9uICFpc19tb2RlX2NvcHlACnN0cnVjdCBkcm1f
ZGlzcGxheV9tb2RlIG1vZGU7CmV4cHJlc3Npb24gRTsKQEAKKAotIG1vZGUgPSBFCisgZHJtX21v
ZGVfY29weSgmbW9kZSwgJkUpCnwKLSBtZW1jcHkoJm1vZGUsIEUsIFMpCisgZHJtX21vZGVfY29w
eSgmbW9kZSwgRSkKKQoKQEAKc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGU7CkBACi0gJipt
b2RlCisgbW9kZQoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KQ2M6IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+CkNj
OiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+CkNjOiBsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYyB8IDIgKy0KIGRy
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYyAgIHwgMiArLQogZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvY2RuLWRwLWNvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAt
Y29yZS5jCmluZGV4IDQ3NDBjYzE0YmViOC4uYWRmMTAyN2EzZjIwIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvY2RuLWRwLWNvcmUuYwpAQCAtNTY0LDcgKzU2NCw3IEBAIHN0YXRpYyB2b2lkIGNk
bl9kcF9lbmNvZGVyX21vZGVfc2V0KHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlciwKIAl2aWRl
by0+dl9zeW5jX3BvbGFyaXR5ID0gISEobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX05WU1lO
Qyk7CiAJdmlkZW8tPmhfc3luY19wb2xhcml0eSA9ICEhKG1vZGUtPmZsYWdzICYgRFJNX01PREVf
RkxBR19OSFNZTkMpOwogCi0JbWVtY3B5KCZkcC0+bW9kZSwgYWRqdXN0ZWQsIHNpemVvZigqbW9k
ZSkpOworCWRybV9tb2RlX2NvcHkoJmRwLT5tb2RlLCBhZGp1c3RlZCk7CiB9CiAKIHN0YXRpYyBi
b29sIGNkbl9kcF9jaGVja19saW5rX3N0YXR1cyhzdHJ1Y3QgY2RuX2RwX2RldmljZSAqZHApCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMgYi9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMKaW5kZXggMDQ2ZThlYzJhNzFjLi43NDAxOTZk
MzBmYmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMKQEAgLTQ4OCw3ICs0ODgs
NyBAQCBzdGF0aWMgdm9pZCBpbm5vX2hkbWlfZW5jb2Rlcl9tb2RlX3NldChzdHJ1Y3QgZHJtX2Vu
Y29kZXIgKmVuY29kZXIsCiAJaW5ub19oZG1pX3NldHVwKGhkbWksIGFkal9tb2RlKTsKIAogCS8q
IFN0b3JlIHRoZSBkaXNwbGF5IG1vZGUgZm9yIHBsdWdpbi9EUE1TIHBvd2Vyb24gZXZlbnRzICov
Ci0JbWVtY3B5KCZoZG1pLT5wcmV2aW91c19tb2RlLCBhZGpfbW9kZSwgc2l6ZW9mKGhkbWktPnBy
ZXZpb3VzX21vZGUpKTsKKwlkcm1fbW9kZV9jb3B5KCZoZG1pLT5wcmV2aW91c19tb2RlLCBhZGpf
bW9kZSk7CiB9CiAKIHN0YXRpYyB2b2lkIGlubm9faGRtaV9lbmNvZGVyX2VuYWJsZShzdHJ1Y3Qg
ZHJtX2VuY29kZXIgKmVuY29kZXIpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcmszMDY2X2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZfaGRtaS5j
CmluZGV4IDFjNTQ2YzNhODk5OC4uMTdlN2M0MGE5ZTdiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcmszMDY2X2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcmszMDY2X2hkbWkuYwpAQCAtMzgzLDcgKzM4Myw3IEBAIHJrMzA2Nl9oZG1pX2VuY29kZXJf
bW9kZV9zZXQoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyLAogCXN0cnVjdCByazMwNjZfaGRt
aSAqaGRtaSA9IHRvX3JrMzA2Nl9oZG1pKGVuY29kZXIpOwogCiAJLyogU3RvcmUgdGhlIGRpc3Bs
YXkgbW9kZSBmb3IgcGx1Z2luL0RQTVMgcG93ZXJvbiBldmVudHMuICovCi0JbWVtY3B5KCZoZG1p
LT5wcmV2aW91c19tb2RlLCBhZGpfbW9kZSwgc2l6ZW9mKGhkbWktPnByZXZpb3VzX21vZGUpKTsK
Kwlkcm1fbW9kZV9jb3B5KCZoZG1pLT5wcmV2aW91c19tb2RlLCBhZGpfbW9kZSk7CiB9CiAKIHN0
YXRpYyB2b2lkIHJrMzA2Nl9oZG1pX2VuY29kZXJfZW5hYmxlKHN0cnVjdCBkcm1fZW5jb2RlciAq
ZW5jb2RlcikKLS0gCjIuMzQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
