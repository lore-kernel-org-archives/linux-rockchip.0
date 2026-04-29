Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CE39FF8864
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 04:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1RvZ2ppYZaOZH4+J2U3AOWs6z4nIRIIAkUpjoxnJIw=; b=cYF9ORxD2Rf8RK
	vOhTv4wAhWTo/PtpyzMF3xXKRoJW167+ZIHdXrDhP4Tp7ZvUIZHW53qLzvzX6HNcU9vKcOJWI7Kru
	9SAZ14gg0gA4SfWGpN1GBwnsFeaJIZBXu7j2So8uNLgcl6zPZe8BuPverIcpl7PutavLyL44Aw1Tg
	M+MWNMLmju/C55VFZXGPQIZZjnO+hojpQzXH9XjUMu+YGlO13gNnWllNv/e+ea9oZHVCCZ9wKH/E8
	GYFz2K2jWJPKkIryT5JaLacMPxLdZpMcK014hh0oIeGvrHfy6rXxyH6ZWqUAFtvHATRvySSk0tZqm
	Jv33CRpJ+Aj/YlyN7C1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHwMZ-00000002ukK-0VeB;
	Wed, 29 Apr 2026 04:17:27 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHwMV-00000002ujW-2Up5
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Apr 2026 04:17:25 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5a283c44478so18892311e87.3
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 21:17:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777436241; cv=none;
        d=google.com; s=arc-20240605;
        b=LR10Y2q9AjOuyOEuxn4d40TsEUk7A5J4plSC6KeP+h/WC5GUjPd+cA9V11JRo7FMJH
         fZRJrFrtamNx+w3t06lifW/eDxYF1U/gqDz+gjfahaRxQb1OTBT9WilIUa9/NPHb2eN5
         vRa3FItxagLWKQ9Udtk6PUMyEeLMIpR8abbsmYmA1V7H96fMvX+xA7QFbrMfs6tH2s9b
         o9P8qQhVI15okT66ghBO/dj3bHBwVGHBPjWCosskgveuD2zswflKE6uYGohvAbIyGsDS
         gC/8uPAzAbiTokLQW+iSOa5aeN/tf0QnCMe0FUFHGSkHPcPl+lBX2nMrsP4DWWyO+8j0
         TLTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=S+wgx278PuWohl1935Byl8WX7gkc8WHJmkUS4pGdFI4=;
        fh=tXolKa9VVet0SYcnWDWaDkzJM88BT4VnptOcH7456I8=;
        b=HIPo5QtzgrwqzJKoUq3jM/Ekp34fD7ADU2zyOQ+s87trOoOe08aRA7K4thQ4EXOCgz
         YIBwj4HxSn9rw7RwqZrMnX3iuuwQDy7WVN9khiJXrhCwezT81uWyJ6mFeeXEgoMw6yHy
         6po5zzmfYc5JQbzOqaqUF2lFHxMmrfcCtF7jebOilQXWch8nxs5MC0lEhdDpZUiW19J+
         bOBai2s7XvAsFrgZWnI1gKl5Ok2Cs+PM9i2Nc+3mKmt/C5lMRr9Nf/p4WJqzjiBdnpmM
         hch5Lwyc9o26Apt9P6fblibk1okVRZ0gJ39ynh2Y3Xytu/4b/bLgjqVoObq19tvlDVCV
         9LhA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777436241; x=1778041041; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S+wgx278PuWohl1935Byl8WX7gkc8WHJmkUS4pGdFI4=;
        b=a4SXGlDip4ZzTX0GoARm+IXGC9z2oiZFHRsf11xQfKuh9m3x1nJlwm/79AJfSB4+ng
         DzXV0XTAuUTXDPu3JvhVLpw5KvZCXPDpqw871mnkpcsvtZEvjlSsRHfKvUFOlOOIT7f9
         aYZ1ufTd/sTWy9lRvWrtkfXCZ/4Ds43VyUJL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777436241; x=1778041041;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=S+wgx278PuWohl1935Byl8WX7gkc8WHJmkUS4pGdFI4=;
        b=bsX/WQorYUbcvLkAlT2DOzoIcf7b87PmTdoKyJ47Mk4Hw37olRqLoNsnA6kOVskMn5
         dfuEAX1kgiq1cktNzGl7zKZ3ATprfdqo4NwiILNmhucdW0vBA+/6yVT5OxrRQtaFRnPS
         MTlZXf1hZDeFmELTg2b035qy4XiD5TO1/Biw36SP9VYeK8xMS6H4cBZS3aLBwGnF94cX
         7077MJNUgRUIDSX/qHIdRRLis5lXt+3zYXWNKHY52xFHGa8e3Hry7l/+Oa51g/Mw+pwj
         RZzH4dGoNLctolEHpXuTs6bvONSBTYZFsgDt6MIL16GWNlKI+UwqauMjnfIiNRJgBNY8
         1ULw==
X-Forwarded-Encrypted: i=1; AFNElJ+UTYb8sDHRXA+52n9Si1pn1rhi2aq9nOIEc6ihLAw9sd0Ilg4I5Lpw5QlV/w7yPcOQjeSCAa7IVuF0YaJadg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5S2qdqFd3t8keEyyyevCatlged0XF8sx7nR0oN2Q9QGUXjDIP
	islYZAMYwxnnWOriz3XpA5zVXx7ioGa9pfl3ghPnDtxj+em2rse/V/vuUnkIHS0EqeRUja1y+bh
	ZVW4G4PM4z9gHtQcoKXKGzJdsGJm7NzbQ5A4nN+vp
X-Gm-Gg: AeBDietOb5v6y1Bvq0Reep3IZZ9qkMvWC6ngyUEBaY1FpYrRQdW42t/WxAlH5Qa/+1u
	6b/jEuC3IA2ZLg87sRF92jNLUNx8HKdV/0rxqQRClLMPepB+uS5c+qDzKGgFTBi5Qs/vhXwCSDT
	UnMhWUwvP9uxXayt0FIe8QvbX1uH31MaZbYbSto3vGkz7De0nuXDGqwAVDl+FH1c9iqi8kZdWS0
	0XHhD30j3niImYmTMwcT4+auEBDyEVyiq4nD479xNa08knLTNQJhWFeUgsgkXl4W3SMYBaIPDcv
	Z2eT6ljsFGhJ3G2VuQ==
X-Received: by 2002:a05:6512:3983:b0:5a2:836a:ca47 with SMTP id
 2adb3069b0e04-5a746623733mr2096698e87.20.1777436240634; Tue, 28 Apr 2026
 21:17:20 -0700 (PDT)
MIME-Version: 1.0
References: <20260428200712.2660635-1-briannorris@chromium.org> <20260428200712.2660635-6-briannorris@chromium.org>
In-Reply-To: <20260428200712.2660635-6-briannorris@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 29 Apr 2026 13:17:09 +0900
X-Gm-Features: AVHnY4JUF2jGqzImUjvVT0R20VSVC4ANB99NMBVznnvWckelDQ9DcqAgZCUM5q8
Message-ID: <CAGXv+5FZ0kTqrqWEu8AX_1cxtEQD0urr=FJO=Van20h75_Z1Xw@mail.gmail.com>
Subject: Re: [PATCH 5/7] arm64: dts: mediatek: Add #{address,size}-cells to
 Chromium-based /firmware
To: Brian Norris <briannorris@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Heiko Stuebner <heiko@sntech.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	devicetree@vger.kernel.org, Doug Anderson <dianders@chromium.org>, 
	linux-arm-kernel@lists.infradead.org, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, linux-rockchip@lists.infradead.org, 
	Julius Werner <jwerner@chromium.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_211723_685386_D4BB2AF8 
X-CRM114-Status: GOOD (  16.25  )
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

T24gV2VkLCBBcHIgMjksIDIwMjYgYXQgMToxMuKAr1BNIEJyaWFuIE5vcnJpcyA8YnJpYW5ub3Jy
aXNAY2hyb21pdW0ub3JnPiB3cm90ZToKPgo+IENocm9taXVtL0RlcHRoY2hhcmdlIGJvb3Rsb2Fk
ZXJzIG1heSBkeW5hbWljYWxseSBhZGQgYSBmZXcgZGV2aWNlIG5vZGVzCj4gdG8gYSBzeXN0ZW0n
cyBEVEIgdW5kZXIgYSAvZmlybXdhcmUgbm9kZS4gQSB0eXBpY2FsIERUIGxvb2tzIHNvbWV0aGlu
Zwo+IGxpa2UgdGhlIGZvbGxvd2luZzoKPgo+IC8gewo+ICAgICAgICAgZmlybXdhcmUgewo+ICAg
ICAgICAgICAgICAgICByYW5nZXM7Cj4KPiAgICAgICAgICAgICAgICAgY29yZWJvb3Qgewo+ICAg
ICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiY29yZWJvb3QiOwo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIHJlZyA9IDwuLi4+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIC4u
LjsKPiAgICAgICAgICAgICAgICAgfTsKPiAgICAgICAgIH07Cj4gfTsKPgo+IE5vdGFibHksIHRo
ZSAvZmlybXdhcmUgbm9kZSBoYXMgYW4gZW1wdHkgJ3JhbmdlcycsIGJ1dCBkb2VzIG5vdCBoYXZl
Cj4gYWRkcmVzcy9zaXplLWNlbGxzLgo+Cj4gQ29tbWl0IDZlNTc3M2Q1MmY0YSAoIm9mL2FkZHJl
c3M6IEZpeCBXQVJOIHdoZW4gYXR0ZW1wdGluZyB0cmFuc2xhdGluZwo+IG5vbi10cmFuc2xhdGFi
bGUgYWRkcmVzc2VzIikgc3RhcnRlZCByZXF1aXJpbmcgI2FkZHJlc3MtY2VsbHMgZm9yIGEKPiBk
ZXZpY2UncyBwYXJlbnQgaWYgd2Ugd2FudCB0byB1c2UgdGhlIHJlZyByZXNvdXJjZSBpbiBhIGRl
dmljZSBub2RlLgo+IFRoaXMgbGVhZHMgdG8gZXJyb3JzIGxpa2UgdGhlIGZvbGxvd2luZzoKPgo+
IFsgICAgNy43NjM4NzBdIGNvcmVib290X3RhYmxlIGZpcm13YXJlOmNvcmVib290OiBwcm9iZSB3
aXRoIGRyaXZlciBjb3JlYm9vdF90YWJsZSBmYWlsZWQgd2l0aCBlcnJvciAtMjIKPgo+IEFkZCBh
cHByb3ByaWF0ZSAje2FkZHJlc3Msc2l6ZX0tY2VsbHMgdG8gd29yayBhcm91bmQgdGhlIHByb2Js
ZW0uCj4KPiBOb3RlIHRoYXQgR29vZ2xlIGhhcyBhbHNvIHBhdGNoZWQgdGhlIERlcHRoY2hhcmdl
IGJvb3Rsb2FkZXIgc291cmNlIHRvCj4gYWRkIHthZGRyZXNzLHNpemV9LWNlbGxzIFsxXSwgYnV0
IGJvb3Rsb2FkZXIgdXBkYXRlcyBhcmUgdHlwaWNhbGx5Cj4gZGVsaXZlcmVkIG9ubHkgdmlhIEdv
b2dsZSBPUyB1cGRhdGVzLiBOb3QgYWxsIHVzZXJzIGluc3RhbGwgR29vZ2xlCj4gc29mdHdhcmUg
dXBkYXRlcywgYW5kIGV2ZW4gaWYgdGhleSBkbywgR29vZ2xlIG1heSBub3QgcHJvZHVjZSB1cGRh
dGVkCj4gYmluYXJpZXMgZm9yIGFsbC9vbGRlciBkZXZpY2VzLgo+Cj4gWzFdIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FsbC8yMDI0MTIwOTA5MjgwOS5HQTMyNDY0MjRAZ29vZ2xlLmNvbS8KPiAg
ICAgaHR0cHM6Ly9jcnJldi5jb20vYy82MDUxNTgwICgiY29yZWJvb3Q6IEluc2VydCAjYWRkcmVz
cy1jZWxscyBhbmQKPiAgICAgI3NpemUtY2VsbHMgZm9yIGZpcm13YXJlIG5vZGUiKQo+Cj4gQ2xv
c2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvYWVLbFl6VGlMME9CMXkzZ0Bnb29nbGUu
Y29tLwo+IEZpeGVzOiA2ZTU3NzNkNTJmNGEgKCJvZi9hZGRyZXNzOiBGaXggV0FSTiB3aGVuIGF0
dGVtcHRpbmcgdHJhbnNsYXRpbmcgbm9uLXRyYW5zbGF0YWJsZSBhZGRyZXNzZXMiKQo+IFNpZ25l
ZC1vZmYtYnk6IEJyaWFuIE5vcnJpcyA8YnJpYW5ub3JyaXNAY2hyb21pdW0ub3JnPgoKUmV2aWV3
ZWQtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc3RAY2hyb21pdW0ub3JnPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
