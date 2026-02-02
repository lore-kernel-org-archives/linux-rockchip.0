Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 413DFE7DF08
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Feb 2026 16:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qs9OOs0uYCgiFVDz5qKSmaVALQLXKd8Yv+Ev27FTPVA=; b=Y1R3f+doaGvWPh
	Zn5LSEc8qiRFP3N5IU3Tws9oKytjoI6xRdLzFpp41pZQ3bqZio/Rmbc4iePG7FVtBXcT4KIk2O5rO
	nGIwbnkUw3sDVKP9mLkdbOa0U/t0QoNdmR9EmKm97/u8hsmLHQgtqS0yWZ1UtadA7tsh6w7p2tC5N
	oyNGKFrNmsfcNcJP9WcBf+nUg5WoFckhvRI17ce3/SQM0zXdH/fbimC+EG37pbvjhH/E4uXsWxwhF
	K66LOV53UzjbZmWGwrksYxpyJbDRU2LV98d+HYWTCGXiSFqHJathv0Rf1qfoe8HV9TNRIZaoIYCSm
	c2j+kbgELKQBbMpKUStA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmxAH-00000005K4A-2jrI;
	Mon, 02 Feb 2026 16:52:41 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmxAF-00000005K3m-2wxK
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Feb 2026 16:52:40 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-b8871718b05so735100566b.2
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Feb 2026 08:52:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1770051155; x=1770655955; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=enDw9LkM3CdlAH4/IbRE0pQEHAl9HYEyYit2vG/Lo9A=;
        b=U+Wnt8DC5amlXKHhqDnUf2pn7/v+l0Xo+mltkbfEXiPLxCdvXzxXmXPU+H4GsGA12Q
         7I8/Lj9Zxi485rXXhV62dC8ko94BHF7eYU4Zkv0qcYT7/cwpYTmTX/EVhNVDFn0QRDPu
         RXVmhR/qly6BvdTCiAK0VnF4xAVApd6yfBCLw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770051155; x=1770655955;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=enDw9LkM3CdlAH4/IbRE0pQEHAl9HYEyYit2vG/Lo9A=;
        b=Hzpc1vQ/ffT8bpsK+/wRrgI7WyeI+pZFH7D35PQmlG3/K9yiUh012fJ7JNcut/ruIc
         AnkBQlXnYL1//em9pnv3LpRIVlZ5pRKZQN0KcuB1YOQJH+gakOVGmm3hn9PExzTm6Lor
         LL4VBiUiu2SvQvC4X8DckWIh59UrKZvTvQ6v/6en9zHLn8jj4921uQYWq7xbIdS17Rbi
         vR6XkiryYp+iEy61UpFyPhHiMEwK0o7YIUOZ8EemhKj9o6SmhvWnusNAcj3scVB9hLBX
         STA2Pj/9rhpohwPaIHFA0Go7tfhPYADBzEOwxGkWKZdSghnCZquBJsvdvpX86889kqIP
         ph0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUlx42GN9A+kCqbTnEX4OgROev0yu+dtgSDr/tBSclXV9pmIDsAmGbhQjZR73tAdPEuCTekcv4mwh83xQp/bQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YweFyJu6GHMSToOlNAglepbl/5sSva5u6ZnRZFq9SFtgDmaKET1
	t67rrdFrGUc36vZLYY4mlHycBGWX8aiuillc/AxK5sV9R9m/YAyXDvVCBJJGuVaHpPWWzSh8ZWx
	7kdaagA==
X-Gm-Gg: AZuq6aJrXqF3ZV0JrD8PjDV+Q2MaLAPTCYd0ogBq9aqlQAnofByCIH0u/wK+fkPm/Y7
	atpRsNJFgaYU+7857eU7Qycu01kDLb3FovoWAT6tbHiO1Q5gbVz7lesRVWZwO+hi6t9wKd3+tTP
	XPD5QWGAW5ZI7hd5ZoLr5kTi5UTeT83/X7gq7a/lNYG/6BNMgerKsf98n2tj5Kr1aAwFdaJ0ccz
	2Fg1xL3I4x0FclKqMSYIAsPMht6ulrTR/Yg3XRTZ2LFS2xqydVIM56Frq5evvHNw0dfQx02Wvkf
	9JdmmJNZRzl1nqIaFjNWpDMXiBPtRxoFcbvmThXZId4/Q/wLaBmvKTq4QuZD+R/8HnitsQwbVTC
	TpzJRmjiD3a0YPv3bRosqcGzp/XOw4xiInkdEKb3zqJsE0qrIbbRBAYBwEB/ZBP46stsGDHptsK
	rH3Yc4Fls13jE9LEgehaqUrb1WdYti2UNrOA5hzeSxrVlmimdtog==
X-Received: by 2002:a17:907:94d0:b0:b87:816f:34d7 with SMTP id a640c23a62f3a-b8dff69d9f7mr879590366b.48.1770051155592;
        Mon, 02 Feb 2026 08:52:35 -0800 (PST)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com. [209.85.128.45])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8de8c93c11sm716004666b.28.2026.02.02.08.52.34
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 08:52:34 -0800 (PST)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47fedb7c68dso48574685e9.2
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Feb 2026 08:52:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXuis/OUUAj8nICiYmCHsRQ3OcmMIpamucHkQzQ623rPM1IGmf3QDj3dQhaQFnFSY+qLB9Pdev8k53pf6tusg==@lists.infradead.org
X-Received: by 2002:a05:600c:6298:b0:480:5951:fc1e with SMTP id
 5b1f17b1804b1-482db45fbf4mr163945605e9.11.1770051153710; Mon, 02 Feb 2026
 08:52:33 -0800 (PST)
MIME-Version: 1.0
References: <cover.1769191673.git.robin.murphy@arm.com> <c7f6f75d55a4801eab63a0dc81d14ae27866aca9.1769191673.git.robin.murphy@arm.com>
In-Reply-To: <c7f6f75d55a4801eab63a0dc81d14ae27866aca9.1769191673.git.robin.murphy@arm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 2 Feb 2026 08:52:22 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XCK1RBgdxs07aHgowNvCSm5-+oUVZ3HcMVWuKwW4ggTg@mail.gmail.com>
X-Gm-Features: AZwV_QjXmR-vAYYsukd2qlxBElYKsT5Nm3boXnLH7lvnRNqLj3lt-cXAEK2VGP4
Message-ID: <CAD=FV=XCK1RBgdxs07aHgowNvCSm5-+oUVZ3HcMVWuKwW4ggTg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: display: panel: Move FriendlyElec
 HD702E to eDP
To: Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, neil.armstrong@linaro.org, thierry.reding@gmail.com, 
	sam@ravnborg.org, jesszhan0024@gmail.com, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_085239_828768_8B884BCB 
X-CRM114-Status: GOOD (  10.71  )
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

SGksCgpPbiBGcmksIEphbiAyMywgMjAyNiBhdCAxMToyMuKAr0FNIFJvYmluIE11cnBoeSA8cm9i
aW4ubXVycGh5QGFybS5jb20+IHdyb3RlOgo+Cj4gVGhlICJFIiBhbGx1ZGVzIHRvIHRoZSBmYWN0
IHRoYXQgRnJpZW5kbHlFbGVjJ3MgSEQ3MDJFIGlzIGFjdHVhbGx5IGFuCj4gZURQIHBhbmVsIC0g
bW92ZSBpdHMgY29tcGF0aWJsZSB0byB0aGUgYXBwcm9wcmlhdGUgYmluZGluZyBkb2MuCj4KPiBD
YzogPGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnPgo+IEFja2VkLWJ5OiBSb2IgSGVycmluZyAo
QXJtKSA8cm9iaEBrZXJuZWwub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFJvYmluIE11cnBoeSA8cm9i
aW4ubXVycGh5QGFybS5jb20+Cj4gLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvcGFuZWwvcGFuZWwtZWRwLWxlZ2FjeS55YW1sICAgICB8IDIgKysKPiAgLi4uL2RldmljZXRy
ZWUvYmluZGluZ3MvZGlzcGxheS9wYW5lbC9wYW5lbC1zaW1wbGUueWFtbCAgICAgICAgIHwgMiAt
LQo+ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKClB1
c2hlZCBwYXRjaGVzIHRvIGRybS1taXNjLW5leHQ6CgpbMS80XSBkdC1iaW5kaW5nczogZGlzcGxh
eTogcGFuZWw6IE1vdmUgRnJpZW5kbHlFbGVjIEhENzAyRSB0byBlRFAKICAgICAgY29tbWl0OiBl
MjI0MjIyM2I3MTRhYzlmZDgyMzM1NDZjYTc0Y2U5NzIwMjQxMTFmCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
