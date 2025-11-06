Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62F51CCFA0D
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 03:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6D/KYEkLHO9dowz1ET7He3EtOe6IyXM0K8XxeqV0mis=; b=uMOCTmApdyum1E
	omDn5MD6QVdFfwj7wCMRRgxmft/yBNRCga2sIFVGlCLi8Ucig2jRaxcqV58tG9yjCrJDGFxsUNyqZ
	EJdnFfA34mIGDh4afsUBjwmntgYuFEXUe1wq4hFGRimA4vuhVObKpGnj4cjJUedETPxIIBG9/FRmv
	/hpE2/5LHt3U5npPIC/oi5RvacE2cyAAdxjJc9nb0gJoyZQVya83Ma0Y8ILT0kbXQ4/wVrJ7vYEOf
	oiKCMxnTGudpCwkUCmxxrZFF42o+K/99t29bgBmnW7adjxtk0UhZp80qmUcn0wQWddeuNURZYI8k4
	pNsstsxglFq2P163Pjvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGqpl-0000000Epne-3nqQ;
	Thu, 06 Nov 2025 03:38:49 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGqpj-0000000EpnG-1h3u
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 03:38:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id EBF4440ED4;
	Thu,  6 Nov 2025 04:38:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762400324; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=rYLYDV2EpKDr3LPjQ+nBYpmoYk8ZppTQCJwoUsSRKPI=;
	b=wPnqBhyFEmnjkHCeJ/OzW7PXLkXWiQv8qZoydtzs2mBpwgSdjZAkHEoImBaTpaJV11KENR
	gK5Pcj+Mmz97DokJ8jnpHzf535i2Lw+E5gUsI29+nl6F9W7vcC+N9q9zNwOnTVZc8JZkUb
	WrphpkHgV7Q+uGe6YmMYjDD6jpRcjgDnCcjZNRV99q9e/V390ooL3uUx/ZrQV7WvhO0F5I
	9DUpuMEHtVviPaQVqn5JNkBk8a05oMdFeQZ3ML1MkqBt9Y9aCVpEQqkUsGHMGWzGxZu56V
	8bjGZbMLbx/KaOaxAqscufPMQD02yEmf5/1VayNxF5TYni6B/hH947mQbhK54A==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <65F6DECE54D6A0E2+06d33e7a-1054-44b3-919e-181e30cdb932@radxa.com>
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
 <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com> <65F6DECE54D6A0E2+06d33e7a-1054-44b3-919e-181e30cdb932@radxa.com>
Date: Thu, 06 Nov 2025 04:38:42 +0100
Cc: "Jimmy Hon" <honyuenkwun@gmail.com>, heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <1c84d2f5-811b-4f0f-46b9-3c0e7828d0db@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 3/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add Radxa CM5 IO Board
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_193847_598992_5A4CAD6B 
X-CRM114-Status: GOOD (  12.33  )
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

SGVsbG8gTmFva2ksCgpPbiBUaHVyc2RheSwgTm92ZW1iZXIgMDYsIDIwMjUgMDQ6MTcgQ0VULCBG
VUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+IHdyb3RlOgo+IE9uIDExLzYvMjUgMDg6Mzgs
IEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4gPiBPbiAxMS82LzI1IDAzOjI3LCBKaW1teSBIb24gd3Jv
dGU6Cj4gPj4gT24gVHVlLCBOb3YgNCwgMjAyNSBhdCAxMToxNOKAr1BNIEZVS0FVTUkgTmFva2kg
PG5hb2tpQHJhZHhhLmNvbT4gd3JvdGU6Cj4gPj4+Cj4gPj4+IFRoZSBSYWR4YSBDTTUgSU8gQm9h
cmQgaXMgYW4gYXBwbGljYXRpb24gYm9hcmQgZm9yIHRoZSBSYWR4YSBDTTUuCj4gPj4+Cj4gPj4+
IFNwZWNpZmljYXRpb246Cj4gPj4KPiA+Pj4gLSAxeCBtaWNyb1NEIGNhcmQgc2xvdAo+ID4+Cj4g
Pj4gWyBzbmlwIF0KPiA+Pgo+ID4+PiArCj4gPj4+ICsmc2RtbWMgewo+ID4+PiArwqDCoMKgwqDC
oMKgIGJ1cy13aWR0aCA9IDw0PjsKPiA+Pj4gK8KgwqDCoMKgwqDCoCBjYXAtbW1jLWhpZ2hzcGVl
ZDsKPiA+Pj4gK8KgwqDCoMKgwqDCoCBjYXAtc2QtaGlnaHNwZWVkOwo+ID4+PiArwqDCoMKgwqDC
oMKgIGNkLWdwaW9zID0gPCZncGlvMCBSS19QQTQgR1BJT19BQ1RJVkVfTE9XPjsKPiA+Pj4gK8Kg
wqDCoMKgwqDCoCBkaXNhYmxlLXdwOwo+ID4+PiArwqDCoMKgwqDCoMKgIG5vLXNkaW87Cj4gPj4+
ICvCoMKgwqDCoMKgwqAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+Pj4gK8KgwqDCoMKg
wqDCoCBwaW5jdHJsLTAgPSA8JnNkbW1jX2J1czQgJnNkbW1jX2NsayAmc2RtbWNfY21kPjsKPiA+
Pj4gK8KgwqDCoMKgwqDCoCBzZC11aHMtc2RyMTA0Owo+ID4+PiArwqDCoMKgwqDCoMKgIHZtbWMt
c3VwcGx5ID0gPCZ2Y2NfM3YzX3MzPjsKPiA+Pj4gK8KgwqDCoMKgwqDCoCB2cW1tYy1zdXBwbHkg
PSA8JnZjY2lvX3NkX3MwPjsKPiA+Pj4gK8KgwqDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4g
Pj4+ICt9Owo+ID4+Cj4gPj4gV2hlbiB1c2VkIGFzIGEgVEYgc2xvdCwgc2hvdWxkbid0IHRoZXJl
IGJlIGEgIm5vLW1tYyIgYWxzbz8KPiA+IAo+ID4gV2UgaGF2ZSAiZU1NQyB0byB1U0QuIgo+ID4g
IMKgaHR0cHM6Ly9yYWR4YS5jb20vcHJvZHVjdHMvYWNjZXNzb3JpZXMvZW1tYy10by11c2QKPiA+
IAo+ID4gW8KgIDIwMi4xNzY3NTddIG1tY19ob3N0IG1tYzE6IEJ1cyBzcGVlZCAoc2xvdCAwKSA9
IDQ5NTAwMDAwSHogKHNsb3QgcmVxIAo+ID4gNTIwMDAwMDBIeiwgYWN0dWFsIDQ5NTAwMDAwSFog
ZGl2ID0gMCkKPiA+IFvCoCAyMDIuMTc4NDc3XSBtbWMxOiBuZXcgaGlnaCBzcGVlZCBNTUMgY2Fy
ZCBhdCBhZGRyZXNzIDAwMDEKPiA+IFvCoCAyMDIuMTc5NTM0XSBtbWNibGsxOiBtbWMxOjAwMDEg
U0xENjRHIDU3LjYgR2lCCj4gPiBbwqAgMjAyLjIwNzMzNl0gbW1jYmxrMWJvb3QwOiBtbWMxOjAw
MDEgU0xENjRHIDQuMDAgTWlCCj4gPiBbwqAgMjAyLjIxMDM3NF0gbW1jYmxrMWJvb3QxOiBtbWMx
OjAwMDEgU0xENjRHIDQuMDAgTWlCCj4gPiBbwqAgMjAyLjIxMjk2N10gbW1jYmxrMXJwbWI6IG1t
YzE6MDAwMSBTTEQ2NEcgNC4wMCBNaUIsIGNoYXJkZXYgKDUxMToxKQo+ID4gCj4gPiAoSSdtIG5v
dCBzdXJlIHdoeSBpdCBzYXlzICJOb3Qgd29yayB3aXRoIHRoZSBTRCBzbG90IG9uIHRoZSBib2Fy
ZC4iIEkgCj4gPiB3aWxsIGNoZWNrLikKPiAKPiBUaGVyZSBpcyBubyBoYXJkd2FyZSBsaW1pdGF0
aW9uLiAiZU1NQyB0byB1U0QiIHNob3VsZCB3b3JrIHdpdGggbWljcm9TRCAKPiBjYXJkIHNsb3Qg
b24gdGhlIGJvYXJkLgo+IAo+IFRoYXQgbm90aWNlIG1lYW5zICJkdHMgbmVlZCB0byBiZSBjaGFu
Z2VkIi4KClRydWUsIGl0IGNhbiB3b3JrIHdoZW4gdGhlIG1pY3JvU0Qgc2xvdCBpcyBwdXQgaW50
byB0aGUgaHlicmlkCk1NQy9taWNyb1NEIG1vZGUsIHdoaWNoIEkgZGVzY3JpYmVkIGluIG15IHBy
ZXZpb3VzIHJlc3BvbnNlLCBidXQKdGhhdCdzIHByZXR0eSBtdWNoIGEgaGFyZHdhcmUgaGFjayBz
aW1pbGFyIHRvIGFjY2Vzc2luZyBKVEFHCnRocm91Z2ggdGhlIG1pY3JvU0Qgc2xvdCBvbiBSb2Nr
Y2hpcCBib2FyZHMsIG9yIHRvIHJlY29uZmlndXJpbmcKdGhlIFVTQiAzLjAgcG9ydCB0byB3b3Jr
IGFzIGEgbmF0aXZlIFNBVEEgcG9ydCBvbiB0aGUgUGluZTY0ClF1YXJ0ejY0IFNCQy4KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
