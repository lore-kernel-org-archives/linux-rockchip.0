Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BCD6C83F22
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jul 2025 20:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RBxTZ/PlXdiw7N8ahAZ5vVhPSFPCnKqmRdJ9mHPLLio=; b=sjUZXA58yR9OK+
	DAza0qcvNDMIebW1WrUfcO9qGBuKJdhNw2mhwd5cOJhgCsFB3wYrpIl6QLf+Es7LT5eY5GdkmZKQl
	ShP+zY7M6jVHrb5NA4wz+IRatLTpWqN6b5WeyyFJ+JreDpMClX0wMFAAeek2ezepVlByYbJk28FYa
	KcI7g/ivkSxjOu89d1Pp+W6OT0REuo5v4urp2X01OlUtOqjIC/f/jOiEOI5N1XRBOZpMX14BURqhu
	zlkWQscom0KGEdAhuYmKFzYtzDkW++O/310ZMhPynwYkF0qD2QauA9fz6GkOmUG0ur/nveVyENFaq
	+YTgFqEn8BJV90yxcG+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uc9Dy-00000008egt-2tAM;
	Wed, 16 Jul 2025 20:59:34 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uc8Pm-00000008Zic-2hBk
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Jul 2025 20:07:44 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4561607166aso1652675e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 16 Jul 2025 13:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752696461; x=1753301261; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=w1WLlTjW19FslTaCwhT5zGrQ10SG2D6EnCZ8yjnDcW8=;
        b=coaouAKWX0/y/urEDfwGI4hDWRx+aAc+v+uqRWzgYy2NWdF/XsJfWZ7eld0ccLiD7T
         xk5DcokyOvcEXYODcehkat1O1NFTJwasABSBrVnchCPrl8OcYevXFJpekF84Q7i4jG3u
         2SSZICKcPM5+LlpqE5QeEm3qpDkEEZNgPnOXMX3CIiS360Mpi2pJsF4blqu6fg29M8MF
         2MHKl4Ov0h2bALwVBYPPxytacjP1hj1u3LY6FnN/kaTkhyQ1RMSYA3MU8TXovjb/VvU0
         uZxhS+X9A43ACaMjqe1yWrnqoImMcgoQEg+hqU2C/BMz/KOqU7RYmUFpqP1iT+TLb2r1
         7LNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752696461; x=1753301261;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w1WLlTjW19FslTaCwhT5zGrQ10SG2D6EnCZ8yjnDcW8=;
        b=tWbXUNhprSFiGubT/f9Kgx8M5t3g6a90XdOiCF0GNVV3cUKab9uzEdYdtbwVXPqw3T
         Lmh8D6hJUUylQ7Bxp45A9+6vdli2E+PtrVSW94z50Al142B8NbEIDvyZz2xnu0V7aZ7I
         wKsTYTcHsegGU326TU0p8IGYrR0LTyFA9h1FRekE/1B5aP4byf6lgmib8zN+tboQSbZG
         Gxn5wmtvV6SudkKVdxvAJWBoSjDO1UE04Y5yjRTIj32tGGdWrWkN7g+gCod0TN/9vJ1E
         kUdAoRvOdOYvEP2RxRbgssGnoIYxbKNxZvfGAfz3odXbsXu/Jb7eTKwh11WzHrICGlQL
         dVUg==
X-Forwarded-Encrypted: i=1; AJvYcCW7zn0OVzDVSQ7mJ3hdNTtePCjatYb7v+jVeA/Ej73vtv+THBZivnZSFj/8jHoFOT7kNJmWvXR0rkDZh12mSw==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywy1PZ/+tvnVmXtbKMQ/25xTPwXYk0FgY9gzVF+VTdxXiYSUKj/
	hz/h4e5Zmebs/ArXVsmhhP2zuYwoycvYmlUEY27M/S7ao7VYkN4eKW55dCiUL1+ywPk=
X-Gm-Gg: ASbGncubphu0UzAcRdcXLcNUibrLFTx7p5D7r7XXwAprAZgKgPZHNW0vX6Oi8SX6LGL
	MYt52TeYD3dxlp3Qx1RTAEFWh4IEjk94RWoZhGA65KRkB2zehRKgNbwxXdWbQEo2gXpSFxMoBZN
	8c9UF5S9HnIGtW5ULqtQ3WBjz+d6UFhgUheHmGJJ7GvGLg19qr7drvPIVXKelR9keyPTwDITgIQ
	2ZuWL9AkAlN+HT3ZqZsj+QbsnslJHtmaedW0K/nOmz63ZyfdauMjW/BiFF0zcGlAz89K68IxXRF
	b8xBmtNqFzLjxaoo54WuZ/Ltt59WL0QEQHRVOUhn+hT11uJrRRx4NjEZTNA4edBJSA24BziXTSg
	QAn+YGb6BqMjaklZopB2JqM07HiRsjDX4p4gPTchmtHFald4VuNaSdb2p69Uj
X-Google-Smtp-Source: AGHT+IHT3o4sXi1laaCHvSW/aSr0v5yQgUvC+MexriUEjp2oVZFYKTPhi2Nt0Gx2Dn49BxLlEmtWJg==
X-Received: by 2002:a05:600c:5187:b0:456:24aa:9586 with SMTP id 5b1f17b1804b1-4562e2749bamr35356605e9.21.1752696460699;
        Wed, 16 Jul 2025 13:07:40 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8bd1647sm18630864f8f.1.2025.07.16.13.07.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 13:07:40 -0700 (PDT)
Date: Wed, 16 Jul 2025 22:07:38 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
	Ye Zhang <ye.zhang@rock-chips.com>, devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 0/7] RK3576 thermal sensor support, including OTP trim
 adjustments
Message-ID: <aHgGiojM3nnNg8Bk@mai.linaro.org>
References: <20250425-rk3576-tsadc-upstream-v5-0-0c840b99c30e@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250425-rk3576-tsadc-upstream-v5-0-0c840b99c30e@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250716_130742_682351_D554509F 
X-CRM114-Status: GOOD (  26.94  )
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

T24gRnJpLCBBcHIgMjUsIDIwMjUgYXQgMDk6MzQ6MzRQTSArMDIwMCwgTmljb2xhcyBGcmF0dGFy
b2xpIHdyb3RlOgo+IFRoaXMgc2VyaWVzIGFkZHMgc3VwcG9ydCBmb3IgdGhlIFJLMzU3NidzIHRo
ZXJtYWwgc2Vuc29yLgo+IAo+IFRoZSBzZW5zb3IgaGFzIHNpeCBjaGFubmVscywgcHJvdmlkaW5n
IG1lYXN1cmVtZW50cyBmb3IgdGhlIHBhY2thZ2UKPiB0ZW1wZXJhdHVyZSwgdGhlIHRlbXBlcmF0
dXJlIG9mIHRoZSBiaWcgY29yZXMsIHRoZSB0ZW1wZXJhdHVyZSBvZiB0aGUKPiBsaXR0bGUgY29y
ZXMsIGFuZCB0aGUgR1BVLCBOUFUgYW5kIEREUiBjb250cm9sbGVyLgo+IAo+IEluIGFkZGl0aW9u
IHRvIGFkZGluZyBzdXBwb3J0IGZvciB0aGUgc2Vuc29yIGl0c2VsZiwgdGhlIHNlcmllcyBhbHNv
Cj4gYWRkcyBzdXBwb3J0IGZvciByZWFkaW5nIHRoZXJtYWwgdHJpbSB2YWx1ZXMgb3V0IG9mIHRo
ZSBkZXZpY2UgdHJlZS4KPiBNb3N0IG9mIHRoaXMgZnVuY3Rpb25hbGl0eSBpcyBub3Qgc3BlY2lm
aWMgdG8gdGhpcyBTb0MsIGJ1dCBuZWVkZWQgdG8gYmUKPiBpbXBsZW1lbnRlZCB0byBtYWtlIHRo
ZSBzZW5zb3JzIGEgbGl0dGxlIG1vcmUgYWNjdXJhdGUgaW4gb3JkZXIgdG8KPiBpbnZlc3RpZ2F0
ZSB3aGV0aGVyIHRoZSBUUk0gc3dhcHBlZCBHUFUgYW5kIEREUiBvciBkb3duc3RyZWFtIHN3YXBw
ZWQKPiBHUFUgYW5kIEREUiBpbiB0ZXJtcyBvZiBjaGFubmVsIElEcywgYXMgZG93bnN0cmVhbSBk
aXNhZ3JlZXMgd2l0aCB3aGF0J3MKPiBpbiB0aGUgVFJNLCBhbmQgdGhlIGRpZmZlcmVuY2UgaXMg
c28gc21hbGwgYW5kIGhhcmQgdG8gcGluIGRvd24gd2l0aAo+IHRlc3RpbmcgdGhhdCB0aGUgY29u
c3RhbnQgb2Zmc2V0IGJldHdlZW4gdGhlIHR3byBzZW5zb3JzIHdhcyBhIGxpdHRsZQo+IGFubm95
aW5nIGZvciBtZSB0byBkZWFsIHdpdGguCj4gCj4gSSBlbmRlZCB1cCBnb2luZyB3aXRoIHRoZSBj
aGFubmVsIGFzc2lnbm1lbnQgdGhlIFRSTSBsaXN0cywgYXMgSSBzZWUgdGhlCj4gRERSIHNlbnNv
ciBnZXQgYSBsYXJnZXIgZGV2aWF0aW9uIGZyb20gYmFzZWxpbmUgdGVtcGVyYXR1cmVzIGR1cmlu
ZyBtZW1vcnkKPiBzdHJlc3MgdGVzdHMgKHN0cmVzcy1uZyAtLW1lbXJhdGUgOCAtLW1lbXJhdGUt
Zmx1c2gpIHRoYW4gd2hhdCB0aGUgVFJNCj4gY2xhaW1zIGlzIHRoZSBHUFUgc2Vuc29yIGJ1dCBk
b3duc3RyZWFtIGNsYWltcyBpcyB0aGUgRERSIHNlbnNvci4gSW5wdXQKPiBmcm9tIFJvY2tjaGlw
IGVuZ2luZWVycyBvbiB3aGV0aGVyIHRoZSBUUk0gaXMgcmlnaHQgb3Igd3Jvbmcgd2VsY29tZS4K
PiAKPiBUaGUgdHJpbSBmdW5jdGlvbmFsaXR5IGlzIG9ubHkgdXNlZCBieSBSSzM1NzYgYXQgdGhl
IG1vbWVudC4gQ29kZSB0bwo+IGhhbmRsZSBvdGhlciBTb0NzIGNhbiByZWx5IG9uIHRoZSBzaGFy
ZWQgb3RwIHJlYWRpbmcgYW5kIHBlcmhhcHMgZXZlbgo+IHRoZSBJUCByZXZpc2lvbiBzcGVjaWZp
YyBmdW5jdGlvbiwgYnV0IG1heSBuZWVkIGl0cyBvd24gSVAgcmV2aXNpb24KPiBzcGVjaWZpYyBm
dW5jdGlvbnMgYWRkZWQgYXMgd2VsbC4gQWJzZW50IHRyaW0gZnVuY3Rpb25hbGl0eSBpbiBvdGhl
cgo+IFNvQ3Mgc2hvdWxkIG5vdCBpbnRlcmZlcmUgd2l0aCB0aGUgbW9kaWZpZWQgY29tbW9uIGNv
ZGUgcGF0aHMuCj4gCj4gUGF0Y2ggMSBpcyBhIGNsZWFudXAgcGF0Y2ggZm9yIHRoZSByb2NrY2hp
cCB0aGVybWFsIGRyaXZlciwgd2hlcmUgYQo+IGZ1bmN0aW9uIHdhcyBjb25mdXNpbmdseSBuYW1l
ZC4KPiAKPiBQYXRjaCAyIGFkZHMgdGhlIFJLMzU3NiBjb21wYXRpYmxlIHRvIHRoZSBiaW5kaW5n
cy4KPiAKPiBQYXRjaCAzIGFkZHMgc3VwcG9ydCBmb3IgdGhpcyBTb0MncyB0aGVybWFsIGNoaXAg
dG8gdGhlIGRyaXZlci4gSXQgaXMgYQo+IHBvcnQgb2YgdGhlIGRvd25zdHJlYW0gY29tbWl0IGFk
ZGluZyBzdXBwb3J0IGZvciB0aGlzLgo+IAo+IFBhdGNoIDQgYWRkcyBzb21lIGRvY3VtZW50YXRp
b24gZm9yIGltbWluZW50IGFkZGl0aW9uYWwgZnVuY3Rpb25hbGl0eSB0bwo+IHRoZSBiaW5kaW5n
LCBuYW1lbHkgdGhlIHRyaW0gdmFsdWUgc3R1ZmYuCj4gCj4gUGF0Y2ggNSBhZGRzIHN1cHBvcnQg
Zm9yIHJlYWRpbmcgdGhlc2UgT1RQIHZhbHVlcyBpbiB0aGUKPiByb2NrY2hpcF90aGVybWFsIGRy
aXZlciwgYW5kIG1ha2VzIHVzZSBvZiB0aGVtLiBUaGUgY29kZSBpcyBtb3N0bHkgbmV3Cj4gdXBz
dHJlYW0gY29kZSB3cml0dGVuIGJ5IG1lLCB1c2luZyBkb3duc3RyZWFtIGNvZGUgYXMgcmVmZXJl
bmNlLgoKQXBwbGllZCBwYXRjaGVzIDEtNQoKVGhhbmtzCiAgLS0gRGFuaWVsCgotLSAKCiA8aHR0
cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUg
Zm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3Bh
Z2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4g
VHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
