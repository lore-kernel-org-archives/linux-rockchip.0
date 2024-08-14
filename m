Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51C06C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 20:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHCnJBpmXMp+OrnEqCyyui/TcBvC4B0TKGgSDtkwP/o=; b=QXO5DSdGzbaDZo
	bnix1jsX5cxee0NJA4rAzUvOgsNNs8gqnBW2gTenW8wFIPb56+9ejdWhxWZrQHRNXh2UwtMUr2wtZ
	T6xGwm7r9mxpgN4V+8zEqM9qCpY06X7VzCTGNlngN6k+LynSMNRLIVoagpxUJ7zBsI1GWke9j8km+
	hrfgfxVheg5+F16h+yqFXQhpf6l8+g6W3TSsYfgi37ej/SmMcjR6I8Jv9fb6QmZ/pMXfwgVl8ECem
	s1odUA7DG9uRSINBqDoREehufN6Afi1bM/CWCmGsTOsmN8IYIQGe6VoFn2xHwWZ1foUYU1RNTXZSo
	L2z0yZf+hGGvdArU3odg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seKFR-000000088Mk-0Ez7;
	Wed, 14 Aug 2024 20:05:33 +0000
Received: from smtpbgjp3.qq.com ([54.92.39.34])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seKFO-000000088Ls-0La9
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 20:05:32 +0000
X-QQ-mid: bizesmtp78t1723665894tol9pfmz
X-QQ-Originating-IP: 0CmNpw7wIhF2CU58efNS/vbtmCYFa8T0Mz7UAFubGZs=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 15 Aug 2024 04:04:51 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 11596511658323087123
Message-ID: <4F2DC0BFBC9A7038+cd76538a-6a56-44a1-9ae6-f81e9088ff48@radxa.com>
Date: Thu, 15 Aug 2024 05:04:51 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add support for Radxa
 ROCK Pi E v3.0
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240814095727.1662908-1-naoki@radxa.com>
 <9908246.lRi8OiJO2u@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <9908246.lRi8OiJO2u@diego>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_130530_411358_8F0F44D2 
X-CRM114-Status: GOOD (  10.44  )
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

SGksCgp0aGFua3MgZm9yIHRoZSByZXZpZXchCgpPbiA4LzE0LzI0IDIwOjMwLCBIZWlrbyBTdMO8
Ym5lciB3cm90ZToKPiBBbSBNaXR0d29jaCwgMTQuIEF1Z3VzdCAyMDI0LCAxMTo1NzoyNiBDRVNU
IHNjaHJpZWIgRlVLQVVNSSBOYW9raToKPj4gUmFkeGEgUk9DSyBQaSBFIHYzLjAgaXMgYSBjb21w
YWN0IG5ldHdvcmtpbmcgU0JDWzFdIHVzaW5nIHRoZSBSb2NrY2hpcAo+PiBSSzMzMjggY2hpcC4K
Pj4KPj4gWzFdIGh0dHBzOi8vcmFkeGEuY29tL3Byb2R1Y3RzL3JvY2twaS9waWUKPj4KPj4gU2ln
bmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPgo+PiAtLS0KPj4gQ2hh
bmdlcyBpbiB2NDoKPj4gLSB1cGRhdGUgY29tcGF0aWJsZSBzdHJpbmcgZm9yIE9wZW5XcnQKPj4g
LSBkcm9wIEEtYiB0YWcKPj4gQ2hhbmdlcyBpbiB2MzoKPj4gLSBjb2xsZWN0IEEtYiB0YWcKPj4g
Q2hhbmdlcyBpbiB2MjoKPj4gLSBmaXggdHlwbyBpbiBjb21taXQgbWVzc2FnZQo+PiAtIGFkZCBt
aXNzaW5nIC0tLSBpbiBjb21taXQgbWVzc2FnZQo+PiAtIGFkZCBuZXcgc2VjdGlvbiBpbnN0ZWFk
IG9mIG5ldyBpdGVtIGluIHJvY2tjaGlwLnlhbWwKPj4gLS0tCj4+ICAgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIHwgNSArKysrKwo+PiAgIDEgZmls
ZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+PiBpbmRleCAyYWQ4MzVmNDA2
OGUuLjFkNDI2ZDRlMTkyOCAxMDA2NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+PiBAQCAtNzkwLDYgKzc5MCwxMSBAQCBw
cm9wZXJ0aWVzOgo+PiAgICAgICAgICAgICAtIGNvbnN0OiByYWR4YSxyb2NrcGktZQo+PiAgICAg
ICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazMzMjgKPj4gICAKPj4gKyAgICAgIC0gZGVzY3Jp
cHRpb246IFJhZHhhIFJPQ0sgUGkgRSB2My4wCj4+ICsgICAgICAgIGl0ZW1zOgo+PiArICAgICAg
ICAgIC0gY29uc3Q6IHJhZHhhLHJvY2stcGktZS12Mwo+PiArICAgICAgICAgIC0gY29uc3Q6IHJv
Y2tjaGlwLHJrMzMyOAo+PiArCj4gCj4gUGxlYXNlIGRvbid0IGFkZCBhIHNlcGFyYXRlIGVudHJ5
IGZvciB0aGUgc2ltcGxlIHVwZGF0ZWQgdmVyc2lvbi4KPiBJbnN0ZWFkIGdyb3VwIGl0IHdpdGgg
dGhlIG9yaWdpbmFsIFJvY2sgUGkgZSBhYm92ZS4KPiAKPiBGb3IgaG93IHRvIGRvIGl0LCBsb29r
IGF0IHRoZSBSYWR4YSBaZXJvIDN3LzNlIC4KCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcv
cHJvamVjdC9saW51eC1yb2NrY2hpcC9wYXRjaC8yMDI0MDcxMTIxMDUyNi40MDQ0OC0xLW5hb2tp
QHJhZHhhLmNvbS8KCmlzIHRoaXMgcmlnaHQgd2F5PwoKLS0KRlVLQVVNSSBOYW9raQpSYWR4YSBD
b21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRkLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
