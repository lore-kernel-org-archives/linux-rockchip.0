Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C01C6C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Feb 2022 08:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wj7RgvWnQtERuq0ePxYcsJGYY8rf4wfbpXiROUP58pA=; b=jpeY3NMOMKB4KY
	k/gv/vLqpxS6xo0BPmPrbMlerh+HzSj2aD3ZGIWLHNVPckJQwuS4NWyc1frIYbPj3xUJLSG4JHZTX
	H+zMsXtiwEXKEkfG3KfnQnv1f4e1J11teHj9IbR3JFJueW1w7DUJzyyTV2K4rpHYhVr4Omevr4crl
	Ky4AJQAwUgLnCQWT9UrsWPJngmE5ZcRpdkaZ4NlV7vhFUgGIAxCILwvctEvM9wW0HjqePqDkNdk1W
	2tH1IbLqZ9X92Fhc4i49FD6MvijkMS+ss4W3v8pflxnUhvc5NhOeof15BMqV21L+097BKmNcZOxFN
	1cW1zNQdfl7sHJvrOnbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJsna-001TST-1n; Tue, 15 Feb 2022 08:02:58 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJsnH-001TEf-EA
 for linux-rockchip@lists.infradead.org; Tue, 15 Feb 2022 08:02:41 +0000
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4102F3F1E8
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Feb 2022 08:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644912158;
 bh=p0wXUzG9Qlg9XGpXItbSdQyLJQ63vtplPmOBRka8DjY=;
 h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
 In-Reply-To:Content-Type;
 b=IMuIqECOJ8bVv8QN0QGQ+rv0qh2iVzDqfql9bIV+cT5I2aTLb6+8D3lXwREmgaTAa
 nqK9bN8/iL779Qx16RFUw2mOQhMoqGYOkjEUqNY7bdiYWihUljGc9q+RMwnP4TVi6J
 m0LqYsY29rKfklrQTwCzzC0nBP52fQefSIPGYS/IyVZaZ/iAKbGOMJQ0PIBY9xhQDO
 poEFRaMyzfJKkkdm8lUONPaz9BPrxTozP/bkYc1eT8pHDZqg79H2zL+B2+u0W5+tsp
 LnksGbFlBrR9zgX8a13UVq1LJyMLpP3LKTkUBssDp8q5w9Nz9Fmo+EXBcL6wafF3Ea
 JpBB2f/hW5eDA==
Received: by mail-lj1-f197.google.com with SMTP id
 a6-20020a05651c210600b00244bd884dbfso2235396ljq.12
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Feb 2022 00:02:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:from:to:cc:references:in-reply-to
 :content-transfer-encoding;
 bh=p0wXUzG9Qlg9XGpXItbSdQyLJQ63vtplPmOBRka8DjY=;
 b=ld3ZDaORIt+cXP3XrcQ/Wrh7PUbvDhHTbniCmTPUP+vZ3YLEv2uL4YWZZb38LA+Wad
 ZrPr/mZmV96d3ClxEl5j/FzwaHI5HQBsuRuRPP5dN9xa9bT+V5o6Ox0adj/LxDLIvNgr
 NRk0fggrVSI0pcL+V6E1F2Qw9ZrQBf1k69MSKhOHzGdAh2OmRjWf3/qP/0BNA95UpPUE
 AYsQF6XFm64e4eoUz0y3MuMoV9o5mNWQxLwxZoaROdtxkhw/E1bGSguAWagKcZKOdm27
 kldalqFj6KrC8rwvjDQsjZsMxVgeiwTXLyS5nfigdVhQrBFaN5yU7XihD3uOjsFziVkd
 lzJA==
X-Gm-Message-State: AOAM531u2AI6JsVGAdQ/A4NDVYtXHU85Rwp+sy5ZaJwsgZO9u5DtK1V7
 Nmt5TcKzYTiOM+JgBoVyJ3asHzw5JHQRFFXnu/mL5O/fVNFsKsIflvGs6MMFqQ6qxVShQTJv77e
 pn69U6Fyjn7bEZV2ZNTzPDCVKK1ux2s/o0fAg5JDKJyQEG2ZSIg==
X-Received: by 2002:a05:6402:424f:: with SMTP id
 g15mr2757500edb.158.1644912147131; 
 Tue, 15 Feb 2022 00:02:27 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyJL82lo1kjPeRqjS+9jNzssv8tXjpHeHazeL4p0HZJxneIppz7pU1JsXMs2O9NT8eS3yVbFg==
X-Received: by 2002:a05:6402:424f:: with SMTP id
 g15mr2757450edb.158.1644912146878; 
 Tue, 15 Feb 2022 00:02:26 -0800 (PST)
Received: from [192.168.0.106] (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id jz17sm11534425ejb.195.2022.02.15.00.02.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Feb 2022 00:02:26 -0800 (PST)
Message-ID: <7df71f8d-cdc3-4b2e-cf0a-7112eff28142@canonical.com>
Date: Tue, 15 Feb 2022 09:02:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 00/15] pwm: dt-bindings: Include generic pwm schema
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Thierry Reding <thierry.reding@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
 Rahul Tanwar <rtanwar@maxlinear.com>, Jeff LaBundy <jeff@labundy.com>,
 Sagar Kadam <sagar.kadam@sifive.com>, Vignesh R <vigneshr@ti.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-riscv@lists.infradead.org
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
 <20220215074030.3nugwproxjh3lwhl@pengutronix.de>
 <CA+Eumj42Hojp1m4deuWnqMOaaNaupTSkzPaNbL_0eyBL-aDi_g@mail.gmail.com>
In-Reply-To: <CA+Eumj42Hojp1m4deuWnqMOaaNaupTSkzPaNbL_0eyBL-aDi_g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_000239_627387_FE374C96 
X-CRM114-Status: GOOD (  20.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gMTUvMDIvMjAyMiAwODo1OSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiBUdWUs
IDE1IEZlYiAyMDIyIGF0IDA4OjQwLCBVd2UgS2xlaW5lLUvDtm5pZwo+IDx1LmtsZWluZS1rb2Vu
aWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+Pgo+PiBIZWxsbywKPj4KPj4gW2Ryb3BwZWQgQW5z
b24gSHVhbmcgYW5kIFlhc2ggU2hhaCBmcm9tIENjOiB3aGljaCB3ZXJlIG5vdCByZWFjaGFibGUg
Zm9yCj4+IG15IGxhc3QgbWFpbF0KPj4KPj4gT24gTW9uLCBGZWIgMTQsIDIwMjIgYXQgMTA6MjE6
MzlQTSArMDEwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+IEhpLAo+Pj4KPj4+IENo
YW5nZXMgc2luY2UgdjE6Cj4+PiAxLiBBZGQgdGFncy4KPj4+IDIuIEFkanVzdCBzdWJqZWN0IChV
d2UpLgo+Pgo+PiBIb3dldmVyIHlvdSBvbmx5IHRvb2sgYSBwYXJ0IG9mIG15IHN1Z2dlc3Rpb24g
Li4uCj4+Cj4+PiBLcnp5c3p0b2YgS296bG93c2tpICgxNSk6Cj4+PiAgIGR0LWJpbmRpbmdzOiBw
d206IGFsbHdpbm5lcixzdW40aS1hMTA6IEluY2x1ZGUgZ2VuZXJpYyBwd20gc2NoZW1hCj4+PiAg
IGR0LWJpbmRpbmdzOiBwd206IGlteDogSW5jbHVkZSBnZW5lcmljIHB3bSBzY2hlbWEKPj4+ICAg
ZHQtYmluZGluZ3M6IHB3bTogaW50ZWwsbGdtOiBJbmNsdWRlIGdlbmVyaWMgcHdtIHNjaGVtYQo+
Pj4gICBkdC1iaW5kaW5nczogcHdtOiBpcXM2MjBhOiBJbmNsdWRlIGdlbmVyaWMgcHdtIHNjaGVt
YQo+Pj4gICBkdC1iaW5kaW5nczogcHdtOiBteHM6IEluY2x1ZGUgZ2VuZXJpYyBwd20gc2NoZW1h
Cj4+PiAgIGR0LWJpbmRpbmdzOiBwd206IHJvY2tjaGlwOiBJbmNsdWRlIGdlbmVyaWMgcHdtIHNj
aGVtYQo+Pj4gICBkdC1iaW5kaW5nczogcHdtOiBzaWZpdmU6IEluY2x1ZGUgZ2VuZXJpYyBwd20g
c2NoZW1hCj4+PiAgIGR0LWJpbmRpbmdzOiBwd206IHJlbmVzYXMscHdtOiBJbmNsdWRlIGdlbmVy
aWMgcHdtIHNjaGVtYQo+Pj4gICBkdC1iaW5kaW5nczogcHdtOiB0b3NoaWJhLHZpc2NvbnRpOiBJ
bmNsdWRlIGdlbmVyaWMgcHdtIHNjaGVtYQo+Pj4gICBkdC1iaW5kaW5nczogcHdtOiBicmNtLGJj
bTcwMzg6IERvIG5vdCByZXF1aXJlIHB3bS1jZWxscyB0d2ljZQo+Pj4gICBkdC1iaW5kaW5nczog
cHdtOiBpbnRlbCxrZWVtYmF5OiBEbyBub3QgcmVxdWlyZSBwd20tY2VsbHMgdHdpY2UKPj4KPj4g
Li4uIFRoZSBhY3R1YWwgcGF0Y2ggaGFzIGEgc3BhY2UgYWZ0ZXIgdGhlIGNvbW1hLCBJIGxpa2Ug
dGhpcyB2YXJpYW50Cj4+IHdpdGhvdXQgY29tbWEgYmV0dGVyIGFzIHRoaXMgaXMgYSBjb21wYXRp
YmxlIHN0cmluZy4KPiAKPiBJIGFtIGNvbmZ1c2VkLiBNeSBwYXRjaCBkb2VzIG5vdCBoYXZlIGNv
bW1hIGFmdGVyIHNwYWNlLiBZb3VyIHJlcGx5Cj4gaGFkIHN1Y2ggaW4gdGhlIHN1YmplY3QsIGJ1
dCBub3QgaW4gdGhlIHByb3Bvc2VkIG5ldyBzdWJqZWN0IHlvdSB3cm90ZQo+IGluIG1zZywgc28g
SSBsZWZ0IGl0IGFzIGlzLiBXaXRob3V0IGNvbW1hLiBJZiB5b3Ugc3RpbGwgc2VlIGNvbW1hLCBp
dAo+IGlzIHNvbWV0aGluZyB3aXRoIHlvdXIgbWFpbCBjbGllbnQuCj4gCj4gU2VlOgo+IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWRldmljZXRyZWUvMjAyMjAyMTQyMTIxNTQuODg1My0x
Mi1rcnp5c3p0b2Yua296bG93c2tpQGNhbm9uaWNhbC5jb20vVC8jdQo+IAo+IEFsc28gcmVwbHkg
ZnJvbSBWaWpheWFrYW5uYW4gZG9lcyBub3QgaGF2ZSBjb21tYToKPiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9saW51eC1kZXZpY2V0cmVlLzIwMjIwMjE0MDgxNjA1LjE2MTM5NC0xMS1rcnp5c3p0
b2Yua296bG93c2tpQGNhbm9uaWNhbC5jb20vVC8jbTgwYWY2OTVmMmM3NTEzNDFiYzk3MTExNGFl
ZmEwMGNjYzkyOWEzZWMKPiAKPj4gQWxzbyBhICMgYmVmb3JlCj4+IHB3bS1jZWxscyB3b3VsZCBi
ZSBuaWNlLgo+IAo+IEkgY2FuIGFkZCB0aGlzLgoKSnVzdCBvbmUgbW9yZSBjbGFyaWZpY2F0aW9u
IC0geW91IHByb3Bvc2VkIGFsc28gdG8gcmVtb3ZlICJwd206IgptaWRkbGUtcHJlZml4LiBTaGFs
bCBJIHJlbW92ZSBpdCBmcm9tIGV2ZXJ5IHBhdGNoIGFuZCB1c2UgaW5zdGVhZCBmdWxsCmZpbGUg
bmFtZT8KCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
