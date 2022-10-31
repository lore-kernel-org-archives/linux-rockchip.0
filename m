Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C761ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 15:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3088G9LGlLEyoK/qxATYQDBSJHT8nLq2zA6a+MVVne4=; b=NaN68ZiltDtGt/
	HOhvyuWjtPABBPSov6M8PnwNDkeZHLWXlcwf/SnqtIAfM/N7OpIWzgbogjYkwd/oWuq+PRnZm0UaN
	4hyIvis9GesTOB09t4xAmeoKRtYiy/EKhp7h4G4qkJ5OVl5yviURv1AfsoXhtFxMukFXPEVniyRTg
	qpLb75aEJgfNiRFipYCr5RhtNYXI/Ba2IjMSDxNkRoXZ1aK48ATdI9FApMIKbRP5WbvImF1f7qECq
	WGGSndsSXKeBj4yw2/D1tSUJzan5P48pAsZlTH4Plk4maAN9RtdgPvxhfetsrC12tgf78YfaXPWiS
	GrskYhmL3cLABeagGzhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opX36-00ClGA-SQ; Mon, 31 Oct 2022 15:50:04 +0000
Received: from mga12.intel.com ([192.55.52.136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opX31-00Ckya-6U
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 15:50:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667231399; x=1698767399;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Fql4FZO7uX5rRWQgwds/n4gQKmqe/m9nuV8VPMYmhOc=;
  b=natOvrZva3/J+R9qKhNpWgGd+1iHSGp+GEhRE4yR1rBCDL+AquGuZf6X
   /X4w6XB8EVSWsLwhVluFlrppuc3R9lIbqQKbk4g7YcFxaW95vas/ukATC
   Ex5SPRL5GmTqGFR7rvc3oqGC3xx5sP6PMuJl5ZQpGuGie5b1wK2TuLHEd
   nMM1f8xLezd0+m7N7acSNQuMK98fVqz255+TYIHZZVktSk5nK4+UCjUzB
   FZDDJYE9o7umD++X6Lk3pA1mbST7r4nmJRU5Dm7tCXwYY8iYehIqDt54h
   /hj11LUqJCY7KnAbpU+CvmOViYU4fTYQMNR7VB/Q6IZirF+5Q4dWitDmK
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="288645157"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="288645157"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2022 08:49:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="776178958"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="776178958"
Received: from crojewsk-ctrl.igk.intel.com ([10.102.9.28])
  by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2022 08:49:55 -0700
From: Cezary Rojewski <cezary.rojewski@intel.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org
Cc: tiwai@suse.com,
	perex@perex.cz,
	amadeuszx.slawinski@linux.intel.com,
	pierre-louis.bossart@linux.intel.com,
	hdegoede@redhat.com,
	lgirdwood@gmail.com,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	Syed.SabaKareem@amd.com,
	Vijendar.Mukunda@amd.com,
	AjitKumar.Pandey@amd.com,
	jiaxin.yu@mediatek.com,
	trevor.wu@mediatek.com,
	Cezary Rojewski <cezary.rojewski@intel.com>
Subject: [PATCH 7/7] ASoC: codecs: da7219: Do not export internal symbols
Date: Mon, 31 Oct 2022 17:02:27 +0100
Message-Id: <20221031160227.2352630-8-cezary.rojewski@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031160227.2352630-1-cezary.rojewski@intel.com>
References: <20221031160227.2352630-1-cezary.rojewski@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_084959_285663_497F9FBC 
X-CRM114-Status: UNSURE (   9.32  )
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

RnJvbTogQW1hZGV1c3ogU8WCYXdpxYRza2kgPGFtYWRldXN6eC5zbGF3aW5za2lAbGludXguaW50
ZWwuY29tPgoKV2l0aCBhbGwgdXNlcnMgdXRpbGl6aW5nIGNvbXBvbmVudC0+c2V0X2phY2soKSwg
dGhlcmUgaXMgbm8gbmVlZCB0bwpleHBvcnQgZGE3MjE5X2FhZF9qYWNrX2RldCgpIGZ1bmN0aW9u
LgoKV2hpbGUgYXQgaXQsIHJlbW92ZSBleHBvcnRzIGZyb20gYWxsIG90aGVyIGZ1bmN0aW9ucyBh
cyB3ZWxsLgoKU2lnbmVkLW9mZi1ieTogQW1hZGV1c3ogU8WCYXdpxYRza2kgPGFtYWRldXN6eC5z
bGF3aW5za2lAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDZXphcnkgUm9qZXdza2kg
PGNlemFyeS5yb2pld3NraUBpbnRlbC5jb20+Ci0tLQogc291bmQvc29jL2NvZGVjcy9kYTcyMTkt
YWFkLmMgfCA0IC0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL3NvdW5kL3NvYy9jb2RlY3MvZGE3MjE5LWFhZC5jIGIvc291bmQvc29jL2NvZGVjcy9kYTcy
MTktYWFkLmMKaW5kZXggYmJhNzNjNDRjMjE5Li45YmY4ZDczYjRmNTggMTAwNjQ0Ci0tLSBhL3Nv
dW5kL3NvYy9jb2RlY3MvZGE3MjE5LWFhZC5jCisrKyBiL3NvdW5kL3NvYy9jb2RlY3MvZGE3MjE5
LWFhZC5jCkBAIC00Myw3ICs0Myw2IEBAIHZvaWQgZGE3MjE5X2FhZF9qYWNrX2RldChzdHJ1Y3Qg
c25kX3NvY19jb21wb25lbnQgKmNvbXBvbmVudCwgc3RydWN0IHNuZF9zb2NfamFjCiAJCQkgICAg
REE3MjE5X0FDQ0RFVF9FTl9NQVNLLAogCQkJICAgIChqYWNrID8gREE3MjE5X0FDQ0RFVF9FTl9N
QVNLIDogMCkpOwogfQotRVhQT1JUX1NZTUJPTF9HUEwoZGE3MjE5X2FhZF9qYWNrX2RldCk7CiAK
IC8qCiAgKiBCdXR0b24vSFBUZXN0IHdvcmsKQEAgLTkzMCw3ICs5MjksNiBAQCBpbnQgZGE3MjE5
X2FhZF9pbml0KHN0cnVjdCBzbmRfc29jX2NvbXBvbmVudCAqY29tcG9uZW50KQogCiAJcmV0dXJu
IDA7CiB9Ci1FWFBPUlRfU1lNQk9MX0dQTChkYTcyMTlfYWFkX2luaXQpOwogCiB2b2lkIGRhNzIx
OV9hYWRfZXhpdChzdHJ1Y3Qgc25kX3NvY19jb21wb25lbnQgKmNvbXBvbmVudCkKIHsKQEAgLTk0
OCw3ICs5NDYsNiBAQCB2b2lkIGRhNzIxOV9hYWRfZXhpdChzdHJ1Y3Qgc25kX3NvY19jb21wb25l
bnQgKmNvbXBvbmVudCkKIAljYW5jZWxfd29ya19zeW5jKCZkYTcyMTlfYWFkLT5idG5fZGV0X3dv
cmspOwogCWNhbmNlbF93b3JrX3N5bmMoJmRhNzIxOV9hYWQtPmhwdGVzdF93b3JrKTsKIH0KLUVY
UE9SVF9TWU1CT0xfR1BMKGRhNzIxOV9hYWRfZXhpdCk7CiAKIC8qCiAgKiBBQUQgcmVsYXRlZCBJ
MkMgcHJvYmUgaGFuZGxpbmcKQEAgLTk3Miw3ICs5NjksNiBAQCBpbnQgZGE3MjE5X2FhZF9wcm9i
ZShzdHJ1Y3QgaTJjX2NsaWVudCAqaTJjKQogCiAJcmV0dXJuIDA7CiB9Ci1FWFBPUlRfU1lNQk9M
X0dQTChkYTcyMTlfYWFkX3Byb2JlKTsKIAogTU9EVUxFX0RFU0NSSVBUSU9OKCJBU29DIERBNzIx
OSBBQUQgRHJpdmVyIik7CiBNT0RVTEVfQVVUSE9SKCJBZGFtIFRob21zb24gPEFkYW0uVGhvbXNv
bi5PcGVuc291cmNlQGRpYXNlbWkuY29tPiIpOwotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
