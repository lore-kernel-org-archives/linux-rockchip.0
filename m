Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2300BC54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Mar 2024 07:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qB+UR8Z/j/FctX2mBErpL0LVRRw7pjWprdD5CTipovk=; b=ANyBWyAo8Yvkfx
	xD8d1MMxx3gsy2oPlU1NoXbYbW9w1CbsxpH/LhagHcPbQ+/rJCCFb0VsClPd19f5TCKAWczwdj2sQ
	Pqgu3A5a5AdG0Jn5h10HgbQ0K4moZztp+DLTl4h2I7K6jVVJIzBFyJTVShPMQ2RcdRHQFpqdlOA+o
	6ygExuBRrTNJImbnCFTaxM+KRWhcJySFuZFS6CzR2LtU+v5c+U/x0WzLichDNYqGjWjwqGCVrpCSs
	BugQbricpJDZmzb0tcXV8jr/RmvWRzipyaAV8jcfxTKfuzP9Lp7WhoBezQRkyv857HoBsRolayjlu
	xiTwPyPy50MqH6dPg6Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmqpl-0000000G2Q7-1Qjp;
	Wed, 20 Mar 2024 07:58:01 +0000
Received: from mail-m12826.netease.com ([103.209.128.26])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmqph-0000000G2OC-2341
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Mar 2024 07:57:59 +0000
DKIM-Signature: a=rsa-sha256;
	b=JXmFVmY3pJ7ay5wWEFdlg4qq9KCN8M8trnYGl/FGZjynEj2V9Jak1iktuhj9Kd2W1s3OYibH+kmfPn2u9Silu3BByRddOqGpl6zUmQJ4umQwfHLHA0vXQ628nhTeWFbWdedCEcfqRBUvaqLWeTnw/OFHD2Eg2ufpc0oXQHKgm4I=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=qp7FxtBJ13h9qV/LIdT3GToay8FJ/9N/3OEqFDnP0lE=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 40F677E0497;
	Wed, 20 Mar 2024 15:57:19 +0800 (CST)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: ye.zhang@rock-chips.com,
	finley.xiao@rock-chips.com,
	heiko@sntech.de,
	daniel.lezcano@linaro.org,
	rui.zhang@intel.com,
	lukasz.luba@arm.com,
	rafael@kernel.org
Cc: tao.huang@rock-chips.com,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] thermal: devfreq_cooling: Fix perf state when calculate dfc res_util
Date: Wed, 20 Mar 2024 15:57:04 +0800
Message-Id: <20240320075704.1924897-1-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh1ITFYfGUNOHkwZShoaHkJVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSUxOVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8e5add5a4309cfkunm40f677e0497
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PjY6Fgw4PzMPSxEQTxYNNwkJ
	UU8aC0tVSlVKTEpLQklKT09LSEJJVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUtDSzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_005758_277625_9C0E2F44 
X-CRM114-Status: UNSURE (   8.57  )
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

VGhlIEVNIHBvd2VyIHRhYmxlIGlzIHNvcnRlZCBhc2NlbmRpbmfvvIxjYW4ndCBpbmRleCB0aGUg
dGFibGUgYnkgY29vbGluZwpkZXZpY2Ugc3RhdGXvvIxzbyBjb252ZXJ0IGNvb2xpbmcgc3RhdGUg
dG8gcGVyZm9ybWFuY2Ugc3RhdGUgYnkKZGZjLT5tYXhfc3RhdGUgLSBkZmMtPmNhcHBlZF9zdGF0
ZS4KClNpZ25lZC1vZmYtYnk6IFllIFpoYW5nIDx5ZS56aGFuZ0Byb2NrLWNoaXBzLmNvbT4KLS0t
CiBkcml2ZXJzL3RoZXJtYWwvZGV2ZnJlcV9jb29saW5nLmMgfCAyICstCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3Ro
ZXJtYWwvZGV2ZnJlcV9jb29saW5nLmMgYi9kcml2ZXJzL3RoZXJtYWwvZGV2ZnJlcV9jb29saW5n
LmMKaW5kZXggNTBkZWMyNGU5NjdhLi44ZmQ3Y2YxOTMyY2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
dGhlcm1hbC9kZXZmcmVxX2Nvb2xpbmcuYworKysgYi9kcml2ZXJzL3RoZXJtYWwvZGV2ZnJlcV9j
b29saW5nLmMKQEAgLTIxNCw3ICsyMTQsNyBAQCBzdGF0aWMgaW50IGRldmZyZXFfY29vbGluZ19n
ZXRfcmVxdWVzdGVkX3Bvd2VyKHN0cnVjdCB0aGVybWFsX2Nvb2xpbmdfZGV2aWNlICpjZAogCiAJ
CXJlcyA9IGRmYy0+cG93ZXJfb3BzLT5nZXRfcmVhbF9wb3dlcihkZiwgcG93ZXIsIGZyZXEsIHZv
bHRhZ2UpOwogCQlpZiAoIXJlcykgewotCQkJc3RhdGUgPSBkZmMtPmNhcHBlZF9zdGF0ZTsKKwkJ
CXN0YXRlID0gZGZjLT5tYXhfc3RhdGUgLSBkZmMtPmNhcHBlZF9zdGF0ZTsKIAogCQkJLyogQ29u
dmVydCBFTSBwb3dlciBpbnRvIG1pbGxpLVdhdHRzIGZpcnN0ICovCiAJCQlyY3VfcmVhZF9sb2Nr
KCk7Ci0tIAoyLjM0LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
