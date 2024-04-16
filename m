Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C22EDC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 13:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQ1Iq+wVdeqI42XpB1JzJ85xcuX3Z57vrxrxzf6I2JQ=; b=lDcTJ/q679oUr9
	eK1/8YFLrkrzw1wUptaxWIX/OaOl2j1WpezXVbFPQhqqWj/AFKLK+pw26gRExJUq8GSovCC24qbvz
	X3Uzki+Cdj71AyLuTWr9ygo+bsF/rI1++GnQrsXnuWEisRgpPHHRTyJPn94w1AGI/3BZy/rglgrOZ
	5tSyzBCN3Oy3ZC1Krg/5zymK9I1SGYC4v4sRjz/YALVwENShHVz8TTqeJcEHD80pUY26rumqkCZ5m
	c27KKcxDkYpVVfchgr4zREWdSjIM9Q/VEOrWD0ID8qeHLNAYPB3ZpC0i1WIyKsQ27lumDc6Bnfv4T
	qJgSvOKvvT4RlJS1OxYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwin7-0000000CIJe-0zN8;
	Tue, 16 Apr 2024 13:24:05 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwimr-0000000CIAE-2BBq;
	Tue, 16 Apr 2024 13:23:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1713273830; x=1744809830;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=5nXrXIDLBlKi4Z6zegaSBQ/zMeZdxeF3Ujvn8Hi1gnk=;
  b=EK3RQMTSE11G29MPeyBgJSfIxC4QL50IywIDoUOjgM411ubSsW9uoiu0
   FHgrUV0tKc1QcRFJcROvhYD+eRgVFdojIvdMKodn6hxSEr21dqYbXQJCX
   ec/a36A/RP3/fvrWdZUZsPimRGhpoWCVaGjl5cx4RWjMiPtQgIH8LDVdy
   Y3JOzhcXMKOvYKRrgfAfPvGQTB9eVKac51GaHvxmBeZnh/XlJKSaA6EiK
   hVGQaDBNz0S2bzr7yW8JOWTC4HF7HChk3SxHf1TRQ1Yw4z3Kh6fWAMni8
   lQ4IcaxnkXchmxNYlOraYKYh3MBle6CYGLpq7IaQCoXP0Ga8nf9Ote1kt
   Q==;
X-CSE-ConnectionGUID: EvJE/QMZRFWovDvWnr2RhA==
X-CSE-MsgGUID: KS1MuhGtTcGc2lrvLzCniQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="31191369"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="31191369"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2024 06:23:48 -0700
X-CSE-ConnectionGUID: BovRYRspTR2fPsG8cCa1qw==
X-CSE-MsgGUID: aN/gRYSTT62HH5y/HjjR9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="22326162"
Received: from martakit-mobl.ger.corp.intel.com (HELO localhost) ([10.252.44.100])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2024 06:23:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 14/15] drm/rockchip: inno_hdmi: switch to struct drm_edid
Date: Tue, 16 Apr 2024 16:22:28 +0300
Message-Id: <1218cb4fd79149c90dc0c82c42ae0c8a36acf055.1713273659.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713273659.git.jani.nikula@intel.com>
References: <cover.1713273659.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_062349_701262_03D07295 
X-CRM114-Status: GOOD (  10.02  )
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
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2lu
bm9faGRtaS5jIHwgMTIgKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25z
KCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9pbm5vX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYwppbmRl
eCAxZDIyNjE2NDM3NDMuLjNkZjJjZmNmOTk5OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL2lubm9faGRtaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5v
X2hkbWkuYwpAQCAtNjA2LDE4ICs2MDYsMTYgQEAgaW5ub19oZG1pX2Nvbm5lY3Rvcl9kZXRlY3Qo
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwgYm9vbCBmb3JjZSkKIHN0YXRpYyBpbnQg
aW5ub19oZG1pX2Nvbm5lY3Rvcl9nZXRfbW9kZXMoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5l
Y3RvcikKIHsKIAlzdHJ1Y3QgaW5ub19oZG1pICpoZG1pID0gY29ubmVjdG9yX3RvX2lubm9faGRt
aShjb25uZWN0b3IpOwotCXN0cnVjdCBlZGlkICplZGlkOworCWNvbnN0IHN0cnVjdCBkcm1fZWRp
ZCAqZHJtX2VkaWQ7CiAJaW50IHJldCA9IDA7CiAKIAlpZiAoIWhkbWktPmRkYykKIAkJcmV0dXJu
IDA7CiAKLQllZGlkID0gZHJtX2dldF9lZGlkKGNvbm5lY3RvciwgaGRtaS0+ZGRjKTsKLQlpZiAo
ZWRpZCkgewotCQlkcm1fY29ubmVjdG9yX3VwZGF0ZV9lZGlkX3Byb3BlcnR5KGNvbm5lY3Rvciwg
ZWRpZCk7Ci0JCXJldCA9IGRybV9hZGRfZWRpZF9tb2Rlcyhjb25uZWN0b3IsIGVkaWQpOwotCQlr
ZnJlZShlZGlkKTsKLQl9CisJZHJtX2VkaWQgPSBkcm1fZWRpZF9yZWFkX2RkYyhjb25uZWN0b3Is
IGhkbWktPmRkYyk7CisJZHJtX2VkaWRfY29ubmVjdG9yX3VwZGF0ZShjb25uZWN0b3IsIGRybV9l
ZGlkKTsKKwlyZXQgPSBkcm1fZWRpZF9jb25uZWN0b3JfYWRkX21vZGVzKGNvbm5lY3Rvcik7CisJ
ZHJtX2VkaWRfZnJlZShkcm1fZWRpZCk7CiAKIAlyZXR1cm4gcmV0OwogfQotLSAKMi4zOS4yCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
