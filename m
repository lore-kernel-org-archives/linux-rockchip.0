Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C0E6C47422
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 12:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3ZbY82vFX3QrHPxrOPcekNq5CB8CVa0cZGCL0guEIk=; b=Lqhhikh0VbY+OC
	1Xhip9uIKB3i2rqG5M7MgjqyFtZGS/c2TGEhcTAfSikGnMwSU7CPxF/1z+zB6iy9afHJ2BoGERaM3
	Nqn7sWENzUZ4Rd5dSgc9e73kol5z6OxxjdehDBfaMQS+/6Q6gHe/Yft/CFGY0a9GkcQWOEGgLMzNS
	Ht3KWZs3JKSdD6vjxlG63J4Hy8R7T9MYhpncuxM0GzbI5BUFzwRm3N9dr5/l67+77FPGzles0Wel4
	oWQ2xou3tmpa0XY3dp7qibmwX2dg7RYMJAtuosX/bSrNlSQ48LEc86tBxQoOsq6h072rIcui5t7ti
	xQsCuMtTKb0Xa+9vyz1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTLlQ-000000049D4-3B1R;
	Fri, 26 Jan 2024 12:56:56 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTLlN-000000049Bx-0i6y
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 12:56:54 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40e5afc18f5so5186975e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jan 2024 04:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706273809; x=1706878609; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HNRJ344EIVqzGA3DHVgA976QKie0aE4RlEaXg0aggBQ=;
        b=XOQ+OM1Y2Fej/AgX90PlLSeSqpH96LVkohmlBmbG475BvAW1ai/nDH50fGREpvK7f2
         a49STdHrKeell9vjd96jrzb/y3rQaAXobYAwkfb/R9whgmxr+hgCuPDYp5zrnfBO30v9
         dfzYg8YTHkvjBF267qqYyKPGjSXI8n3xXBAXzD3UNp0DelyXYcrWbAXqn4Uk0GS40lAr
         fEPeZM2jpTcijcIUpa5BQ9ciFzILAeIdybXxiblSMjIrBEGPwsoyICj1MnsBycNgeV38
         Ht+bz9OL/I/JqqhhKPf5fdFfDhcwJ2pi+4HsY7GTK2FoWgIUYOe2R1ePrkKVq0rr7KKk
         eZMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706273809; x=1706878609;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HNRJ344EIVqzGA3DHVgA976QKie0aE4RlEaXg0aggBQ=;
        b=hXUedy7dDzWnGlhrIWSpNwMljIM0PjnUgNDPfeVhSmE0/pxLtGrw/9r6vOhNtDj+Hl
         iD3Q0/9Wg759ygJC00BIfIH7/0lLp6/xZYpMHZzuFwece7pxPJCgD0/b7WkyRlRS9u7k
         QOYeb2ex6fKj3bYXNEylNe7wPCKzyxMz5nbfI2OQZAU+AUmkqn+FN9YzrT6cZRo6kmeJ
         5e3zolkUbiqEy++vUfDfzPlrY8XWcZqiLGXH9wCFCry6O4jJd3YNOeE6xnqxaxyxYQ8C
         8IAyd0/OtP6eRb/R3TrWlKFwPmUt7eLslCUHEhO7RbyuxoXXd5uSjvD/bJffXdx8ThLx
         Av0g==
X-Gm-Message-State: AOJu0YxqqoUtj6y3K1++Ugr9m4jiFflMgzRkXs8AK3KQ6OVZvI0oMkcx
	xAWpHZ7pUwEwujJszSp7KXLym9MDXEy0PzWdpDJDqsWg6ZyQUvFmFYLtyo6cWO0=
X-Google-Smtp-Source: AGHT+IFW1on1e3KPvwtZV1QrTNsKMJ6DsqWgEG8INQGsIAXHxAYQSTtJKIOhhIjLHDupP5fMDN8aRQ==
X-Received: by 2002:a05:600c:1e1d:b0:40e:d310:1cac with SMTP id ay29-20020a05600c1e1d00b0040ed3101cacmr882705wmb.133.1706273809134;
        Fri, 26 Jan 2024 04:56:49 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id bg24-20020a05600c3c9800b0040d91fa270fsm1826870wmb.36.2024.01.26.04.56.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jan 2024 04:56:48 -0800 (PST)
Message-ID: <9b72b688-be63-464e-a5dc-cf6051ccee12@linaro.org>
Date: Fri, 26 Jan 2024 13:56:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Add OPP data for CPU cores on
 RK3588
Content-Language: en-US
To: Dragan Simic <dsimic@manjaro.org>, Alexey Charkov <alchark@gmail.com>
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
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <528a37d84cdd871e717b4ebf648bb8a7@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_045653_248726_B68018E9 
X-CRM114-Status: GOOD (  17.81  )
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

T24gMjYvMDEvMjAyNCAwODo0OSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IE9uIDIwMjQtMDEtMjYg
MDg6MzAsIEFsZXhleSBDaGFya292IHdyb3RlOgo+PiBPbiBGcmksIEphbiAyNiwgMjAyNCBhdCAx
MTowNeKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPiB3cm90ZToKPj4+IE9u
IDIwMjQtMDEtMjYgMDc6NDQsIEFsZXhleSBDaGFya292IHdyb3RlOgo+Pj4gPiBPbiBGcmksIEph
biAyNiwgMjAyNCBhdCAxMDozMuKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3Jn
Pgo+Pj4gPiB3cm90ZToKPj4+ID4+IE9uIDIwMjQtMDEtMjUgMTA6MzAsIERhbmllbCBMZXpjYW5v
IHdyb3RlOgo+Pj4gPj4gPiBPbiAyNC8wMS8yMDI0IDIxOjMwLCBBbGV4ZXkgQ2hhcmtvdiB3cm90
ZToKPj4+ID4+ID4+IEJ5IGRlZmF1bHQgdGhlIENQVXMgb24gUkszNTg4IHN0YXJ0IHVwIGluIGEg
Y29uc2VydmF0aXZlIAo+Pj4gcGVyZm9ybWFuY2UKPj4+ID4+ID4+IG1vZGUuIEFkZCBmcmVxdWVu
Y3kgYW5kIHZvbHRhZ2UgbWFwcGluZ3MgdG8gdGhlIGRldmljZSB0cmVlIHRvIAo+Pj4gZW5hYmxl
CgpbIC4uLiBdCgo+PiBUaHJvdHRsaW5nIHdvdWxkIGFsc28gbG93ZXIgdGhlIHZvbHRhZ2UgYXQg
c29tZSBwb2ludCwgd2hpY2ggY29vbHMgaXQKPj4gZG93biBtdWNoIGZhc3RlciEKPiAKPiBPZiBj
b3Vyc2UsIGJ1dCB0aGUga2V5IGlzIG5vdCB0byBjb29sIChhbmQgc2xvdyBkb3duKSB0aGUgQ1BV
IGNvcmVzIHRvbwo+IG11Y2gsIGJ1dCBqdXN0IGVub3VnaCB0byBzdGF5IHdpdGhpbiB0aGUgYXZh
aWxhYmxlIHRoZXJtYWwgZW52ZWxvcGUsCj4gd2hpY2ggaXMgd2hlcmUgdGhlIHNhbWUtdm9sdGFn
ZSwgbG93ZXItZnJlcXVlbmN5IE9QUHMgc2hvdWxkIHNoaW5lLgoKVGhhdCBpbXBsaWVzIHRoZSBy
ZXN1bHRpbmcgcG93ZXIgaXMgc3VzdGFpbmFibGUgd2hpY2ggSSBkb3VidCBpdCBpcyB0aGUgCmNh
c2UuCgpUaGUgdm9sdGFnZSBzY2FsaW5nIG1ha2VzIHRoZSBjb29saW5nIGVmZmVjdCBlZmZpY2ll
bnQgbm90IHRoZSBmcmVxdWVuY3kuCgpGb3IgZXhhbXBsZToKCW9wcDUgPSBvcHAoMkdIeiwgMVYp
ID0+IDIgQm9nb1dhdHQKCW9wcDQgPSBvcHAoMS45R0h6LCAxVikgPT4gMS45IEJvZ29XYXR0Cglv
cHAzID0gb3BwKDEuOEdIeiwgMC45VikgPT4gMS40NTggQm9nb1dhdHQKCVsgb3RoZXIgc3RhdGVz
IGJ1dCB3ZSBmb2N1cyBvbiB0aGVzZSAzIF0KCm9wcDUtPm9wcDQgPT4gLTUlIGNvbXB1dGUgY2Fw
YWNpdHksIC01JSBwb3dlciwgcmF0aW89MQpvcHA0LT5vcHAzID0+IC01JSBjb21wdXRlIGNhcGFj
aXR5LCAtMjMuMSUgcG93ZXIsIHJhdGlvPTIxLDYKCm9wcDUtPm9wcDMgPT4gLTEwJSBjb21wdXRl
IGNhcGFjaXR5LCAtMjcuMSUgcG93ZXIsIHJhdGlvPTM2LjkKCkluIGJ1cnN0IG9wZXJhdGlvbiAo
bm8gdGhlcm1hbCB0aHJvdHRsaW5nKSwgb3BwNCBpcyBwb2ludGxlc3Mgd2UgYWdyZWUgCm9uIHRo
YXQuCgpJTU8gdGhlIGZvbGxvd2luZyB3aWxsIGhhcHBlbjogaW4gYnVyc3Qgb3BlcmF0aW9uIHdp
dGggdGhlcm1hbCAKdGhyb3R0bGluZyB3ZSBoaXQgdGhlIHRyaXAgcG9pbnQgYW5kIHRoZW4gdGhl
IHN0ZXAgd2lzZSBnb3Zlcm5vciByZWR1Y2VzIApvcHA1IC0+IG9wcDQuIFdlIGhhdmUgc2xpZ2h0
IHBvd2VyIHJlZHVjdGlvbiBidXQgdGhlIHRlbXBlcmF0dXJlIGRvZXMgCm5vdCBkZWNyZWFzZSwg
c28gYXQgdGhlIG5leHQgaXRlcmF0aW9uLCBpdCBpcyB0aHJvdHRsZSBhdCBvcHAzLiBBbmQgYXQg
CnRoZSBlbmQgd2UgaGF2ZSBvcHA0IDwtPiBvcHAzIGJhY2sgYW5kIGZvcnRoIGluc3RlYWQgb2Yg
b3BwNSA8LT4gb3BwMy4KCkl0IGlzIHByb2JhYmxlIHdlIGVuZCB1cCB3aXRoIGFuIGVxdWl2YWxl
bnQgZnJlcXVlbmN5IGF2ZXJhZ2UgKG9yIApjb21wdXRlIGNhcGFjaXR5IGF2ZykuCgpvcHA0IDwt
PiBvcHAzIChsb25nZXIgZHVyYXRpb24gaW4gc3RhdGVzLCBsZXNzIHRyYW5zaXRpb25zKQpvcHA1
IDwtPiBvcHAzIChzaG9ydGVyIGR1cmF0aW9uIGluIHN0YXRlcywgbW9yZSB0cmFuc2l0aW9ucykK
ClNvbWUgcGxhdGZvcm1zIGhhZCB0aGVpciBoaWdoZXIgT1BQcyB3aXRoIHRoZSBzYW1lIHZvbHRh
Z2UgYW5kIHRoZXkgCmZhaWxlZCB0byBjb29sIGRvd24gdGhlIENQVSBpbiB0aGUgbG9uZyBydW4u
CgpBbnl3YXksIHRoZXJlIGlzIG9ubHkgb25lIHdheSB0byBjaGVjayBpdCBvdXQgOikKCkFsZXhl
eSwgaXMgaXQgcG9zc2libGUgdG8gY29tcGFyZSB0aGUgY29tcHV0ZSBkdXJhdGlvbiBmb3IgJ2Ro
cnlzdG9uZScgCndpdGggdGhlc2Ugdm9sdGFnZSBPUFAgYW5kIHdpdGhvdXQgPyAod2l0aCBhIHBl
cmlvZCBvZiBjb29sIGRvd24gYmV0d2VlbiAKdGhlIHRlc3QgaW4gb3JkZXIgdG8gc3RhcnQgYXQg
dGhlIHNhbWUgdGhlcm1hbCBjb25kaXRpb24pID8KCgoKPiBXaGVuIHRoZSBDUFUgbG9hZCBpc24n
dCBidXJzdHkgYnV0IHN0ZWFkeSBhbmQgaGlnaCwgd2UgZG9uJ3QgcmFjZSB0bwo+IGlkbGUsIGJ1
dCBydW4gYSBtYXJhdGhvbiBpbnN0ZWFkLCBzbyB0byBzcGVhay4gOikKCi0tIAo8aHR0cDovL3d3
dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFS
TSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xp
bmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRl
ciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
