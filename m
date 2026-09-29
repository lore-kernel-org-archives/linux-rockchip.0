Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8616BCA5FA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 01:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xwNFfWT2/8aIkr0f01e1/ZnoYLGWtQ6l2A7C2yC2FA=; b=N60pAlUL/AQkqR
	I8kc23XRippbTguCXFvVwrgnzEsgSr1HzxnIaaBD8sKDN9yTfR7IbL8LKsPYqw8XwPKo4IATDdHL/
	6PyWwBZ9Dk39w86DcZBBNSL9K1l0cqYE3MZT29F9bnXKTGPO7I0u1//Pl3HM73lGPbB1JFekmT8dh
	SgIEBvw+fjj5MmJVn0kJJldER1lAXrlBapfurBRKRwoSlSCoGo9BGdQb1DtgBrp5JVoCq1OiUZc1o
	73NuyQ3wR0MyNl9e2vOFxF6R6usa51ZTy2uiiAtV4TkmciYs2EfXsxKRJXDZQA4JwErE9j7hRI2bz
	ckSY7nJTaiicL2gI0DPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBMp2-000000023x0-2BoY;
	Tue, 29 Sep 2026 01:39:56 +0000
Received: from mail-m16023653251.xmail.ntesmail.com ([160.236.53.251])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBMoz-000000023wM-0Vqf;
	Tue, 29 Sep 2026 01:39:55 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4f6b915ad;
	Tue, 29 Sep 2026 09:39:42 +0800 (GMT+08:00)
Message-ID: <9d48120b-8206-4c74-8e98-3a1aea2d08bf@rock-chips.com>
Date: Tue, 29 Sep 2026 09:39:41 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 0/5] power: reset: syscon-reboot-mode: Add support for
 Rockchip RK3576 reboot modes
To: Alexey Charkov <alchark@flipper.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sre@kernel.org>
References: <20260928-b4-rk3576-reboot-mode-v1-0-65486b03bd41@flipper.net>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260928-b4-rk3576-reboot-mode-v1-0-65486b03bd41@flipper.net>
X-HM-Tid: 0aa0ead1536503a4kunm68e8d0327ea435
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaGh5LVh4fSkpDGh9KT00ZGlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQkxVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=eWazI0Pnn7knjwGZECTX+ulASdL6vLBpupw8PlWpjyQgib35ZuGJmKiYgU1Vw8dmz1m3gQLEYhQJSXd8dY1GLLmWZlYU2Te4TnKAIwEvzJed/bZRiXJLR93PwydEDwbOO11FFLvJ8AmiXtluSCCjjqcwl1ebHyCNXuTNAFemS08=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=eawiXWtUZj4uCM8OnFXHNWvbRpsp4qvBIm2uw04gQNk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_183953_843891_C26697B2 
X-CRM114-Status: GOOD (  19.96  )
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

SGkgQWxleGV5CgrlnKggMjAyNi8wOS8yOSDmmJ/mnJ/kuowgMToxOCwgQWxleGV5IENoYXJrb3Yg
5YaZ6YGTOgo+IFJvY2tjaGlwIFJLMzU3NiBzdXBwb3J0cyByZWJvb3RzIHdpdGggYSBzcGVjaWZp
ZWQgYm9vdCBkZXZpY2UgcHJpb3JpdHkKPiBtb2RlLCBhbGxvd2luZyBvbmUgdG8gb3ZlcnJpZGUg
dGhlIGJvYXJkLWRlZmluZWQgc3RyYXBwaW5nIGNvbmZpZyBhbmQgdGhlCj4gT1RQIHByb2dyYW1t
ZWQgcHJpb3JpdHkgc2V0dGluZy4KPiAKPiBTdXBwb3J0aW5nIGl0IHJlcXVpcmVzIHNldmVyYWwg
Y2hhbmdlcyB0aG91Z2g6Cj4gLSBUaGUgYm9vdCBtb2RlIHJlcXVlc3QgbmVlZHMgdG8gYmUgZm9y
d2FyZGVkIHZpYSBURi1BIHRvIHRoZSBib290IFJPTQo+ICAgICh1cHN0cmVhbSBzaW5jZSBURi1B
IGNvbW1pdCAyYTk3YmEyMGU5MDEgKCJmZWF0KHJrMzU3Nik6IGZvcndhcmQgYW55Cj4gICAgYm9v
dCBST00gYm9vdCBtb2RlIHJlcXVlc3Qgb24gcmVzZXQiKSkKPiAtIFNvbWUgcG93ZXIgc3VwcGxp
ZXMgbmVlZCB0byBiZSBrZXB0IGFjdGl2ZSBhY3Jvc3MgdGhlIHJlYm9vdCB0byBwcmV2ZW50Cj4g
ICAgZWFybHkgYm9vdCBjb2RlIGZyb20gcnVubmluZyBpbnRvIGEgc3luY2hyb25vdXMgYWJvcnQK
PiAtIFRoZSBtYWdpYyB2YWx1ZXMgZm9yIGVhY2ggb2YgdGhlIHN1cHBvcnRlZCBib290IG1vZGVz
IG5lZWQgdG8gYmUgZGVmaW5lZAo+ICAgIGZvciB0aGUgT1MgdG8gdXNlCj4gCj4gVGhpcyBzZXJp
ZXMgZW5hYmxlcyB0aGUgYWJvdmUgd2l0aCB0aGUgUkszNTc2IEVWQjEgYm9hcmQgYXMgdGhlIGV4
YW1wbGUKPiB1c2VyLiBPdGhlciBib2FyZHMgd2lsbCBsaWtlbHkgbmVlZCBhIGNsb3NlIHRvIGlk
ZW50aWNhbCBjaGFuZ2UgdG8gbWFrZQo+IHVzZSBvZiB0aGlzIGZ1bmN0aW9uYWxpdHksIGJ1dCBu
ZWVkIHRlc3RpbmcuCj4gCgpOaWNlIHdvcmssIEkgZGlkIGEgcXVpY2sgdGVzdCBvbiBteSBSSzM1
NzYgRVZCMSBib2FyZCwgdGhpcwpzZXJpZXMgd29ya3MgZm9yIG1lLgoKVGVzdGVkLWJ5OiBTaGF3
biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KCj4gU2lnbmVkLW9mZi1ieTogQWxleGV5
IENoYXJrb3YgPGFsY2hhcmtAZmxpcHBlci5uZXQ+Cj4gLS0tCj4gQWxleGV5IENoYXJrb3YgKDUp
Ogo+ICAgICAgICBkdC1iaW5kaW5nczogc29jOiByb2NrY2hpcDogYWRkIGJvb3QgUk9NIGRvd25s
b2FkIGJvb3QgbW9kZQo+ICAgICAgICBkdC1iaW5kaW5nczogcG93ZXI6IHJlc2V0OiBzeXNjb24t
cmVib290LW1vZGU6IGFsbG93IHN1cHBsaWVzCj4gICAgICAgIHBvd2VyOiByZXNldDogc3lzY29u
LXJlYm9vdC1tb2RlOiBlbmFibGUgc3VwcGxpZXMgZm9yIHRoZSBuZXh0IHN0YWdlCj4gICAgICAg
IGFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgcmVib290LW1vZGUgbm9kZSB0byBSSzM1NzYKPiAg
ICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IG5hbWUgdGhlIHJlYm9vdCBtb2RlIHN1cHBsaWVz
IG9uIFJLMzU3NiBFVkIxCj4gCj4gICAuLi4vYmluZGluZ3MvcG93ZXIvcmVzZXQvc3lzY29uLXJl
Ym9vdC1tb2RlLnlhbWwgICB8ICA4ICsrKysrCj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU3Ni1ldmIxLXYxMC5kdHMgICB8IDE2ICsrKysrKysrKwo+ICAgYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NzYuZHRzaSAgICAgICAgICAgfCAzNiArKysrKysrKysrKysr
KysrKysrKwo+ICAgZHJpdmVycy9wb3dlci9yZXNldC9zeXNjb24tcmVib290LW1vZGUuYyAgICAg
ICAgICAgfCAzOSArKysrKysrKysrKysrKysrKysrKysrCj4gICBpbmNsdWRlL2R0LWJpbmRpbmdz
L3NvYy9yb2NrY2hpcCxib290LW1vZGUuaCAgICAgICB8ICAyICsrCj4gICA1IGZpbGVzIGNoYW5n
ZWQsIDEwMSBpbnNlcnRpb25zKCspCj4gLS0tCj4gYmFzZS1jb21taXQ6IDYzNzVlNjFjMDFlOTNl
MzVlZTdhY2QzMzZhNjg5YWMxZmFlNGI1MDkKPiBjaGFuZ2UtaWQ6IDIwMjYwOTI4LWI0LXJrMzU3
Ni1yZWJvb3QtbW9kZS1kMzgwNGUzOWRmMDQKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gLS0KPiBBbGV4
ZXkgQ2hhcmtvdiA8YWxjaGFya0BmbGlwcGVyLm5ldD4KPiAKPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4gCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
