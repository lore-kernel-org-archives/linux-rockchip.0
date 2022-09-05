Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BD96ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Sep 2022 05:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7nAGyzuM+if4DgIT9czciYajks4DTvviup9XerMSId4=; b=W8d2sN2X/zs92h
	xG3foAIdile+9AHXWcPtWBg/oBa+VnsXAfkjComY2KX6S+3iqJN2KHxdXnhClYI/pY/7uzKvhj1lV
	SRdEsc3s6/03x9DYvOEx+UBor1v89o1mlIaG1575nTPV4F7MriwKnGcb8v2ipJLIznDkuSOX0Y0Fj
	ERLsWHTKYqLzhaqZmMHGqh6x2vhcz/IcqAqcIdGSQLhG4+oLRgf+w/RKIaf31ffRAdwWcFkSyEIiM
	TKDDt/LE0k5dQvqwxLlziRYNwPNMmaHXqq9T3DbsheEBU9L1Olia9IN/DPSF7NU4wMYecjz7KjzvB
	v0ldZfsWvsT9keolEx9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV4eS-00B1pn-3j; Mon, 05 Sep 2022 05:28:04 +0000
Received: from mail-il1-x133.google.com ([2607:f8b0:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV4eP-00B1mR-24
	for linux-rockchip@lists.infradead.org; Mon, 05 Sep 2022 05:28:02 +0000
Received: by mail-il1-x133.google.com with SMTP id s11so4174710ilt.7
        for <linux-rockchip@lists.infradead.org>; Sun, 04 Sep 2022 22:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=21G78lD0hHSSYC2z9AFKvwJo0kB+AyLNQVaxiGapq64=;
        b=fbmRqEPBRuXaqA5lND0c1JZlumuabjU8GplfW5xyR282W5LWwzVCNC5TiN31n3rPsY
         BgRz1TvELOkZeQqS8dDvpd9W//nPQQFQHfon+q05ZcC5lh+RQGS2eXWODtL2uOujTq1u
         5nx5nipKTqHa8AtGH/GTkWUhPmKdrfmpHO4AujzzZIcOi/1KEdNCpMFQKtSlDvOg0KSR
         mZqrHBSfgiF7X6jJMg4mgEeoCD81iiwyCyng8uuk91697QK45PilG6Q03YARPzUgdsUA
         ohQMJ9+Z8vSZjSBqM6FxrJaR84ishQ1E0UYr4D/44Lg0GEcZrdR4zhG41Zh7YpXNHmiH
         aAww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=21G78lD0hHSSYC2z9AFKvwJo0kB+AyLNQVaxiGapq64=;
        b=U/9h+DwpeE0DlmcTHbxgDs1urmB9AS50cZ415+0auu1OeJsYwQq0y7J4zcjTry50kY
         /JH4DtMXR71TY1DG3L3kXitcdehtdgNwYvJ5numji6mM1Uzj615py0d4UEJTqCXGkn+V
         jX87xAPMjtjJ6wh7zS/GidZkcL85uEPv8kB/7CM7O4u0NZpqxCZPDYm4wt+p93Wv2Qtx
         tddYy9A2Q6wYFt9IRZI37A59y7IgWeTHQWtLd5nsgrxaRSf+A8LdshRTXKcNeN/vzhmd
         Ggs+l127kywu6V1IFgCgJQ1ersenBqU7x7SYhPwJJsHvFbYvX9OV1spZlSpJvsXkBE3m
         sL9g==
X-Gm-Message-State: ACgBeo2JcjgUhyVrm2284C9KGZq0r9l6z+oHcGkRCYFqaVfHRn9EbJYh
	KxLnen19xwQ7vMd3r4/Bxf6uPzYIb57/k4u30MVAlA==
X-Google-Smtp-Source: AA6agR4E0MTP4UUKlwvdura/p6XljyuapEDBV12FXaemr30UbaTnDyB51Q5WS4iUO+XGgiyPfF/CX5D5ZyIdtvjxKlM=
X-Received: by 2002:a05:6e02:2181:b0:2eb:3770:e3f8 with SMTP id
 j1-20020a056e02218100b002eb3770e3f8mr16347696ila.79.1662355678485; Sun, 04
 Sep 2022 22:27:58 -0700 (PDT)
MIME-Version: 1.0
References: <20220818124132.125304-1-jagan@edgeble.ai> <20220822181009.GA80526-robh@kernel.org>
 <CA+VMnFwE8jBxXwQPVEzEUosxjuEVMNGB9NnBuHYDw_360qJztQ@mail.gmail.com> <3175969.jE0xQCEvom@diego>
In-Reply-To: <3175969.jE0xQCEvom@diego>
From: Jagan Teki <jagan@edgeble.ai>
Date: Mon, 5 Sep 2022 10:57:47 +0530
Message-ID: <CA+VMnFw2FSr4OfaZfxGcDcMxQHM1_=sPPRyJq+qd6mduwBY8yg@mail.gmail.com>
Subject: Re: [PATCH v3 09/19] clk: rockchip: Add dt-binding header for RV1126
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	Finley Xiao <finley.xiao@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_222801_164674_60176749 
X-CRM114-Status: GOOD (  27.34  )
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

SGkgS2V2ZXIsCgpPbiBUdWUsIDIzIEF1ZyAyMDIyIGF0IDIzOjI2LCBIZWlrbyBTdMO8Ym5lciA8
aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPgo+IEFtIERpZW5zdGFnLCAyMy4gQXVndXN0IDIwMjIs
IDE0OjU3OjIwIENFU1Qgc2NocmllYiBKYWdhbiBUZWtpOgo+ID4gT24gTW9uLCAyMiBBdWcgMjAy
MiBhdCAyMzo0MCwgUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+Cj4g
PiA+IE9uIFRodSwgQXVnIDE4LCAyMDIyIGF0IDA2OjExOjIyUE0gKzA1MzAsIEphZ2FuIFRla2kg
d3JvdGU6Cj4gPiA+ID4gQWRkIHRoZSBkdC1iaW5kaW5ncyBoZWFkZXIgZm9yIHRoZSBSb2NrY2hp
cCBSVjExMjYsIHRoYXQgZ2V0cyBzaGFyZWQKPiA+ID4gPiBiZXR3ZWVuIHRoZSBjbG9jayBjb250
cm9sbGVyIGFuZCB0aGUgY2xvY2sgcmVmZXJlbmNlcyBpbiB0aGUgZHRzLgo+ID4gPiA+Cj4gPiA+
ID4gU2lnbmVkLW9mZi1ieTogRmlubGV5IFhpYW8gPGZpbmxleS54aWFvQHJvY2stY2hpcHMuY29t
Pgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGVkZ2VibGUuYWk+Cj4g
PiA+ID4gLS0tCj4gPiA+ID4gQ2hhbmdlcyBmb3IgdjM6Cj4gPiA+ID4gLSB1cGRhdGUgdGhlIGZp
bGUgbmFtZQo+ID4gPiA+IENoYW5nZXMgZm9yIHYyOgo+ID4gPiA+IC0gZXhjbHVkZSBmcm9tIGNs
ayBwYXRjaAo+ID4gPiA+Cj4gPiA+ID4gIC4uLi9kdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxy
djExMjYtY3J1LmggICB8IDYzMiArKysrKysrKysrKysrKysrKysKPiA+ID4gPiAgMSBmaWxlIGNo
YW5nZWQsIDYzMiBpbnNlcnRpb25zKCspCj4gPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNs
dWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJ2MTEyNi1jcnUuaAo+ID4gPiA+Cj4gPiA+
ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscnYxMTI2
LWNydS5oIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxydjExMjYtY3J1LmgK
PiA+ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4u
Y2ZiYTgyMjZkZWQyCj4gPiA+ID4gLS0tIC9kZXYvbnVsbAo+ID4gPiA+ICsrKyBiL2luY2x1ZGUv
ZHQtYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscnYxMTI2LWNydS5oCj4gPiA+ID4gQEAgLTAsMCAr
MSw2MzIgQEAKPiA+ID4gPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgKi8K
PiA+ID4KPiA+ID4gRHVhbCBsaWNlbnNlIHBsZWFzZS4gTmVlZCBhbiBhY2sgZnJvbSBSb2NrY2hp
cCBmb3IgdGhhdCAoYW5kIG5vdCBqdXN0Cj4gPiA+IG9uIHRoaXMgb25lKS4KPiA+Cj4gPiBIZWlr
byBvciBLZXZlci4KPiA+Cj4gPiBDYW4geW91IGNvbW1lbnQgb24gdGhpcz8KPgo+IEkgZ3Vlc3Mg
dGhpcyBpcyBtb3JlIGEgcXVlc3Rpb24gZm9yIEtldmVyLAo+Cj4gQEtldmVyIGNhbiBSb2NrY2hp
cCBhbGxvdyB0aGF0IGR1YWwgbGljZW5zaW5nIGZvciB0aGUgZHQtYmluZGluZyBoZWFkZXIKPiAo
TUlUIGFzIHNlY29uZCBsaWNlbnNlIEkgdGhpbmsgLSBhdCBsZWFzdCBsaWtlIGFsbCB0aGUgb3Ro
ZXIgYmluZGluZyBoZWFkZXJzKQo+IGJvdGggaW4gdGhpcyBwYXRjaCBhbmQgYWxzbyBpbiB0aGUg
b3RoZXIgaGVhZGVyLXBhdGNoZXMgb2YgdGhpcyBzZXJpZXM/CgpBbnkgY29tbWVudHMgb24gdGhp
cz8KCkphZ2FuLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
