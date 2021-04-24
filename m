Return-Path: <SRS0=NLp6=JV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82656C433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 18:24:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F11661466
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 18:24:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1F11661466
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nNbkRnKSvwlwbDtcCxX4yrMhNY6T534ziJzQjjTm19o=; b=FDKCsGxG0ylfiCtCxXnCJ0P/g
	NXWK1mL4ejYM3E2TdwcyxryRODbg+x6e9WBwPYg16R+j+nCnRTW4qGD0FVHUSiiS4fhROCOyQAoXz
	V+Uimj7wEk5ok0rHeC7Khl6D4y4rR2YIYYLRq6jypJre9fK2hNGKABGeQpfsJlF7ap9IQ75gN19VS
	UN6r229I7011sVvQTvS+J/pQvWXDgRWnhd0eWKxwoRiSVuNs2eRhboebTwPIvmwy7kXcwF2UpLQ2n
	3ApGMk8HwCXB7friRzqcPZxTasWUtHSI2Hhe/l2+Ck5LB0Sy0aQpXw9Cgv4pH0+vJpXFMi1sfMEMm
	y1hFxz2vQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laMwl-004G0H-JT; Sat, 24 Apr 2021 18:24:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laMwX-004Fzj-II; Sat, 24 Apr 2021 18:23:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=D7P0FLCGAO5r4UQDbUwVBnfeH8bHG28gc2kqptfKHSg=; b=YHSBNdzjP655hKEon4Wdyds1yQ
 CemPALX877KiKJMqGSXynz2cVSbgnWIWn+6A0n/ubPKwvsTsOhaU0QghdKlSIO5woRDqcEa5ZQZ49
 B2xr1z3klCAbVMmcJtdqMHuBKVyxOzZExz2A1lbYIb1S+EAu0rNfrjCwFGHrS23gttlFbTLefoXyr
 /4mnCjMV0Ln6tpRkGOmVvdE0344pvAT4FiZMkKP8cXIUG+0Vn9BeIgexXBV9mEIjAokq9yFNWFatM
 2QSDa7vs99ySDDzKs59OAz7hvCkbvHMQfqAvgrm66rDZ9L88+kutZZCoNUy68YhYdqKYYFm+qyhHM
 hixkVTjw==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laMwU-00F76L-MP; Sat, 24 Apr 2021 18:23:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 483251F42EB1
Message-ID: <aa053292f1efd29d01f8e1685e82d6f1b520e9a3.camel@collabora.com>
Subject: Re: [PATCH 05/78] media: mdk-mdp: fix pm_runtime_get_sync() usage
 count
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com, Heiko Stuebner
 <heiko@sntech.de>,  Jacob Chen <jacob-chen@iotwrt.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>,  linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Date: Sat, 24 Apr 2021 15:23:29 -0300
In-Reply-To: <6ff9d0c049f94f38fd0b172fe3a6dbb36ba2b87e.1619191723.git.mchehab+huawei@kernel.org>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
 <6ff9d0c049f94f38fd0b172fe3a6dbb36ba2b87e.1619191723.git.mchehab+huawei@kernel.org>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210424_112346_888289_AEE57399 
X-CRM114-Status: GOOD (  11.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTWF1cm8sCgpPbiBTYXQsIDIwMjEtMDQtMjQgYXQgMDg6NDQgKzAyMDAsIE1hdXJvIENhcnZh
bGhvIENoZWhhYiB3cm90ZToKPiBUaGUgcG1fcnVudGltZV9nZXRfc3luYygpIGludGVybmFsbHkg
aW5jcmVtZW50cyB0aGUKPiBkZXYtPnBvd2VyLnVzYWdlX2NvdW50IHdpdGhvdXQgZGVjcmVtZW50
aW5nIGl0LCBldmVuIG9uIGVycm9ycy4KPiByZXBsYWNlIGl0IGJ5IHRoZSBuZXcgcG1fcnVudGlt
ZV9yZXN1bWVfYW5kX2dldCgpLCBpbnRyb2R1Y2VkIGJ5Ogo+IGNvbW1pdCBkZDgwODhkNWE4OTYg
KCJQTTogcnVudGltZTogQWRkIHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQgdG8gZGVhbCB3aXRo
IHVzYWdlIGNvdW50ZXIiKQo+IGluIG9yZGVyIHRvIHByb3Blcmx5IGRlY3JlbWVudCB0aGUgdXNh
Z2UgY291bnRlciBhbmQgYXZvaWQgbWVtb3J5Cj4gbGVha3MuCj4gCj4gV2hpbGUgaGVyZSwgY2hl
Y2sgaWYgdGhlIFBNIHJ1bnRpbWUgd2FzIGNhdWdodCBkdXJpbmcKPiBjaGlwc2V0IHByb2Jpbmcg
dGltZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIr
aHVhd2VpQGtlcm5lbC5vcmc+Cj4gLS0tCj4gwqBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tj
aGlwL3JnYS9yZ2EuYyB8IDQgKysrLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+IAoKVGhlIGNvbW1pdCBsb2cgIm1lZGlhIiBtZGstbWRwIiBpcyB3
cm9uZyBoZXJlLgoKTWF5YmUgeW91IGNhbiBzcXVhc2ggdGhpcyBjb21taXQgd2l0aCBtZWRpYTog
cmdhLWJ1ZjogdXNlIHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoKT8KClRoYW5rcywKRXplcXVp
ZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
