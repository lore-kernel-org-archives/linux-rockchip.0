Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4E30C02183
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jan 2025 14:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVdTezre2hHrZqMLfCoggBrhnQM5Dy3VnAbGExAPlfo=; b=hpxZH0Ky7RO5ih
	7a2EKszY3A5uMG2pJE5EIl1JmBhSXWp5Uu6MgWQYso1I+9/C7T1u36desft+yRYMSFFIyQDb3ceYW
	AzZm2q/RjCXQA/X8sjOrmghtfKObVJmV1kvOE3NR04RzerszLNfxflcHastmhjEagQ8JUoTanaAko
	zvj9njYLF4hA8KTE2UBdDdeB4L0GhXRyHpKLNtqE1Z+Ezuk4X5WAKR1uCT9S3WOx8PYId8XaOP24e
	+7wuwYNde5Ouc9vj+RkOmAzMNILD0gb6TqprCTdgg/gCfavclks9RTz35ghuSu2YG64iFLRyBfMDD
	3Am4W6qeSm+kQk9Z8eag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQYB-0000000F6Fb-3tDv;
	Thu, 16 Jan 2025 14:08:47 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQSj-0000000F5Cx-3DrQ;
	Thu, 16 Jan 2025 14:03:11 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5d3bdccba49so1652723a12.1;
        Thu, 16 Jan 2025 06:03:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737036188; x=1737640988; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ts0zOL1kfPYuS6zomJ9otxY90fzQ/wFMmbamI+iWdgk=;
        b=iZVd5MvX3gLIatACgrJKS7xlB5KXuEyJ5x9YZbNbf+XdM82d1d1GB/f0jdTMnrQtdc
         4o5QxWlzw7A7PBKcuxjzVQ+jiV45GjEs0TOZyM8HFhZH2lEYQuRDNlJ4dhjOOBgfa/EA
         kI7sOhZqMPf89MxwMPKanz27XWy6L76INx8CGBVekrg7I334kAKjXttJKyivTPaccLun
         8h2UmeuYLuH3DhAJRpOh1m3ddn+bPZlUYSVBfegv+mhocmt5a5qsyNccT6zuQ636ACg5
         zXl7CxPW3urmICH6RE+LrYSDwfvIzklnti2Ns8wl8hG6VaaM7s0NQ2gU7zzzUmmZc1uJ
         xN3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737036188; x=1737640988;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ts0zOL1kfPYuS6zomJ9otxY90fzQ/wFMmbamI+iWdgk=;
        b=fm9F0+1ikTbaAepffP0oa//r/ippdCL1nQdGkRWzLSRQ/XBh4F0lSd/N6O3US3Rsbc
         xvm55ZI86Uw4FtFlfl4w0XYz+EgkNml2OvsYQ1oDCXtJ04XFkG6RqKT3GSoJh2VxnFuB
         RrvtM/AmzAi1sAvfgW6njVZyCtSNn6S/uQhZBkwngo3iSPlkRJv7FdMBzfdS9KkZqnKs
         kAqR5oqPg7F/cW2Wsc3q7XycOYnMfZP9RqBpOmvz0uZtDml/OIUb34+R0jIsbzFXTsLQ
         QpI/BBAvGdzlEMFMmk48qpmjlCoz/uzWwhCNknGiWWOWEf89Z6FAE9RZvHBtlImLPO4G
         mtkA==
X-Forwarded-Encrypted: i=1; AJvYcCU+LJW5WxIUjAiBi3rSJrcZrOC34+BFSRt6jouEqVOe6hnypX572BO/rT8l3BsvmyTAYjlqd+XzCIuc@lists.infradead.org, AJvYcCUwso5R8n45zWsejxGUDtGoIPK4ebsSdTS2tpQzRBbej5ogIiJsR+4QjnUrbXlN6lsTpnsI48tWuljYSxa153o=@lists.infradead.org, AJvYcCXGGhZwvmf6LBqbJ/aejdoABkG/ztekWmUAMP78gEUYeYWRLkzdDlwJ5V3+Ibli2BsNkdnCgsBUbHVFubNqU4iV@lists.infradead.org
X-Gm-Message-State: AOJu0YyaYUnS0B138HnbhOG6pAdLFo6XN4PgLw7YYBLY8bNn5DTojI8U
	Fzag18Vyd8x1yxy5n91fzJ9WB2uw/Mlv/DHoJQSQ5f/PY/m1wv6LXbMGjPqFQYJ8BUNG/G5Zdp3
	g4+SPdwaN1gBwJlV05DAA0i4gAJ0=
X-Gm-Gg: ASbGnctvGqK5aCOojmaJuc5Z/+4zuEeigEmp8NjFY5n/PWqgs7Rk5WRxjUneMj5/zm7
	6oGcQ2fPq2pJ1fojuJ+ng2DgVHAiDNvajaF9l5YY=
X-Google-Smtp-Source: AGHT+IEFBH5rdDRzxNwKshRgTNAcDQcukVnz1qk9b2CQwOqVLB74sIBmizfzmVBpnEI/k3+EDMO9YL89iWmnCUbKvA4=
X-Received: by 2002:a05:6402:3483:b0:5db:67a7:e742 with SMTP id
 4fb4d7f45d1cf-5db67a7ec89mr597372a12.8.1737036187661; Thu, 16 Jan 2025
 06:03:07 -0800 (PST)
MIME-Version: 1.0
References: <20250115012628.1035928-1-pgwipeout@gmail.com> <2EEA8028-8E4A-4588-A480-E5FF0F7BE82E@gmail.com>
 <CAMdYzYo2W1hLgiH697AdRSUbhBU4rU2uB=N6EMWMD2-0R+VLBA@mail.gmail.com>
 <B1C9DA16-F285-4AD0-AE4E-AF1A5CA20932@gmail.com> <CAMdYzYrxX=RsSZja-3+zLZUSpyLoRz8Zm0w0hTfL3RQ9cjqgOw@mail.gmail.com>
 <3536B507-8658-4377-A1AC-2C5D9093BDEB@gmail.com>
In-Reply-To: <3536B507-8658-4377-A1AC-2C5D9093BDEB@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 16 Jan 2025 09:02:54 -0500
X-Gm-Features: AbW1kvZDgqM8jfgzDVevxYgT39_hbUcQ7lTpjdvs9pBBkN8iloIKzhGnQ2-7CDI
Message-ID: <CAMdYzYoCj9FsyHdTQAOV4DFpD7OdMDaJ0R=BBxXG-SLguy512Q@mail.gmail.com>
Subject: Re: [RFC PATCH v1 0/6] rockchip: add a functional usb3 phy driver for rk3328
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Michael Turquette <mturquette@baylibre.com>, kever.yang@rock-chips.com, 
	linux-phy@lists.infradead.org, wulf@rock-chips.com, zyw@rock-chips.com, 
	Dragan Simic <dsimic@manjaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, linux-clk@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Arnd Bergmann <arnd@arndb.de>, Jonas Karlman <jonas@kwiboo.se>, frank.wang@rock-chips.com, 
	Elaine Zhang <zhangqing@rock-chips.com>, Alex Bee <knaerzche@gmail.com>, 
	william.wu@rock-chips.com, Zhang Yubing <yubing.zhang@rock-chips.com>, 
	Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	Trevor Woerner <twoerner@gmail.com>, Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org, 
	Vinod Koul <vkoul@kernel.org>, FUKAUMI Naoki <naoki@radxa.com>, 
	Diederik de Haas <didi.debian@cknow.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_060309_804565_58E18683 
X-CRM114-Status: GOOD (  15.12  )
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

T24gV2VkLCBKYW4gMTUsIDIwMjUgYXQgODoyNeKAr0FNIFBpb3RyIE9uaXN6Y3p1awo8cGlvdHIu
b25pc3pjenVrQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPgo+Cj4gPiBXaWFkb21vxZvEhyBuYXBpc2Fu
YSBwcnpleiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPiB3IGRuaXUgMTUgc3R5IDIw
MjUsIG8gZ29kei4gMTQ6MTU6Cj4gPgo+ID4+Cj4gPj4KPiA+PiBwbHMgZmluZDoKPiA+Pgo+ID4+
IGR0c2k6IGh0dHBzOi8vZ2lzdC5naXRodWIuY29tL3dhcnBtZS82YWY5ZTI3NzhmYjA2YmZiNDdi
NjRmOThmZTc5ZDY3OAo+ID4+IGFuZCBkdDogaHR0cHM6Ly9naXN0LmdpdGh1Yi5jb20vd2FycG1l
Lzc5MzQwYzU0Yzg3YjJiMWU1MmYyYTE0NjQ2MWQ4YzlmCj4gPj4KPiA+Pgo+ID4+IGFuZCBjb21w
aWxlZCAuZHRiCj4gPgo+ID4gSXQgYWxsIGxvb2tzIGdvb2QuCj4gPiBEbyB5b3UgaGF2ZSBhbnkg
Q1JVIGVycm9ycyBpbiB0aGUgYm9vdCBsb2c/Cj4gPiBDYW4geW91IGNoZWNrIGZvciB0aGUgcHJl
c2VuY2Ugb2YgY2xrX3JlZl91c2Izb3RnIGluCj4gPiAvc3lzL2tlcm5lbC9kZWJ1Zy9jbGsvY2xr
X3N1bW1hcnk/Cj4gPgo+ID4+Cj4KPiBjcnUgZXJyb3JzIGluIGRtZXNnIC0gc2VlbXMgbm8gYW55
Lgo+IGhlcmUgaXMgbXkgZG1lc2c6IGh0dHBzOi8vZ2lzdC5naXRodWIuY29tL3dhcnBtZS9lY2Yz
ODQ4MmNjODhmYjY4NDcxMzU1ZDAxMWVjZjk3NAo+Cj4gRm9yIGNsa19yZWZfdXNiM290ZyBp4oCZ
bSBnZXR0aW5nIGZvbGxvd2luZzoKPgo+IHJvb3RAbXl0aC1mcm9udGVuZC1lNjdhOGRlNGM4MTU6
fiAjIGNhdCAvc3lzL2tlcm5lbC9kZWJ1Zy9jbGsvY2xrX3N1bW1hcnkgfCBncmVwIHVzYjMKPiAg
ICAgY2xrX3VzYjNvdGdfc3VzcGVuZCAgICAgICAgICAgICAgMCAgICAgICAwICAgICAgICAwICAg
ICAgICAzMDc3MCAgICAgICAwICAgICAgICAgIDAgICAgIDUwMDAwICAgICAgTiAgICAgIGRldmlj
ZWxlc3MgICAgICAgICAgICAgICAgICAgICAgbm9fY29ubmVjdGlvbl9pZAo+ICAgICBjbGtfdXNi
M290Z19yZWYgICAgICAgICAgICAgICAgICAwICAgICAgIDAgICAgICAgIDAgICAgICAgIDI0MDAw
MDAwICAgIDAgICAgICAgICAgMCAgICAgNTAwMDAgICAgICBOICAgICAgZGV2aWNlbGVzcyAgICAg
ICAgICAgICAgICAgICAgICBub19jb25uZWN0aW9uX2lkCj4gICAgIGNsa19yZWZfdXNiM290ZyAg
ICAgICAgICAgICAgICAgIDAgICAgICAgMCAgICAgICAgMCAgICAgICAgMjQwMDAwMDAgICAgMCAg
ICAgICAgICAwICAgICA1MDAwMCAgICAgIFkgICAgICBkZXZpY2VsZXNzICAgICAgICAgICAgICAg
ICAgICAgIG5vX2Nvbm5lY3Rpb25faWQKPiAgICAgICAgICAgICAgICAgICAgcGNsa191c2IzX2dy
ZiAgICAgMCAgICAgICAwICAgICAgICAwICAgICAgICA3NTAwMDAwMCAgICAwICAgICAgICAgIDAg
ICAgIDUwMDAwICAgICAgWSAgICAgICAgICAgICAgICAgICAgIGRldmljZWxlc3MgICAgICAgICAg
ICAgICAgICAgICAgbm9fY29ubmVjdGlvbl9pZAo+ICAgICAgICAgICAgICAgICAgICBwY2xrX3Vz
YjNwaHlfcGlwZSAwICAgICAgIDAgICAgICAgIDAgICAgICAgIDc1MDAwMDAwICAgIDAgICAgICAg
ICAgMCAgICAgNTAwMDAgICAgICBOICAgICAgICAgICAgICAgICAgICAgZGV2aWNlbGVzcyAgICAg
ICAgICAgICAgICAgICAgICBub19jb25uZWN0aW9uX2lkCj4gICAgICAgICAgICAgICAgICAgIHBj
bGtfdXNiM3BoeV9vdGcgIDAgICAgICAgMCAgICAgICAgMCAgICAgICAgNzUwMDAwMDAgICAgMCAg
ICAgICAgICAwICAgICA1MDAwMCAgICAgIE4gICAgICAgICAgICAgICAgICAgICBkZXZpY2VsZXNz
ICAgICAgICAgICAgICAgICAgICAgIG5vX2Nvbm5lY3Rpb25faWQKPiAgICAgICAgICAgY2xrX3Jl
Zl91c2Izb3RnX3NyYyAgICAgICAgMCAgICAgICAwICAgICAgICAwICAgICAgICAzNzUwMDAwMCAg
ICAwICAgICAgICAgIDAgICAgIDUwMDAwICAgICAgTiAgICAgICAgICAgIGRldmljZWxlc3MgICAg
ICAgICAgICAgICAgICAgICAgbm9fY29ubmVjdGlvbl9pZAo+ICAgICAgICAgICAgICAgICAgICBh
Y2xrX3VzYjNvdGcgICAgICAwICAgICAgIDAgICAgICAgIDAgICAgICAgIDE1MDAwMDAwMCAgIDAg
ICAgICAgICAgMCAgICAgNTAwMDAgICAgICBOICAgICAgICAgICAgICAgICAgICAgZGV2aWNlbGVz
cyAgICAgICAgICAgICAgICAgICAgICBub19jb25uZWN0aW9uX2lkCj4KCkknbSBhdCBhIGxvc3Mg
aGVyZSwgSSBhcHBsaWVkIHRoZSBwYXRjaGVzIHRvIGEgY2xlYW4gNi45IHRyZWUgYW5kIGV2ZW4K
YnVpbHQgaXQgYXMgYSBtb2R1bGUgKHRoYW5rIHlvdSBmb3IgdGhlIHNlbnRpbmVsKS4gSSBoYXZl
IG5vIGlzc3Vlcy4KSSdtIHdvbmRlcmluZyBpZiBpdCdzIHlvdXIgLmNvbmZpZyBvciBzb21ldGhp
bmcgYWJvdXQgeW91ciBib290bG9hZGVyLgoKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
