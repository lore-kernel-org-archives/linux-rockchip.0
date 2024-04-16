Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A3A7C04FF9
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 13:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8F8g/oScjuwhjFpTPmKV407KhtXsRFE8p3XmJ91CC0o=; b=0YhajwNMeovPdm
	siHYh702cRIZk+6837VCQ5QW8uYRTnfsnauiFSa1+iI5KfCBW+aRa4AgFyAMN/P1mAeFP+WSwSopx
	dKRLXCyWpsP2deA3S7CO+Nc2ry3uTwlL4aGOzfNGeHzc3XLCI0OHJT/zF2N9r/7/6IHjM6EN7jzT2
	HXXwjMQamRS+6XZFWdMhvRH5Woj120FxHKt9MSgKWDLw0pch457zM3EfQpBICjnbrBADW4ZjDD5ul
	qqq2sD5rzNyn4hQFDYOlVGuJxiYJEw/aiS0vJ7E4GmK7l8bYEIGmfATc8xubQYIhNQOnMCwjG5sqH
	dnJlwcTxP8aanHNt0s7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwinD-0000000CIMR-1WH0;
	Tue, 16 Apr 2024 13:24:11 +0000
Received: from mgamail.intel.com ([192.198.163.19])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwimv-0000000CICw-00i4;
	Tue, 16 Apr 2024 13:23:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1713273834; x=1744809834;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=9ad/OeNIb41awZjNgaw6mdG+DAmsdITzEiZNtm/IXMU=;
  b=Vz4oS926MMxVxpJJ6vzLc7QI+Lxj3b+b/zF54XzKAL/T/30+OvDhe7RD
   Ql2rdxwxD1Oab1Ob1M+xIVFCWAu7RKPaORrVYuzDXBNcD6ZV2FaVgzzbo
   KNVnV1WHjjSukjLXS2ARMXpVfBVa2X9dkl6p9OkCbD03hjTsIWfN1Ade7
   zN85um2nPzHsBVYFztqrwcaHHV1A1peiqGJ3wm5WKzqp4D/iR7xXmUJvx
   +JWrfK1741WKzuaYTOrTU45GbHdoAdMHIPRsM6zEpUg5tRlIHFX4jzBz5
   hpkFY1w1vGvA7/5jRduemnPF7uRtvRrdSvMj5q/J5ukthZFXCcKYkVBJY
   Q==;
X-CSE-ConnectionGUID: Jf1ZDQTQS/OGvFBrZcBquA==
X-CSE-MsgGUID: eX2mYlT+TIebgvAg9wp6cQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8571790"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="8571790"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2024 06:23:54 -0700
X-CSE-ConnectionGUID: v7ShSl14RJeH8tmgR1Fa1Q==
X-CSE-MsgGUID: yY7cMnh0TZelqeNhrO7x7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="53438796"
Received: from martakit-mobl.ger.corp.intel.com (HELO localhost) ([10.252.44.100])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2024 06:23:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 15/15] drm/rockchip: rk3066_hdmi: switch to struct drm_edid
Date: Tue, 16 Apr 2024 16:22:29 +0300
Message-Id: <56ee6b7c3c018df55f5fe48a3e6d705dbad5ef74.1713273659.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713273659.git.jani.nikula@intel.com>
References: <cover.1713273659.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_062353_173932_8CD44E74 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jr
MzA2Nl9oZG1pLmMgfCAxMiArKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JrMzA2Nl9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcmszMDY2X2hkbWku
YwppbmRleCA5NWNkMWI0OWVkYTguLjc4NGRlOTkwZGExYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JrMzA2Nl9oZG1pLmMKQEAgLTQ2NiwxOCArNDY2LDE2IEBAIHJrMzA2Nl9oZG1pX2Nvbm5l
Y3Rvcl9kZXRlY3Qoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwgYm9vbCBmb3JjZSkK
IHN0YXRpYyBpbnQgcmszMDY2X2hkbWlfY29ubmVjdG9yX2dldF9tb2RlcyhzdHJ1Y3QgZHJtX2Nv
bm5lY3RvciAqY29ubmVjdG9yKQogewogCXN0cnVjdCByazMwNjZfaGRtaSAqaGRtaSA9IGNvbm5l
Y3Rvcl90b19yazMwNjZfaGRtaShjb25uZWN0b3IpOwotCXN0cnVjdCBlZGlkICplZGlkOworCWNv
bnN0IHN0cnVjdCBkcm1fZWRpZCAqZHJtX2VkaWQ7CiAJaW50IHJldCA9IDA7CiAKIAlpZiAoIWhk
bWktPmRkYykKIAkJcmV0dXJuIDA7CiAKLQllZGlkID0gZHJtX2dldF9lZGlkKGNvbm5lY3Rvciwg
aGRtaS0+ZGRjKTsKLQlpZiAoZWRpZCkgewotCQlkcm1fY29ubmVjdG9yX3VwZGF0ZV9lZGlkX3By
b3BlcnR5KGNvbm5lY3RvciwgZWRpZCk7Ci0JCXJldCA9IGRybV9hZGRfZWRpZF9tb2Rlcyhjb25u
ZWN0b3IsIGVkaWQpOwotCQlrZnJlZShlZGlkKTsKLQl9CisJZHJtX2VkaWQgPSBkcm1fZWRpZF9y
ZWFkX2RkYyhjb25uZWN0b3IsIGhkbWktPmRkYyk7CisJZHJtX2VkaWRfY29ubmVjdG9yX3VwZGF0
ZShjb25uZWN0b3IsIGRybV9lZGlkKTsKKwlyZXQgPSBkcm1fZWRpZF9jb25uZWN0b3JfYWRkX21v
ZGVzKGNvbm5lY3Rvcik7CisJZHJtX2VkaWRfZnJlZShkcm1fZWRpZCk7CiAKIAlyZXR1cm4gcmV0
OwogfQotLSAKMi4zOS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
