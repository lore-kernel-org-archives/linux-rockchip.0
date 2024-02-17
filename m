Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35A12C48BC3
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Feb 2024 22:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AsOTGIFFQe8x5gH9YXs3yy75He0IYLHjgZwShdCpJ6A=; b=G+5rrPGhCFOMW0
	PALZBgWciQs3RfmbYQ7i99wUfPCTTNEa7WmKwXxSCweN0BEpwCC+rnvVjm5zs00bKUBCx4yU6haib
	kBaYvgJr/9gOCGi4mvcNehtszfRpw3CSYrbDw4egf68WAe3X0rzaq9CtUd4vV0ElUM3KYA7O2DZ0o
	1MNPY93Su4ARjE0t/Nd1oJ9XzvPhXGX7x+cEYCkjDjqYliJ65RWu6IFBuAu2ERBCHpHJ3u/4b36/s
	3YGMZ7Op072mHtNIjb9HJCjmCPYluQP4I9MplF4YFpCNcF7e2MWlkO7a0dntz+RP/dgjUj9BzSm8G
	ZJX8PfRUsJx4vHwRxDpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbTJo-00000006XcZ-0eds;
	Sat, 17 Feb 2024 22:38:00 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbTJj-00000006Xal-0cPK
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Feb 2024 22:37:57 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-dcbf82cdf05so3700248276.2
        for <linux-rockchip@lists.infradead.org>; Sat, 17 Feb 2024 14:37:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umich.edu; s=google-2016-06-03; t=1708209471; x=1708814271; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Si25AaPYYhYTOkmgXRWHuRBAH3Xq06xq/4sUPyQ+50s=;
        b=J6HTW+/JmcLFLuJmyRBL9r5bGAE/MIm7KYSLphuW1K954jnoJ3JR5fhzDlkP+hIycV
         fF1suAPID85QehYK74xOdsWw58I0QMsJLTPnNTO3dM0q9OBD3irwcBXP5Pq+jxPpkMI/
         afIKgVbwbOvD4fptTmKm6nu6zGxxqUc+xgSpJBRzmzvS6ZwnPguNragaJa59uCFejQ+I
         uiLR5yr+TYtGDdrk5qNx0cihf8WBpDLQ2b9ZSeI9uT+QGslMW2gYyvyrSSGxujyw8ziQ
         N0tZcL+OvGMm4fKb9+U4jrBz592bq2iRkgICTm9zobnAlm3dY4ci4A6d9Xmvyp6W3jKW
         jCWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708209471; x=1708814271;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Si25AaPYYhYTOkmgXRWHuRBAH3Xq06xq/4sUPyQ+50s=;
        b=PLJYlhm/Bl6nQFFKmSbtBS9QbcO0k8rJnilBPnxhhhEaTSivecDdGAG1t4VfAMBuuo
         1JMFAzfF3mpBuUeh0XjaXLpVPBpjLYaNw46ajR/vjhzGVQn9mmNTwyoee8WGco9R13u+
         PEYt+YTP3ZPGLoH75A7ykv2oo3eh+NpwbP+qfczvMuGqEa/VbqpCSDIA3DF0XRDGn/2T
         KzQ3N9V33MK5P8LRLCeXZp8gocl58BLXoRHm7VSNVUuitQwfov5/xIu/xzeIgpezzvs3
         24OWYiJoDGAlO3rCLCjLwz9of+c1N8oUZ6MWCa7lnBqy+e+uxOY75lynb9HGOK+w82F+
         q/uw==
X-Forwarded-Encrypted: i=1; AJvYcCUMgRI0ljf3nJNcEHjEBtxsXIjtQeH6wxFCoKZk2J5UxgvOHqoRcssdRnqC/8h5xFIX8os6KHOfC4Iori67AUiwY1dH3SaIjK4p3ngaB+rNkYJQ
X-Gm-Message-State: AOJu0YzvI9C8QmyhsDaiOL4w6DXCGj84j3v4KewsZyk3i65tdj1+WsWv
	K3iS0T86PLTeunSemnkpQdnGhjyd4bwSqj1TrKzSnGGWH5al8Q48olNg1ezEPV3zptGUVmmSp4r
	sYYJ5G+VU2eQ2b11YUVh0GjThunrYX74DwL8EIA==
X-Google-Smtp-Source: AGHT+IETMFjsYK3d6///nf/q6zU3UY5udQD41mjum77p14dyrbBbJatI8RG3wLWwYuGYzjxvZjlhJjf+lR1NXXadsAE=
X-Received: by 2002:a25:a027:0:b0:dcd:2f2d:7a05 with SMTP id
 x36-20020a25a027000000b00dcd2f2d7a05mr8428908ybh.35.1708209470967; Sat, 17
 Feb 2024 14:37:50 -0800 (PST)
MIME-Version: 1.0
References: <20240217194116.8565-1-ansuelsmth@gmail.com>
In-Reply-To: <20240217194116.8565-1-ansuelsmth@gmail.com>
From: Trevor Gross <tmgross@umich.edu>
Date: Sat, 17 Feb 2024 17:37:39 -0500
Message-ID: <CALNs47szQu9RB8stBkdn+q3ejKrQgUFCDzhS8Wzy+WENeL=xAw@mail.gmail.com>
Subject: Re: [net-next RFC PATCH 0/3] net: phy: detach PHY driver OPs from
 phy_driver struct
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Michael Hennerich <michael.hennerich@analog.com>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, Richard Cochran <richardcochran@gmail.com>, 
	=?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>, 
	Daniel Golle <daniel@makrotopia.org>, Qingfang Deng <dqfext@gmail.com>, 
	SkyLake Huang <SkyLake.Huang@mediatek.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Arun Ramadoss <arun.ramadoss@microchip.com>, UNGLinuxDriver@microchip.com, 
	Peter Geis <pgwipeout@gmail.com>, Frank <Frank.Sae@motor-comm.com>, 
	Xu Liang <lxu@maxlinear.com>, Piergiorgio Beruto <piergiorgio.beruto@gmail.com>, 
	Andrei Botila <andrei.botila@oss.nxp.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Michal Simek <michal.simek@amd.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@samsung.com>, 
	Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Robert Marko <robimarko@gmail.com>, "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>, 
	Vladimir Oltean <vladimir.oltean@nxp.com>, 
	David Epping <david.epping@missinglinkelectronics.com>, 
	Harini Katakam <harini.katakam@amd.com>, Simon Horman <horms@kernel.org>, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, rust-for-linux@vger.kernel.org, 
	linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_143755_197470_C5005BD5 
X-CRM114-Status: GOOD (  12.57  )
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

T24gU2F0LCBGZWIgMTcsIDIwMjQgYXQgMjo0MeKAr1BNIENocmlzdGlhbiBNYXJhbmdpIDxhbnN1
ZWxzbXRoQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBJIHRvb2sgY2FyZSB0byBjb21waWxlLXRlc3Qg
YWxsIHRoZSBQSFksIG9ubHkgZXhjZXB0aW9uIGlzIHRoZSB1bmlxdWUKPiBSVVNUIGRyaXZlciwg
d2hlcmUgSSBzdGlsbCBoYXZlIHRvIGxlYXJuIHRoYXQgZnVubnkgbGFuZ3VhZ2UgYW5kCj4gSSBk
aWRuJ3QgaGFkIHRpbWUgdG8gdXBkYXRlIGl0LCBzbyB0aGF0IGlzIHRoZSBvbmx5IGRyaXZlciB0
aGF0Cj4gSSB0aGluayByZXF1aXJlIHNvbWUgZml4dXAuCgpUaGlzIHdpbGwgb25seSBuZWVkIGFu
IHVwZGF0ZSBpbiB0aGUgYWJzdHJhY3Rpb24gYXQKcnVzdC9rZXJuZWwvbmV0L3BoeS5ycywgcm91
Z2hseSAodW50ZXN0ZWQpCgpAQCAtNSwxNSArNSwyMiBAQCBwdWIgY29uc3QgZm4gY3JlYXRlX3Bo
eV9kcml2ZXI8VDogRHJpdmVyPigpIC0+IERyaXZlclYKICAgICAgICAgZmxhZ3M6IFQ6OkZMQUdT
LAogICAgICAgICBwaHlfaWQ6IFQ6OlBIWV9ERVZJQ0VfSUQuaWQsCiAgICAgICAgIHBoeV9pZF9t
YXNrOiBUOjpQSFlfREVWSUNFX0lELm1hc2tfYXNfaW50KCksCi0gICAgICAgIHNvZnRfcmVzZXQ6
IGlmIFQ6OkhBU19TT0ZUX1JFU0VUIHsKLSAgICAgICAgICAgIFNvbWUoQWRhcHRlcjo6PFQ+Ojpz
b2Z0X3Jlc2V0X2NhbGxiYWNrKQotICAgICAgICB9IGVsc2UgewotICAgICAgICAgICAgTm9uZQor
ICAgICAgICBwaHlfZHJpdmVyX29wczogJmJpbmRpbmdzOjpwaHlfZHJpdmVyX29wcyB7CisgICAg
ICAgICAgICBzb2Z0X3Jlc2V0OiBpZiBUOjpIQVNfU09GVF9SRVNFVCB7CisgICAgICAgICAgICAg
ICAgU29tZShBZGFwdGVyOjo8VD46OnNvZnRfcmVzZXRfY2FsbGJhY2spCisgICAgICAgICAgICB9
IGVsc2UgeworICAgICAgICAgICAgICAgIE5vbmUKKyAgICAgICAgICAgIH0sCisgICAgICAgICAg
ICBnZXRfZmVhdHVyZXM6IGlmIFQ6OkhBU19HRVRfRkVBVFVSRVMgeworICAgICAgICAgICAgICAg
IFNvbWUoQWRhcHRlcjo6PFQ+OjpnZXRfZmVhdHVyZXNfY2FsbGJhY2spCisgICAgICAgICAgICB9
IGVsc2UgeworICAgICAgICAgICAgICAgIE5vbmUKKyAgICAgICAgICAgIH0sCisgICAgICAgICAg
ICAvLyAuLi4gT3RoZXIgZmllbGRzIG5vdyBpbiBwaHlfZHJpdmVyX29wcworCisgICAgICAgICAg
ICAvLyBTQUZFVFk6IFRoZSByZXN0IGlzIHplcm9lZCBvdXQgdG8gZmluYWxpemUgYHN0cnVjdApw
aHlfZHJpdmVyX29wc2AsCisgICAgICAgICAgICAvLyB3aGljaCBleHBlY3RzIG51bGwgZnVuY3Rp
b24gcG9pbnRlcnMgZm9yIHVudXNlZCBmaWVsZHMKKyAgICAgICAgICAgIC4udW5zYWZlIHsKY29y
ZTo6bWVtOjpNYXliZVVuaW5pdDo6PGJpbmRpbmdzOjpwaHlfZHJpdmVyX29wcz46Onplcm9lZCgp
LmFzc3VtZV9pbml0KCkKfQogICAgICAgICB9LAotICAgICAgICBnZXRfZmVhdHVyZXM6IGlmIFQ6
OkhBU19HRVRfRkVBVFVSRVMgewotICAgICAgICAgICAgU29tZShBZGFwdGVyOjo8VD46OmdldF9m
ZWF0dXJlc19jYWxsYmFjaykKLSAgICAgICAgfSBlbHNlIHsKLSAgICAgICAgICAgIE5vbmUKLSAg
ICAgICAgfSwKICAgICB9KSkKIH0KCldlIGNhbiBzZW5kIGEgcGF0Y2ggaWYgbmVlZGVkIG9uY2Ug
dGhpcyBzZXJpZXMgbW92ZXMgb3V0IG9mIFJGQy4KCi0gVHJldm9yCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
