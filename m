Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 161E2CF6495
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Sep 2024 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmkFQSlLidmODpD1OAXz0wKumUjn3YZFvX4q+t5JyNA=; b=YFnES0Y0pXKbc7
	s6bnLg5iurahKhekgSg1zNo+OR7DC2Q/8ZRf0paKw56JuU1pArzmzboLMMxh9jkWAK/OKONLiPipT
	rp+9YaycLZsm4IfXMtyKnJPUY5RpecwBTmlNFnAeXULf0eCx362wjtgiVFLsi+SUuW80mpC6Idu6A
	y/fAR0IOn9DELJGpNBboyhuE7Z2kmDbQIqpCjkx9rOPUWdv6zi7ATn9UXgEqBEG/cYcnx46E/+O6r
	14B3y/BbvcNRGEHb2ZkGA6ZocjiwiCjvYLy2Z49XgtTrFQDLWoRvtTjIrZwTjBeDctX4mlVCK3DsU
	YNIptrxKjC9LjtuLGX3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suqZm-0000000EYsP-3lNZ;
	Sun, 29 Sep 2024 09:50:50 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suq8L-0000000EUr4-43eJ;
	Sun, 29 Sep 2024 09:22:31 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727601745;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/j3wHuSvKpQWX/VU5AEDYXLGtmoTcj7Rhg34WD2kMcg=;
	b=y9+3+3CKvpL5upo6V6D/4Cky6G8PpQHlqXP+3orSUmVwZvXkY8RBwDQL/KUoauNBOsLXTg
	f9oi0ffdcFZLnN+RkJuyFUgdX8MTmOFiA8I7MFg5ryCyKDGo+hJwaD8n0hpOGjsUMUken6
	74JMlGOYIJK6YPsRG1685xGn3l8aCShV6HuSIxeZQUBowiHPTN02bu8sZ/UCyRNyQKn+Kx
	Hw9wnvdnIzoZG7IY9deGrTAhSe7Cflz0+0kvrYQ/z6yOoDo5KtrLerr0da5xtCxrCBO0d7
	gZ14dFkNMG3tnhURhpAsQV2Nnf7p5EpFP+EvV8rIaGm2syQXi9AAPlU1c8lr3g==
To: linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org,
	heiko@sntech.de,
	gregkh@linuxfoundation.org,
	rafael@kernel.org,
	oss@helene.moe,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 5/5] spi: rockchip: Use dev_{err,warn}_probe() in the probe path
Date: Sun, 29 Sep 2024 11:21:17 +0200
Message-Id: <5b6bd142dab3ab93d7039db3e2fdcfea6bee2217.1727601608.git.dsimic@manjaro.org>
In-Reply-To: <cover.1727601608.git.dsimic@manjaro.org>
References: <cover.1727601608.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240929_022230_371106_99705481 
X-CRM114-Status: GOOD (  13.54  )
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

VXNlIGZ1bmN0aW9uIGRldl9lcnJfcHJvYmUoKSBpbiB0aGUgcHJvYmUgcGF0aCBpbnN0ZWFkIG9m
IGRldl9lcnIoKSB3aGVyZQphcHByb3ByaWF0ZSwgdG8gbWFrZSB0aGUgY29kZSBhIGJpdCBtb3Jl
IHVuaWZvcm0gYW5kIGNvbXBhY3QuICBVc2UgdGhlIG5ldwpmdW5jdGlvbiBkZXZfd2Fybl9wcm9i
ZSgpIHRvIGltcHJvdmUgZXJyb3IgaGFuZGxpbmcgZm9yIHRoZSBUWCBhbmQgUlggRE1BCmNoYW5u
ZWwgcmVxdWVzdHMsIHdoaWNoIGFyZSBhY3R1YWxseSBvcHRpb25hbCwgYW5kIHR3ZWFrIHRoZSBs
b2dnZWQgd2FybmluZ3MKYSBiaXQgdG8gYWRkaXRpb25hbGx5IGRlc2NyaWJlIHRoZWlyIG9wdGlv
bmFsIG5hdHVyZS4KClByZXZpb3VzbHksIGRlZmVycmVkIHJlcXVlc3RzIGZvciB0aGUgVFggYW5k
IFJYIERNQSBjaGFubmVscyBwcm9kdWNlZCBubwpkZWJ1ZyBtZXNzYWdlcywgYW5kIHRoZSBmaW5h
bCBlcnJvciBtZXNzYWdlcyBkaWRuJ3QgaW5jbHVkZSB0aGUgZXJyb3IgY29kZXMsCndoaWNoIGFy
ZSBhbGwgaGlnaGx5IHVzZWZ1bCB3aGVuIGRlYnVnZ2luZyBwZXJtYW5lbnRseSBmYWlsZWQgRE1B
IGNoYW5uZWwKcmVxdWVzdHMsIHN1Y2ggYXMgd2hlbiB0aGUgcmVxdWlyZWQgZHJpdmVycyBhcmVu
J3QgZW5hYmxlZC4KClN1Z2dlc3RlZC1ieTogSMOpbGVuZSBWdWxxdWluIDxvc3NAaGVsZW5lLm1v
ZT4KU2lnbmVkLW9mZi1ieTogRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+Ci0tLQog
ZHJpdmVycy9zcGkvc3BpLXJvY2tjaGlwLmMgfCAyOCArKysrKysrKysrKysrLS0tLS0tLS0tLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkvc3BpLXJvY2tjaGlwLmMgYi9kcml2ZXJzL3NwaS9zcGkt
cm9ja2NoaXAuYwppbmRleCA4MWYyYTk2NmMxMjQuLjA1NWNkNjA2NjQ2NiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9zcGkvc3BpLXJvY2tjaGlwLmMKKysrIGIvZHJpdmVycy9zcGkvc3BpLXJvY2tjaGlw
LmMKQEAgLTc3MywxNSArNzczLDE1IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfc3BpX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAKIAlycy0+YXBiX3BjbGsgPSBkZXZtX2Nsa19n
ZXRfZW5hYmxlZCgmcGRldi0+ZGV2LCAiYXBiX3BjbGsiKTsKIAlpZiAoSVNfRVJSKHJzLT5hcGJf
cGNsaykpIHsKLQkJZGV2X2VycigmcGRldi0+ZGV2LCAiRmFpbGVkIHRvIGdldCBhcGJfcGNsa1xu
Iik7Ci0JCXJldCA9IFBUUl9FUlIocnMtPmFwYl9wY2xrKTsKKwkJcmV0ID0gZGV2X2Vycl9wcm9i
ZSgmcGRldi0+ZGV2LCBQVFJfRVJSKHJzLT5hcGJfcGNsayksCisJCQkJICAgICJGYWlsZWQgdG8g
Z2V0IGFwYl9wY2xrXG4iKTsKIAkJZ290byBlcnJfcHV0X2N0bHI7CiAJfQogCiAJcnMtPnNwaWNs
ayA9IGRldm1fY2xrX2dldF9lbmFibGVkKCZwZGV2LT5kZXYsICJzcGljbGsiKTsKIAlpZiAoSVNf
RVJSKHJzLT5zcGljbGspKSB7Ci0JCWRldl9lcnIoJnBkZXYtPmRldiwgIkZhaWxlZCB0byBnZXQg
c3BpX3BjbGtcbiIpOwotCQlyZXQgPSBQVFJfRVJSKHJzLT5zcGljbGspOworCQlyZXQgPSBkZXZf
ZXJyX3Byb2JlKCZwZGV2LT5kZXYsIFBUUl9FUlIocnMtPnNwaWNsayksCisJCQkJICAgICJGYWls
ZWQgdG8gZ2V0IHNwaV9wY2xrXG4iKTsKIAkJZ290byBlcnJfcHV0X2N0bHI7CiAJfQogCkBAIC04
MTcsOCArODE3LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9zcGlfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKIAogCXJzLT5maWZvX2xlbiA9IGdldF9maWZvX2xlbihycyk7CiAJ
aWYgKCFycy0+Zmlmb19sZW4pIHsKLQkJZGV2X2VycigmcGRldi0+ZGV2LCAiRmFpbGVkIHRvIGdl
dCBmaWZvIGxlbmd0aFxuIik7Ci0JCXJldCA9IC1FSU5WQUw7CisJCXJldCA9IGRldl9lcnJfcHJv
YmUoJnBkZXYtPmRldiwgLUVJTlZBTCwgIkZhaWxlZCB0byBnZXQgZmlmbyBsZW5ndGhcbiIpOwog
CQlnb3RvIGVycl9wdXRfY3RscjsKIAl9CiAKQEAgLTg1OCwyMiArODU3LDIxIEBAIHN0YXRpYyBp
bnQgcm9ja2NoaXBfc3BpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAKIAlj
dGxyLT5kbWFfdHggPSBkbWFfcmVxdWVzdF9jaGFuKHJzLT5kZXYsICJ0eCIpOwogCWlmIChJU19F
UlIoY3Rsci0+ZG1hX3R4KSkgewotCQkvKiBDaGVjayB0eCB0byBzZWUgaWYgd2UgbmVlZCBkZWZl
ciBwcm9iaW5nIGRyaXZlciAqLwotCQlpZiAoUFRSX0VSUihjdGxyLT5kbWFfdHgpID09IC1FUFJP
QkVfREVGRVIpIHsKLQkJCXJldCA9IC1FUFJPQkVfREVGRVI7CisJCS8qIENoZWNrIHR4IHRvIHNl
ZSBpZiB3ZSBuZWVkIHRvIGRlZmVyIGRyaXZlciBwcm9iaW5nICovCisJCXJldCA9IGRldl93YXJu
X3Byb2JlKHJzLT5kZXYsIFBUUl9FUlIoY3Rsci0+ZG1hX3R4KSwKKwkJCQkgICAgICJGYWlsZWQg
dG8gcmVxdWVzdCBvcHRpb25hbCBUWCBETUEgY2hhbm5lbFxuIik7CisJCWlmIChyZXQgPT0gLUVQ
Uk9CRV9ERUZFUikKIAkJCWdvdG8gZXJyX2Rpc2FibGVfcG1fcnVudGltZTsKLQkJfQotCQlkZXZf
d2Fybihycy0+ZGV2LCAiRmFpbGVkIHRvIHJlcXVlc3QgVFggRE1BIGNoYW5uZWxcbiIpOwogCQlj
dGxyLT5kbWFfdHggPSBOVUxMOwogCX0KIAogCWN0bHItPmRtYV9yeCA9IGRtYV9yZXF1ZXN0X2No
YW4ocnMtPmRldiwgInJ4Iik7CiAJaWYgKElTX0VSUihjdGxyLT5kbWFfcngpKSB7Ci0JCWlmIChQ
VFJfRVJSKGN0bHItPmRtYV9yeCkgPT0gLUVQUk9CRV9ERUZFUikgewotCQkJcmV0ID0gLUVQUk9C
RV9ERUZFUjsKKwkJLyogQ2hlY2sgcnggdG8gc2VlIGlmIHdlIG5lZWQgdG8gZGVmZXIgZHJpdmVy
IHByb2JpbmcgKi8KKwkJcmV0ID0gZGV2X3dhcm5fcHJvYmUocnMtPmRldiwgUFRSX0VSUihjdGxy
LT5kbWFfcngpLAorCQkJCSAgICAgIkZhaWxlZCB0byByZXF1ZXN0IG9wdGlvbmFsIFJYIERNQSBj
aGFubmVsXG4iKTsKKwkJaWYgKHJldCA9PSAtRVBST0JFX0RFRkVSKQogCQkJZ290byBlcnJfZnJl
ZV9kbWFfdHg7Ci0JCX0KLQkJZGV2X3dhcm4ocnMtPmRldiwgIkZhaWxlZCB0byByZXF1ZXN0IFJY
IERNQSBjaGFubmVsXG4iKTsKIAkJY3Rsci0+ZG1hX3J4ID0gTlVMTDsKIAl9CiAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
