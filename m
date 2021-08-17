Return-Path: <SRS0=qLnh=NI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5780C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 03:40:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 502CB600D3
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 03:40:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 502CB600D3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=OJKgEnET8++MVk3AIAeS5a452mgxRWf2FUVDsLiH3r4=; b=1vR6qGInMRcqNZ
	3yrNguMnd4E/DuL6VfOfZJ6V+2s9cfvNJaIoHDABz3aqneFVw5wjlJNXrytSXO5t1Lu4MYGkHCSwH
	cUefnjtqjuwYWxKQJ0ipUe0mJEALeHBTsIpTW1GO81fmkBq6PHmOhTEzsfkvZQZ8WJySf1mBS5PDO
	xPwv2VCQNjEAahVWlFWv44IEnilsK6EFroDORclYB/Lo2ZnhbVn8uNBQqYnQcwozfkt/gGPLNFn5F
	uRmNWUfGBDzlrzKGCotmrdW/J5QbC78475mcXB2vlNvs8XwFfYFYbWVjb2Rs1BmJlktILUAoX7Kne
	vtHUsA0UAf5/KwjIcfPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFpxH-000yix-0Q; Tue, 17 Aug 2021 03:39:59 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFphJ-000w0F-4D
 for linux-rockchip@lists.infradead.org; Tue, 17 Aug 2021 03:23:30 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 370241E1F;
 Tue, 17 Aug 2021 11:23:18 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from desktop-sg5v5ea (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26932T140041694418688S1629170584977385_; 
 Tue, 17 Aug 2021 11:23:06 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3aa60112dad9a86c21af1330bc0cf243>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: jay.xu@rock-chips.com
X-RCPT-COUNT: 9
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Date: Tue, 17 Aug 2021 11:23:04 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: =?UTF-8?B?6K645YmR576k?= <jay.xu@rock-chips.com>, 
 "Mark Brown" <broonie@kernel.org>
Cc: lgirdwood <lgirdwood@gmail.com>, ulf.hansson <ulf.hansson@linaro.org>, 
 "Lee Jones" <lee.jones@linaro.org>, 
 "Zhang Changzhong" <zhangchangzhong@huawei.com>, 
 =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "Linux Kernel Mailing List" <linux-kernel@vger.kernel.org>
Subject: Re: Re: [PATCH 2/4] regulator: core: notify regulator enable with the
 voltage value
References: <20210816032003.1162779-1-jay.xu@rock-chips.com>, 
 <20210816032003.1162779-3-jay.xu@rock-chips.com>, 
 <20210816120059.GA4253@sirena.org.uk>, 
 <202108171117556125066@rock-chips.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2021081711230440061610@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210816_202329_502649_EC62957D 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
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

Ci0tLS0tLS0tLS0tLS0tCmpheS54dUByb2NrLWNoaXBzLmNvbQo+SGksIE1hcmsKPi0tLS0tLS0t
LS0tLS0tCj5qYXkueHVAcm9jay1jaGlwcy5jb20KPj5PbiBNb24sIEF1ZyAxNiwgMjAyMSBhdCAx
MToyMDowMUFNICswODAwLCBKaWFucXVuIFh1IHdyb3RlOgo+Pgo+Pj4gKwlyZXQgPSBfcmVndWxh
dG9yX2dldF92b2x0YWdlKHJkZXYpOwo+Pj4gKwlpZiAocmV0IDwgMCkKPj4+ICsJcmV0ID0gMDsK
Pj4+ICsKPj4+wqAgX25vdGlmaWVyX2NhbGxfY2hhaW4ocmRldiwgUkVHVUxBVE9SX0VWRU5UX0VO
QUJMRSwKPj4+IC0JwqDCoMKgwqAgTlVMTCk7Cj4+PiArCcKgwqDCoMKgICZyZXQpOwo+Pgo+PlRo
aXMgaXMgZ29pbmcgdG8gYmUgcmVhbGx5IGV4cGVuc2l2ZSBmb3IgZGV2aWNlcyB3aXRob3V0IGEg
Y2FjaGUgYW5kCj4+aXQncyBnb2luZyB0byBiZSAqdmVyeSogcmFyZWx5IHVzZWQgaWYgZXZlci4K
Pgo+SG93IGFib3V0IHRvIG9ubHkgdG8gbm90aWZ5IHRoZSBFVkVOVF9FTkFCTEUgd2l0aG91dCBn
ZXQgdm9sdGFnZSwgdGhlbiBkcml2ZXIgd2hvIGNhcmUgYWJvdXQgdGhpcyBldmVudAo+Y291bGQg
Z2V0IHRoZSB2b2x0YWdlIGl0c2VsZiA/IAoKaWdub3JlIG15IHJlcGx5IGhlcmUgYWJvdXQgRVZF
TlRfRU5BQkxFLCBzb3JyeQoKSG93IGFib3V0IHRoZSBuZXh0IHBhdGNoIGFib3V0IFBSRV9FTkFC
TEUgPyBBdCBsZWFzdCBJIG5lZWQgYSBub3RpZnkgd2l0aG91dCB2b2x0YWdlCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
