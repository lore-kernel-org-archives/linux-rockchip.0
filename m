Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ABEECF31AD
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 11:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+AUOogs8m1y+OpafbLQTHRlZkmIuMkmHCoptrP0xh4=; b=a30uwirklBEmKq
	K0+dt4A+uPDIYpLALHZfIaiGt4djcM+ObuT9wr0fygkAZAycKUFfbJBIz8K2sd7KWovZOMpRDVJOY
	7lX6PWo+pZxubt0xb7V4Gjbe+ZS/HGExvCQUj5Rsr5ka+QMXJR4IFCAkqKutJD/vzHwRD/PoXOX71
	+oeiLDUYQegxkWBXZvvIXeIp6GR8vUiOIT1WlQ8CKveT3Exy4QG30EGBGYp1NX/jxnnuXipxGXlrf
	Ma7SyuXveW6DkrYHcUoyf+FlxJKLVkld/gJ1v5CQS3iT79TBQqavMtEsSwCRaLy9j1yeQ3zNhdv25
	t/riuUEtgOyhyMlioDrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLgTh-000000032cQ-1Qlb;
	Wed, 19 Nov 2025 11:36:01 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLgTe-000000032bF-1VKY
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Nov 2025 11:35:59 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-37ba781a6c3so49779971fa.0
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Nov 2025 03:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763552155; x=1764156955; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mOjKGZlnAXgjmbnxI7QvaAPBMson5j4nh4MkPbAPAEs=;
        b=Y3T5/DweI9rOJGDgcO7unfiRndapxgXxFfksOOmvuabLPsBjN5erAO6LOuHsRNS+rs
         SCI2kRuhS4TdmV7PhKQ7LAJh6krXkLzXz5kkV9WtGIX14vJXawCIc8Oz/Yfv2xK9UTmd
         00o6fmIt48BNhDKaxZu3JR76rKoYricAuWBnbBPJepFhAqK9dZJT3HVhCJjdclGNU96l
         dpJpYfOvJsHp8rqqG9kGLAeqWcIjt1BZ1nVy1LEk4ZBDW6wCuzOK7SoKrPei+xzvT58v
         5CpTTcOI6W46gXkGBdi7Zkm2vjSKFDAR2s5k8jxu9EQVb6mhSxdk27M0dIwOMVy1XOd0
         1ZIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763552155; x=1764156955;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mOjKGZlnAXgjmbnxI7QvaAPBMson5j4nh4MkPbAPAEs=;
        b=xUZ29byptixTmDUC8UhSu3Gd37sBNn4qA4Mc+Jp016Hp86VW4bzxIy2xNsHevS3GiS
         aeBiJfhF8Ug0oOKGIV8a+6fQNFRhhHNUEBF5mcNeUFDtVMd7piizmeKqYXZMueJURUFR
         HvUCaoIecHFAEMKmSqgf5bZH8QVmXvw1cP8JUOT6IP279LJEt26KuCXGMPX5HnwWCe+C
         Vs2KGz7M7NQDm4Ew4eEAyxqMZk2jcYQpWKggix4JUpXwFjFr9aJWGzKyj/PVivA8Bu6U
         s1kwZvr/x/SCbBypvZamJ9teDF2brSMhgd941WEyqNo5HAlLsottfSaHQYAJX/7+aeag
         RfsA==
X-Forwarded-Encrypted: i=1; AJvYcCVGdnhWF+K4zjfpdfLOqmBoD4GiboEicfcXy3oo0Gs7T1cU5QIIlKxSsp7e9EnaiEawUaBfXuGMYHeetweicg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzbgXUhHMkBSQxZXruzN1su1n+9SEAJzzzCDms73LmogexbNlil
	LfdjCEMiJnHMppdf8TSEIH/Ytur4mZMLmezU/ItfrIInzc4pkI94/LNHezGfRhVRgx8q3qTmpV2
	vduFY5eVinmJ3qpJaGpRKDKkmgGYSMAI=
X-Gm-Gg: ASbGncsWggdYTtbmhhsif2p9sdCg0FkZxggla+Ja2TqXjQxHt+q7TZRZoGVTmdyOhrf
	nFhfcQyvdhn+UPxl5KahHE/SP/gqRLKUtc13TaaUBxBKDP9ZnXEzbC6kP1XzlZaX8O4GWT2tcBl
	FUODtB+H0y+1tA3wfHRK7LDODRV73AiFjQDE1v5I15Y4+ftvIqp7JA8uX9MDES6QSdAHlGZDD0I
	0hKFrbw7c2FmZBsHa15PTPFmimzXsaI58pgTPoVO7N82LNF4ZjyvLtyTJNzfP26tk8IbQ==
X-Google-Smtp-Source: AGHT+IGLB87l3c6YQaMAVvCIZHa9Iaw20ytZFxmWh7hR2zupdPWm65PeLgAMP+NHumhl01ckY9NXDPo9Y80ggn2lAT0=
X-Received: by 2002:a05:651c:20c6:b0:36d:4e3b:f1e3 with SMTP id
 38308e7fff4ca-37babb619famr41318181fa.13.1763552155407; Wed, 19 Nov 2025
 03:35:55 -0800 (PST)
MIME-Version: 1.0
References: <cf6e08dfdfbf1c540685d12388baab1326f95d2c.1762165324.git.xakep.amatop@gmail.com>
 <176307584246.496508.12079514999315183214.b4-ty@sntech.de>
In-Reply-To: <176307584246.496508.12079514999315183214.b4-ty@sntech.de>
From: Mykola Kvach <xakep.amatop@gmail.com>
Date: Wed, 19 Nov 2025 13:35:43 +0200
X-Gm-Features: AWmQ_bneNTA_MoPN6LwNuV_BB7nADqcezocvI0r4IOjj8wtQr6qn-bFxwXAym-o
Message-ID: <CAGeoDV_R8GBSs9qjY4772ymU=LsLiP=LTTx2-4uBLkB2PAuVhQ@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: rockchip: orangepi-5: fix PCIe 3.3V
 regulator voltage
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>, 
	Michael Riesch <michael.riesch@collabora.com>, =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>, 
	Muhammed Efe Cetin <efectn@6tel.net>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_033558_467622_68339F2A 
X-CRM114-Status: GOOD (  12.83  )
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

T24gRnJpLCBOb3YgMTQsIDIwMjUgYXQgMToxOOKAr0FNIEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4KPiBPbiBNb24sIDAzIE5vdiAyMDI1IDEyOjI3OjQwICswMjAw
LCBNeWtvbGEgS3ZhY2ggd3JvdGU6Cj4gPiBUaGUgdmNjM3YzX3BjaWUyMCBmaXhlZCByZWd1bGF0
b3IgcG93ZXJzIHRoZSBQQ0llIGRldmljZS1zaWRlIDMuM1YgcmFpbAo+ID4gZm9yIHBjaWUyeDFs
MiB2aWEgdnBjaWUzdjMtc3VwcGx5LiBUaGUgRFRTIG1pc3Rha2VubHkgc2V0IGl0cwo+ID4gcmVn
dWxhdG9yLW1pbi9tYXgtbWljcm92b2x0IHRvIDE4MDAwMDAgKDEuOCBWKS4gQ29ycmVjdCBib3Ro
IHRvIDMzMDAwMDAKPiA+ICgzLjMgVikgdG8gbWF0Y2ggdGhlIHJhaWwgbmFtZSwgdGhlIFBDSWUv
TS4yIHBvd2VyIHJlcXVpcmVtZW50LCBhbmQgdGhlCj4gPiBhY3R1YWwgaGFyZHdhcmUgd2lyaW5n
IG9uIE9yYW5nZSBQaSA1Lgo+ID4KPiA+Cj4gPiBbLi4uXQo+Cj4gQXBwbGllZCwgdGhhbmtzIQo+
Cj4gWzEvMV0gYXJtNjQ6IGR0czogcm9ja2NoaXA6IG9yYW5nZXBpLTU6IGZpeCBQQ0llIDMuM1Yg
cmVndWxhdG9yIHZvbHRhZ2UKPiAgICAgICBjb21taXQ6IGI1NDE0NTIwNzkzZTY4ZDI2NmZkZDk3
YTg0OTg5ZDk4MzExNTZhYWQKPgo+IFBsZWFzZSBzdGFydCBuZXcgdGhyZWFkcyB3aGVuIHNlbmRp
bmcgdmVyc2lvbiB4KzEgYW5kIGRvbid0IGFwcGVuZAo+IHRoYXQgbmV3IHBhdGNoIHRvIHRoZSBv
bGQgdGhyZWFkIChsZXNzIGNvbmZ1c2luZyBmb3IgdG9vbGluZyBsaWtlIGI0KS4KCkdvdCBpdCwg
dGhhbmtzIGZvciB0aGUgZXhwbGFuYXRpb24uCgo+Cj4gQmVzdCByZWdhcmRzLAo+IC0tCj4gSGVp
a28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCkJlc3QgcmVnYXJkcywKTXlrb2xhCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
