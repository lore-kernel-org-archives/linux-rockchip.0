Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9773AC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 08:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHefhalQ6F/85lbFfWdz1Mw4TteJxcWysQz1LXI56p8=; b=F+3TsHg9uvN26h
	TsG9/UW2kLcLF0eV4bJYtlVoJD/1Ysj5hshs9j5urRX1tq4KKDZrMgWFkuCLznc768S8vzdvUpdoY
	NQkhcUKLKa81v54BfWBHzQafWPiOGlt26nCfbObANMMtf51Def6DN5EOUCf3QEj/fhDiflTVR4Xa9
	agiziy+95nQMvZc5PA59AdcCTj03jaRect261z4OXcyVLRXJiyQtQsW3oYHvAA4Lxn+5lAYDY4Y9X
	9AioIhmTuDFYMEHXLwme18F66ielOWYQcDEVasKj6Z7eRG+ZAOPGeO9+zL/cqQgha5jvZC3yG6AW/
	BNwWlayD5Cc8LpFgHf0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxNCI-00000001SG1-0yqv;
	Thu, 18 Apr 2024 08:32:46 +0000
Received: from smtpbgau2.qq.com ([54.206.34.216])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxNCE-00000001S95-0QB2;
	Thu, 18 Apr 2024 08:32:44 +0000
X-QQ-mid: bizesmtpsz8t1713429112t1pczxp
X-QQ-Originating-IP: V8JKS7yvHdhP0iKN6L3sa6gtMib2nnjrQRhERCSiCuQ=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 18 Apr 2024 16:31:49 +0800 (CST)
X-QQ-SSF: 01100000000000C0G000000A0000000
X-QQ-FEAT: ALw5QuVtm4XcJgw+J5V+e1OHlRlWVPQRtBJdXNg7y9MPl3lldtrMstt74caul
	bMSHUekZJddAOgMTKK/6SQcoFWyyk1Zuxo/0Xn/AM+AAIilub6RJsYj/EABugMx+km3y2Cq
	JqOCfiBKVWcHYvJZxKqQn6qXk5AG1Q4v1kUxMmk1C6m0HFrrfaMqYku0kdonl3SECJ5ddTC
	WU5AYb9lC/ggfFvSJs+a3XgwyZHL471CgrKosjXXP+jS3mDUkBnG/lGaN/FxLBjZZ4GJ0O6
	myDqQjaPMLgMK+YCKE8JUsb07fLVIWrXHi+hmfQ70YDrh7VrsfrADPkgFEc+N5qkaTM/vHb
	yHt+CZ6pLuPQbx0zsDnwpugnjssCZg/Cww57kCq5WVjFeZoK34txDMmVd+i8bYASJ6xMqXr
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16492290732445670536
Message-ID: <5C3644E82F788C47+c823a9ad-5dcd-4f20-b589-057c7d31eb22@radxa.com>
Date: Thu, 18 Apr 2024 17:31:49 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Radxa ROCK3 Model C
To: Dragan Simic <dsimic@manjaro.org>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, jonas@kwiboo.se, conor+dt@kernel.org,
 devicetree@vger.kernel.org, heiko@sntech.de, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org
References: <d7de2213-8dd2-42ec-9a30-a569ac71be3e@kwiboo.se>
 <20240417133016.62753-1-amadeus@jmu.edu.cn>
 <a144c052fcc2460a615a754a64a8f739@manjaro.org>
 <B26C732A4DCEA9B3+282b8775-601b-4d4a-a513-4924b7940076@radxa.com>
 <9e915ef29a2b49ce56446ec9d474eb64@manjaro.org>
 <ebf7b5f5ff4cd3c8cbee36f35df6ef5d@manjaro.org>
 <730e21fc4c74bf42b8a5e54473270899@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <730e21fc4c74bf42b8a5e54473270899@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz6a-0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_013242_564385_9F5B9581 
X-CRM114-Status: UNSURE (   5.88  )
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

SGksCgpPbiA0LzE4LzI0IDE2OjE4LCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gQWN0dWFsbHksIGEg
Y291cGxlIG9mIGJvYXJkIGR0cyhpKSBmaWxlcywgbGlzdGVkIGJlbG93LCBuZWVkIHRvCj4gYmUg
cmVuYW1lZCB0byBhZGQgZGFzaGVzIGludG8gdGhlaXIgbmFtZXMuwqAgVGhhdCwgdG9nZXRoZXIg
d2l0aAo+IHRoZSBvdGhlciBuYW1pbmcgY2xlYW51cHMgSSd2ZSBhbHJlYWR5IHByZXBhcmVkLCB3
b3VsZCBtYWtlIHRoZQo+IG5hbWluZyBjbGVhbnVwIG9mIHRoZSBSYWR4YSBib2FyZHMgY29tcGxl
dGUuCj4gCj4gLSBhcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMyODgtcm9jazItc29tLmR0
c2kKPiAgwqAgKC0+IGFyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzI4OC1yb2NrLTItc29t
LmR0c2kpCj4gLSBhcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMyODgtcm9jazItc3F1YXJl
LmR0cwo+ICDCoCAoLT4gYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMjg4LXJvY2stMi1z
cXVhcmUuZHRzKQoKdWguLi4gdGhleSBhcmUgcHJlaGlzdG9yaWMgcmVsaWNzLi4uIHRoZXJlIHdh
cyBubyBzdHJpY3QgcnVsZS4uLgooRllJLCB0aGVyZSBpcyByazMxODgtcmFkeGFyb2NrLmR0cyB0
b28pCgpJIGRvbid0IGZlZWwgYSBzdHJvbmcgbmVlZCBmb3IgdGhlbS4uLgoKLS0KRlVLQVVNSSBO
YW9raQpSYWR4YSBDb21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRkLgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
