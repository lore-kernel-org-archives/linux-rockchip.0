Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6066ACCF9E9
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 08:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIrjvcYad6nUctDw754VR5GawkSgtTpoqGn7Y/UvG88=; b=o/Sp8gBsSCGuxi
	ROukaXVyY6AirUsHg5ypyP9kiTTla7STJitTcaMhcSod/uGmnUWfn1iLADfM1w+28Z0V+YeGBNwMb
	J7KTBS7Y+eNmCZKQW5zHyzuy8lwElP50W3I3d4yOlQx8374T4AnJrr6anbNF+xaAWUWpyh3gDV0Jm
	HYaxVXP3jSUjCV7aP0XSN1lv8mVO0zuAmhMdRrMIBZE13dByJqtZj6mM0M3L80jg5pzrtwZAh1X8N
	4er9fYVDEvsne0TVN/sTL/FlSmg9M91fBf6CKnUHS5j6yx4us5b96QdqVtO9dM01sL6LxCYkBblu/
	BMlJ4PQEAXohaY+Pkw6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stkKV-00000007mis-3vhh;
	Thu, 26 Sep 2024 08:58:31 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stk16-00000007iGp-40ea;
	Thu, 26 Sep 2024 08:38:30 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727339907;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8DgRQOFCytjI9FkTJ+0ouOWyTm9ikdd+11U8xTNi5DM=;
	b=mk9/5BNbLd8di80h3Sj4QuyCqmD58BFew1dpSOO93UBPKQWUMJldotxP+aBSqEac4q6FpN
	capubeEq8cs5yCcU/nHPdPu6gLT9c4kgIXLT4fXyGNair8+UMfshd6HsnlyLzUIADF/mc0
	xjtZfowXp9IejsxfH4ihCw0TZlbjbLaZNsjJs/0WBHifN4zj8NK1oYGeJwH6WD6+CHANMk
	6Ho0uvNONEloVtAQVQej4lYKQwBitmY/h9a2woSiv/GfFgn/wVLGud0ZSblDAa9dgdNvPB
	xyyt5ul/Qj0I1fWCwQ1t9d9LmH6zgC9ZuDtKUqe48otBXkdelBiXAx+PEXhXiw==
To: linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org,
	heiko@sntech.de,
	oss@helene.moe,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] spi: rockchip: Use dev_err_probe() in the probe path
Date: Thu, 26 Sep 2024 10:38:15 +0200
Message-Id: <8bc905ff3c47ed458d8c65a031822ba6b9df8a07.1727337732.git.dsimic@manjaro.org>
In-Reply-To: <cover.1727337732.git.dsimic@manjaro.org>
References: <cover.1727337732.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_013829_360632_F2990514 
X-CRM114-Status: GOOD (  12.80  )
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
IHVuaWZvcm0gYW5kIGNvbXBhY3QsIGFuZCB0byBpbXByb3ZlCmVycm9yIGhhbmRsaW5nIGZvciB0
aGUgVFggYW5kIFJYIERNQSBjaGFubmVsIHJlcXVlc3RzLgoKUHJldmlvdXNseSwgZGVmZXJyZWQg
cmVxdWVzdHMgZm9yIHRoZSBUWCBhbmQgUlggRE1BIGNoYW5uZWxzIHByb2R1Y2VkIG5vCmRlYnVn
IG1lc3NhZ2VzLCBhbmQgdGhlIGZpbmFsIGVycm9yIG1lc3NhZ2VzIGRpZG4ndCBpbmNsdWRlIHRo
ZSBlcnJvciBjb2RlcywKd2hpY2ggYXJlIGFsbCBoaWdobHkgdXNlZnVsIHdoZW4gZGVidWdnaW5n
IHBlcm1hbmVudGx5IGZhaWxlZCBETUEgY2hhbm5lbApyZXF1ZXN0cywgc3VjaCBhcyB3aGVuIHRo
ZSByZXF1aXJlZCBkcml2ZXJzIGFyZW4ndCBlbmFibGVkLgoKU3VnZ2VzdGVkLWJ5OiBIw6lsZW5l
IFZ1bHF1aW4gPG9zc0BoZWxlbmUubW9lPgpTaWduZWQtb2ZmLWJ5OiBEcmFnYW4gU2ltaWMgPGRz
aW1pY0BtYW5qYXJvLm9yZz4KLS0tCiBkcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAuYyB8IDI1ICsr
KysrKysrKysrKy0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCsp
LCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAu
YyBiL2RyaXZlcnMvc3BpL3NwaS1yb2NrY2hpcC5jCmluZGV4IDI4ODc5ZmVkMDNmOC4uNmI1YzY3
YTM1N2JiIDEwMDY0NAotLS0gYS9kcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAuYworKysgYi9kcml2
ZXJzL3NwaS9zcGktcm9ja2NoaXAuYwpAQCAtNzczLDE1ICs3NzMsMTUgQEAgc3RhdGljIGludCBy
b2NrY2hpcF9zcGlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAogCXJzLT5h
cGJfcGNsayA9IGRldm1fY2xrX2dldF9lbmFibGVkKCZwZGV2LT5kZXYsICJhcGJfcGNsayIpOwog
CWlmIChJU19FUlIocnMtPmFwYl9wY2xrKSkgewotCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJGYWls
ZWQgdG8gZ2V0IGFwYl9wY2xrXG4iKTsKLQkJcmV0ID0gUFRSX0VSUihycy0+YXBiX3BjbGspOwor
CQlyZXQgPSBkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIFBUUl9FUlIocnMtPmFwYl9wY2xrKSwK
KwkJCQkgICAgIkZhaWxlZCB0byBnZXQgYXBiX3BjbGtcbiIpOwogCQlnb3RvIGVycl9wdXRfY3Rs
cjsKIAl9CiAKIAlycy0+c3BpY2xrID0gZGV2bV9jbGtfZ2V0X2VuYWJsZWQoJnBkZXYtPmRldiwg
InNwaWNsayIpOwogCWlmIChJU19FUlIocnMtPnNwaWNsaykpIHsKLQkJZGV2X2VycigmcGRldi0+
ZGV2LCAiRmFpbGVkIHRvIGdldCBzcGlfcGNsa1xuIik7Ci0JCXJldCA9IFBUUl9FUlIocnMtPnNw
aWNsayk7CisJCXJldCA9IGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgUFRSX0VSUihycy0+c3Bp
Y2xrKSwKKwkJCQkgICAgIkZhaWxlZCB0byBnZXQgc3BpX3BjbGtcbiIpOwogCQlnb3RvIGVycl9w
dXRfY3RscjsKIAl9CiAKQEAgLTg1MywyMiArODUzLDIxIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBf
c3BpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAKIAljdGxyLT5kbWFfdHgg
PSBkbWFfcmVxdWVzdF9jaGFuKHJzLT5kZXYsICJ0eCIpOwogCWlmIChJU19FUlIoY3Rsci0+ZG1h
X3R4KSkgewotCQkvKiBDaGVjayB0eCB0byBzZWUgaWYgd2UgbmVlZCBkZWZlciBwcm9iaW5nIGRy
aXZlciAqLwotCQlpZiAoUFRSX0VSUihjdGxyLT5kbWFfdHgpID09IC1FUFJPQkVfREVGRVIpIHsK
LQkJCXJldCA9IC1FUFJPQkVfREVGRVI7CisJCS8qIENoZWNrIHR4IHRvIHNlZSBpZiB3ZSBuZWVk
IHRvIGRlZmVyIGRyaXZlciBwcm9iaW5nICovCisJCXJldCA9IGRldl9lcnJfcHJvYmUocnMtPmRl
diwgUFRSX0VSUihjdGxyLT5kbWFfdHgpLAorCQkJCSAgICAiRmFpbGVkIHRvIHJlcXVlc3QgVFgg
RE1BIGNoYW5uZWxcbiIpOworCQlpZiAocmV0ID09IC1FUFJPQkVfREVGRVIpCiAJCQlnb3RvIGVy
cl9kaXNhYmxlX3BtX3J1bnRpbWU7Ci0JCX0KLQkJZGV2X3dhcm4ocnMtPmRldiwgIkZhaWxlZCB0
byByZXF1ZXN0IFRYIERNQSBjaGFubmVsXG4iKTsKIAkJY3Rsci0+ZG1hX3R4ID0gTlVMTDsKIAl9
CiAKIAljdGxyLT5kbWFfcnggPSBkbWFfcmVxdWVzdF9jaGFuKHJzLT5kZXYsICJyeCIpOwogCWlm
IChJU19FUlIoY3Rsci0+ZG1hX3J4KSkgewotCQlpZiAoUFRSX0VSUihjdGxyLT5kbWFfcngpID09
IC1FUFJPQkVfREVGRVIpIHsKLQkJCXJldCA9IC1FUFJPQkVfREVGRVI7CisJCS8qIENoZWNrIHJ4
IHRvIHNlZSBpZiB3ZSBuZWVkIHRvIGRlZmVyIGRyaXZlciBwcm9iaW5nICovCisJCXJldCA9IGRl
dl9lcnJfcHJvYmUocnMtPmRldiwgUFRSX0VSUihjdGxyLT5kbWFfcngpLAorCQkJCSAgICAiRmFp
bGVkIHRvIHJlcXVlc3QgUlggRE1BIGNoYW5uZWxcbiIpOworCQlpZiAocmV0ID09IC1FUFJPQkVf
REVGRVIpCiAJCQlnb3RvIGVycl9mcmVlX2RtYV90eDsKLQkJfQotCQlkZXZfd2Fybihycy0+ZGV2
LCAiRmFpbGVkIHRvIHJlcXVlc3QgUlggRE1BIGNoYW5uZWxcbiIpOwogCQljdGxyLT5kbWFfcngg
PSBOVUxMOwogCX0KIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
