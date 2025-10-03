Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 570C3CCD183
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Oct 2025 13:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ulRCLzLFxhTe3TUy7Wp6S2CJMJMc6Dkn2MCedp2ajUI=; b=iU772nWbw5ih24
	CAYjVwy99eE5R1r8wjGQ4249VIubZxj/AO+VvuEodMcFuzJDeOHDn1e1xQo6BOC9N3VfJ1/wc5qoY
	nOCwnMKDpQHmmAJiHBidwYXipbc5TmrU4icFmYjjdtDWN6Fr6tWRQj2Ta22nPNB9vKTSX3kQpcRVx
	lNNo7arL4BmxkdkLcGg7X7y+MTkoKuB5Cx7XGuXuB8q9DwnSCMxfPKGrHR4BJsROQ7hzxkol367Ex
	tNWZ7joNBzNrJae+AxqkzcpkZzXoJDXK1VHgOuihW85oZvNOiOrSmYms+H/AMhnt5TsZDtb4Muuhx
	0h9niB6U+mK3uraT8iFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4ff0-0000000CNB4-1AUU;
	Fri, 03 Oct 2025 13:17:22 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4fex-0000000CN9T-0Og8
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Oct 2025 13:17:20 +0000
Received: by mail-qt1-x831.google.com with SMTP id d75a77b69052e-4de66881569so421791cf.0
        for <linux-rockchip@lists.infradead.org>; Fri, 03 Oct 2025 06:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759497437; x=1760102237; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MHKBwm7NMk1wAiAxUu9pldFnkwOOCl4Cy9AyP1TphGA=;
        b=cYTu5WzRV66nRbVoZkIWHZ2vvGPIZm8Y+r5K0bgwIyaW3AEEP2P+HSPm70Zi9wscjo
         dbiDNh6czP0P0eib47uPBcJWCBlhIe3YGJDULVy/p75kokxXepnAY+7WbMLmVpCWrmd6
         PYqAw2UliQogYROfXMtsySQhdclAMbWOjnPvcUmCE9tZ69Olu1P7mT/qAl6VZdaNuQGi
         FNevDgHFtJbWOIRlSyJz0rQDD+iudUkKPhzRGgduFscnIMWucjNQn3DaJHCP04yLdsmu
         UMTzMWx7itKxJEnfD89uqY1swuLRvUc6s889i0zb6DghXVgRqPDlfN6V3vr/nGEEvUfW
         hYUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759497437; x=1760102237;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MHKBwm7NMk1wAiAxUu9pldFnkwOOCl4Cy9AyP1TphGA=;
        b=BoCBlxZakmbgEhS3fQH4YDwERTE08JI5CTwu7gvnKK6grdkf+Aej0GsKu0BH/zOT7h
         5IxlWzo68WClnAhmjxFcSccNJr6n9hB3zVCaHdH9cFeim+jOFilDkEJQkzVd0k+1vHfJ
         KU0WMl07Ow9IcC6iVS0/1EUAiuCZ1BZ6wHyovKxkAQ42X33ygpS4xVw/mpP+d1/uyaQW
         4LSUAdp9VsSpaCXcEB080hFnQ2Lfqhly9PiC1yT+GUabQvh5ASj2GheZJIiE4o6i+PxT
         2Ok/Gyxne/w69VQFC39NSTOHbXkh4UIHzsNNCpnlcALLC+A9DT4cfdmW9R4dp3kh8swm
         L0RQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3pIOTQcxmOlfrC7GLfMmi+PQf3G1gJob2/jJBU3qp73CS+QI9Yf8M0ABXrQK3l1OurEyT4U+3NNlmq/VlYg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8DycWnwFNzzBukC6jNKNoQSweVKFhZWNOXiJSip1KmFE5qK8y
	abjzVcmotFcOtC/ZQ9SASR5I3sJ0YOb/YA7JP0hMc3wMBB44mbYsJ7jcw7A6ykz4x3UTgDB9BYv
	YXVO9v8TcxE/y1++71r5a64UripbvXmxcajo+Us8wEZKinA+hQPZPhVr+
X-Gm-Gg: ASbGncsVK97Q5CnetlLh6V7M8EH2AvqX7tfYqJlpPLKJrAAsdbfSEb4jNsdAlDHA61e
	SEMAWO237hQBI4yQhDozjrWRFvdtiLO3pOBSwkzosHaOkR3LvxY4PxuZ1c3iBBgjud0+nyNVY2/
	8p2qEXZ2Wc89NxaU0ukkbCJkZO1m6BFKpSLGBzSzVaCqjnI60kXP3f8oMWkFVXvDqmjDeJ26c6F
	1nJKyyWMjMPAMT+1eUFWjW3LjePHEHH+YZ9wmJpkH7fx5280NmwZqf52lG4po7LGILvWe0zTWDT
X-Google-Smtp-Source: AGHT+IGE7+IByknaVWxiVR31VKxGd14F277kivObfOi7gJMj93c83sqsD1zVicMJpTqN29wJP8C6PN1mQCF/t55gEto=
X-Received: by 2002:a05:622a:2cd:b0:4b3:1d1:fddd with SMTP id
 d75a77b69052e-4e576ac8af5mr5570341cf.18.1759497436448; Fri, 03 Oct 2025
 06:17:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAFgf54oYjUEg9KkQUzneYTZH1Z8cX56va5M0853eWPFaYT+Z2A@mail.gmail.com>
 <638b9565b90714f56caa9535b7b9b96cd86100d6.camel@collabora.com> <aNaq72xKS4QaNjwx@google.com>
In-Reply-To: <aNaq72xKS4QaNjwx@google.com>
From: Mostafa Saleh <smostafa@google.com>
Date: Fri, 3 Oct 2025 14:17:05 +0100
X-Gm-Features: AS18NWAzGDKh7rPw80AiVMNesJmz-wqevOZz6iqXp8GuPpGGv1cVAqCeWYGrVWI
Message-ID: <CAFgf54r=0T=AbSm4BVOf6+8mHRxOPje+zSbfZbwb8d6u46HPyw@mail.gmail.com>
Subject: Re: Support for Rock PI-4b
To: Sjoerd Simons <sjoerd@collabora.com>
Cc: devicetree@vger.kernel.org, 
	"moderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>, linux-rockchip@lists.infradead.org, 
	open list <linux-kernel@vger.kernel.org>, Rob Herring <robh@kernel.org>, krzk+dt@kernel.org, 
	conor+dt@kernel.org, Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251003_061719_136587_368EC8FF 
X-CRM114-Status: GOOD (  33.01  )
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

T24gRnJpLCBTZXAgMjYsIDIwMjUgYXQgNDowMuKAr1BNIE1vc3RhZmEgU2FsZWggPHNtb3N0YWZh
QGdvb2dsZS5jb20+IHdyb3RlOgo+Cj4gT24gRnJpLCBTZXAgMjYsIDIwMjUgYXQgMDQ6Mjg6NDhQ
TSArMDIwMCwgU2pvZXJkIFNpbW9ucyB3cm90ZToKPiA+IE9uIEZyaSwgMjAyNS0wOS0yNiBhdCAx
NTowNyArMDEwMCwgTW9zdGFmYSBTYWxlaCB3cm90ZToKPiA+ID4gSGksCj4gPiA+Cj4gPiA+IEkg
YW0gdHJ5aW5nIHRvIHJ1biBMaW51eFsxXSBvbiBteSBSb2NrIFBJLTRiLCB3aGljaCBJIHNlZSBp
cyBzdXBwb3J0ZWQgaW4KPiA+ID4gdGhlIGtlcm5lbCBpbiDigJxyazMzOTktcm9jay1waS00Yi5k
dHPigJ0uCj4gPiA+Cj4gPiA+IEhvd2V2ZXIsIGNvbXBpbGluZyDigJxkZWZjb25maWfigJ0gKEFS
TTY0KSBhbmQgZmxhc2hpbmcgbXkgSW1hZ2UgZG9lc27igJl0Cj4gPiA+IHdvcmssCj4gPiA+IEl0
IGp1c3QgaGFuZ3MgYmVmb3JlIGFueSBjb25zb2xlIChldmVuIHdpdGggZWFybHljb24pLCBJIHRy
aWVkIHRvIGFsc28gdXNlCj4gPiA+IHNvbWUgb2YgdGhlIHZlbmRvciBjb25maWdzIHdpdGggbm8g
bHVjay4KPiA+ID4gSSBkaWQgc29tZSByZXNlYXJjaCBhbmQgZm91bmQgdGhhdCBbMl0sIHdoaWNo
IGluZGljYXRlcyB0aGF0IHRoZSB1cHN0cmVhbQo+ID4gPiBzdXBwb3J0IGhhcyBiZWVuIGJyb2tl
biBmb3Igc29tZSB5ZWFycz8KPiA+Cj4gPiBXZSd2ZSBnb3QgdGhlIFJvY2sgNGIgaW4gb3VyIGF1
dG9tYXRlZCB0ZXN0aW5nIGxhYiBhcyBwYXJ0IG9mIGtlcm5lbGNpIGFuZCBvdGhlcgo+ID4gZWZm
b3J0cy4gVXBzdHJlYW0gd29ya3MganVzdCBmaW5lIG9uIHRob3NlIGJvYXJkcywgc28gaXQncyBs
aWtlbHkgYW4gaXNzdWUgaW4KPiA+IHlvdXIgc2V0dXAuCj4gPgo+ID4gU2VlIGUuZyBodHRwczov
L2xhdmEuY29sbGFib3JhLmRldi9zY2hlZHVsZXIvam9iLzE5OTc4NTU4I0w1MjUgZm9yIGEgcmVj
ZW50Cj4gPiB1cHN0cmVhbSBrZXJuZWwgYm9vdC4KPgo+IFRoYW5rcyBhIGxvdCBmb3IgdGhlIHF1
aWNrIHJlc3BvbnNlIQo+Cj4gSSBjYW4gc2VlIHNvbWUgZGlmZmVyZW5jZXMgYmV0d2VlbiB0aGlz
IGxvZyBhbmQgbXkgc2V0dXAuCj4KPiAxLSBNeSB1Ym9vdCBzZWVtcyBhbmNpZW50Cj4gICAgVS1C
b290IDIwMTcuMDktMDAwMjYtZzI0MzFmYTM0Njc4IENvbXBhcmVkIHRvIFUtQm9vdCAyMDI0LjA3
LXJjNAo+Cj4gMi0gVGhlIGJvYXJkIG1vZGVsIGluIHRoaXMgbG9nIGlzIG5vdCA0YiBhcyBtaW5l
Cj4gICAgTW9kZWw6IFJhZHhhIFJPQ0sgUGkgNEEgd2hpbGUgbWluZSBzaG93cyBNb2RlbDogUmFk
eGEgUk9DSyBQaSA0Qgo+Cj4gMy0gSSBhbSB1c2luZyBMTFZNIG5vdCBHQ0MgKEkgZG9uJ3QgdGhp
bmsgdGhhdCBtYXR0ZXJzIHRob3VnaCkKPgo+IDQtIEkgYW0gdXNpbmcgTU1DIHRvIGJvb3QgYW5k
IG5vdCBURlRQCj4KPiBJIHdpbGwgdHJ5IHRvIGxvb2sgbW9yZSBpbnRvIHRoZSBkaWZmZXJlbmNl
cywgYW5kIHVwZGF0ZSB0aGlzIHRocmVhZCBpbgo+IGNhc2UgSSB3YXMgc3VjY2Vzc2Z1bC4KPgoK
VXBkYXRlIG9uIHRoaXMsIGluIGNhc2Ugc29tZW9uZSBoYXZlIHRoZSBzYW1lIGlzc3VlLgoKQWZ0
ZXIgdXBkYXRpbmcgdS1ib290IHRoZSBzYW1lIGlzc3VlIHBlcnNpc3RlZC4KSG93ZXZlciwgSSB3
YXMgYWJsZSB0byBib290IHdpdGggZU1NQyBpbnN0ZWFkIG9mIGFuIFNEIGNhcmQuCldoaWNoIGlz
IHN0cmFuZ2UsIGFzIEkgY291bGQgYm9vdCBhbiBvbGRlciBrZXJuZWwgb24gYW4gU0QgY2FyZCB3
aXRoIG5vIHByb2JsZW0uCgpUaGFua3MsCk1vc3RhZmEKCj4gVGhhbmtzLAo+IE1vc3RhZmEKPgo+
ID4KPiA+IFJlZ2FyZHMsCj4gPiAgIFNqb2VyZAo+ID4KPiA+Cj4gPiA+Cj4gPiA+IEhhcyBhbnlv
bmUgdHJpZWQgdG8gZmxhc2ggYSByZWNlbnQga2VybmVsIHN1Y2Nlc3NmdWxseSBvbiBpdD8gb3Ig
YW55Cj4gPiA+IHRpcHMgYXJlIGdyZWF0bHkgYXBwcmVjaWF0ZWQuCj4gPiA+IE90aGVyd2lzZSwg
bWF5YmUgaXQgY2FuIGJlIHJlbW92ZWQgdG8gYXZvaWQgbWlzbGVhZGluZyBvdGhlciBkZXZlbG9w
ZXJzCj4gPiA+IChJIGdvdCB0aGlzIGJvYXJkIHRvIGRvIHNvbWUgdXBzdHJlYW0ga2VybmVsIGRl
dmVsb3BtZW50IG9uKQo+ID4gPgo+ID4gPiBbMV0gYmFzZTogNGZmNzFhZjAyMGFlNTlhZTJkODNi
MTc0NjQ2ZmMyYWQ5ZmNkNGRjNAo+ID4gPiBbMl0gaHR0cHM6Ly93aWtpLnJhZHhhLmNvbS9Sb2Nr
cGk0L2Rldi9rZXJuZWwtbWFpbmxpbmUKPiA+ID4KPiA+ID4gVGhhbmtzLAo+ID4gPiBNb3N0YWZh
Cj4gPiA+Cj4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gPiA+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+ID4gPiBMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
