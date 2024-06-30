Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51A2FC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 09:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrXq7kZAVdWjtcZmrdfWIyZJ+x9UUMRhCcnSGf852oo=; b=LtQ4X7BNk40kM8
	YkUXOsekHchy8YzeeDQ0ZbNilFSowXYuK8HhmWeowfIUPQQj6ZiibCAdXwIuPu2TnoK17WKLGMruH
	w2JgAA+onU1p49zpLCI484Q0Z60YDmPmgGAq1iwobj5FOdynxM6bmPG0K7of8KjJnb9H5WRPrkDY+
	n/ntS1s/zNXpoPYPZT6fGCTvONfkLTNj/59vHm18BfDvYZbUugVQ/nqZdWgKs1QxRSj236MRkvBzp
	zQYJGzdrHa8CiC2K+rMbWknpum34CEY/e/kn6La4MYWxD1IBchQU8Tv00W9g8+1/02z8bFWxtwYNX
	BRV//iTBR4xK6gF3JnJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNqee-000000008E3-3JsS;
	Sun, 30 Jun 2024 09:15:28 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNqeT-000000008CH-2XKX;
	Sun, 30 Jun 2024 09:15:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6BCF2CE09D0;
	Sun, 30 Jun 2024 09:15:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78BB4C4AF0F;
	Sun, 30 Jun 2024 09:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719738914;
	bh=tc+Ufg00udHbrhXlW8SdH881js1R768qk0khtQCwXfM=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=en4uil1KnZ/7MbdeOWy8vNN5qJWiUXY0l2SbZobfjZ8oplSyoWMu1lOkjeF8flaH3
	 /HV9bJ7Vv9kKv17jPnFYwEukaevW6iRTUbbr5QDOdTbDZa3n6lDKP1nTClVwZpq8+J
	 oLaPu6sLyqwDf8E5OWmtJo7s5wiOFHtSqV6PrOxjaurK1T+ap5dnqpfGVBAeURsbSe
	 TFAgfJQljWDYaCUdX8gxQiYJybypsxpSCGjM1obpaU26PlmwrDoAjm1+7EE7AWAQTh
	 jcCs2X75RvRjSA5W7N6I/D1JRGNwVEi8P24nBLFrROD6E/ZZHuaJSCEo8rj9dPsIHL
	 Z81Vj7v43wiTQ==
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ed5ac077f5so22963301fa.1;
        Sun, 30 Jun 2024 02:15:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXUzD9cMcz74yi/rJRO/U1N06OEtt/BEHNuFwlXS0FOwUCD4mwTFCyH6T3Bdm5fzns6RJQ0oakqGAW0+Bof+5hTCcFKnk5tP6ZCQalty5I2E3iWpk9S/+pciNH3/DMKM43zC53kj6wszHWaOY0zRVrCoit+KE8Ykmk=
X-Gm-Message-State: AOJu0Yz6lplgj/ER1T2hU/p9PSJkNomP6pdpCVE28prdUHArGF2O0GRa
	K3sumE8bqbn8OEmlwrCeGd4fNJFUsrhRcko2uR7TaULJ3Yujn2hGEvxgEJzQg6NXQZ/4syurXKj
	iQGxe9hW/PEjaAZVeWS+E7MO+jqs=
X-Google-Smtp-Source: AGHT+IHYW4n5GnYJwHXqY+6mUXvauoz57bZueShtW/YuVL9pXD9MpL3q7Rr5kG0lABD6uVFGXFXO7kcRPrfoJTzNisI=
X-Received: by 2002:a2e:a179:0:b0:2ec:4fec:8bda with SMTP id
 38308e7fff4ca-2ee5e6cd6a7mr18022581fa.36.1719738912735; Sun, 30 Jun 2024
 02:15:12 -0700 (PDT)
MIME-Version: 1.0
References: <20240630073605.2164346-1-jacobe.zang@wesion.com>
 <20240630073605.2164346-5-jacobe.zang@wesion.com> <bd661690-1de8-4030-a209-ef26d3559221@gmx.net>
 <TYZPR03MB7001AC28827A86338BF2B77380D22@TYZPR03MB7001.apcprd03.prod.outlook.com>
In-Reply-To: <TYZPR03MB7001AC28827A86338BF2B77380D22@TYZPR03MB7001.apcprd03.prod.outlook.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Sun, 30 Jun 2024 17:15:00 +0800
X-Gmail-Original-Message-ID: <CAGb2v66Vk8SMs1TOs+80Jy5fXumuYqCx59Tzd_N7wJAfyysQcw@mail.gmail.com>
Message-ID: <CAGb2v66Vk8SMs1TOs+80Jy5fXumuYqCx59Tzd_N7wJAfyysQcw@mail.gmail.com>
Subject: Re: [PATCH v3 4/5] wifi: brcmfmac: Add optional lpo clock enable support
To: Jacobe Zang <jacobe.zang@wesion.com>
Cc: Stefan Wahren <wahrenst@gmx.net>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>, 
	"kvalo@kernel.org" <kvalo@kernel.org>, "davem@davemloft.net" <davem@davemloft.net>, 
	"edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>, 
	"pabeni@redhat.com" <pabeni@redhat.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"efectn@protonmail.com" <efectn@protonmail.com>, "dsimic@manjaro.org" <dsimic@manjaro.org>, 
	"jagan@edgeble.ai" <jagan@edgeble.ai>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "arend@broadcom.com" <arend@broadcom.com>, 
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, 
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, "megi@xff.cz" <megi@xff.cz>, 
	"duoming@zju.edu.cn" <duoming@zju.edu.cn>, "bhelgaas@google.com" <bhelgaas@google.com>, 
	"minipli@grsecurity.net" <minipli@grsecurity.net>, 
	"brcm80211@lists.linux.dev" <brcm80211@lists.linux.dev>, 
	"brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>, Nick Xie <nick@khadas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_021518_026350_937ECF02 
X-CRM114-Status: GOOD (  13.42  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU3VuLCBKdW4gMzAsIDIwMjQgYXQgNToxMOKAr1BNIEphY29iZSBaYW5nIDxqYWNvYmUuemFu
Z0B3ZXNpb24uY29tPiB3cm90ZToKPgo+IEhpIFN0ZWZhbiwKPgo+ID4+IFdpRmkgbW9kdWxlcyBv
ZnRlbiByZXF1aXJlIDMya0h6IGNsb2NrIHRvIGZ1bmN0aW9uLiBBZGQgc3VwcG9ydCB0bwo+ID4+
IGVuYWJsZSB0aGUgY2xvY2sgdG8gUENJZSBkcml2ZXIuCj4gPiB0aGUgbG93IHBvd2VyIGNsb2Nr
IGlzIGluZGVwZW5kZW50IGZyb20gdGhlIGhvc3QgaW50ZXJmYWNlIGxpa2UgUENJZS4gU28KPiA+
IHRoZSBjbG9jayBoYW5kbGluZyBzaG91bGQgbW92ZSB0byB0aGUgY29tbW9uIGNvZGUuIFNvcnJ5
LCBub3QgaSBjYW5ub3QKPiA+IGdpdmUgYSBnb29kIHN1Z2dlc3Rpb24sIHdoYXQncyB0aGUgYmVz
dCBwbGFjZSBmb3IgdGhpcy4KPgo+IEkgdGhpbmsgdGhlIGNsb2NrIGlzIHVzZWQgYnkgdGhlIFBD
SWUgZGV2aWNlIHNvIGVuYWJsZSBpdCBpbiB0aGlzIGZpbGUuIEFsc28gSSBjaGVja2VkCj4gdXNl
IG9mIGNsb2NrIHdoaWNoIGluIHNwaVswXSBvciBzZGlvWzBdIGRldmljZSB3YXMgZW5hYmxlZCBz
aW1pbGFybHkgdG8gdGhpcy4KPgo+IFswXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAy
MTA4MDYwODEyMjkuNzIxNzMxLTQtY2xhdWRpdS5iZXpuZWFAbWljcm9jaGlwLmNvbS8KCllvdSdy
ZSBsb29raW5nIGF0IHRoZSB3cm9uZyBkcml2ZXIuIEZvciBicmNtZm1hYywgdGhlIGxwbyBjbG9j
ayBpcyB0b2dnbGVkCmJ5IHRoZSBNTUMgcHdyc2VxIGNvZGUuIEFuZCBmb3IgdGhlIEJsdWV0b290
aCBzaWRlICh3aGVyZSBpdCByZWFsbHkgbWF0dGVycykKZm9yIFVBUlRzLCBpdCBpcyBpbiBkcml2
ZXJzL2JsdWV0b290aC9oY2lfYmNtLmMuIGFuZCBkb2N1bWVudGVkIGluIHRoZQpiaW5kaW5nIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJvYWRjb20tYmx1ZXRvb3RoLnlh
bWwKCgpDaGVuWXUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
