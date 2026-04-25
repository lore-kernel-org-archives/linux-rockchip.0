Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 317F9FF885C
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 18:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPpHqRzHCSxm+vSfW8Ffljx720gK1FvRRsluJpUsqyU=; b=x9v81uqJxsmAVA
	ndEgFxdkyXTMhH6yucWiHyHeg9iDFgqARNiVb/dr1098zXnqRIUOGM1cs61JFWD7fUY+NrKNGd7Jd
	IdDptg5dY/8rAa30PZyzr9VIPck02nh7TD2/hBEFxcFZiD8Qw7euBvMGnTOkzMuPgcJ0hq1AmFMJA
	v6iYJtGvJjLm94+7Nb7JPgZhyaDYlUHgnqWzAqlBkqrTzsK/cFNGZROug6Gf/DoCKDDRHFdwvG9gC
	GksVKjhOPMtzseCpgVK0AjLpGFScten5vGFptlVd+CZm76el1R4VKLQ2cfg5ogrBF/4Unftn5WT++
	RHIGq34Ak1m8yAjXL+HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGhSN-0000000Ehj8-0kZQ;
	Sat, 25 Apr 2026 18:10:19 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGhSK-0000000EhiA-1UDE
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Apr 2026 18:10:17 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-8aca4e14411so109338776d6.3
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 11:10:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777140614; cv=none;
        d=google.com; s=arc-20240605;
        b=MqEESkxvU28TkJ4bTHxns4Md8N0ZBuvP7ZeOikXe+Q4B/xQrU6ANVe8BhxFj6PwA5Q
         qCtXJE3cgXRwxym5IiUSA1UwqS7jejeASo5WFTo3GViLC1phWgqPdbjp9AXcfdbXOmAT
         qZ+pWfQ1Dh+MwnpQ9CkEsc7q4r6HFxfe1gVeumvcTDzjOBlOMBUxPgvysecM2uq9O65V
         CHWAyEPPiafaFKVM4yRZUUUW13JOd3Tmgdl1ilF3o9Y8RfhITtBEV5cJx1OzMZ2DfhlK
         vFNqKbhD3ZwjXiYEM0RKIUrUQtXFHRIq7KFD6356ZloBzQksYmNG3tA+3LES3GwsHqN6
         5xdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HcPTXTJmSyH/IMfXTVMA724OkR4f1Jn719XgrTAy0hs=;
        fh=F+zmQPHNoFZpVDHzYkIGR6ornCPX1Mj5GuLCutdqJwU=;
        b=Y48knubRI1rlL/UwmXOJaItT2ZSdpwuzNqGyAPKY1gYQsybvsctuNDnued8Fk4tlzQ
         e+M1I71qdIWvKJsp8Wkh6tRLjjjMDREnbh451hy70z5VK/YbELMq/fV+LciwkBnLKu0r
         1WUqveC+2fWVPcPywGBH/AMqrbHhEZtQ/UQBQyyokCZX+pmT1ijj4/IxJJBABWzEyYDa
         wLZFYTY9ChKSjiS1lm9/1PZH7ewHGawxh/bQDQqVCfROdhwDH2EGD4qHtsEyQKlco71j
         8UsDhQNy1pbvIltUzUu8G4Av4n6gADQuU/gyUzjqwavjCP8ZkXcE3H785oMV4SR8Hhq9
         QL2g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1777140614; x=1777745414; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HcPTXTJmSyH/IMfXTVMA724OkR4f1Jn719XgrTAy0hs=;
        b=dUUiwnvdrl0a7sZvoVk6+rNqpR/+PwVD8l/2vkHEC9hL/EMjv6ZdTey0Vc97iaAEOW
         QE6W3iTuJkIaQNYhsPUYCimY9iRdD2V4hFmOhwNG4wIkaHWJeoNy+pOjg5hhf/siZ5rr
         y4bejf9ywcDtGhUDLqS5aGY5u6/NNXOYrbSmHpT6CBGvHUTfeuM0UHr0rKw0qBztqdjQ
         asRrjIlPBuo1Dby7he6zWkj8DTCkk4tftz2D0pXGKtMW4cOJnRhGg4/AF15VIAzwKjEG
         D5afpBI1vPskaVDUooqQ4xeYRiWkCeMZlsFHiNlfY0LJ/XnypAQwzEUWR1ehbPOb2a0z
         YJ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777140614; x=1777745414;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HcPTXTJmSyH/IMfXTVMA724OkR4f1Jn719XgrTAy0hs=;
        b=dkiqmw8nZiNIXsnHWwwBDecf5FWgonjN3p4BgG5lUSX9FsLiNWJWevCIpGo9ADvRuu
         Jqf+Pt+kuyHaBZrU3NcLhqYFdvoC4zd4Stc58CPvvA8T/JorZBehaH41Ronc+Dvj546q
         E/jpbsNuDvoBDCYtcAhmJ7DaXsTR9z42hiK1W12+PcF18JFjDsx6/YtbYUvFUpZOb3eQ
         DJFqChHv3Vy7js2Sibp5p/FzC93+BuUgz8HTPl+VtiVQo5pz3ow3hin36s3BsjdCbljS
         +3k/SFSS2tf0xYsUjMDjh6mDLblZJD8RG8V+QOJ0Yrq++wHhj7XoZzWSdVXVyO4kdlVS
         xVKw==
X-Forwarded-Encrypted: i=1; AFNElJ9ejK0PP0DMfeMyq3awFdtkgUKN34K/kjooXNzQ9rlAhB5AdFnAjjZDRnwybqtZ6nLT09fTPApmyOnS/FLeSA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyEpyLp2LwNFb495Flq5eUCfrllxTlarkhDWHmNNOwR1I/Om7/V
	+kIqAOc/8KlmN0VGtBTNoSH69tewlUASJUpl/zDz4IRIxHwy/Yk0io1YfZyL2IafS55w8JNpWCo
	ZtFiMWgIM8b9EgbeBLIeB4EGZifkuYPG6EEKozUWErw==
X-Gm-Gg: AeBDieutDJG2U/Mrx+39Ocuo4b9vdugP6DRwKA8bqqO4A7ufMT5R0OPr/bKRac3PQmR
	YRCttYTlDRlnVf8S7gyjGzi/qB2lDfgeZw8jy5/czdpI6gmIh+04LlLsUtFRz8cWTpE5XoHWIiL
	VEQN5ODax0da2DHFQZXjA+TLyKnOtKxZVzqOaNkkGiAfavCT2VW0y0TiPS3sopBz25mInT76k/k
	akdJ3PIwq2MDZ0aVZoqjfVVnL0ITzzpYNX1yS+RJ4m1EKYgPtRIFendKk9WFuwANtzJePuCkdVm
	9SsyxDzvlJZfttRjsBii6cuyFFYeNnLoUXMvwmBDuY0YVrlrzFO01mhLXZjS9RRAkR+LNkUQf+y
	OO2TQ
X-Received: by 2002:a05:6214:e85:b0:8b1:f069:3f67 with SMTP id
 6a1803df08f44-8b1f069473cmr348052086d6.27.1777140614077; Sat, 25 Apr 2026
 11:10:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260425031011.2529364-1-dennis@ausil.us> <20260425031011.2529364-4-dennis@ausil.us>
 <20260425112844.GB2964234@killaraus.ideasonboard.com> <45evt7lkzuykoqsc2z27hsvm7fasmn6sr6gbjtdnme54jauehf@dmvon2o5emzd>
In-Reply-To: <45evt7lkzuykoqsc2z27hsvm7fasmn6sr6gbjtdnme54jauehf@dmvon2o5emzd>
From: Dennis Gilmore <dennis@ausil.us>
Date: Sat, 25 Apr 2026 13:10:02 -0500
X-Gm-Features: AQROBzChrS7gVlPnev2Qw5PvTHOSVj5tSgsWsZxHd0olXAmf20o-DIbcxoWnR-Y
Message-ID: <CAABkxwt1=n=CnrVfCcw+EHjqjfsLkp67POk451fV8Gqw4vdnQw@mail.gmail.com>
Subject: Re: [PATCH v8 3/6] drm/bridge: simple: Add the Lontium LT8711UXD
 DP-to-HDMI bridge
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Heiko Stuebner <heiko@sntech.de>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maxime Ripard <mripard@kernel.org>, Alexey Charkov <alchark@gmail.com>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_111016_431425_FA383E1E 
X-CRM114-Status: GOOD (  29.13  )
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

T24gU2F0LCBBcHIgMjUsIDIwMjYgYXQgOToyNOKAr0FNIERtaXRyeSBCYXJ5c2hrb3YKPGRtaXRy
eS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPiBPbiBTYXQsIEFwciAyNSwg
MjAyNiBhdCAwMjoyODo0NFBNICswMzAwLCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+ID4gSGkg
RGVubmlzLAo+ID4KPiA+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgo+ID4KPiA+IE9uIEZyaSwg
QXByIDI0LCAyMDI2IGF0IDEwOjEwOjA4UE0gLTA1MDAsIERlbm5pcyBHaWxtb3JlIHdyb3RlOgo+
ID4gPiBUaGUgTG9udGl1bSBMVDg3MTFVWEQgaXMgYSBoaWdoIHBlcmZvcm1hbmNlIHR3byBsYW5l
IFR5cGUtQy9EUDEuNAo+ID4gPiB0byBIRE1JMi4wIGNvbnZlcnRlciwgZGVzaWduZWQgdG8gY29u
bmVjdCBhIFVTQiBUeXBlLUMgc291cmNlIG9yCj4gPiA+IGEgRFAxLjQgc291cmNlIHRvIGFuIEhE
TUkyLjAgc2luay4KPiA+Cj4gPiBBcyBmYXIgYXMgSSBjYW4gdGVsbCwgdGhlIExUODcxMVVYRCBo
YXMgYW4gSTJDIGNvbnRyb2wgaW50ZXJmYWNlLgo+ID4gU2hvdWxkbid0IGl0IGJlIGFuIEkyQyBk
ZXZpY2UgPwo+Cj4gRnJvbSB0aGUgZGF0YXNoZWV0Ogo+Cj4gVGhlIGRldmljZSBpcyBjYXBhYmxl
IG9mIGF1dG9tYXRpYyBvcGVyYXRpb24gd2hpY2ggaXMKPiBlbmFibGVkIGJ5IGFuIGludGVncmF0
ZWQgbWljcm9wcm9jZXNzb3IgdGhhdCB1c2VzIGFuCj4gZW1iZWRkZWQgU1BJIGZsYXNoIGZvciBm
aXJtd2FyZSBzdG9yYWdlLiBTeXN0ZW0gY29udHJvbAo+IGlzIGFsc28gYXZhaWxhYmxlIHRocm91
Z2ggdGhlIHVzZSBvZiBhIGRlZGljYXRlZAo+IGNvbmZpZ3VyYXRpb24gSTJDIHNsYXZlIGludGVy
ZmFjZS4KPgo+IE15IGd1ZXNzIHdhcyB0aGF0IGl0IGNhbiBlaXRoZXIgYmUgYW4gSTJDIGRldmlj
ZSBvciBpdCBjYW4gZnVuY3Rpb24gYXMgYQo+IHNpbXBsZSBwbGF0ZGV2IHdpdGggbm8gSTJDIGNv
bnRyb2xzLiBQbGVhc2UgY29ycmVjdCBtZSBpZiBteQo+IHVuZGVyc3RhbmRpbmcgd2FzIHdyb25n
Lgo+Cj4gQnV0IG5vdyBsb29raW5nIGF0IHRoZSBzY2hlbWF0aWNzLCBpdCBzZWVtcyB0byBiZSBj
b25uZWN0ZWQgdG8gSTJDNi4KPiBXaGljaCBtZWFucyB0aGF0IGl0IHNob3VsZCBiZSBkZXNyaWJl
ZCAoYW5kIGJvdW5kKSBhcyBzdWNoLgoKSGkgRG1pdHJ5IGFuZCBMYXVyZW50LAoKV2hpbGUgdGhl
IHNjaGVtYXRpYyBzaG93cyB0aGF0IGl0IGNhbiB1c2UgSTJDIGFuZCBoYXMgYmVlbiB3aXJlZCB1
cCwKaXQgYWxzbyBzaG93cyB0aGF0IGJvdGggTU9ERV9TRUwgYW5kIEkyQ19BRERSIGhhdmUgdW5w
b3B1bGF0ZWQgMTBrCnJlc2lzdG9yczsgYXMgYSByZXN1bHQsIE1PREVfU0VMIGlzIGNvbm5lY3Rl
ZCBkaXJlY3RseSB0byBHTkQsIHB1dHRpbmcKdGhlIGJyaWRnZSBpbiBhdXRvbm9tb3VzIG1vZGUu
IEkgY29uZmlybWVkIHRoaXMgYnkgcnVubmluZyBgaTJjZGV0ZWN0Ci1yIC15IDZgLCB3aXRoIHRo
ZSBvbmx5IGRldmljZSBvbiB0aGUgYnVzIGJlaW5nIHRoZSBIWU04NTYzIFJUQyBhdAoweDUxLiBX
aXRob3V0IHJld29ya2luZyB0aGUgYm9hcmQsIHRoZSBkZXZpY2UgaXMgbm90IGRpcmVjdGx5CmNv
bnRyb2xsYWJsZSBhbmQganVzdCBydW5zIGF1dG9ub21vdXNseS4KCkRlbm5pcwoKPiA+Cj4gPiA+
IFNpZ25lZC1vZmYtYnk6IERlbm5pcyBHaWxtb3JlIDxkZW5uaXNAYXVzaWwudXM+Cj4gPiA+IFJl
dmlld2VkLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29t
bS5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zaW1wbGUtYnJp
ZGdlLmMgfCA1ICsrKysrCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4g
PiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3NpbXBsZS1icmlk
Z2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc2ltcGxlLWJyaWRnZS5jCj4gPiA+IGluZGV4
IDhhYTMxY2EzYzcyZC4uNDJjMWYzZDViYTBjIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vYnJpZGdlL3NpbXBsZS1icmlkZ2UuYwo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
YnJpZGdlL3NpbXBsZS1icmlkZ2UuYwo+ID4gPiBAQCAtMjcwLDYgKzI3MCwxMSBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBzaW1wbGVfYnJpZGdlX21hdGNoW10gPSB7Cj4gPiA+
ICAgICAgICAgICAgIC5kYXRhID0gJihjb25zdCBzdHJ1Y3Qgc2ltcGxlX2JyaWRnZV9pbmZvKSB7
Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgLmNvbm5lY3Rvcl90eXBlID0gRFJNX01PREVfQ09O
TkVDVE9SX0hETUlBLAo+ID4gPiAgICAgICAgICAgICB9LAo+ID4gPiArICAgfSwgewo+ID4gPiAr
ICAgICAgICAgICAuY29tcGF0aWJsZSA9ICJsb250aXVtLGx0ODcxMXV4ZCIsCj4gPiA+ICsgICAg
ICAgICAgIC5kYXRhID0gJihjb25zdCBzdHJ1Y3Qgc2ltcGxlX2JyaWRnZV9pbmZvKSB7Cj4gPiA+
ICsgICAgICAgICAgICAgICAgICAgLmNvbm5lY3Rvcl90eXBlID0gRFJNX01PREVfQ09OTkVDVE9S
X0hETUlBLAo+ID4gPiArICAgICAgICAgICB9LAo+ID4gPiAgICAgfSwgewo+ID4gPiAgICAgICAg
ICAgICAuY29tcGF0aWJsZSA9ICJwYXJhZGUscHMxODVoZG0iLAo+ID4gPiAgICAgICAgICAgICAu
ZGF0YSA9ICYoY29uc3Qgc3RydWN0IHNpbXBsZV9icmlkZ2VfaW5mbykgewo+ID4KPiA+IC0tCj4g
PiBSZWdhcmRzLAo+ID4KPiA+IExhdXJlbnQgUGluY2hhcnQKPgo+IC0tCj4gV2l0aCBiZXN0IHdp
c2hlcwo+IERtaXRyeQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
