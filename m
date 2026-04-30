Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22BF0FF886F
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Apr 2026 23:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a//P/39yQ0egbySIwzebusFycImnVnYnIi2U3MMC/RY=; b=bkaXFdAirtxPcP
	5CHK0nENL9TsH7ayxE+rKgkBpSJir+57ZsNzgLsSxAJNZ2ZddFLczzbgdPoGZF+aIkQsxiFUyMdrA
	B/df3YzW+W81QpFG4W1VIV7jYxgbq+cU/1T5H1BcKxvOgcdVOBU6kkgDW0MMv6WPVw9L0Tln2mv26
	b10/HnQy54J8NtxDabfb6piIfCRmYX/kqXRyppZCdJ+JaFqAWmAbnFEMq720IwGgbcW+pbmJPW4F0
	OWi66B44LCqu/4YAjcd/9Fyq6/vjLBtPPpo1Cdo/hVvp5xBBQ1D+tAwOx/Td0a1yBG9WqpMYKU7H2
	VMXj2y8TCqI7MNhzFH5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIbDA-000000068dQ-3K95;
	Thu, 30 Apr 2026 23:54:28 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIbD7-000000068d3-1Puq
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Apr 2026 23:54:26 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-bb3c4d8cc29so236644266b.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2026 16:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777593259; x=1778198059; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E9C1umI5D1atr9W6hfkEvQCrhMpTXSs9QJYfV/9UKu8=;
        b=YFogTWlZCny+1Y6h01DRLQaTxutn004B9m63hwGo8WbHN0Y46ReuIB6/s/Vv4OUIrG
         Ex1k8qnzc0rSKP5BRtxkSJLhjUXYRRwhPqpcLk49gPT7BOVAixcsZTBmwdSjL/hOgvyA
         7ozRgD8ND273BGGajA3Ksn6FnMxi+2jCMB36I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777593259; x=1778198059;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E9C1umI5D1atr9W6hfkEvQCrhMpTXSs9QJYfV/9UKu8=;
        b=d3aLmxxJ5VC810tVTQMJQo8YNJnfmxZ4aRD8V9UVxDOWPMedoJ6G0t1nGd0OJOfcEj
         1UXqcJ/aM0QW71kE66yXhv+XgPTozwt9JVIiMMOwBBNpWOaSksbzx647jblaRkE6d7lM
         cE3oFd/zhNi5lbnxYg6HqX2ObQO7NPBK1dBOLx+G6x5lmQJ+xmDbfErczXSc2Iv90jNF
         +YXAUBSbDAqufJSp/qPjIhqsvaw2XDCTUfINIhVIqDTrmhNmpRgLmi9YQrQwmXtafx7W
         j6EDmuIxhPcL8CBsPClRYvoI9zTH6mrHymQROmS1I39VRM2XeboM8syD6Q0ODvaficcI
         pJlA==
X-Forwarded-Encrypted: i=1; AFNElJ/aqzLGuJ3jKx2C+2aehmzscR15hCXKJdY6m9C4eGqG1gdjVJ9ZNQh5GHnxgDEbFXnix59ho6rRmTxTSJGOcQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0oLM6M5p9VRrte+Ic3OsTyvBJlCqunRF7E95OSOKkSEsiR+4h
	PMEbLMRs9YpCcFWFEf2FjhkqpconwxtFPsqWR3lWcTvgy/GDkfKPeWtQpTf5QvTVCgdiKDqqEGf
	g3YqNQg==
X-Gm-Gg: AeBDiesMVEUvdubGjsL/qK3FO9pJLWvlJJ/CcGZw3WpMbsm4zl/vpl2nOU7avzQD2/A
	A8Mn8NwYW8u0A6NJzp9P5iuZy+VVnSU3HL9bnKWiBtvmuA9evup6L5PjdrSZUVd09tLiWHs+vxf
	6BDj5eccM5vKgFTnZDnHDfFTRwhOrEYPOc3rkYFv3Hi+S4cnf2x0vIvl/KS/+OrOgupqIqmXoKg
	7DkJvYrzwK4OMOYIXsjDSBtgDkMZbBeD4MdguZSL9VUu2trrNqANJiDiUvFwNi17Og5LXEuYQEW
	NZJ6EOOxUGYTvFEZM3e4WUkF9fF7o+eEUfk7/GaFa7n1MFjE0IbEVwSUStjRgmVroV1YjPvGi6Z
	M9X57lp0WJc3TVu/yoTK3ATcgrXZqo5tvjpHF2Iw8HRIXCCsXcjy/FpQd3AtITdaMUeotw8GTJK
	p+b4ngYwmu6MYywqSFjMrISmxvJ7Bj0fSKNU3SJyouIsoIoVaP1p1et+bW9WR2dhhXJZzRuWkD
X-Received: by 2002:a17:907:c48d:b0:bbe:46e8:d61e with SMTP id a640c23a62f3a-bbe46e8d8c6mr174677266b.27.1777593259196;
        Thu, 30 Apr 2026 16:54:19 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com. [209.85.221.47])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bbe6d070053sm48524166b.39.2026.04.30.16.54.16
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2026 16:54:18 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-43cfd832155so928316f8f.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2026 16:54:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+0oNZaHj7BhI/Ojc3NE7gxhnGrKBoaMXjAuOXZRHCDPFtK1iETsnzfsUfXUUtJVkFm9G/7fz641POzbACpTw==@lists.infradead.org
X-Received: by 2002:a05:6000:40e0:b0:43d:50c:6f18 with SMTP id
 ffacd0b85a97d-4493cc3fdadmr8678277f8f.11.1777593256152; Thu, 30 Apr 2026
 16:54:16 -0700 (PDT)
MIME-Version: 1.0
References: <20260428200712.2660635-1-briannorris@chromium.org> <20260428200712.2660635-2-briannorris@chromium.org>
In-Reply-To: <20260428200712.2660635-2-briannorris@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 30 Apr 2026 16:54:04 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WhtAz7WM+AsQ9yTwzQMv2B--c1ca27a=fpvVFccRVd6w@mail.gmail.com>
X-Gm-Features: AVHnY4ITNUkQNF1rYH2AzAfyi5kerkzeuZiwFrCYx_qZbGHsYv-60K7BAEKUu9M
Message-ID: <CAD=FV=WhtAz7WM+AsQ9yTwzQMv2B--c1ca27a=fpvVFccRVd6w@mail.gmail.com>
Subject: Re: [PATCH 1/7] arm64: dts: rockchip: Add #{address,size}-cells to
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
X-CRM114-CacheID: sfid-20260430_165425_467978_1BBA0509 
X-CRM114-Status: GOOD (  16.97  )
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
ZXRoaW5nCj4gbGlrZSB0aGUgZm9sbG93aW5nOgo+Cj4gICAjIyBGcm9tIGEgUkszMzk5IEdydS9L
ZXZpbiBDaHJvbWVib29rOgo+ICAgIyBmaW5kIC9zeXMvZmlybXdhcmUvZGV2aWNldHJlZS9iYXNl
L2Zpcm13YXJlCj4gICAvc3lzL2Zpcm13YXJlL2RldmljZXRyZWUvYmFzZS9maXJtd2FyZQo+ICAg
L3N5cy9maXJtd2FyZS9kZXZpY2V0cmVlL2Jhc2UvZmlybXdhcmUvY29yZWJvb3QKPiAgIC9zeXMv
ZmlybXdhcmUvZGV2aWNldHJlZS9iYXNlL2Zpcm13YXJlL2NvcmVib290L3JhbS1jb2RlCj4gICAv
c3lzL2Zpcm13YXJlL2RldmljZXRyZWUvYmFzZS9maXJtd2FyZS9jb3JlYm9vdC9jb21wYXRpYmxl
Cj4gICAvc3lzL2Zpcm13YXJlL2RldmljZXRyZWUvYmFzZS9maXJtd2FyZS9jb3JlYm9vdC9ib2Fy
ZC1pZAo+ICAgL3N5cy9maXJtd2FyZS9kZXZpY2V0cmVlL2Jhc2UvZmlybXdhcmUvY29yZWJvb3Qv
cmVnCj4gICAvc3lzL2Zpcm13YXJlL2RldmljZXRyZWUvYmFzZS9maXJtd2FyZS9jb3JlYm9vdC9u
YW1lCj4gICAvc3lzL2Zpcm13YXJlL2RldmljZXRyZWUvYmFzZS9maXJtd2FyZS9jaHJvbWVvcwo+
ICAgL3N5cy9maXJtd2FyZS9kZXZpY2V0cmVlL2Jhc2UvZmlybXdhcmUvY2hyb21lb3MvcmVhZG9u
bHktZmlybXdhcmUtdmVyc2lvbgo+ICAgL3N5cy9maXJtd2FyZS9kZXZpY2V0cmVlL2Jhc2UvZmly
bXdhcmUvY2hyb21lb3MvYWN0aXZlLWVjLWZpcm13YXJlCj4gICAvc3lzL2Zpcm13YXJlL2Rldmlj
ZXRyZWUvYmFzZS9maXJtd2FyZS9jaHJvbWVvcy9maXJtd2FyZS12ZXJzaW9uCj4gICAvc3lzL2Zp
cm13YXJlL2RldmljZXRyZWUvYmFzZS9maXJtd2FyZS9jaHJvbWVvcy9ub252b2xhdGlsZS1jb250
ZXh0LXN0b3JhZ2UKPiAgIC9zeXMvZmlybXdhcmUvZGV2aWNldHJlZS9iYXNlL2Zpcm13YXJlL2No
cm9tZW9zL3Zib290LXNoYXJlZC1kYXRhCj4gICAvc3lzL2Zpcm13YXJlL2RldmljZXRyZWUvYmFz
ZS9maXJtd2FyZS9jaHJvbWVvcy9ub252b2xhdGlsZS1jb250ZXh0LXNpemUKPiAgIC9zeXMvZmly
bXdhcmUvZGV2aWNldHJlZS9iYXNlL2Zpcm13YXJlL2Nocm9tZW9zL25vbnZvbGF0aWxlLWNvbnRl
eHQtb2Zmc2V0Cj4gICAvc3lzL2Zpcm13YXJlL2RldmljZXRyZWUvYmFzZS9maXJtd2FyZS9jaHJv
bWVvcy9oYXJkd2FyZS1pZAo+ICAgL3N5cy9maXJtd2FyZS9kZXZpY2V0cmVlL2Jhc2UvZmlybXdh
cmUvY2hyb21lb3MvY29tcGF0aWJsZQo+ICAgL3N5cy9maXJtd2FyZS9kZXZpY2V0cmVlL2Jhc2Uv
ZmlybXdhcmUvY2hyb21lb3MvZmlybXdhcmUtdHlwZQo+ICAgL3N5cy9maXJtd2FyZS9kZXZpY2V0
cmVlL2Jhc2UvZmlybXdhcmUvY2hyb21lb3MvZm1hcC1vZmZzZXQKPiAgIC9zeXMvZmlybXdhcmUv
ZGV2aWNldHJlZS9iYXNlL2Zpcm13YXJlL2Nocm9tZW9zL25hbWUKPiAgIC9zeXMvZmlybXdhcmUv
ZGV2aWNldHJlZS9iYXNlL2Zpcm13YXJlL3Jhbmdlcwo+ICAgL3N5cy9maXJtd2FyZS9kZXZpY2V0
cmVlL2Jhc2UvZmlybXdhcmUvbmFtZQo+Cj4gVGhlIC9maXJtd2FyZSBub2RlIGhhcyBhbiBlbXB0
eSAncmFuZ2VzJywgYnV0IGRvZXMgbm90IGhhdmUKPiBhZGRyZXNzL3NpemUtY2VsbHMuCj4KPiBD
b21taXQgNmU1NzczZDUyZjRhICgib2YvYWRkcmVzczogRml4IFdBUk4gd2hlbiBhdHRlbXB0aW5n
IHRyYW5zbGF0aW5nCj4gbm9uLXRyYW5zbGF0YWJsZSBhZGRyZXNzZXMiKSBzdGFydGVkIHJlcXVp
cmluZyAjYWRkcmVzcy1jZWxscyBmb3IgYQo+IGRldmljZSdzIHBhcmVudCBpZiB3ZSB3YW50IHRv
IHVzZSB0aGUgcmVnIHJlc291cmNlIGluIGEgZGV2aWNlIG5vZGUuCj4gVGhpcyBsZWFkcyB0byBl
cnJvcnMgbGlrZSB0aGUgZm9sbG93aW5nOgo+Cj4gWyAgICA3Ljc2Mzg3MF0gY29yZWJvb3RfdGFi
bGUgZmlybXdhcmU6Y29yZWJvb3Q6IHByb2JlIHdpdGggZHJpdmVyIGNvcmVib290X3RhYmxlIGZh
aWxlZCB3aXRoIGVycm9yIC0yMgo+Cj4gQWRkIGFwcHJvcHJpYXRlICN7YWRkcmVzcyxzaXplfS1j
ZWxscyB0byB3b3JrIGFyb3VuZCB0aGUgcHJvYmxlbS4KPgo+IE5vdGUgdGhhdCBHb29nbGUgaGFz
IGFsc28gcGF0Y2hlZCB0aGUgRGVwdGhjaGFyZ2UgYm9vdGxvYWRlciBzb3VyY2UgdG8KPiBhZGQg
e2FkZHJlc3Msc2l6ZX0tY2VsbHMgWzFdLCBidXQgYm9vdGxvYWRlciB1cGRhdGVzIGFyZSB0eXBp
Y2FsbHkKPiBkZWxpdmVyZWQgb25seSB2aWEgR29vZ2xlIE9TIHVwZGF0ZXMuIE5vdCBhbGwgdXNl
cnMgaW5zdGFsbCBHb29nbGUKPiBzb2Z0d2FyZSB1cGRhdGVzLCBhbmQgZXZlbiBpZiB0aGV5IGRv
LCBHb29nbGUgbWF5IG5vdCBwcm9kdWNlIHVwZGF0ZWQKPiBiaW5hcmllcyBmb3IgYWxsL29sZGVy
IGRldmljZXMuCj4KPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjQxMjA5MDky
ODA5LkdBMzI0NjQyNEBnb29nbGUuY29tLwo+ICAgICBodHRwczovL2NycmV2LmNvbS9jLzYwNTE1
ODAgKCJjb3JlYm9vdDogSW5zZXJ0ICNhZGRyZXNzLWNlbGxzIGFuZAo+ICAgICAjc2l6ZS1jZWxs
cyBmb3IgZmlybXdhcmUgbm9kZSIpCj4KPiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2FsbC9hZUtsWXpUaUwwT0IxeTNnQGdvb2dsZS5jb20vCj4gRml4ZXM6IDZlNTc3M2Q1MmY0YSAo
Im9mL2FkZHJlc3M6IEZpeCBXQVJOIHdoZW4gYXR0ZW1wdGluZyB0cmFuc2xhdGluZyBub24tdHJh
bnNsYXRhYmxlIGFkZHJlc3NlcyIpCj4gU2lnbmVkLW9mZi1ieTogQnJpYW4gTm9ycmlzIDxicmlh
bm5vcnJpc0BjaHJvbWl1bS5vcmc+CgpSZXZpZXdlZC1ieTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlh
bmRlcnNAY2hyb21pdW0ub3JnPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
