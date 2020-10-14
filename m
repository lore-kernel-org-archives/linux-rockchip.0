Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7969EC433E7
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 01:49:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9200A21D7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 01:49:10 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="FI/QL+qI"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9200A21D7F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=adu3+7NZ8qSYjyTpR1duWqyuUv4WKO8AOGtPTILYKV4=; b=FI/QL+qIT2eQN7GF6Bnjw3gVU
	Z7VqfLhIYmHymiK5anf+s/bL6RAxtOZbN7kJvoJ/TSNLzfBZPhBSCMZNKq8m2Mnk7DnoLmDw9NRe1
	SPNkpJgiYzlod/tN1C0AzDKtCpFS0HuhD1PHdctsxa9Ae2Rk6dwH48n2oZYyNwUHiBZIJzbeUA5Ab
	fN4KifDEMjnSw7+FpJ/zkNBV2wq5VE/5DvKvSO3IlALxzxY0azyL3Zjy7eEm2jLN/aAMlSaeeTXN1
	aiudH0LHsW8asRyUm1ePaaUIC8lgqHmlSfj70eflk/KE9RCrO/vLBEOhnYF9Z47tzcnB58TSQ23j4
	ASLFwvXDw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSVua-0007r9-Gr; Wed, 14 Oct 2020 01:49:04 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSVuW-0007qd-Is
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 01:49:02 +0000
Received: from localhost (unknown [192.168.167.8])
 by regular1.263xmail.com (Postfix) with ESMTP id E9648975;
 Wed, 14 Oct 2020 09:48:54 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P2456T140206579640064S1602640125644670_; 
 Wed, 14 Oct 2020 09:48:54 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c249e46a4078a52f82170955db998a8c>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-kernel@vger.kernel.org
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2] drm/of: Consider the state in which the ep is disabled
To: Sandy Huang <hjc@rock-chips.com>, heiko@sntech.de,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
References: <20200707112526.18438-1-hjc@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <5c0cdb9d-8e35-fa0c-35b3-adfa7770fb30@rock-chips.com>
Date: Wed, 14 Oct 2020 09:48:43 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200707112526.18438-1-hjc@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201013_214901_601468_95007CC8 
X-CRM114-Status: GOOD (  15.57  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: huangtao@rock-chips.com, andy.yan@rock-chips.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTWFpbnRhaW5lcnMsCgogwqDCoMKgIERvZXMgdGhpcyBwYXRjaCByZWFkeSB0byBtZXJnZT8K
Ck9uIDIwMjAvNy83IOS4i+WNiDc6MjUsIFNhbmR5IEh1YW5nIHdyb3RlOgo+IGRvbid0IG1hc2sg
cG9zc2libGVfY3J0Y3MgaWYgcmVtb3RlLXBvaW50IGlzIGRpc2FibGVkLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogU2FuZHkgSHVhbmcgPGhqY0Byb2NrLWNoaXBzLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMv
Z3B1L2RybS9kcm1fb2YuYyB8IDMgKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9vZi5jIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9vZi5jCj4gaW5kZXggZmRiMDVmYmY3MmEwLi41NjVmMDVmNWYxMWIgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9vZi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2RybV9vZi5jCj4gQEAgLTY2LDYgKzY2LDkgQEAgdWludDMyX3QgZHJtX29mX2ZpbmRfcG9zc2li
bGVfY3J0Y3Moc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiAgIAl1aW50MzJfdCBwb3NzaWJsZV9j
cnRjcyA9IDA7Cj4gICAKPiAgIAlmb3JfZWFjaF9lbmRwb2ludF9vZl9ub2RlKHBvcnQsIGVwKSB7
Cj4gKwkJaWYgKCFvZl9kZXZpY2VfaXNfYXZhaWxhYmxlKGVwKSkKPiArCQkJY29udGludWU7Cj4g
Kwo+ICAgCQlyZW1vdGVfcG9ydCA9IG9mX2dyYXBoX2dldF9yZW1vdGVfcG9ydChlcCk7Cj4gICAJ
CWlmICghcmVtb3RlX3BvcnQpIHsKPiAgIAkJCW9mX25vZGVfcHV0KGVwKTsKCkxvb2tzIGdvb2Qg
dG8gbWUuCgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5j
b20+CgpUaGFua3MsCi0gS2V2ZXIKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
