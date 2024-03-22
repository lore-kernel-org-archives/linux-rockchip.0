Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CF21C47DD9
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 08:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRN2OY58peg1NVx7oTkci4T2Epsa1YwQp8rIQbhz+qo=; b=pemPm4a8drRd8g
	kMFb704ozq6PJmvjLmo95KxbzDqF9xPodBSSdp1Sp5ZpkgpESpdxfp9C53BSdhn301ZOaWCy4uKd8
	lI+DJ9E2I8LATStnjeJ1pHjb4Q8NmVp15gRamWV0FevNre74f03B8KQVmrPP6NnUr4iHBNfJikEj/
	/tKR7pfk4GQ6282KOjwSOX2jUWaChTaJ4hXzPEQ2TnlyYMSYPDFzMi7tw+l3JoUY5oIASEhFAQNrB
	gvlMrv4Ls027Xf6nPsf1c0bfmu5UGShkL0GB4dTsyvmAz9RA01qtBTqAj/YTYiMbKkcLjzo8EfUAC
	zAQcrEbO438u8YPbxsgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnabd-00000006R3i-2Xap;
	Fri, 22 Mar 2024 08:50:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnabc-00000006R2U-40q9
	for linux-rockchip@bombadil.infradead.org;
	Fri, 22 Mar 2024 08:50:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=j37LkWNYUWo0uI2yuHAPSa9EXC+Yuh7zahU/WU37GcM=; b=PqX+nlQbKGo60RZdp01gpWlpZq
	hn+eD899zEm/fB9CaYZMudncLkZlH5l+HVoyrMocRdKAS3lKYJbBC35atuptu5rQsgwLy9KrehZEz
	Bsmfdx7hcL3+BAd3lC3FXMzxIJAFWQwfuqV5FE2cMZXAbtmkmC622SFDycKrVcveVsNtCva78JyTv
	bIjVxTbMQfr8VyLeYIuODmG6REpVirSmMwz6vy0Tk2JNY8tf82F5XCE2gmPqqvfRbUATvhRnb/zxm
	WktK4tbmrrtoL+pjQyXU5KcsGE+ICyWh39SF7+1CE2Loend0nFO+96NjI+ImSQU67CfmQFPHouFGt
	jBQtTdig==;
Received: from foss.arm.com ([217.140.110.172])
	by desiato.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnabY-0000000EhMi-35fh
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Mar 2024 08:50:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EFA0E1007;
	Fri, 22 Mar 2024 01:50:50 -0700 (PDT)
Received: from [10.57.71.57] (unknown [10.57.71.57])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C5E183F64C;
	Fri, 22 Mar 2024 01:50:14 -0700 (PDT)
Message-ID: <c7b2cb6f-3e14-45c3-9e22-11c0a9422bce@arm.com>
Date: Fri, 22 Mar 2024 08:50:06 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] thermal: devfreq_cooling: Fix perf state when
 calculate dfc res_util
Content-Language: en-US
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: tao.huang@rock-chips.com, heiko@sntech.de, rafael@kernel.org,
 daniel.lezcano@linaro.org, finley.xiao@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, rui.zhang@intel.com
References: <20240321102100.2401340-1-ye.zhang@rock-chips.com>
From: Lukasz Luba <lukasz.luba@arm.com>
In-Reply-To: <20240321102100.2401340-1-ye.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_085025_571267_2F90AAF9 
X-CRM114-Status: GOOD (  15.07  )
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

CgpPbiAzLzIxLzI0IDEwOjIxLCBZZSBaaGFuZyB3cm90ZToKPiBUaGUgaXNzdWUgb2NjdXJzIHdo
ZW4gdGhlIGRldmZyZXEgY29vbGluZyBkZXZpY2UgdXNlcyB0aGUgRU0gcG93ZXIgbW9kZWwKPiBh
bmQgdGhlIGdldF9yZWFsX3Bvd2VyKCkgY2FsbGJhY2sgaXMgcHJvdmlkZWQgYnkgdGhlIGRyaXZl
ci4KPiAKPiBUaGUgRU0gcG93ZXIgdGFibGUgaXMgc29ydGVkIGFzY2VuZGluZ++8jGNhbid0IGlu
ZGV4IHRoZSB0YWJsZSBieSBjb29saW5nCj4gZGV2aWNlIHN0YXRl77yMc28gY29udmVydCBjb29s
aW5nIHN0YXRlIHRvIHBlcmZvcm1hbmNlIHN0YXRlIGJ5Cj4gZGZjLT5tYXhfc3RhdGUgLSBkZmMt
PmNhcHBlZF9zdGF0ZS4KPiAKPiBGaXhlczogNjE1NTEwZmUxM2JkICgidGhlcm1hbDogZGV2ZnJl
cV9jb29saW5nOiByZW1vdmUgb2xkIHBvd2VyIG1vZGVsIGFuZCB1c2UgRU0iKQo+IENjOiA1LjEx
KyA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyA1LjExKwo+IFNpZ25lZC1vZmYtYnk6IFllIFpo
YW5nIDx5ZS56aGFuZ0Byb2NrLWNoaXBzLmNvbT4KPiAtLS0KPiB2MSAtPiB2MjoKPiAgICAtIFVw
ZGF0ZSB0aGUgY29tbWl0IG1lc3NhZ2UuCj4gCj4gICBkcml2ZXJzL3RoZXJtYWwvZGV2ZnJlcV9j
b29saW5nLmMgfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL2RldmZyZXFfY29vbGlu
Zy5jIGIvZHJpdmVycy90aGVybWFsL2RldmZyZXFfY29vbGluZy5jCj4gaW5kZXggNTBkZWMyNGU5
NjdhLi44ZmQ3Y2YxOTMyY2QgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy90aGVybWFsL2RldmZyZXFf
Y29vbGluZy5jCj4gKysrIGIvZHJpdmVycy90aGVybWFsL2RldmZyZXFfY29vbGluZy5jCj4gQEAg
LTIxNCw3ICsyMTQsNyBAQCBzdGF0aWMgaW50IGRldmZyZXFfY29vbGluZ19nZXRfcmVxdWVzdGVk
X3Bvd2VyKHN0cnVjdCB0aGVybWFsX2Nvb2xpbmdfZGV2aWNlICpjZAo+ICAgCj4gICAJCXJlcyA9
IGRmYy0+cG93ZXJfb3BzLT5nZXRfcmVhbF9wb3dlcihkZiwgcG93ZXIsIGZyZXEsIHZvbHRhZ2Up
Owo+ICAgCQlpZiAoIXJlcykgewo+IC0JCQlzdGF0ZSA9IGRmYy0+Y2FwcGVkX3N0YXRlOwo+ICsJ
CQlzdGF0ZSA9IGRmYy0+bWF4X3N0YXRlIC0gZGZjLT5jYXBwZWRfc3RhdGU7Cj4gICAKPiAgIAkJ
CS8qIENvbnZlcnQgRU0gcG93ZXIgaW50byBtaWxsaS1XYXR0cyBmaXJzdCAqLwo+ICAgCQkJcmN1
X3JlYWRfbG9jaygpOwoKVGhhbmtzLCBMR1RNCgpSZXZpZXdlZC1ieTogTHVrYXN6IEx1YmEgPGx1
a2Fzei5sdWJhQGFybS5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
