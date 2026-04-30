Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 114EFCD13DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Apr 2026 23:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hRtKmn1sO/bRMFl6cC7Jwy1pUcCdDpHI44iPAqyNcaw=; b=2kBBkhtrLswVMk
	eQ8y/AYJxc6QamTDF24tpvm/K+1jthy822BQHcIAFSZixZoTG6MlZ1jzTh9QEmdsJklZdyvJNotRi
	4aUtm+PdFF6MHUb5A5r1XBXLF7HvfPLKK4tZzwbljMONJJQqEVw+CnDVxdYoxS10ObHHC3yriO8tr
	4GlkNd7VNrzN5gIroYMZ5NmGdtMRZq5HYpSm6LWnpnwSs/6IsWQwRqCdezsCbdzhHQMT1+HTHzXdL
	abSWp7EWiY+Fcdyv1T7odU7uU7clMU6GPWXHbBFOkyUIbUojI7bmaeu4H7BFOBbtwywbl6UrwwC6o
	w0iQ41QD3GhFHC3PJ2Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIbE5-000000068yO-31JV;
	Thu, 30 Apr 2026 23:55:25 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIbE2-000000068wr-3rwI
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Apr 2026 23:55:24 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-bbe539fc355so74374966b.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2026 16:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777593320; x=1778198120; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L/stw2Li+z9zBw8IsGsJQTT0j6lAz8JjDjcZka6O6Bc=;
        b=LBKKBsw22LcffcNJ3+zY+3b1i3saaO8xbPYDOv6IXgW46+5CPoOl0rpW+SAVcM2eSc
         zNUF9KrdyNFWg0Ao7X57LgUJsJ3MBBoAYRyz/5BzNQHq9CbyoJtNclsClhtiaJDC0IWh
         tLCZkUHnppzQkq2JwOxZg2t7PlCN4i0SExuso=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777593320; x=1778198120;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L/stw2Li+z9zBw8IsGsJQTT0j6lAz8JjDjcZka6O6Bc=;
        b=JA4ZI15C2ccV9uFLjje3a8VC991UCCt/y0njZcFswbpjS7SoIKVg1YInimmGZnj6jq
         yYrFn7QWwLlte643zmRWX6JcLt+KrUZReliDA8Cze5nIkkbVpnGxrCg3bIRxQ4ENod1G
         JfFWQ/rdcHwbT8RbqAWVmlluOS/Ezj75xW1S00r7DWSDvyCv5mO8BjqQxpvTieMJZdOr
         gzNLbu/wmw7Cb2DekDz5lKXJiY8444OUmi3Aqia8BgxNQIn1JIAiCedEU4wailIhvBdA
         Tw4VZOC/wqLZyhBRPS6NbxXN0tEmtJMw8LkrM6UxdjbBTXOhC0LWjU+zdYD+JMQoPEzf
         A1BA==
X-Forwarded-Encrypted: i=1; AFNElJ9H3FhT8LzyCfhCi+RL+3KfY+010IUI/U/kj7IBjjNGczyIuc7NQGW9dQQjnR0den3VMczWnyDpsTMlis2s5w==@lists.infradead.org
X-Gm-Message-State: AOJu0YygYSfyD7hD/1IC7189RKRO4AsiyyT20wX0o5ohqQADClq9IF6x
	t49hqVzDF2/B5lYjF9U3XNvKODMV23xgaVQBWQpiv16fVAnVtZ24GwjB/ihGjFY6CBpV8C6lHts
	/Hsws8g==
X-Gm-Gg: AeBDiet5PvX8Gi0rbQwuCyv3/uoThKyZ95Q9PQzSdtWW8mCZ6PHCbRk9UicDawSFyGd
	NEu2plp5Vx53jW2sDEkKNAvDzPLyacIHZ4HlOCeHLHg9faIVXenxRo9OFi/JT7p0h55hPu3TzFz
	0heoYzXS6hCdWetB+dJ2UQV7wcYxDTksRv70IR25Jp2ZnUGto45C5QRNprddIT4bbIu7Y21l2HY
	Zq/Gjq4gsDRBR/npjvfuycPwZ/9mW7gGI2/4we9JJvTRZoaioPk+WEb5tf/rqrvj+IYHdXRrpBt
	9pI1NyT3cxnsMrdaX/73pqWK5DnT/yr5ZWwVOdlBvkbtLRHGkX7tX+5MdkybSxw+iJso2UKD45G
	pFAwd8Dq7Nn23xaI+w+58KG4g/FWFZXo76QA8DzwMNRzoddMLYMSfoRYB8FhI9Zxil/IgCGEyvq
	P6+KQn5kjsASWCB3ILlBogrixxiK1/8PZyWR2f9L67bjgLZJyxYtuLDXMgXEf4bbkiBRLCuz7D
X-Received: by 2002:a17:906:fd87:b0:ba6:689e:2f48 with SMTP id a640c23a62f3a-bbec040dbfbmr40106866b.25.1777593320157;
        Thu, 30 Apr 2026 16:55:20 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com. [209.85.221.51])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bbe69f6bac7sm51238066b.11.2026.04.30.16.55.18
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2026 16:55:19 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-43d73352cf2so1309959f8f.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2026 16:55:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/z7UN4lPPe99fE0iTAjM5Kr37nhAGZR6HgDOOoaRO2hTioMqA4fb3YZwQ6Rk0DqoOPBZHEG46bB4bfDgF8dA==@lists.infradead.org
X-Received: by 2002:a5d:5846:0:b0:447:55b5:d532 with SMTP id
 ffacd0b85a97d-44a87f60a32mr1080919f8f.37.1777593318187; Thu, 30 Apr 2026
 16:55:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260428200712.2660635-1-briannorris@chromium.org> <20260428200712.2660635-8-briannorris@chromium.org>
In-Reply-To: <20260428200712.2660635-8-briannorris@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 30 Apr 2026 16:54:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V2H426VR8z5EEm4bWuK-Fvg_wr+mAkkaAfJrWcU0kV1g@mail.gmail.com>
X-Gm-Features: AVHnY4JV5Y3mu38iXutrpDHLS51XF8wv90SD0VK4jxBhsJoT2PtDnx5IHddvQ_U
Message-ID: <CAD=FV=V2H426VR8z5EEm4bWuK-Fvg_wr+mAkkaAfJrWcU0kV1g@mail.gmail.com>
Subject: Re: [PATCH 7/7] arm64: dts: qcom: Add #{address,size}-cells to
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
X-CRM114-CacheID: sfid-20260430_165522_982276_886C29D3 
X-CRM114-Status: GOOD (  17.48  )
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
U2lnbmVkLW9mZi1ieTogQnJpYW4gTm9ycmlzIDxicmlhbm5vcnJpc0BjaHJvbWl1bS5vcmc+Cj4g
LS0tCj4KPiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NjNzE4MC10cm9nZG9yLmR0c2kgICB8
IDUgKysrKysKPiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NjNzI4MC1oZXJvYnJpbmUuZHRz
aSB8IDUgKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCgpSZXZpZXdl
ZC1ieTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
