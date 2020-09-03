Return-Path: <SRS0=C2RB=CM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CEC1C433E7
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2020 10:02:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 38F47207EA
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2020 10:02:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="DGpHtnwM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 38F47207EA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9D1r3U7tjyyWqz3wj6RjCrobB5k1reqdToyllNU1xOg=; b=DGpHtnwM+wOR3ba/9rCO2YQw2
	pS+ZIf3Ues4J/98pgcEnn5v2EJWi1tDH9mC8KcCocL1woY9kBOJw+XfRO7UMEdRKLQvI2Beh8+jhK
	lO98GuBoax1K8VCWJ3zClB2a61DbYsdQch+99IBwEemaa9X9BhDxYEi9SH5Slla1EpXEBXJ9dB2UJ
	XYlKrLGRa/twXKjqQ2Cvgwp4MxXmUMLPyKLDfH1aJUMFx5MhQwOcfENZzYx++mkWn7YAD/C7EDFNP
	nO0FRAnsS77CiCr3iuUnZnnwXAsVZKAoEc4+bMdH0piPixrHdQ6TO6YdixiOYP5f/p7DKZ6hnUVcL
	T3k3Tttiw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDm4h-0001VA-H8; Thu, 03 Sep 2020 10:02:35 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDm4f-0001UR-AA
 for linux-rockchip@lists.infradead.org; Thu, 03 Sep 2020 10:02:34 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id B24E611BC;
 Thu,  3 Sep 2020 18:02:29 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.120] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P22906T140609272846080S1599127348778064_; 
 Thu, 03 Sep 2020 18:02:29 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a01c7cbd79e0e79cf896393d9e23060f>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: huangtao@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 2/6] clk: rockchip: Export
 rockchip_clk_register_ddrclk()
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
References: <20200903063147.10237-1-zhangqing@rock-chips.com>
 <20200903063147.10237-3-zhangqing@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <e2e3d0c0-1334-b823-b1a1-dfeee8ce9430@rock-chips.com>
Date: Thu, 3 Sep 2020 18:02:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200903063147.10237-3-zhangqing@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200903_060233_806414_3B3EDDB4 
X-CRM114-Status: GOOD (  17.10  )
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
Cc: huangtao@rock-chips.com, xf@rock-chips.com, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 xxx@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIDIwMjAvOS8zIOS4i+WNiDI6MzEsIEVsYWluZSBaaGFuZyB3cm90ZToKPiBUaGlzIGlzIHVz
ZWQgYnkgdGhlIFJvY2tjaGlwIGNsayBkcml2ZXIsIGV4cG9ydCBpdCB0byBhbGxvdyB0aGF0Cj4g
ZHJpdmVyIHRvIGJlIGNvbXBpbGVkIGFzIGEgbW9kdWxlLi4KPgo+IFNpZ25lZC1vZmYtYnk6IEVs
YWluZSBaaGFuZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9j
bGsvcm9ja2NoaXAvY2xrLWRkci5jIHwgMSArCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstZGRyLmMgYi9k
cml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstZGRyLmMKPiBpbmRleCA5MjczYmNlNGQ3YjYuLjI4MmI2
ZjIyZWIyMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstZGRyLmMKPiAr
KysgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstZGRyLmMKPiBAQCAtMTM2LDMgKzEzNiw0IEBA
IHN0cnVjdCBjbGsgKnJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9kZHJjbGsoY29uc3QgY2hhciAqbmFt
ZSwgaW50IGZsYWdzLAo+ICAgCj4gICAJcmV0dXJuIGNsazsKPiAgIH0KPiArRVhQT1JUX1NZTUJP
TChyb2NrY2hpcF9jbGtfcmVnaXN0ZXJfZGRyY2xrKTsKClRoaXMgbG9va3MgZ29vZCB0byBtZSwg
c28KClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoK
VGhhbmtzLAoKLSBLZXZlcgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
