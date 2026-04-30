Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD128CD13DE
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 May 2026 00:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2EjMKBmONoKlrBlT7ChS8oCqFviXWRtmuEL9RQhgyIo=; b=jIg4SzWQJSjfx+
	rEuY485Eg3pNPUt3HhUx1bd4kakpSnmxmAL1oNJhmD0utrQfR5tw67UqishQyNcHnNZQe7DCxKlr5
	hDXD8dwbEYXoVgqRnz3uNPUpV1szY8XA5P/csWDAQmt6dByeGTkz0bS4fhcaK5BijWuVy2bEYgQM5
	6qK0f1UW58/eHY3y+UbXdacEP0QVS1QTCSkkjdLLKrltJmtjp5dtABbZ4LkHm1MV9WD0toRbjwg2N
	qJqVQ+H7VOX9cwN1jurDt635WwscFIqcOYR0n4bhL+JYfVruL0jIjfK+VGZ7AzvfCrh5V7rIEagFt
	6BqQdkFW9PEEcWlLvN2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIbKn-000000069Wb-2H8M;
	Fri, 01 May 2026 00:02:21 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIbKk-000000069Vh-15am
	for linux-rockchip@lists.infradead.org;
	Fri, 01 May 2026 00:02:19 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-b9358dd7f79so244496166b.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2026 17:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777593736; x=1778198536; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FVHhCQMUid03F9iDcHc+WtyXeEQi+bjBCIpWQi6kbrQ=;
        b=ArSgMMGTl9WkpV9MBamMlxZCYsf7GnC5fGRK1qvtJEER/52Y47s7AX+Rrt4pF0Yo2i
         JIbZfPFaoZlh8YEsQCGmQndl2E8qM6UCtJmD48OhA4lol2BofvLYqDb7JotifMuIhVNP
         5sNKNvc1q/7qx8t/nnIHfCBz6xXPeW1KgxsSs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777593736; x=1778198536;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FVHhCQMUid03F9iDcHc+WtyXeEQi+bjBCIpWQi6kbrQ=;
        b=SkI69fPUa6Oiz5IpJOu/B/AEjTphynM6EGf4TwWr9WEvxTeHLgB92wqg1ATFEOPQSu
         H41Hxqr9pqbw8KyX0reBkuvOplFOpTs9vg6bSK9szc4s55nwpHkU9g5l6CYFt8DiPCkv
         E6lWelYq5TCIIkR9Q8Koh9gMn6ifGm3GiYCkt25EaIADEHVK6tp1BQgDYjmW0b+oPmtc
         wGw1itV2fzX6h9nCGNQ6eUvdP/DGDOuPRPJKgJpgP+bCNf487Cb3mG2Ra8WumujaGwV5
         kpP1uRO0iGyUtnUM6i0aHE/z5TqonP+G4N9VKrzdDihOKStKgsH/EulcJo+NvrT5riKv
         qj4g==
X-Forwarded-Encrypted: i=1; AFNElJ+cjGgZZYhyPV55iMr/sk0eJ1fboPYwcsr8D0x0hmNS0mKg+MCc1kX1sdCelOuIHphYmaB/mjUbiDFEDg7FgA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxfVtLe41XiHGhej488o0TPGp+7Y7B5fCACVcxKeXxAGsBt8eS8
	QosOo4pe7r2tKR8ljil/6nTVFvyet08DlIuJ8gUMz3VeiZCmFidea7PdFNJ7wODa97UOdCP3Ehl
	12HShcn3z
X-Gm-Gg: AeBDievJ9slNw9eR1T4uydgJKl/2ofYtsFn7JARN9bPwxpbQmjU49UruIwLzMOOY04t
	lqH/Q1kBGpLK3+SG3NKw4+Rd1EBea9gXgFSE5DqpfxHhd2UVcFqldtBbjupyckTgi65zVrwohEU
	jW6Qui3DIRellAupC5zhxmKbISkFPr1B7HV8o2t3jygSPYatBI7y9cOJLplZQLBIRYajeAFBQE+
	VjTMXqcfue2bDtLNPoD9SHWyacPi0vUQnsjqiUmIwI/WEgmmkcBqWZKJz9OmUBpFo+ab4pr3SAP
	W+8VEOdEMjIVlE7cFSzt3XBEla9WcAKx7dzfyRAwEkyMDMa06VjYgYvEl5k15ARIwrLLCKYsdPZ
	qcQSpSqTVtJYLmDjDAW/3Db23dj8t1Amt2ibfhBBRvwa9Qc7x5soFN5FqPWh5Vreb/SkOpW/KK3
	S1DkpJ/N3qkHMjPW9j5rKXCBMFZahFEYjlhlHua3ewJxof7+dMJlYR9QLOT0r4GwNJGzmtUFdY
X-Received: by 2002:a17:907:e101:b0:b9c:7eb8:1078 with SMTP id a640c23a62f3a-bbac7794626mr229111566b.45.1777593735563;
        Thu, 30 Apr 2026 17:02:15 -0700 (PDT)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com. [209.85.208.49])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bbe69f6d84dsm48926166b.2.2026.04.30.17.02.14
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2026 17:02:15 -0700 (PDT)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-67b7c77865dso1245518a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2026 17:02:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/WB/Ep4Pu/ftaUDXbomKPjGHeJ9872xdryAk3M9xClTqbVPSh1d/HpUBYLd8obIrk1LQ626FtCrQ/Y5Mbwwg==@lists.infradead.org
X-Received: by 2002:a05:6000:2385:b0:43d:7ba4:6b5a with SMTP id
 ffacd0b85a97d-4493f814094mr7876169f8f.22.1777593281177; Thu, 30 Apr 2026
 16:54:41 -0700 (PDT)
MIME-Version: 1.0
References: <20260428200712.2660635-1-briannorris@chromium.org> <20260428200712.2660635-4-briannorris@chromium.org>
In-Reply-To: <20260428200712.2660635-4-briannorris@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 30 Apr 2026 16:54:29 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wzk3BW7qOQHm3zait9p=K+pTNVviMgUF1dfdqw9rimnw@mail.gmail.com>
X-Gm-Features: AVHnY4Lf_-e67ZfLDh6j0F0tOI3LrjkSTUbSwaFXekuSrX2ugdsS_RxN4nbO7Qo
Message-ID: <CAD=FV=Wzk3BW7qOQHm3zait9p=K+pTNVviMgUF1dfdqw9rimnw@mail.gmail.com>
Subject: Re: [PATCH 3/7] ARM: dts: nvidia: Add #{address,size}-cells to
 Chromium-based /firmware
To: Brian Norris <briannorris@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Heiko Stuebner <heiko@sntech.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Tzung-Bi Shih <tzungbi@kernel.org>, chrome-platform@lists.linux.dev, 
	linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, cros-qcom-dts-watchers@chromium.org, 
	linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_170218_337064_BFBFB510 
X-CRM114-Status: GOOD (  16.33  )
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

SGksCgpPbiBUdWUsIEFwciAyOCwgMjAyNiBhdCAxOjA34oCvUE0gQnJpYW4gTm9ycmlzIDxicmlh
bm5vcnJpc0BjaHJvbWl1bS5vcmc+IHdyb3RlOgo+Cj4gQ2hyb21pdW0vRGVwdGhjaGFyZ2UgYm9v
dGxvYWRlcnMgbWF5IGR5bmFtaWNhbGx5IGFkZCBhIGZldyBkZXZpY2Ugbm9kZXMKPiB0byBhIHN5
c3RlbSdzIERUQiB1bmRlciBhIC9maXJtd2FyZSBub2RlLiBBIHR5cGljYWwgRFQgbG9va3Mgc29t
ZXRoaW5nCj4gbGlrZSB0aGUgZm9sbG93aW5nOgo+Cj4gLyB7Cj4gICAgICAgICBmaXJtd2FyZSB7
Cj4gICAgICAgICAgICAgICAgIHJhbmdlczsKPgo+ICAgICAgICAgICAgICAgICBjb3JlYm9vdCB7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJjb3JlYm9vdCI7Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgcmVnID0gPC4uLj47Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgLi4uOwo+ICAgICAgICAgICAgICAgICB9Owo+ICAgICAgICAgfTsKPiB9Owo+Cj4gTm90YWJs
eSwgdGhlIC9maXJtd2FyZSBub2RlIGhhcyBhbiBlbXB0eSAncmFuZ2VzJywgYnV0IGRvZXMgbm90
IGhhdmUKPiBhZGRyZXNzL3NpemUtY2VsbHMuCj4KPiBDb21taXQgNmU1NzczZDUyZjRhICgib2Yv
YWRkcmVzczogRml4IFdBUk4gd2hlbiBhdHRlbXB0aW5nIHRyYW5zbGF0aW5nCj4gbm9uLXRyYW5z
bGF0YWJsZSBhZGRyZXNzZXMiKSBzdGFydGVkIHJlcXVpcmluZyAjYWRkcmVzcy1jZWxscyBmb3Ig
YQo+IGRldmljZSdzIHBhcmVudCBpZiB3ZSB3YW50IHRvIHVzZSB0aGUgcmVnIHJlc291cmNlIGlu
IGEgZGV2aWNlIG5vZGUuCj4gVGhpcyBsZWFkcyB0byBlcnJvcnMgbGlrZSB0aGUgZm9sbG93aW5n
Ogo+Cj4gWyAgICA3Ljc2Mzg3MF0gY29yZWJvb3RfdGFibGUgZmlybXdhcmU6Y29yZWJvb3Q6IHBy
b2JlIHdpdGggZHJpdmVyIGNvcmVib290X3RhYmxlIGZhaWxlZCB3aXRoIGVycm9yIC0yMgo+Cj4g
QWRkIGFwcHJvcHJpYXRlICN7YWRkcmVzcyxzaXplfS1jZWxscyB0byB3b3JrIGFyb3VuZCB0aGUg
cHJvYmxlbS4KPgo+IE5vdGUgdGhhdCBHb29nbGUgaGFzIGFsc28gcGF0Y2hlZCB0aGUgRGVwdGhj
aGFyZ2UgYm9vdGxvYWRlciBzb3VyY2UgdG8KPiBhZGQge2FkZHJlc3Msc2l6ZX0tY2VsbHMgWzFd
LCBidXQgYm9vdGxvYWRlciB1cGRhdGVzIGFyZSB0eXBpY2FsbHkKPiBkZWxpdmVyZWQgb25seSB2
aWEgR29vZ2xlIE9TIHVwZGF0ZXMuIE5vdCBhbGwgdXNlcnMgaW5zdGFsbCBHb29nbGUKPiBzb2Z0
d2FyZSB1cGRhdGVzLCBhbmQgZXZlbiBpZiB0aGV5IGRvLCBHb29nbGUgbWF5IG5vdCBwcm9kdWNl
IHVwZGF0ZWQKPiBiaW5hcmllcyBmb3IgYWxsL29sZGVyIGRldmljZXMuCj4KPiBbMV0gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjQxMjA5MDkyODA5LkdBMzI0NjQyNEBnb29nbGUuY29t
Lwo+ICAgICBodHRwczovL2NycmV2LmNvbS9jLzYwNTE1ODAgKCJjb3JlYm9vdDogSW5zZXJ0ICNh
ZGRyZXNzLWNlbGxzIGFuZAo+ICAgICAjc2l6ZS1jZWxscyBmb3IgZmlybXdhcmUgbm9kZSIpCj4K
PiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9hZUtsWXpUaUwwT0IxeTNnQGdv
b2dsZS5jb20vCj4gRml4ZXM6IDZlNTc3M2Q1MmY0YSAoIm9mL2FkZHJlc3M6IEZpeCBXQVJOIHdo
ZW4gYXR0ZW1wdGluZyB0cmFuc2xhdGluZyBub24tdHJhbnNsYXRhYmxlIGFkZHJlc3NlcyIpCj4g
U2lnbmVkLW9mZi1ieTogQnJpYW4gTm9ycmlzIDxicmlhbm5vcnJpc0BjaHJvbWl1bS5vcmc+CgpS
ZXZpZXdlZC1ieTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
