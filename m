Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DA24C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 13:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPFPX3gvOsrXuqD4F/i0JhCRI/GZ2i321ZtgalVUKzU=; b=H1WwTxeyX5PsLt
	CAgb7yf55LGyshZ8303P7CHNJtG7Bf+gB9zjkIF/FvkR4NX6RJcyo8H/ct9FpSAds7NsGxGtvYqZP
	DPGAPH/uFvcjc4J1OuRMu+Pv+aJ/VOnu8+xDqdz1m2VHjjxyk1iNkPWM4Z3fMxstG60sjR4vperVn
	Wq9q3nzXseVu5QpnKySiNVV4cxm4CO+bduFlvmezpTB4Dj1IT3bU3TCfUMCIjbXBDysZXJmyxbEMv
	cMneBXQ2mWY5z7+ZlgocHcVSGGzkBeOcNUWawZ9Vs0PLeWZvHeIcMelX1+MKcpQlyH98T1igSWnkW
	rzWhjXtvADb06oA32iDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwims-0000000CIBg-3QF6;
	Tue, 16 Apr 2024 13:23:50 +0000
Received: from mgamail.intel.com ([198.175.65.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwimm-0000000CI9I-2kRv;
	Tue, 16 Apr 2024 13:23:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1713273825; x=1744809825;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=oG2GtV3nt+5QkO7h/AQtyjTIPvu8JRijgCsInOXsQmY=;
  b=bbk3X60RDIlFKh+jaBTx6pcSL+nj8u1MDFBWzcYZTIiW7TpbmA6k5LPJ
   u5VqqSrtGhOCsJQ8Min1CcfmuniIFtT90t2Kaf7Hlou6XkhHk03IB0AZR
   jvETlCybrHnY2MPPVgf3ofNSUPw2/Bmuvp42l7xb3XbMqJnVlO1Bh1BLJ
   AGDXiTvfli4DGym1dvJJK2H+xqFQQeCXSz1erxPW+6kfN/2D5MtaASJdq
   hKEeWNUvmZtunWGU9DP2W0Tx+IeXGIwSyXTKu0/+uwFfQJuRz/WgsrLf3
   J/iv4ePlNk2HLbPSR0kVjd7shNwtPBSKvfc6rj8MWHdKxzA8StsId2EAF
   Q==;
X-CSE-ConnectionGUID: gDlbl36qS5ip3FmnyqG3iQ==
X-CSE-MsgGUID: gcRpOYMeTV2Hl0EXPggvxQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="20131400"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="20131400"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2024 06:23:43 -0700
X-CSE-ConnectionGUID: N7hGG/BORvyEuSp7FzE8Ig==
X-CSE-MsgGUID: KQolT1WkSp6IgVi/HsO/bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="27055466"
Received: from martakit-mobl.ger.corp.intel.com (HELO localhost) ([10.252.44.100])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2024 06:23:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 13/15] drm/rockchip: cdn-dp: switch to struct drm_edid
Date: Tue, 16 Apr 2024 16:22:27 +0300
Message-Id: <59d2feb9f8b28d1a1cf49077a35941aa9b3d36af.1713273659.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713273659.git.jani.nikula@intel.com>
References: <cover.1713273659.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_062344_761523_5B126EAE 
X-CRM114-Status: GOOD (  15.48  )
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

UHJlZmVyIHN0cnVjdCBkcm1fZWRpZCBiYXNlZCBmdW5jdGlvbnMgb3ZlciBzdHJ1Y3QgZWRpZC4K
ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CgotLS0K
CkNjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgpDYzogIkhlaWtvIFN0w7xibmVy
IiA8aGVpa29Ac250ZWNoLmRlPgpDYzogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29t
PgpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nk
bi1kcC1jb3JlLmMgfCAzMyArKysrKysrKysrKysrKystLS0tLS0tLS0tLQogZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmggfCAgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAyMCBp
bnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4t
ZHAtY29yZS5jCmluZGV4IGE4NTVjNDVhZTdmMy4uOWUzZDdjYjg0YzVkIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYwpAQCAtMjYyLDIwICsyNjIsMjEgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX2Z1bmNzIGNkbl9kcF9hdG9taWNfY29ubmVjdG9yX2Z1
bmNzID0gewogc3RhdGljIGludCBjZG5fZHBfY29ubmVjdG9yX2dldF9tb2RlcyhzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciAqY29ubmVjdG9yKQogewogCXN0cnVjdCBjZG5fZHBfZGV2aWNlICpkcCA9IGNv
bm5lY3Rvcl90b19kcChjb25uZWN0b3IpOwotCXN0cnVjdCBlZGlkICplZGlkOwogCWludCByZXQg
PSAwOwogCiAJbXV0ZXhfbG9jaygmZHAtPmxvY2spOwotCWVkaWQgPSBkcC0+ZWRpZDsKLQlpZiAo
ZWRpZCkgeworCisJaWYgKGRwLT5kcm1fZWRpZCkgeworCQkvKiBGSVhNRTogZ2V0IHJpZCBvZiBk
cm1fZWRpZF9yYXcoKSAqLworCQljb25zdCBzdHJ1Y3QgZWRpZCAqZWRpZCA9IGRybV9lZGlkX3Jh
dyhkcC0+ZHJtX2VkaWQpOworCiAJCURSTV9ERVZfREVCVUdfS01TKGRwLT5kZXYsICJnb3QgZWRp
ZDogd2lkdGhbJWRdIHggaGVpZ2h0WyVkXVxuIiwKIAkJCQkgIGVkaWQtPndpZHRoX2NtLCBlZGlk
LT5oZWlnaHRfY20pOwogCi0JCWRwLT5zaW5rX2hhc19hdWRpbyA9IGRybV9kZXRlY3RfbW9uaXRv
cl9hdWRpbyhlZGlkKTsKLQotCQlkcm1fY29ubmVjdG9yX3VwZGF0ZV9lZGlkX3Byb3BlcnR5KGNv
bm5lY3RvciwgZWRpZCk7Ci0JCXJldCA9IGRybV9hZGRfZWRpZF9tb2Rlcyhjb25uZWN0b3IsIGVk
aWQpOwogCX0KKworCXJldCA9IGRybV9lZGlkX2Nvbm5lY3Rvcl9hZGRfbW9kZXMoY29ubmVjdG9y
KTsKKwogCW11dGV4X3VubG9jaygmZHAtPmxvY2spOwogCiAJcmV0dXJuIHJldDsKQEAgLTM4MCw5
ICszODEsMTMgQEAgc3RhdGljIGludCBjZG5fZHBfZ2V0X3NpbmtfY2FwYWJpbGl0eShzdHJ1Y3Qg
Y2RuX2RwX2RldmljZSAqZHApCiAJCXJldHVybiByZXQ7CiAJfQogCi0Ja2ZyZWUoZHAtPmVkaWQp
OwotCWRwLT5lZGlkID0gZHJtX2RvX2dldF9lZGlkKCZkcC0+Y29ubmVjdG9yLAotCQkJCSAgIGNk
bl9kcF9nZXRfZWRpZF9ibG9jaywgZHApOworCWRybV9lZGlkX2ZyZWUoZHAtPmRybV9lZGlkKTsK
KwlkcC0+ZHJtX2VkaWQgPSBkcm1fZWRpZF9yZWFkX2N1c3RvbSgmZHAtPmNvbm5lY3RvciwKKwkJ
CQkJICAgIGNkbl9kcF9nZXRfZWRpZF9ibG9jaywgZHApOworCWRybV9lZGlkX2Nvbm5lY3Rvcl91
cGRhdGUoJmRwLT5jb25uZWN0b3IsIGRwLT5kcm1fZWRpZCk7CisKKwlkcC0+c2lua19oYXNfYXVk
aW8gPSBkcC0+Y29ubmVjdG9yLmRpc3BsYXlfaW5mby5oYXNfYXVkaW87CisKIAlyZXR1cm4gMDsK
IH0KIApAQCAtNDg4LDggKzQ5Myw4IEBAIHN0YXRpYyBpbnQgY2RuX2RwX2Rpc2FibGUoc3RydWN0
IGNkbl9kcF9kZXZpY2UgKmRwKQogCWRwLT5tYXhfbGFuZXMgPSAwOwogCWRwLT5tYXhfcmF0ZSA9
IDA7CiAJaWYgKCFkcC0+Y29ubmVjdGVkKSB7Ci0JCWtmcmVlKGRwLT5lZGlkKTsKLQkJZHAtPmVk
aWQgPSBOVUxMOworCQlkcm1fZWRpZF9mcmVlKGRwLT5kcm1fZWRpZCk7CisJCWRwLT5kcm1fZWRp
ZCA9IE5VTEw7CiAJfQogCiAJcmV0dXJuIDA7CkBAIC0xMTMxLDggKzExMzYsOCBAQCBzdGF0aWMg
dm9pZCBjZG5fZHBfdW5iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFz
dGVyLCB2b2lkICpkYXRhKQogCXBtX3J1bnRpbWVfZGlzYWJsZShkZXYpOwogCWlmIChkcC0+Zndf
bG9hZGVkKQogCQlyZWxlYXNlX2Zpcm13YXJlKGRwLT5mdyk7Ci0Ja2ZyZWUoZHAtPmVkaWQpOwot
CWRwLT5lZGlkID0gTlVMTDsKKwlkcm1fZWRpZF9mcmVlKGRwLT5kcm1fZWRpZCk7CisJZHAtPmRy
bV9lZGlkID0gTlVMTDsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBjb21wb25lbnRfb3BzIGNk
bl9kcF9jb21wb25lbnRfb3BzID0gewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2Nkbi1kcC1jb3JlLmggYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUu
aAppbmRleCA1YjJmZWQxZjVmNTUuLjhlNmU5NWQyNjlkYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2Nkbi1kcC1jb3JlLmgKQEAgLTcwLDcgKzcwLDcgQEAgc3RydWN0IGNkbl9kcF9kZXZpY2Ug
ewogCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlIG1vZGU7CiAJc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqYXVkaW9fcGRldjsKIAlzdHJ1Y3Qgd29ya19zdHJ1Y3QgZXZlbnRfd29yazsKLQlzdHJ1Y3Qg
ZWRpZCAqZWRpZDsKKwljb25zdCBzdHJ1Y3QgZHJtX2VkaWQgKmRybV9lZGlkOwogCiAJc3RydWN0
IG11dGV4IGxvY2s7CiAJYm9vbCBjb25uZWN0ZWQ7Ci0tIAoyLjM5LjIKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
