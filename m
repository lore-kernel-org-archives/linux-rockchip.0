Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9514CCFA03
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 05:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vElgTw5v2UUzEyNlwnZIyEYU/J8KJ3X8PgU3RGfDhqU=; b=nU6vdM4rv0uG6Y
	RPlwv5Ohtk+fE9nY+DvoIRw6Olawd5DF312tx37rmPMuDyg2L4SZKDArqs+Ag09HzecTMu9Wnujor
	e6Hr+1dXtCQz9fqfK04791/HEjyN0SS7UaA+K/j5NpZH3wWm1ek+YQeQap57dXtm33rbNjJq+QM5b
	Xsig1qoFAEWZ9Y84kVx2BKuSIZglyfPAVjYbdzQj14xINVFfDrHlep+QZ3lfWq4uDz2CCuG+6M6sh
	TG1lKwLTB/dnhwplhege5S+GziQhf0zqlgkLZTZwHaf/9HE/gzDEy15JNji1y7M5oDOIN6aYjnOpj
	IkUIReGyffr+hC+zKNYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGstg-0000000Eu9z-1qI4;
	Thu, 06 Nov 2025 05:51:00 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGstc-0000000Eu9S-1KKd
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 05:50:58 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-429b72691b4so449647f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Nov 2025 21:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762408254; x=1763013054; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vPKmSfTx8K0cqrwmwnrzxozj3n4nbRAjUCx0YnQt1aA=;
        b=HQaQv50uvhBt8q6Ck71QtuNP4mmwQU/M75kc34hNmMsIQBXhJ7v1+QGRLz+r/IWepe
         bNuy8xXPmeMFtewiTsKQ1MoQ+hSusUMueoIU4LZeI5fLdtv1d/e0QPpoJXIzMHu/69PJ
         R7tmwnx0UKnip5s6ETJdV9F1rF1Wm6kGeWQA4Q3zwBsaVmX5fcSlHJpdBhmv1IOsrs3h
         YmH10Krxh48Mr9Jk9hnzxNnitZu+Dot/jqaCYburasXYRVgjhRSfrho2XsT3v/JjGEG9
         MFNcvfZBV9vigPW2wKKLx4OKvCub8ojhzBxepTX9fRBJ5FHZ5om58oiJ5/CCE4gYpUgv
         kttQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762408254; x=1763013054;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vPKmSfTx8K0cqrwmwnrzxozj3n4nbRAjUCx0YnQt1aA=;
        b=MVRdjBVKjhfI1B1nmR/qumt+PbMsOTHmcw+e1NkC4xZQ/m1Fpw9E+ceUUPwQiqanmi
         7mftou4eoRlmkXGJ+swfgmsy3IOkAuK4oqaBG8L6Z+bPVaiO64rN2g4fDJI863+odruU
         kcxHRA9xJ70slDcU09CIOj31IheaeE8yUBPyu5codojTodKdnSQlwaUiVVuycpE5xvUB
         bZXTQNUyR7TjpGEIExWL0b15UTT074uneWr0BeyxhQ6Xkuvjbid2g0U9kW1HiUAgXC36
         A7TtkZpKJ+pMyOY20T4BPavShcNskkVq+xjSRGoRj9AXk5RHwqNIgMwfUVhpaAr7aoji
         aTYw==
X-Forwarded-Encrypted: i=1; AJvYcCUbCBQRDn6TqwwOKI+hGJm3uL2+F6/8yMNpmWNbRR0kAenRBNUXVrdyzEOkvo6CkoiLaW9b9ETSCs3KJ+VCCQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4I0d2QP716SRa2IAS38EDwZqwQBl52WsYrIvZCurFhstGItZI
	FKT2DcgaNWFuXWNYRxp2za9muI0zmF4jFBoP5dUwKZj86QZMIXK4VdjSF1XiTxb5uiYbUgYzNt3
	8U2PxymQXe4agcnz5dXOZDtSj5pscTM0=
X-Gm-Gg: ASbGnctV3whyQZaP0qCtO2sMGQB2nyRwclB6z3QzoubptiV52SpBtth5zSn0j4Wxamj
	ojIO9bAw2JiBfKeebRILhzhdKfYwI54RemOmO4eqkmVhuHkJX7v+Kxosq4Az+YBCnchRxos7dic
	aVQP9tD7JPxBe/UQ7K6koaydfm3TLZ7Ihod5F1NKGrnH5lafu2zK7FT3gyYZP9gad8fJI7btBW1
	0wzklB9fmIlPodvPPuRJ0GKH51XKceVfKh7ts2qwcW75wwx809Mbp9ug6OTRAHBh1jdYwhtWFi3
	hN1F5fQEwfatJwf2u5HU1ilfPOs=
X-Google-Smtp-Source: AGHT+IHtZz8UHpe0WQ4tt4mV3lotZ3d8lT0N5bfyU8SBB0ZGuRnJSTKMX3xBt/yJtCIC/0ntusZ1jJoTprx1MXSrOLo=
X-Received: by 2002:a05:6000:2c13:b0:427:23a:c339 with SMTP id
 ffacd0b85a97d-429e32e4905mr5081484f8f.14.1762408254395; Wed, 05 Nov 2025
 21:50:54 -0800 (PST)
MIME-Version: 1.0
References: <20251105051335.17652-1-naoki@radxa.com> <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
 <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com>
 <35ff8e6f-dd2b-d909-70c7-b19240e32ccf@manjaro.org> <CALWfF7K3zNxSsXVpW8pLc_xWi793HG99OvbshtP-0=764JmPKw@mail.gmail.com>
 <57F9C541303D73B3+4c84cba4-8378-4b65-8065-46e28217694b@radxa.com>
In-Reply-To: <57F9C541303D73B3+4c84cba4-8378-4b65-8065-46e28217694b@radxa.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Wed, 5 Nov 2025 23:50:42 -0600
X-Gm-Features: AWmQ_bkSpVkHOQiLYG36Mon49brrv3a8L4bWpzGiRvNTICwmFZynFK2gL6Np574
Message-ID: <CALWfF7+0_MOhUNNSekYB4P5xrsgevz_ZvcX883iyCt94K6h7OQ@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: Add Radxa CM5 IO Board
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Dragan Simic <dsimic@manjaro.org>, heiko@sntech.de, joseph.kogut@gmail.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, 
	kever.yang@rock-chips.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, 
	amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_215056_408010_BDF04B74 
X-CRM114-Status: GOOD (  31.05  )
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

T24gV2VkLCBOb3YgNSwgMjAyNSBhdCAxMTowOeKAr1BNIEZVS0FVTUkgTmFva2kgPG5hb2tpQHJh
ZHhhLmNvbT4gd3JvdGU6Cj4KPiBIaSBKaW1teSwKPgo+IE9uIDExLzYvMjUgMTM6NTMsIEppbW15
IEhvbiB3cm90ZToKPiA+IE9uIFdlZCwgTm92IDUsIDIwMjUgYXQgOTozMeKAr1BNIERyYWdhbiBT
aW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPiB3cm90ZToKPiA+Cj4gPiBbIHNuaXAgXQo+ID4KPiA+
Pgo+ID4+IFdpdGggYWxsIHRoYXQgaW4gbWluZCwgd2Ugc2hvdWxkIHNwZWNpZnkgIm5vLW1tYyIg
aGVyZSwgYmVjYXVzZQo+ID4+IHdlJ3JlIGRlc2NyaWJpbmcgYSBtaWNyb1NEIHNsb3QsIGluc3Rl
YWQgb2YgZGVzY3JpYmluZyBzb21lIGh5YnJpZAo+ID4+IE1NQy9taWNyb1NEIHNsb3QuICBUaGF0
IGFsc28gZXhwbGFpbnMgd2h5IHRoZSBhZGFwdGVyIHNvbGQgYnkgUmFkeGEKPiA+PiBpcyBkZXNj
cmliZWQgYXMgbm90IHRvIGJlIHVzZWQgd2l0aCBtaWNyb1NEIGNhcmQgc2xvdHMgb24gU0JDcy4g
IEknZAo+ID4+IGFsc28gbGlrZSB0byBoZWFyIGlzIHRoaXMgYWRhcHRlci9lTU1DIGNoaXAgY29t
Ym8gcmVjb2duaXplZCBieSB0aGUKPiA+PiBrZXJuZWwgd2hlbiAibm8tbW1jIiBpcyBzcGVjaWZp
ZWQ7IGl0IHNob3VsZCBmYWlsLgo+ID4+Cj4gPj4gQWN0dWFsbHksIG5vdCBzcGVjaWZ5aW5nICJu
by1tbWMiIGhlcmUgbWF5IHJlc3VsdCBpbiBzb21lIHVuZm9yZXNlZW4KPiA+PiBpc3N1ZXMgd2l0
aCBzb21lIChvciBwZXJoYXBzIG1hbnk/KSBtaWNyb1NEIGNhcmRzLCBiZWNhdXNlIHRoZSBNTUMK
PiA+PiBkcml2ZXJzIHdpbGwgdHJlYXQgdGhlbSBhcyBNTUMtY2FwYWJsZSBkZXZpY2VzIGFuZCB0
cnkgdG8gaW5pdGlhbGl6ZQo+ID4+IHRoZW0gYXMgc3VjaCwgd2hpY2ggbWF5IGNhdXNlIGFsbCBr
aW5kcyBvZiBpc3N1ZXMuICBJbiBmYWN0LCBJJ20gbm90Cj4gPj4gcmVhbGx5IHN1cmUgdGhhdCB0
aGUgTU1DIGRyaXZlcnMgYXJlIGFjdHVhbGx5IGltcGxlbWVudGVkIGluIGEgd2F5Cj4gPj4gdGhh
dCBhdm9pZHMgYWxsIHBvc3NpYmxlIGlzc3VlcyB3aXRoIHRoZSBzdG9yYWdlIGNvbnRyb2xsZXJz
IHRoYXQKPiA+PiBhcmUgY2FwYWJsZSBvZiBib3RoIFNEIGFuZCBNTUMgbW9kZXMgd2hlbiBuZWl0
aGVyIG9mICJuby1zZCIgYW5kCj4gPj4gIm5vLW1tYyIgaXMgc3BlY2lmaWVkIGluIHRoZWlyIERU
IG5vZGVzLgo+ID4KPiA+IEh5YnJpZCBNTUMgYW5kIFNEIHNsb3RzIGFyZSBwcmV0dHkgbm9ybWFs
IG9uIFVTQiBjYXJkIHJlYWRlcnMuIFNvIGl0J3MKPiA+IG5vcm1hbCBmb3IgdGhlIGhvc3QgY29u
dHJvbGxlciB0byBmaWd1cmUgb3V0IHdoYXQga2luZCBvZiBjYXJkIGlzIGluCj4gPiB0aGUgc2xv
dC4KPiA+IGh0dHBzOi8vdWRpdGFnYXJ3YWwuaW4vdW5kZXJzdGFuZGluZy1zZC1zZGlvLWFuZC1t
bWMtaW50ZXJmYWNlLwo+ID4KPiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPTZhZTNlNTM3ZWFiOWY1
NjBiNTE2YjAwMWViODlmMGNkNTY4YmRjZWQKPiA+IHdhcyB0aGUgY29tbWl0IHRoYXQgaW50cm9k
dWNlZCB0aGUgZGV2aWNlIHRyZWUgcHJvcGVydGllcy4gQnkgdGhlCj4gPiB3b3JkaW5nIG9mIHRo
ZSBjb21taXQgbWVzc2FnZSwgdGhlc2UgZGV2aWNlIHRyZWUgcHJvcGVydGllcyBhcmUgdXNlZAo+
ID4gdG8gaW5kaWNhdGUgdG8gdGhlIGRyaXZlciBpZiB0aGUgaG9zdCBjb250cm9sbGVyIGhhcmR3
YXJlIGlzIGNhcGFibGUKPiA+IG9mIE1NQyBpbml0aWFsaXphdGlvbiBvciBTRCBpbml0aWFsaXph
dGlvbi4KPiA+Cj4gPiBTaW5jZSB0aGUgaG9zdCBjb250cm9sbGVyIGluIHRoZSBSSzM1ODggaXMg
Y2FwYWJsZSBvZiBhbGwgdGhlIG1vZGVzLAo+ID4gdGhlc2UgcHJvcGVydGllcyBkbyBub3QgbmVl
ZCB0byBiZSBzcGVjaWZpZWQuCj4gPgo+ID4gU2luY2UgUmFkeGEgaGFzIHRoZSBlTU1DIHRvIHVT
RCBhZGFwdGVyLCBpdCBtYWtlcyBzZW5zZSBSYWR4YSB3b3VsZAo+ID4gd2FudCB0byBjb25maWd1
cmUgdGhlaXIgbWljcm9TRCBjYXJkIHNsb3Qgb24gdGhlaXIgYm9hcmRzIHRvIGJlIGEKPiA+IGh5
YnJpZCBTRC9NTUMgc2xvdC4KPiA+Cj4gPiBOb3csIHRoZSBtb3JlIGZ1biBxdWVzdGlvbiBpcyBp
ZiB0aGUgYWRhcHRlciBjYW4gaGFuZGxlIGVNTUMgSFMyMDAKPiA+IHVzaW5nIHRoZSA0LWJpdCBi
dXM/Cj4KPiBJIGFkZGVkCj4gICBtbWMtaHMyMDAtMV84djsKPgo+IEkgZ290Cj4KPiBbICAyMjYu
MDk5NTEwXSBtbWNfaG9zdCBtbWMxOiBCdXMgc3BlZWQgKHNsb3QgMCkgPSA0MDAwMDBIeiAoc2xv
dCByZXEKPiA0MDAwMDBIeiwgYWN0dWFsIDQwMDAwMEhaIGRpdiA9IDApCj4gWyAgMjI2LjU0NjI0
Nl0gbW1jX2hvc3QgbW1jMTogQnVzIHNwZWVkIChzbG90IDApID0gNDk1MDAwMDBIeiAoc2xvdCBy
ZXEKPiA1MjAwMDAwMEh6LCBhY3R1YWwgNDk1MDAwMDBIWiBkaXYgPSAwKQo+IFsgIDIyNi41NDYz
NzFdIG1tY19ob3N0IG1tYzE6IEJ1cyBzcGVlZCAoc2xvdCAwKSA9IDE5ODAwMDAwMEh6IChzbG90
IHJlcQo+IDIwMDAwMDAwMEh6LCBhY3R1YWwgMTk4MDAwMDAwSFogZGl2ID0gMCkKPiBbICAyMjYu
NjU2ODUzXSBkd21tY19yb2NrY2hpcCBmZTJjMDAwMC5tbWM6IFN1Y2Nlc3NmdWxseSB0dW5lZCBw
aGFzZSB0byA3Ngo+IFsgIDIyNi42NTcwMTFdIG1tYzE6IGVycm9yIC0xMTAgd2hpbHN0IGluaXRp
YWxpc2luZyBNTUMgY2FyZAo+IFsgIDIyNi42NzE0NjldIG1tY19ob3N0IG1tYzE6IEJ1cyBzcGVl
ZCAoc2xvdCAwKSA9IDMwMDAwMEh6IChzbG90IHJlcQo+IDMwMDAwMEh6LCBhY3R1YWwgMzAwMDAw
SFogZGl2ID0gMCkKPiBbICAyMjYuNzkzNzMzXSBtbWMxOiBzd2l0Y2ggdG8gYnVzIHdpZHRoIDQg
ZmFpbGVkCj4gWyAgMjI2Ljc5ODkxNV0gbW1jMTogbW1jX3NlbGVjdF9oczIwMCBmYWlsZWQsIGVy
cm9yIC0xMTAKPiBbICAyMjYuNzk5MzkwXSBtbWMxOiBlcnJvciAtMTEwIHdoaWxzdCBpbml0aWFs
aXNpbmcgTU1DIGNhcmQKPiBbICAyMjYuODExNTQ5XSBtbWNfaG9zdCBtbWMxOiBCdXMgc3BlZWQg
KHNsb3QgMCkgPSAyMDAwMDBIeiAoc2xvdCByZXEKPiAyMDAwMDBIeiwgYWN0dWFsIDIwMDAwMEha
IGRpdiA9IDApCj4gWyAgMjI2Ljk0NzUxOF0gbW1jMTogc3dpdGNoIHRvIGJ1cyB3aWR0aCA0IGZh
aWxlZAo+IFsgIDIyNi45NTQ5NzhdIG1tYzE6IG1tY19zZWxlY3RfaHMyMDAgZmFpbGVkLCBlcnJv
ciAtMTEwCj4gWyAgMjI2Ljk1NTQ1NF0gbW1jMTogZXJyb3IgLTExMCB3aGlsc3QgaW5pdGlhbGlz
aW5nIE1NQyBjYXJkCj4KPiBJIGRvbid0IGtub3cgaWYgdGhpcyBpcyBib2FyZC1kZXBlbmRlbnQu
CgpJIHdhcyBob3BpbmcgZm9yIHRvbyBtdWNoLgoKSW4gdGhlICJSSzM1ODggRGF0YXNoZWV0Iiwg
dW5kZXIgdGhlICJlTU1DIEludGVyZmFjZSIsIGl0IHNwZWNpZmljYWxseQpsaXN0cyBzdXBwb3J0
IGZvciBIUzQwMC4gSG93ZXZlciwgZm9yIHRoZSAiU0QvTU1DIEludGVyZmFjZSIsIGl0IG9ubHkK
bWVudGlvbnMgIlNEMy4wLCBNTUMgdmVyNC41MSIsIHNvIHRoZSBtb3JlIHBlcmZvcm1hbnQgZU1N
QyBtb2RlcyBhcmUKbm90IGF2YWlsYWJsZSBvbiB0aGF0IGludGVyZmFjZS4KCkppbW15Cgo+Cj4g
QmVzdCByZWdhcmRzLAo+Cj4gLS0KPiBGVUtBVU1JIE5hb2tpCj4gUmFkeGEgQ29tcHV0ZXIgKFNo
ZW56aGVuKSBDby4sIEx0ZC4KPgo+ID4gSmltbXkKPiA+Cj4KPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
