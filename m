Return-Path: <SRS0=3Wd+=LX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D48C11F66
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 09:16:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5FC8F61DE0
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 09:16:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5FC8F61DE0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=t-chip.com.cn
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l17UEnHhmF8jZxbmosxTeq6TcPPsGwlrIiQ/I8BPm3Y=; b=HnLRcFVsNg9k32G420BHueGZws
	ZQ7YP4wXvl/DMJulHMeoTYTU5v86mWChscyLPhCFnEAQVt9q52AxH7Vp1puWi4oeXtc2QU8AqisBA
	rBBdmKKKFJZ/bJRgBSk977FFwOlHs22M6NGa/3WAdLT0dOpmnBxm9fVU3M5VoT1K/PJ8ttanjLuhL
	IhcRMnQZ/sA+jMGFV7kCO9vKAHQEIkbH2Ju4Sf+xjpWR7h3A9QkRSmJnAVZ0il0mqljI/8q4o6gpL
	1narmryaoQPzAhcLtMfIBS0FUCDJaUWFLuNm/U4Iw9jUCe9QUpAm9Hhf31j+uvl2A23TceXtMPo6J
	C3MRxptA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ly9rK-00ALmK-8c; Tue, 29 Jun 2021 09:16:46 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ly9r7-00ALeh-G2; Tue, 29 Jun 2021 09:16:35 +0000
Received: from localhost (unknown [192.168.167.130])
 by regular1.263xmail.com (Postfix) with ESMTP id A7FA71C5D;
 Tue, 29 Jun 2021 17:16:01 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED2: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from [168.168.4.18] (unknown [183.57.25.242])
 by smtp.263.net (postfix) whith ESMTP id
 P12976T140334009423616S1624958159864211_; 
 Tue, 29 Jun 2021 17:16:00 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a0ef72e31076ad47cd5fe2cc15cf44d0>
X-RL-SENDER: djw@t-chip.com.cn
X-SENDER: djw@t-chip.com.cn
X-LOGIN-NAME: djw@t-chip.com.cn
X-FST-TO: linux-kernel@vger.kernel.org
X-RCPT-COUNT: 15
X-SENDER-IP: 183.57.25.242
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v0 2/2] arm64: dts: rockchip: add support for Firefly
 ROC-RK3399-PC-PLUS
To: linux-rockchip@lists.infradead.org
Cc: Wayne Chou <zxf@t-chip.com.cn>, Kongxin Deng <dkx@t-chip.com.cn>,
 Heiko Stuebner <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Jensen Huang <jensenhuang@friendlyarm.com>, Johan Jonker
 <jbx6244@gmail.com>, Liang Chen <cl@rock-chips.com>,
 Marty Jones <mj8263788@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210628035402.16812-1-djw@t-chip.com.cn>
 <20210628035402.16812-3-djw@t-chip.com.cn>
From: Levin <djw@t-chip.com.cn>
Message-ID: <149c2171-471e-343e-8126-38394746b044@t-chip.com.cn>
Date: Tue, 29 Jun 2021 17:15:59 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210628035402.16812-3-djw@t-chip.com.cn>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_021633_740037_B0FBDAF1 
X-CRM114-Status: GOOD (  12.74  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgYWxsLCBpcyBpdCBwb3NzaWJsZSB0byB0dXJuIG9uIHNvbWUgY29kZWMgbWl4ZXIgc3dpdGNo
IGluIHRoZSBkZXZpY2UgCnRyZWU/CgoKQ3VycmVudGx5LCB0byBoZWFyIHRvIHNvdW5kLCB3ZSBu
ZWVkIHRvIHJ1biB0aGUgZm9sbG93aW5nIGNvbW1hbmRzIGZyb20gCnRoZSB1c2VyIHNwYWNlOgoK
IMKgICMgdHVybiBvbiBtaXhlciBzd2l0Y2gKCiDCoCBhbWl4ZXIgLWMgMSBzc2V0ICdMZWZ0IE1p
eGVyJyBvbgogwqAgYW1peGVyIC1jIDEgc3NldCAnUmlnaHQgTWl4ZXInIG9uCgogwqAgIyByYWlz
ZSB2b2x1bWUKCiDCoCBhbWl4ZXIgLWMgMSBzc2V0ICdPdXRwdXQgMicgMzYKCgpJZiB0aGVzZSBz
ZXR0aW5ncyBjYW4gYmUgZW1iZWRkZWQgaW50byBkZXZpY2UgdHJlZSwgYW5kIHNldCBieSBrZXJu
ZWwgYXMgCmluaXRpYWwgQUxTQSBwYXRoIHNldHRpbmdzLAoKdXNlciBjYW4gaGVhciB0aGUgc291
bmQgd2l0aCB6ZXJvIEFMU0EgY29uZmlnLiBUaGF0J2xsIGJlIGdyZWF0LgoKCk9uIDIwMjEtMDYt
MjggMTE6NTQgQU0sIGRqd0B0LWNoaXAuY29tLmNuIHdyb3RlOgo+ICsKPiArCWVzODM4OC1zb3Vu
ZCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJzaW1wbGUtYXVkaW8tY2FyZCI7Cj4gKwkJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKPiArCQlwaW5jdHJsLTAgPSA8JmhwX2RldF9waW4+Owo+ICsJCXNp
bXBsZS1hdWRpby1jYXJkLG5hbWUgPSAicm9ja2NoaXAsZXM4Mzg4LWNvZGVjIjsKPiArCQlzaW1w
bGUtYXVkaW8tY2FyZCxmb3JtYXQgPSAiaTJzIjsKPiArCQlzaW1wbGUtYXVkaW8tY2FyZCxtY2xr
LWZzID0gPDI1Nj47Cj4gKwo+ICsJCXNpbXBsZS1hdWRpby1jYXJkLHdpZGdldHMgPQo+ICsJCQki
TWljcm9waG9uZSIsICJNaWMgSmFjayIsCj4gKwkJCSJIZWFkcGhvbmUiLCAiSGVhZHBob25lcyI7
Cj4gKwkJc2ltcGxlLWF1ZGlvLWNhcmQscm91dGluZyA9Cj4gKwkJCSJMSU5QVVQxIiwgIk1pYyBK
YWNrIiwKPiArCQkJIkhlYWRwaG9uZSBBbXAgSU5MIiwgIkxPVVQyIiwKPiArCQkJIkhlYWRwaG9u
ZSBBbXAgSU5SIiwgIlJPVVQyIiwKPiArCQkJIkhlYWRwaG9uZXMiLCAiSGVhZHBob25lIEFtcCBP
VVRMIiwKPiArCQkJIkhlYWRwaG9uZXMiLCAiSGVhZHBob25lIEFtcCBPVVRSIjsKPiArCj4gKwkJ
c2ltcGxlLWF1ZGlvLWNhcmQsaHAtZGV0LWdwaW8gPSA8JmdwaW8yIFJLX1BBNiBHUElPX0FDVElW
RV9ISUdIPjsKPiArCQlzaW1wbGUtYXVkaW8tY2FyZCxhdXgtZGV2cyA9IDwmaGVhZHBob25lc19h
bXA+Owo+ICsJCXNpbXBsZS1hdWRpby1jYXJkLHBpbi1zd2l0Y2hlcyA9ICJIZWFkcGhvbmVzIjsK
PiArCj4gKwkJc2ltcGxlLWF1ZGlvLWNhcmQsY3B1IHsKPiArCQkJc291bmQtZGFpID0gPCZpMnMx
PjsKPiArCQl9Owo+ICsKPiArCQlzaW1wbGUtYXVkaW8tY2FyZCxjb2RlYyB7Cj4gKwkJCXNvdW5k
LWRhaSA9IDwmZXM4Mzg4PjsKPiArCQl9Owo+ICsJfTsKPiArCj4KLS0gCkJlc3QgUmVnYXJkcyEK
CkxldmluIER1CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
