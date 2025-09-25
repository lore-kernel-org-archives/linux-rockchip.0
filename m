Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A3B9CAC5B1
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Sep 2025 14:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r37Zh+qWenQTiDRUK2dxpZKJF5zeHO3gfo9LCZB8R20=; b=pFg22QkeivklYt
	WXzxIcDOkBED6rWnwL090clFdszP04+zKP0OBxZFMX8Y3FrcXHH3X8/5it/ZejJVZ050SBdehQOKT
	Q7D6PNRCh9LqWXGKC3Nk9w/MDr/CskkoXujLQc+DMV7dI5bZd89HeaQ7e3HHqmIRJB2dV6d2yqnnZ
	IpzduJiQ6I8IZi3GeOKSGiktIgXyjwQtCos7DeA3pKEc+2JT9+FzCw83VRD+SoP3PvSxC4dtIFlb/
	Q7gpXHpU1zJiP/b2YYIdBV9X0toYwtd8Rlivo2SzQggKeVwVysqRw+aaoQXBQc0rePWyA19G+A7j1
	JDJF1z2jJxnU+dtvjXuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1mwM-0000000A1uQ-3lma;
	Thu, 25 Sep 2025 14:27:22 +0000
Received: from mail-qv1-xf2e.google.com ([2607:f8b0:4864:20::f2e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1mwH-0000000A1nY-0dmX
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Sep 2025 14:27:18 +0000
Received: by mail-qv1-xf2e.google.com with SMTP id 6a1803df08f44-79599d65f75so7672206d6.2
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Sep 2025 07:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758810436; x=1759415236; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Glm9P9HTH7GF2LUGNVtDEQmwup7tzZ0lSiiqddi2yqw=;
        b=QynjFFOXmt+u8YzGLzEcmxRnH9UpRSrSwQqz5V3M4oBewBCqDwTiTt6t6CXBNwgsQh
         RCzx/RQNq/QddQd5ZmneRcYD4Ier2FpEjI8is4Pi12/OdczWcmmT9S87RfytJ2hz9xl1
         ESy+sU/3kuTZFK/FApG7DkomjENM3ZQhDEK++ori/Nc3pp85m4MsXE+mPHnNup0LHVpS
         ZUahUTWPTAQDSyJu/Mk8HBw4AAmdludiQVY8BAYBknWktmMExuvBLm7HH5hl06ED4Gky
         T1Woa3RmYhztkNFkGD7M0tCT86UKGSi/nqCEIkYPnmq8XeiorTaImKPX8NeFHMQGvo/G
         FUQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758810436; x=1759415236;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Glm9P9HTH7GF2LUGNVtDEQmwup7tzZ0lSiiqddi2yqw=;
        b=mpuZ/Q7KZDn4EMfYswTZT5PYmfwX6zaxq+N0vCySuD3PPvolcNgQaHxgEo/PmhFQ6J
         s5GOfDDYACFHfrgZTbtdScmoL/87jZtRy7AoLeVsQqmJXcSyYY6aZr5+8aC/4e6DWyLF
         NXlgsUwDXae3Sh6+Vmxf0zEW5Nxw8q9GwYGrKazuqKBUl+qLNr0spIcboTJ0H8nT4ms4
         UY/O9qELMjNww6VCHYzeCCsthcPUhYvl8SJnzFCW6GI+H5MyoVuHYfMd89ATpRi0LKA+
         +3hof39Y5/VpDyzQEcubvva3jXvCMpVp6le2V4vhv3QQYb0rMyXm5g6kfJo1KB6jBtCT
         WzUA==
X-Forwarded-Encrypted: i=1; AJvYcCWLtd7x67dWYrvGs+AlrT625t4EOzSIFOlvGdH8QeYYdcU+Sx+FJnjD2RYYm9WNtneOVFh+vN3mKRGUKkgv2w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8GYclq8zrFaJvMsK32GdREf7yBIMbdOH0tnqttBYlqO1m4O8B
	VwWFSu8y1YfmxZ7vmrDncF3OPXjfX6KiJWaZTUTBzYebR4pJCIX/6e+GpV75CARkJ6cThefEz8V
	RZHhMRodek9qO4Q9+HJbUbP+aSUc2hZw=
X-Gm-Gg: ASbGncvYbERXNZcaQLhSOsqNJua5wJaSAtg81MtAcz1BcDG56MIcMI1w+uTE5+qOZ/0
	AZletUjG0YxoSZ6nc6g/kOVmWfO2gkwa0Nzet00mdK3E7u+vRD/81DDsbhH/eNqeASY3qr2X4Dq
	ZyI1TPV2ZgakHU8wjciX+NLHxS++35eB69EZvSvKMclJ20Hmxu43m96zxuNZzAq4LXkRCoFN/EP
	4udgQJkSDnvgr4cVZM=
X-Google-Smtp-Source: AGHT+IH9fq+ZHarv12E5Wiwa5ANc8v0SLu1OdwXvzSahIaMx6BArGuHvon1RcjpXEhOi/ie1rgfJtvwPRNtpXcis6uE=
X-Received: by 2002:a05:6214:5095:b0:7f1:3094:306d with SMTP id
 6a1803df08f44-7fc400b2c46mr54245696d6.47.1758810435646; Thu, 25 Sep 2025
 07:27:15 -0700 (PDT)
MIME-Version: 1.0
References: <20250925092037.13582-1-jjm2473@gmail.com> <175880949051.820269.9096832740960574577.robh@kernel.org>
In-Reply-To: <175880949051.820269.9096832740960574577.robh@kernel.org>
From: jjm2473 <jjm2473@gmail.com>
Date: Thu, 25 Sep 2025 22:27:04 +0800
X-Gm-Features: AS18NWD4junFDrz8pZg4TpLnxjmQYCHszyF4BKlv4AvixoXW2PGMp3AIFbDTSgU
Message-ID: <CAP_9mL7RBoy_jhEp4CU7FXtc19UtzP0GKuE15y0isF=bF7XGGg@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] arm64: dts: rockchip: introduce LinkEase EasePi R1
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: kever.yang@rock-chips.com, krzk+dt@kernel.org, heiko@sntech.de, 
	alchark@gmail.com, linux-rockchip@lists.infradead.org, didi.debian@cknow.org, 
	pbrobinson@gmail.com, honyuenkwun@gmail.com, naoki@radxa.com, mani@kernel.org, 
	neil.armstrong@linaro.org, linux-arm-kernel@lists.infradead.org, 
	quentin.schulz@cherry.de, jbx6244@gmail.com, conor+dt@kernel.org, 
	dsimic@manjaro.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	inindev@gmail.com, ivan8215145640@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_072717_199097_338384C5 
X-CRM114-Status: GOOD (  19.84  )
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

Um9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4g5LqOMjAyNeW5tDnmnIgyNeaXpeWR
qOWbmyAyMjoxMuWGmemBk++8mgo+Cj4KPiBPbiBUaHUsIDI1IFNlcCAyMDI1IDE3OjIwOjM0ICsw
ODAwLCBMaWFuZ2JpbiBMaWFuIHdyb3RlOgo+ID4gTGlua0Vhc2UgRWFzZVBpIFIxIFsxXSBpcyBh
IGhpZ2gtcGVyZm9ybWFuY2UgbWluaSByb3V0ZXIuCj4gPgo+ID4gU3BlY2lmaWNhdGlvbjoKPiA+
IC0gUm9ja2NoaXAgUkszNTY4Cj4gPiAtIDJHQi80R0IgTFBERFI0IFJBTQo+ID4gLSAxNkdCIG9u
LWJvYXJkIGVNTUMKPiA+IC0gMXggTS4yIGtleSBmb3IgMjI4MCBOVk1lIChQQ0llIDMuMCkKPiA+
IC0gMXggVVNCIDMuMCBUeXBlLUEKPiA+IC0gMXggVVNCIDIuMCBUeXBlLUMgKGZvciBVU0IgZmxh
c2hpbmcpCj4gPiAtIDJ4IDEwMDAgQmFzZS1UIChuYXRpdmUsIFJUTDgyMTFGKQo+ID4gLSAyeCAy
NTAwIEJhc2UtVCAoUENJZSwgUlRMODEyNUIpCj4gPiAtIDF4IEhETUkgMi4wIE91dHB1dAo+ID4g
LSAxMnYgREMgSmFjawo+ID4gLSAxeCBQb3dlciBrZXkgY29ubmVjdGVkIHRvIFBNSUMKPiA+IC0g
MnggTEVEcyAob25lIHN0YXRpYyBwb3dlciBzdXBwbGllZCwgb25lIEdQSU8gY29udHJvbGxlZCkK
PiA+Cj4gPiBbMV0gaHR0cHM6Ly9kb2MubGlua2Vhc2UuY29tL3poL2d1aWRlL2Vhc2VwaS1yMS9o
YXJkd2FyZS5odG1sCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTGlhbmdiaW4gTGlhbiA8amptMjQ3
M0BnbWFpbC5jb20+Cj4gPiAtLS0KPiA+IENoYW5nZXMgaW4gdjI6Cj4gPiAtIENoYW5nZSBkZXBy
ZWNhdGVkICJyb2NrY2hpcCxzeXN0ZW0tcG93ZXItY29udHJvbGxlciIgdG8gInN5c3RlbS1wb3dl
ci1jb250cm9sbGVyIgo+ID4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9y
LzIwMjUwOTI1MDU1OTA2LjgzMzc1LTEtamptMjQ3M0BnbWFpbC5jb20vCj4gPgo+ID4gLS0tCj4g
Pgo+ID4KPgo+Cj4gTXkgYm90IGZvdW5kIG5ldyBEVEIgd2FybmluZ3Mgb24gdGhlIC5kdHMgZmls
ZXMgYWRkZWQgb3IgY2hhbmdlZCBpbiB0aGlzCj4gc2VyaWVzLgo+Cj4gU29tZSB3YXJuaW5ncyBt
YXkgYmUgZnJvbSBhbiBleGlzdGluZyBTb0MgLmR0c2kuIE9yIHBlcmhhcHMgdGhlIHdhcm5pbmdz
Cj4gYXJlIGZpeGVkIGJ5IGFub3RoZXIgc2VyaWVzLiBVbHRpbWF0ZWx5LCBpdCBpcyB1cCB0byB0
aGUgcGxhdGZvcm0KPiBtYWludGFpbmVyIHdoZXRoZXIgdGhlc2Ugd2FybmluZ3MgYXJlIGFjY2Vw
dGFibGUgb3Igbm90LiBObyBuZWVkIHRvIHJlcGx5Cj4gdW5sZXNzIHRoZSBwbGF0Zm9ybSBtYWlu
dGFpbmVyIGhhcyBjb21tZW50cy4KPgo+IElmIHlvdSBhbHJlYWR5IHJhbiBEVCBjaGVja3MgYW5k
IGRpZG4ndCBzZWUgdGhlc2UgZXJyb3IocyksIHRoZW4KPiBtYWtlIHN1cmUgZHQtc2NoZW1hIGlz
IHVwIHRvIGRhdGU6Cj4KPiAgIHBpcDMgaW5zdGFsbCBkdHNjaGVtYSAtLXVwZ3JhZGUKPgo+Cj4g
VGhpcyBwYXRjaCBzZXJpZXMgd2FzIGFwcGxpZWQgKHVzaW5nIGI0KSB0byBiYXNlOgo+ICBCYXNl
OiBhdHRlbXB0aW5nIHRvIGd1ZXNzIGJhc2UtY29tbWl0Li4uCj4gIEJhc2U6IGZhaWxlZCB0byBn
dWVzcyBiYXNlCj4KPiBJZiB0aGlzIGlzIG5vdCB0aGUgY29ycmVjdCBiYXNlLCBwbGVhc2UgYWRk
ICdiYXNlLWNvbW1pdCcgdGFnCj4gKG9yIHVzZSBiNCB3aGljaCBkb2VzIHRoaXMgYXV0b21hdGlj
YWxseSkKPgo+IE5ldyB3YXJuaW5ncyBydW5uaW5nICdtYWtlIENIRUNLX0RUQlM9eSBmb3IgYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC8nIGZvciAyMDI1MDkyNTA5MjAzNy4xMzU4Mi0xLWpq
bTI0NzNAZ21haWwuY29tOgo+Cj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgt
ZWFzZXBpLXIxLmR0YjogbW1jQGZlMDAwMDAwIChyb2NrY2hpcCxyazM1NjgtZHctbXNoYyk6IHN0
YXR1czogJ29uZU9mJyBjb25kaXRpb25hbCBmYWlsZWQsIG9uZSBtdXN0IGJlIGZpeGVkOgo+ICAg
ICAgICAgWydkaXNhYmxlJ10gaXMgbm90IG9mIHR5cGUgJ29iamVjdCcKPiAgICAgICAgICdkaXNh
YmxlJyBpcyBub3Qgb25lIG9mIFsnb2theScsICdkaXNhYmxlZCcsICdyZXNlcnZlZCcsICdmYWls
JywgJ2ZhaWwtbmVlZHMtcHJvYmUnXQo+ICAgICAgICAgZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8v
ZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9kdC1jb3JlLnlhbWwjCj4gYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjgtZWFzZXBpLXIxLmR0YjogbW1jQGZlMmIwMDAwIChyb2NrY2hpcCxy
azM1NjgtZHctbXNoYyk6IHN0YXR1czogJ29uZU9mJyBjb25kaXRpb25hbCBmYWlsZWQsIG9uZSBt
dXN0IGJlIGZpeGVkOgo+ICAgICAgICAgWydkaXNhYmxlJ10gaXMgbm90IG9mIHR5cGUgJ29iamVj
dCcKPiAgICAgICAgICdkaXNhYmxlJyBpcyBub3Qgb25lIG9mIFsnb2theScsICdkaXNhYmxlZCcs
ICdyZXNlcnZlZCcsICdmYWlsJywgJ2ZhaWwtbmVlZHMtcHJvYmUnXQo+ICAgICAgICAgZnJvbSBz
Y2hlbWEgJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9kdC1jb3JlLnlhbWwjCj4K
Pgo+Cj4KPgoKVGhhbmsgeW91IQoiZGlzYWJsZSIgaXMgYSB0eXBvLCBzaG91bGQgYmUgJ2Rpc2Fi
bGVkJywgYC4vc2NyaXB0cy9jaGVja3BhdGNoLnBsYApkb2Vzbid0IG1lbnRpb24gdGhpcy4KSSds
bCBmaXggaXQgYWZ0ZXIgcmV2aWV3IGlmIHRoZXJlIGFyZSBubyBvdGhlciBpc3N1ZXMuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
