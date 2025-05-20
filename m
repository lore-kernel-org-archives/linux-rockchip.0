Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2A16C54E71
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 May 2025 18:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GgQ/XwpKGghhV/D4OI6A5Elzmi7aR2OKXyswP3GNjMc=; b=5BgMLstKIpjxls
	FFiBpHHHZdEy8ZXQEX1NDzF72omvj1VEVAano3z+8tBN3HiGohWunVOCXvigQsEAck+W6KNrxxjpT
	+Lzub2Li/uvf7YZJ7S+aP1eGZpvsbaXhzAmIMtPmyxHPiHEGy2n+OU0zF9TbLe7nLYrursD+nRZ+l
	oVTvgWXVZBwTCk+IiIl1+ot1MqH1LD4V5mxiN2pB3Fjl7qK6IBiNsHv5Ii0MobcyHetJuKsHqcmLc
	KJ8I1cIC9Yx/7gGwWOOeKsg0u4TZRLSHNAlTb6LPGI25GxpiLvvnutYH33c4flSqY3sc/GkUNOb0Q
	sPBCP8upOqEtLhqZPGeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHRtv-0000000Dp59-2ZTn;
	Tue, 20 May 2025 18:41:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHRrR-0000000DoZ5-108G;
	Tue, 20 May 2025 18:38:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=u3v+sVXn3QS5HAZR6rlTvCjsDNvFK3/tVpaq1eLWVu0=; b=TnlDoJMght2Uzy7gaxZQpE1Dr9
	FusfAMBSB6rYCB2jSSC2ocaG3pmnnC4ac1wuEfYHlSIWE//NkQMgDiSNIZBHdGGoNVIQf/sYrAhqG
	dGCCrZbu6H8GDMuGifH6qjt+7lRyybeemwOSPelvQg/A+kZfDzwOtwuL34RG66DgyKh3uw4RaAEBk
	poOhLxpuPu/Biw69o9blr5h40q1O9+pbNAgjjysf+DpidOyYQfHxJ266061ZSTRZrvEeI+NPv/zMw
	QIe7wsj6hRfUThpCKD8m2PTrPcOkSR5CfY3ChPnCz3zoRItFVsnX+Ha7e9T65SpWH1PgqgKBFhh+I
	pRpNb4HQ==;
Received: from [61.8.146.112] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uHRrM-0004Av-9K; Tue, 20 May 2025 20:38:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: ulf.hansson@linaro.org, mark.rutland@arm.com, lpieralisi@kernel.org,
 sudeep.holla@arm.com, Robin Murphy <robin.murphy@arm.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] pmdomain: rockchip: Relax SMCCC dependency
Date: Tue, 20 May 2025 20:38:39 +0200
Message-ID: <2393836.usQuhbGJ8B@phil>
In-Reply-To: <6f0a38e596c0727d0de13a29c9224f71bc7d30f1.1747760015.git.robin.murphy@arm.com>
References: <ab0476382e3342161beda94a45ddadb49b026dcd.1747760015.git.robin.murphy@arm.com>
 <6f0a38e596c0727d0de13a29c9224f71bc7d30f1.1747760015.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_113845_275003_75CDEADE 
X-CRM114-Status: GOOD (  15.80  )
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

QW0gRGllbnN0YWcsIDIwLiBNYWkgMjAyNSwgMTk6MTA6MTcgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBSb2JpbiBNdXJwaHk6Cj4gTW9zdCAzMi1iaXQgUm9ja2NoaXAgcGxh
dGZvcm1zIGRvIG5vdCB1c2UgUFNDSSwgc28gaGF2aW5nIHRvIHNlbGVjdAo+IEFSTV9QU0NJIHRv
IHNhdGlzZnkgYSBkZXBlbmRlbmN5IGNoYWluIHRvIHJldGFpbiB3b3JraW5nIHBvd2VyIGRvbWFp
bgo+IHN1cHBvcnQgaXMgYSBiaXQgd2VpcmQgYW5kIG5vbi1vYnZpb3VzLiBOb3cgdGhhdCB0aGUg
b2ZmZW5kaW5nIFNNQ0NDIEFQSQo+IGlzIHByb3Blcmx5IHN0dWJiZWQgb3V0IGZvciBvcHRpb25h
bCB1c2FnZSwgd2UgY2FuIHJlbGF4IHRoaXMgYWdhaW4uCj4gCj4gU2lnbmVkLW9mZi1ieTogUm9i
aW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4KCgpSZXZpZXdlZC1ieTogSGVpa28gU3R1
ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCk9mIGNvdXJzZSB0aGlzIG5lZWRzIHBhdGNoMSBvZiB0
aGlzIHNlcmllcyB0byBnZXQgYXBwbGllZApmaXJzdC4KCkkgdGhpbmsgZm9yIGJpc2VjdGFiaWxp
dHksIGRvaW5nIHRoaXMgZGlyZWN0bHkgaW4gcGF0Y2gxIG1pZ2h0CmJlIGxlc3MgZGFuZ2Vyb3Vz
IHRob3VnaD8KCgpIZWlrbwoKPiAtLS0KPiAgZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9LY29u
ZmlnIHwgMSAtCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMvcG1kb21haW4v
cm9ja2NoaXAvS2NvbmZpZwo+IGluZGV4IDIxOGQ0MzE4NmU1Yi4uZmZlNWU3Yjc4NDk0IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvS2NvbmZpZwo+ICsrKyBiL2RyaXZl
cnMvcG1kb21haW4vcm9ja2NoaXAvS2NvbmZpZwo+IEBAIC00LDcgKzQsNiBAQCBpZiBBUkNIX1JP
Q0tDSElQIHx8IENPTVBJTEVfVEVTVAo+ICBjb25maWcgUk9DS0NISVBfUE1fRE9NQUlOUwo+ICAJ
Ym9vbCAiUm9ja2NoaXAgZ2VuZXJpYyBwb3dlciBkb21haW4iCj4gIAlkZXBlbmRzIG9uIFBNCj4g
LQlkZXBlbmRzIG9uIEhBVkVfQVJNX1NNQ0NDX0RJU0NPVkVSWQo+ICAJZGVwZW5kcyBvbiBSRUdV
TEFUT1IKPiAgCXNlbGVjdCBQTV9HRU5FUklDX0RPTUFJTlMKPiAgCWhlbHAKPiAKCgoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
