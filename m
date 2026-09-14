Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF45EC88E6A
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2026 09:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9v4iX1fpLKgkB/QAbquCEO7lBsSYPMDL3OF1Jhl4Ffs=; b=Nvpf3VYlnaPcRz
	2hRKEX854KzI/osRGNn6Trnl3TVjAaHDleplPqp8upVopkih8Jc104q7aCBUvWkZM6nVZ+igOexhe
	kNQ4pzcJkBhtG0tCDSx8PMoDK8xzY1rb9UQeBedE7kt0I9FgVB0m6GWUZqU4NiMiUA15pWUZUnrIG
	fPdGcQWJAIQmBSQXz/2JkGBh0hdP6FzGp7nCwmUytQb4CvXZ6YcfERoveZTg9AcpqAQ+GFiCrqi3C
	EIJIUqbpUknwD6cJ6Tf01aUx2Xrk5Bx79KGRHxzQBNA5Rd42Kj7Wy0hMQjvI2oXCD8w8xuRzg53xC
	BYd+pfEvkKH/V6J0sSEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x62l3-00000002se7-37iY;
	Mon, 14 Sep 2026 09:13:49 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x62l1-00000002sdA-2fnY
	for linux-rockchip@lists.infradead.org;
	Mon, 14 Sep 2026 09:13:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1789377225;
 bh=wxs7CW/umC+9+eoq20Tn39ltfqLOc3ED03x/dPGj1Jo=;
 b=t9Rxma3BL5r5zWM671e/UmkLCwe60TeH6/NGaGibAOjjxtYO5syKWtIEZReNQDeFKgcapm+t1
 JVry6UchmDOVz852izKF0dlMa7+cvjGzhhI+1wuE6/nzNtAblTqVkf+kPg1QAup5cdqIu518G7c
 Ot1Ixtit1Ydb7IDM3tSBEuLBw+WOffpzElbxMxm3DU18AoqjZHfFN2fiSsvTtw+z8rejx1XonHD
 cdj7NF6XOx+ga4IRHz8fymjrBp00Z5LLSneeCyVqv3gifz1ohu8Ld+iCsjxVq4yJ+huxqW/UkQ8
 48CRb/ZrCImmG81yadGWUUB2vr9md98Q1o0vJsbB6UHA==
X-Forward-Email-ID: 6aa7bac38051bf6db6060bc8
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.14.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <5016be61-1a65-4fd6-850a-96fb0ab17d28@kwiboo.se>
Date: Mon, 14 Sep 2026 11:13:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/4] dt-bindings: arm: rockchip: Add FriendlyElec
 NanoPi R28S
To: HystericalDragons@proton.me
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chukun Pan <amadeus@jmu.edu.cn>, jensen <jensenhuang@friendlyarm.com>,
 Andrey Korshunov <razor1702@gmail.com>,
 Diederik de Haas <diederik@cknow-tech.com>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20260914-r28s-upstream-v5-0-7409c498e8dc@proton.me>
 <20260914-r28s-upstream-v5-1-7409c498e8dc@proton.me>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260914-r28s-upstream-v5-1-7409c498e8dc@proton.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_021348_059462_A6287CC0 
X-CRM114-Status: GOOD (  11.89  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiA5LzE0LzIwMjYgMTA6MjQgQU0sIOWuieWuuSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4g
RnJvbTog5a6J5a65IDxIeXN0ZXJpY2FsRHJhZ29uc0Bwcm90b24ubWU+Cj4gCj4gVGhlIE5hbm9Q
aSBSMjhTIGlzIGEgZHVhbCBnaWdhYml0IEV0aGVybmV0IHJvdXRlciBib2FyZCBiYXNlZCBvbiB0
aGUKPiBSb2NrY2hpcCBSSzM1MjggU29DLgo+IAo+IEFja2VkLWJ5OiBDb25vciBEb29sZXkgPGNv
bm9yLmRvb2xleUBtaWNyb2NoaXAuY29tPgo+IFNpZ25lZC1vZmYtYnk6IOWuieWuuSA8SHlzdGVy
aWNhbERyYWdvbnNAcHJvdG9uLm1lPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgfCA1ICsrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1
IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4gaW5kZXggODE3NDRmYmVlOS4uNzA5ZTJjYzQ0ZCAx
MDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tj
aGlwLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Jv
Y2tjaGlwLnlhbWwKPiBAQCAtMzQ3LDYgKzM0NywxMSBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAg
ICAgICAgIC0gZnJpZW5kbHlhcm0sbmFub3BpLXIycy1wbHVzCj4gICAgICAgICAgICAtIGNvbnN0
OiByb2NrY2hpcCxyazMzMjgKPiAgCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEZyaWVuZGx5RWxl
YyBOYW5vUGkgUjI4Uwo+ICsgICAgICAgIGl0ZW1zOgo+ICsgICAgICAgICAgLSBjb25zdDogZnJp
ZW5kbHlhcm0sbmFub3BpLXIyOHMKCk1heWJlIGluc3RlYWQgYWRkIHRoaXMgYm9hcmQgYXMgYSB2
YXJpYW50IHVuZGVyIGV4aXN0aW5nIE5hbm9QaSBaZXJvMiwKc2VlaW5nIGhvdyBpdCB3aWxsIHNo
YXJlIGEgY29tbW9uIC5kdHNpLWZpbGUgd2l0aCBaZXJvMiwgYW5kIGFsc28gd2l0aAp0aGUgTkVP
MyBQbHVzIG9uY2UgdGhpcyBzZXJpZXMgbGFuZHMuCgogICAgICAtIGRlc2NyaXB0aW9uOiBGcmll
bmRseUVsZWMgTmFub1BpIFIyOFMvWmVybzIKICAgICAgICBpdGVtczoKICAgICAgICAgIC0gZW51
bToKICAgICAgICAgICAgICAtIGZyaWVuZGx5YXJtLG5hbm9waS1yMjhzCiAgICAgICAgICAgICAg
LSBmcmllbmRseWFybSxuYW5vcGktemVybzIKICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJr
MzUyOAoKUmVnYXJkcywKSm9uYXMKCj4gKyAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazM1
MjgKPiArCj4gICAgICAgIC0gZGVzY3JpcHRpb246IEZyaWVuZGx5RWxlYyBOYW5vUGkgUjNTCj4g
ICAgICAgICAgaXRlbXM6Cj4gICAgICAgICAgICAtIGNvbnN0OiBmcmllbmRseWFybSxuYW5vcGkt
cjNzCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
