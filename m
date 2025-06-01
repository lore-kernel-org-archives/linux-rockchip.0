Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CED51C54FB3
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Jun 2025 06:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwB+6PwduDYtSF6MH0wwmk2XuSqLV6PE+32HWcoE424=; b=pS+hJO/V/ucEUC
	oSIJDQ741/fFwXs59HH5Z7oN57XlshMWvdFH59pNGq2plRmlj5Bz9vmiXAH54EbS1ae8ACHXXn1tu
	BrcOFv/fH3zBzSUPKxbbCnPFe4E7oJukKzwKJVjNV80AnUipeB/pzWkCF+cjiCgRmBPSoMONqkRUv
	Uw6/BXTTK/187UtwOhhQAfP9cIvsTqCGjY5urJhM/mPQ63dibwyFygIBVS7qbvGhMO4U9Ojo33L8P
	srGKUAdFs6bTw1+C62h3iROLkm1wRWILHGqUiioIBIAY3G2FF3t13mGXalXc7SjEoFiuiIkWR+saV
	4u++rGu8Oi+5kL0CK5ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLcNo-0000000508o-3xLO;
	Sun, 01 Jun 2025 06:41:24 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLcNk-00000005083-43aG
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Jun 2025 06:41:22 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-70f862dbeaeso33352537b3.1
        for <linux-rockchip@lists.infradead.org>; Sat, 31 May 2025 23:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1748760079; x=1749364879; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CDv2NwLqpacBBYcKaq5onzHq7Gle/gc1PiMFPCdKyB0=;
        b=DFDjNzmRLYLLUyluc/SJmcdgRdY/wPk5rPnMdWN4x6wNr46mfTCnxECypq0tTcEdSR
         Mo5VOw6o+QL5E++amvMCwum4rGyDo3rzKnKh4RGZ2nT483R/ShKQDKq2HWxgyeK9pndt
         DIKgxPW2gCwvbmWdV33fgn0YBJWs9muOda134rDw2fy9kLTvPoxXLSntsiytvlKMjLNF
         5khmGKLKKoHs7j2TnBLIvZKDxXQY+pqyF0kUlUaEzqqjgcxoBf1B0lX/MoDsWtRFZSbv
         I/hfftKLXFPIZUdTtIELy6duiOoJCJmrPzXfUQDX1qyqfM/Pkg2p74aH+cnx+zN5b4TD
         kekw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748760079; x=1749364879;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CDv2NwLqpacBBYcKaq5onzHq7Gle/gc1PiMFPCdKyB0=;
        b=id/kSpxcvYrUCdPtO0x8GMMuR+qdcM6UYpQX6Y/n8flrPq2yJXcbNenyxyrkTPc2ma
         sxbK1an7efG7iYVUDbm/jv7Cl/Rto9bgIB7y3Poq6AJzBqx+r6dwbW/BMJUCXHlr4/zB
         kbLkvNJqzAqa6scEdBIpR+9okSdR3Tq2pnVMO/aohk+92f7VxE1Bs2PiY7wOpHIMkqoe
         +jZygsYXLuaexrx79zrDtHMTgzBA8jGpWvQGDA36QyTJmAFTBeR0TtronL93Y5a1zmL3
         aFJ5rmBDP6kDuT1ZjKHZ4cmWUjOCTwjcGc8qLJBgtgBYjUoxPHPJ0nXD8iErwCgBrqSY
         Dv7A==
X-Forwarded-Encrypted: i=1; AJvYcCVyQJSZTULWTlDBcuZah5wYTxrlQGMRAOfj48wwKAydhnlaJF+Fo2sZU61otyfSc7cgbL8oMSoFVspR/EKY1g==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywyv0UmW/BAOs0Y1FAMsB4YkSeeyw+EkzePj54ijR8I6ZuktzRz
	LOS36kH8PfK0IFJ42ExC9D9FIT4h4SQDbd+epLq3hNSOR5fgh0F8DiMScFnUKfShres=
X-Gm-Gg: ASbGnct2mex2nDFDwyNbLJGX2/1hAu5AbEhmNG12MsgL4iVR+1Lp/UD4adP0vEozrb2
	yDFVm9NlvbqyKqmoXEQtjMO8XP9ROax4H6voWuG6E/e28JoN+3e7C2C5d+1mTpgJdd82gg6NH2J
	GzNcD7PVlKdpwB+5y//0H5ScC1VINp93c3/tzFcWRIC5SfOzo3xn5DTB02vYQf5vnICsZtJkJVB
	i8T4rn5ttExm90CJAvMqE2xnh1aqGvxOMLwzQAsOa8bM3Xk42Pn2LKyIi08m7lpjsTiGmrZEmkU
	5o5YsJLcOgL7HAMfRdRNqfcpe3U+pAY9lciyooIAbSxJx4846D9bb4E6qSbgFut57zd03YXRZBh
	+Gb74DrlKbfDvcxU+9SOD7kFZBAqbwA==
X-Google-Smtp-Source: AGHT+IEpdTgVcfBaoEmCWcnRBwuce+Djw2pY8euGOoyl76C2+gYfNnzbCURCJhmeDtSCjcLozrM5tw==
X-Received: by 2002:a05:690c:4989:b0:70f:6ec6:62b4 with SMTP id 00721157ae682-71057d02d51mr122876257b3.31.1748760078968;
        Sat, 31 May 2025 23:41:18 -0700 (PDT)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com. [209.85.219.172])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-70f8acd546fsm15543587b3.78.2025.05.31.23.41.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 May 2025 23:41:18 -0700 (PDT)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e803de44766so1579391276.3;
        Sat, 31 May 2025 23:41:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUMUhqfRhAV9Zs3Ti0FFxZP+aaTqWn3KAZ/F7hpJtUYs6mwGAycDS3t8kkQiGHOiKzWI2H210SNQj9oh5PPhY/q@lists.infradead.org, AJvYcCUnTZOxRjK/9G88PNn6RdoVmMc78+qE4VVaOT4Ki0ZAZbbtUQYzb+akTq9s6dgpTufmGuK7QGp7bmfCm6TzdaY=@lists.infradead.org
X-Received: by 2002:a05:6902:1245:b0:e7d:c51d:4b17 with SMTP id
 3f1490d57ef6-e7fec876436mr9326569276.8.1748760077303; Sat, 31 May 2025
 23:41:17 -0700 (PDT)
MIME-Version: 1.0
References: <20250519-6-10-rocket-v4-0-d6dff6b4c0ae@tomeuvizoso.net> <CA+VMnFzisyMFzze52RRf6=Gstq29jmukrPSfqXfBWrVw0a7k1Q@mail.gmail.com>
In-Reply-To: <CA+VMnFzisyMFzze52RRf6=Gstq29jmukrPSfqXfBWrVw0a7k1Q@mail.gmail.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Sun, 1 Jun 2025 08:41:06 +0200
X-Gmail-Original-Message-ID: <CAAObsKDhjkQ_wVcOiVsGPB6QPuWkKPrWEGd-6Oq7BgjX9NhTJA@mail.gmail.com>
X-Gm-Features: AX0GCFuCkivNAaBx7rL3ymXj2J3pJIXqNYSSzMxHaNqO3jwK8nThi-KXGe-k1Hs
Message-ID: <CAAObsKDhjkQ_wVcOiVsGPB6QPuWkKPrWEGd-6Oq7BgjX9NhTJA@mail.gmail.com>
Subject: Re: [PATCH v4 00/10] New DRM accel driver for Rockchip's RKNN NPU
To: Jagan Teki <jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250531_234121_245660_DC7ED255 
X-CRM114-Status: GOOD (  27.42  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBNYXkgMzAsIDIwMjUgYXQgODo1MOKAr1BNIEphZ2FuIFRla2kgPGphZ2FuQGVkZ2Vi
bGUuYWk+IHdyb3RlOgo+Cj4gT24gTW9uLCAxOSBNYXkgMjAyNSBhdCAxOToxNCwgVG9tZXUgVml6
b3NvIDx0b21ldUB0b21ldXZpem9zby5uZXQ+IHdyb3RlOgo+ID4KPiA+IFRoaXMgc2VyaWVzIGFk
ZHMgYSBuZXcgZHJpdmVyIGZvciB0aGUgTlBVIHRoYXQgUm9ja2NoaXAgaW5jbHVkZXMgaW4gaXRz
Cj4gPiBuZXdlciBTb0NzLCBkZXZlbG9wZWQgYnkgdGhlbSBvbiB0aGUgTlZETEEgYmFzZS4KPiA+
Cj4gPiBJbiBpdHMgY3VycmVudCBmb3JtLCBpdCBzdXBwb3J0cyB0aGUgc3BlY2lmaWMgTlBVIGlu
IHRoZSBSSzM1ODggU29DLgo+ID4KPiA+IFRoZSB1c2Vyc3BhY2UgZHJpdmVyIGlzIHBhcnQgb2Yg
TWVzYSBhbmQgYW4gaW5pdGlhbCBkcmFmdCBjYW4gYmUgZm91bmQgYXQ6Cj4gPgo+ID4gaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL21lc2EvbWVzYS8tL21lcmdlX3JlcXVlc3RzLzI5Njk4
Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogVG9tZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9zby5u
ZXQ+Cj4gPiAtLS0KPiA+IENoYW5nZXMgaW4gdjQ6Cj4gPiAtIFNldmVyYWwgZml4ZXMgdG8gRFQg
YmluZGluZ3MuCj4gPiAtIExpbmsgdG8gdjM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAy
NTA1MTYtNi0xMC1yb2NrZXQtdjMtMC03MDUxYWM5MjI1ZGJAdG9tZXV2aXpvc28ubmV0Cj4gPgo+
ID4gQ2hhbmdlcyBpbiB2MzoKPiA+IC0gUmVmZXJlbmNlIGluIHRoZSBkZXZpY2UgdHJlZSBvbmx5
IHRoZSByZWdpc3RlciBibG9ja3MgdGhhdCBhcmUKPiA+ICAgYWN0dWFsbHkgdXNlZC4KPiA+IC0g
U2V2ZXJhbCBzdHlsZSBhbmQgcm9idXN0bmVzcyBmaXhlcyBzdWdnZXN0ZWQgaW4gdGhlIG1haWxp
bmcgbGlzdC4KPiA+IC0gQWRkZWQgcGF0Y2hlcyBmcm9tIE5pY29sYXMgRnJhdHRhcm9saSB0aGF0
IGFkZCBzdXBwb3J0IHRvIHRoZSBOUFUgZm9yCj4gPiAgIHRoZSBSb2NrIDVCIGJvYXJkLgo+ID4g
LSBMaW5rIHRvIHYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwMjI1LTYtMTAtcm9j
a2V0LXYyLTAtZDRkYmNmYWZjMTQxQHRvbWV1dml6b3NvLm5ldAo+ID4KPiA+IENoYW5nZXMgaW4g
djI6Cj4gPiAtIERyb3AgcGF0Y2ggYWRkaW5nIHRoZSByazM1ODggY29tcGF0aWJsZSB0byByb2Nr
Y2hpcC1pb21tdSAoU2ViYXN0aWFuIFJlaWNoZWwpCj4gPiAtIERyb3AgcGF0Y2ggYWRkaW5nIHN1
cHBvcnQgZm9yIG11bHRpcGxlIHBvd2VyIGRvbWFpbnMgdG8gcm9ja2NoaXAtaW9tbXUgKFNlYmFz
dGlhbiBSZWljaGVsKQo+ID4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9y
LzIwMjQwNjEyLTYtMTAtcm9ja2V0LXYxLTAtMDYwZTQ4ZWVhMjUwQHRvbWV1dml6b3NvLm5ldAo+
ID4KPiA+IC0tLQo+ID4gTmljb2xhcyBGcmF0dGFyb2xpICgyKToKPiA+ICAgICAgIGFybTY0OiBk
dHM6IHJvY2tjaGlwOiBhZGQgcGRfbnB1IGxhYmVsIGZvciBSSzM1ODggcG93ZXIgZG9tYWlucwo+
ID4gICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IGVuYWJsZSBOUFUgb24gUk9DSyA1Qgo+ID4K
PiA+IFRvbWV1IFZpem9zbyAoOCk6Cj4gPiAgICAgICBkdC1iaW5kaW5nczogbnB1OiByb2NrY2hp
cCxya25uOiBBZGQgYmluZGluZ3MKPiA+ICAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQg
bm9kZXMgZm9yIE5QVSBhbmQgaXRzIE1NVSB0byByazM1ODhzCj4gPiAgICAgICBhcm02NDogZHRz
OiByb2NrY2hpcDogRW5hYmxlIHRoZSBOUFUgb24gcXVhcnR6cHJvNjQKPiA+ICAgICAgIGFjY2Vs
L3JvY2tldDogQWRkIHJlZ2lzdGVycyBoZWFkZXIKPiA+ICAgICAgIGFjY2VsL3JvY2tldDogQWRk
IGEgbmV3IGRyaXZlciBmb3IgUm9ja2NoaXAncyBOUFUKPiA+ICAgICAgIGFjY2VsL3JvY2tldDog
QWRkIElPQ1RMIGZvciBCTyBjcmVhdGlvbgo+ID4gICAgICAgYWNjZWwvcm9ja2V0OiBBZGQgam9i
IHN1Ym1pc3Npb24gSU9DVEwKPiA+ICAgICAgIGFjY2VsL3JvY2tldDogQWRkIElPQ1RMcyBmb3Ig
c3luY2hyb25pemluZyBtZW1vcnkgYWNjZXNzZXMKPgo+IENhbiB0aGlzIGJlIHBvc3NpYmxlIHRv
IGluZmVyIHlvbG92OC8xMD8gRG8gd2UgbmVlZCB0byBjb252ZXJ0IFBUL09OTlgKPiB0byBhbnkg
b3RoZXIgY29tbW9uIGZvcm1hdCdzIHVubGlrZSBya25uPwoKQm90aCBjb25zaWRlcmF0aW9ucyBh
cmUgZW50aXJlbHkgZGVwZW5kZW50IG9uIHRoZSB1c2Vyc3BhY2UgZHJpdmVyLgpUaGlzIGtlcm5l
bCBkcml2ZXIgc2hvdWxkIGJlIGFibGUgdG8gc3VwcG9ydCBhIHVzZXJzcGFjZSBkcml2ZXIgdGhh
dAphY2NlbGVyYXRlcyBhbnkgWU9MTyB2ZXJzaW9uLiBTaG91bGQgYWxzbyBiZSBhYmxlIHRvIHN1
cHBvcnQgd2l0aG91dApjaGFuZ2VzIGEgdXNlcnNwYWNlIGRyaXZlciB0aGF0IGltcGxlbWVudHMg
ZXhlY3V0aW9uIG9mIE9OTlgsIFB5VG9yY2gKbW9kZWxzLCBldGMuIFdpdGggb3Igd2l0aG91dCBj
b252ZXJzaW9uIHRvIGFuIGludGVybWVkaWF0ZSBtb2RlbApmb3JtYXQuCgpSZWdhcmRpbmcgdGhl
IHBhcnRpY3VsYXIgdXNlcnNwYWNlIGRyaXZlciB0aGF0IGhhcyBiZWVuIHN1Ym1pdHRlZCBmb3IK
cmV2aWV3IHRvIE1lc2EsIHlvdSBjYW4gcHV0IHF1ZXN0aW9ucyBhbmQgY29tbWVudHMgYXQ6Cgpo
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvbWVzYS9tZXNhLy0vbWVyZ2VfcmVxdWVzdHMv
Mjk2OTgKClRoYW5rcywKClRvbWV1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
