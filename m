Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DDCEC02183
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 13:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XWl0MIFcmucdND2txwIT906rc+hKq2wXZkxVCCnPVoI=; b=3rgrf2znGaUS/6
	c4jnfln+j99shwrc5f34DR2SYW1OvQzPWfZB9HlOQHhHUNUWCiHnk1PH0jgsf05hNhcPrwTFgVxAZ
	K1Jx93hKpg+Oz+XfeduCBNDReGToTqx4a5KbO0qG7MOAlmfBn/Kwsk6RHVXBfZWiP7NwuMV0qOOMu
	re0AVSkbXNmhCrbdf9gaigw2WQJHgdUwuT0Wx1D+mlIkG1vyHAF8EiV4/TPLHzKPLVrzAzkyJed64
	H6Cay9CV2Uu3zQoIyWANb92yVENst7bwQhysU+8zwGYAFInnrnRv0a+t3ESnVjLv83SHX+B67STxN
	2Ll3XBlJ4RIbDbqJ+xeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY3P1-0000000Bxzf-1iuJ;
	Wed, 15 Jan 2025 13:25:47 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY3Oy-0000000Bxxh-2qMF;
	Wed, 15 Jan 2025 13:25:45 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5d3e6274015so11438374a12.0;
        Wed, 15 Jan 2025 05:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736947543; x=1737552343; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/J7daUrtsODw4NkaaLjzd/s3pUHtf3ua4xDuRfkTRUk=;
        b=aheT84zC9reT9LODZYJU9eQYcIJAEPZSSrXC4smEVPJQWm6itWIi/dQdQrf20J4w1o
         cMa1Hdcc2vdQa4qSmsr1Nxkv3xgwSyE92ZUhfv1zbblK+wbWjbO8vv3XJnpr+ACHR7Bn
         FvDyaZKvwXOKbnug/XFaPCIhbRmzHal2VMVYN0p6uhz++3IU2typt/2zs3+ztsupCUjA
         y/V5SGZsIfDL2Kzdo0PdPFv0GBfEzQrLpIB0Kq/+ytsQAhwrimICrhL1dc/sBP25t/l2
         SB1t2df6v+43EyYO3iHs9P93m7yVw1oL6ONr8mqyUmg5WRczRlUinKggi+bPMzyUEiwd
         lviw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736947543; x=1737552343;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/J7daUrtsODw4NkaaLjzd/s3pUHtf3ua4xDuRfkTRUk=;
        b=VuDpVonDULlSHpkmvcKG1E/GPi5jHyHdg6tm549ntZkTxPvTBzSvQPKxnG42+XECtj
         Mb0YYwOtFEX9rS0eliYuhGsJqksERYQJihP1dBwrpF6uAb6o6kRVmacDR0f/L7cz0USf
         47QJMhZHxorynwyi7K8tx/C9J3bKP4ao13NBpa6bdxIgzyelqQehZPRMWzpOXpVNW7XT
         yqcRFk+Bz7JfDdNloBzOuY58hzQf+pGvzD/eL/lLMydn5Dhcvf27Z5Xj0HpS2TldLRCi
         y2EtODJsw5WIXE2WWRjo2ojq2OVKHjXkzU4vs/sFV2AGPxu/Pcfh3nv+NyW5GV2pCIkO
         fAFA==
X-Forwarded-Encrypted: i=1; AJvYcCUEubpMRwX1kM4dz08NGpDGF0jUI+v9vYKoibSWl5+JvniObRkB+Ukrm9Gc642vLdCCLNxBqFhcIDukLcnmyob0@lists.infradead.org, AJvYcCUUCy5NM8Xa8idx9U1ZgGYXrGIlvtzMVKZnj5ow4GXicj8+nqPNXqm49YqAddSeAblfsUod0wc22myAnqCp6JY=@lists.infradead.org, AJvYcCXKTKgtIVKbHgg9cN5EevxFyBEHFaJeoVdpBeOHi15DYVEWmr9Gr6epU5NI/MuVHHh10QO+t7kg2K1J@lists.infradead.org
X-Gm-Message-State: AOJu0YyM5a1Q3R7hVW4HrbEmgTZ9v7PRd72nbcREpAU1IMBhlgpi7RkB
	w7sCSN5/QmRGkxBaPrMuCIH7+78Afu6il/ErAv9LWfLemtecxCS2
X-Gm-Gg: ASbGncuva0RBxKtEHl3lj8LLbJE08LFC7Fm2pCD7eRESw4+Cd73ZY58a8xiI5ClsIJb
	vut2bzOexybaK9MgZdCkbv3F+zb9VIG4eWC0hK328+9e5OXcN7xei9p/NIuEWqnpVmftdDZzYrf
	mHWL/YpGmGOt6MeQPrPaTDWFozdXOu0/AVQe9ZXc/p5655zpLcXEpp5YxfyEeyBLWWt9tZN4Yzu
	7H1FehtMjULqjheNziACvDmvSiKJeAO339u7O8jJLPjSjVXfBhEf4REQLUVuh/wg/2Dd95K+dI6
	EJtoqQZIGiqomcwMYpShfxR2kd6TU8AE1QPlkQ==
X-Google-Smtp-Source: AGHT+IEJFePPg9NnmpiIivTBGg+UDQYzhd1hyTCg3WlD4AaxxxCknAyEcJXeSZ7Quwxou31mkxCDNw==
X-Received: by 2002:a05:6402:278a:b0:5cf:ab23:1f07 with SMTP id 4fb4d7f45d1cf-5d972e1ad09mr24730872a12.15.1736947542796;
        Wed, 15 Jan 2025 05:25:42 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d99008c496sm7498120a12.16.2025.01.15.05.25.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2025 05:25:41 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.300.87.4.3\))
Subject: Re: [RFC PATCH v1 0/6] rockchip: add a functional usb3 phy driver for
 rk3328
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYrxX=RsSZja-3+zLZUSpyLoRz8Zm0w0hTfL3RQ9cjqgOw@mail.gmail.com>
Date: Wed, 15 Jan 2025 14:25:26 +0100
Cc: Heiko Stuebner <heiko@sntech.de>,
 Algea Cao <algea.cao@rock-chips.com>,
 Michael Turquette <mturquette@baylibre.com>,
 kever.yang@rock-chips.com,
 linux-phy@lists.infradead.org,
 wulf@rock-chips.com,
 zyw@rock-chips.com,
 Dragan Simic <dsimic@manjaro.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-clk@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Arnd Bergmann <arnd@arndb.de>,
 Jonas Karlman <jonas@kwiboo.se>,
 frank.wang@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Alex Bee <knaerzche@gmail.com>,
 william.wu@rock-chips.com,
 Zhang Yubing <yubing.zhang@rock-chips.com>,
 Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Trevor Woerner <twoerner@gmail.com>,
 Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>,
 FUKAUMI Naoki <naoki@radxa.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Message-Id: <3536B507-8658-4377-A1AC-2C5D9093BDEB@gmail.com>
References: <20250115012628.1035928-1-pgwipeout@gmail.com>
 <2EEA8028-8E4A-4588-A480-E5FF0F7BE82E@gmail.com>
 <CAMdYzYo2W1hLgiH697AdRSUbhBU4rU2uB=N6EMWMD2-0R+VLBA@mail.gmail.com>
 <B1C9DA16-F285-4AD0-AE4E-AF1A5CA20932@gmail.com>
 <CAMdYzYrxX=RsSZja-3+zLZUSpyLoRz8Zm0w0hTfL3RQ9cjqgOw@mail.gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3826.300.87.4.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_052544_717735_9A142243 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFp
bC5jb20+IHcgZG5pdSAxNSBzdHkgMjAyNSwgbyBnb2R6LiAxNDoxNToKPiAKPj4gCj4+IAo+PiBw
bHMgZmluZDoKPj4gCj4+IGR0c2k6IGh0dHBzOi8vZ2lzdC5naXRodWIuY29tL3dhcnBtZS82YWY5
ZTI3NzhmYjA2YmZiNDdiNjRmOThmZTc5ZDY3OAo+PiBhbmQgZHQ6IGh0dHBzOi8vZ2lzdC5naXRo
dWIuY29tL3dhcnBtZS83OTM0MGM1NGM4N2IyYjFlNTJmMmExNDY0NjFkOGM5Zgo+PiAKPj4gCj4+
IGFuZCBjb21waWxlZCAuZHRiCj4gCj4gSXQgYWxsIGxvb2tzIGdvb2QuCj4gRG8geW91IGhhdmUg
YW55IENSVSBlcnJvcnMgaW4gdGhlIGJvb3QgbG9nPwo+IENhbiB5b3UgY2hlY2sgZm9yIHRoZSBw
cmVzZW5jZSBvZiBjbGtfcmVmX3VzYjNvdGcgaW4KPiAvc3lzL2tlcm5lbC9kZWJ1Zy9jbGsvY2xr
X3N1bW1hcnk/Cj4gCj4+IAoKY3J1IGVycm9ycyBpbiBkbWVzZyAtIHNlZW1zIG5vIGFueS4KaGVy
ZSBpcyBteSBkbWVzZzogaHR0cHM6Ly9naXN0LmdpdGh1Yi5jb20vd2FycG1lL2VjZjM4NDgyY2M4
OGZiNjg0NzEzNTVkMDExZWNmOTc0CgpGb3IgY2xrX3JlZl91c2Izb3RnIGnigJltIGdldHRpbmcg
Zm9sbG93aW5nOgoKcm9vdEBteXRoLWZyb250ZW5kLWU2N2E4ZGU0YzgxNTp+ICMgY2F0IC9zeXMv
a2VybmVsL2RlYnVnL2Nsay9jbGtfc3VtbWFyeSB8IGdyZXAgdXNiMwogICAgY2xrX3VzYjNvdGdf
c3VzcGVuZCAgICAgICAgICAgICAgMCAgICAgICAwICAgICAgICAwICAgICAgICAzMDc3MCAgICAg
ICAwICAgICAgICAgIDAgICAgIDUwMDAwICAgICAgTiAgICAgIGRldmljZWxlc3MgICAgICAgICAg
ICAgICAgICAgICAgbm9fY29ubmVjdGlvbl9pZAogICAgY2xrX3VzYjNvdGdfcmVmICAgICAgICAg
ICAgICAgICAgMCAgICAgICAwICAgICAgICAwICAgICAgICAyNDAwMDAwMCAgICAwICAgICAgICAg
IDAgICAgIDUwMDAwICAgICAgTiAgICAgIGRldmljZWxlc3MgICAgICAgICAgICAgICAgICAgICAg
bm9fY29ubmVjdGlvbl9pZAogICAgY2xrX3JlZl91c2Izb3RnICAgICAgICAgICAgICAgICAgMCAg
ICAgICAwICAgICAgICAwICAgICAgICAyNDAwMDAwMCAgICAwICAgICAgICAgIDAgICAgIDUwMDAw
ICAgICAgWSAgICAgIGRldmljZWxlc3MgICAgICAgICAgICAgICAgICAgICAgbm9fY29ubmVjdGlv
bl9pZAogICAgICAgICAgICAgICAgICAgcGNsa191c2IzX2dyZiAgICAgMCAgICAgICAwICAgICAg
ICAwICAgICAgICA3NTAwMDAwMCAgICAwICAgICAgICAgIDAgICAgIDUwMDAwICAgICAgWSAgICAg
ICAgICAgICAgICAgICAgIGRldmljZWxlc3MgICAgICAgICAgICAgICAgICAgICAgbm9fY29ubmVj
dGlvbl9pZAogICAgICAgICAgICAgICAgICAgcGNsa191c2IzcGh5X3BpcGUgMCAgICAgICAwICAg
ICAgICAwICAgICAgICA3NTAwMDAwMCAgICAwICAgICAgICAgIDAgICAgIDUwMDAwICAgICAgTiAg
ICAgICAgICAgICAgICAgICAgIGRldmljZWxlc3MgICAgICAgICAgICAgICAgICAgICAgbm9fY29u
bmVjdGlvbl9pZAogICAgICAgICAgICAgICAgICAgcGNsa191c2IzcGh5X290ZyAgMCAgICAgICAw
ICAgICAgICAwICAgICAgICA3NTAwMDAwMCAgICAwICAgICAgICAgIDAgICAgIDUwMDAwICAgICAg
TiAgICAgICAgICAgICAgICAgICAgIGRldmljZWxlc3MgICAgICAgICAgICAgICAgICAgICAgbm9f
Y29ubmVjdGlvbl9pZAogICAgICAgICAgY2xrX3JlZl91c2Izb3RnX3NyYyAgICAgICAgMCAgICAg
ICAwICAgICAgICAwICAgICAgICAzNzUwMDAwMCAgICAwICAgICAgICAgIDAgICAgIDUwMDAwICAg
ICAgTiAgICAgICAgICAgIGRldmljZWxlc3MgICAgICAgICAgICAgICAgICAgICAgbm9fY29ubmVj
dGlvbl9pZAogICAgICAgICAgICAgICAgICAgYWNsa191c2Izb3RnICAgICAgMCAgICAgICAwICAg
ICAgICAwICAgICAgICAxNTAwMDAwMDAgICAwICAgICAgICAgIDAgICAgIDUwMDAwICAgICAgTiAg
ICAgICAgICAgICAgICAgICAgIGRldmljZWxlc3MgICAgICAgICAgICAgICAgICAgICAgbm9fY29u
bmVjdGlvbl9pZAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
