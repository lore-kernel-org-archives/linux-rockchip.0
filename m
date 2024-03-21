Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD82DC54E58
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 10:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KAWhMqGzO+XWjFL/A6jZLACYFwIOvYJEgMoOFaeiIig=; b=HSxSrWseV6Pj1c
	W5R5mU+bGNGldIB2CHKXbRPBnbNG6tvouUEg6fNB8/EVmiBoHdQSEOuOJPtO+uBToJUHya6UQIrLj
	PMGcLcWgNDZylCltM9+HZPkbTDUAWcYgoHxyxoBU9U//siBfwqm+iXm3BuYBi0e43R1I7xGldHgqP
	Nd4Yktw/PKxp8N6BxJWL6mXzUpKjsuy7LH6DjnZ7EPxk9sQldNB4E4vhLmYe57zfvLDElhQ/+M7bN
	YRhnZWidhZj3c9vPIh/0FRrNyy3BrJr4kNRpw3qZzeKWebSFuBoN2tiQA3S6esQrtXzulnHpQ+RFJ
	ZoLCDlwn7hrqsPvN0MVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnFYK-00000002cd1-3DV2;
	Thu, 21 Mar 2024 10:21:40 +0000
Received: from mail-m155116.qiye.163.com ([101.71.155.116])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnFYF-00000002cc1-2j8j
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Mar 2024 10:21:39 +0000
DKIM-Signature: a=rsa-sha256;
	b=FLvH+Y2h76AlDPjOD9msC4pT2xE4BWTFOguXgNsDgjOA9zfDgm9rtxIFllbE3G/ylIra5kBR+bVFpYUpYYimNX1hSCOjOYl4mF6F3mq7ysdonnY3l2mlGClPUuwb0PGatTcRH269fp6X1Bk6vXcYYht/S7zwiEvgbrxRFTn6APY=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=ktnsnF64wj/H5bwoeAclYjmtYjAzqxy2pnWppwBZrP8=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id C897B7E033F;
	Thu, 21 Mar 2024 18:21:02 +0800 (CST)
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
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH v2] thermal: devfreq_cooling: Fix perf state when calculate dfc res_util
Date: Thu, 21 Mar 2024 18:21:00 +0800
Message-Id: <20240321102100.2401340-1-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh4fGlYZQkoeSkwZQ00aTUJVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5DTUtIVUpLS1VKQl
	kG
X-HM-Tid: 0a8e60874c5309cfkunmc897b7e033f
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PC46Fxw*ITMKEhVNMgIJITYd
	NiJPCR9VSlVKTEpKS0pNT01IQ0xMVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSU9PSTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_032136_207296_D7B51EF4 
X-CRM114-Status: GOOD (  10.32  )
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

VGhlIGlzc3VlIG9jY3VycyB3aGVuIHRoZSBkZXZmcmVxIGNvb2xpbmcgZGV2aWNlIHVzZXMgdGhl
IEVNIHBvd2VyIG1vZGVsCmFuZCB0aGUgZ2V0X3JlYWxfcG93ZXIoKSBjYWxsYmFjayBpcyBwcm92
aWRlZCBieSB0aGUgZHJpdmVyLgoKVGhlIEVNIHBvd2VyIHRhYmxlIGlzIHNvcnRlZCBhc2NlbmRp
bmfvvIxjYW4ndCBpbmRleCB0aGUgdGFibGUgYnkgY29vbGluZwpkZXZpY2Ugc3RhdGXvvIxzbyBj
b252ZXJ0IGNvb2xpbmcgc3RhdGUgdG8gcGVyZm9ybWFuY2Ugc3RhdGUgYnkKZGZjLT5tYXhfc3Rh
dGUgLSBkZmMtPmNhcHBlZF9zdGF0ZS4KCkZpeGVzOiA2MTU1MTBmZTEzYmQgKCJ0aGVybWFsOiBk
ZXZmcmVxX2Nvb2xpbmc6IHJlbW92ZSBvbGQgcG93ZXIgbW9kZWwgYW5kIHVzZSBFTSIpCkNjOiA1
LjExKyA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyA1LjExKwpTaWduZWQtb2ZmLWJ5OiBZZSBa
aGFuZyA8eWUuemhhbmdAcm9jay1jaGlwcy5jb20+Ci0tLQp2MSAtPiB2MjoKICAtIFVwZGF0ZSB0
aGUgY29tbWl0IG1lc3NhZ2UuCgogZHJpdmVycy90aGVybWFsL2RldmZyZXFfY29vbGluZy5jIHwg
MiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL2RldmZyZXFfY29vbGluZy5jIGIvZHJpdmVycy90aGVy
bWFsL2RldmZyZXFfY29vbGluZy5jCmluZGV4IDUwZGVjMjRlOTY3YS4uOGZkN2NmMTkzMmNkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL3RoZXJtYWwvZGV2ZnJlcV9jb29saW5nLmMKKysrIGIvZHJpdmVy
cy90aGVybWFsL2RldmZyZXFfY29vbGluZy5jCkBAIC0yMTQsNyArMjE0LDcgQEAgc3RhdGljIGlu
dCBkZXZmcmVxX2Nvb2xpbmdfZ2V0X3JlcXVlc3RlZF9wb3dlcihzdHJ1Y3QgdGhlcm1hbF9jb29s
aW5nX2RldmljZSAqY2QKIAogCQlyZXMgPSBkZmMtPnBvd2VyX29wcy0+Z2V0X3JlYWxfcG93ZXIo
ZGYsIHBvd2VyLCBmcmVxLCB2b2x0YWdlKTsKIAkJaWYgKCFyZXMpIHsKLQkJCXN0YXRlID0gZGZj
LT5jYXBwZWRfc3RhdGU7CisJCQlzdGF0ZSA9IGRmYy0+bWF4X3N0YXRlIC0gZGZjLT5jYXBwZWRf
c3RhdGU7CiAKIAkJCS8qIENvbnZlcnQgRU0gcG93ZXIgaW50byBtaWxsaS1XYXR0cyBmaXJzdCAq
LwogCQkJcmN1X3JlYWRfbG9jaygpOwotLSAKMi4zNC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
