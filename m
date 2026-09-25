Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB7A0C9830D
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2026 13:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8n49tVEL/mCvo4lzDUNgHVDx70J/vAlio20PH12HaH0=; b=0ou/aBUZd/Wo74
	lTGYrMCHNI6deqaq56Wqj5T08pFLfhdeqO0MsMw8DOnJWtSTVIiMHhGbKiLn5jj/neSrfv/zrlIym
	MzFVLW4T474iVY2SL/f8irPHDeTgYQgedYSdzPFbVoiszS0exWzijueOnaAFCnvqmjl3eEAnWZgfL
	hX08W3qEVE0Xe03Xja/2Dvo1dni4ctmuZElNH6srvyFABhZiJd7gWa/QKt9PJdEiet7nDDh8ppJJL
	UTInM9LsnBbRdEXp7SWLbwWcI58+st4ldVcNGWxFR0oZPUswI6kRdHuXooU2HtsgMr7xL3y2wPxEt
	7fWaJI9M9TOlQRlDUfuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA6PZ-0000000DVHX-3tYY;
	Fri, 25 Sep 2026 13:56:25 +0000
Received: from mail-lr2-x10.google.com ([2a00:1450:4864:38::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA6PV-0000000DVFu-3Qkh
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Sep 2026 13:56:24 +0000
Received: by mail-lr2-x10.google.com with SMTP id 38308e7fff4ca-3a318299b38so7524661fa.0
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Sep 2026 06:56:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790344578; cv=none;
        d=google.com; s=arc-20260327;
        b=plFiSY5vkboSyku+6YZnY38cLex2XMlS3QSBtt724HjG1vqXsAjZL9Pu6+4jxPrItK
         s27ZxMBVtfVVKUdemuphhoTUDFle0orfgeTJoICE/YFmnVDSL/zSaQtltKH5CypWU8Ft
         g8vxlK2+kFl+EXC4WNsO+0SyVokCbw9vvGHa3FyeNr7J/37L8ipeAH31N4+rX0nLlTsG
         ppsv0bV0KLjt6HywYqnXs1GGVT4IdFKB1AOz4nbKIWXqD5OVLNmWP0kN3hvMzb9mMsjb
         q5b6XtW0rcR8t2XIJ+DR6364FIk6rccyp0F2DYqY7xIDfmy7B2UbUD72QOG3LF8VFDxT
         iVTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5RSbzXLvSVEOnRR2F+nkCevP1o0t0p9ITeJnENpJDZs=;
        fh=HgRtnBmCRVv2ybQEoKRP+Mb2TnTcQud43/PaaZ+Y8lo=;
        b=EvYc9vckmcOyh82xIsYnt2docZ800O9G+a5C+TWdQTNw48V/ZhUlYG6TwjRWfdknhC
         q9Zh01gnHBKnJ1AorhE5Y2avqOk2j4F+8+rEY+jaJQYNUaB7lk+Xx6xMNw6ymMbKXmUd
         I8UmTpCNDreDtXwTXBkMMDa6ebYpGm6mz7ssVr4Xy3TaKCqJrooSB0Dsk1wVnmFVxN99
         jTJNEzu2rA5X5EDlTUQXvVIWpTrrFQayFrMainvIyat66OG8LGcuIg9yJxcjwWcaoomr
         0tIhALzSWndcumDhPC4xXvT9VD6ReOjgL4e4vN2yypokpbxQeCyCNWiSjBflFrmtKR2F
         LlMw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wermuth-pl.20251104.gappssmtp.com; s=20251104; t=1790344578; x=1790949378; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=5RSbzXLvSVEOnRR2F+nkCevP1o0t0p9ITeJnENpJDZs=;
        b=Ah3nxQznwpXpiue5j386eNtBq6lCG2LklmXtDe2NgyQde4b1xGKaIruHTxBhD/XuSg
         pqaVrCGcARMS+CHqkmTJdS1z8x9kr9k4qzbJYOwBSMj7SC6T2o0EDrCS2kSuroSWEzbA
         y0NMH8EZkds9xvPvEFAddAFCCPoTtp9XQ+HKEW0bi5Jx+pqN6QNr8cJpVHkXayPTpXWa
         RI2r8xCVM42gQUhBObQRaK0D0IdCoRoeSHjbv5QTubORFIlvlmpmEROroKdYcY0U1P0Y
         jdS67vOoapEVNA9yjg4rNHUlBARfEgB3h6JuGPpepkLS/8amLUhpJMO/Z7pr2W7IjEGg
         wg3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790344578; x=1790949378;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5RSbzXLvSVEOnRR2F+nkCevP1o0t0p9ITeJnENpJDZs=;
        b=Mq3/B4AE0ZS7P1e/Alox3COfGX3j++BqbjApLW1N7950m9CZ1LDIhDrAndJ8nvTEbp
         mgDOFXG7cR9vh+4eEo5b72Sj/cmwsL+dPbs+NAW+gOpArZVp9t9hBRP8jkHRxarz8wAG
         rEIUJ6u6MBf7fmU/JOiFJY6C3fvbDuhPLxjL3L3y5Xl8JZ+SIP6w551mjT5tyuNfJw6Y
         2BFs/mF5hiu6Men/wyYvepinYG/7MdZ/EE6PJdZMU/HjA3BYNrMFsE875rkFiO6dTHmX
         h/NSN/lQkZJmQKUsGvLJkbXY6DqdppcV0aSUty60BfPCtuAys59VPhihG2wclpAqXbE/
         NiLQ==
X-Forwarded-Encrypted: i=1; AKwUvBwVbty03in2Ezws70amiy1js/ABQnYk5s8NIDF2HEaNdQuywhV87uevfm+KnX057f93kJtpzvb+WHZpvQvCwg==@lists.infradead.org
X-Gm-Message-State: AFuF++mtIW3xe49hYNHoae5WZ1SDlsu3SliEOO6N2p6lLioOfjbSDY2/
	h9DJzlkM0M8BwffP/amXTYnoo44RIzu5puyZyVZ4wrWX7ZGhKeL2KbwcWAciA0EKUd+4FnWtELl
	Yz+5yh7fF0XRgJU+rUXQfmqu900n5ruwWGaxeDulJSA==
X-Gm-Gg: AYBFou3p+ySHLGgo/KVT7as2OgJpwwV6UwmjzajBCemc0QNYPAq6R2qGW+vMht+Fen5
	xVH41wBRxs3UeB1PARTFTLufsPe50HBytXCIZ14vDz4mQ+IvYPOMFZyj31S0lQiFL5uNpDm26xm
	P5+H7GjQFxKHKDQPO8ldkFj7d+dWWdR1hikbVKFBLnnC5zGfBKxDzqGKrQ9qUwX8wK9zKNp946U
	wOIUiiDOBGK3Z4jShHbFvQCXnu0of9ZD1PbTsyR4nSMNrbE50eQoIjWzMhTvuFQlJD/R27kuYp9
	9XkAumUZubI7BHslk4yX7jesPtm2mNq59FCFc+T4l27jmMrgeay+8GYf
X-Received: by 2002:a2e:be1d:0:b0:3a5:dfe2:7f5c with SMTP id
 38308e7fff4ca-3a63c0df7bemr13420501fa.16.1790344578255; Fri, 25 Sep 2026
 06:56:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260924071445.441822-1-adam@wermuth.pl> <20260924071445.441822-2-adam@wermuth.pl>
 <e03db2e9-085b-49ff-8d4a-bc112bc4ddd7@kwiboo.se> <CABkrwJ6uvjS8bez6j0MZbp2Y+O9RhyU09YOLrUzHaeUEVC=Qkg@mail.gmail.com>
 <arZ0nqBvHDzSbZOE@venus>
In-Reply-To: <arZ0nqBvHDzSbZOE@venus>
From: Adam Wermuth <adam@wermuth.pl>
Date: Fri, 25 Sep 2026 15:56:07 +0200
X-Gm-Features: AclHuK-tBvtfu3ULfg1Xof4vNjCZDJ-C6A-b4CKwc6HFF2K6CA8VYr9U3QBsxtw
Message-ID: <CABkrwJ5xdMcRJsjubSJcfMkTs5CzKdAvQK83Xar3gZPvO_wa0w@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Enable USB 2.0 host1 on Radxa
 ROCK 3B
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_065622_427687_A781E058 
X-CRM114-Status: GOOD (  35.18  )
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

SGksCgpPbiBUaHUsIDI1IFNlcCAyMDI2IDM6MjYgUE0sIFNlYmFzdGlhbiBSZWljaGVsIHdyb3Rl
Ogo+IFdoeSB3b3VsZCB0aGlzIGJlIGJldHRlciBzdWl0ZWQgYXMgYW4gT3ZlcmxheT8gTm90aGlu
ZyBkZXNjcmliZXMgdGhlCj4gc3BlY2lmaWMgY2FyZCBwbHVnZ2VkIGluIGFzIGl0IGlzIGF1dG8t
ZGlzY292ZXJlZCB2aWEgVVNCLiBUaGUKPiBvdmVybGF5cyBhcmUgbW9zdGx5IHJlcXVpcmVkIGZv
ciB0aGluZ3MgdGhhdCBjYW5ub3QgZWFzaWx5IGJlCj4gYXV0by1kZXRlY3RlZC4gRldJVyB3ZSBk
b24ndCBoYXZlIE0uMiBLZXkgTSBhcyBhIERUIG92ZXJsYXkgZWl0aGVyLgoKVGhlIG92ZXJsYXkg
d2FzIEpvbmFzJyBzdWdnZXN0aW9uLCBzbyBJJ2xsIGxldCBoaW0gZXhwbGFpbiBoaXMKcmVhc29u
aW5nLiBNeSBvd24gdW5kZXJzdGFuZGluZyB3YXMgdGhhdCBpdCB3b3VsZCBhdm9pZCBwb3dlcmlu
ZyB0aGUKc2xvdCAoYWx3YXlzLW9uIHN1cHBseSBwbHVzIFJFU0VUIy9XX0RJU0FCTEUxIyBob2dz
KSBvbiBib2FyZHMgd2hlcmUKbm90aGluZyBpcyBwbHVnZ2VkIGluLgoKVGhhdCBzYWlkLCBJIGFn
cmVlIHRoYXQgdGhlIG1vZHVsZSBpdHNlbGYgaXMgYXV0by1kaXNjb3ZlcmVkIHZpYSBVU0IsCmFu
ZCB0aGUgS2V5IE0gc2xvdCBvbiB0aGlzIGJvYXJkIGlzIGRlc2NyaWJlZCBpbiB0aGUgYmFzZSBE
VCBhcyB3ZWxsLApzbyBJJ20gZmluZSB3aXRoIGtlZXBpbmcgdGhlIEIta2V5IHNsb3QgdGhlcmUs
IGFzIGluIHYxLgoKPiBTb21ldGhpbmcgdG8gY29uc2lkZXIgaXMsIHRoYXQgZm9yIEtleSBFIGFu
ZCBLZXkgTSB0aGVyZSBpcyBhIHByb3Blcgo+IERUIGJpbmRpbmcgbm93OiBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvY29ubmVjdG9yL3BjaWUtbTItKi55YW1sCj4KPiBXZSBwcm9i
YWJseSB3YW50IHRoZSBzYW1lIGZvciBLZXkgQi4KClRoYW5rcyBmb3IgdGhlIHBvaW50ZXIuIEFz
IGZhciBhcyBJIGNhbiBzZWUsIGEgS2V5IEIgYmluZGluZyB3b3VsZAphbHNvIG5lZWQgZHJpdmVy
IHN1cHBvcnQgdG8gaGFuZGxlIHRoZSBzdXBwbHksIFJFU0VUIyBhbmQgV19ESVNBQkxFMSMsCnNv
IGl0IGlzIGEgbGFyZ2VyIHBpZWNlIG9mIHdvcmsuIFdvdWxkIGl0IGJlIGFjY2VwdGFibGUgdG8g
ZGVzY3JpYmUKdGhlIHNsb3QgaW4gdGhlIGJhc2UgRFQgZm9yIG5vdyBhbmQgbW92ZSB0byBhIGNv
bm5lY3RvciBiaW5kaW5nIG9uY2UKb25lIGV4aXN0cyBmb3IgS2V5IEI/CgpKb25hcywgSGVpa28s
IHdoYXQgZG8geW91IHRoaW5rPwoKVGhlIGZhbiBwYXRjaCBpcyBpbmRlcGVuZGVudCBvZiB0aGlz
LCBzbyBJIGNvdWxkIHJlc2VuZCBpdCBvbiBpdHMKb3duIGluIHRoZSBtZWFudGltZS4KCkFkYW0K
CnB0LiwgMjUgd3J6IDIwMjYgbyAxNToyNiBTZWJhc3RpYW4gUmVpY2hlbAo8c2ViYXN0aWFuLnJl
aWNoZWxAY29sbGFib3JhLmNvbT4gbmFwaXNhxYIoYSk6Cj4KPiBIaSwKPgo+IE9uIFRodSwgU2Vw
IDI0LCAyMDI2IGF0IDA5OjAzOjAwUE0gKzAyMDAsIEFkYW0gV2VybXV0aCB3cm90ZToKPiA+IE9u
IFRodSwgMjQgU2VwIDIwMjYgNjoxMiBQTSwgSm9uYXMgS2FybG1hbiB3cm90ZToKPiA+ID4gVGhp
cyBhbmQgbmV4dCBwYXRjaCBpcyBsaWtlbHkgYmVzdCBzdWl0ZWQgYXMgYW4gZHQtb3ZlcmxheS4K
PiA+Cj4gPiBUaGFua3MgZm9yIHRoZSByZXZpZXcuIFRoYXQgbWFrZXMgc2Vuc2UsIGFzIHRoZSBC
LWtleSBzbG90IGlzIG5vdAo+ID4gYWx3YXlzIHBvcHVsYXRlZC4KPiA+Cj4gPiBGb3IgdjIgSSB3
aWxsIG1vdmUgdGhlIGhvc3QxIGVuYWJsZW1lbnQgYW5kIHRoZSBXV0FOIHBvd2VyLCBSRVNFVCMK
PiA+IGFuZCBXX0RJU0FCTEUxIyBoYW5kbGluZyBpbnRvIGEgbmV3IHJrMzU2OC1yb2NrLTNiLXd3
YW4uZHRzbyBvdmVybGF5LAo+ID4gYW5kIGtlZXAgb25seSB0aGUgZmFuIHBhdGNoIGluIHRoZSBi
YXNlIERULgo+Cj4gV2h5IHdvdWxkIHRoaXMgYmUgYmV0dGVyIHN1aXRlZCBhcyBhbiBPdmVybGF5
PyBOb3RoaW5nIGRlc2NyaWJlcyB0aGUKPiBzcGVjaWZpYyBjYXJkIHBsdWdnZWQgaW4gYXMgaXQg
aXMgYXV0by1kaXNjb3ZlcmVkIHZpYSBVU0IuIFRoZQo+IG92ZXJsYXlzIGFyZSBtb3N0bHkgcmVx
dWlyZWQgZm9yIHRoaW5ncyB0aGF0IGNhbm5vdCBlYXNpbHkgYmUKPiBhdXRvLWRldGVjdGVkLiBG
V0lXIHdlIGRvbid0IGhhdmUgTS4yIEtleSBNIGFzIGEgRFQgb3ZlcmxheSBlaXRoZXIuCj4KPiBT
b21ldGhpbmcgdG8gY29uc2lkZXIgaXMsIHRoYXQgZm9yIEtleSBFIGFuZCBLZXkgTSB0aGVyZSBp
cyBhIHByb3Blcgo+IERUIGJpbmRpbmcgbm93OiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvY29ubmVjdG9yL3BjaWUtbTItKi55YW1sCj4KPiBXZSBwcm9iYWJseSB3YW50IHRoZSBz
YW1lIGZvciBLZXkgQi4KPgo+IEdyZWV0aW5ncywKPgo+IC0tIFNlYmFzdGlhbgo+Cj4KPiA+Cj4g
Pgo+ID4gY3p3LiwgMjQgd3J6IDIwMjYgbyAxODoxMiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2li
b28uc2U+IG5hcGlzYcWCKGEpOgo+ID4gPgo+ID4gPiBIaSBBZGFtLAo+ID4gPgo+ID4gPiBPbiA5
LzI0LzIwMjYgOToxNCBBTSwgQWRhbSBXZXJtdXRoIHdyb3RlOgo+ID4gPiA+IFRoZSBVU0IgMi4w
IGRhdGEgbGluZXMgb2YgdGhlIE0uMiBCLWtleSBzbG90IGFyZSByb3V0ZWQgdG8gVVNCMl9IT1NU
MywKPiA+ID4gPiB3aGljaCBpcyBzZXJ2ZWQgYnkgdXNiX2hvc3QxX2VoY2kvb2hjaSB0aHJvdWdo
IHRoZSBob3N0IHBvcnQgb2YKPiA+ID4gPiB1c2IycGh5MS4gRW5hYmxlIHRoZSBjb250cm9sbGVy
cyBhbmQgdGhlIFBIWSBwb3J0IHNvIHRoYXQgbW9kdWxlcyBpbgo+ID4gPiA+IHRoZSBCLWtleSBz
bG90LCBzdWNoIGFzIExURSBtb2RlbXMsIGNhbiBlbnVtZXJhdGUuCj4gPiA+Cj4gPiA+IFRoaXMg
YW5kIG5leHQgcGF0Y2ggaXMgbGlrZWx5IGJlc3Qgc3VpdGVkIGFzIGFuIGR0LW92ZXJsYXkuCj4g
PiA+Cj4gPiA+IFJlZ2FyZHMsCj4gPiA+IEpvbmFzCj4gPiA+Cj4gPiA+ID4KPiA+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBBZGFtIFdlcm11dGggPGFkYW1Ad2VybXV0aC5wbD4KPiA+ID4gPiAtLS0KPiA+
ID4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMgfCAx
MyArKysrKysrKysrKysrCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCsp
Cj4gPiA+ID4KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1Njgtcm9jay0zYi5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2
OC1yb2NrLTNiLmR0cwo+ID4gPiA+IGluZGV4IDE0OWE1MzA2YmIwMy4uYWQ5YTkxYzBkMGQwIDEw
MDY0NAo+ID4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJv
Y2stM2IuZHRzCj4gPiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
Njgtcm9jay0zYi5kdHMKPiA+ID4gPiBAQCAtNzU4LDYgKzc1OCwxNCBAQCAmdXNiX2hvc3QwX3ho
Y2kgewo+ID4gPiA+ICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+ID4gPiAgfTsKPiA+ID4gPgo+
ID4gPiA+ICsmdXNiX2hvc3QxX2VoY2kgewo+ID4gPiA+ICsgICAgIHN0YXR1cyA9ICJva2F5IjsK
PiA+ID4gPiArfTsKPiA+ID4gPiArCj4gPiA+ID4gKyZ1c2JfaG9zdDFfb2hjaSB7Cj4gPiA+ID4g
KyAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gPiA+ICt9Owo+ID4gPiA+ICsKPiA+ID4gPiAgJnVz
Yl9ob3N0MV94aGNpIHsKPiA+ID4gPiAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiA+ID4gIH07
Cj4gPiA+ID4gQEAgLTc4MCw2ICs3ODgsMTEgQEAgJnVzYjJwaHkxIHsKPiA+ID4gPiAgICAgICBz
dGF0dXMgPSAib2theSI7Cj4gPiA+ID4gIH07Cj4gPiA+ID4KPiA+ID4gPiArJnVzYjJwaHkxX2hv
c3Qgewo+ID4gPiA+ICsgICAgIHBoeS1zdXBwbHkgPSA8JnZjYzV2MF91c2JfaG9zdD47Cj4gPiA+
ID4gKyAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gPiA+ICt9Owo+ID4gPiA+ICsKPiA+ID4gPiAg
JnVzYjJwaHkxX290ZyB7Cj4gPiA+ID4gICAgICAgcGh5LXN1cHBseSA9IDwmdmNjNXYwX3VzYl9o
b3N0PjsKPiA+ID4gPiAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiA+Cj4gPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
