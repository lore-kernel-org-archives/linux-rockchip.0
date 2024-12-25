Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9978E7718B
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Dec 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=27KSok2Q2pYUNfPv0BlDIyogklpztW/VEdQ2ES0J0uA=; b=jgKfjfaWH71zZMwlZf2xnp9WtU
	l2GMO1QjJFAcxvO1MwRSNDrk0RyPjz3a7PvL5+pLCG/kWTSEpdRekTIYiEo7/FLZTtFWD5LWDBTD+
	QNsEci9pG86RNenM5F0eVXhqB0+jEmnrbp1RSz/GRqkPN9N2P7bybZvhWcYv8CPv6r0VKqFJqp9RD
	y9EwAxcs+FS9vquYSw1CEHH92Ed0ZwWIrLIfmYZG6jRLrjMPrVRa/gksrFz5uPVotbAj7/zB0C+fH
	9AlhoGVC4g+l0p89yrljN6fHdSXiVcX0utft0wqHhwMZ4oW9OBa1vPRZxjuzrNyQiLxRonkrzZXcp
	0zJrjjXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQOaL-0000000DdHt-0rgg;
	Wed, 25 Dec 2024 10:25:49 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQOaH-0000000DdHE-2iP6
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Dec 2024 10:25:47 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1735122342;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KJoO6N3feJ2TrVEWe6L5F7MU+fuXqYGMTmx6IRrrj2E=;
	b=MKLL6Bc2Jq5aCx0UgqelyptWb3w8Qv8mhbqwZyaxInilv37UiyPbNTyb1c1ql8gA8Bqc5P
	0Hdm2vobl8F1mxV/z9dsSJ5WNdMbNJaSbFySfaede3hCIr4mz3IbbJ8TU6ZHbAqjhiulOY
	9IjVUuFxrttMmWgO+F0G0BJXN3SbfmgsJyRJ6kYA7KISr3oPjCXXNF/YFkpTO9wm6JCKlN
	RNLzp3fdd3kg6Tc2dPuvnM4r0rUnAxaFqWFbyLCCCzIf5b3dXdbr+JI5+xva4aikEISbNW
	CzbasdlR/wR/2zsNnmYovQ41FF63qcqXzAjUNOdV36MgIhWfk47guiEbWM2V0g==
Date: Wed, 25 Dec 2024 11:25:41 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Alexey Charkov <alchark@gmail.com>, heiko@sntech.de, robh@kernel.org,
 conor+dt@kernel.org, inindev@gmail.com, liujianfeng1994@gmail.com,
 jonas@kwiboo.se, dmt.yashin@gmail.com, sebastian.reichel@collabora.com,
 tim@feathertop.org, kever.yang@rock-chips.com,
 marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, michael.riesch@wolfvision.net,
 macromorgan@hotmail.com, krzk+dt@kernel.org
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add Radxa ROCK 5B+ and rebase
 Radxa ROCK 5B
In-Reply-To: <4FAC0C844CFF6787+c12ba0e7-c1da-4fe7-aa0f-79340b9ff81a@radxa.com>
References: <20241224210912.2121-1-naoki@radxa.com>
 <CABjd4YxLnays9Ho0bDR0pTyz5Tjx3C=0U6bcRdQ8ntyu68VVGg@mail.gmail.com>
 <4FAC0C844CFF6787+c12ba0e7-c1da-4fe7-aa0f-79340b9ff81a@radxa.com>
Message-ID: <28cff8b07bc271da3672076b32f13b44@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_022545_976330_C1EE412C 
X-CRM114-Status: GOOD (  19.65  )
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

SGVsbG8gTmFva2ksCgpPbiAyMDI0LTEyLTI1IDExOjA5LCBGVUtBVU1JIE5hb2tpIHdyb3RlOgo+
IE9uIDEyLzI1LzI0IDE3OjMyLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPj4gT24gV2VkLCBEZWMg
MjUsIDIwMjQgYXQgMTI6MjLigK9QTSBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+IAo+
PiB3cm90ZToKPj4+IAo+Pj4gVGhlIFJhZHhhIFJPQ0sgNUIrIGlzIGFuIHVwZ3JhZGVkIHZlcnNp
b24gb2YgdGhlIFJhZHhhIFJPQ0sgNUIuCj4+PiAKPj4+IFRoaXMgcGF0Y2ggc2VyaWVzIGludHJv
ZHVjZXMgYSBzaGFyZWQgLmR0c2kgdGhhdCBjYW4gYmUgdXNlZCBvbiB0aGUKPj4+IG5ldyBSYWR4
YSBST0NLIDVCKywgdGhlIGV4aXN0aW5nIFJhZHhhIFJPQ0sgNUIsIGFuZCB0aGUgdXBjb21pbmcg
Cj4+PiBSYWR4YQo+Pj4gUk9DSyA1VC4KPj4+IAo+Pj4gVGhpcyBwYXRjaCBzZXJpZXMgaW5jbHVk
ZXMgImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgVVNCLUMgc3VwcG9ydCAKPj4+IHRvCj4+PiBS
T0NLIDVCIiBieSBTZWJhc3RpYW4gUmVpY2hlbFsxXS4KPj4+IAo+Pj4gWzFdIAo+Pj4gaHR0cHM6
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXJvY2tjaGlwL3BhdGNoLzIwMjQx
MjEwMTYzNjE1LjEyMDU5NC0xLXNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20vCj4+PiAK
Pj4+IEZVS0FVTUkgTmFva2kgKDMpOgo+Pj4gICAgZHQtYmluZGluZ3M6IGFybTogcm9ja2NoaXA6
IEFkZCBSYWR4YSBST0NLIDVCKwo+Pj4gICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBSYWR4
YSBST0NLIDVCKwo+Pj4gICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IENvbnZlcnQgUmFkeGEgUk9D
SyA1QiB0byB1c2Ugc2hhcmVkIC5kdHNpCj4+IAo+PiBUaGlzIG9uZSBkb2Vzbid0IGxvb2sgZXF1
aXZhbGVudCB0byB0aGUgZXhpc3RpbmcgUk9DSyA1QiBkZXZpY2UgdHJlZQo+PiBhZnRlciB5b3Vy
IGNoYW5nZXMgKEkndmUgbm90aWNlZCBpbiBwYXJ0aWN1bGFyIHRoYXQgZmFuIGNvb2xpbmcgbGV2
ZWxzCj4+IGFyZSBkaWZmZXJlbnQgLSBidXQgdGhhdCdzIGp1c3QgdGhlIHBhcnQgSSByZW1lbWJl
ciB3ZWxsIHNpbmNlIEkKPj4gbW9kaWZpZWQgaXQgZWFybGllciwgdGhlcmUgbWlnaHQgYmUgbW9y
ZSBkaWZmZXJlbmNlcykuCj4gCj4gVGhhbmtzIGZvciBwb2ludGluZyEKPiAKPj4gV291bGQgeW91
IG1pbmQgcmVhcnJhbmdpbmcgdGhlIHBhdGNoZXMgc28gdGhhdCB0aGUgc3BsaXQgb2YgUk9DSyA1
Qgo+PiBkdHMgaW50byBhIGNvbW1vbiAuZHRzaSBhbmQgcGVyLWJvYXJkIC5kdHMgYWRkaXRpb25z
IGNvdWxkIGJlIG1hZGUKPj4gb25lLXRvLW9uZSBlcXVpdmFsZW50IHdpdGhvdXQgZnVuY3Rpb25h
bCBjaGFuZ2VzLCBhbmQgdGhlbiBhZGQgUk9DSwo+PiA1QisgYW5kIGFueSBvdGhlciByZXF1aXJl
ZCBjaGFuZ2VzIG9uIHRvcCBvZiB0aGF0Pwo+IAo+IE15IHByaW9yaXR5IGdvYWwgaXMgdG8gYWRk
IHN1cHBvcnQgZm9yIFJPQ0sgNUIrIGFuZCA1VC4gVGhpcyB0aW1lLCBJCj4gd2lsbCBub3QgbWFr
ZSBhbnkgY2hhbmdlcyB0byBST0NLIDVCIHNvIGFzIG5vdCB0byBicmVhayBpdC4gVGhlcmVmb3Jl
LAo+IEkgd2lsbCBkcm9wIFBBVENIIDMvMy4KPiAKPiAoSSB3b3VsZCBsaWtlIHRvIG1ha2UgY2hh
bmdlcyB0byBST0NLIDVCIGF0IHNvbWUgcG9pbnQuKQoKSSBzZWUsIGJ1dCBJIHRoaW5rIHRoYXQg
anVzdCBkcm9wcGluZyB0aGUgcGF0Y2ggMy8zIHdvdWxkbid0IGJlIHRoZQpiZXN0IHBvc3NpYmxl
IG9wdGlvbi4gIFRoYXQgd2F5IHlvdSdkIGVuZCB1cCB3aXRoIGEgImRhbmdsaW5nIiBkdHNpCmZp
bGUsIHVzZWQgYnkganVzdCBvbmUgYm9hcmQgZHRzIGZpbGUsIHdoaWNoIGlzIGEgYml0IHN1Ym9w
dGltYWwuCgpJJ2Qgc3VnZ2VzdCB0aGF0IHlvdSBhY3R1YWxseSBkbyBpdCB0aGUgcmlnaHQgd2F5
LCBzbyB0byBzcGVhaywgYnkKYWN0dWFsbHkgY29udmVydGluZyB0aGUgUk9DSyA1QiBkdHMgZmls
ZSB0byB1c2UgdGhlIHNoYXJlZCBkdHNpIGZpbGUKaW4gYSB3YXkgdGhhdCBtYWtlcyB0aGUgdHJh
bnNpdGlvbiBtb3JlIG9idmlvdXMgYW5kLCBhcyBhIHJlc3VsdCwKZWFzaWVyIHRvIHJldmlldywg
YXMgYWxyZWFkeSBzdWdnZXN0ZWQgYWJvdmUuCgpBcyBhbm90aGVyIG9wdGlvbiwgSSdtIGdvaW5n
IHRvIGFzayBSYWR4YSBmb3IgYSBzYW1wbGUgUk9DSyA1QisgYm9hcmQKc29vbiwgZm9yIG15IFJv
Y2tjaGlwIFNvQyBiaW5uaW5nIHByb2plY3QsIGFuZCBpZiBJIGFjdHVhbGx5IGdldCBpdCwKSSBj
b3VsZCB0YWtlIG92ZXIgdGhpcyBzZXJpZXMsIHRvIGhlbHAgeW91IHRoYXQgd2F5IHdpdGggZ2V0
dGluZyB0aGUKcGF0Y2ggc2VyaWVzIGluIGJldHRlciBzaGFwZS4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
