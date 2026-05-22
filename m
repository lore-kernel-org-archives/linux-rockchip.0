Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BB8CCD5BAB
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 02:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/SUgsBrlFtDusli9HbIWkL9XlvfoC779/+2laCnHglc=; b=VoJZXwzYzPoEZs
	lx+bqE4lng55gNkvW7dnfhRdGbPSoknUcNnWTCvlfrXCzLRtOjMr8FewW4M9OCzbeI1DCplnOLK/P
	+of4lDllFaFiWkBuwNZnMpokfM3+g1tT7PZFM1oQ12XCmDX/q+nnU1Jc0xbcrwTqqxN+Dd2M09IV2
	tCVp53PEIUI05HbQ2tPoVWuEXpIy9ec2B5ZIfHZpNb+geE33obE3PC7iFwc2HxYhhJmZQu2HEJgQ5
	PBmNJSd4nrG78gPZ9as7uYDfJ/xu2VZ3COAwnzL4Y0PYUABaaAHolKDcJ33tVviXcAPS9XXhqYYFZ
	p5vM3CB9rwHLSmtP46qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQFeX-00000009Yu4-0EVb;
	Fri, 22 May 2026 02:30:21 +0000
Received: from mail-dl1-x1229.google.com ([2607:f8b0:4864:20::1229])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQFeU-00000009YtB-2WfS
	for linux-rockchip@lists.infradead.org;
	Fri, 22 May 2026 02:30:19 +0000
Received: by mail-dl1-x1229.google.com with SMTP id a92af1059eb24-12ddbe104ccso4986723c88.0
        for <linux-rockchip@lists.infradead.org>; Thu, 21 May 2026 19:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779417017; x=1780021817; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7P3tHPmrG3wLPqmsJl2HC3o69eg3JUch5W4/s30Hz1E=;
        b=oMJgMwPMS5cAoLnQ3sC1RLaXlk1nSlG2/3b7aomF7LVnyYOjxM6XRYGAuRxX40JcNQ
         tXS2Cj2SGbWZsiJ3l76H8tZz84IoB45B5xeoUs9uqwe7ObUBE9wpVbDEkNvKXU5Li3MP
         n9JQCeG/7RpcJeOSj5v9gk59trKDQggHV1XRY8S9SV/xH4puq0rUwCYYwyRQW8+TjPTJ
         Mo9P1EDdIJKxfoop/pTTaDPh5YuiGMWSzZeZo1/7OuToICgH7JVfR5BSImGq1W2yJVbQ
         lZS1/KvFCC0g5W21LhwS826rRGc3EKsOItjb4zILu/sVtDKQE4MZuSHNlEDEbgCWs6+R
         nfTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779417017; x=1780021817;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7P3tHPmrG3wLPqmsJl2HC3o69eg3JUch5W4/s30Hz1E=;
        b=YJDJkBEto5BHCwHIHeOG3Gr76INt3aqSkdnn2VULcz3+TpJiAVX2kVQFHjtwJJdt/I
         htW90FNdnrH1zg7MYFC0bU0P0hLNeRKHRu0VUhPTi2Cn09WfvDU6LrzFlTDJyVFRqetT
         xcjiqtT9QrvFfBJ1Xq5xDzQjCEod/VIE7PiZcKy2RSxESqX2w9omOYCoaxTP28U2RQEv
         EQABcm+B0E+7PxKmzXQEdcpzGFYB0yWWuyV1Jlb1Qnv3cLLEqtQtD5fdvg57HR+Z1NY9
         fiRoYxpmc11sk1T9YV1uhpgDRsGZRbn5DoIbKfwUfmso193MjXzQ0SK2lNoGnhZo380G
         1tmQ==
X-Forwarded-Encrypted: i=1; AFNElJ9hb9maBMLNlja5wu916TUxUjszIoJpK5c1NxAqwJgTk8kJClK95CShVpEcjsnZpuxnR8rx30KvUlLVytYyzA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzfMryHjwgjiphIj1JSaxnEQfVjjdSOBvnGAHIGWlfGyRVl4krG
	wPaeA/ra1c9LTDNN5VBx5jJRwWUj4YtVE3F5wXHnBtC6VfotMeS9R3EG7ohL7m/U
X-Gm-Gg: Acq92OH/Uf59CdiwnJiTdyaSUhvffmmjyvDmrfmPYCsqVo/4kwCLbo1aTCBFCi1qj9m
	bQbZ6LDNaUOBM0tb5cG3wTWtKjfWKMwhCijFIhFGtq63GSZfa6jE0EgnPmA76TJtjqSZQtkupbm
	AsTtPq55KNV8UFF1lfHRNn76qJJBNgpUGyk5pvXQo6NCeF7FHVEnPBgGNAwy90qRXNDE0cdnJbR
	EhjOz+MFBqGT2vubYEqh9P6FKdttnXeUTnHfiLKslHOGbFEpbZz32xiMPk1chbh8ZsJ0Ao++KO7
	vrXkrf7BUrpOvgBXI4GqYSttjKL39Q6bvWyRfxq41fbR7GgkamKL2VcCWjK2NB9lJzypVkMa7Qq
	9y1TpteyS2/8QWGYKYUcFaBe2jE1VfB8PFWGUzZOVCkCwK/GESlomwEkA3U308UtiMxHH4FF3Jl
	PxbjGD/ymT4uKeZX/DUgDNndYamr+xp89CrF3Ka1Nj13rwPxyJcwTPijnk1gr4jxnSXUyUlzR8G
	A==
X-Received: by 2002:a05:7022:661f:b0:135:f2aa:46da with SMTP id a92af1059eb24-1365f812eefmr696894c88.16.1779417017083;
        Thu, 21 May 2026 19:30:17 -0700 (PDT)
Received: from [192.168.1.18] (177-4-162-74.user3p.v-tal.net.br. [177.4.162.74])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13669c6a2adsm293024c88.0.2026.05.21.19.30.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 19:30:16 -0700 (PDT)
From: =?utf-8?q?C=C3=A1ssio_Gabriel?= <cassiogabrielcontato@gmail.com>
Date: Thu, 21 May 2026 23:30:07 -0300
Subject: [PATCH] ASoC: rockchip: i2s: Use managed hclk and runtime PM
 cleanup
MIME-Version: 1.0
Message-Id: <20260521-asoc-rockchip-i2s-devm-cleanup-v1-1-9319bd781393@gmail.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXNywrCMBBG4Vcps3agDaagryIu4uSvHS9NyNgil
 L67UZff5pyVDEVhdGxWKljUNE0V3a4hGcN0BWusJte6vvWu42BJuCS5y6iZ1RlHLE+WB8I0Z+4
 lRPhhf/DwVCO5YND3b3A6/23z5QZ5fau0bR/FocZRggAAAA==
X-Change-ID: 20260521-asoc-rockchip-i2s-devm-cleanup-6cade5f495e5
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?C=C3=A1ssio_Gabriel?= <cassiogabrielcontato@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5256;
 i=cassiogabrielcontato@gmail.com; h=from:subject:message-id;
 bh=TMV3OUjSiKWrVH9DS2Bb4U32yk1kAQtbOJI6PQhF/+k=;
 b=owGbwMvMwCV2IdZeKur/u2bG02pJDFn8+7c+Pl3a4dA4+WnT0pC6856eb3pTIvWsll/tLAv/s
 1bePsGxo5SFQYyLQVZMkWV10iLLPV0PrtbHrfCAmcPKBDKEgYtTACYSK8fwz9R8pszmW4U/8iYG
 5VU7t8kESQb88EvrWX5vh1mvgrwXB8M/5cWzy6b+X9q3dUegnmSFT+rqjJN+wUa7/SOWc37vVvn
 MDQA=
X-Developer-Key: i=cassiogabrielcontato@gmail.com; a=openpgp;
 fpr=AB62A239BC8AE0D57F5EA848D05D3F1A5AFFEE83
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_193018_650375_BAED0D19 
X-CRM114-Status: GOOD (  16.28  )
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

VGhlIFJvY2tjaGlwIEkyUyBkcml2ZXIgbWl4ZXMgZGV2bS1tYW5hZ2VkIHByb2JlIHJlc291cmNl
cyB3aXRoIG1hbnVhbApydW50aW1lIFBNIGFuZCBoY2xrIGNsZWFudXAuICBUaGlzIGxlYXZlcyB0
aGUgcmVtb3ZlIHBhdGggZG9pbmcgcnVudGltZSBQTQpzaHV0ZG93biBhbmQgY2xvY2sgZGlzYWJs
ZSBiZWZvcmUgZGV2bS1tYW5hZ2VkIEFTb0MgYW5kIFBDTSByZXNvdXJjZXMgYXJlCnJlbGVhc2Vk
LgoKS2VlcCB0aGUgYnVzIGNsb2NrIGVuYWJsZWQgZm9yIHRoZSBkZXZpY2UgbGlmZXRpbWUgd2l0
aApkZXZtX2Nsa19nZXRfZW5hYmxlZCgpLCBhbmQgbW92ZSB0aGUgcnVudGltZSBQTSB0ZWFyZG93
biBpbnRvIGRldnJlcyBzbyB0aGUKdW53aW5kIG9yZGVyIG1hdGNoZXMgdGhlIG1hbmFnZWQgcmVn
aXN0cmF0aW9ucy4gIFRoaXMgYWxzbyByZW1vdmVzIHRoZQpyZW1vdmUgY2FsbGJhY2ssIHdoaWNo
IG9ubHkgZXhpc3RlZCBmb3IgY2xlYW51cC4KClVzZSBhIGRldm0gYWN0aW9uIGZvciB0aGUgZmlu
YWwgcnVudGltZSBzdXNwZW5kIGFuZCByZWdpc3RlciBpdCBiZWZvcmUgdGhlCm1hbmFnZWQgcnVu
dGltZSBQTSBhY3Rpb24sIHNvIHRlYXJkb3duIGRpc2FibGVzIHJ1bnRpbWUgUE0gYmVmb3JlIGZv
cmNpbmcKdGhlIGRldmljZSBpbnRvIHRoZSBzdXNwZW5kZWQgc3RhdGUuCgpTaWduZWQtb2ZmLWJ5
OiBDw6Fzc2lvIEdhYnJpZWwgPGNhc3Npb2dhYnJpZWxjb250YXRvQGdtYWlsLmNvbT4KLS0tCiBz
b3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfaTJzLmMgfCA2OCArKysrKysrKysrKysrKystLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCA0
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBf
aTJzLmMgYi9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfaTJzLmMKaW5kZXggNDlmZjg2YjM1
ZWYxLi40ZTNhZjBmMzc5NDEgMTAwNjQ0Ci0tLSBhL3NvdW5kL3NvYy9yb2NrY2hpcC9yb2NrY2hp
cF9pMnMuYworKysgYi9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfaTJzLmMKQEAgLTY2NCw2
ICs2NjQsMTQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcm9ja2NoaXBfaTJz
X21hdGNoW10gX19tYXliZV91bnVzZWQgPSB7CiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShvZiwg
cm9ja2NoaXBfaTJzX21hdGNoKTsKIAorc3RhdGljIHZvaWQgcm9ja2NoaXBfaTJzX3N1c3BlbmQo
dm9pZCAqZGF0YSkKK3sKKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBkYXRhOworCisJaWYgKCFwbV9y
dW50aW1lX3N0YXR1c19zdXNwZW5kZWQoZGV2KSkKKwkJaTJzX3J1bnRpbWVfc3VzcGVuZChkZXYp
OworfQorCiBzdGF0aWMgaW50IHJvY2tjaGlwX2kyc19pbml0X2RhaShzdHJ1Y3QgcmtfaTJzX2Rl
diAqaTJzLCBzdHJ1Y3QgcmVzb3VyY2UgKnJlcywKIAkJCQkgc3RydWN0IHNuZF9zb2NfZGFpX2Ry
aXZlciAqKmRwKQogewpAQCAtNzU4LDM3ICs3NjYsMjggQEAgc3RhdGljIGludCByb2NrY2hpcF9p
MnNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAl9CiAKIAkvKiB0cnkgdG8g
cHJlcGFyZSByZWxhdGVkIGNsb2NrcyAqLwotCWkycy0+aGNsayA9IGRldm1fY2xrX2dldCgmcGRl
di0+ZGV2LCAiaTJzX2hjbGsiKTsKKwlpMnMtPmhjbGsgPSBkZXZtX2Nsa19nZXRfZW5hYmxlZCgm
cGRldi0+ZGV2LCAiaTJzX2hjbGsiKTsKIAlpZiAoSVNfRVJSKGkycy0+aGNsaykpIHsKIAkJZGV2
X2VycigmcGRldi0+ZGV2LCAiQ2FuJ3QgcmV0cmlldmUgaTJzIGJ1cyBjbG9ja1xuIik7CiAJCXJl
dHVybiBQVFJfRVJSKGkycy0+aGNsayk7CiAJfQotCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShp
MnMtPmhjbGspOwotCWlmIChyZXQpIHsKLQkJZGV2X2VycihpMnMtPmRldiwgImhjbG9jayBlbmFi
bGUgZmFpbGVkICVkXG4iLCByZXQpOwotCQlyZXR1cm4gcmV0OwotCX0KIAogCWkycy0+bWNsayA9
IGRldm1fY2xrX2dldCgmcGRldi0+ZGV2LCAiaTJzX2NsayIpOwogCWlmIChJU19FUlIoaTJzLT5t
Y2xrKSkgewogCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJDYW4ndCByZXRyaWV2ZSBpMnMgbWFzdGVy
IGNsb2NrXG4iKTsKLQkJcmV0ID0gUFRSX0VSUihpMnMtPm1jbGspOwotCQlnb3RvIGVycl9jbGs7
CisJCXJldHVybiBQVFJfRVJSKGkycy0+bWNsayk7CiAJfQogCiAJcmVncyA9IGRldm1fcGxhdGZv
cm1fZ2V0X2FuZF9pb3JlbWFwX3Jlc291cmNlKHBkZXYsIDAsICZyZXMpOwotCWlmIChJU19FUlIo
cmVncykpIHsKLQkJcmV0ID0gUFRSX0VSUihyZWdzKTsKLQkJZ290byBlcnJfY2xrOwotCX0KKwlp
ZiAoSVNfRVJSKHJlZ3MpKQorCQlyZXR1cm4gUFRSX0VSUihyZWdzKTsKIAogCWkycy0+cmVnbWFw
ID0gZGV2bV9yZWdtYXBfaW5pdF9tbWlvKCZwZGV2LT5kZXYsIHJlZ3MsCiAJCQkJCSAgICAmcm9j
a2NoaXBfaTJzX3JlZ21hcF9jb25maWcpOwogCWlmIChJU19FUlIoaTJzLT5yZWdtYXApKSB7CiAJ
CWRldl9lcnIoJnBkZXYtPmRldiwKIAkJCSJGYWlsZWQgdG8gaW5pdGlhbGlzZSBtYW5hZ2VkIHJl
Z2lzdGVyIG1hcFxuIik7Ci0JCXJldCA9IFBUUl9FUlIoaTJzLT5yZWdtYXApOwotCQlnb3RvIGVy
cl9jbGs7CisJCXJldHVybiBQVFJfRVJSKGkycy0+cmVnbWFwKTsKIAl9CiAKIAlpMnMtPmJjbGtf
cmF0aW8gPSA2NDsKQEAgLTc5OSw4ICs3OTgsNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2kyc19w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQkJaTJzLT5iY2xrX29mZiA9IHBp
bmN0cmxfbG9va3VwX3N0YXRlKGkycy0+cGluY3RybCwgImJjbGtfb2ZmIik7CiAJCQlpZiAoSVNf
RVJSX09SX05VTEwoaTJzLT5iY2xrX29mZikpIHsKIAkJCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJm
YWlsZWQgdG8gZmluZCBpMnMgYmNsa19vZmZcbiIpOwotCQkJCXJldCA9IC1FSU5WQUw7Ci0JCQkJ
Z290byBlcnJfY2xrOworCQkJCXJldHVybiAtRUlOVkFMOwogCQkJfQogCQl9CiAJfSBlbHNlIHsK
QEAgLTgxMSwxNiArODA5LDIzIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfaTJzX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAKIAlkZXZfc2V0X2RydmRhdGEoJnBkZXYtPmRldiwg
aTJzKTsKIAotCXBtX3J1bnRpbWVfZW5hYmxlKCZwZGV2LT5kZXYpOworCXJldCA9IGRldm1fYWRk
X2FjdGlvbigmcGRldi0+ZGV2LCByb2NrY2hpcF9pMnNfc3VzcGVuZCwgJnBkZXYtPmRldik7CisJ
aWYgKHJldCkKKwkJcmV0dXJuIHJldDsKKworCXJldCA9IGRldm1fcG1fcnVudGltZV9lbmFibGUo
JnBkZXYtPmRldik7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKKwogCWlmICghcG1fcnVudGlt
ZV9lbmFibGVkKCZwZGV2LT5kZXYpKSB7CiAJCXJldCA9IGkyc19ydW50aW1lX3Jlc3VtZSgmcGRl
di0+ZGV2KTsKIAkJaWYgKHJldCkKLQkJCWdvdG8gZXJyX3BtX2Rpc2FibGU7CisJCQlyZXR1cm4g
cmV0OwogCX0KIAogCXJldCA9IHJvY2tjaGlwX2kyc19pbml0X2RhaShpMnMsIHJlcywgJmRhaSk7
CiAJaWYgKHJldCkKLQkJZ290byBlcnJfcG1fZGlzYWJsZTsKKwkJcmV0dXJuIHJldDsKIAogCXJl
dCA9IGRldm1fc25kX3NvY19yZWdpc3Rlcl9jb21wb25lbnQoJnBkZXYtPmRldiwKIAkJCQkJICAg
ICAgJnJvY2tjaGlwX2kyc19jb21wb25lbnQsCkBAIC04MjgsMzYgKzgzMywxNiBAQCBzdGF0aWMg
aW50IHJvY2tjaGlwX2kyc19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCiAJ
aWYgKHJldCkgewogCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJDb3VsZCBub3QgcmVnaXN0ZXIgREFJ
XG4iKTsKLQkJZ290byBlcnJfc3VzcGVuZDsKKwkJcmV0dXJuIHJldDsKIAl9CiAKIAlyZXQgPSBk
ZXZtX3NuZF9kbWFlbmdpbmVfcGNtX3JlZ2lzdGVyKCZwZGV2LT5kZXYsIE5VTEwsIDApOwogCWlm
IChyZXQpIHsKIAkJZGV2X2VycigmcGRldi0+ZGV2LCAiQ291bGQgbm90IHJlZ2lzdGVyIFBDTVxu
Iik7Ci0JCWdvdG8gZXJyX3N1c3BlbmQ7CisJCXJldHVybiByZXQ7CiAJfQogCiAJcmV0dXJuIDA7
Ci0KLWVycl9zdXNwZW5kOgotCWlmICghcG1fcnVudGltZV9zdGF0dXNfc3VzcGVuZGVkKCZwZGV2
LT5kZXYpKQotCQlpMnNfcnVudGltZV9zdXNwZW5kKCZwZGV2LT5kZXYpOwotZXJyX3BtX2Rpc2Fi
bGU6Ci0JcG1fcnVudGltZV9kaXNhYmxlKCZwZGV2LT5kZXYpOwotZXJyX2NsazoKLQljbGtfZGlz
YWJsZV91bnByZXBhcmUoaTJzLT5oY2xrKTsKLQlyZXR1cm4gcmV0OwotfQotCi1zdGF0aWMgdm9p
ZCByb2NrY2hpcF9pMnNfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCi17Ci0J
c3RydWN0IHJrX2kyc19kZXYgKmkycyA9IGRldl9nZXRfZHJ2ZGF0YSgmcGRldi0+ZGV2KTsKLQot
CXBtX3J1bnRpbWVfZGlzYWJsZSgmcGRldi0+ZGV2KTsKLQlpZiAoIXBtX3J1bnRpbWVfc3RhdHVz
X3N1c3BlbmRlZCgmcGRldi0+ZGV2KSkKLQkJaTJzX3J1bnRpbWVfc3VzcGVuZCgmcGRldi0+ZGV2
KTsKLQotCWNsa19kaXNhYmxlX3VucHJlcGFyZShpMnMtPmhjbGspOwogfQogCiBzdGF0aWMgY29u
c3Qgc3RydWN0IGRldl9wbV9vcHMgcm9ja2NoaXBfaTJzX3BtX29wcyA9IHsKQEAgLTg2Niw3ICs4
NTEsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgcm9ja2NoaXBfaTJzX3BtX29w
cyA9IHsKIAogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcm9ja2NoaXBfaTJzX2RyaXZl
ciA9IHsKIAkucHJvYmUgPSByb2NrY2hpcF9pMnNfcHJvYmUsCi0JLnJlbW92ZSA9IHJvY2tjaGlw
X2kyc19yZW1vdmUsCiAJLmRyaXZlciA9IHsKIAkJLm5hbWUgPSBEUlZfTkFNRSwKIAkJLm9mX21h
dGNoX3RhYmxlID0gb2ZfbWF0Y2hfcHRyKHJvY2tjaGlwX2kyc19tYXRjaCksCgotLS0KYmFzZS1j
b21taXQ6IDQwY2M5NjAyY2FmMjUzOTM2OWJkM2RkN2Q2NmVlNjdlMjA0ZTc1ZWYKY2hhbmdlLWlk
OiAyMDI2MDUyMS1hc29jLXJvY2tjaGlwLWkycy1kZXZtLWNsZWFudXAtNmNhZGU1ZjQ5NWU1CgpC
ZXN0IHJlZ2FyZHMsCi0tICAKQ8Ohc3NpbyBHYWJyaWVsIDxjYXNzaW9nYWJyaWVsY29udGF0b0Bn
bWFpbC5jb20+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
