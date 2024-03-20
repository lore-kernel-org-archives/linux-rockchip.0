Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2AEDC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Mar 2024 14:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZfoqC1RxC05suJZtapiISQvSsobF51MmkZJZxHQ5Cb0=; b=ijaHtR2x7JeCOE
	MNHJHtKxDF0DwrhYCJJB4dzS2ppTDiwjqAAYcYpHDK68f6ddvcatH3KR4NcoETtC7yrn74MK8aAK3
	ewo0vMB2SlQb7eoG9Czz8Imh7vZy/jwK0+epj4maQrugZdpwytC1z6uPWZ8hS8AA1rGf4HeME8kZy
	RBAGKe7cHaNDlZjoGM4ogKZ3M0wxjFnUUkOKWhcllyhX5Z/AqdT7gd8dF1vlyP2hV+gmnsq6DSgmO
	FUizYzYfU1bALvjJkAoxX1JQgseWfjWFVFiZijiTPMos7HFEbfvTYJbN1WXGUGaoa1PgCZjqA+7g+
	8lST0eeZuFsjlUO7Y+lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmwjf-0000000HPEw-3cmL;
	Wed, 20 Mar 2024 14:16:07 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmwjb-0000000HPEC-3jbb
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Mar 2024 14:16:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 628171007;
	Wed, 20 Mar 2024 07:16:33 -0700 (PDT)
Received: from [10.57.71.40] (unknown [10.57.71.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC4BB3F64C;
	Wed, 20 Mar 2024 07:15:56 -0700 (PDT)
Message-ID: <fb9b21f6-4c73-4a85-93cc-56e7c44359cb@arm.com>
Date: Wed, 20 Mar 2024 14:15:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] thermal: devfreq_cooling: Fix perf state when
 calculate dfc res_util
Content-Language: en-US
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: tao.huang@rock-chips.com, heiko@sntech.de, rui.zhang@intel.com,
 finley.xiao@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 daniel.lezcano@linaro.org, rafael@kernel.org
References: <20240320075704.1924897-1-ye.zhang@rock-chips.com>
From: Lukasz Luba <lukasz.luba@arm.com>
In-Reply-To: <20240320075704.1924897-1-ye.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_071604_045305_EB1679E2 
X-CRM114-Status: GOOD (  15.41  )
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

SGkgWWUsCgpPbiAzLzIwLzI0IDA3OjU3LCBZZSBaaGFuZyB3cm90ZToKPiBUaGUgRU0gcG93ZXIg
dGFibGUgaXMgc29ydGVkIGFzY2VuZGluZ++8jGNhbid0IGluZGV4IHRoZSB0YWJsZSBieSBjb29s
aW5nCj4gZGV2aWNlIHN0YXRl77yMc28gY29udmVydCBjb29saW5nIHN0YXRlIHRvIHBlcmZvcm1h
bmNlIHN0YXRlIGJ5Cj4gZGZjLT5tYXhfc3RhdGUgLSBkZmMtPmNhcHBlZF9zdGF0ZS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBZZSBaaGFuZyA8eWUuemhhbmdAcm9jay1jaGlwcy5jb20+Cj4gLS0tCj4g
ICBkcml2ZXJzL3RoZXJtYWwvZGV2ZnJlcV9jb29saW5nLmMgfCAyICstCj4gICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy90aGVybWFsL2RldmZyZXFfY29vbGluZy5jIGIvZHJpdmVycy90aGVybWFsL2RldmZyZXFf
Y29vbGluZy5jCj4gaW5kZXggNTBkZWMyNGU5NjdhLi44ZmQ3Y2YxOTMyY2QgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy90aGVybWFsL2RldmZyZXFfY29vbGluZy5jCj4gKysrIGIvZHJpdmVycy90aGVy
bWFsL2RldmZyZXFfY29vbGluZy5jCj4gQEAgLTIxNCw3ICsyMTQsNyBAQCBzdGF0aWMgaW50IGRl
dmZyZXFfY29vbGluZ19nZXRfcmVxdWVzdGVkX3Bvd2VyKHN0cnVjdCB0aGVybWFsX2Nvb2xpbmdf
ZGV2aWNlICpjZAo+ICAgCj4gICAJCXJlcyA9IGRmYy0+cG93ZXJfb3BzLT5nZXRfcmVhbF9wb3dl
cihkZiwgcG93ZXIsIGZyZXEsIHZvbHRhZ2UpOwo+ICAgCQlpZiAoIXJlcykgewo+IC0JCQlzdGF0
ZSA9IGRmYy0+Y2FwcGVkX3N0YXRlOwo+ICsJCQlzdGF0ZSA9IGRmYy0+bWF4X3N0YXRlIC0gZGZj
LT5jYXBwZWRfc3RhdGU7Cj4gICAKPiAgIAkJCS8qIENvbnZlcnQgRU0gcG93ZXIgaW50byBtaWxs
aS1XYXR0cyBmaXJzdCAqLwo+ICAgCQkJcmN1X3JlYWRfbG9jaygpOwoKVGhhbmsgeW91IGZvciB0
aGUgcGF0Y2guIEdvb2QgY2F0Y2ghIEl0J3MgdW5kZXIgdGhlIGRldmljZSBkcml2ZXIKY2FsbGJh
Y2sgb3B0aW9uYWwgdGhpbmc6IGdldF9yZWFsX3Bvd2VyKCkuCgpQbGVhc2Ugc2VuZCB0aGUgdjIg
d2l0aCBleHRlbmRlZCBleHBsYW5hdGlvbiBhYm91dCB0aGUgc2VjdGlvbgpvZiB0aGUgY29kZSwg
d2hpY2ggaXMgdHJpZ2dlcmVkIGJ5IHRoZSBnZXRfcmVhbF9wb3dlcigpIHByZXNlbmNlLgpBbHNv
LCBwbGVhc2UgYWRkIHRoZSB0YWdzLCBzbyBpdCBjYW4gYmUgY29sbGVjdGVkIGJ5IHN0YWJsZSBr
ZXJuZWwuCgpGaXhlczogNjE1NTEwZmUxM2JkMjQzNDYxMCAoInRoZXJtYWw6IGRldmZyZXFfY29v
bGluZzogcmVtb3ZlIG9sZCBwb3dlciAKbW9kZWwgYW5kIHVzZSBFTSIpCkNjOiA1LjExKyA8c3Rh
YmxlQHZnZXIua2VybmVsLm9yZz4gIyA1LjExKwoKQlRXLCBob3cgZGlkIHlvdSB0cmlnZ2VyIHRo
YXQgaXNzdWU/IERvIHlvdSBoYXZlIHN1Y2ggYSBkcml2ZXIKd2hpY2ggcHJvdmlkZXMgdGhpcyBn
ZXRfcmVhbF9wb3dlcigpIGNhbGxiYWNrPwoKUmVnYXJkcywKTHVrYXN6CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
