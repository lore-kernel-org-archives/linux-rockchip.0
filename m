Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E88FAC27C5E
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jun 2024 11:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Glp8NXxZx71f4ZmbzfiTyYF/vymh2Q5Sn270QJPHTSk=; b=Re+iaBG5BtlFfr
	ovd+aGIkASMhGFn819KDh8GMtl9LziAw2qN5zLzIS9bYlLqKVR8ICFkHRACZiwG1F3sMHm/Pb1mu4
	AROhN5IBK/2mdYjk3yJdYlD40Wr9djXrj/+WLU9jjBylC32c0DcxHOzcgfE8HwvMrHQZEL37yUb4B
	Vr3FSdfdNCpWZ/7D6kVSdTUmxkOfTf+WiDncrZpsCMuTegB+BZ2qQHKvTKEx988VvHJRO0w4qATBv
	mHNom/4OQYsj3fwAhMdaWOS1OlihUcowi+3hHmCheNsHrVSAZC3MeB4Vu4Z/g7c6m7HOnWbI9U7aN
	W2QHaB7qpmEY0s6rwXJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGddW-00000004tM3-49B5;
	Mon, 10 Jun 2024 11:56:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGddQ-00000004tHt-3025
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Jun 2024 11:56:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0F64D60B20
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2024 11:56:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CA80C4AF62
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2024 11:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718020583;
	bh=kv8PfW7sT6WPzyG1imjSjaRyNaJ4MzIY6YMO4SL7ECk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=sLZ1gIZ6w3o8PkaaKyaQKAUa1rJGewFp/6rjgJVkcGyclF84OxXFzupAX3fL4mdaq
	 h8UqS+JN4rFYuTKZN/lPnxIx3QhkKU+uNzqVMdyE/us3r/VqTj4yc2j5cBWLa9jEme
	 dI9g7NwpU3/2mQ+YbKWYu0lHXX1vWwQJt0QNKCU7Wv20OHb3VZ4R6k9w/yGoUds+Zc
	 gZ2uq4t4Knqp6rCLHXjEE5na/PQbqDCdhK7M5MoUm30VENOhiX5pMaQPmqclbLs+EC
	 mLmKkc7qOcI6R4PCvOwBhXpIzCjpS58eanqU8/awbqm1IAUzamqFTt/mEgZ3NPy8KU
	 vJhaGJhbyaxVg==
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dfa59c35e44so4466605276.3
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2024 04:56:23 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX0oSXpYK6cvY8Wtae6cF5r8f832/zeRfCOXHc5UyNrZAf+cD0QZOd6WMBng/p2e1O2fJABkL9FOrLUTgivnSdr4lUlpwPdrL3o76C3yVABFe+F
X-Gm-Message-State: AOJu0Yx8MEMZI03LxkhaohtzeoUyen1PF/QUxaJAajJofxZqBUEgQSmB
	wKqL/aP7Te3GRC13ZMnRB/wgHCTZIVhdwy1ZjpK8z3wBAitS2TcQzXjNLz6k/cDAa5liOCNR8+I
	QjvoZpUsOUH2q7WVT+KVgrcmkaB6t80vbqM6d6w==
X-Google-Smtp-Source: AGHT+IGQisIzvOX5qdhL2+YdNLcxMsgMAZrupqh/ejWYIXF9j4p2gncloTwF653234Rp7SUaIvgTUTcW+9wXqCigJN4=
X-Received: by 2002:a25:ac01:0:b0:dfa:9484:686f with SMTP id
 3f1490d57ef6-dfaf65e6758mr7576966276.22.1718020582581; Mon, 10 Jun 2024
 04:56:22 -0700 (PDT)
MIME-Version: 1.0
References: <20240503151129.3901815-1-l.stach@pengutronix.de> <20240503151129.3901815-14-l.stach@pengutronix.de>
In-Reply-To: <20240503151129.3901815-14-l.stach@pengutronix.de>
From: Robert Foss <rfoss@kernel.org>
Date: Mon, 10 Jun 2024 13:56:11 +0200
X-Gmail-Original-Message-ID: <CAN6tsi5Q3uYi6ZUptV_5jktk1JeuX_c0dM2gnyP+tM6Y1sj5Lw@mail.gmail.com>
Message-ID: <CAN6tsi5Q3uYi6ZUptV_5jktk1JeuX_c0dM2gnyP+tM6Y1sj5Lw@mail.gmail.com>
Subject: Re: [PATCH 13/14] drm/bridge: analogix_dp: only read AUX status when
 an error occured
To: Lucas Stach <l.stach@pengutronix.de>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>, 
	Jingoo Han <jingoohan1@gmail.com>, Inki Dae <inki.dae@samsung.com>, 
	Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, kernel@pengutronix.de, 
	patchwork-lst@pengutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_045625_616214_E7928FC1 
X-CRM114-Status: GOOD (  16.29  )
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

T24gRnJpLCBNYXkgMywgMjAyNCBhdCA1OjEz4oCvUE0gTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVu
Z3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gQWxsIEFVWCBlcnJvciByZXNwb25zZXMgcmFpc2UgdGhl
IEFVWF9FUlIgaW50ZXJydXB0LCBzbyB0aGVyZSBpcyBubwo+IG5lZWQgdG8gcmVhZCB0aGUgQVVY
IHN0YXR1cyByZWdpc3RlciBpbiBub3JtYWwgb3BlcmF0aW9uLiBPbmx5IHJlYWQKPiB0aGUgc3Rh
dHVzIHdoZW4gYW4gZXJyb3Igb2NjdXJlZCBhbmQgd2UgY2FuIGV4cGVjdCBhIGRpZmZlcmVudCBz
dGF0dXMKPiB0aGFuIE9LLgo+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hA
cGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgv
YW5hbG9naXhfZHBfcmVnLmMgfCA5ICsrKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfcmVnLmMgYi9kcml2ZXJzL2dwdS9kcm0vYnJp
ZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX3JlZy5jCj4gaW5kZXggMTQzYTc4YjFkMTU2Li4wZjAx
NmRjYTlmM2QgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9h
bmFsb2dpeF9kcF9yZWcuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgv
YW5hbG9naXhfZHBfcmVnLmMKPiBAQCAtOTI0LDcgKzkyNCw2IEBAIHNzaXplX3QgYW5hbG9naXhf
ZHBfdHJhbnNmZXIoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHAsCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2RwX2F1eF9tc2cgKm1zZykKPiAgewo+ICAgICAg
ICAgdTMyIHJlZzsKPiAtICAgICAgIHUzMiBzdGF0dXNfcmVnOwo+ICAgICAgICAgdTggKmJ1ZmZl
ciA9IG1zZy0+YnVmZmVyOwo+ICAgICAgICAgdW5zaWduZWQgaW50IGk7Cj4gICAgICAgICBpbnQg
cmV0Owo+IEBAIC0xMDExLDEyICsxMDEwLDE0IEBAIHNzaXplX3QgYW5hbG9naXhfZHBfdHJhbnNm
ZXIoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHAsCj4KPiAgICAgICAgIC8qIENsZWFyIGlu
dGVycnVwdCBzb3VyY2UgZm9yIEFVWCBDSCBhY2Nlc3MgZXJyb3IgKi8KPiAgICAgICAgIHJlZyA9
IHJlYWRsKGRwLT5yZWdfYmFzZSArIEFOQUxPR0lYX0RQX0lOVF9TVEEpOwo+IC0gICAgICAgc3Rh
dHVzX3JlZyA9IHJlYWRsKGRwLT5yZWdfYmFzZSArIEFOQUxPR0lYX0RQX0FVWF9DSF9TVEEpOwo+
IC0gICAgICAgaWYgKChyZWcgJiBBVVhfRVJSKSB8fCAoc3RhdHVzX3JlZyAmIEFVWF9TVEFUVVNf
TUFTSykpIHsKPiArICAgICAgIGlmICgocmVnICYgQVVYX0VSUikpIHsKPiArICAgICAgICAgICAg
ICAgdTMyIGF1eF9zdGF0dXMgPSByZWFkbChkcC0+cmVnX2Jhc2UgKyBBTkFMT0dJWF9EUF9BVVhf
Q0hfU1RBKSAmCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgQVVYX1NUQVRVU19N
QVNLOwo+ICsKPiAgICAgICAgICAgICAgICAgd3JpdGVsKEFVWF9FUlIsIGRwLT5yZWdfYmFzZSAr
IEFOQUxPR0lYX0RQX0lOVF9TVEEpOwo+Cj4gICAgICAgICAgICAgICAgIGRldl93YXJuKGRwLT5k
ZXYsICJBVVggQ0ggZXJyb3IgaGFwcGVuZWQ6ICUjeCAoJWQpXG4iLAo+IC0gICAgICAgICAgICAg
ICAgICAgICAgICBzdGF0dXNfcmVnICYgQVVYX1NUQVRVU19NQVNLLCAhIShyZWcgJiBBVVhfRVJS
KSk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgIGF1eF9zdGF0dXMsICEhKHJlZyAmIEFVWF9F
UlIpKTsKPiAgICAgICAgICAgICAgICAgZ290byBhdXhfZXJyb3I7Cj4gICAgICAgICB9Cj4KPiAt
LQo+IDIuMzkuMgo+CgpSZXZpZXdlZC1ieTogUm9iZXJ0IEZvc3MgPHJmb3NzQGtlcm5lbC5vcmc+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
