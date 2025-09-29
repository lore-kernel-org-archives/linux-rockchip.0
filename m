Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2347CAC5B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 18:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P9lCDicW1ls89GOQd5DgWzXptgOPlEsJriOu3vF24O4=; b=Q6pJZ2TwHSBWsT
	DRpg42BfuRThUDGFCrOuyo+9juiLI/Ui9L3GqbePxoCZ7ej/EL7W/txZ+zMTqyhTAnIlFiJi0RgYu
	cNoMDF7uet5J18aSqhgd4QGe+bf0fL241QzblTUn3QTSzvGB0O9++wgfIS4RtbKbXD+5LX3kbdiKm
	fbnmsBec9/CiiMwN3aYfYKSs6SU1FogrSmSwLJ8xMPrlg4NIoFI02NUbnuG+y7qtYpnf+WgZgNq/O
	hUUUmZhLSVZUEZg3dVLYddri5A2L5rZSxYWQvYkpUJhp8BfCDqaqY3rh8xdtiU2DLYH4TkDX5SvAp
	7wEEZrSp3oh5N/U7sfeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3IKF-00000003DGw-12an;
	Mon, 29 Sep 2025 18:10:15 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3IKB-00000003DFf-2Zbv
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Sep 2025 18:10:13 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-792f273fbe4so27915116d6.3
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Sep 2025 11:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759169410; x=1759774210; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bjmGfI+aM9Ga1Ig2g2mvuKGLXAvr/Dgn4bzVg8VMK/M=;
        b=YGDBMSh/rC0h1tsGjJ3dDtzAVJRWdGcW4KhDcOBgt4WDj89ufy61Mk5doezkbWaBpm
         tFu075RkCkZrrOuSeuwJH8qFlrRAj64vUYGCUWTuCH31WcG1tKLBwU3rweRffOy2Jb+6
         b6vrtXPTtNG0xRxOwxADD/d0KNMpGryT9TkMypqgmC+0DFSItYbqOpQVIKteyuo5QMEM
         sj7yBopwHqI3KHfR0NYvFs5tSc75KeYeq6oC1GWbPHfZRKAQWKx5hKm76DM33r7yvnef
         c+9kGaXwTw3ax9LrhslAjaNns3hHOmfRNIO8Lv9Ga/tjVA4APMtr91MU2OKHj43a8+iB
         d62A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759169410; x=1759774210;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bjmGfI+aM9Ga1Ig2g2mvuKGLXAvr/Dgn4bzVg8VMK/M=;
        b=gp+W4YyBkNuYlwmKFvZUSAJ7x1ReBuBih5IbEqYGwaLgckgijsKHWuttehO6wFF/l+
         hZmOoKxIuiZtkNJ2pLYPgOShT3YG0FF0MaJRDWB5q8HxLOTlcc++Ev1A/p+6j1Euuf1r
         zJr9EV4GJdwZ65e/W4SUdrIR0/Pj9L6rx8au39LSI6BrGGFSJKfXG9ScRo3hehCl5c2U
         vvXmcmR6tegvKC3I87NQHZ8VH0aJIcThVubB3ZW1/XNxYNGvvs3ekHYmlEhz3dC6Da18
         yeZx2Pi6PcgBa55B+WkzjfoA7THtc2zrP3UJBgW53w1PNIZTQJI5si1saDaZU7Xs6etr
         bfzg==
X-Forwarded-Encrypted: i=1; AJvYcCULHpCaYOVfQg4FgoDTSFBWDwv2KfFirBP8f2Sxa/GvbQLO7eE5ePl4WBFwUfLspeD/c2Q22FTLeHZagTHT0Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YyVd1RxTvsd/sGIkeBSabtEZ/efevJTMHnNY2Kv2jLKbwaoh+tb
	xGfBneqK3sMZz5KC3UnWkREr6Wk8InBGmYv7mouHWirIhMYN9sPWNhx6m5ZWeJ8Uq2LqcLmfdxL
	T7oxq4rqCkwrTdl772qXv4Tf+Zq5Va0Y=
X-Gm-Gg: ASbGncu0p8egj4Z/6N8Dg8o63tFKcwrWkyIHJ0jCqE7viWQ5upEoSvA2sR8vtcId4YZ
	cF20LWhGtikmK8HlE5NTKcMpI65+gJBfoj5HGbIOFJ7T+by4dLIW7V8m1qlq+gwV09P9K4bcjhZ
	XdHKETIKV7cxDzFdAgkNCBjIoycshkp9x0twanqSyKVgkU9VDfpKArlhrv6ua42Rbu+c6tQ+RS5
	tcIieqP
X-Google-Smtp-Source: AGHT+IGsvBr58f8GtOgfL+nnwH2k9AWpbMH6XL9pshnNTk2Mp1zqCHalJ+sXa0/EQOqNTHncEJ0efp7KH1rOEknc4fQ=
X-Received: by 2002:a05:6214:27e6:b0:786:2d5e:fdf1 with SMTP id
 6a1803df08f44-7fc28076dc7mr264116426d6.2.1759169410033; Mon, 29 Sep 2025
 11:10:10 -0700 (PDT)
MIME-Version: 1.0
References: <20250929065714.27741-1-jjm2473@gmail.com> <DD57IZJQ4FQM.3T5791FLUQ8KQ@cknow.org>
In-Reply-To: <DD57IZJQ4FQM.3T5791FLUQ8KQ@cknow.org>
From: jjm2473 <jjm2473@gmail.com>
Date: Tue, 30 Sep 2025 02:09:58 +0800
X-Gm-Features: AS18NWBq9CGmQ4er962r1cmMIH84RDNYTi26gLQ7NR29ewoVtK32nqAJCIuNoXA
Message-ID: <CAP_9mL6+uoeG7LX8YCcUFjoU13De1CdPFqxNNfoJvOdsOrYo5Q@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] arm64: dts: rockchip: introduce LinkEase EasePi R1
To: Diederik de Haas <didi.debian@cknow.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	quentin.schulz@cherry.de, kever.yang@rock-chips.com, naoki@radxa.com, 
	honyuenkwun@gmail.com, inindev@gmail.com, ivan8215145640@gmail.com, 
	neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org, 
	pbrobinson@gmail.com, alchark@gmail.com, jbx6244@gmail.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_111011_690596_FB51E539 
X-CRM114-Status: GOOD (  18.08  )
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

SSB3aWxsIGZpeCB0aGF0IGluIHY0LgoKSSBqdXN0IGZvcmdldCB0byBhZGQgYEFja2VkLWJ5YCBh
ZnRlciBgZ2l0IGZvcm1hdC1wYXRjaGAuCkkgd2lsbCByZS1wYXRjaCBteSBsb2NhbCB0cmVlLCBh
ZGQgYEFja2VkLWJ5YCB0byBjb21taXQgbWVzc2FnZSwKdGhlbiBgZ2l0IGZvcm1hdC1wYXRjaGAu
CgpJIGhhdmUgYW5vdGhlciBxdWVzdGlvbi4gSWYgdGhlcmUgYXJlIHJldmlld2VycyBvciBjby1h
dXRob3JzIGxhdGVyLApkbyBJIG5lZWQgdG8gYWRkIGl0IHRvIHRoZSBjb21taXQgbWVzc2FnZSBh
bmQgc2VuZCBpdCBhZ2Fpbj8KT3Igc2hvdWxkIHRoZSByZXZpZXdlciBvciBjby1hdXRob3IgYWRk
IHRoZSBtZXNzYWdlIGFuZApjb250aW51ZSB0byBkZWxpdmVyIHRoZSBwYXRjaD8KClRoYW5rcyEK
ICBMaWFuZ2JpbgoKRGllZGVyaWsgZGUgSGFhcyA8ZGlkaS5kZWJpYW5AY2tub3cub3JnPiDkuo4y
MDI15bm0OeaciDI55pel5ZGo5LiAIDE4OjIw5YaZ6YGT77yaCj4KPiBPbiBNb24gU2VwIDI5LCAy
MDI1IGF0IDg6NTcgQU0gQ0VTVCwgTGlhbmdiaW4gTGlhbiB3cm90ZToKPiA+IExpbmtFYXNlIEVh
c2VQaSBSMSBbMV0gaXMgYSBoaWdoLXBlcmZvcm1hbmNlIG1pbmkgcm91dGVyLgo+ID4gLi4uCj4g
PiBbMV0gaHR0cHM6Ly9kb2MubGlua2Vhc2UuY29tL3poL2d1aWRlL2Vhc2VwaS1yMS9oYXJkd2Fy
ZS5odG1sCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTGlhbmdiaW4gTGlhbiA8amptMjQ3M0BnbWFp
bC5jb20+Cj4gPiAtLS0KPiA+Cj4gPiBDaGFuZ2VzIGluIHYyOgo+ID4gLSBDaGFuZ2UgZGVwcmVj
YXRlZCAicm9ja2NoaXAsc3lzdGVtLXBvd2VyLWNvbnRyb2xsZXIiIHRvICJzeXN0ZW0tcG93ZXIt
Y29udHJvbGxlciIKPiA+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8y
MDI1MDkyNTA1NTkwNi44MzM3NS0xLWpqbTI0NzNAZ21haWwuY29tLwo+Cj4gWW91IHJlY2VpdmVk
IGFuIEFja2VkLWJ5IG9uIHBhdGNoIDEgYW5kIDIgaW4gdjEgb2YgdGhpcyBwYXRjaCBzZXQuCj4g
WW91J3JlIHN1cHBvc2VkIHRvIGFkZCB0aGF0IHRvIHRoZSBuZXh0L25ldyB2ZXJzaW9uKHMpIG9y
IGV4cGxhaW4gd2h5Cj4geW91IGNob29zZSBub3QgdG8gZG8gdGhhdCAoYmMgZi5lLiB0aGVyZSB3
YXMgYSBtYWpvciBjaGFuZ2UsIGJ1dCB0aGF0Cj4gZG9lcyBub3Qgc2VlbSBhcHBsaWNhYmxlIHRv
IHRob3NlIHBhdGNoZXMpLgo+Cj4gQ2hlZXJzLAo+ICAgRGllZGVyaWsKPgo+ID4gQ2hhbmdlcyBp
biB2MzoKPiA+IC0gRml4IHR5cG8gKCdzdGF0dXMgPSAiZGlzYWJsZSInIC0+ICdzdGF0dXMgPSAi
ZGlzYWJsZWQiJykgZm91bmQgYnkga2VybmVsIHRlc3Qgcm9ib3QgaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsLzIwMjUwOTI2MTMyOC5HcmpocDAyOS1sa3BAaW50ZWwuY29tLwo+ID4gLSBMaW5r
IHRvIHYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwOTI1MDkyMDM3LjEzNTgyLTEt
amptMjQ3M0BnbWFpbC5jb20vCj4gPgo+ID4gLS0tCj4gPgo+ID4gTGlhbmdiaW4gTGlhbiAoMyk6
Cj4gPiAgIGR0LWJpbmRpbmdzOiB2ZW5kb3ItcHJlZml4ZXM6IERvY3VtZW50IExpbmtFYXNlCj4g
PiAgIGR0LWJpbmRpbmdzOiBhcm06IHJvY2tjaGlwOiBBZGQgTGlua0Vhc2UgRWFzZVBpIFIxCj4g
PiAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgTGlua0Vhc2UgRWFzZVBpIFIxCj4gPgo+ID4g
IC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sICAgICB8ICAgNSArCj4g
PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgIHwgICAyICsK
PiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgIDEg
Kwo+ID4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtZWFzZXBpLXIxLmR0cyAgICB8IDY5
MiArKysrKysrKysrKysrKysrKysKPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDcwMCBpbnNlcnRpb25z
KCspCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTY4LWVhc2VwaS1yMS5kdHMKPiA+Cj4gPgo+ID4gYmFzZS1jb21taXQ6IGQwY2EwZGYxNzlj
NGIyMWUyYTZjNGE0ZmI2MzdhYThmYTE0NTc1Y2IKPgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
