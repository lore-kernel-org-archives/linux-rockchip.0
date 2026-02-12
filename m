Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90D00EE3682
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Feb 2026 13:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pSKVE9p6aBVmV3py1ZBF4cLsJlHQl7pvddW5th/DDV8=; b=MKzd6VEUbWs6QdHT7MuSQPv6UH
	chFicCBfrWMGV5G4sR9mQEnizdgN7vfUyU3AOV4IXxQJXo0mCOJVjKq3bxidmTH5G4F+ygMDA6lWy
	TEXbqbzAwTc0uo1+0+j80vzPNVZcbFo4yvaw0O5L115R/1iNP85gcE6bFC6ncsW8CO/DIK3kumiah
	0LKMa2wVIVbKP4mnl5WICTVLyOXoKZatOxl5iTVqjXggpoWp9yKkUu3jZaGQ4y9/+eC/szO3fskX1
	BRN2xLiw5xhY0Z1rmxfRL5iRUX8HN9ET19y74Yg6i6h0j3exG2NXZcStrRgyrNrEeMU3kbJvXXQKb
	33tXSIDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqWRp-000000027eT-1rqC;
	Thu, 12 Feb 2026 13:09:33 +0000
Received: from mail-m3294.qiye.163.com ([220.197.32.94])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqWRj-000000027dr-3HcG
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Feb 2026 13:09:32 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 33fd3f957;
	Thu, 12 Feb 2026 21:09:14 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 "finley.xiao" <finley.xiao@rock-chips.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [REGRESSION] rk3588s-evb1-v10 board unable to boot based on
 linux-next
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <558b602a-1b30-2761-fff4-04d837656ea5@rock-chips.com>
 <87d7abb0-9231-7b9c-bd44-52042701ecd5@rock-chips.com>
 <13147970.MucGe3eQFb@diego>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <97daffa1-8767-5eaa-dc03-57e7d817c095@rock-chips.com>
Date: Thu, 12 Feb 2026 21:09:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <13147970.MucGe3eQFb@diego>
X-HM-Tid: 0a9c51f8527a09cckunmbfbda364202fa8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU9JGlZPHUhCTR5LTRkeGBlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=a7SNCOYRDbtxwlCObe6+nemfNHl9J6Ig2Bo0/4McUWa/4j7+i/RaJgL2JJPBzXUoGA4EvFDwxwDHjSxmVNmxHalZWsFHlGX2cSS0mtbKVG5L7yofNiBjQXCc1OfJEP1hodP3OxZOBNLwzSchnO7qyisg1rFcUR64BCibv675Z8g=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=OYKv3LR3HEhh1oD2ipmwRwk2Fvb0y7zItZ1R9uNjxqk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_050928_423836_01160314 
X-CRM114-Status: GOOD (  16.62  )
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

SGkgSGVpa28KCuWcqCAyMDI2LzAyLzEyIOaYn+acn+WbmyAxODo0OCwgSGVpa28gU3TDvGJuZXIg
5YaZ6YGTOgo+IEhpIFNoYXduCj4gCj4gQW0gRG9ubmVyc3RhZywgMTIuIEZlYnJ1YXIgMjAyNiwg
MTE6MzU6MTQgTWl0dGVsZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBTaGF3biBMaW46
Cj4+ICsgU2ViYXN0aWFuIFJlaWNoZWwKPj4KPj4g5ZyoIDIwMjYvMDIvMTIg5pif5pyf5ZubIDE1
OjU5LCBTaGF3biBMaW4g5YaZ6YGTOgo+Pj4gSGkgRGV0bGV2LAo+Pj4KPj4+IGNvbW1pdCBmNjE3
MzFiZDYwNjIgKCJhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIHRoZSB2ZHB1MzgxIFZpZGVvCj4+
PiBEZWNvZGVycyBvbiBSSzM1ODgiKSBsYW5kZWQgb24gbGludXgtbmV4dCBicmVha3MgcmszNTg4
cy1ldmIxLXYxMC4KPj4+IFJldmVydCBpdCBmaXhlcyB0aGUgcHJvYmxlbS4gVGhlIGZ1bGwgbG9n
IGNvdWxkIGJlIGZvdW5kIGhlcmVbMV0uCj4+PiBBbHNvIGNvbmZpcm0gdGhhdCBpdCBkb2Vzbid0
IHdvcmsgYmFzZWQgb24gTGludXMnIGxhdGVzdCBtYWlubGluZQo+Pj4gYXMgdGhpcyBjb21taXQg
bWVyZ2VkIGludG8gaXQgdGhpcyBjeWNsZS4KPj4+Cj4+PiBJZiBhbnl0aGluZyBJIGNvdWxkIGRv
IHRvIGhlbHAgZGVidWcgaXQsIHBsZWFzZSBsZXQgbWUga25vdy4KPj4+Cj4+Cj4+IEkgZGlkIHNv
bWUgcXVpY2sgZGVidWcgYW5kIGZvdW5kIGl0J3MgcmVsYXRlZCB0byBhIHBtZG9tYWluIHBhdGNo
Lgo+PiBDb21taXQgZjYxNzMxYmQ2MDYyIGhhcHBlbmVkIHRvIGVuYWJsZSBya3ZkZWMgd2hpY2gg
cmVseXMgb24gdGhlCj4+IFBEX1ZERUMqLCBzbyBJIGhhdmUgc2VudCBhIGZpeCBwYXRjaCBmb3Ig
eW91IHRvIGhlbHAgcmV2aWV3Ogo+Pgo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1y
b2NrY2hpcC8xNzcwODkxMzY0LTUyMTQ3LTEtZ2l0LXNlbmQtZW1haWwtc2hhd24ubGluQHJvY2st
Y2hpcHMuY29tL1QvI3UKPiAKPiBkbyB5b3Ugd2FudCB0byBwcm92aWRlIGEgcGF0Y2ggZm9yIHRo
ZSBldmIxIGJvYXJkIHRvIHRoYXQgYWRkcyB0aGUKPiBkb21haW4tc3VwcGxpZXMsIHNvIHRoYXQg
cGVvcGxlIGNhbiBzZWUgd2hhdCBpcyBuZWVkZWQgdG8gbWFrZQo+IHRoZSB2ZGVjIHdvcms/Cj4g
CgpJIGRvIGhhdmUgYSBwbGFuIHRvIGFkZCBpdCBmb3IgZXZiMSBib2FyZC4gQnR377yMSUlSQywg
cGVyaXBoZXJhbCBJUApzaG91bGQgYmUga2VwdCBhcyBkaXNhbGJlZCBpbiBzb2MgbGV2ZWwgZHRz
aSwgYW5kIHRoZW4gc2V0IGVuYWJsZWQgaW4KaW5kaXZpZHVhbCBib2FyZCBkdHMuIEJ1dCBya3Zk
ZWMgc3R1ZmZzIGluIHJrMzU4OC1iYXNlLmR0c2kgc2VlbXMgdG8KYmUgYW4gZXhjZXB0aW9uPwoK
Cj4gVGhhbmtzIGEgbG90IGZvciBmaW5kaW5nIHRoZSBpc3N1ZS4KPiBIZWlrbwo+IAo+IAo+IAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
