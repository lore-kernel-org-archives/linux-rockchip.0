Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E6E0E7718B
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Dec 2024 10:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BciF5+HORQ5zxFyLAOLcBWtJbbqC2wbGJ9/TAZV5sAo=; b=gCaB09iEtHdzFw
	DqNFtvqJJoWLpssiUcPrexGE34ADadIq38lEDk+HDGwsU7aa7/pm0OrERONR2S+QGGwRmXZdvO/5H
	cIqBKGkz/lunRG4VpCMbLm4MnfFruH11xKfEGfyOq9rUP+3/ey0bg0UCS+TwfDrM9IMOYhtIEptxF
	viR7KMy43m+KDYAkTIuxx88TM6aFkiSbxuqEBKMOIFIM4aCNSEaQ/+ErscUzlhMOaz/23R2UiePnv
	XbCslzC3f/pIPxDG1U8mLVg/7gsJbPmehVhbHDgndgVY/ErzweJXsMaiqL8u4Yl7kY1xpPgyWYRiq
	paQLZuAa/7jyNLynRfIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQOMQ-0000000DcEI-31ZH;
	Wed, 25 Dec 2024 10:11:26 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQOLF-0000000Dbz9-418d
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Dec 2024 10:10:16 +0000
X-QQ-mid: bizesmtpip2t1735121387tkwd6g2
X-QQ-Originating-IP: emESMqMKvjO+IcNFlbeJQJBnooD3qynZfOnK8JPR8iE=
Received: from [IPV6:240f:10b:7440:1:44cd:ada9 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 25 Dec 2024 18:09:42 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 11688568092456734613
Message-ID: <4FAC0C844CFF6787+c12ba0e7-c1da-4fe7-aa0f-79340b9ff81a@radxa.com>
Date: Wed, 25 Dec 2024 19:09:41 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add Radxa ROCK 5B+ and rebase
 Radxa ROCK 5B
To: Alexey Charkov <alchark@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com,
 liujianfeng1994@gmail.com, jonas@kwiboo.se, dmt.yashin@gmail.com,
 sebastian.reichel@collabora.com, tim@feathertop.org,
 kever.yang@rock-chips.com, marcin.juszkiewicz@linaro.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 michael.riesch@wolfvision.net, macromorgan@hotmail.com, krzk+dt@kernel.org,
 dsimic@manjaro.org
References: <20241224210912.2121-1-naoki@radxa.com>
 <CABjd4YxLnays9Ho0bDR0pTyz5Tjx3C=0U6bcRdQ8ntyu68VVGg@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <CABjd4YxLnays9Ho0bDR0pTyz5Tjx3C=0U6bcRdQ8ntyu68VVGg@mail.gmail.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MxijBxVjjH5DYEpn2I7kLj1e1qndFvK+cWaj6O5qplQMQcSQnetLIteI
	1Cl8UaTzc0JW3g547Qh/IcO577ATbgWnOXNJWisqCAo9JfJV5Y4c3OP/eRXLmqIQnDyjkwo
	rInJp1qyomh0amFmW2rn4LAQ7abOA7lRGruNXlIr70tCWSgf+rQyWgG+oztJbXg4kXDqAK5
	5R80weH9RAAhyZUgm/XzYAr0eUpK6unoAdI1I3k/tRSgSnFFQmNFbCfAk0aCMvVnLr6cNIh
	w+dFxHITByJ+GGbBEXh2TQoJfmifwBVx7a8wFo0q0e905v7ugYb25aP5CLVDe9OSZoLayC0
	gTzHa+X8Q6at4PgOU1ZD3SEhuk32UtmhB4KnPL8dP2QdSXw7amrWBvBBb9fv4iI3WqHvw4R
	ShWOfJYhH3lyT5BqaG8Rn2VttqiAdbgkRLodvy8WHO9zu2Sb5i6+T2XaVWwqKVPAgbuDbfq
	qr/h2s/yAb/VN9vZm5718mjFKZVxLt6BF+cArg4DPMK1a1aXoYBlHZ149kp4s8MNb77E5b9
	VTt29Ee4WNNbWkctWgAJSVr6YpAn4O3HhovW+UPUO0jpZo4LjOSv+DhuXsSEQirh4SycoQw
	G37LatyLsjp8h0sS5KRoT9+06+6yNJKDHWVnHGMsnpExRB7hiKhw7n7H+x0nsFrQeNfliWj
	48RXG8SrTQwIfocnbIfWDr3EulbAI310JHcP8dOKpj1Yo1rxLiylzjC8dyHBtHgBg//DMKP
	kqAWF2+WcVtWzkhzZ/wYH7pGf6o4wicG30s5V8UXbba/KFDNJKWKDH2PQ0raOSnUcNMe8l7
	7BrryYxgh0mqIiQ0cCFXZiB/Ob2LX241U498rW7B2543SVQMklPpclGc/QOK0S3HxUSF+Vp
	ivVjX2BGThTm6Kxd2Mil2n5N8oidbxIRBZOUeGWOueHbrf+2UJfaU5wxPLP0kWrm
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_021014_355014_763A40D3 
X-CRM114-Status: GOOD (  16.99  )
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

SGkgQWxleGV5LAoKT24gMTIvMjUvMjQgMTc6MzIsIEFsZXhleSBDaGFya292IHdyb3RlOgo+IEhp
IE5hb2tpLAo+IAo+IE9uIFdlZCwgRGVjIDI1LCAyMDI0IGF0IDEyOjIy4oCvUE0gRlVLQVVNSSBO
YW9raSA8bmFva2lAcmFkeGEuY29tPiB3cm90ZToKPj4KPj4gVGhlIFJhZHhhIFJPQ0sgNUIrIGlz
IGFuIHVwZ3JhZGVkIHZlcnNpb24gb2YgdGhlIFJhZHhhIFJPQ0sgNUIuCj4+Cj4+IFRoaXMgcGF0
Y2ggc2VyaWVzIGludHJvZHVjZXMgYSBzaGFyZWQgLmR0c2kgdGhhdCBjYW4gYmUgdXNlZCBvbiB0
aGUKPj4gbmV3IFJhZHhhIFJPQ0sgNUIrLCB0aGUgZXhpc3RpbmcgUmFkeGEgUk9DSyA1QiwgYW5k
IHRoZSB1cGNvbWluZyBSYWR4YQo+PiBST0NLIDVULgo+Pgo+PiBUaGlzIHBhdGNoIHNlcmllcyBp
bmNsdWRlcyAiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBVU0ItQyBzdXBwb3J0IHRvCj4+IFJP
Q0sgNUIiIGJ5IFNlYmFzdGlhbiBSZWljaGVsWzFdLgo+Pgo+PiBbMV0gaHR0cHM6Ly9wYXRjaHdv
cmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXJvY2tjaGlwL3BhdGNoLzIwMjQxMjEwMTYzNjE1
LjEyMDU5NC0xLXNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20vCj4+Cj4+IEZVS0FVTUkg
TmFva2kgKDMpOgo+PiAgICBkdC1iaW5kaW5nczogYXJtOiByb2NrY2hpcDogQWRkIFJhZHhhIFJP
Q0sgNUIrCj4+ICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgUmFkeGEgUk9DSyA1QisKPj4g
ICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IENvbnZlcnQgUmFkeGEgUk9DSyA1QiB0byB1c2Ugc2hh
cmVkIC5kdHNpCj4gCj4gVGhpcyBvbmUgZG9lc24ndCBsb29rIGVxdWl2YWxlbnQgdG8gdGhlIGV4
aXN0aW5nIFJPQ0sgNUIgZGV2aWNlIHRyZWUKPiBhZnRlciB5b3VyIGNoYW5nZXMgKEkndmUgbm90
aWNlZCBpbiBwYXJ0aWN1bGFyIHRoYXQgZmFuIGNvb2xpbmcgbGV2ZWxzCj4gYXJlIGRpZmZlcmVu
dCAtIGJ1dCB0aGF0J3MganVzdCB0aGUgcGFydCBJIHJlbWVtYmVyIHdlbGwgc2luY2UgSQo+IG1v
ZGlmaWVkIGl0IGVhcmxpZXIsIHRoZXJlIG1pZ2h0IGJlIG1vcmUgZGlmZmVyZW5jZXMpLgoKVGhh
bmtzIGZvciBwb2ludGluZyEKCj4gV291bGQgeW91IG1pbmQgcmVhcnJhbmdpbmcgdGhlIHBhdGNo
ZXMgc28gdGhhdCB0aGUgc3BsaXQgb2YgUk9DSyA1Qgo+IGR0cyBpbnRvIGEgY29tbW9uIC5kdHNp
IGFuZCBwZXItYm9hcmQgLmR0cyBhZGRpdGlvbnMgY291bGQgYmUgbWFkZQo+IG9uZS10by1vbmUg
ZXF1aXZhbGVudCB3aXRob3V0IGZ1bmN0aW9uYWwgY2hhbmdlcywgYW5kIHRoZW4gYWRkIFJPQ0sK
PiA1QisgYW5kIGFueSBvdGhlciByZXF1aXJlZCBjaGFuZ2VzIG9uIHRvcCBvZiB0aGF0PwoKTXkg
cHJpb3JpdHkgZ29hbCBpcyB0byBhZGQgc3VwcG9ydCBmb3IgUk9DSyA1QisgYW5kIDVULiBUaGlz
IHRpbWUsIEkgCndpbGwgbm90IG1ha2UgYW55IGNoYW5nZXMgdG8gUk9DSyA1QiBzbyBhcyBub3Qg
dG8gYnJlYWsgaXQuIFRoZXJlZm9yZSwgSSAKd2lsbCBkcm9wIFBBVENIIDMvMy4KCihJIHdvdWxk
IGxpa2UgdG8gbWFrZSBjaGFuZ2VzIHRvIFJPQ0sgNUIgYXQgc29tZSBwb2ludC4pCgpCZXN0IHJl
Z2FyZHMsCgotLQpGVUtBVU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBM
dGQuCgo+IFNlZSB3aGF0IERyYWdhbiBkaWQgd2hlcmUgaGUgcHJlcGFyZWQgcGFyZW50IC5kdHNp
IGZvciBwZXItdmFyaWFudCBPUFBzIFsxXQo+IAo+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1yb2NrY2hpcC85ZmZlZGMwZTJjYTdmMTY3ZDlkNzk1YjJhOGY0M2NiOWY1NmE2NTNi
LjE3MTc5MjMzMDguZ2l0LmRzaW1pY0BtYW5qYXJvLm9yZy8KPiAKPiBCZXN0LAo+IEFsZXhleQo+
IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
