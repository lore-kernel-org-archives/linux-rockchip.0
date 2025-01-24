Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56765C02182
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jan 2025 00:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRQdMked8mLhAzxYOkUqHe8pjyfB665x3qimYINlGvk=; b=jwDzjREnYJZver
	miT6iRmzCdM3NpsVsOb7r0HWdulMKpnSXaFCdz/w6S1YsQ91BXM2Mf1VCxzCrfPknw87Dvd6ieAVq
	Hwzh5RXVlXkzK+BVjKLr0C4sqYNnh6FywiYAzUZpzy+r+zWAxp9ow/RrGsXWbAFJEDbSBmGTc2djn
	lxzNsTka7DcBn+Kb3X6GS6cJoaO/sepIL9U8Tqpd4se/76duzz13KkmaOT3Mh/FTzahagyy36lpL/
	Ok+3gmjYodlri1aRZtpm35FrxQU3zBtn6W+yZCNedorCFeeJBk+taJadTkEyuY+kx43KX9vXYAToO
	slUeoLSQUmwfDt3tZ5bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tb7iE-0000000Dc3P-2sdv;
	Fri, 24 Jan 2025 00:38:18 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tb7iC-0000000Dc30-3wWe
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Jan 2025 00:38:18 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5dc052246e3so3266080a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2025 16:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737679094; x=1738283894; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jwUdhzUcT/+g0Yt1m9YM5C5e54+Sg1OVGx+QoUxel7Y=;
        b=DelMebOL3ZtqdkqQu4TBgYuu92JpcUE68kfWYN8j/0v7zbqfV7cmJMnCU6MjumQttp
         GtrofIQXU2oLdRh77HMEKKWQyMBOaHZU3bieSJzvt3rNnuJR3NnqXmJ2SNhqsffgd/U2
         RMCIY6TpUVSQmxRPxDMYcw4sAtVeSqiQVMLs8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737679094; x=1738283894;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jwUdhzUcT/+g0Yt1m9YM5C5e54+Sg1OVGx+QoUxel7Y=;
        b=rQJg3r/fBg6Z+P68J0pC/3Wd2rcngqtPzdC9CSoMHhdhXATwacGkjL3FFJfYrxFpiG
         q7c+d8tdjDyAKpJTZScl04IxY2GnJsxQnV5Om5KnDJOdWEEBPtzqlQdmgJjwdwvnNOuA
         vbSNJDdHFhbf+5JEC+5mdJNVondImzjKAWDYJC+mNvP06nT+TRo+aCpr7LPKdt7XeukD
         kkc9NiifAUV9KbpFDSqi3njQg2rLoBe2XQZaMakoZvFEs9pCcA75mf/0y/dGpItf2p8x
         zNKy9k0doyX8GCF9UHs9TEzqzOu4dwPgGKU/T8QV+GO7dpecFaK8uLtVpqDqkvKXabWA
         W/cA==
X-Forwarded-Encrypted: i=1; AJvYcCV1Ux56wGzHZvV2WJ3dTQzqI+Bt+CRR8XzCshIGRiY2hfCuWeVXo/4scfY+XnNjUk07tbkjCSbuBGrMY+UmKg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yys1rfYxH7HasC+vTW9UXcdXuO//8sZSZFW+SLpwqvsRzQQITOq
	dmTS5GMhDhiwvmxbt0X6jRbopRF8fseLDDhUW/y8kBpnb0VUEBCXcZSmwTV9Ja9Whu5CJpKds3i
	5RXBd
X-Gm-Gg: ASbGncsp6EoTzUNFQ0DCdfcU4j4N6XLkUt+BDfc9hVc5LgJgx0jOqwBpUBVtQe0BHKu
	BGrsXdP6uAhEG+P0ETKW+XTXo9rtrvOlApem1dHvN0JedFMovFi5KuRGf9TFfhkHMqz/p6RkOdq
	pEBOjH6PxixqqCNGnIMOAjLGNON7xK3jlGi2DspYugLxWO5NMPa0E5w3OkzVZXqkFdS6PVZK/9I
	CCRZ0ojzUbkVKRb9EH0U/kdmAihhuCKlbnOcwjZ75gb2MxwzrIwhL0x2L56PIcdGcWs3Bf4J5V9
	KoclB0pX64t6fktnbHmpll+wXJWflqpwgMR90jd5DCcv
X-Google-Smtp-Source: AGHT+IGV4+n8HiI58YKztAUf3ELlbM4bvW5QvXqNo67JlFXPPgpkP2TaQ4oA6jJ2CmMeAn3bNZN87A==
X-Received: by 2002:a05:6402:50d3:b0:5d9:f362:1686 with SMTP id 4fb4d7f45d1cf-5db7d354851mr24311914a12.21.1737679094193;
        Thu, 23 Jan 2025 16:38:14 -0800 (PST)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com. [209.85.208.51])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc186d8ad3sm354774a12.71.2025.01.23.16.38.11
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 16:38:13 -0800 (PST)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5dc052246e3so3266005a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2025 16:38:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV7Bmi9TFG9Wjx6qZodAd1tqJTq+W6QrHI0uqBU9IDqliApdgB3FAYTRU/IDyDvZkFmPRSFqhmw3+nlAhgw/g==@lists.infradead.org
X-Received: by 2002:a05:651c:1309:b0:300:3a15:8f0d with SMTP id
 38308e7fff4ca-3072cb284e5mr99531441fa.34.1737678628894; Thu, 23 Jan 2025
 16:30:28 -0800 (PST)
MIME-Version: 1.0
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-13-damon.ding@rock-chips.com> <rwn3g7tqgjnc525cjqtivgfgedhooiayn5nujng7bdzazgqhle@wfpuvoyr2tii>
In-Reply-To: <rwn3g7tqgjnc525cjqtivgfgedhooiayn5nujng7bdzazgqhle@wfpuvoyr2tii>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 23 Jan 2025 16:30:17 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WKsA9fcq-LzGcYmgbMuMLUp5SMggpzBzZnvd3sxGf9BQ@mail.gmail.com>
X-Gm-Features: AWEUYZmXU1D9ya-D7zW5B92vNI1k79fpY-WVkms-sf4EzP7id3527uV9rKgvOPs
Message-ID: <CAD=FV=WKsA9fcq-LzGcYmgbMuMLUp5SMggpzBzZnvd3sxGf9BQ@mail.gmail.com>
Subject: Re: [PATCH v6 12/14] drm/edp-panel: Add LG Display panel model LP079QX1-SP0V
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_163816_977698_882F1E8E 
X-CRM114-Status: GOOD (  21.16  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, hjc@rock-chips.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBUaHUsIEphbiAyMywgMjAyNSBhdCAzOjMx4oCvQU0gRG1pdHJ5IEJhcnlzaGtvdgo8
ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIFRodSwgSmFuIDIzLCAy
MDI1IGF0IDA2OjA3OjQ1UE0gKzA4MDAsIERhbW9uIERpbmcgd3JvdGU6Cj4gPiBUaGUgcmF3IGVk
aWQgZm9yIExQMDc5UVgxLVNQMFYgcGFuZWwgbW9kZWwgaXM6Cj4gPgo+ID4gMDAgZmYgZmYgZmYg
ZmYgZmYgZmYgMDAgMTYgODMgMDAgMDAgMDAgMDAgMDAgMDAKPiA+IDA0IDE3IDAxIDAwIGE1IDEw
IDBjIDc4IDA2IGVmIDA1IGEzIDU0IDRjIDk5IDI2Cj4gPiAwZiA1MCA1NCAwMCAwMCAwMCAwMSAw
MSAwMSAwMSAwMSAwMSAwMSAwMSAwMSAwMQo+ID4gMDEgMDEgMDEgMDEgMDEgMDEgZWEgNGUgMDAg
NGMgNjAgMDAgMTQgODAgMGMgMTAKPiA+IDg0IDAwIDc4IGEwIDAwIDAwIDAwIDE4IDAwIDAwIDAw
IDEwIDAwIDAwIDAwIDAwCj4gPiAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAw
MCBmZSAwMCA0Ywo+ID4gNTAgMzAgMzcgMzkgNTEgNTggMzEgMmQgNTMgNTAgMzAgNTYgMDAgMDAg
MDAgZmMKPiA+IDAwIDQzIDZmIDZjIDZmIDcyIDIwIDRjIDQzIDQ0IDBhIDIwIDIwIDIwIDAwIDNm
Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogRGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2NrLWNoaXBz
LmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1lZHAuYyB8IDgg
KysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4KPiBQbGVhc2Ug
dXNlIGdldF9tYWludGFpbmVycy5wbCB3aGVuIGNvbXBpbGluZyBUby9DYyBsaXN0cy4gQWRkZWQg
RG91Z2xhcwo+IHRvIENDIG1hbnVhbGx5Lgo+Cj4gT3IsIGJldHRlciwgc3BsaXQgaXJyZWxldmFu
dCBwYXRjaGVzIHRvIHNlcGFyYXRlIHNlcmllcy4KPgo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtZWRwLmMgYi9kcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFu
ZWwtZWRwLmMKPiA+IGluZGV4IGY4NTExZmU1ZmIwZC4uNzdlM2ZkM2VkMTYwIDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLWVkcC5jCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vcGFuZWwvcGFuZWwtZWRwLmMKPiA+IEBAIC0xODA4LDYgKzE4MDgsMTIgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBwYW5lbF9kZWxheSBkZWxheV8yMDBfMTUwX2U1MCA9IHsKPiA+ICAg
ICAgIC5lbmFibGUgPSA1MCwKPiA+ICB9Owo+ID4KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHBh
bmVsX2RlbGF5IGRlbGF5XzUwXzUwMF9lMjAwID0gewo+ID4gKyAgICAgLmhwZF9hYnNlbnQgPSA1
MCwKPiA+ICsgICAgIC51bnByZXBhcmUgPSA1MDAsCj4gPiArICAgICAuZW5hYmxlID0gMjAwLAo+
ID4gK307CgpXb3csIGhwZF9hYnNlbnQgaXMgNTBtcy4gVGhhdCdzIGV4Y2VsbGVudCEKCkkgd2Fz
IGN1cmlvdXMgaWYgdGhpcyB3YXMgcmVhbGx5IGNvcnJlY3Qgc2luY2UgaXQncyB0aGUgbG93ZXN0
IEkndmUKc2VlbiwgYnV0IEkgc2VhcmNoZWQgdGhlIGludGVybmV0IGFuZCBmb3VuZCBhIGRhdGFz
aGVldCB0aGF0IGNvbmZpcm1zCml0LiBDcmF6eS4gQWx0aG91Z2ggbXkgZGF0YXNoZWV0IGhhcyB0
aGF0IHdob2xlIHNlY3Rpb24gZ3JheWVkIG91dCBhbmQKc2F5cyAiTWVhc3VyZW1lbnQgbm90IGF2
YWlsYWJsZSIuIEhvdyB3b3JyaWVkIHNob3VsZCBiZSBhYm91dCB0aGF0PyBJCmd1ZXNzIGlmICJo
cGRfYWJzZW50IiBvZiA1MCBldmVudHVhbGx5IGRvZXNuJ3Qgd29yayBpdCBjYW4gYWx3YXlzIGJl
CmluY3JlYXNlZC4KCkxvb2tpbmcgYXQgdGhhdCBkYXRhc2hlZXQgKGFzc3VtaW5nIHlvdSBjYW4g
ZmluZCB0aGUgc2FtZSBvbmUpLCBJCndvbmRlciBob3cgeW91IGhhbmRsZSB0aGUgVDQgMTIwbXMg
cmVxdWlyZW1lbnQuIEl0IGxvb2tzIGxpa2UgdGhhdCdzCnRoZSB0aW1lIGZyb20gdGNvbiByZXNl
dCAod2hpY2ggaXMgbmVhcmx5IHBvd2VyIG9uKSB1bnRpbCB5b3UncmUKYWxsb3dlZCB0byBwdXQg
dmFsaWQgZGF0YSBvbiB0aGUgcGFuZWwuIEkgX3RoaW5rXyB5b3UgY291bGQgbWVldCB0aGUKcmVx
dWlyZW1lbnQgdmlhIHNldHRpbmcgYHBvd2VyZWRfb25fdG9fZW5hYmxlYCB0byAzMjAgdGhvdWdo
LCByaWdodD8KLi4ub3IgbWF5YmUgMzM1IHRvIGhhbmRsZSB0aGUgbWF4aW11bSB2YWx1ZSBvZiAi
dGNvbl9yZXNldCIgKG5vIGlkZWEKaG93IHlvdSBjb250cm9sIHRoaXMgc2lnbmFsKS4gSWYgSSBy
ZW1lbWJlciBjb3JyZWN0bHkgKGl0J3MgYmVlbiBhCndoaWxlKSwgdGhpbmdzIHdpbGwgYWxyZWFk
eSBiZSBjbG9ja2luZyBidXQgb3V0cHV0dGluZyBibGFjayB3aGVuIHRoZQpwYW5lbCdzICJlbmFi
bGUiIGZ1bmN0aW9uIGlzIGNhbGxlZC4gQWZ0ZXIgdGhlIGZ1bmN0aW9uIGlzIGNhbGxlZCB0aGVu
CndlJ2xsIHR1cm4gb24gdGhlIGJhY2tsaWdodCAoYW5kIHN0aWxsIG91dHB1dHRpbmcgYmxhY2sp
IGFuZApldmVudHVhbGx5IHdlJ2xsIHB1dCB2YWxpZCBkYXRhLiBTbyBhcyBsb25nIGFzIHlvdSBj
b25zaWRlciB0aGUKY29udGludWVkIG91dHB1dCBvZiBibGFjayBhcyAidmFsaWQgZGF0YSIgdGhl
biB0aGUgdGltaW5nIGRpYWdyYW0gaXMKc2F0aXNmaWVkLgoKQlRXOiBkb24ndCB5b3UgYWxzbyBu
ZWVkIGEgMjAwIG1zICJkaXNhYmxlIj8KCgo+ID4gICNkZWZpbmUgRURQX1BBTkVMX0VOVFJZKHZl
bmRfY2hyXzAsIHZlbmRfY2hyXzEsIHZlbmRfY2hyXzIsIHByb2R1Y3RfaWQsIF9kZWxheSwgX25h
bWUpIFwKPiA+ICB7IFwKPiA+ICAgICAgIC5pZGVudCA9IHsgXAo+ID4gQEAgLTE5NTUsNiArMTk2
MSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZWRwX3BhbmVsX2VudHJ5IGVkcF9wYW5lbHNbXSA9
IHsKPiA+ICAgICAgIEVEUF9QQU5FTF9FTlRSWSgnQycsICdTJywgJ1cnLCAweDExMDAsICZkZWxh
eV8yMDBfNTAwX2U4MF9kNTAsICJNTkI2MDFMUzEtMSIpLAo+ID4gICAgICAgRURQX1BBTkVMX0VO
VFJZKCdDJywgJ1MnLCAnVycsIDB4MTEwNCwgJmRlbGF5XzIwMF81MDBfZTUwLCAiTU5CNjAxTFMx
LTQiKSwKPiA+Cj4gPiArICAgICBFRFBfUEFORUxfRU5UUlkoJ0UnLCAnVCcsICdDJywgMHgwMDAw
LCAmZGVsYXlfNTBfNTAwX2UyMDAsICJMUDA3OVFYMS1TUDBWIiksCgpJIGRvbid0IGxvdmUgdGhh
dCB0aGUgSUQgaXMgMHgwMDAwLiBUaGF0IG1ha2VzIG1lIG5lcnZvdXMgdGhhdCB0aGUKcGFuZWwg
dmVuZG9yIGlzbid0IHNldHRpbmcgdGhlIElEIHByb3Blcmx5LiAuLi5idXQgYXQgbGVhc3QgdGhl
IHN0cmluZwptYXRjaGVzIGluIHRoZSBFRElEIHNvIGhvcGVmdWxseSB0aGF0IHdpbGwgYmUgZW5v
dWdoIHRvIHVuaXF1ZWx5CmlkZW50aWZ5IHRoaW5ncy4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
