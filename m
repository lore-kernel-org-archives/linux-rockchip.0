Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94A75C02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 11:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72gx7E+UkUL0UlhlBRrX3ybBqHyMprhHO7cYNZ3dpLQ=; b=vtshtv4IFd3TD0
	YEDybgNJL3BP+j2SRgBNo/sk0Qx1/x8azML/sC6lsV2nMAQG0Ay1Kb4ZDtyYPQ8Rck7ggcGWTiwfy
	LpT9kbbex52x0x3Qm6q8UBGchC6eyJlINTtHqswgF3CpwS40PoyStO4wRNtC9Pu9sD2XDYrnmavMP
	jrvydqJUx2vVemPeEXikeS4yBJzVdg6y6cv2LWlJtPjmq9WspX6tohMB3lTq8J7QlIxoYZqJM91Kg
	x+2h+YR+ePU6ALp/GcDJeGyYIe2Me7YRj4v4v6LdfMB4waTW6SOC0z1S+L2WytMdmo9ebOoujfzKO
	W27BVgHv7Z0c0ed2HtGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY1V5-0000000BfK1-0Pup;
	Wed, 15 Jan 2025 11:23:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY1Tg-0000000BezW-08XI;
	Wed, 15 Jan 2025 11:22:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=To:References:Message-Id:
	Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:
	Content-Type:Sender:Reply-To:Content-ID:Content-Description;
	bh=0Upt/HfMdWGKSnxZ90iRw8HV4YDvibzUnc+Z+31Ue4g=; b=OtKUVPcauy/mpGTIcT93S7AyMD
	q6JjBicgMqlETca4myab8LkFnt+9/zzeJf4gQ2w7LvCLogcDzb2T94FT8pFuGnXU0NfoaprTlUPRJ
	SVYWdAc1ASkBWojmaCH67+GSFy3DaoL/HL8JYiCuCrjtvZ9AhbwgDoopmL+2JkrAbvCM0rTPJR6KV
	56UymwJZVOaf0VEa7ITAXsAfr6f1AIKRd6sLP8+tzTqCvdH5yJK1T0QvC2O04S4N1RfF888xeC5TK
	uk4AeLP54wgRIainAjAfRFrx9o+ie+5FN5yDFxIAGN3FDCGfcHY1nu502FFpLvwrpnWLhWGTrmSjH
	vm5wfq9A==;
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY1Td-0000000Ar9A-0Uog;
	Wed, 15 Jan 2025 11:22:26 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5d3e8f64d5dso12709139a12.3;
        Wed, 15 Jan 2025 03:22:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736940142; x=1737544942; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Upt/HfMdWGKSnxZ90iRw8HV4YDvibzUnc+Z+31Ue4g=;
        b=htme1WZiUNks1Nb4AgEyQae2fpjLcNbLl0338sfbzzSoBP0Rki+x62zZ5ljo12VEDr
         Ny6dkM4yULJ+iwAyM2HDI4g3LxQ+/cx1BHdfFHS5bTnjYO3ZXoLs01gOXRGr9Q6WSq8y
         w4qACIw6jOg+DaXp7W+E2iRtgbE1dk8YdaZwDtWwKdLdomZBTkacQI2YUC34x53dz+Uh
         t6gBwRsh43Lwji475EHsFdHc3V9lwHwiSbH5k0a+SmTlVsmuhebzJ4Xn6sif6sBlt+gQ
         3WBFuAD4EtusPf1aQcjxgnypOuL7u4DB8MfHyo7WkQNgrVy1yQjSbJ2RNfS4fP87LILE
         kxYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736940142; x=1737544942;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Upt/HfMdWGKSnxZ90iRw8HV4YDvibzUnc+Z+31Ue4g=;
        b=LYxY/FlLq32iTClrqhEWiXPZf6fxyLvuY0AOAo1j5rbLPdWzkv2Gh60YzdXZcZA4Ia
         hvkDdAVhzS1LFOWnn5QIOBIX5Fzqzae/NXb6smSCePqqrRywqZBsu+puO6jT3B7ZSWCD
         DKShooTlqNGhaLov4YjuNFfYvhHg5FtfEolqho6uHtrRTsKjJ6bk7U6n3M8BJ1mhIQg4
         eBw9zBMhA8bZ50SHAhNynqiMh9FpvDjPjpubKPJluNN2dVETrq1zOpeQe7afF3MCkDfY
         Dtvf2tNVQm8nZJmE/FUXumGkaiNM4eile4SoymNQ3UwRRwCzCZIA3RxAKXuU4WA09xBt
         AmIA==
X-Forwarded-Encrypted: i=1; AJvYcCUU/yyDUP7PlHwo/pAcqFpT0S697iUr5i8w1dbUdhq4rIU4SXyA/dpk8SnPxjpBVRgac+I/4VqXy4yD@lists.infradead.org, AJvYcCVXQ3/HIbWSfzQaKL7bnu8+YsPwwAqO2VCs/Hl7XA3zpY2/BwHQWsHy33WZ5I+TSEMoLBGFGCS0wFMKfbqyYLsB@lists.infradead.org, AJvYcCVgaSBfb+mzhubz6B4z4GDtj/8SDngoxMXYol4QflL5cCsWvs1igArSPf4sQ2deFJflSWaIuxovMp9r5iLYBgI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yze1HcXeTULC/BkwyQqE8rvfy/aSE8QPVYB8sNCxzZUAFrbbbIA
	f4gPbBcLm4CPUkri2wRWI9hauX7QRBjJd+7FL6URwmuBXlbqe6lU
X-Gm-Gg: ASbGnctTNGT1769ZDo771xTTwJ5ATWMlfnEZeCNNLSLSFHeLNUbVyfXCeY6bEDd1Fzh
	R18fDTP7mOlGn1+J4IkJt9CPCj5bpmPjx6HaQCHqmwx8kffLJzCQgnC3g05PpSb62oQJXI1bbJ7
	sPRwWG6ip/mD2qhzMy8H6Df6MGQwkhYyH2bRZSWFDh6cnQfY8QEVQV4B7SoFmnpqxpNAc52V9og
	FOnA6mC6vi8vmVFVLvRqrM0nOAnZi4G3z+5ZV7GwG/to9kdREhfXfOA2XYHLcb9OPw4I2IeDFDK
	MOsbuMKpFg024IzBiKbSCOHCZrh30bQNiFzsPQ==
X-Google-Smtp-Source: AGHT+IGWl/B1zVg3sTaIZCIqSaOylWRNJO6IX9a5vKaFN9b3NZrlex+SipGGEVJonU8ibV27hGe6lg==
X-Received: by 2002:a17:907:781:b0:aa6:995d:9ef1 with SMTP id a640c23a62f3a-ab2ab6a84d3mr2804550766b.12.1736940142135;
        Wed, 15 Jan 2025 03:22:22 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c90dc6a8sm737651666b.72.2025.01.15.03.22.18
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2025 03:22:21 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.300.87.4.3\))
Subject: Re: [RFC PATCH v1 0/6] rockchip: add a functional usb3 phy driver for
 rk3328
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20250115012628.1035928-1-pgwipeout@gmail.com>
Date: Wed, 15 Jan 2025 12:22:07 +0100
Cc: Heiko Stuebner <heiko@sntech.de>,
 Algea Cao <algea.cao@rock-chips.com>,
 Michael Turquette <mturquette@baylibre.com>,
 kever.yang@rock-chips.com,
 linux-phy@lists.infradead.org,
 wulf@rock-chips.com,
 zyw@rock-chips.com,
 Dragan Simic <dsimic@manjaro.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-clk@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Arnd Bergmann <arnd@arndb.de>,
 Jonas Karlman <jonas@kwiboo.se>,
 frank.wang@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Alex Bee <knaerzche@gmail.com>,
 william.wu@rock-chips.com,
 Zhang Yubing <yubing.zhang@rock-chips.com>,
 Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Trevor Woerner <twoerner@gmail.com>,
 Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>,
 FUKAUMI Naoki <naoki@radxa.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Message-Id: <2EEA8028-8E4A-4588-A480-E5FF0F7BE82E@gmail.com>
References: <20250115012628.1035928-1-pgwipeout@gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3826.300.87.4.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_112225_267309_BB403447 
X-CRM114-Status: GOOD (  23.40  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFp
bC5jb20+IHcgZG5pdSAxNSBzdHkgMjAyNSwgbyBnb2R6LiAwMjoyNjoKPiAKPiAKPiBUaGlzIGlz
IG15IG5ld2x5IHJld29ya2VkIHBoeSBkcml2ZXIgZm9yIHRoZSByazMzMjggdXNiMyBwaHkuIEl0
IGlzCj4gYmFzZWQgbG9vc2VseSBvbiBteSBvcmlnaW5hbCB2ZXJzaW9uLCBidXQgYXMgb2Ygbm93
IGFsbW9zdCBub3RoaW5nIG9mCj4gdGhlIG9yaWdpbmFsIGRyaXZlciByZW1haW5zLiBUaGUgbWFp
biBmaXggaGVyZSBpcyB0aGUgZGlzY292ZXJ5IG9mCj4gQklUKDYpIGluIHRoZSBpbnRlcnJ1cHQg
ZW5hYmxlIGdyZiByZWdpc3RlciBmaXhlcyB0aGUgdXNiMyBkaXNjb25uZWN0aW9uCj4gZGV0ZWN0
aW9uIChtb3N0bHkpLiBPbiBvY2Nhc2lvbiBhbiB1bnBvcHVsYXRlZCB1c2IzIGh1YiB3aWxsIHRh
a2UKPiBzZXZlcmFsIHNlY29uZHMgdG8gZGlzY29ubmVjdC4gSG93ZXZlciB0aGlzIG1lYW5zIGFs
bCBvZiB0aGUgaGFjayBhcm91bmQKPiB3b3JrIHRvIHJlc2V0IHRoZSB1c2IgY29yZSBtYW51YWxs
eSBpcyBubyBsb25nZXIgcmVxdWlyZWQuCj4gCj4gSSBkaWQgbXkgYmVzdCB0byBkb2N1bWVudCBh
bGwgcmVnaXN0ZXJzIEkgY291bGQgZmluZC4gQSBsb3Qgd2FzIHRha2VuCj4gZnJvbSBlbWFpbHMg
YmV0d2VlbiBteXNlbGYgYW5kIFJvY2tjaGlwJ3MgZW5naW5lZXJzLCBtdWNoIHRoYW5rcyB0bwo+
IFdpbGxpYW0gV3UgPHd1bGZAcm9jay1jaGlwcy5jb20+IGZvciB0aGVpciBhc3Npc3RhbmNlIGhl
cmUuIFRoZSByZXN0IG9mCj4gdGhlIGNvbmZpZyBiaXRzIHdlcmUgdGFrZW4gZnJvbSB0aGUgcmsz
MzI4IGFuZCByazMyMjhoIFRSTXMgYW5kIHRoZQo+IGRvd25zdHJlYW0gZHJpdmVyLiBFdmVyeXRo
aW5nIHRoYXQgSSBjb3VsZG4ndCBmaW5kIGEgZGVmaW5pdGlvbiBmb3IgaXMKPiBwcmVmaXhlZCBV
TktfIG9yIFVOS05PV05fLiBUaGVyZSdzIGEgbG90IG9mIG9idmlvdXNseSB1c2VkIGNvbmZpZ3Vy
YXRpb24KPiByZWdpc3RlcnMgd2l0aCB0aGUgcGlwZSBpbnRlcmZhY2UgdGhhdCBhcmUgYWxzbyB1
bmRvY3VtZW50ZWQuCj4gCj4gVGhlIG9ubHkgbWFqb3IgYnVnIEkgaGF2ZSBzbyBmYXIgaXMgbXkg
QVg4ODE3OSB1c2IzIGdpZ2FiaXQgZXRoZXJuZXQKPiBhZGFwdGVyIChQbHVnZ2FibGUgYnJhbmQp
IGNyYXNoZXMgb3V0IHdoZW4gbGFyZ2UgYW1vdW50cyBvZiBkYXRhIGFyZQo+IHRyYW5zbWl0dGVk
LiBJIHN1c3BlY3QgdGhpcyBpcyByZWxhdGVkIHRvIHRoZSBSWCBhbmQgVFggdHVuaW5nLCBhcwo+
IGxlYXZpbmcgaXQgYXQgZGVmYXVsdHMgbWFrZXMgdGhpbmdzIHdvcnNlLiBBcyBJIGFtIG5vdCBh
IFVTQjMgZW5naW5lZXIKPiBhbmQgSSBkbyBub3QgaGF2ZSB0aGUgc3BlY2lhbGl6ZWQga25vd2xl
ZGdlIGFuZCBoYXJkd2FyZSB0byBkZXRlcm1pbmUKPiB3aGF0IGlzIGdvaW5nIHdyb25nLCBJIGFt
IGhvcGluZyB0aGUgbWFpbGluZyBsaXN0IHdpbGwgaGF2ZSBhbiBhbnN3ZXIKPiBoZXJlLgo+IAo+
IFBsZWFzZSB0ZXN0IGFuZCByZXZpZXcuCj4gCj4gVmVyeSBSZXNwZWN0ZnVsbHksCj4gUGV0ZXIg
R2Vpcwo+IAo+IAo+IAo+IFBldGVyIEdlaXMgKDYpOgo+ICBjbGs6IHJvY2tjaGlwOiBmaXggd3Jv
bmcgY2xrX3JlZl91c2Izb3RnIHBhcmVudCBmb3IgcmszMzI4Cj4gIGR0LWJpbmRpbmdzOiBwaHk6
IHJvY2tjaGlwOiBhZGQgcmszMzI4IHVzYjMgcGh5Cj4gIHBoeTogcm9ja2NoaXA6IGFkZCBkcml2
ZXIgZm9yIHJrMzMyOCB1c2IzIHBoeQo+ICBhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIHJrMzMy
OCB1c2IzIHBoeSBub2RlCj4gIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBlbmFibGUgdGhlIHVzYjMg
cGh5IG9uIHJrMzMyOC1yb2MgYm9hcmRzCj4gIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBlbmFibGUg
dGhlIHVzYjMgcGh5IG9uIHJlbWFpbmluZyByazMzMjggYm9hcmRzCj4gCj4gLi4uL2JpbmRpbmdz
L3BoeS9yb2NrY2hpcCxpbm5vLXVzYjNwaHkueWFtbCAgIHwgMTY2ICsrKysKPiAuLi4vYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzI4LW5hbm9waS1yMi5kdHNpICAgfCAgMTIgKwo+IC4uLi9kdHMvcm9j
a2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRzaSB8ICAxMiArCj4gYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9jLmR0c2kgIHwgIDEyICsKPiAuLi4vYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzI4LXJvY2stcGktZS5kdHMgICAgfCAgMTIgKwo+IC4uLi9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9jazY0LmR0cyB8ICAxMiArCj4gYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzMjguZHRzaSAgICAgIHwgIDM5ICsKPiBkcml2ZXJzL2Nsay9yb2Nr
Y2hpcC9jbGstcmszMzI4LmMgICAgICAgICAgICAgfCAgIDIgKy0KPiBkcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9LY29uZmlnICAgICAgICAgICAgICAgICAgfCAgMTAgKwo+IGRyaXZlcnMvcGh5L3JvY2tj
aGlwL01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMSArCj4gZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMy5jIHwgODY5ICsrKysrKysrKysrKysrKysrKwo+IDEx
IGZpbGVzIGNoYW5nZWQsIDExNDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IGNyZWF0
ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tj
aGlwLGlubm8tdXNiM3BoeS55YW1sCj4gY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjMuYwo+IAo+IC0tIAo+IDIuMzkuNQo+IAo+IAoK
UGV0ZXIsCkkgYXBwbGllZCB0aGlzIGFzIHRlc3QgcnVuIG9uIDYuMTIuOSBhbmQgZG1lc2cgc2F5
czoKClsgICAxNi4zNjg1MTRdIHJvY2tjaGlwLXVzYjMtcGh5IGZmNDYwMDAwLnVzYjMtcGh5OiBj
b3VsZCBub3QgZ2V0IHVzYjNwaHkgcmVmIGNsb2NrClsgICAxNi4zNjg1MzRdIHJvY2tjaGlwLXVz
YjMtcGh5IGZmNDYwMDAwLnVzYjMtcGh5OiBwYXJzZSBkdCBmYWlsZWQgLTIKWyAgIDE2LjM2ODU0
M10gcm9ja2NoaXAtdXNiMy1waHkgZmY0NjAwMDAudXNiMy1waHk6IHByb2JlIHdpdGggZHJpdmVy
IHJvY2tjaGlwLXVzYjMtcGh5IGZhaWxlZCB3aXRoIGVycm9yIC0yCgpUaGlzIGlzIG9uIGJlZWxp
bmsgYTEgdHZib3guCgpEbyBJIG1pc3Mgc29tZXRoaW5nPwoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
