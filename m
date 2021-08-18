Return-Path: <SRS0=TfDj=NJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10DEFC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 01:16:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D028560FD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 01:16:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D028560FD9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=lGJwgCi99mdC+2vPKNCCjJ4pecDEngEhrKMtgzRWpiI=; b=Ioy10nMVmjITOq
	uToBkyLo9RDSSqgHp2x15dBIALMRRpIsyxjaeF/tU6KeWiGZwrO9vWI5V3bmqiQNgJkaowgrFW1kb
	mRKB9wCvGTOsaywIW2EZW+KiZsasrpxpNVDMqGh7biOu4Y+LF724LVOSJQ12e1lN7Bbd97qjHmTnY
	QDUAQb9TfXZyFTc4HRTmznJuLKcJ/XudGbMrbOgATGSIzk2ktvWhh7GgPld8aZqd6aSDi0zH/EcMW
	tACxHbxWzErAypXj3q63t6Tn7AQsxT7njr+votLRNHzAQdMATS1vrPVGxmx+CBryKkQT71EG+xJbH
	VLMHZiIpPTkPQDdW1eOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGABy-003qns-9Z; Wed, 18 Aug 2021 01:16:30 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGABp-003qlM-0U
 for linux-rockchip@lists.infradead.org; Wed, 18 Aug 2021 01:16:22 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 564021CDF;
 Wed, 18 Aug 2021 09:16:16 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from desktop-sg5v5ea (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P14799T139698420832000S1629249375171897_; 
 Wed, 18 Aug 2021 09:16:15 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <940a539b352a94575d61706b2ccba0e4>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 8
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Date: Wed, 18 Aug 2021 09:16:15 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: "Mark Brown" <broonie@kernel.org>
Cc: lgirdwood <lgirdwood@gmail.com>, ulf.hansson <ulf.hansson@linaro.org>, 
 "Lee Jones" <lee.jones@linaro.org>, 
 "Zhang Changzhong" <zhangchangzhong@huawei.com>, 
 =?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "Linux Kernel Mailing List" <linux-kernel@vger.kernel.org>
Subject: Re: Re: [PATCH v2 3/3] soc: rockchip: io-domain: do more thing about
 regulator notify
References: <20210817033848.1396749-1-jay.xu@rock-chips.com>, 
 <20210817033848.1396749-4-jay.xu@rock-chips.com>, 
 <20210817143612.GB4290@sirena.org.uk>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2021081809161536216322@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_181621_329031_1FFBA2D0 
X-CRM114-Status: UNSURE (   7.64  )
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

SGkgTWFyawotLS0tLS0tLS0tLS0tLQpqYXkueHVAcm9jay1jaGlwcy5jb20KPk9uIFR1ZSwgQXVn
IDE3LCAyMDIxIGF0IDExOjM4OjQ4QU0gKzA4MDAsIEppYW5xdW4gWHUgd3JvdGU6Cj4KPj4gKwl9
IGVsc2UgaWYgKGV2ZW50ICYgUkVHVUxBVE9SX0VWRU5UX0VOQUJMRSkgewo+PiArCXVWID0gcmVn
dWxhdG9yX2dldF92b2x0YWdlKHN1cHBseS0+cmVnKTsKPj7CoCB9IGVsc2Ugewo+Cj5JIGFtIHZl
cnkgc3VycHJpc2VkIHRoaXMgZG9lc24ndCBjYXVzZSBsb2NraW5nIGlzc3VlcyBnaXZlbiB0aGF0
IHdlCj5taWdodCBjYWxsIG5vdGlmaWVycyB3aXRoIHRoZSByZWd1bGF0b3IgQVBJJ3MgbG9ja3Mg
aGVsZC7CoCBIYXZlIHlvdQo+dGVzdGVkIHRoaXMgd2l0aCBsb2NrZGVwIG9uPyAKVGhhbmtzIGZv
ciB5b3VyIHJlcGx5LCB0aGVyZSByZWFsbHkgaGFzIGxvY2tpbmcgaXNzdWUsIG91ciB0ZXN0IHRl
YW0gZmFpbCB0byBmaW5kIG91dCBpdApidXQgZ2V0IGEgcGFzcyByZXN1bHQuCgpTbywgaWYgdGhl
IHZvbHRhZ2UgY2Fubm90IGdldCBoZXJlIGJ5IGRyaXZlciwgY2FuIHRoZSBub3RpZnkgwqBwYXNz
IGl0LCBsaWtlIHByZS12ZXJzaW9uIHBhdGNoPwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
