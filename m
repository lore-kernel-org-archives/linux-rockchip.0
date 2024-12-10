Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E59F0E77182
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 13:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0TOf0Zw/BJxBrpAMM8Ntmlx+4RSiVaSWZyANPq+mxM=; b=MIOms7nHOsMolB
	G93ClWDs1aOsf1GZSZ0rGhH1kKOyXE1ZdYrNS/KjMz8uq3PsN9RIl8F7KXzBEJsvvGX5e69Vooryk
	BOjhGjlvxD6p5BX+7GVmcyHn+WVbAf7mZiUKdd3LGw2qoF/OD3ngVS9cnRrPO96q83mxDc5wJ9wOZ
	dfGlvWTmFrXrQihKtUbUdrlW7t5E6NNlwaQ7WTka0GjtsxrhQtA4izSPPyDE3fNoP/Wl36uYfUU50
	xWONFvBTJBoWVOlj0StG+2KmJ3VORIJagxRNdumDmhL2AXmvLkoM87Wejoheo8jfhsEtdFFt7kWjC
	IaQFAMkiGhwdVPafSN3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL0EB-0000000BZMd-2raM;
	Tue, 10 Dec 2024 13:24:39 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL0D8-0000000BZFA-1e9c;
	Tue, 10 Dec 2024 13:23:35 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5d3dce16a3dso5598150a12.1;
        Tue, 10 Dec 2024 05:23:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733837012; x=1734441812; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cID+icBwQVZ1cLeVHmwo+pX71ArOF+/a0tJhAyvJi3E=;
        b=DdZEdkKFiD13GPTBGNUX8CNuLzygmH1mBTaqnZEyZqQ4ypsCUeH6gHsRnpHkqwEphg
         DGGTKqTFc43B6uV5kGwdDDU5hGuAZx1iJR4jP2SSnQ8fIjGkajK87aYAzhUzItEp51R1
         bMXp9+CYhEBi16xplB7Ui2MfIM85EgLl5uzHKFJ4iXxyzazwkciWUu7p2qdGEZ50l+gY
         mSprOcWq2Wx8BsnP5aJkOfYM5DDzM9MwUVVc9eCE1/jTw2i6fyPIbAAe3Hae6mID8lH7
         QGDcXehF6npdc2zRLn6bygs4/kGlBvrXWi5u6HdPZ4dlOIgJf6XHbsWmvmgXD/ZNQT1k
         4Q3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733837012; x=1734441812;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cID+icBwQVZ1cLeVHmwo+pX71ArOF+/a0tJhAyvJi3E=;
        b=DCuSU6F0PQRiAaimehHiDuZw895MNy9xNeIXn4l0dAGR++Rr2MPEYupVPCc7SByyvl
         XX0gN3FgZLMcBp5UZqW4oM5g2wmhG84+Tbtqhhc3e1LKnWIlgbxqu7XHi9XqfcntAUfj
         FPxErlJzltoFCcHMQ8zSixDoqFerBto/PT2/06PjMftXf1chvpjddkyd9pWkMIa9A7Bj
         nDL+62wp/9+q1kQl7UTyTROwvmYgDyfpi73LAwWVuDENuEeLCvGxbI2pU4/xEjcPJp60
         NGxtqlFsvDnlT9/SQg7sMcnmWBF+55DJJbNpsT2O+hq+USl7WMeQ9eKDkwHpJfS/VWht
         avAA==
X-Forwarded-Encrypted: i=1; AJvYcCWwzwvdHFav4Lsfm+VwYvyJzJ0vlnaZdfAOhGN9KlSyloY7P5LbtaYE9KxrsYH6fvHvtYEIiXA21K8Fx0AworrI@lists.infradead.org, AJvYcCXbjagKB6Gf919VX8i2zyOeE/5Q4YwR3hic9m3l22unoim53CJsLx2KIgc1qnc/XM0HYhVXJqbzKWQYkRQBrTw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxsjVz12A65Ikhymr4rSSB8QkqVGaJpYY0RXcV20cx/HNAd+r8m
	u7aVCUB0HmPviWecwRLzpEByjhRWLXZZiMh4JVnBpvlw7GfF/Auoe/OXVzHTBEW6JZ+/IOIKPHJ
	nHgmB7yxLfRpSDPMSXgORvw11LOg=
X-Gm-Gg: ASbGncsrK6eG+UlswftqHPK1YlxAWRB0Ar/v1h8k3HppNLGFFn9Jgg0jHUc3jLKuZY+
	Lua+2sO6q4Octh2Kqk6nmlsJ5z1GSXtwcAN+MqrdFlzWlvAcIyM3Q2zWbD5A=
X-Google-Smtp-Source: AGHT+IEiQZp+8ruy21+1lGoFTcEYaNOlU4Ihj6HejgjGDUx9L85LTtGqOVIO6IG1rybYdwfcnDlo7HnORY98CWMtsNI=
X-Received: by 2002:a05:6402:1ecb:b0:5d0:9c3b:faf4 with SMTP id
 4fb4d7f45d1cf-5d41e28eedbmr2927675a12.7.1733837012164; Tue, 10 Dec 2024
 05:23:32 -0800 (PST)
MIME-Version: 1.0
References: <20241210013010.81257-1-pgwipeout@gmail.com> <20241210013010.81257-5-pgwipeout@gmail.com>
 <e32fa593abfa6d08202b4f929e0b4bdb@manjaro.org> <CAMdYzYp+MQVYr1tOMEOn62vXZGVEYrtd1p9vn6YQzXdrJgSdyA@mail.gmail.com>
In-Reply-To: <CAMdYzYp+MQVYr1tOMEOn62vXZGVEYrtd1p9vn6YQzXdrJgSdyA@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 10 Dec 2024 08:23:22 -0500
Message-ID: <CAMdYzYquvGBzfWqvUOku7m1sM9qxmBHAL95cANDViUCT1oEEhQ@mail.gmail.com>
Subject: Re: [PATCH 4/6] arm64: dts: rockchip: add hevc power domain clock to rk3328
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Alex Bee <knaerzche@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, 
	Johan Jonker <jbx6244@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Liang Chen <cl@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	shironeko <shironeko@tesaguri.club>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_052334_432923_C43B6E6C 
X-CRM114-Status: GOOD (  29.43  )
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

T24gVHVlLCBEZWMgMTAsIDIwMjQgYXQgODoxM+KAr0FNIFBldGVyIEdlaXMgPHBnd2lwZW91dEBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gVHVlLCBEZWMgMTAsIDIwMjQgYXQgNTowNOKAr0FNIERy
YWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPiB3cm90ZToKPiA+Cj4gPiBIZWxsbyBQZXRl
ciwKPiA+Cj4gPiBPbiAyMDI0LTEyLTEwIDAyOjMwLCBQZXRlciBHZWlzIHdyb3RlOgo+ID4gPiBU
aGVyZSBpcyBhIHJhY2UgY29uZGl0aW9uIGF0IHN0YXJ0dXAgYmV0d2VlbiBkaXNhYmxpbmcgcG93
ZXIgZG9tYWlucwo+ID4gPiBub3QKPiA+ID4gdXNlZCBhbmQgZGlzYWJsaW5nIGNsb2NrcyBub3Qg
dXNlZCBvbiB0aGUgcmszMzI4LiBXaGVuIHRoZSBjbG9ja3MgYXJlCj4gPiA+IGRpc2FibGVkIGZp
cnN0LCB0aGUgaGV2YyBwb3dlciBkb21haW4gZmFpbHMgdG8gc2h1dCBvZmYgbGVhZGluZyB0byBh
Cj4gPiA+IHNwbGF0IG9mIGZhaWx1cmVzLiBBZGQgdGhlIGhldmMgY29yZSBjbG9jayB0byB0aGUg
cmszMzI4IHBvd2VyIGRvbWFpbgo+ID4gPiBub2RlIHRvIHByZXZlbnQgdGhpcyBjb25kaXRpb24u
Cj4gPiA+Cj4gPiA+IHJjdTogSU5GTzogcmN1X3NjaGVkIGRldGVjdGVkIGV4cGVkaXRlZCBzdGFs
bHMgb24gQ1BVcy90YXNrczogeyAzLS4uLi4KPiA+ID4gfQo+ID4gPiAxMDg3IGppZmZpZXMgczog
ODkgcm9vdDogMHg4Ly4KPiA+ID4gcmN1OiBibG9ja2luZyByY3Vfbm9kZSBzdHJ1Y3R1cmVzIChp
bnRlcm5hbCBSQ1UgZGVidWcpOgo+ID4gPiBTZW5kaW5nIE5NSSBmcm9tIENQVSAwIHRvIENQVXMg
MzoKPiA+ID4gTk1JIGJhY2t0cmFjZSBmb3IgY3B1IDMKPiA+ID4gQ1BVOiAzIFVJRDogMCBQSUQ6
IDg2IENvbW06IGt3b3JrZXIvMzozIE5vdCB0YWludGVkIDYuMTIuMC1yYzUrICM1Mwo+ID4gPiBI
YXJkd2FyZSBuYW1lOiBGaXJlZmx5IFJPQy1SSzMzMjgtQ0MgKERUKQo+ID4gPiBXb3JrcXVldWU6
IHBtIGdlbnBkX3Bvd2VyX29mZl93b3JrX2ZuCj4gPiA+IHBzdGF0ZTogMjA0MDAwMDUgKG56Q3Yg
ZGFpZiArUEFOIC1VQU8gLVRDTyAtRElUIC1TU0JTIEJUWVBFPS0tKQo+ID4gPiBwYyA6IHJlZ21h
cF91bmxvY2tfc3BpbmxvY2srMHgxOC8weDMwCj4gPiA+IGxyIDogcmVnbWFwX3JlYWQrMHg2MC8w
eDg4Cj4gPiA+IHNwIDogZmZmZjgwMDA4MTEyM2MwMAo+ID4gPiB4Mjk6IGZmZmY4MDAwODExMjNj
MDAgeDI4OiBmZmZmMmZhNGM2MmNhZDgwIHgyNzogMDAwMDAwMDAwMDAwMDAwMAo+ID4gPiB4MjY6
IGZmZmZkNzRlNmU2NjBlYjggeDI1OiBmZmZmMmZhNGM2MmNhZTAwIHgyNDogMDAwMDAwMDAwMDAw
MDA0MAo+ID4gPiB4MjM6IGZmZmZkNzRlNmQyZjNhYjggeDIyOiAwMDAwMDAwMDAwMDAwMDAxIHgy
MTogZmZmZjgwMDA4MTEyM2M3NAo+ID4gPiB4MjA6IDAwMDAwMDAwMDAwMDAwMDAgeDE5OiBmZmZm
MmZhNGMwNDEyMDAwIHgxODogMDAwMDAwMDAwMDAwMDAwMAo+ID4gPiB4MTc6IDc3MjAyYzMxMjAz
ZDIwNjUgeDE2OiA2YzY0NjkyMDNhNzI2NTZjIHgxNTogNmM2ZjcyNzQ2ZTZmNjMyZAo+ID4gPiB4
MTQ6IDcyNjU3NzZmNzAzYTZlNmYgeDEzOiAyMDYzNzY2NTY4MjA2ZTY5IHgxMjogNjE2ZDZmNjQy
MDJjMzQzMQo+ID4gPiB4MTE6IDM0NzgzMDIwNmY3NDIwMzAgeDEwOiAzNDMwMzAzMDM0NzgzMDIw
IHg5IDogZmZmZmQ3NGU2YzczNjllMAo+ID4gPiB4OCA6IDMwMzAzMTY2NjYyMDZlNjkgeDcgOiAy
MDVkMzgzNzM4MzUzNzMzIHg2IDogMzMyZTMxMjAyMDIwMjA1Ygo+ID4gPiB4NSA6IGZmZmZkNzRl
NmM3M2ZjODggeDQgOiBmZmZmZDc0ZTZjNzNmY2Q0IHgzIDogZmZmZmQ3NGU2Yzc0MGI0MAo+ID4g
PiB4MiA6IGZmZmY4MDAwODAwMTU0ODQgeDEgOiAwMDAwMDAwMDAwMDAwMDAwIHgwIDogZmZmZjJm
YTRjMDQxMjAwMAo+ID4gPiBDYWxsIHRyYWNlOgo+ID4gPiByZWdtYXBfdW5sb2NrX3NwaW5sb2Nr
KzB4MTgvMHgzMAo+ID4gPiByb2NrY2hpcF9wbXVfc2V0X2lkbGVfcmVxdWVzdCsweGFjLzB4MmMw
Cj4gPiA+IHJvY2tjaGlwX3BkX3Bvd2VyKzB4MTQ0LzB4NWY4Cj4gPiA+IHJvY2tjaGlwX3BkX3Bv
d2VyX29mZisweDFjLzB4MzAKPiA+ID4gX2dlbnBkX3Bvd2VyX29mZisweDljLzB4MTgwCj4gPiA+
IGdlbnBkX3Bvd2VyX29mZi5wYXJ0LjAuaXNyYS4wKzB4MTMwLzB4MmE4Cj4gPiA+IGdlbnBkX3Bv
d2VyX29mZl93b3JrX2ZuKzB4NmMvMHg5OAo+ID4gPiBwcm9jZXNzX29uZV93b3JrKzB4MTcwLzB4
M2YwCj4gPiA+IHdvcmtlcl90aHJlYWQrMHgyOTAvMHg0YTgKPiA+ID4ga3RocmVhZCsweGVjLzB4
ZjgKPiA+ID4gcmV0X2Zyb21fZm9yaysweDEwLzB4MjAKPiA+ID4gcm9ja2NoaXAtcG0tZG9tYWlu
IGZmMTAwMDAwLnN5c2Nvbjpwb3dlci1jb250cm9sbGVyOiBmYWlsZWQgdG8gZ2V0IGFjawo+ID4g
PiBvbgo+ID4gPiBkb21haW4gJ2hldmMnLCB2YWw9MHg4ODIyMAo+ID4gPgo+ID4gPiBGaXhlczog
NTJlMDJkMzc3YTcyICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCBjb3JlIGR0c2kgZmlsZSBm
b3IKPiA+ID4gUkszMzI4IFNvQ3MiKQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBHZWlzIDxw
Z3dpcGVvdXRAZ21haWwuY29tPgo+ID4KPiA+IFdoaWxlIEkgd2FzIHVuYWJsZSB0byBmb3JtYWxs
eSB2ZXJpZnkgdGhpcyBjbG9jayBhc3NpZ25tZW50LAo+ID4gaS5lLiBieSB1c2luZyB0aGUgUksz
MzI4IFRSTSBvciB0aGUgZG93bnN0cmVhbSBrZXJuZWwgc291cmNlCj4gPiBmcm9tIFJvY2tjaGlw
LCBpdCBtYWtlcyBwZXJmZWN0IHNlbnNlIHRvIG1lLiAgVGhhbmtzIGZvciB0aGUKPiA+IHBhdGNo
LCBhbmQgcGxlYXNlIGZlZWwgZnJlZSB0byBpbmNsdWRlOgo+ID4KPiA+IFJldmlld2VkLWJ5OiBE
cmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4KPgo+IEl0IGlzIHVuZm9ydHVuYXRlIHRo
ZSBUUk0gZG9lc24ndCBpbmNsdWRlIHRoZSBjbG9jayBtYXBzLCBiZWNhdXNlIHRoZXkKPiBhcmUg
ZXh0cmVtZWx5IGhlbHBmdWwgd2hlbiBvbmUgY2FuIGFjcXVpcmUgdGhlbS4gSXQgYWxzbyBkb2Vz
bid0IGhlbHAKPiB0aGF0IHRoZSBUUk0gcmVnaXN0ZXIgZGVmaW5pdGlvbiBvbmx5IHJlZmVycmVk
IHRvIHRoaXMgYXMgInBsbCIuIEkgd2FzCj4gc2VudCBzcGVjaWZpY2FsbHkgdGhlIHVzYjMgcGh5
IGNsb2NrIG1hcCBmb3IgbXkgd29yayBvbiB0aGUgZHJpdmVyLAo+IHdoaWNoIGhhZCB0aGUgbG9j
YXRpb24gb2YgZWFjaCBzd2l0Y2ggYW5kIGRpdmlkZXIgYWxvbmcgd2l0aCB0aGUKPiByZWdpc3Rl
ciBhbmQgYml0IHRoYXQgY29udHJvbGxlZCBpdC4gVGhhdCBjb21iaW5lZCB3aXRoIHRoZSBUUk0K
PiByZWdpc3RlciBtYXAgYWxsb3dlZCBtZSB0byBmaW5kIHRoaXMgZXJyb3IuCj4KPiBUaGFua3Mh
Cj4gUGV0ZXIKCkFwb2xvZ2llcywgdGhhdCdzIHRoZSB3cm9uZyByZXNwb25zZSBmb3IgdGhpcyBv
bmUuClRoaXMgcGF0Y2ggd2FzIHRoZSByZXN1bHQgb2YgZWR1Y2F0ZWQgZ3Vlc3MgY29tYmluZWQg
d2l0aCB0ZXN0aW5nLiBJCmdyYWJiZWQgYWxsIG9mIHRoZSBjbG9ja3MgdGhhdCBsb29rZWQgbGlr
ZSB0aGV5IGNvdWxkIGFmZmVjdCB0aGluZ3MsCnRoZW4gdGVzdGVkIHRoZW0gb25lIGF0IGEgdGlt
ZSB1bnRpbCBJIGlzb2xhdGVkIHRoZW0gdG8gdGhpcyBjbG9jay4gSXQKbGl2ZXMgYWxvbmUgd2l0
aCBjcGxsIGFzIHRoZSBwYXJlbnQgYW5kIGhhcyBubyBjaGlsZHJlbiBhY2NvcmRpbmcgdG8KdGhl
IGNsb2NrIHN1bW1hcnkuIChUaG91Z2ggdGhlIHdyaXRldXAgaSBtaXN0YWtlbmx5IGluY2x1ZGVk
IGFib3ZlCnByb3ZlcyB0aGUgY2xvY2sgbWFwIGlzbid0IGFsd2F5cyBhY2N1cmF0ZSkuCgpUaGFu
a3MsClBldGVyCj4KPiA+Cj4gPiA+IC0tLQo+ID4gPgo+ID4gPiAgYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzMjguZHRzaSB8IDEgKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzMyOC5kdHNpCj4gPiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzMjguZHRzaQo+ID4gPiBpbmRleCAwNTk3ZGU0MTVmZTAuLjdkOTkyYzNjMDFjZSAxMDA2NDQK
PiA+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjguZHRzaQo+ID4g
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC5kdHNpCj4gPiA+IEBA
IC0zMzMsNiArMzMzLDcgQEAgcG93ZXI6IHBvd2VyLWNvbnRyb2xsZXIgewo+ID4gPgo+ID4gPiAg
ICAgICAgICAgICAgICAgICAgICAgcG93ZXItZG9tYWluQFJLMzMyOF9QRF9IRVZDIHsKPiA+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPFJLMzMyOF9QRF9IRVZDPjsKPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjcnUgU0NMS19WRU5D
X0NPUkU+Owo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAjcG93ZXItZG9tYWlu
LWNlbGxzID0gPDA+Owo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ID4gICAgICAg
ICAgICAgICAgICAgICAgIHBvd2VyLWRvbWFpbkBSSzMzMjhfUERfVklERU8gewoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
