Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84BB9C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 11:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbjLdBqqX6oOGfMXMhckioIqxE3QZLaFvdMcjB/fwPI=; b=vECglMXxwwM+lW
	soAR1giYeM1vx3pnf9peex6XerRjzT1/YdAjEE44sQe2u4H/UE2Xhk8LFxnsxdhqKPRwqGKdEoIKd
	OzmKJU7xm9FqOy1qNmPnKWBWuRwg9kh3Uus4zGv3D/uX+rh8TEsb+ym/DhGvdiZv8d2dSfRVb11rb
	q5Wq2x60YaCWR2SeeSfaO/o8OksqFcSyieg5M5cpF+2rx1uWvzVpKO2WFGYTXCAS/jHXDz5mXOYzH
	I+K62cJef/Ha9cJbg9+071nK+cexnNpqEtbmhdaUrhHjXXobzJAraHzjtw0YkcpsPDvwgB5bYUx3s
	M7YZeo7WRHFLZk9+tRMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shS1d-0000000GSbX-3Wz2;
	Fri, 23 Aug 2024 11:00:13 +0000
Received: from mail-m12763.qiye.163.com ([115.236.127.63])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shS1L-0000000GSZ8-2yOs;
	Fri, 23 Aug 2024 10:59:57 +0000
DKIM-Signature: a=rsa-sha256;
	b=XZ5NWY1NksoUqasmCIPKLAaYvmbpjTYCxXe4ZmXyCSVl5hQylYW3+3gGwzEHYcI3ztXrj/X24KuLn7iGI6ak/1PoEJEHTG0Lh/ef/V+DQmMG2Sx1V3f09xgXXvl9dokdO61m2sSR4XZB2GCeYuHLTAn/ndDw5BkIAb8wiwNvV8s=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=slXIvyEC5u+xJtYhVdeMPrVz7yrxqYPEwoc8/W9zJUM=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 5C013460143;
	Fri, 23 Aug 2024 18:59:40 +0800 (CST)
Message-ID: <f2194489-c637-4034-9077-951f74d621a5@rock-chips.com>
Date: Fri, 23 Aug 2024 18:59:40 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, mika.westerberg@linux.intel.com,
 andriy.shevchenko@linux.intel.com, tao.huang@rock-chips.com,
 finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
 elaine.zhang@rock-chips.com
Subject: Re: [PATCH v2] gpio: rockchip: resolve overflow issues
To: Ye Zhang <ye.zhang@rock-chips.com>, linus.walleij@linaro.org,
 brgl@bgdev.pl, heiko@sntech.de, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
 <20240823034314.62305-4-ye.zhang@rock-chips.com>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20240823034314.62305-4-ye.zhang@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU1DGlZIGh9DQh9NTk5KSEpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a917ee45e3203aekunm5c013460143
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MUk6EQw4OTIwHiJWCQsQEk0p
	DCgaFC5VSlVKTElPT0pLTENKTUhJVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhLTkI3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_035955_970517_9ACB2554 
X-CRM114-Status: GOOD (  11.50  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

5ZyoIDIwMjQvOC8yMyAxMTo0MywgWWUgWmhhbmcg5YaZ6YGTOgo+IFByZXZlbnQgb3ZlcmZsb3cg
aXNzdWVzIHdoZW4gcGVyZm9ybWluZyBkZWJvdW5jZS1yZWxhdGVkIGNhbGN1bGF0aW9ucy4KPiAK
PiBGaXhlczogM2JjYmQxYTg1YjY4ICgiZ3Bpby9yb2NrY2hpcDogc3VwcG9ydCBuZXh0IHZlcnNp
b24gZ3BpbyBjb250cm9sbGVyIikKPiBTaWduZWQtb2ZmLWJ5OiBZZSBaaGFuZyA8eWUuemhhbmdA
cm9jay1jaGlwcy5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jIHwg
NSArKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYyBiL2RyaXZl
cnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKPiBpbmRleCA1ZjYwMTYyYmFhZWIuLmJmMjJiMTAzYjZh
MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jCj4gKysrIGIvZHJp
dmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYwo+IEBAIC0yMDksMTEgKzIwOSwxMiBAQCBzdGF0aWMg
aW50IHJvY2tjaGlwX2dwaW9fc2V0X2RlYm91bmNlKHN0cnVjdCBncGlvX2NoaXAgKmdjLAo+ICAg
CQlmcmVxID0gY2xrX2dldF9yYXRlKGJhbmstPmRiX2Nsayk7Cj4gICAJCWlmICghZnJlcSkKPiAg
IAkJCXJldHVybiAtRUlOVkFMOwo+IC0JCW1heF9kZWJvdW5jZSA9IChHRU5NQVNLKDIzLCAwKSAr
IDEpICogMiAqIDEwMDAwMDAgLyBmcmVxOwo+ICsJCWRpdiA9ICh1NjQpKEdFTk1BU0soMjMsIDAp
ICsgMSkgKiAyICogMTAwMDAwMDsKPiArCQltYXhfZGVib3VuY2UgPSBESVZfUk9VTkRfQ0xPU0VT
VF9VTEwoZGl2LCBmcmVxKTsKCmNhbid0IG1heF9kZWJvdW5jZSA9IERJVl9ST1VORF9DTE9TRVNU
X1VMTCgoR0VOTUFTSygyMywgMCkgKyAxKSAqIDIgKgoxMDAwMDAwLCBmcmVxKSB3b3JrPwoKPiAg
IAkJaWYgKGRlYm91bmNlID4gbWF4X2RlYm91bmNlKQo+ICAgCQkJcmV0dXJuIC1FSU5WQUw7Cj4g
ICAKPiAtCQlkaXYgPSBkZWJvdW5jZSAqIGZyZXE7Cj4gKwkJZGl2ID0gKHU2NClkZWJvdW5jZSAq
IGZyZXE7Cj4gICAJCWRpdl9yZWcgPSBESVZfUk9VTkRfQ0xPU0VTVF9VTEwoZGl2LCAyICogVVNF
Q19QRVJfU0VDKSAtIDE7Cj4gICAJfSBlbHNlIHsKPiAgIAkJZGl2X2RlYm91bmNlX3N1cHBvcnQg
PSBmYWxzZTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
