Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A81BC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Nov 2022 19:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqb3AFepjryTir+xgMvqB3jOTMshRt09SJ8RVTsaW9U=; b=eqPJBGkTYqPZvv
	kLHav2slpFLalC2Tvr3DmECwsCV8h3vGVfkf3CJL2eMScdEftB8LR6qEyswHtrPpEdo4/Us7r683w
	P/NqyVYuosY19EAprmFzldyBFk8PcgnZ21RIebWKtgwfX72nw3FDcDVVDQjTiRKh6Z8WwAUSwG/O2
	x1ZWfgeMFhMHTIINo3AzgCN6/pZyfQCimJvkV0Bvn5WZhINWU5pLpY1pwAq0na9HVp10ufYlrPjIf
	lXA2rpxbPDrMdf4ualYCWq4WTAWR7mjSbr6L405oc71r+HY1QsFx3fytM0/HgQpgYuB2nndo+7lcK
	ZcIDEMMSFH3gZ5zDee4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os7lO-00008c-GM; Mon, 07 Nov 2022 19:26:30 +0000
Received: from mga09.intel.com ([134.134.136.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os7l9-00Hb12-Tk; Mon, 07 Nov 2022 19:26:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667849175; x=1699385175;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=pLqm1QgEZZjJt/2JM8FqPTfV0l2zyKImmtAMSKtBXaE=;
  b=Z9N7e8QaxlrlziglJt5/ggjtom1HnUlQGYFPk6hlMTU4JpNAIYjzuN4m
   3yFMTEj+WWFw0YlP3ntovwfvQWO7H06SZRAThRUd6c3VfLuu9AI5n+Cz9
   edZY4Zo1DWRMSdLMfv6B+rhBgNCAftK734CVjQNWQ2Z4nWJCoIUMD/abn
   5zzhwqhgVf7XB/OoIdTW7ctQSGjOdmVpTZRKdaLb4X1oNGEsM8EtiYruh
   C4bfJJlDGdmKADkLBQ/qJw5Eyv+dm0RKi0q/kav3H9YsSkOdfbVrTvp20
   yKg9mMKxwod0o4hMQ//6Lif4A7O0F7wsL3Md/NijXQCXJd0xVVz/0DhLU
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="311656516"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; 
   d="scan'208";a="311656516"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Nov 2022 11:26:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="705009825"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; 
   d="scan'208";a="705009825"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
  by fmsmga004.fm.intel.com with SMTP; 07 Nov 2022 11:26:09 -0800
Received: by stinkbox (sSMTP sendmail emulation); Mon, 07 Nov 2022 21:26:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 6/7] drm/rockchip: Use drm_mode_copy()
Date: Mon,  7 Nov 2022 21:25:44 +0200
Message-Id: <20221107192545.9896-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221107192545.9896-1-ville.syrjala@linux.intel.com>
References: <20221107192545.9896-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_112616_034694_567F4E8B 
X-CRM114-Status: GOOD (  18.99  )
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
Y29yZS5jCmluZGV4IDUxOGVlMTNiMWQ2Zi4uODUyNmRkYTkxOTMxIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvY2RuLWRwLWNvcmUuYwpAQCAtNTcxLDcgKzU3MSw3IEBAIHN0YXRpYyB2b2lkIGNk
bl9kcF9lbmNvZGVyX21vZGVfc2V0KHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlciwKIAl2aWRl
by0+dl9zeW5jX3BvbGFyaXR5ID0gISEobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX05WU1lO
Qyk7CiAJdmlkZW8tPmhfc3luY19wb2xhcml0eSA9ICEhKG1vZGUtPmZsYWdzICYgRFJNX01PREVf
RkxBR19OSFNZTkMpOwogCi0JbWVtY3B5KCZkcC0+bW9kZSwgYWRqdXN0ZWQsIHNpemVvZigqbW9k
ZSkpOworCWRybV9tb2RlX2NvcHkoJmRwLT5tb2RlLCBhZGp1c3RlZCk7CiB9CiAKIHN0YXRpYyBi
b29sIGNkbl9kcF9jaGVja19saW5rX3N0YXR1cyhzdHJ1Y3QgY2RuX2RwX2RldmljZSAqZHApCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMgYi9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMKaW5kZXggODdiMjI0M2VhMjNlLi5mNTE3NzQ4
NjZmNDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMKQEAgLTQ5OSw3ICs0OTks
NyBAQCBzdGF0aWMgdm9pZCBpbm5vX2hkbWlfZW5jb2Rlcl9tb2RlX3NldChzdHJ1Y3QgZHJtX2Vu
Y29kZXIgKmVuY29kZXIsCiAJaW5ub19oZG1pX3NldHVwKGhkbWksIGFkal9tb2RlKTsKIAogCS8q
IFN0b3JlIHRoZSBkaXNwbGF5IG1vZGUgZm9yIHBsdWdpbi9EUE1TIHBvd2Vyb24gZXZlbnRzICov
Ci0JbWVtY3B5KCZoZG1pLT5wcmV2aW91c19tb2RlLCBhZGpfbW9kZSwgc2l6ZW9mKGhkbWktPnBy
ZXZpb3VzX21vZGUpKTsKKwlkcm1fbW9kZV9jb3B5KCZoZG1pLT5wcmV2aW91c19tb2RlLCBhZGpf
bW9kZSk7CiB9CiAKIHN0YXRpYyB2b2lkIGlubm9faGRtaV9lbmNvZGVyX2VuYWJsZShzdHJ1Y3Qg
ZHJtX2VuY29kZXIgKmVuY29kZXIpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcmszMDY2X2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZfaGRtaS5j
CmluZGV4IGNmMmNmNTEwOTFhMy4uOTAxNDVhZDk2OTg0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcmszMDY2X2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcmszMDY2X2hkbWkuYwpAQCAtMzk1LDcgKzM5NSw3IEBAIHJrMzA2Nl9oZG1pX2VuY29kZXJf
bW9kZV9zZXQoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyLAogCXN0cnVjdCByazMwNjZfaGRt
aSAqaGRtaSA9IGVuY29kZXJfdG9fcmszMDY2X2hkbWkoZW5jb2Rlcik7CiAKIAkvKiBTdG9yZSB0
aGUgZGlzcGxheSBtb2RlIGZvciBwbHVnaW4vRFBNUyBwb3dlcm9uIGV2ZW50cy4gKi8KLQltZW1j
cHkoJmhkbWktPnByZXZpb3VzX21vZGUsIGFkal9tb2RlLCBzaXplb2YoaGRtaS0+cHJldmlvdXNf
bW9kZSkpOworCWRybV9tb2RlX2NvcHkoJmhkbWktPnByZXZpb3VzX21vZGUsIGFkal9tb2RlKTsK
IH0KIAogc3RhdGljIHZvaWQgcmszMDY2X2hkbWlfZW5jb2Rlcl9lbmFibGUoc3RydWN0IGRybV9l
bmNvZGVyICplbmNvZGVyKQotLSAKMi4zNy40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
