Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65B36C43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jul 2026 23:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nVk8J4rF+Rc5kJYTflXzDaNSMxwSUVWnbPqrf1UD0ro=; b=IXV5OLOs6ZXppd
	jO9xtVP5L830byZZMxNNG3OihFSiMb4XAPIccpKjrvoVX4JDZa4FsdDHFRUu6uh6yIpSr8MvKwFuQ
	McFDkyOAnW90lxLns8uVlU233LLduaH0e8PkkoHW55bS8jUryF6h+uLzuchSXmxNNSILzajySSw8s
	Lf0QBDuW20UaMT2KeM+WvD03kc5CGd9EMCHSlYBh690GuBnuv+EZz+E9PrXIDE1LhPHGG6g1Apaie
	WjyQuEMaqhNkk1M4TNWVd/CuKYqhUiOZ+M8NQJMTmcqjMuTIs2BkwhonkIfcRr7QSgaE/ChuUh0Ne
	IHaST7KMW8/OKYCkjAzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whbuy-00000000cLE-0YJU;
	Wed, 08 Jul 2026 23:43:04 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whbuu-00000000cJu-2ze0
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Jul 2026 23:43:03 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-490cf322ed0so7432945e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Jul 2026 16:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783554178; x=1784158978; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=U8qcNP21CNq1+szX+Pq/DiZmtH+Ke3MLxP+6o3bgK2g=;
        b=pqxAwFsCGbkFSTbHwwh0e3yvmKj419rqj0fd+rIoS8de3IYiZTqRctYAZtW7jhcjaC
         PVNmMDWCAJFuRLGoNjL1eu6KBPy9iQ6bK7jADBxU8/7VCxbIkNgL7gXLQlRRyR+jGA4q
         qZvWhSYltGXFcmvaT1TQ3j67Fb9xxvmsdrcBUfVRhQ4GuVVLZ1zaAbX9toMxjtCjUVko
         Bw8L1A9kLoMVDAz7IsBPHkneLZQB8vuKTOatzIOKtuBhhhka9FA0edKXe3OmlpM1J0+y
         badTaEIRBsmMDl1MzmhTZvfqlq2NjILVrip3zEcp3RFv7fm+6pH6lMG97DHInToNka6t
         kmRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783554178; x=1784158978;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=U8qcNP21CNq1+szX+Pq/DiZmtH+Ke3MLxP+6o3bgK2g=;
        b=beU6rUnLwdXyj895vahcJgHRMNmsyQqCpT/6GYq069ef7GN/4ci77is6W2Q7Dr8vJh
         GmeNZdC5VtL6V6nVQ1VZJJZlm8rkKEtcY7JmJO5s9LEuBLop1ujnHwutDB9MOsE8OdC4
         36SRuGFRHPRjeG6X9eGtd2KhhSEvErQixZCyiUr26eo0SeP+3p/HGI7XwkRjCgillP7x
         oJnlts669e9/xF1gsTRohlswsW+QVsiVBd5v199Qhojo4JOk8lP+fc8now+HfRKPxciU
         KYayxi/B9RPKYYI3nq9iD/zrsqgyiUHF4Tp41UOSp7JlPJQTDIuEDnasXSnLhB+4meLD
         ATmw==
X-Forwarded-Encrypted: i=1; AHgh+RqrX2hJDq7EB53pP6hcDd0HVYaB7Oq70beSMUcu6NwOh/pzo0DyeW7HVV8hdaEbDJCPgy3EidXbTvM/Ap0IbA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyb3dI6DN/fxNZ8ELUibgn2naPoH1RPRVJAkoJnpme5HEQsxcas
	jat5C+cGWRdA1BYq1TMNV/zRPXNZgRJy2DbbKIsvso1NZP8Fbe5z9yZe
X-Gm-Gg: AfdE7ck1IihrqBPHFLZ5XO2xEk5eHBkNaUrtbm+FGslUgvvsoDGXDu9l4wHM6K5NF59
	cta2LfCdkf9X2qNaxpFDLfmbKS/caeTlwvoVvJNHebHQCzvRKNfa3EmERyiLd2ojOg+Nig7/W/k
	0xVirxlH3OTnDlDBMpmPngN0OHjFmKVykBlRoqrHPRu+gQJvc4Wq9GFz146qMvf0d4vN0aSTFfm
	TmIEJVG5Pjm1uQu5NV6PcPGpo3uSMF9Qj8P/HjoM5jp+lyhvAE895Ozj3pZO/kzmXqcpzAb87Jx
	5Ic/df6vKot5UR1V7JwM9reXnVlsytwq8fDXEYsElAEh0obtj0VTCYnFN42UVQh+0hDWVogdVKY
	bRDL+tdhYqE8D+echN1C5UtXoMXSiXqDGbsET6AhHj873BOoIGuwEary8b8J4naN6WfDnLCFsZL
	7NJdur3FRYLNQJcCYkeSR4vGQpbkhQHdk=
X-Received: by 2002:a05:600c:4fd4:b0:493:e3ea:b23f with SMTP id 5b1f17b1804b1-493e6861ac2mr44972025e9.10.1783554178246;
        Wed, 08 Jul 2026 16:42:58 -0700 (PDT)
Received: from debian.tailb81abf.ts.net ([2a01:e0a:104a:4d80:14c0:9448:1c38:77df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493eb6f16cfsm15653275e9.12.2026.07.08.16.42.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 16:42:57 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: Ulf Hansson <ulfh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	ulf.hansson@oss.qualcomm.com,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Midgy BALON <midgy971@gmail.com>
Subject: [PATCH] pmdomain: rockchip: Add a regulator to the RK3568 NPU power domain
Date: Thu,  9 Jul 2026 01:46:14 +0200
Message-Id: <20260708234614.499613-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_164300_788494_1BA349F9 
X-CRM114-Status: GOOD (  13.85  )
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

RnJvbTogTWlkZ3kgQkFMT04gPG1pZGd5OTcxQGdtYWlsLmNvbT4KClRoZSBSSzM1NjggTlBVIHJh
aWwgKHZkZF9ucHUpIG5lZWRzIHRvIGJlIGVuYWJsZWQgYmVmb3JlIHRoZSBkb21haW4gaXMKcG93
ZXJlZCBvbiBhbmQgZGlzYWJsZWQgYWZ0ZXIgaXQgaXMgcG93ZXJlZCBvZmYuIEdpdmUgRE9NQUlO
X1JLMzU2OCBhCnJlZ3VsYXRvciBwYXJhbWV0ZXIgKGxpa2UgRE9NQUlOX1JLMzU4OCBhbHJlYWR5
IGhhcykgc28gdGhlIE5QVSBkb21haW4KY2FuIHNldCBuZWVkX3JlZ3VsYXRvciwgbGV0dGluZyBn
ZW5wZCBtYW5hZ2UgdGhlIHJhaWwgd2lyZWQgdXAgYXMgdGhlCmRvbWFpbidzIGRvbWFpbi1zdXBw
bHkgaW5zdGVhZCBvZiBtYXJraW5nIGl0IGFsd2F5cy1vbiBpbiBEVC4KClN1Z2dlc3RlZC1ieTog
Q2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgpTaWduZWQtb2ZmLWJ5OiBN
aWRneSBCQUxPTiA8bWlkZ3k5NzFAZ21haWwuY29tPgotLS0KVGhpcyBwYXRjaCB3YXMgcGFydCBv
ZiB0aGUgUkZDIE5QVSBzZXJpZXMgWzFdOyBVbGYgSGFuc3NvbiBhbmQgSGVpa28KU3TDvGJuZXIg
cmV2aWV3ZWQgaXQgdGhlcmUgYW5kIGNvbmZpcm1lZCBpdCBjYW4gYmUgYXBwbGllZCBpbmRlcGVu
ZGVudGx5IG9mCnRoZSByZXN0IG9mIHRoZSAoc3RpbGwtUkZDKSByb2NrZXQgZHJpdmVyIGFuZCBE
VCBwYXRjaGVzLCBzbyBpdCBpcyByZXBvc3RlZApzdGFuZGFsb25lLiBUaGUgTlBVIGRvbWFpbidz
IGRvbWFpbi1zdXBwbHkgRFQgd2lyaW5nIGZvbGxvd3MgaW4gYSBzZXBhcmF0ZQpwYXRjaCwgc28g
dGhpcyBjaGFuZ2UgYWxvbmUgaXMgYSBuby1vcCBhdCBydW50aW1lLgoKQ2hhbmdlcyBzaW5jZSB0
aGUgUkZDIHBvc3Rpbmc6Ci0gTW92ZSBET01BSU5fTV9SIGJlbG93IHRoZSBvdGhlciBET01BSU5f
TV8qIG1hY3JvcyBzbyB0aGV5IHN0YXkKICBhbHBoYWJldGljYWxseSBzb3J0ZWQgKEhlaWtvIFN0
w7xibmVyKS4KClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI2
MDYxMzA3MDExNi40Mzg5MDYtMS1taWRneTk3MUBnbWFpbC5jb20vCgogZHJpdmVycy9wbWRvbWFp
bi9yb2NrY2hpcC9wbS1kb21haW5zLmMgfCAzNiArKysrKysrKysrKysrKysrKystLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jIGIvZHJpdmVycy9w
bWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKaW5kZXggNDkwYmJiMWQxZDhlOC4uYmE2NmFl
NzE5NDI4OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5z
LmMKKysrIGIvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKQEAgLTIwNCw2
ICsyMDQsMjAgQEAgc3RydWN0IHJvY2tjaGlwX3BtdSB7CiAJLmFjdGl2ZV93YWtldXAgPSB3YWtl
dXAsCQkJXAogfQogCisjZGVmaW5lIERPTUFJTl9NX1IoX25hbWUsIHB3ciwgc3RhdHVzLCByZXEs
IGlkbGUsIGFjaywgd2FrZXVwLCByZWd1bGF0b3IpCVwKK3sJCQkJCQkJXAorCS5uYW1lID0gX25h
bWUsCQkJCVwKKwkucHdyX3dfbWFzayA9IChwd3IpIDw8IDE2LAkJCVwKKwkucHdyX21hc2sgPSAo
cHdyKSwJCQkJXAorCS5zdGF0dXNfbWFzayA9IChzdGF0dXMpLAkJCVwKKwkucmVxX3dfbWFzayA9
IChyZXEpIDw8IDE2LAkJCVwKKwkucmVxX21hc2sgPSAocmVxKSwJCQkJXAorCS5pZGxlX21hc2sg
PSAoaWRsZSksCQkJCVwKKwkuYWNrX21hc2sgPSAoYWNrKSwJCQkJXAorCS5hY3RpdmVfd2FrZXVw
ID0gd2FrZXVwLAkJCVwKKwkubmVlZF9yZWd1bGF0b3IgPSByZWd1bGF0b3IsCQkJXAorfQorCiAj
ZGVmaW5lIERPTUFJTl9SSzMwMzYoX25hbWUsIHJlcSwgYWNrLCBpZGxlLCB3YWtldXApCQlcCiB7
CQkJCQkJCVwKIAkubmFtZSA9IF9uYW1lLAkJCQlcCkBAIC0yNDEsOCArMjU1LDggQEAgc3RydWN0
IHJvY2tjaGlwX3BtdSB7CiAjZGVmaW5lIERPTUFJTl9SSzM1NjIobmFtZSwgcHdyLCByZXEsIGdf
bWFzaywgbWVtLCB3YWtldXApCQlcCiAJRE9NQUlOX01fR19TRChuYW1lLCBwd3IsIHB3ciwgcmVx
LCByZXEsIHJlcSwgZ19tYXNrLCBtZW0sIHdha2V1cCwgZmFsc2UpCiAKLSNkZWZpbmUgRE9NQUlO
X1JLMzU2OChuYW1lLCBwd3IsIHJlcSwgd2FrZXVwKQkJXAotCURPTUFJTl9NKG5hbWUsIHB3ciwg
cHdyLCByZXEsIHJlcSwgcmVxLCB3YWtldXApCisjZGVmaW5lIERPTUFJTl9SSzM1NjgobmFtZSwg
cHdyLCByZXEsIHdha2V1cCwgcmVndWxhdG9yKQkJXAorCURPTUFJTl9NX1IobmFtZSwgcHdyLCBw
d3IsIHJlcSwgcmVxLCByZXEsIHdha2V1cCwgcmVndWxhdG9yKQogCiAjZGVmaW5lIERPTUFJTl9S
SzM1NzYobmFtZSwgcF9vZmZzZXQsIHB3ciwgc3RhdHVzLCByX3N0YXR1cywgcl9vZmZzZXQsIHJl
cSwgaWRsZSwgZ19tYXNrLCB3YWtldXApCVwKIAlET01BSU5fTV9PX1JfRyhuYW1lLCBwX29mZnNl
dCwgcHdyLCBzdGF0dXMsIDAsIHJfc3RhdHVzLCByX3N0YXR1cywgcl9vZmZzZXQsIHJlcSwgaWRs
ZSwgaWRsZSwgZ19tYXNrLCB3YWtldXApCkBAIC0xMjc0LDE1ICsxMjg4LDE1IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3Qgcm9ja2NoaXBfZG9tYWluX2luZm8gcmszNTYyX3BtX2RvbWFpbnNbXSA9IHsK
IH07CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfZG9tYWluX2luZm8gcmszNTY4X3Bt
X2RvbWFpbnNbXSA9IHsKLQlbUkszNTY4X1BEX05QVV0JCT0gRE9NQUlOX1JLMzU2OCgibnB1Iiwg
IEJJVCgxKSwgQklUKDIpLCAgZmFsc2UpLAotCVtSSzM1NjhfUERfR1BVXQkJPSBET01BSU5fUksz
NTY4KCJncHUiLCAgQklUKDApLCBCSVQoMSksICBmYWxzZSksCi0JW1JLMzU2OF9QRF9WSV0JCT0g
RE9NQUlOX1JLMzU2OCgidmkiLCAgIEJJVCg2KSwgQklUKDMpLCAgZmFsc2UpLAotCVtSSzM1Njhf
UERfVk9dCQk9IERPTUFJTl9SSzM1NjgoInZvIiwgICBCSVQoNyksIEJJVCg0KSwgIGZhbHNlKSwK
LQlbUkszNTY4X1BEX1JHQV0JCT0gRE9NQUlOX1JLMzU2OCgicmdhIiwgIEJJVCg1KSwgQklUKDUp
LCAgZmFsc2UpLAotCVtSSzM1NjhfUERfVlBVXQkJPSBET01BSU5fUkszNTY4KCJ2cHUiLCAgQklU
KDIpLCBCSVQoNiksICBmYWxzZSksCi0JW1JLMzU2OF9QRF9SS1ZERUNdCT0gRE9NQUlOX1JLMzU2
OCgidmRlYyIsIEJJVCg0KSwgQklUKDgpLCAgZmFsc2UpLAotCVtSSzM1NjhfUERfUktWRU5DXQk9
IERPTUFJTl9SSzM1NjgoInZlbmMiLCBCSVQoMyksIEJJVCg3KSwgIGZhbHNlKSwKLQlbUkszNTY4
X1BEX1BJUEVdCT0gRE9NQUlOX1JLMzU2OCgicGlwZSIsIEJJVCg4KSwgQklUKDExKSwgZmFsc2Up
LAorCVtSSzM1NjhfUERfTlBVXQkJPSBET01BSU5fUkszNTY4KCJucHUiLCAgQklUKDEpLCBCSVQo
MiksICBmYWxzZSwgdHJ1ZSksCisJW1JLMzU2OF9QRF9HUFVdCQk9IERPTUFJTl9SSzM1NjgoImdw
dSIsICBCSVQoMCksIEJJVCgxKSwgIGZhbHNlLCBmYWxzZSksCisJW1JLMzU2OF9QRF9WSV0JCT0g
RE9NQUlOX1JLMzU2OCgidmkiLCAgIEJJVCg2KSwgQklUKDMpLCAgZmFsc2UsIGZhbHNlKSwKKwlb
UkszNTY4X1BEX1ZPXQkJPSBET01BSU5fUkszNTY4KCJ2byIsICAgQklUKDcpLCBCSVQoNCksICBm
YWxzZSwgZmFsc2UpLAorCVtSSzM1NjhfUERfUkdBXQkJPSBET01BSU5fUkszNTY4KCJyZ2EiLCAg
QklUKDUpLCBCSVQoNSksICBmYWxzZSwgZmFsc2UpLAorCVtSSzM1NjhfUERfVlBVXQkJPSBET01B
SU5fUkszNTY4KCJ2cHUiLCAgQklUKDIpLCBCSVQoNiksICBmYWxzZSwgZmFsc2UpLAorCVtSSzM1
NjhfUERfUktWREVDXQk9IERPTUFJTl9SSzM1NjgoInZkZWMiLCBCSVQoNCksIEJJVCg4KSwgIGZh
bHNlLCBmYWxzZSksCisJW1JLMzU2OF9QRF9SS1ZFTkNdCT0gRE9NQUlOX1JLMzU2OCgidmVuYyIs
IEJJVCgzKSwgQklUKDcpLCAgZmFsc2UsIGZhbHNlKSwKKwlbUkszNTY4X1BEX1BJUEVdCT0gRE9N
QUlOX1JLMzU2OCgicGlwZSIsIEJJVCg4KSwgQklUKDExKSwgZmFsc2UsIGZhbHNlKSwKIH07CiAK
IHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfZG9tYWluX2luZm8gcmszNTc2X3BtX2RvbWFp
bnNbXSA9IHsKLS0gCjIuMzkuNQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
