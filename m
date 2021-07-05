Return-Path: <SRS0=KyHE=L5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F64C07E98
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 08:44:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F064B61358
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 08:44:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F064B61358
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M456tBDwlaySD30SH4Mnaw4/jp/3k0UeEbQGh85t0ac=; b=156KjySKAwTfYh2Q7+azXTQCSR
	BFrTFKGRR7Rv2BqzMglOYlu401/D0xiZuSDF7Sr4MKMQ/LHHbLe6Z0svDqGffx9+Hwtcv3XoP16CI
	R8v6qpjDBpH+yTBA/U2ckmIk0Od4Qn5XvYNA7mX424LCDRTnY3qAky5V/9gbvJnXgmpXWv1AjWMw8
	k7TwVAvg/xtfMaSb+PwBrDWoIhnLg6E/FKpQJARy0YmgFhnA0f1PJPR+WMC+4+2YT8+b39fjjdEli
	x/W9PiRA8TM1xIVWbhPFUmZ+eEdhdBS9eH+TmaFV0lnXsPPW105iwMl4XAKFYMPI4wiiXeg1NP6P/
	53kx2REQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0KDb-008LKW-Ki; Mon, 05 Jul 2021 08:44:43 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0KDY-008LJf-28
 for linux-rockchip@lists.infradead.org; Mon, 05 Jul 2021 08:44:42 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id BF8FC12F8;
 Mon,  5 Jul 2021 16:44:33 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.31.83] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P12341T139824151373568S1625474670595314_; 
 Mon, 05 Jul 2021 16:44:31 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <003f08735e52a5842aba1f29514b94e6>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: linux-iio@vger.kernel.org
X-RCPT-COUNT: 9
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v1 1/2] iio: adc: rockchip_saradc: add support for rk3568
 saradc
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
References: <20210705011755.3408-1-xxm@rock-chips.com>
From: xxm <xxm@rock-chips.com>
Message-ID: <510d23f8-05b3-85a5-a753-40ec9e6c0d09@rock-chips.com>
Date: Mon, 5 Jul 2021 16:44:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210705011755.3408-1-xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_014440_885836_F40B3FEC 
X-CRM114-Status: GOOD (  15.31  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgYWxsLAoKVGhpcyBwYXRjaCBpcyBicm9rZW4sIGRpc2NhcmQuIFJlc2VuZCBpbiBvdGhlciBw
YXRjaCBzZXQuCgpTaW1vbiBYdWUuCgrU2iAyMDIxLzcvNSA5OjE3LCBTaW1vbiBYdWUg0LS1wDoK
PiBJdCBpcyBzaW1pbGFyIHRvIG90aGVyIGRldmljZXMsIGJ1dCB3aXRoIDggY2hhbm5lbHMuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBTaW1vbiBYdWUgPHh4bUByb2NrLWNoaXBzLmNvbT4KPiAtLS0KPiAg
IGRyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYyB8IDIyICsrKysrKysrKysrKysrKysr
KysrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5jIGIvZHJp
dmVycy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5jCj4gaW5kZXggMTI1ODRmMTYzMWQ4Li5mM2Vi
OGQyZTUwZGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5j
Cj4gKysrIGIvZHJpdmVycy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5jCj4gQEAgLTM1LDcgKzM1
LDcgQEAKPiAgICNkZWZpbmUgU0FSQURDX0RMWV9QVV9TT0NfTUFTSwkJMHgzZgo+ICAgCj4gICAj
ZGVmaW5lIFNBUkFEQ19USU1FT1VUCQkJbXNlY3NfdG9famlmZmllcygxMDApCj4gLSNkZWZpbmUg
U0FSQURDX01BWF9DSEFOTkVMUwkJNgo+ICsjZGVmaW5lIFNBUkFEQ19NQVhfQ0hBTk5FTFMJCTgK
PiAgIAo+ICAgc3RydWN0IHJvY2tjaGlwX3NhcmFkY19kYXRhIHsKPiAgIAljb25zdCBzdHJ1Y3Qg
aWlvX2NoYW5fc3BlYwkqY2hhbm5lbHM7Cj4gQEAgLTE5Miw2ICsxOTIsMjMgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCByb2NrY2hpcF9zYXJhZGNfZGF0YSByazMzOTlfc2FyYWRjX2RhdGEgPSB7Cj4g
ICAJLmNsa19yYXRlID0gMTAwMDAwMCwKPiAgIH07Cj4gICAKPiArc3RhdGljIGNvbnN0IHN0cnVj
dCBpaW9fY2hhbl9zcGVjIHJvY2tjaGlwX3JrMzU2OF9zYXJhZGNfaWlvX2NoYW5uZWxzW10gPSB7
Cj4gKwlTQVJBRENfQ0hBTk5FTCgwLCAiYWRjMCIsIDEwKSwKPiArCVNBUkFEQ19DSEFOTkVMKDEs
ICJhZGMxIiwgMTApLAo+ICsJU0FSQURDX0NIQU5ORUwoMiwgImFkYzIiLCAxMCksCj4gKwlTQVJB
RENfQ0hBTk5FTCgzLCAiYWRjMyIsIDEwKSwKPiArCVNBUkFEQ19DSEFOTkVMKDQsICJhZGM0Iiwg
MTApLAo+ICsJU0FSQURDX0NIQU5ORUwoNSwgImFkYzUiLCAxMCksCj4gKwlTQVJBRENfQ0hBTk5F
TCg2LCAiYWRjNiIsIDEwKSwKPiArCVNBUkFEQ19DSEFOTkVMKDcsICJhZGM3IiwgMTApLAo+ICt9
Owo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCByb2NrY2hpcF9zYXJhZGNfZGF0YSByazM1Njhf
c2FyYWRjX2RhdGEgPSB7Cj4gKwkuY2hhbm5lbHMgPSByb2NrY2hpcF9yazM1Njhfc2FyYWRjX2lp
b19jaGFubmVscywKPiArCS5udW1fY2hhbm5lbHMgPSBBUlJBWV9TSVpFKHJvY2tjaGlwX3JrMzU2
OF9zYXJhZGNfaWlvX2NoYW5uZWxzKSwKPiArCS5jbGtfcmF0ZSA9IDEwMDAwMDAsCj4gK307Cj4g
Kwo+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcm9ja2NoaXBfc2FyYWRjX21h
dGNoW10gPSB7Cj4gICAJewo+ICAgCQkuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxzYXJhZGMiLAo+
IEBAIC0yMDIsNiArMjE5LDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcm9j
a2NoaXBfc2FyYWRjX21hdGNoW10gPSB7Cj4gICAJfSwgewo+ICAgCQkuY29tcGF0aWJsZSA9ICJy
b2NrY2hpcCxyazMzOTktc2FyYWRjIiwKPiAgIAkJLmRhdGEgPSAmcmszMzk5X3NhcmFkY19kYXRh
LAo+ICsJfSwgewo+ICsJCS5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC1zYXJhZGMiLAo+
ICsJCS5kYXRhID0gJnJrMzU2OF9zYXJhZGNfZGF0YSwKPiAgIAl9LAo+ICAgCXt9LAo+ICAgfTsK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
