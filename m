Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B306C369C2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 10:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7KASGUXyXGFTodHcT4ipO7b6tR9mU5e5UPXGBMaEcY=; b=4bq2D6zCT2doy0
	GGK3Z+MXWVsqms7dTuH+oVYt4YHI62hWWHUSN+93Z73h+hpkjyTd9LwSQRuaDAHsJeBUrnSlZgOqh
	IWDlsPudIOLsgi8LAD5UYsWSiNcuPztHxLSvkZ5a8epvaFaXVRBKpxuWpyAudNEtOvcmcaHPkQ85G
	7cbOtp/IjWcm/1HbEO6r0AX9r6wlfGASNB52v5S4r1z3TqXwWHCyjx8+T1eTRpFB8bRvOokfmSwBP
	4X/ZY+ztktkCqm7gfbQUetczfsOsDZG3sdjtcV6ad3RRfpznptWbkDmZ429OPplqe55iGQK4Idfwt
	/3vMGGFijuY223BnnWIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7B3J-00000006oAZ-22f3;
	Tue, 22 Apr 2025 10:40:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7AX7-00000006gEw-0uT6;
	Tue, 22 Apr 2025 10:07:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=kBFonbp1846gJUgowkmr65IS6mdF3RNeO3rgyd2Q/Eo=; b=0ajUgpR85H/WB0VfM6ExsXsJZ6
	r4c2SR6axdXYi7LGFGDp6+O0HRmFGJFhx+QMDUHgKLoMRUV1Tr5PQnRmRNgra4TMkPJWiinWz1ShH
	0FpICnCOjDKhCwrpEv+oX6tNXPYM+KDuOdyvY8bQZDTasOgWgX1ShFf9xXPHve/SZ4fc9cz2x7VIC
	/EbWB83m8i0f8X0iWBvP4/A9jCjOSKC/BLF6i1Ym5l4LS8UxJ+Gpd/CzbbwMXMrhvvsrPYoWDzVdQ
	dfIsfan5RLo4BsUIXaelLE7IZEa0SKsIZKmIBpyuWO/fZdtsxPlTik9RrxFV+vD8dler1Ljc2B/Q+
	PoV+iNhA==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u7AX5-0001S6-VN; Tue, 22 Apr 2025 12:07:16 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v3 2/3] nvmem: rockchip-otp: Add support for rk3568-otp
Date: Tue, 22 Apr 2025 12:07:15 +0200
Message-ID: <6053552.MhkbZ0Pkbq@diego>
In-Reply-To: <20250415103203.82972-3-kever.yang@rock-chips.com>
References: <20250415103203.82972-1-kever.yang@rock-chips.com>
 <20250415103203.82972-3-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_030717_252213_073C51AE 
X-CRM114-Status: GOOD (  20.29  )
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

QW0gRGllbnN0YWcsIDE1LiBBcHJpbCAyMDI1LCAxMjozMjowMiBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEtldmVyIFlhbmc6Cj4gRnJvbTogRmlubGV5IFhpYW8gPGZpbmxl
eS54aWFvQHJvY2stY2hpcHMuY29tPgo+IAo+IFRoaXMgYWRkcyB0aGUgbmVjZXNzYXJ5IGRhdGEg
Zm9yIGhhbmRsaW5nIG90cCB0aGUgcmszNTY4Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZpbmxleSBY
aWFvIDxmaW5sZXkueGlhb0Byb2NrLWNoaXBzLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBLZXZlciBZ
YW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKClJldmlld2VkLWJ5OiBIZWlrbyBTdHVl
Ym5lciA8aGVpa29Ac250ZWNoLmRlPgoKT24gYSBRdWFydHo2NGIKVGVzdGVkLWJ5OiBIZWlrbyBT
dHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCj4gLS0tCj4gCj4gQ2hhbmdlcyBpbiB2MzoKPiAt
IHJlYmFzZSBvbiByazM1NzYgYW5kIHJrMzUyOCwgY2hhbmdlcyBzdWdnZXN0IGJ5IEpvbmFzCj4g
Cj4gQ2hhbmdlcyBpbiB2MjogTm9uZQo+IAo+ICBkcml2ZXJzL252bWVtL3JvY2tjaGlwLW90cC5j
IHwgNjkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFu
Z2VkLCA2OSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZW0vcm9j
a2NoaXAtb3RwLmMgYi9kcml2ZXJzL252bWVtL3JvY2tjaGlwLW90cC5jCj4gaW5kZXggNDViYmI2
MTQ3ZmI3Li5jZmI2OWJjNTg4NjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1lbS9yb2NrY2hp
cC1vdHAuYwo+ICsrKyBiL2RyaXZlcnMvbnZtZW0vcm9ja2NoaXAtb3RwLmMKPiBAQCAtMjcsNiAr
MjcsNyBAQAo+ICAjZGVmaW5lIE9UUENfVVNFUl9DVFJMCQkJMHgwMTAwCj4gICNkZWZpbmUgT1RQ
Q19VU0VSX0FERFIJCQkweDAxMDQKPiAgI2RlZmluZSBPVFBDX1VTRVJfRU5BQkxFCQkweDAxMDgK
PiArI2RlZmluZSBPVFBDX1VTRVJfUVAJCQkweDAxMjAKPiAgI2RlZmluZSBPVFBDX1VTRVJfUQkJ
CTB4MDEyNAo+ICAjZGVmaW5lIE9UUENfSU5UX1NUQVRVUwkJCTB4MDMwNAo+ICAjZGVmaW5lIE9U
UENfU0JQSV9DTUQwX09GRlNFVAkJMHgxMDAwCj4gQEAgLTE4NCw2ICsxODUsNTggQEAgc3RhdGlj
IGludCBweDMwX290cF9yZWFkKHZvaWQgKmNvbnRleHQsIHVuc2lnbmVkIGludCBvZmZzZXQsCj4g
IAlyZXR1cm4gcmV0Owo+ICB9Cj4gIAo+ICtzdGF0aWMgaW50IHJrMzU2OF9vdHBfcmVhZCh2b2lk
ICpjb250ZXh0LCB1bnNpZ25lZCBpbnQgb2Zmc2V0LCB2b2lkICp2YWwsCj4gKwkJCSAgIHNpemVf
dCBjb3VudCkKPiArewo+ICsJc3RydWN0IHJvY2tjaGlwX290cCAqb3RwID0gY29udGV4dDsKPiAr
CXUxNiAqYnVmID0gdmFsOwo+ICsJdTMyIG90cF9xcDsKPiArCWludCByZXQ7Cj4gKwo+ICsJcmV0
ID0gcm9ja2NoaXBfb3RwX3Jlc2V0KG90cCk7Cj4gKwlpZiAocmV0KSB7Cj4gKwkJZGV2X2Vycihv
dHAtPmRldiwgImZhaWxlZCB0byByZXNldCBvdHAgcGh5XG4iKTsKPiArCQlyZXR1cm4gcmV0Owo+
ICsJfQo+ICsKPiArCXJldCA9IHJvY2tjaGlwX290cF9lY2NfZW5hYmxlKG90cCwgdHJ1ZSk7Cj4g
KwlpZiAocmV0KSB7Cj4gKwkJZGV2X2VycihvdHAtPmRldiwgInJvY2tjaGlwX290cF9lY2NfZW5h
YmxlIGVyclxuIik7Cj4gKwkJcmV0dXJuIHJldDsKPiArCX0KPiArCj4gKwl3cml0ZWwoT1RQQ19V
U0VfVVNFUiB8IE9UUENfVVNFX1VTRVJfTUFTSywgb3RwLT5iYXNlICsgT1RQQ19VU0VSX0NUUkwp
Owo+ICsJdWRlbGF5KDUpOwo+ICsKPiArCXdoaWxlIChjb3VudC0tKSB7Cj4gKwkJd3JpdGVsKG9m
ZnNldCsrIHwgT1RQQ19VU0VSX0FERFJfTUFTSywKPiArCQkgICAgICAgb3RwLT5iYXNlICsgT1RQ
Q19VU0VSX0FERFIpOwo+ICsJCXdyaXRlbChPVFBDX1VTRVJfRlNNX0VOQUJMRSB8IE9UUENfVVNF
Ul9GU01fRU5BQkxFX01BU0ssCj4gKwkJICAgICAgIG90cC0+YmFzZSArIE9UUENfVVNFUl9FTkFC
TEUpOwo+ICsKPiArCQlyZXQgPSByb2NrY2hpcF9vdHBfd2FpdF9zdGF0dXMob3RwLCBPVFBDX0lO
VF9TVEFUVVMsCj4gKwkJCQkJICAgICAgIE9UUENfVVNFUl9ET05FKTsKPiArCQlpZiAocmV0KSB7
Cj4gKwkJCWRldl9lcnIob3RwLT5kZXYsICJ0aW1lb3V0IGR1cmluZyByZWFkIHNldHVwXG4iKTsK
PiArCQkJZ290byByZWFkX2VuZDsKPiArCQl9Cj4gKwo+ICsJCW90cF9xcCA9IHJlYWRsKG90cC0+
YmFzZSArIE9UUENfVVNFUl9RUCk7Cj4gKwkJaWYgKCgob3RwX3FwICYgMHhjMCkgPT0gMHhjMCkg
fHwgKG90cF9xcCAmIDB4MjApKSB7Cj4gKwkJCXJldCA9IC1FSU87Cj4gKwkJCWRldl9lcnIob3Rw
LT5kZXYsICJlY2MgY2hlY2sgZXJyb3IgZHVyaW5nIHJlYWQgc2V0dXBcbiIpOwo+ICsJCQlnb3Rv
IHJlYWRfZW5kOwo+ICsJCX0KPiArCj4gKwkJKmJ1ZisrID0gcmVhZGwob3RwLT5iYXNlICsgT1RQ
Q19VU0VSX1EpOwo+ICsJfQo+ICsKPiArcmVhZF9lbmQ6Cj4gKwl3cml0ZWwoMHgwIHwgT1RQQ19V
U0VfVVNFUl9NQVNLLCBvdHAtPmJhc2UgKyBPVFBDX1VTRVJfQ1RSTCk7Cj4gKwo+ICsJcmV0dXJu
IHJldDsKPiArfQo+ICsKPiAgc3RhdGljIGludCByazM1ODhfb3RwX3JlYWQodm9pZCAqY29udGV4
dCwgdW5zaWduZWQgaW50IG9mZnNldCwKPiAgCQkJICAgdm9pZCAqdmFsLCBzaXplX3QgY291bnQp
Cj4gIHsKPiBAQCAtMjgwLDYgKzMzMywxOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlw
X2RhdGEgcHgzMF9kYXRhID0gewo+ICAJLnJlZ19yZWFkID0gcHgzMF9vdHBfcmVhZCwKPiAgfTsK
PiAgCj4gK3N0YXRpYyBjb25zdCBjaGFyICogY29uc3QgcmszNTY4X290cF9jbG9ja3NbXSA9IHsK
PiArCSJvdHAiLCAiYXBiX3BjbGsiLCAicGh5IiwgInNicGkiLAo+ICt9Owo+ICsKPiArc3RhdGlj
IGNvbnN0IHN0cnVjdCByb2NrY2hpcF9kYXRhIHJrMzU2OF9kYXRhID0gewo+ICsJLnNpemUgPSAw
eDgwLAo+ICsJLndvcmRfc2l6ZSA9IHNpemVvZih1MTYpLAo+ICsJLmNsa3MgPSByazM1Njhfb3Rw
X2Nsb2NrcywKPiArCS5udW1fY2xrcyA9IEFSUkFZX1NJWkUocmszNTY4X290cF9jbG9ja3MpLAo+
ICsJLnJlZ19yZWFkID0gcmszNTY4X290cF9yZWFkLAo+ICt9Owo+ICsKPiAgc3RhdGljIGNvbnN0
IHN0cnVjdCByb2NrY2hpcF9kYXRhIHJrMzU3Nl9kYXRhID0gewo+ICAJLnNpemUgPSAweDEwMCwK
PiAgCS5yZWFkX29mZnNldCA9IDB4NzAwLAo+IEBAIC0zMTEsNiArMzc2LDEwIEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHJvY2tjaGlwX290cF9tYXRjaFtdID0gewo+ICAJCS5j
b21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzMwOC1vdHAiLAo+ICAJCS5kYXRhID0gJnB4MzBfZGF0
YSwKPiAgCX0sCj4gKwl7Cj4gKwkJLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4LW90cCIs
Cj4gKwkJLmRhdGEgPSAmcmszNTY4X2RhdGEsCj4gKwl9LAo+ICAJewo+ICAJCS5jb21wYXRpYmxl
ID0gInJvY2tjaGlwLHJrMzU3Ni1vdHAiLAo+ICAJCS5kYXRhID0gJnJrMzU3Nl9kYXRhLAo+IAoK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
