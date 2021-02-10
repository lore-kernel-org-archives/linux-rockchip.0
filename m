Return-Path: <SRS0=ealT=HM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41AB3C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 13:53:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E562364E6F
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 13:53:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E562364E6F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EqET5ulmhlHWsVK6qUD6Lxa7BgwUam4pthq4ammkc1w=; b=h6XuDuu1HzB3whSAPKrgGl7Lm
	0TTiZrkz5zi3/8J5ASU2FQtcZxsHAfzQ4J6pF3NsPlHOICav3a8ujOThG49pCgtxd5Xhv84piAkYK
	qQXVDaBJHOwNr7P5A8SehlI4Rf320noFkY5PpYTQluetkrXkTjXx0FPKdQ7fmmcUs5N0nER+H2ZIB
	JVtLcrfz92+otXvhPaEwY765rPMQ5JwsEGZzOAA2Ur2mVOaVwisUiA+7qCBUj1YRuLPzglf29I/mj
	UK7jmbNMRqHE7syOIKa2WKEVT4vc/6J5CjEDB5WFTo9IBGWQ6cdVEQWGA3B8pqg2ja1bbPEPgmXBo
	07uE8JTlg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9pvo-0004na-Lo; Wed, 10 Feb 2021 13:53:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9pvk-0004m1-IV; Wed, 10 Feb 2021 13:53:21 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8B5A464E79;
 Wed, 10 Feb 2021 13:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612965199;
 bh=yV6TURZhEtJ6Cwgc9q7dRhbULRCstmiM+RHhfwGM2ZU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JuFE+/H/htE9E/JO5D55Z9g4jY9h9NX1qVbDUM8eEX8uBvEEq15Yi6eAIg9CL3UTs
 dmSgQzaaBxUTBYQETr46T+2eDsMYyHLJayQLZ/RfqnARndQ3ClGdbCNLNe8RFab8Gl
 NKMj8qtJUfl3h/mBKInuJ3S15ZM3d6sASQDnlqAcB7Bj5YJbz/wC3wqh4HNDk65W1U
 MMzEE1Q532KBw3uluuTIa/PbV2poQ14K32F1pyV/85SZOyGFlFWbSg2ayghHrk9CdD
 V3Gf3PJP3XNUn82c8MTf1ff3AVnCD7TFJX0ySGDqM0ru+oZbTnsMGChgjoi9GJFF1+
 mmS/2czj8Tnzw==
Received: by mail-ot1-f46.google.com with SMTP id q4so1805572otm.9;
 Wed, 10 Feb 2021 05:53:19 -0800 (PST)
X-Gm-Message-State: AOAM531PrX89nZB09TfFV1INExFzpXZ7AWTwVYT45cH0xodOcz+nXynR
 Ubrw8D4wWr6eRcKgBlc+eT0qr/o8TaJkeX0q2A0=
X-Google-Smtp-Source: ABdhPJwb9CXfMxZUsIBeiH+dbVDlq4uugNf+KJ+ZAnHaP33UGz/UDaKmzdX0HWNyLIVQBUvu0kkylO78Qv9oAn+xQiA=
X-Received: by 2002:a05:6830:18e6:: with SMTP id
 d6mr2159421otf.251.1612965198882; 
 Wed, 10 Feb 2021 05:53:18 -0800 (PST)
MIME-Version: 1.0
References: <20210118155242.7172-1-jbx6244@gmail.com>
 <6598201.ejJDZkT8p0@diego>
 <CAK8P3a25iYksubCnQb1-e5yj=crEsK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com>
 <46108228.fMDQidcC6G@diego>
In-Reply-To: <46108228.fMDQidcC6G@diego>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 10 Feb 2021 14:53:02 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0ALgbhTVJ7t3XRXALs9vBM=XBvkGhNKXxB+QTepo-3AQ@mail.gmail.com>
Message-ID: <CAK8P3a0ALgbhTVJ7t3XRXALs9vBM=XBvkGhNKXxB+QTepo-3AQ@mail.gmail.com>
Subject: Re: [PATCH 2/5] ARM: dts: rockchip: assign a fixed index to mmc
 devices on rv1108 boards
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210210_085320_711182_A51225C7 
X-CRM114-Status: GOOD (  17.14  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: DTML <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBGZWIgMTAsIDIwMjEgYXQgMTE6NDkgQU0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4gQW0gTWl0dHdvY2gsIDEwLiBGZWJydWFyIDIwMjEsIDExOjM0OjQx
IENFVCBzY2hyaWViIEFybmQgQmVyZ21hbm46Cj4gPiBPbiBXZWQsIEZlYiAxMCwgMjAyMSBhdCAx
Mjo1MCBBTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+ID4gQW0g
RGllbnN0YWcsIDkuIEZlYnJ1YXIgMjAyMSwgMjM6MjU6NDAgQ0VUIHNjaHJpZWIgQXJuZCBCZXJn
bWFubjoKPiA+IEVhY2ggYm9hcmQgc2hvdWxkIGhhdmUgaXRzIG93biBhbGlhc2VzIG5vZGUgdGhh
dCBkZXNjcmliZXMKPiA+IGV4YWN0bHkgd2hpY2ggb2YgdGhlIGRldmljZXMgYXJlIHdpcmVkIHVw
IG9uIHRoYXQgYm9hcmQsIGFuZAo+ID4gaW4gd2hpY2ggb3JkZXIuIElmIHRoZXJlIGFyZSBjb25u
ZWN0b3JzIG9uIHRoZSBib2FyZCB0aGF0Cj4gPiBhcmUgbGFiZWxlZCBpbiBzb21lIGZvcm0sIHRo
ZW4gdGhlIGFsaWFzZXMgYXJlIG1lYW50IHRvCj4gPiBtYXRjaCB3aGF0IGlzIHdyaXR0ZW4gb24g
dGhlIGJvYXJkIG9yIGluIGl0cyBkb2N1bWVudGF0aW9uLgo+Cj4gVGhlbiB3ZSdyZSBhdCBsZWFz
dCBpbiB0aGUgY2xlYXIgZm9yIGkyYywgc2VyaWFsIGFuZCB0aGUgcmVzdCAuLi4gYXMgdGhlc2UK
PiBhcmUgbnVtYmVyZWQgaW4gdGhlIHNvYyBkb2N1bWVudGF0aW9uLCBhbmQgYWxsIGJvYXJkcyBJ
J3ZlIHNlZW4gc28KPiBmYXIgdXNlIHRoZXNlIG51bWJlciBhbHNvIHRvIGlkZW50aWZ5IHRoZXNl
IGluIHNjaGVtYXRpY3MuCgpPaywgdGhhdCBpcyBoZWxwZnVsLiBJdCB3b3VsZCBzdGlsbCBiZSBn
b29kIHRvIGVuc3VyZSB0aGF0IG9ubHkgYWxpYXNlcwpleGlzdCBmb3Igbm9kZXMgdGhhdCBhcmUg
YWN0dWFsbHkgZW5hYmxlZC4KCj4gU28gYW4gaTJjMiBpcyBhbHdheXMgaTJjMiBldmVuIGlmIGky
YzEgaXMgbm90IHBvcHVsYXRlZC4KPgo+IEFuZCBvZiBjb3Vyc2UgZG9pbmcKPiAgICAgICAgIGky
YzAgPSAmaTJjMgo+IHdvdWxkIGRlZmluaXRseSBjb25mdXNlIHBlb3BsZSB0byBubyBlbmQuCgpJ
IHRoaW5rIHRoYXQncyBqdXN0IGFuIHVuZm9ydHVuYXRlIGNob2ljZSBvZiB0aGUgbGFiZWxzIGhl
cmUsCml0J3Mgc29tZXRpbWVzIGVhc2llciB0byBqdXN0IHJlZmVyIHRvIHRoZSBub2RlIGJ5IHRo
ZSBmdWxsCnBhdGggaW5zdGVhZCBvZiB0aGUgbGFiZWwuCgogICAgICBBcm5kCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
