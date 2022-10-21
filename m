Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 255FFC38A2D
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Oct 2022 20:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2yhq2zM4+nge57FTGpdx5rj1KByoyc7mmO3j9RSmwbQ=; b=3uuy2yi7X7jwvr
	RycQNv7srvaYfWBuTj7Y+pM0kGNkGbY7VEdvrpZlhQAl4vvkelqbj9ITT6jy+EobdcC0YXKONfmHk
	uvY3pY7jBIo02J0JyrxRaWbr1kabSr3duhirE96v9MuEzrHjCgm8AEanPFx335S3yYxfWXLIcQOD9
	k6ZRwnI/vqJWhwVchzkC81fp2iIs4nWT9/4A9t5T+18iSsxVEGQmIbM6N2P1LnQBBg7IdPK/Bjc47
	VKy7n/Bwcr81+tpeOIrpwA6OTV/wpcNgFB3JTpykqBXJ7cO+OtRSYLtMpX2m+CN/IO9RPBeBp0b2f
	D9VBG0UB1HMCmecpJ5+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olyBe-009hpc-1M; Fri, 21 Oct 2022 20:00:10 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olyBa-009hhR-Oc
	for linux-rockchip@lists.infradead.org; Fri, 21 Oct 2022 20:00:08 +0000
Received: by mail-ed1-x535.google.com with SMTP id z97so9830796ede.8
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Oct 2022 12:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8CXA7NBKJhbyQ+EdenvYp8r+3f9JP5q2a9GVA7vCeN8=;
        b=CBC2/GXXnbZUWAZDzfhTnLAZLySL7rkXoxEVMQIqWu1o4bzRmM/DYnMda0cWuU3V69
         wt3ICkwALLMbYGUpW2VfSq6h9oGSTrMiHC+PIWn3GBM8vzWPAtiQ+iloXCO35/W3ulwE
         UVa1JojnMhWItSh7yjBFDEF7l4YtlJjYeN30g0kcPD89kfV6opaEd4+XunU8bTt6m2k5
         1jyj0STO8/1Gqkoz78W468jBB3QFfODj2BXl0Rsl2kSUMasij2f2ZBO044mD6ll8MmJc
         7gI4qrLqHhNAjec8KkSdPtVaXqgalhvUkCGatZL+3S15x9TvmnewGxN2sYoy0fOIVT7D
         BOng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8CXA7NBKJhbyQ+EdenvYp8r+3f9JP5q2a9GVA7vCeN8=;
        b=i8sqEIz8aTKKSEz7yKNy0r1AZOlilQg3sjGMpUQy53Nctu/CDDwpQDvk99Q6411lEE
         XOLTMyeEnpZn70u/KfBKb762bY/wKAK4UaCrlEp+sZg7JJwDdgLzRPKT4z+KZSix38Gj
         6VQJJjLroiH8u9CBd5vNTYvjfgDDDOI15kpr9GSWt43k6jK4pMLzHtKohdBMNOx+TQOB
         wmNP6SfPDzGgKNNsoqU8czU4nDjFIIs+it2EkTAY3DrfAccTfzpe3Ra8Ftip0pB9eOdq
         hRnbebT1xyUX95x3KE80oTKrOFcq6v+DcCuBjOI5Xoe21HY6vomLGce7UicYXSHMUTUj
         sYiQ==
X-Gm-Message-State: ACrzQf2jwJTeZPVldtVq1Uv1gLUF9Qj61aX+YhjLAGfFJp1bJQg8fZGM
	uq5x73sTKEVK6hGdlTNs8kqsmQ==
X-Google-Smtp-Source: AMsMyM6LOnPBaF7JJYo+fdBZOd0FXvFw8Gl+i1fVjwAKoeAuRTuRewXVTXiZkvH+Oc7Yu9gnyQB2WA==
X-Received: by 2002:a17:907:1ded:b0:78d:4606:268 with SMTP id og45-20020a1709071ded00b0078d46060268mr17235732ejc.163.1666382398525;
        Fri, 21 Oct 2022 12:59:58 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:25b:e73e:85eb:ae6e? ([2a05:6e02:1041:c10:25b:e73e:85eb:ae6e])
        by smtp.googlemail.com with ESMTPSA id g13-20020a170906538d00b0073d638a7a89sm12134425ejo.99.2022.10.21.12.59.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Oct 2022 12:59:58 -0700 (PDT)
Message-ID: <2aafa6cc-a7de-0b7a-571f-04593ad53787@linaro.org>
Date: Fri, 21 Oct 2022 21:59:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/2] thermal: rockchip: Support RK3588 SoC in the thermal
 driver
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com
References: <20221021174721.92468-1-sebastian.reichel@collabora.com>
 <20221021174721.92468-2-sebastian.reichel@collabora.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20221021174721.92468-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_130006_843303_74C77306 
X-CRM114-Status: GOOD (  20.67  )
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

T24gMjEvMTAvMjAyMiAxOTo0NywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cj4gRnJvbTogRmlu
bGV5IFhpYW8gPGZpbmxleS54aWFvQHJvY2stY2hpcHMuY29tPgo+IAo+IFRoZSBSSzM1ODggU29D
IGhhcyBzZXZlbiBjaGFubmVscyBUUy1BREMoVE9QLCBCSUdfQ09SRTAsIEJJR19DT1JFMSwKPiBM
SVRURUxfQ09SRSwgQ0VOVEVSLCBHUFUsIGFuZCBOUFUpLgoKSXMgcG9zc2libGUgdG8gZ2l2ZSBh
IG1vcmUgZWxhYm9yYXRlIGRlc2NyaXB0aW9uIG9mIHRob3NlIHNlbnNvcnM/CgpXaGF0IGlzIFRP
UCBhbmQgQ0VOVEVSID8KClRoZXJlIGFyZSA0IEJpZ3Mgb24gdGhpcyBwbGF0Zm9ybSBidXQgdHdv
IHNlbnNvcnMgPwoKCj4gU2lnbmVkLW9mZi1ieTogRmlubGV5IFhpYW8gPGZpbmxleS54aWFvQHJv
Y2stY2hpcHMuY29tPgo+IFtyZWJhc2UsIHNxdWFzaCBmaXhlc10KPiBTaWduZWQtb2ZmLWJ5OiBT
ZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiAtLS0K
PiAgIGRyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMgfCAxODIgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNzkgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL3JvY2tjaGlw
X3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPiBpbmRleCA4
MTllMDU5Y2RlNzEuLjgyZjQ3NWE2NDQ4ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3RoZXJtYWwv
cm9ja2NoaXBfdGhlcm1hbC5jCj4gKysrIGIvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJt
YWwuYwo+IEBAIC02MSwxMCArNjEsOSBAQCBlbnVtIGFkY19zb3J0X21vZGUgewo+ICAgI2luY2x1
ZGUgInRoZXJtYWxfaHdtb24uaCIKPiAgIAo+ICAgLyoqCj4gLSAqIFRoZSBtYXggc2Vuc29ycyBp
cyB0d28gaW4gcm9ja2NoaXAgU29Dcy4KPiAtICogVHdvIHNlbnNvcnM6IENQVSBhbmQgR1BVIHNl
bnNvci4KPiArICogVGhlIG1heCBzZW5zb3JzIGlzIHNldmVuIGluIHJvY2tjaGlwIFNvQ3MuCj4g
ICAgKi8KPiAtI2RlZmluZSBTT0NfTUFYX1NFTlNPUlMJMgo+ICsjZGVmaW5lIFNPQ19NQVhfU0VO
U09SUwk3CgpZb3UgbWF5IGdldCByaWQgb2YgdGhpcyBhbmQgcmVwbGFjZSB0aGUgc2Vuc29ycyBh
cnJheSB0byBhbiBkeW4gCmFsbG9jYXRpb24gYmFzZWQgb24gY2huX251bQoKWyAuLi4gXQoKPiAr
c3RhdGljIGNvbnN0IHN0cnVjdCByb2NrY2hpcF90c2FkY19jaGlwIHJrMzU4OF90c2FkY19kYXRh
ID0gewo+ICsJLyogdG9wLCBiaWdfY29yZTAsIGJpZ19jb3JlMSwgbGl0dGxlX2NvcmUsIGNlbnRl
ciwgZ3B1LCBucHUgKi8KPiArCS5jaG5faWQgPSB7MCwgMSwgMiwgMywgNCwgNSwgNn0sCgpZb3Ug
bWF5IHdhbnQgdG8gcmV2aXNpdCB0aGF0LiBBY3R1YWxseSwgY2huX2lkIGlzIG5vdCB1c2VmdWwg
YW5kIGNhbiBiZSAKcmVtb3ZlZCBldmVyeXdoZXJlIGFzIHRoZXJlIGlzIG5vIGhvbGUuIE90aGVy
d2lzZSBhIGJpdCBtYXNrIGNvdWxkIGJlIAp1c2VkLiBCeSByZW1vdmluZyBpdCwgU0VOU09SX0NQ
VSBhbmQgU0VOU09SX0dQVSBjYW4gYmUgcmVtb3ZlZCB0b28uCgo+ICsJLmNobl9udW0gPSA3LCAv
KiBzZXZlbiBjaGFubmVscyBmb3IgdHNhZGMKPiArCS50c2h1dF9tb2RlID0gVFNIVVRfTU9ERV9H
UElPLCAvKiBkZWZhdWx0IFRTSFVUIHZpYSBHUElPIGdpdmUgUE1JQyAqLwo+ICsJLnRzaHV0X3Bv
bGFyaXR5ID0gVFNIVVRfTE9XX0FDVElWRSwgLyogZGVmYXVsdCBUU0hVVCBMT1cgQUNUSVZFICov
Cj4gKwkudHNodXRfdGVtcCA9IDk1MDAwLAo+ICsJLmluaXRpYWxpemUgPSBya190c2FkY3Y4X2lu
aXRpYWxpemUsCj4gKwkuaXJxX2FjayA9IHJrX3RzYWRjdjRfaXJxX2FjaywKPiArCS5jb250cm9s
ID0gcmtfdHNhZGN2NF9jb250cm9sLAo+ICsJLmdldF90ZW1wID0gcmtfdHNhZGN2NF9nZXRfdGVt
cCwKPiArCS5zZXRfYWxhcm1fdGVtcCA9IHJrX3RzYWRjdjNfYWxhcm1fdGVtcCwKPiArCS5zZXRf
dHNodXRfdGVtcCA9IHJrX3RzYWRjdjNfdHNodXRfdGVtcCwKPiArCS5zZXRfdHNodXRfbW9kZSA9
IHJrX3RzYWRjdjNfdHNodXRfbW9kZSwKPiArCS50YWJsZSA9IHsKPiArCQkuaWQgPSByazM1ODhf
Y29kZV90YWJsZSwKPiArCQkubGVuZ3RoID0gQVJSQVlfU0laRShyazM1ODhfY29kZV90YWJsZSks
Cj4gKwkJLmRhdGFfbWFzayA9IFRTQURDVjRfREFUQV9NQVNLLAo+ICsJCS5tb2RlID0gQURDX0lO
Q1JFTUVOVCwKPiArCX0sCj4gK307Cj4gKwo+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZp
Y2VfaWQgb2Zfcm9ja2NoaXBfdGhlcm1hbF9tYXRjaFtdID0gewo+ICAgCXsJLmNvbXBhdGlibGUg
PSAicm9ja2NoaXAscHgzMC10c2FkYyIsCj4gICAJCS5kYXRhID0gKHZvaWQgKikmcHgzMF90c2Fk
Y19kYXRhLAo+IEBAIC0xMTgwLDYgKzEzNTIsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9k
ZXZpY2VfaWQgb2Zfcm9ja2NoaXBfdGhlcm1hbF9tYXRjaFtdID0gewo+ICAgCQkuY29tcGF0aWJs
ZSA9ICJyb2NrY2hpcCxyazM1NjgtdHNhZGMiLAo+ICAgCQkuZGF0YSA9ICh2b2lkICopJnJrMzU2
OF90c2FkY19kYXRhLAo+ICAgCX0sCj4gKwl7Cj4gKwkJLmNvbXBhdGlibGUgPSAicm9ja2NoaXAs
cmszNTg4LXRzYWRjIiwKPiArCQkuZGF0YSA9ICh2b2lkICopJnJrMzU4OF90c2FkY19kYXRhLAo+
ICsJfSwKPiAgIAl7IC8qIGVuZCAqLyB9LAo+ICAgfTsKPiAgIE1PRFVMRV9ERVZJQ0VfVEFCTEUo
b2YsIG9mX3JvY2tjaGlwX3RoZXJtYWxfbWF0Y2gpOwoKCi0tIAo8aHR0cDovL3d3dy5saW5hcm8u
b3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpG
b2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFj
ZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRw
Oi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
