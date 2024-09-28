Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD5B9CF649A
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Sep 2024 04:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmkFQSlLidmODpD1OAXz0wKumUjn3YZFvX4q+t5JyNA=; b=RLQNnNUcDL7ch8
	YtzOxKTjNzsDjR+sA4gFFWqxXSEYst9EceGQ/sf2mujUqP8aTbqlT9yGh+qBkSPVzaVaLbCMy+qbt
	3dlidbtiDqgmB49P1I2Moka8xHTHC2mTmRopKGpGXCpsZW/rWySvv3Kz/rUzyLkDB/PW6Zo/tqOVJ
	YsmGXR7U7W/CqHj+PJ8HjYhAI8TJ70PZiDEIVS5wm64QdaG+rlYgXnDb8d+o1FL5/+aUP7zwZl1zP
	N3MTwu3v6ywVK75GnMKzMGkEFACWoJhtEqhmSGIN5AevPhgIM/IgUHuJILilRHCsbFJdNjwPVVmSx
	vIrpC54gp33s7OtgsaFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suOwG-0000000CaUN-3T4C;
	Sat, 28 Sep 2024 04:20:12 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suOpN-0000000CZcv-3KmW;
	Sat, 28 Sep 2024 04:13:07 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727496781;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/j3wHuSvKpQWX/VU5AEDYXLGtmoTcj7Rhg34WD2kMcg=;
	b=dGdOAyY2RpRJ/zO5zBPDSKb+SEjR9m2ong/UfCBAPqC3XoUki1n9i3k5oNsBnqVvNxLFJ6
	57ju1SsECm5VXqR3TjmEqIRCZs2FOR0Fjo7u7E/QO4VcVUfaISg5a77WD73kFUMGkIJ996
	xO+bGaU883XhiKl+t60UvIQQYvGBYWsGF8Axpg8URy9d4m7gtNP53SORnpQuCuqHVdFDQz
	FUUgr9wSfjtukAq1vs/VIV5n1g9NE45GLf9FsPcWQ2BRMhPM4xIQXrwrCbN37krgFT49dB
	q4RIe9D3/ecNUgJpEoDbgXzC3lWiDQf8H96OyvTzASWNj51I27gVwd6RiAk5SQ==
To: linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org,
	heiko@sntech.de,
	gregkh@linuxfoundation.org,
	rafael@kernel.org,
	oss@helene.moe,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/5] spi: rockchip: Use dev_{err,warn}_probe() in the probe path
Date: Sat, 28 Sep 2024 06:12:49 +0200
Message-Id: <b42b681563a75693f7d6bf0a36c8f8db6ba2cc1c.1727496560.git.dsimic@manjaro.org>
In-Reply-To: <cover.1727496560.git.dsimic@manjaro.org>
References: <cover.1727496560.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_211306_179469_CF2C63BF 
X-CRM114-Status: GOOD (  13.59  )
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
