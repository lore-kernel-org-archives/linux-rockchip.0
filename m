Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 185D8C54E68
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 08:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AIwTCl3j8wLWIrClWl1crzgNFO8BU4+K7wpnBYPDcs8=; b=Ey4vfYFafxS07t
	SNVHjBU/GoD7GpOzGwV8t0RuSMnvd2cOreZ1nVh6oxx/mP16Pfq5jvE87S8xJJIQg923RSEricgAQ
	7bi5Alld5GvyGbl8UrD7oe7iIvZUvRmhaswY7Iw6YZNaqTQT5nrFORI3Rg2fBtCZFqy30QbAaMKop
	/Gv0IYrArNUUPHikAQ4uLjql/htAUdTeWJHjE85myr48QT31LkFMcOXCcb2UQeaenp4CCc6/OdZIh
	0ALx9AC3jYmG5v/Iykz9enNN32J9H8e4tH5XRgs2D2rG+mYmRO79FjQ6h88ZMiwu1DW9/tEoBf9gi
	n9pVbIRsN6AaBV/hnKBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnE2k-00000002Mbz-0LOX;
	Thu, 21 Mar 2024 08:44:58 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnE2g-00000002MaC-2GPU
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Mar 2024 08:44:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 284091007;
	Thu, 21 Mar 2024 01:45:26 -0700 (PDT)
Received: from [10.57.72.138] (unknown [10.57.72.138])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1BC9F3F67D;
	Thu, 21 Mar 2024 01:44:49 -0700 (PDT)
Message-ID: <3afdba54-2a85-46a6-a0f1-a61b4d0d8930@arm.com>
Date: Thu, 21 Mar 2024 08:44:46 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] thermal: devfreq_cooling: Fix perf state when
 calculate dfc res_util
Content-Language: en-US
To: =?UTF-8?B?5byg54Oo?= <ye.zhang@rock-chips.com>
Cc: "tao.huang" <tao.huang@rock-chips.com>, heiko <heiko@sntech.de>,
 "rui.zhang" <rui.zhang@intel.com>, "finley.xiao"
 <finley.xiao@rock-chips.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-pm <linux-pm@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "daniel.lezcano" <daniel.lezcano@linaro.org>, rafael <rafael@kernel.org>
References: <fb9b21f6-4c73-4a85-93cc-56e7c44359cb@arm.com>
 <ANIAEAAdHuSn9iPJ6HkLiaq2.3.1711010230402.Hmail.ye.zhang@rock-chips.com>
From: Lukasz Luba <lukasz.luba@arm.com>
In-Reply-To: <ANIAEAAdHuSn9iPJ6HkLiaq2.3.1711010230402.Hmail.ye.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_014454_637761_60CAFA7C 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
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

CgpPbiAzLzIxLzI0IDA4OjM3LCDlvKDng6ggd3JvdGU6Cj4gCj4gSGkgTHVrYXN6LAo+IAo+IFJl
Z2FyZGluZyB5b3VyIHF1ZXN0aW9uIGFib3V0IGhvdyBJIHRyaWdnZXJlZCB0aGUgaXNzdWUgYW5k
aWZJIGhhdmUgYSAKPiBkcml2ZXIgdGhhdCBwcm92aWRlcyB0aGUgZ2V0X3JlYWxfcG93ZXIoKSBj
YWxsYmFjazoKPiAKPiBJIGVuY291bnRlcmVkIHRoaXNpc3N1ZSB3aGlsZWNhbGN1bGF0aW5nIHRo
ZSBHUFUgcG93ZXIgY29uc3VtcHRpb24gb250aGUgCj4gUm9ja2NoaXAgUkszMzk5IHBsYXRmb3Jt
LiBUaGUgR1BVIG1vZGVsIGlzTWFsaSBUODYwLCB3aGljaCBpc2FuIEFSTSAKPiBNaWRnYXJkIEdQ
VS4gVGhlIGRyaXZlciB2ZXJzaW9uIGlzcjE4cDAtMDFyZWwwLCBhbmRpdCBwcm92aWRlcyB0aGUg
Cj4gZ2V0X3JlYWxfcG93ZXIoKSBjYWxsYmFjay5CZXN0IHJlZ2FyZHMsIFllIFpoYW5nCgpZZXMg
dGhhdCB3b3VsZCB0cmlnZ2VyIHRoZSBpc3N1ZS4gVGhhbmsgeW91IFllIGZvcgpzaGFyaW5nIHRo
YXQuCgpCVFcsIEkgYWxzbyB1c2UgUkszMzk5IGZvciBteSBtYWlubGluZSBrZXJuZWwgZGV2ZWxv
cG1lbnQuCkkgdXNlIHRoZSBSb2NrIFBpIDRTRSB3aXRoIHRoZSBtYWlubGluZSBHUFUgZHJpdmVy
CidwYW5mcm9zdCcuIFRoYXQgR1BVIGRyaXZlciBkb2Vzbid0IHN1cHBvcnQgdGhlIGdldF9yZWFs
X3Bvd2VyKCkKY2FsbGJhY2ssIGJ1dCBtYXliZSBpdCB3b3VsZCBiZSB3b3J0aCB0byBhZGQgaXQu
Li4KClBsZWFzZSBzZW5kIHRoZSB2MiBhbmQgSSB3aWxsIGFkZCBteSByZXZpZXdlZC1ieSB0YWcg
Zm9yIGl0LgoKUmVnYXJkcywKTHVrYXN6CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
