Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6AADCE7CE7
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 09:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nw7xNTtqh90W4Z4fqT9Cnp8O1b2dCWW0/oJwLrsY2e8=; b=DVoNtsbP6AtVom
	SFPpcrnVqET6t0Z+FeQKxLr1dkUNno7x8ndgMA4xtBv5Sj2X4QLpmX2qaGzvo8TR1Zf0168PDkfF5
	jqSAZkI/ut3ilaXoxtb77GrUJ07sq9B771r6w6rn86dFYwq/5iHRtYr9ZQFPSEAsyqt1pvgk1NKKH
	Gdaxbv6sHYysW7Io1frMBe4bcyBnYgNWTJBuebIxBzKDCS3oW1dsxZfHsBUeDnv224NOV60DnytMC
	9ByJYNfYIFy6IDRqGEwu89H6RAztRiLY8QD5zyUH9OOPkv/ro4/9Nf0AT3QtM5Wl3+xHugyKXQP83
	t7fWOwvOJEK+uLFf+beA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svYly-00000002ALu-10Vp;
	Tue, 01 Oct 2024 09:02:22 +0000
Received: from out-180.mta1.migadu.com ([95.215.58.180])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svYlu-00000002AKb-0GDy
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Oct 2024 09:02:20 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helene.moe; s=key1;
	t=1727773333;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+2PdjCDGOk6QxIKmF2vicvMps7T1/RqF8HcaNkYp8E4=;
	b=Bgkh+NfasmTc46ZM68ek6kMrD9a8s0l7K5O6MkLPz4DoLO4pjH2/86MYbl3HpvXctvil+g
	jqNie6UyOaOwzA/TRe5UEMWG2DWEl9eyw5sY8s4X5wRJD/5i2jjxPv08kuJtjmwzdaPeCj
	W3P90QyO/s7LrBk6Djedixj50yuPh33VGlfuxn5WUzS+Y/E6NX89/f36WvLIQZu257M3T4
	2xSnyVK1AQ6J7oDudbYQpdiLHWMGRz80UaYkWZn+ErC2Dil9guSZFPPjQrcalh30xhnSdL
	aXhSIBdhWa3ZGlV5S0ckfAFpz3RetqS21OBoieBnqwUrnEo4JFwo5YNan16NuQ==
Date: Tue, 01 Oct 2024 11:02:11 +0200
Message-Id: <D4KCJ2SLGMWG.1ZGZRDMNDKAVD@helene.moe>
Subject: Re: [PATCH v3 4/5] driver core: Add device probe log helper
 dev_warn_probe()
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: =?utf-8?q?H=C3=A9l=C3=A8ne_Vulquin?= <oss@helene.moe>
To: "Dragan Simic" <dsimic@manjaro.org>, <linux-spi@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>
Cc: <broonie@kernel.org>, <heiko@sntech.de>, <gregkh@linuxfoundation.org>,
 <rafael@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
References: <cover.1727601608.git.dsimic@manjaro.org>
 <2be0a28538bb2a3d1bcc91e2ca1f2d0dc09146d9.1727601608.git.dsimic@manjaro.org>
In-Reply-To: <2be0a28538bb2a3d1bcc91e2ca1f2d0dc09146d9.1727601608.git.dsimic@manjaro.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_020218_759750_1FB7D55C 
X-CRM114-Status: UNSURE (   8.83  )
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

T24gU3VuIFNlcCAyOSwgMjAyNCBhdCAxMToyMSBBTSBDRVNULCBEcmFnYW4gU2ltaWMgd3JvdGU6
Cj4gU29tZSBkcml2ZXJzIGNhbiBzdGlsbCBwcm92aWRlIHRoZWlyIGZ1bmN0aW9uYWxpdHkgdG8g
YSBjZXJ0YWluIGV4dGVudCBldmVuCj4gc29tZSBvZiB0aGVpciByZXNvdXJjZSBhY3F1aXNpdGlv
bnMgZXZlbnR1YWxseSBmYWlsLiAgSW4gc3VjaCBjYXNlcywgZW1pdHRpbmcKPiBlcnJvcnMgaXNu
J3QgdGhlIGRlc2lyZWQgYWN0aW9uLCBidXQgd2FybmluZ3Mgc2hvdWxkIGJlIGVtaXR0ZWQgaW5z
dGVhZC4KPgo+IFRvIHNvbHZlIHRoaXMsIGludHJvZHVjZSBkZXZfd2Fybl9wcm9iZSgpIGFzIGEg
bmV3IGRldmljZSBwcm9iZSBsb2cgaGVscGVyLAo+IHdoaWNoIGJlaGF2ZXMgaWRlbnRpY2FsbHkg
YXMgdGhlIGFscmVhZHkgZXhpc3RpbmcgZGV2X2Vycl9wcm9iZSgpLCB3aGlsZSBpdAo+IHByb2R1
Y2VzIHdhcm5pbmdzIGluc3RlYWQgb2YgZXJyb3JzLiAgVGhlIGludGVuZGVkIHVzZSBpcyB3aXRo
IHRoZSByZXNvdXJjZXMKPiB0aGF0IGFyZSBhY3R1YWxseSBvcHRpb25hbCBmb3IgYSBwYXJ0aWN1
bGFyIGRyaXZlci4KPgo+IFdoaWxlIHRoZXJlLCBjb3B5ZWRpdCB0aGUga2VybmVsZG9jIGZvciBk
ZXZfZXJyX3Byb2JlKCkgYSBiaXQsIHRvIHNpbXBsaWZ5Cj4gaXRzIHdvcmRpbmcgYSBiaXQsIGFu
ZCByZXVzZSBpdCBhcyB0aGUga2VybmVsZG9jIGZvciBkZXZfd2Fybl9wcm9iZSgpLCB3aXRoCj4g
dGhlIG5lY2Vzc2FyeSB3b3JkaW5nIGFkanVzdG1lbnRzLCBvZiBjb3Vyc2UuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4KCkFwcGxpZWQgYW5kIHRl
c3RlZCBvbiA2LjExIGZvciBhcm02NCB3aXRob3V0IG5vdGljaW5nIGFueSBpc3N1ZXMuCgpUZXN0
ZWQtYnk6IEjDqWzDqG5lIFZ1bHF1aW4gPG9zc0BoZWxlbmUubW9lPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
