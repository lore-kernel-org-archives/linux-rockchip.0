Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B013ECE7B12
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 13:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yj/2hhKc7r39EpVkqMd6BZqlhhYsymP7cbvLvnqpH9M=; b=pcIgLLWUSFhDOt
	qA2ZjISPia0oe13hOS9JfZvnevEVQpVXkP/zzGz2bSsDExlCcMN8IzDPYw7fmy1k8JEvAGfw4NoNh
	lUlbdOfw9oT6qhhXvZ8cO5K0ck+kC1D6u3HsgjM8XRJUPOxGpO+e8wiUJFLRGX2qJlIBQSg3KZEp6
	s70R+Uq3hJms9f3OwEhRt2iZm6rfkhEscP2Gr/5Flf9IOEHr37FyYHmsmoSg317LZFPfRHQP2G0+C
	uUMuztzYdqIwnvcv8fFl/fGjwB2sy4B/lorGGijSFyqMDY/hSbM9IAUpNduBsNBkZyZ6jEa1vrHRU
	6px6jhJ2AEeQwiqFZnyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJuJB-0000000CJ0e-43Ku;
	Fri, 14 Nov 2025 13:57:49 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJuJ9-0000000CIzt-0jY6
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 13:57:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 03D3C40534;
	Fri, 14 Nov 2025 14:57:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763128663; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=BAhr3zxPGQZcM7LBr8upI8UJsMspvzfTmVdSUciv4rs=;
	b=EpXztYKJYOgX7V8ZHCBp/eAJunxY4DMvVkTqVYpeDhEeXoqR/PwpkQHt1uZ6TDXlFZ6vyv
	QtylsuVkZOmcKwGCYWR2+npViaD7nL9yo0mpXMOR9XYn5qypOuoYpOhQTtJ9+e0Xx9puaX
	x564sEPggWPvBUjDXMxRga4QZBicwJrUV9vja1JKtQMT6X5s7qmK+78ppTMV4H4dAQy/xY
	et6lnSix9zQKd0qI9Y0WcOk+KSYHCLKCo5x9zweIAOJ5ntz4agnivuwjt97o3WexXa9meC
	j0DjBYjgCsAzrfOVRQdlXRg8BV4bzK4dQVFzHztbKGGInXljxn8+zUE7pbZ+ww==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <5b58dda8-af68-41cd-af23-ec48bfc11d79@kernel.org>
References: <20251105051335.17652-1-naoki@radxa.com>
 <A3AD69295D2E2D65+db2dc8bd-054f-4dda-9dd1-3cc0c0feed35@radxa.com>
 <194908a1-f956-ba0a-656f-7b1e8456b51d@manjaro.org> <1942576.CQOukoFCf9@diego>
 <21ea3b50-6000-5202-49cf-685310e6fa18@manjaro.org> <5b58dda8-af68-41cd-af23-ec48bfc11d79@kernel.org>
Date: Fri, 14 Nov 2025 14:57:36 +0100
Cc: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "FUKAUMI Naoki" <naoki@radxa.com>, joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "Krzysztof Kozlowski" <krzk@kernel.org>
MIME-Version: 1.0
Message-ID: <da9b6e3b-6de3-5303-568b-27efd6772810@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 1/3] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Radxa CM5 IO Board
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_055747_484290_917AF693 
X-CRM114-Status: GOOD (  10.41  )
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

T24gRnJpZGF5LCBOb3ZlbWJlciAxNCwgMjAyNSAxMTozMCBDRVQsIEtyenlzenRvZiBLb3psb3dz
a2kgPGtyemtAa2VybmVsLm9yZz4gd3JvdGU6Cj4gT24gMTQvMTEvMjAyNSAxMToxMiwgRHJhZ2Fu
IFNpbWljIHdyb3RlOgo+ID4gT24gRnJpZGF5LCBOb3ZlbWJlciAxNCwgMjAyNSAxMTowOCBDRVQs
IEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+ID4+IFRoZXJlIGlzIGFs
c28gQ28tZGV2ZWxvcGVkLWJ5IGFzIGFuIG9wdGlvbi4KPiA+IAo+ID4gQWgsIHRoYXQncyB3aGF0
IHRoZSBhYm92ZS1kZXNjcmliZWQgb3B0aW9uICMxIGludm9sdmVzLCBidXQgaXQgYWxzbyAKPiA+
IHJhaXNlcyBzb21lIHBvc3NpYmxlIGNvbmNlcm5zLCBkZXNjcmliZWQgaW4gb25lIG9mIG15IHJl
c3BvbnNlcy4gWzFdCj4gCj4gVGhlcmUgYXJlIG5vIGNvbmNlcm5zIHRvIGJlIHJhaXNlZC4gUGxl
YXNlIHJlYWQgRENPLiBUaGUgb3JpZ2luYWwgYXV0aG9yCj4gR0FWRSBjZXJ0aWZpZWQgd2hhdCBp
cyBuZWNlc3NhcnksIHRodXMgYW55IHBlcnNvbiB0YWtpbmcgdGhpcyB3b3JrCj4gYWxyZWFkeSBj
YW4geW91IHRoYXQgY2VydGlmaWNhdGlvbi4gWW91IHJhaXNlZCBzb21lIHVuY2VydGFpbnR5ICJJ
J20gbm90Cj4gc3VyZSBob3cgZmFpciBpcyBpdCBmb3Igc29tZW9uZSB0byBiZWNvbWUgcmVzcG9u
c2libGUiIHdoaWNoIGlzIGp1c3Qgbm90Cj4gcmlnaHQgaGVyZS4gSXQgaXMgY29tcGxldGVseSBm
YWlyIGFuZCBjb21wbGV0ZWx5IGNvcnJlY3QgZnJvbSBEQ08gcG9pbnQKPiBvZiB2aWV3LCBiZWNh
dXNlIHRoZSBjZXJ0aWZpY2F0aW9uIHdhcyBhbHJlYWR5IHByb3ZpZGVkLiBBbHNvIGZyb20KPiBj
ZXJ0aWZpY2F0aW9uIHBvaW50LCB0aGVyZSBpcyBubyAid2Vha2VyIiBmb3JtLiBFaXRoZXIgeW91
IGNlcnRpZnkgb3Igbm90LgoKSSBzZWUsIHlvdSdyZSBmb2xsb3dpbmcgdGhlIGRvY3VtZW50YXRp
b24gc3RyaWN0bHkgYW5kIHJpZ2lkbHkuCkluIHRoYXQgY2FzZSwgSSB0aGluayBOYW9raSBub3cg
a25vd3Mgd2hhdCdzIHRvIGJlIGRvbmUgd2hlbgpzdWJtaXR0aW5nIHRoZXNlIHBhdGNoZXMgYWdh
aW4uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
