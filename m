Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCD30C36010
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Apr 2025 18:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+qZdiuTx91BpLmNPdjAwkpQprHSZMSrg4qGLbUqOMC0=; b=X+lTO3gUj2jzhh
	k3lCbGOCmM6bU7kik+hxmfaMvwyS97xFj10ODBJOd7pjQE1PiINfi0b4ZMPSt2V1yWWfmeRb18pLl
	O2t5obp09JRiQIKR1UbYBai9hZ6cIAud6eZ/So/yhesfjwJh3XiIHY4MdLtWenhKVe2kaWhefDO9J
	lBY4orwlPTVdm7VQCuoe3LKjY9Tk8gWTUNxJgYq84YkMw+2fwL8RPtpBFM/olB9iGhWJKSn3eLA6K
	dkTYWpl0tBnb+IDFzZQdWwO20bT1xVhqOG7PYw0f8yusQcLr02+5qd/IUgOOGepmKvaEmEV/3Jm5C
	RFxs9g5RquutremchPZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1rYf-00000001dPS-3OC4;
	Mon, 07 Apr 2025 18:50:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1pgV-00000001HG2-2Lx1;
	Mon, 07 Apr 2025 16:50:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=6OrvsvEYA+XXB2xdTLTpIAwjv43X6JKiVZsB2NNpFGM=; b=SdsvFv6JTyqowC2RqDU4pOeOJL
	/bZnRo43dmp+OU5D6lYdtC/AVXB8au06J684P2SiV5rQFB9ikUFzx/6WWZsXbbtTx0sRtKySuf5SU
	kVwBa+zg7ZFU5iTpkMZOk5ymsDjjD4zjHaZIgCDtOOLlTfnylftNNU38y6n1Jn68m9KEHVBWBRi8i
	Z4WnxHwKPNSt0S3/2eakTVvBut3G8zr88vYidRgMqd0d4AredKAKD3ObMQIC1I33bjfbk1Fn8t061
	3Ij7QltmzYxHXac3ctDbDqFaOGaEJAVIEb26kanSCOekz/SLhCdPhngDv5nexC3odpl7kxpnKSOEl
	N++4RJtA==;
Received: from sea.source.kernel.org ([172.234.252.31])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1pgS-000000084cJ-1aWz;
	Mon, 07 Apr 2025 16:50:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6655C49FA6;
	Mon,  7 Apr 2025 16:50:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAB5FC4AF10;
	Mon,  7 Apr 2025 16:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744044650;
	bh=9rKDfEvc7K+7LzU7nTcuoqeYfX0y7c5G08Njz5uF/Vo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Sp9MSWDJaaAqP1q2SYIWKIo2g5ROm+6P5tR7LFd8E50X8gK4zuhxBadi53VkyP+Ic
	 Mjsmlr7jxLIM1qBo59vxeEqPR6FZPe9YVLx4CPyU2A4DHmeFfsEwHB8BxVshIFEmeC
	 12MMo2b3egIrNo05eXUirOJt6tvZCoIHerm6NWQWppuvtrt7Sdv8HQefioWs1cgwOv
	 mkQpF5mP4YM/Mqvyo83b7cKwtpLn0eBZTzXGJBE6sjFWjRkVl9Js0s32ghUeE+0pJ2
	 vKcR/Tzpjum/ZIgOGGfWTmbdDSesqQEtB6FpedtzQIqOmygCuQe1BApOBiIe8k3tMk
	 ZEfSj8h17KEtg==
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5edc07c777eso5986597a12.3;
        Mon, 07 Apr 2025 09:50:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUL95JFS3q6Il1E1xYKws+l+u5pYtV7PW2mFx+hOTTkBVmXFxfQ7t+W0ytEGWlk21Iwh0+X5Umn9fMyXs5/@lists.infradead.org, AJvYcCW6aM7hPzWGI01jUr5PsI/wa0vrhMv9Rd6WUbbLcs8YFMsr7XiN+DgsZOgp0/n3WrZMJMpUISH1Ll4GOXmz2+ZJnw==@lists.infradead.org, AJvYcCWKR7e0NsXM1rhR76SlacnAOdVOPwwBCavz3lbnoKzgz88RMlIMeI5ao2PxEuophTzou8Di+cWV4/g/2Jd9siI=@lists.infradead.org, AJvYcCXPfmge4uHex2/N0jaRxHDa/vNtUnNZ8B0s1sxZ/cezS/du89lhEHHcDMc3i5QxTojMTYiS654l7PFl8uFWNb4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw28fLRSltbGjJpkMmEm8BZ038uC1snBgStlnbFLcpxWnt0E4C1
	Wq/aZVGa74d6N6rDovFuL9sEUdQKo4QU16PyMpzKpT6TK8ySSxNuQvgo3vwSj18etYIC93xZAZ3
	Q+D5G20mf/tUV7UavriKUPqTn6g==
X-Google-Smtp-Source: AGHT+IEYKsKGhFSJY/Ew6wLedApBd8mm5Tfxxs3oUxIJoVcHTWnGkb+RbDSqCHxLGxft/yGwgIdnVVemND8kyOfPXZI=
X-Received: by 2002:a05:6402:26ca:b0:5e7:c779:85db with SMTP id
 4fb4d7f45d1cf-5f0db7fc898mr8148611a12.4.1744044649254; Mon, 07 Apr 2025
 09:50:49 -0700 (PDT)
MIME-Version: 1.0
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <20250403-dt-cpu-schema-v1-18-076be7171a85@kernel.org> <CAPDyKFrFRrPVJ_t0JrAE1VTbS02hwr=L-EHtqb7CQiWzB1MnQg@mail.gmail.com>
 <CAL_JsqKygxhcQ=PZW84sfiW7BVXKF839vfNyxS9GwAXuqmN=8g@mail.gmail.com> <CAPDyKFoHQdHED0hHUR7VKin0XG6SVnYXuvPjB=Xe+1o2hpiPJA@mail.gmail.com>
In-Reply-To: <CAPDyKFoHQdHED0hHUR7VKin0XG6SVnYXuvPjB=Xe+1o2hpiPJA@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 7 Apr 2025 11:50:37 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+Oa7MvVO7Y-RG+qrY2e86B_q0XGq1LWoy5Mq+G72ZHzQ@mail.gmail.com>
X-Gm-Features: ATxdqUFxTokrKuT9iYBdxHBpsv0NfQo4Eim7mTXXSg7aEaclQFxJWUQS1crmjko
Message-ID: <CAL_Jsq+Oa7MvVO7Y-RG+qrY2e86B_q0XGq1LWoy5Mq+G72ZHzQ@mail.gmail.com>
Subject: Re: [PATCH 18/19] dt-bindings: arm/cpus: Add power-domains constraints
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	Sudeep Holla <sudeep.holla@arm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Viresh Kumar <vireshk@kernel.org>, 
	Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com, 
	Conor Dooley <conor@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Claudiu Beznea <claudiu.beznea@tuxon.dev>, Steen Hegelund <Steen.Hegelund@microchip.com>, 
	Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-mips@vger.kernel.org, 
	imx@lists.linux.dev, linux-rockchip@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_175052_836112_0F8BB617 
X-CRM114-Status: GOOD (  20.26  )
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

T24gTW9uLCBBcHIgNywgMjAyNSBhdCAxMToyM+KAr0FNIFVsZiBIYW5zc29uIDx1bGYuaGFuc3Nv
bkBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIEZyaSwgNCBBcHIgMjAyNSBhdCAxNTowOSwgUm9i
IEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPgo+ID4gT24gRnJpLCBBcHIgNCwg
MjAyNSBhdCA1OjM34oCvQU0gVWxmIEhhbnNzb24gPHVsZi5oYW5zc29uQGxpbmFyby5vcmc+IHdy
b3RlOgo+ID4gPgo+ID4gPiBPbiBGcmksIDQgQXByIDIwMjUgYXQgMDU6MDYsIFJvYiBIZXJyaW5n
IChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gVGhlICJwb3dl
ci1kb21haW5zIiBhbmQgInBvd2VyLWRvbWFpbnMtbmFtZXMiIHByb3BlcnRpZXMgYXJlIG1pc3Np
bmcgYW55Cj4gPiA+ID4gY29uc3RyYWludHMuIEFkZCB0aGUgY29uc3RyYWludHMgYW5kIGRyb3Ag
dGhlIGdlbmVyaWMgZGVzY3JpcHRpb25zLgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
Um9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4KPiA+ID4gPiAtLS0KPiA+ID4gPiAg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9jcHVzLnlhbWwgfCA4ICsrLS0t
LS0tCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25z
KC0pCj4gPiA+ID4KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9jcHVzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvYXJtL2NwdXMueWFtbAo+ID4gPiA+IGluZGV4IDZmNzRlYmZkMzhkZi4uNWJkNTgyMmRiOGFm
IDEwMDY0NAo+ID4gPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vY3B1cy55YW1sCj4gPiA+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2FybS9jcHVzLnlhbWwKPiA+ID4gPiBAQCAtMzEzLDE5ICszMTMsMTUgQEAgcHJvcGVydGll
czoKPiA+ID4gPiAgICAgIG1heEl0ZW1zOiAxCj4gPiA+ID4KPiA+ID4gPiAgICBwb3dlci1kb21h
aW5zOgo+ID4gPiA+IC0gICAgZGVzY3JpcHRpb246Cj4gPiA+ID4gLSAgICAgIExpc3Qgb2YgcGhh
bmRsZXMgYW5kIFBNIGRvbWFpbiBzcGVjaWZpZXJzLCBhcyBkZWZpbmVkIGJ5IGJpbmRpbmdzIG9m
IHRoZQo+ID4gPiA+IC0gICAgICBQTSBkb21haW4gcHJvdmlkZXIgKHNlZSBhbHNvIC4uL3Bvd2Vy
X2RvbWFpbi50eHQpLgo+ID4gPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ID4KPiA+ID4gVGhlcmUg
YXJlIG1vcmUgdGhhbiBvbmUgaW4gc29tZSBjYXNlcy4gVGhlIG1vc3QgaXMgcHJvYmFibHkgdGhy
ZWUsIEkgdGhpbmsuCj4gPgo+ID4gVW5sZXNzIEkgbWlzc2VkIGl0LCB0ZXN0aW5nIHNheXMgb3Ro
ZXJ3aXNlLiBXaGF0IHdvdWxkIHRoZSBuYW1lcyBiZSBpZgo+ID4gbW9yZSB0aGFuIDEgZW50cnk/
Cj4KPiAicHNjaSIsICJwZXJmIiwgImNwciIsIGV0Ywo+Cj4gVGhlICJwc2NpIiBpcyBhbHdheXMg
Zm9yIENQVSBwb3dlciBtYW5hZ2VtZW50LCB0aGUgb3RoZXIgaXMgZm9yIENQVQo+IHBlcmZvcm1h
bmNlIHNjYWxpbmcgKHdoaWNoIG1heSBiZSBtb3JlIHRoYW4gb25lIHBvd2VyLWRvbWFpbiBpbiBz
b21lCj4gY2FzZXMpLgo+Cj4gSSB3b3VsZCBzdWdnZXN0IGNoYW5naW5nIHRoaXMgdG8gIm1heEl0
ZW1zOiAzIi4gVGhhdCBzaG91bGQgYmUKPiBzdWZmaWNpZW50IEkgdGhpbmsuCgpBZ2FpbiwgbXkg
dGVzdGluZyBzYXlzIDEgaXMgZW5vdWdoLiBTbyB3aGVyZSBpcyBhIC5kdHMgZmlsZSB3aXRoIDMg
b3IgMj8KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
