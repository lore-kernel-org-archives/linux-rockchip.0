Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE196CD5BAC
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 09:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ame8VUmDF3LUgkrm6K48B56s+mn1bKAdGuVuAPR4UQo=; b=kmFeGNVSbf4WE1
	6j2uJhGXTXcqRTuKHTGBc7oAOQkq4br7toRPLThzKhqv7EtMCZaXiZH9OxHWR8neh35cQYLuMU3y7
	uuwDx1P7SJBuiSlYpIXAGIsRKr/U+9v0EGlXADN1aLJ2fpeNK3lqqUg9Br41w+c0j5XWUaiePGr6J
	D9ms27nsZbF9BpboqfNp5hKLu1KbW8MgKUGCJXwHFQx8tHHtq1wRQKj181RuZI5q5vAljAdzCum9Q
	Kd9M6/oQSK2u7HemDsZ7l5T108Avnhg503L3GKFObwMiyXVe/frOU0fNABZK5VIg4JnynzwOtMXSJ
	DG/UUKjqdLBaYHUzPeZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPzR2-00000007GQj-04Y7;
	Thu, 21 May 2026 09:11:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPzQz-00000007GPj-1rrt;
	Thu, 21 May 2026 09:11:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=TIUlDV1IY6nSQj5QOrfZh0BooD+8aP7O6GxuMWsxEsk=; b=2KzxyR2wRKxnh+joy3BFL2cZZk
	vGBZd0mQregl8fpn8XVyZSDLjYNBnMZAhJ/4U6m3UZl8inEFhnvxgBw7YObQbW5rHZmZh6z0mJ8kc
	6u41ZadiSY7KZJt6LFqiVAJ7CajYlUAzZxhEON/k23kiXwz+trWehGX8L5hmeeVQni1EiycJKe7hj
	stoFEHCBLXj/Y8pzmK7SKOnrZ5eOLaK3BzyR0WQSBJCMtHYRuLb9jo3Fds2pkkYmak3H7QDVFlfqf
	avmsLjHPVuxEQ9h1lPUjFNg07NpCUp8Xew60pgWibsZXZjiHgCceqgAsyMONFYJ8GqKnjNdGKLmWB
	2FYdTFZQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Jonas Karlman <jonas@kwiboo.se>
Cc: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v4 2/2] phy: rockchip: inno-hdmi: Remove deprecated way to
 configure TMDS rate
Date: Thu, 21 May 2026 11:11:14 +0200
Message-ID: <15479877.EVyyLHbfrO@phil>
In-Reply-To: <20260518180722.2480799-3-jonas@kwiboo.se>
References: <20260518180722.2480799-1-jonas@kwiboo.se>
 <20260518180722.2480799-3-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_021117_482199_201951F8 
X-CRM114-Status: UNSURE (   8.09  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gTW9udGFnLCAxOC4gTWFpIDIwMjYsIDIwOjA3OjIxIE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgSm9uYXMgS2FybG1hbjoKPiBUaGUgVE1EUyBjaGFyYWN0ZXIgcmF0ZSBv
ZiB0aGlzIFBIWSBpcyBjb25maWd1cmVkIHVzaW5nIFBIWSBidXMgd2lkdGgKPiBpbiBkb3duc3Ry
ZWFtIHZlbmRvciBrZXJuZWwgYW5kIG91dC1vZi10cmVlIHBhdGNoZXMsIGhvd2V2ZXIgbm8gaW4t
dHJlZQo+IGNvbnN1bWVyIG9mIHRoaXMgUEhZIGhhcyBldmVyIGNhbGxlZCBwaHlfc2V0X2J1c193
aWR0aCgpIHRvIGNoYW5nZSB0aGUKPiBUTURTIGNoYXJhY3RlciByYXRlIGFzIGN1cnJlbnRseSBv
bmx5IDgtYml0IFJHQiBvdXRwdXQgaXMgc3VwcG9ydGVkIGJ5Cj4gdGhlIEhETUkgZGlzcGxheSBk
cml2ZXIuCj4gCj4gVGhlIHNlcmllcyAiU3BsaXQgR2VuZXJpYyBQSFkgY29uc3VtZXIgYW5kIHBy
b3ZpZGVyIiBjbGFyaWZpZXMgdGhhdAo+IHBoeV9zZXRfYnVzX3dpZHRoKCkgaXMgaW50ZW5kZWQg
YXMgYSBwcm92aWRlci1vbmx5IGZ1bmN0aW9uLgo+IAo+IFJlbW92ZSB0aGUgZGVwcmVjYXRlZCB1
bnVzZWQgZmFsbGJhY2sgd2F5IHRvIGNvbmZpZ3VyZSBUTURTIGNoYXJhY3Rlcgo+IHJhdGUgbm93
IHRoYXQgdGhpcyBIRE1JIFBIWSBzdXBwb3J0IHVzaW5nIHBoeV9jb25maWd1cmUoKSB0byBjb25m
aWd1cmUKPiB0aGUgVE1EUyBjaGFyYWN0ZXIgcmF0ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKb25h
cyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+CgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVy
IDxoZWlrb0BzbnRlY2guZGU+ClRlc3RlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVj
aC5kZT4gI3JrMzMyOAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
