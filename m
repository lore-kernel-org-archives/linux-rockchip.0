Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37F15C7619A
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 22:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uro7D/v3MnV4gEHnQL3x+oI2BIFGjVKTPpBmTFIDstQ=; b=EJyziyLPbVZ5hb
	78Z/BhXeoU7IAtiymCwejqTiM3kYu9sWa1kv5W6Treo1TXIf7WTblWVeCNDoooPA3V9LcIg1FHZLq
	/NAOvDmwblFWKxV3vnZuzk8gIfNrAcU/uUrOE1ugaoQV1YICWnXOInZ6JRqe1prQSsD3pc7iKpYcY
	4FTw2/GlGsHxJbyOu74dZAXk4YqNcuhJULRM+Nk0o2cplNZkIkcOpXibOGUJ//AEo5rpMskkzHeso
	vvcpmzX84dbAFiO/Xhv+mSPDZXykzLuZaWGiUptbAN1Ksf5S3tvHD8fsXb6dN+KznAhej9XF2X4KO
	UucFLSiAQ7457940W1Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi0dM-005ChL-0M;
	Thu, 30 Mar 2023 22:20:40 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi0dJ-005Cfu-18
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Mar 2023 22:20:38 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5416698e889so382168847b3.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Mar 2023 15:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1680214830;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1XHbYcIgrFHrYvAFgKxf4i1nvwZgCPxOVsUNf1NNENs=;
        b=aC3gyWe2xxmSC/4lDUJsHEzVt1rpQ1yIZFmFVwhQiXlQArqkU5tK7etfmsciIGrVsK
         mZNlbpv1rhnn2GPGQzuSoTw5KSlMJOBRZPLa/onlL/G3AWBPw+yFaf0Gek4/RpTiP4Dq
         ynYKc+7M72SOnCEd74WaaXOMI6e7kyNhlsV4g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680214830;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1XHbYcIgrFHrYvAFgKxf4i1nvwZgCPxOVsUNf1NNENs=;
        b=n+eFlhp3UiZM4/+pxgL1G99f0fyGwsGs6hbkDXfw5SaLFM8bogwnu8ElbEJn5H+Z+9
         lnH4giPcooDujXh4bYK4882MkngTKD5qXNpUIgFJF4QxGqwX/tqVxB3mNofkeakyRhYg
         5HwpdWP/cB/ho88YbY6d3HPgipMuEBL/Y9wHzOTh3C0LibNaopI00wdUKdH4lwKeO3QF
         JZIyhhIoO+N3zEa+7pJ9H+WviMBVS3bEHl6u7rJxQdMNs+JsoTzwdZIXqTvpc1FuuRMe
         qfrBXHDyoj3op/etyJRkACK01VEZa2JHJTl3ozAnGXwEsRxn+tOdBgxzvvfJid4v443d
         ydkQ==
X-Gm-Message-State: AAQBX9eS6VddB0CjbxkQJa7vUzD057lz/CeUm28X7OCRjlK9osoZMmFd
	N07fngjrUAD5ivFnCGIgtYEwYnUE7o+zF5US63I=
X-Google-Smtp-Source: AKy350ZD43RV+RNQY44ZA/4fU0E/F5/A2NIcdaVhwksgTtwhGgDjWMCm0nSL2s6tP23Kk4TJEkP3cg==
X-Received: by 2002:a81:a1c6:0:b0:545:2d31:3207 with SMTP id y189-20020a81a1c6000000b005452d313207mr23434250ywg.22.1680214829899;
        Thu, 30 Mar 2023 15:20:29 -0700 (PDT)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com. [209.85.219.173])
        by smtp.gmail.com with ESMTPSA id f16-20020a814150000000b00545a08184bdsm125034ywk.77.2023.03.30.15.20.28
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 15:20:29 -0700 (PDT)
Received: by mail-yb1-f173.google.com with SMTP id r187so25420186ybr.6
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Mar 2023 15:20:28 -0700 (PDT)
X-Received: by 2002:a05:6902:1501:b0:b6d:80ab:8bb6 with SMTP id
 q1-20020a056902150100b00b6d80ab8bb6mr16743748ybu.1.1680214828159; Thu, 30 Mar
 2023 15:20:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230330220251.2388494-1-javierm@redhat.com>
In-Reply-To: <20230330220251.2388494-1-javierm@redhat.com>
From: Brian Norris <briannorris@chromium.org>
Date: Thu, 30 Mar 2023 15:20:16 -0700
X-Gmail-Original-Message-ID: <CA+ASDXOtyBgr0o+bhjOScjs2h3oUKdouoAi4m+Z=R=Bho=iRFA@mail.gmail.com>
Message-ID: <CA+ASDXOtyBgr0o+bhjOScjs2h3oUKdouoAi4m+Z=R=Bho=iRFA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Remove non-existing pwm-delay-us DT property
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Douglas Anderson <dianders@chromium.org>, Enric Balletbo i Serra <eballetbo@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Judy Hsiao <judyhsiao@chromium.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Lin Huang <hl@rock-chips.com>, 
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	zain wang <wzz@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_152037_388307_96CA9505 
X-CRM114-Status: GOOD (  17.93  )
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

T24gVGh1LCBNYXIgMzAsIDIwMjMgYXQgMzowM+KAr1BNIEphdmllciBNYXJ0aW5leiBDYW5pbGxh
cwo8amF2aWVybUByZWRoYXQuY29tPiB3cm90ZToKPgo+IFRoZXJlIGlzIG5vIG5laXRoZXIgYSBk
cml2ZXIgdGhhdCBwYXJzZXMgdGhpcyBub3IgYSBEVCBiaW5kaW5nIHNjaGVtYSB0aGF0Cj4gZG9j
dW1lbnRzIGl0IHNvIGxldCdzIHJlbW92ZSBpdCBmcm9tIHRoZSBEVFMgZmlsZXMgdGhhdCBtYWtl
IHVzZSBvZiB0aGlzLgo+Cj4gVGhlIHByb3BlcnRpZXMgdGhhdCBleGlzdCBhcmUgcG9zdC1wd20t
b24tZGVsYXktbXMgYW5kIHB3bS1vZmYtZGVsYXktbXMsCj4gZGVmaW5lZCBpbiB0aGUgcHdtLWJh
Y2tsaWdodCBEVCBiaW5kaW5nLiBTbyBwcm9iYWJseSB3aGF0IHRoZXNlIERUUyB3YW50Cj4gaXMg
c29tZXRoaW5nIGxpa2UgZm9sbG93aW5nOgo+Cj4gICAgICAgICBiYWNrbGlnaHQ6IGJhY2tsaWdo
dCB7Cj4gICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicHdtLWJhY2tsaWdodCI7Cj4gICAg
ICAgICAgICAgICAgIGVuYWJsZS1ncGlvcyA9IDwmZ3BpbzQgMjEgR1BJT19BQ1RJVkVfSElHSD47
Cj4gICAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gICAgICAgICAg
ICAgICAgIHBpbmN0cmwtMCA9IDwmYmxfZW4+Owo+ICAgICAgICAgICAgICAgICBwd21zID0gPCZw
d20xIDAgMTAwMDAwMCAwPjsKPiAgICAgICAgICAgICAgICAgcG9zdC1wd20tb24tZGVsYXktbXMg
PSA8MTA+Owo+ICAgICAgICAgICAgICAgICBwd20tb2ZmLWRlbGF5LW1zID0gPDEwPjsKPiAgICAg
ICAgIH07Cj4KPiBCdXQgdGhhdCBzaG91bGQgYmUgZm9sbG93LXVwIGNoYW5nZSBpZiB0aGF0IGlz
IHRoZSBjYXNlLiBCZWNhdXNlIG90aGVyd2lzZQo+IGl0IHdvdWxkIGJlIGNoYW5nZSBpbiBiZWhh
dmlvdXIsIHNpbmNlIGN1cnJlbnRseSBwd20tZGVsYXktdXMgaXMgYSBuby1vcC4KPgo+IFNpZ25l
ZC1vZmYtYnk6IEphdmllciBNYXJ0aW5leiBDYW5pbGxhcyA8amF2aWVybUByZWRoYXQuY29tPgoK
cHdtLWRlbGF5LXVzIHNlZW1zIHRvIGhhdmUgYmVlbiBhIGRvd25zdHJlYW0tb25seSAoIkNIUk9N
SVVNIiwgaWYKeW91J3JlIGZhbWlsaWFyIHdpdGggQ2hyb21pdW1PUyBrZXJuZWwgcGFybGFuY2Up
IGNoYW5nZSB0aGF0IHNlZW1zCmxpa2UgYSBjb21iaW5hdGlvbiBvZiB0aGUgdHdvIG5vdy11cHN0
cmVhbSBwcm9wZXJ0aWVzIHlvdSBwb2ludCBhdC4gSQpsb29rZWQgdGhyb3VnaCB0aGUgZmlyc3Qg
dXNlIG9mIHB3bS1kZWxheS11cyBvbiBSSzMzOTkgR3J1IHN5c3RlbXMsCmFuZCBJIGNhbid0IGZp
bmQgYSBzcGVjIHJlZmVyZW5jZSB0aGF0IHNhaWQgaXQgd2FzIG5lZWRlZDsgcGVyaGFwcyBpdAp3
YXMgbmVlZGxlc3MgY29weS9wYXN0ZSBpbWl0YXRpb24/CgpTbywgc2ltcGxlIGRlbGV0aW9uIGlz
IHByb2JhYmx5IGZpbmU6CgpSZXZpZXdlZC1ieTogQnJpYW4gTm9ycmlzIDxicmlhbm5vcnJpc0Bj
aHJvbWl1bS5vcmc+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
