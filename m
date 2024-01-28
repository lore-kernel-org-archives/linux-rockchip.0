Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F768C47258
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Jan 2024 15:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PR8rhN9kA9Z5z/aE5/gdYJixxojI+lxYCcCXKcfLmUE=; b=1V3m0PhRd33hsY
	QLllrQUxFaG6Jleqr0I58CLAfdDBHg4fCye34Y6TMvAKEo970nY+DBt/t5ki3IY07I0YhT2en4x7d
	fGcbgPwVM2v8cacJkHzmgqX5hQ/LtlFwR2HezASne4NVHLlOhZIfzhXnxoSqd0wE2w+NvCk1qvuEw
	nAs/pvDcDQfyGYTK5Q4byOCcvKUUg+gvgDwF+4TNQ9l4kfMEdYtcdhXrdF3BH+W21PtQh7DmjmoNk
	ymQQCxB8m8N5Cz/i0D5d/d3ayRHod5TngrYk1DYvyfSVTOuMoJEynVSUDixyIt8UdsGNODGdKg8VL
	opyAnYgVUgdm/N6v0OVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rU6jx-00000009i8x-48No;
	Sun, 28 Jan 2024 15:06:34 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rU6js-00000009i7X-3ivO
	for linux-rockchip@lists.infradead.org;
	Sun, 28 Jan 2024 15:06:31 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40ef207c654so5609325e9.1
        for <linux-rockchip@lists.infradead.org>; Sun, 28 Jan 2024 07:06:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706454386; x=1707059186; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gt2GoiZlVl4m7DcHB944zDkl2TnQCtXQoPzD4lLJEE4=;
        b=XIW6wWhp1e+GLJ5zPAPJASqf/uNjRM6qhAiw847OVEyOecpnLpTl5jseDFIeX6mz/M
         R67++mP7mszzdHveACW7cMF6V8veNt1IoxCwokW9x+9cXFO6Fd5iwjZ6d23GKVy+QEy3
         bbvanFQRs0gUB4r89foZqj5FVn+tJnNxLGl/2Moz4E8A0tfAXSGlQKWVDdgcnEzs4qjS
         eG7ew1yQd0At8verWRaZnzy3O3PA5vxluwP1FhXV3zBXwzWdQJ/4rrpYJq/lz80fbFHh
         4ufsepaLf8Iy3zs+PKYrVVvauhdjfZjmT4es+A+gFZLYvZ/Vwr1FX99Pa+zzL6PdBJvb
         5pXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706454386; x=1707059186;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gt2GoiZlVl4m7DcHB944zDkl2TnQCtXQoPzD4lLJEE4=;
        b=ZWPRhmDet/NI2bYO80zEv411fZoiF8ZF/LTTnwaQ91dg7KJR2y2M6REX7Xhi+QlBFy
         GBuYqAix4CjRRA6+zsmubjTg9PMLF9hG48b5Ns2RTi7jb5LFXsUUIs+kyGpLCwc+tfd8
         w/4xwtMNrIjiWmMptEms5QFmchGed8IbprvzrDXeDfzwqOERii5JT3yqcoOMlW4C+lCe
         O0grsyEtteEnrbDHE0i1wsYIfphaPnFLsy9rBMHDe2R57CZE3NTaV7sz9DoSirnJrZzY
         tI/7F+0CNKdVD6BGrI+I3/+4MGzydAYUmZ34ZX0IIwdZNIqai6MAaIjkeUvp+pvnat1v
         W1wA==
X-Gm-Message-State: AOJu0YxyGu5cWSCZ/5aEhq6kRQlEuVEnZriyEcMvgM1FfSD6+h1VriH9
	cnaBRt2MxFT3o7PBxHr2aaFZc1aVTlY8nQUkIEmi0fzskVRJ875IwbSE6RqSQeE=
X-Google-Smtp-Source: AGHT+IEj9+cXeSMOZkusGROt1uVn5aKOHGnQIK07UeyCT4an0oglnKBtK3VSSbl0Sq4m0/i3YBG4PA==
X-Received: by 2002:a05:600c:3d0b:b0:40e:70c0:5054 with SMTP id bh11-20020a05600c3d0b00b0040e70c05054mr4446371wmb.2.1706454386169;
        Sun, 28 Jan 2024 07:06:26 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id fc20-20020a05600c525400b0040ed1e5d5f3sm10579779wmb.41.2024.01.28.07.06.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jan 2024 07:06:25 -0800 (PST)
Message-ID: <ab664c65-954e-4be0-9c1f-6676694e1f11@linaro.org>
Date: Sun, 28 Jan 2024 16:06:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Add OPP data for CPU cores on
 RK3588
Content-Language: en-US
To: Alexey Charkov <alchark@gmail.com>, Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>
References: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
 <20240125-rk-dts-additions-v1-4-5879275db36f@gmail.com>
 <731aac66-f698-4a1e-b9ee-46a7f24ecae5@linaro.org>
 <ccc004cfae513195351ce0a79e12f6af@manjaro.org>
 <CABjd4YxSTLZjrnSCn0fh81US682-uhZ16-cgydzz97shhCpq4w@mail.gmail.com>
 <1f0608831cfb95c80edf16cd751eee76@manjaro.org>
 <CABjd4Yx06igrZQvHA4q-mcr2oSEf7eQyUS+KEATUGbw6qLc2sg@mail.gmail.com>
 <528a37d84cdd871e717b4ebf648bb8a7@manjaro.org>
 <9b72b688-be63-464e-a5dc-cf6051ccee12@linaro.org>
 <CABjd4YzdD9ciMn=p=opEK+fdxCkeCodsryph7pkqgsEUNcNrUQ@mail.gmail.com>
 <5ef9bab979260884866efe30d19ba8f1@manjaro.org>
 <CABjd4YyyuB9ou-BaOrvt_rrv1-jPE=wtwWDHDqNqyT4a0E51wg@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CABjd4YyyuB9ou-BaOrvt_rrv1-jPE=wtwWDHDqNqyT4a0E51wg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240128_070628_987564_25EBF4AB 
X-CRM114-Status: GOOD (  34.01  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkhpIEFsZXhleSwKCk9uIDI3LzAxLzIwMjQgMjA6NDEsIEFsZXhleSBDaGFya292IHdyb3RlOgo+
IE9uIFNhdCwgSmFuIDI3LCAyMDI0IGF0IDEyOjMz4oCvQU0gRHJhZ2FuIFNpbWljIDxkc2ltaWNA
bWFuamFyby5vcmc+IHdyb3RlOgo+Pgo+PiBPbiAyMDI0LTAxLTI2IDE0OjQ0LCBBbGV4ZXkgQ2hh
cmtvdiB3cm90ZToKPj4+IE9uIEZyaSwgSmFuIDI2LCAyMDI0IGF0IDQ6NTbigK9QTSBEYW5pZWwg
TGV6Y2Fubwo+Pj4gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+IHdyb3RlOgo+Pj4+IE9uIDI2
LzAxLzIwMjQgMDg6NDksIERyYWdhbiBTaW1pYyB3cm90ZToKPj4+Pj4gT24gMjAyNC0wMS0yNiAw
ODozMCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4+Pj4+PiBPbiBGcmksIEphbiAyNiwgMjAyNCBh
dCAxMTowNeKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPiB3cm90ZToKPj4+
Pj4+PiBPbiAyMDI0LTAxLTI2IDA3OjQ0LCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPj4+Pj4+Pj4g
T24gRnJpLCBKYW4gMjYsIDIwMjQgYXQgMTA6MzLigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0Bt
YW5qYXJvLm9yZz4KPj4+Pj4+Pj4gd3JvdGU6Cj4+Pj4+Pj4+PiBPbiAyMDI0LTAxLTI1IDEwOjMw
LCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPj4+Pj4+Pj4+PiBPbiAyNC8wMS8yMDI0IDIxOjMwLCBB
bGV4ZXkgQ2hhcmtvdiB3cm90ZToKPj4+Pj4+Pj4+Pj4gQnkgZGVmYXVsdCB0aGUgQ1BVcyBvbiBS
SzM1ODggc3RhcnQgdXAgaW4gYSBjb25zZXJ2YXRpdmUKPj4+Pj4+PiBwZXJmb3JtYW5jZQo+Pj4+
Pj4+Pj4+PiBtb2RlLiBBZGQgZnJlcXVlbmN5IGFuZCB2b2x0YWdlIG1hcHBpbmdzIHRvIHRoZSBk
ZXZpY2UgdHJlZSB0bwo+Pj4+Pj4+IGVuYWJsZQo+Pj4+Cj4+Pj4gWyAuLi4gXQo+Pj4+Cj4+Pj4+
PiBUaHJvdHRsaW5nIHdvdWxkIGFsc28gbG93ZXIgdGhlIHZvbHRhZ2UgYXQgc29tZSBwb2ludCwg
d2hpY2ggY29vbHMgaXQKPj4+Pj4+IGRvd24gbXVjaCBmYXN0ZXIhCj4+Pj4+Cj4+Pj4+IE9mIGNv
dXJzZSwgYnV0IHRoZSBrZXkgaXMgbm90IHRvIGNvb2wgKGFuZCBzbG93IGRvd24pIHRoZSBDUFUg
Y29yZXMgdG9vCj4+Pj4+IG11Y2gsIGJ1dCBqdXN0IGVub3VnaCB0byBzdGF5IHdpdGhpbiB0aGUg
YXZhaWxhYmxlIHRoZXJtYWwgZW52ZWxvcGUsCj4+Pj4+IHdoaWNoIGlzIHdoZXJlIHRoZSBzYW1l
LXZvbHRhZ2UsIGxvd2VyLWZyZXF1ZW5jeSBPUFBzIHNob3VsZCBzaGluZS4KPj4+Pgo+Pj4+IFRo
YXQgaW1wbGllcyB0aGUgcmVzdWx0aW5nIHBvd2VyIGlzIHN1c3RhaW5hYmxlIHdoaWNoIEkgZG91
YnQgaXQgaXMKPj4+PiB0aGUKPj4+PiBjYXNlLgo+Pj4+Cj4+Pj4gVGhlIHZvbHRhZ2Ugc2NhbGlu
ZyBtYWtlcyB0aGUgY29vbGluZyBlZmZlY3QgZWZmaWNpZW50IG5vdCB0aGUKPj4+PiBmcmVxdWVu
Y3kuCj4+Pj4KPj4+PiBGb3IgZXhhbXBsZToKPj4+PiAgICAgICAgICBvcHA1ID0gb3BwKDJHSHos
IDFWKSA9PiAyIEJvZ29XYXR0Cj4+Pj4gICAgICAgICAgb3BwNCA9IG9wcCgxLjlHSHosIDFWKSA9
PiAxLjkgQm9nb1dhdHQKPj4+PiAgICAgICAgICBvcHAzID0gb3BwKDEuOEdIeiwgMC45VikgPT4g
MS40NTggQm9nb1dhdHQKPj4+PiAgICAgICAgICBbIG90aGVyIHN0YXRlcyBidXQgd2UgZm9jdXMg
b24gdGhlc2UgMyBdCj4+Pj4KPj4+PiBvcHA1LT5vcHA0ID0+IC01JSBjb21wdXRlIGNhcGFjaXR5
LCAtNSUgcG93ZXIsIHJhdGlvPTEKPj4+PiBvcHA0LT5vcHAzID0+IC01JSBjb21wdXRlIGNhcGFj
aXR5LCAtMjMuMSUgcG93ZXIsIHJhdGlvPTIxLDYKPj4+Pgo+Pj4+IG9wcDUtPm9wcDMgPT4gLTEw
JSBjb21wdXRlIGNhcGFjaXR5LCAtMjcuMSUgcG93ZXIsIHJhdGlvPTM2LjkKPj4+Pgo+Pj4+IElu
IGJ1cnN0IG9wZXJhdGlvbiAobm8gdGhlcm1hbCB0aHJvdHRsaW5nKSwgb3BwNCBpcyBwb2ludGxl
c3Mgd2UgYWdyZWUKPj4+PiBvbiB0aGF0Lgo+Pj4+Cj4+Pj4gSU1PIHRoZSBmb2xsb3dpbmcgd2ls
bCBoYXBwZW46IGluIGJ1cnN0IG9wZXJhdGlvbiB3aXRoIHRoZXJtYWwKPj4+PiB0aHJvdHRsaW5n
IHdlIGhpdCB0aGUgdHJpcCBwb2ludCBhbmQgdGhlbiB0aGUgc3RlcCB3aXNlIGdvdmVybm9yCj4+
Pj4gcmVkdWNlcwo+Pj4+IG9wcDUgLT4gb3BwNC4gV2UgaGF2ZSBzbGlnaHQgcG93ZXIgcmVkdWN0
aW9uIGJ1dCB0aGUgdGVtcGVyYXR1cmUgZG9lcwo+Pj4+IG5vdCBkZWNyZWFzZSwgc28gYXQgdGhl
IG5leHQgaXRlcmF0aW9uLCBpdCBpcyB0aHJvdHRsZSBhdCBvcHAzLiBBbmQgYXQKPj4+PiB0aGUg
ZW5kIHdlIGhhdmUgb3BwNCA8LT4gb3BwMyBiYWNrIGFuZCBmb3J0aCBpbnN0ZWFkIG9mIG9wcDUg
PC0+IG9wcDMuCj4+Pj4KPj4+PiBJdCBpcyBwcm9iYWJsZSB3ZSBlbmQgdXAgd2l0aCBhbiBlcXVp
dmFsZW50IGZyZXF1ZW5jeSBhdmVyYWdlIChvcgo+Pj4+IGNvbXB1dGUgY2FwYWNpdHkgYXZnKS4K
Pj4+Pgo+Pj4+IG9wcDQgPC0+IG9wcDMgKGxvbmdlciBkdXJhdGlvbiBpbiBzdGF0ZXMsIGxlc3Mg
dHJhbnNpdGlvbnMpCj4+Pj4gb3BwNSA8LT4gb3BwMyAoc2hvcnRlciBkdXJhdGlvbiBpbiBzdGF0
ZXMsIG1vcmUgdHJhbnNpdGlvbnMpCj4+Pj4KPj4+PiBTb21lIHBsYXRmb3JtcyBoYWQgdGhlaXIg
aGlnaGVyIE9QUHMgd2l0aCB0aGUgc2FtZSB2b2x0YWdlIGFuZCB0aGV5Cj4+Pj4gZmFpbGVkIHRv
IGNvb2wgZG93biB0aGUgQ1BVIGluIHRoZSBsb25nIHJ1bi4KPj4+Pgo+Pj4+IEFueXdheSwgdGhl
cmUgaXMgb25seSBvbmUgd2F5IHRvIGNoZWNrIGl0IG91dCA6KQo+Pj4+Cj4+Pj4gQWxleGV5LCBp
cyBpdCBwb3NzaWJsZSB0byBjb21wYXJlIHRoZSBjb21wdXRlIGR1cmF0aW9uIGZvciAnZGhyeXN0
b25lJwo+Pj4+IHdpdGggdGhlc2Ugdm9sdGFnZSBPUFAgYW5kIHdpdGhvdXQgPyAod2l0aCBhIHBl
cmlvZCBvZiBjb29sIGRvd24KPj4+PiBiZXR3ZWVuCj4+Pj4gdGhlIHRlc3QgaW4gb3JkZXIgdG8g
c3RhcnQgYXQgdGhlIHNhbWUgdGhlcm1hbCBjb25kaXRpb24pID8KPj4+Cj4+PiBTdXJlLCBsZXQg
bWUgdHJ5IHRoYXQgLSB3b3VsZCBiZSBpbnRlcmVzdGluZyB0byBzZWUgdGhlIHJlc3VsdHMuIElu
IG15Cj4+PiBwcmV2aW91cyB0aW5rZXJpbmcgdGhlcmUgd2VyZSBjYXNlcyB3aGVuIHRoZSBzeXN0
ZW0gc3RheWVkIGF0IDIuMzVHSHoKPj4+IGZvciBhbGwgYmlnIGNvcmVzIGZvciBub24tdHJpdmlh
bCB0aW1lICh1c2luZyB0aGUgc3RlcC13aXNlIHRoZXJtYWwKPj4+IGdvdmVybm9yKSwgYW5kIHRo
YXQncyBhbiBleGFtcGxlIG9mICJzYW1lIHZvbHRhZ2UsIGxvd2VyIGZyZXF1ZW5jeSIuCj4+PiBP
dGhlciB0aW1lcyB0aG91Z2ggaXQgdGhyb3R0bGVkIG9uZSBjbHVzdGVyIGRvd24gdG8gMS44R0h6
IGFuZCBrZXB0Cj4+PiB0aGUgb3RoZXIgYXQgMi40R0h6LCBhbmQgd2FzIGFsc28gc3RhdGlvbmFy
eSBhdCB0aG9zZSBwYXJhbWV0ZXJzIGZvcgo+Pj4gZXh0ZW5kZWQgdGltZS4gVGhpcyBwcm9iYWJs
eSBpbmRpY2F0ZXMgdGhhdCBib3RoIG9mIHRob3NlIHN0YXRlcyB1c2UKPj4+IHN1c3RhaW5hYmxl
IHBvd2VyIGluIG15IGNvb2xpbmcgc2V0dXAuCj4+Cj4+IElNSE8sIHRoZXJlIGFyZSBzaW1wbHkg
dG9vIG1hbnkgZmFjdG9ycyBhdCBwbGF5LCBpbmNsdWRpbmcgZGlmZmVyZW50Cj4+IHBvc3NpYmxl
IGNvb2xpbmcgc2V0dXBzLCBzbyBwcm92aWRpbmcgYWRkaXRpb25hbCBDUFUgdGhyb3R0bGluZwo+
PiBncmFudWxhcml0eSBjYW4gb25seSBiZSBoZWxwZnVsLiAgT2YgY291cnNlLCB0ZXN0aW5nIGFu
ZCByZWNvcmRpbmcKPj4gZGF0YSBpcyB0aGUgd2F5IHRvIG1vdmUgZm9yd2FyZCwgYnV0IEkgdGhp
bmsgd2Ugc2hvdWxkIHVzZSBhIGZldwo+PiBkaWZmZXJlbnQgdGVzdHMuCj4gCj4gU29vb28sIGJl
bmNobWFya2luZyB0aGVzZSB0dXJuZWQgb3V0IGEgYml0IHRyaWNraWVyIHRoYW4gSSBoYWQgaG9w
ZWQKPiBmb3IuIEFwcGFyZW50bHksIGRocnlzdG9uZSB1c2VzIGFuIHVuc2lnbmVkIGludCByYXRo
ZXIgdGhhbiBhbgo+IHVuc2lnbmVkIGxvbmcgZm9yIHRoZSBsb29wcyBjb3VudCAob3Igc29tZXRo
aW5nIG9mIHRoYXQgc29ydCksIHdoaWNoCj4gbWVhbnMgdGhhdCBJIGNhbid0IGdldCBpdCB0byBy
dW4gZW5vdWdoIGxvb3BzIHRvIGhlYXQgdXAgbXkgY2hpcCBmcm9tCj4gYSBzdGFibGUgaWRsZSBz
dGF0ZSB0byB0aGUgdGhyb3R0bGluZyBzdGF0ZSAoZHVlIHRvIGNvdW50ZXIKPiB3cmFwYXJvdW5k
KS4gU28gSSBlbmRlZCB1cCB3aXRoIGEgY291cGxlIG9mIGNydXRjaGVzLCBuYW1lbHk6Cj4gICAt
IHJ1biBkaHJ5c3RvbmUgY29udGludW91c2x5IG9uIDYgb3V0IG9mIDggY29yZXMgdG8gbWFrZSB0
aGUgY2hpcAo+IHdhcm0gZW5vdWdoIChgdGFza3NldCAtYyAwLTUgLi9kaHJ5c3RvbmUgLXQgNiAt
ciA2MDAwYCAtIG5vdGUgdGhhdCBvbgo+IG15IG1hY2hpbmUgY29yZXMgNi03IGFyZSB1c3VhbGx5
IHRoZSBmaXJzdCBvbmVzIHRvIGdldCB0aHJvdHRsZWQsIGR1ZQo+IHRvIHdoYXRldmVyIHRoZXJt
YWwgcGVjdWxpYXJpdGllcykKPiAgIC0gd2FpdCBmb3IgdGhlIHRlbXBlcmF0dXJlIHRvIHN0YWJp
bGl6ZSAod2hpY2ggaGFwcGVucyBhdCA3OS41QykKPiAgIC0gdGhlbiBydW4gdGltZWQgZGhyeXN0
b25lIG9uIHRoZSByZW1haW5pbmcgMiBvdXQgb2YgNiBjb3JlcyAoYmlnCj4gb25lcykgdG8gc2Vl
IGhvdyB0aHJvdHRsaW5nIHdpdGggZGlmZmVyZW50IE9QUCB0YWJsZXMgYWZmZWN0cyBvdmVyYWxs
Cj4gcGVyZm9ybWFuY2UuCgpUaGFua3MgZm9yIHRha2luZyB0aGUgdGltZSB0byB0ZXN0LgoKPiBJ
biB0aGUgZW5kLCBoZXJlJ3Mgd2hhdCBJIGdvdCB3aXRoIHRoZSAnb3JpZ2luYWwnIE9QUCB0YWJs
ZSAoaW5jbHVkaW5nCj4gInNhbWUgdm9sdGFnZSAtIGRpZmZlcmVudCBmcmVxdWVuY2llcyIgc3Rh
dGVzKToKPiBhbGNoYXJrQHJvY2stNWIgfiAkIHRhc2tzZXQgLWMgNi03IC4vZGhyeXN0b25lIC10
IDIgLWwgNDAwMDAwMDAwMAo+IGR1cmF0aW9uOiAwIHNlY29uZHMKPiBudW1iZXIgb2YgdGhyZWFk
czogMgo+IG51bWJlciBvZiBsb29wczogNDAwMDAwMDAwMDAwMDAwMAo+IGRlbGF5IGJldHdlZW4g
c3RhcnRpbmcgdGhyZWFkczogMCBzZWNvbmRzCj4gCj4gRGhyeXN0b25lKDEuMSkgdGltZSBmb3Ig
MTIzMzk3NzM0NCBwYXNzZXMgPSAyOS43Cj4gVGhpcyBtYWNoaW5lIGJlbmNobWFya3MgYXQgNDE0
ODE1MzkgZGhyeXN0b25lcy9zZWNvbmQKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMjM2
MDkgRE1JUFMKPiBEaHJ5c3RvbmUoMS4xKSB0aW1lIGZvciAxMjMzOTc3MzQ0IHBhc3NlcyA9IDI5
LjgKPiBUaGlzIG1hY2hpbmUgYmVuY2htYXJrcyBhdCA0MTQ3NjYxOCBkaHJ5c3RvbmVzL3NlY29u
ZAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAyMzYwNiBETUlQUwo+IAo+IFRvdGFsIGRo
cnlzdG9uZSBydW4gdGltZTogMzAuODY0NDkyIHNlY29uZHMuCj4gCj4gQW5kIGhlcmUncyB3aGF0
IEkgZ290IHdpdGggdGhlICdyZWR1Y2VkJyBPUFAgdGFibGUgKGtlZXBpbmcgb25seSB0aGUKPiBo
aWdoZXN0IGZyZXF1ZW5jeSBzdGF0ZSBmb3IgZWFjaCB2b2x0YWdlKToKPiBhbGNoYXJrQHJvY2st
NWIgfiAkIHRhc2tzZXQgLWMgNi03IC4vZGhyeXN0b25lIC10IDIgLWwgNDAwMDAwMDAwMAo+IGR1
cmF0aW9uOiAwIHNlY29uZHMKPiBudW1iZXIgb2YgdGhyZWFkczogMgo+IG51bWJlciBvZiBsb29w
czogNDAwMDAwMDAwMDAwMDAwMAo+IGRlbGF5IGJldHdlZW4gc3RhcnRpbmcgdGhyZWFkczogMCBz
ZWNvbmRzCj4gCj4gRGhyeXN0b25lKDEuMSkgdGltZSBmb3IgMTIzMzk3NzM0NCBwYXNzZXMgPSAz
MC45Cj4gVGhpcyBtYWNoaW5lIGJlbmNobWFya3MgYXQgMzk5Njg1NDkgZGhyeXN0b25lcy9zZWNv
bmQKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAyMjc0OCBETUlQUwo+IERocnlzdG9uZSgx
LjEpIHRpbWUgZm9yIDEyMzM5NzczNDQgcGFzc2VzID0gMzEuMAo+IFRoaXMgbWFjaGluZSBiZW5j
aG1hcmtzIGF0IDM5ODE3NDMxIGRocnlzdG9uZXMvc2Vjb25kCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgMjI2NjIgRE1JUFMKPiAKPiBUb3RhbCBkaHJ5c3RvbmUgcnVuIHRpbWU6IDMxLjk5
NTEzNiBzZWNvbmRzLgo+IAo+IEJvdHRvbWxpbmU6IHJlbW92aW5nIHRoZSBsb3dlci1mcmVxdWVu
Y3kgT1BQcyBsZWQgdG8gYSAzLjglIGRyb3AgaW4KPiBwZXJmb3JtYW5jZSBpbiB0aGlzIHNldHVw
LiBUaGlzIGlzIHByb2JhYmx5IGZhciBmcm9tIGEgcmVsaWFibGUKPiBlc3RpbWF0ZSwgYnV0IEkg
Z3Vlc3MgaXQgaW5kZWVkIGluZGljYXRlcyB0aGF0IGhhdmluZyBsb3dlci1mcmVxdWVuY3kKPiBz
dGF0ZXMgbWlnaHQgYmUgYmVuZWZpY2lhbCBpbiBzb21lIGxvYWQgc2NlbmFyaW9zLgoKV2hhdCBp
cyB0aGUgZHVyYXRpb24gYmV0d2VlbiB0aGVzZSB0d28gdGVzdHM/CgpJIHdvdWxkIGJlIGN1cmlv
dXMgaWYgaXQgaXMgcmVwZWF0YWJsZSBieSBpbnZlcnRpbmcgdGhlIHNldHVwIChyZWR1Y2VkIApP
UFAgdGFibGUgYW5kIHRoZW4gb3JpZ2luYWwgT1BQIHRhYmxlKS4KCkJUVzogSSB1c2VkIC1sIDEw
MDAwIGZvciBhIH4zMCBzZWNvbmRzIHdvcmtsb2FkIG1vcmUgb3IgbGVzcyBvbiB0aGUgCnJrMzM5
OSwgbWF5IGJlIC1sIDIwMDAwIHdpbGwgYmUgb2sgZm9yIHRoZSByazM1ODguCgotLSAKPGh0dHA6
Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZv
ciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdl
cy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3
aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
