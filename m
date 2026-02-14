Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07206EDF154
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Feb 2026 10:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6h1SZzOg8Y/whIKj6DOyANftI1JJf2ffvlurNduKiUg=; b=As6AwVUjS0N0zW
	12wBY7rolvn83/AQ+gF+oZQTLFkDdXMAwGr6M6XCvM3Yc+pKkelOL18GNdSkj8t0wpgjyGjsmRBfg
	RY9mdUF+P1LVF9FA21eHL0lJtFYbiTqK1kJEg6EwEVRHaaI1KdJ3zLOoNnsjZorFyXhUhxVeRtutT
	p8cdyjggB/Pc8kVmLtYln9W6GBCR38w/priRWfULiGBaSiUb1Q2wiX17U8g1wq7jLfWQK4H/PjVl9
	S0+AEcJlZ5wLJJdsg5uNcLpNu/+He+TxncWFqU/Bthe7ejc7kKk9ahNLI2PlhOSsX4g93bm7zJx+S
	O1sLTQtrAdVCVczLKsew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrCj2-00000004SOF-2Lnd;
	Sat, 14 Feb 2026 10:18:08 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrCiz-00000004SNS-0AGd
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Feb 2026 10:18:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1771064284;
 bh=UnRP19hiGW2EOW6F6Xb4s8Mr1BOvl4pRlTPUo+1yLhk=;
 b=OzAfW2r3K459QwSfKdrdrZkKFlUuFUwxMG1mTUzodWcFmn1t/FVDAWAhRYjdECei+lMX3AaJM
 ++37EaU+bNjpiebj0ZksEnp+YY+IVRi1fkcI8XjktOuZiSImt6GRCBLrtwbnJUGLJHF5qPKKiWm
 YH9PiOIvvBvqjjzvkRLTUqQBuyQUs1ZlfhF9hUut/65pQ/Hjf0j2XEJ6MRdEFrCZ54BmMUHDRcL
 cldgs9hbVTK3gBTktILJecKM+RL9Z7d/la5NX74LgvF+4fcepdL/6Hqz2q1krZ1gSsXTDBxzzAJ
 LYZ0gc/mzIHy3ftyJn4a5S4FYJ7DUCGF9LR6o8DZYkfg==
X-Forward-Email-ID: 69904bd531a6a6d7c5f99d43
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.6.4
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <64285bcf-7cbe-4732-bd45-44797846be23@kwiboo.se>
Date: Sat, 14 Feb 2026 11:17:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] ARM: dts: rockchip: Add Onion Omega4 Evaluation
 Board
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>
References: <20260210144845.317048-1-festevam@gmail.com>
 <20260210144845.317048-4-festevam@gmail.com>
 <a8c1bac7-9f67-4476-81ad-5271ff239b91@kwiboo.se>
 <CAOMZO5DJGQVOL4D4WWopduodedExMG-O65E1AzdXDQDWMP8A1Q@mail.gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <CAOMZO5DJGQVOL4D4WWopduodedExMG-O65E1AzdXDQDWMP8A1Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260214_021805_392431_266FA254 
X-CRM114-Status: GOOD (  12.47  )
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

SGkgRmFiaW8sCgpPbiAyLzExLzIwMjYgMTI6MDMgUE0sIEZhYmlvIEVzdGV2YW0gd3JvdGU6Cj4g
SGkgSm9uYXMsCj4gCj4gT24gVHVlLCBGZWIgMTAsIDIwMjYgYXQgMTo1M+KAr1BNIEpvbmFzIEth
cmxtYW4gPGpvbmFzQGt3aWJvby5zZT4gd3JvdGU6Cj4gCj4+IG5pdDogSXMgcnYxMTAzYiBuZWVk
ZWQgaW4gYWxsIHRocmVlIGNvbXBhdGlibGUgc3RyaW5ncz8gVGhlIGxhc3Qgb25lIGlzCj4+IGFs
cmVhZHkgcG9pbnRpbmcgb3V0IHRoYXQgdGhpcyBpcyB0aGUgcnYxMTAzYiBzb2MsIGFsc28gdGhl
IG90aGVyIE9uaW9uCj4+IE9tZWdhIGJvYXJkcyBpbi10cmVlIHVzZSBvbmlvbixvbWVnYSBhbmQg
b25pb24sb21lZ2EyKy4KPiAKPiBBbGwgdGhlIGJvYXJkcyBpbnNpZGUgYXJjaC9hcm0vYm9vdC9k
dHMvcm9ja2NoaXAvTWFrZWZpbGUgc3RhcnQgd2l0aAo+IHRoZSBTb0MgbmFtZSwgc28gSSBwcmVm
ZXIgdG8gYmUgY29uc2lzdGVudC4KCkkgZG8gbm90IGZvbGxvdywgdGhlIC5kdHMtZmlsZW5hbWUg
dHlwaWNhbGx5IGRvIG5vdCBmdWxseSBmb2xsb3cgdGhlCnRvcG1vc3QgY29tcGF0aWJsZSBmb3Ig
dGhlIGJvYXJkIG9uIFJvY2tjaGlwIHBsYXRmb3JtLgoKVGhlIHR5cGljYWwgY29udmVudGlvbiBm
b3IgUm9ja2NoaXAgcGxhdGZvcm0gaXM6CgogY29tcGF0aWJsZTogIjx2ZW5kb3I+LDxib2FyZCBt
b2RlbD5bLTxyZXZpc2lvbj5dIiwKICAgICAgICAgICAgIFsiPHZlbmRvcj4sPHNvbSBtb2RlbD4i
LF0KICAgICAgICAgICAgICJyb2NrY2hpcCw8c29jPiIKCmFuZCB0aGUgZmlsZW5hbWUgaXMgdHlw
aWNhbGx5OgoKIGJvYXJkIGR0czogPHNvYz4tWzx2ZW5kb3I+LV08Ym9hcmQgbW9kZWw+Wy08cmV2
aXNpb24+XS5kdHMKIHNvbSBkdHNpOiAgPHNvYz4tWzx2ZW5kb3I+LV08c29tIG1vZGVsPi5kdHNp
CiBzb2MgZHRzaTogIDxzb2M+LmR0c2kKClRoZSBib2FyZCBtb2RlbCB0eXBpY2FsbHkgb25seSBp
bmNsdWRlIDxzb2M+IGlmIHRoZXJlIGFyZSBtdWx0aXBsZQp2ZXJzaW9ucy9yZXZpc2lvbnMgc2hh
cmluZyBzYW1lL3NpbWlsYXIgbW9kZWwgbmFtZS4KCkFuZCBpbiBtYWlubGluZSBVLUJvb3Qgd2Ug
dHJ5IHRvIGZvbGxvdyB0aGlzIGNvbnZlbnRpb24gZm9yIFJvY2tjaGlwCmRlZmNvbmZpZyBuYW1p
bmc6CgogZGVmY29uZmlnOiBbPHZlbmRvcj4tXTxib2FyZCBtb2RlbD4tPHNvYz5fZGVmY29uZmln
CgpTbyBteSBxdWVzdGlvbiByZW1haW5zLCB3aHkgZG8gdGhlIHNvYyAocnYxMTAzYikgbmFtZSBu
ZWVkIHRvIGJlCnJlcGVhdGVkIGluIGFsbCBjb21wYXRpYmxlIHBhcnRzPyBJcyB0aGVyZSBleHBl
Y3RlZCB0byBiZSBhbm90aGVyIE9uaW9uCk9tZWdhNCB2ZXJzaW9uL3JldmlzaW9uIHVzaW5nIGEg
ZGlmZmVyZW50IFJvY2tjaGlwIFNvQz8KCkFuZCBpZiB0aGF0IGlzIHRoZSBjYXNlLCB0aGVuIHBy
b2JhYmx5IG9ubHkgdGhlIFNPTSBwYXJ0IHdvdWxkIG5lZWQKdGhlIHNvYyBwYXJ0LCBub3QgdGhl
IHRvcG1vc3QgcGFydCBvZiB0aGUgY29tcGF0aWJsZS4KClJlZ2FyZHMsCkpvbmFzCgo+IEkgaGF2
ZSBhZGRyZXNzZWQgYWxsIG9mIHRoZSBvdGhlciBmZWVkYmFjayB5b3UgZ2F2ZSBtZSBhbmQgc2Vu
dCBhIHY0Lgo+IAo+IFRoYW5rcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
