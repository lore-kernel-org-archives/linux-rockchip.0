Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDEFDC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 17:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X2eZXc+gUNvu/yMEbGByZx7JFTtpV0RErByQgJVl55o=; b=Qy0nO5/O9YRts3UbEKW0gSlqhl
	1nCHZvCKnQo8RI6zLtCCfzrqNCbisKcFc4cAk9/u95PDVVkGvVUFUZzqFojFpE3tgD7PLz5FscwPk
	Q9+pRbX3ByhtqoxuvnyKKLK2Nc3vc5f2LGuONGgkD5tliPv9q7xSkK1sGC3zZRBtq02wN+oraSvN2
	4XHJoXxs9Zo1eqKeHiJogK43NDfrTinwQv3+p/Tg8kt4MFEg8z7OkaGu8YXV9ac13LDauFSIjvqNd
	IPAiwVPrRQBSpP8omVm3to9DOkWGh/Scq4hvewdWJHW+bhnRWAnlUmpkg/ziU4duzFHYcQTY+7WUZ
	i4krnZxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxVJU-00000003A7F-0CFa;
	Thu, 18 Apr 2024 17:12:44 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxVJQ-00000003A52-26WR;
	Thu, 18 Apr 2024 17:12:42 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713460356;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Rp3BHNlpl/flqveHSNFLjR/0cIYJe61lDJbuZ02ahKw=;
	b=eFVjv2kUpj6gObSIVUobqG3KuNqSsChntjr6G5FYtO0Gwg/gunXstWMC5N266T0pKiKfgj
	jblXm/q+VI3uvhlf6fDXK04+kIgFsSYyC9s4PNa9RNGKx8iNjOKNdOobpzUHoeyjnJRVjr
	DNwZV0eux8gUTgn2TTwwrDNwmd6Fw9JGxfaHn9+tX6VCA4iovBYvxiIy1bdJxNHku2NFHr
	1AHWQ/tQTZvOBe+gCZfebSOWsshxMueBTbZT8vC8tEeQMm0BZuDZPJBrlUdUN8unVtlYgV
	H+g9hwO2HuheD6NOu7UufdNEi1u/dKPa93XxAwyObYvT+AGqoAH583GB+puXvA==
Date: Thu, 18 Apr 2024 19:12:35 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Conor Dooley <conor@kernel.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org, amadeus@jmu.edu.cn,
 FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Correct the descriptions
 for Radxa boards
In-Reply-To: <20240418-attach-tigress-bc2b9f844fc7@spud>
References: <1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org>
 <1888572.CQOukoFCf9@diego> <20240418-attach-tigress-bc2b9f844fc7@spud>
Message-ID: <c3c4a6ad48fbd62b44991c9bfd81570a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_101240_711073_F4917618 
X-CRM114-Status: GOOD (  13.69  )
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

T24gMjAyNC0wNC0xOCAxOTowNCwgQ29ub3IgRG9vbGV5IHdyb3RlOgo+IE9uIFRodSwgQXByIDE4
LCAyMDI0IGF0IDA2OjU5OjQyUE0gKzAyMDAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBBbSBE
b25uZXJzdGFnLCAxOC4gQXByaWwgMjAyNCwgMTg6MjY6MTkgQ0VTVCBzY2hyaWViIERyYWdhbiBT
aW1pYzoKPj4gPiBDb3JyZWN0IHRoZSBkZXNjcmlwdGlvbnMgb2YgYSBmZXcgUmFkeGEgYm9hcmRz
LCBhY2NvcmRpbmcgdG8gdGhlIHVwLXRvLWRhdGUKPj4gPiBkb2N1bWVudGF0aW9uIGZyb20gUmFk
eGEgYW5kIHRoZSBkZXRhaWxlZCBleHBsYW5hdGlvbiBmcm9tIE5hb2tpLiBbMV0gIFRvIHN1bQo+
PiA+IGl0IHVwLCB0aGUgc2hvcnQgbmFtaW5nLCBhcyBzcGVjaWZpZWQgYnkgUmFkeGEsIGlzIHBy
ZWZlcnJlZC4KPj4gPgo+PiA+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2Nr
Y2hpcC9CMjZDNzMyQTREQ0VBOUIzKzI4MmI4Nzc1LTYwMWItNGQ0YS1hNTEzLTQ5MjRiNzk0MDA3
NkByYWR4YS5jb20vCj4+ID4KPj4gPiBTdWdnZXN0ZWQtYnk6IEZVS0FVTUkgTmFva2kgPG5hb2tp
QHJhZHhhLmNvbT4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5q
YXJvLm9yZz4KPj4gPiAtLS0KPj4gPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2FybS9yb2NrY2hpcC55YW1sIHwgOCArKysrLS0tLQo+PiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+PiA+Cj4+ID4gZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+PiA+IGluZGV4IGZj
ZjczMTZlY2Q3NC4uYWU1OGUyNWMyOWVjIDEwMDY0NAo+PiA+IC0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+PiA+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+PiA+IEBAIC03Njcs
MjIgKzc2NywyMiBAQCBwcm9wZXJ0aWVzOgo+PiA+ICAgICAgICAgICAgLSBjb25zdDogcmFkeGEs
cm9ja3Bpcwo+PiA+ICAgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszMzA4Cj4+ID4KPj4g
PiAtICAgICAgLSBkZXNjcmlwdGlvbjogUmFkeGEgUm9jazIgU3F1YXJlCj4+ID4gKyAgICAgIC0g
ZGVzY3JpcHRpb246IFJhZHhhIFJvY2sgMiBTcXVhcmUKPj4gCj4+IEkgbWF5IGJlIGp1c3QgYmxp
bmQsIGJ1dCB3aGF0IGNoYW5nZWQgaGVyZT8KPiAKPiBUaGVyZSdzIG5vdyBhIHNwYWNlIGJlZm9y
ZSB0aGUgMi4KCkV4YWN0bHkuICBUaGF0J3MgcGFydCBvZiB0aGUgUmFkeGEncyBuYW1pbmcgY29u
dmVudGlvbiwgd2hpY2ggbWF5IGJlCnNlZW4gYXMgc29tZXdoYXQgc2ltaWxhciB0byB0aGUgZ2Vu
ZXJhbCBydWxlIG9mIHNwYWNpbmcgb3V0IHZhbHVlcyBhbmQKdGhlaXIgYXNzb2NpYXRlZCB1bml0
cywgZS5nLiAiMiBNQiIgaXMgaW4gZ2VuZXJhbCBwcmVmZXJyZWQgb3ZlciAiMk1CIgppbiBuZWFy
bHkgYW55IGtpbmQgb2YgYSBmb3JtYWxseSBjb3JyZWN0IGRvY3VtZW50LgoKQXMgYSBzaWRlIG5v
dGUsIHRoZXJlJ3MgZXZlbiBzby1jYWxsZWQgImhhbGYgc3BhY2UiIGFzIGEgdHlwb2dyYXBoaWNh
bApjb252ZW50aW9uIGZvciBzcGFjaW5nIG91dCB0aGUgdmFsdWVzIGFuZCB0aGUgYXNzb2NpYXRl
ZCB1bml0cy4gIFRoYXQKbWFrZXMgZm9ybWF0dGVkIHRleHQgd2l0aCBzdWNoIHNwYWNpbmcgYSBi
aXQgbmljZXIuIDopCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
