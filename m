Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84FD9C83F1B
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jul 2025 21:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxO3g25VdaVKmlkLQDoA+QfT3qXFmqOGD04xNmmANKk=; b=ZwQI3hKRRlZmpj
	tAUqdYe6q6ICOGlsnM4HrrROgJTAbLW8nXgb6YhhXkV6retkYqUicoFK7KuBzc4kxFo+EcPUZ9GmI
	neTyYxSJTI6I1AV6qA82F0MkoiaEadTxsUpCUiYG6z/UZiYcUQIdavQ56uvDHkACKWrshHcVIBWGH
	9PVMZkd78xRl8exH7Vh0Kw6QeWneym1vCRqmxcPcq+1tLQ41xV7Fxr97L0zSwk8NY7/bF+fCOhhAN
	K6xIaDLWdGa/uIrmYTunG3LJQezRzwqe9zX6Bd1BB6OpaHbLppbIlD4II3fyD+pSNVfNMLAJ+Ikvu
	48j5zKp7wu3kXIPnJr7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uc9LG-00000008feA-3EzL;
	Wed, 16 Jul 2025 21:07:06 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uc8Ur-00000008aHG-0olA
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Jul 2025 20:12:58 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-45610582d07so1801505e9.0
        for <linux-rockchip@lists.infradead.org>; Wed, 16 Jul 2025 13:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752696776; x=1753301576; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bTFRn/aeMp4S+G4FgB+Q2zAiPMprlJMkEEu55rvT0e8=;
        b=XOYieBzPIZTLCddOsCWvN8kMdbIYIb1Dvi2KmV6Nr2SLxWLy9J2XCrEUM4Q/kpHdlc
         aVyD3Zb4YX6NzNDKblQAZezO7GJ16oCWtlRRayYPyMjzfVRH6qr+RCm+pPAtTL0Se7P5
         +SkbdqOgdH6nyoO1juo4r3E4YKRaJsUwk9SzJ7ofVsjfdeWTTmn1a3i2hT/NwRXuqbkG
         5bmgF4Qr1Hx97xTDKGEpXcfrFV4rBApD+dYfoN/jq7cKraLf22rl1g276uNP5DmpCn95
         IPwJi4DBz0cxZpYGpoz73lJG+BTS8EoyiW1QIqb+0vhtvl38Tt4mm6FueuhfGGpj4TCm
         dnkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752696776; x=1753301576;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bTFRn/aeMp4S+G4FgB+Q2zAiPMprlJMkEEu55rvT0e8=;
        b=U2Y7HN+qhLJh5pK2wicE/CD7VRYcU6JTd0B7IVYRKeQVUwpEWhoASZTR4I7dwarWgk
         5P8VY5lGccyzO0iipS+9STbMgQg0HEcN9F0tti6BTjb5iUHxeXx+RnvDWhrj2ZHL73qV
         QG25R2CpK+Sbr0qBVGTf9EvGYeu+GGlXwySEAC3BYTux7liFEtLfPZm1lMKmO1H6sty6
         h8AhbGkO8UG9fDExDpWiPNjFHLutGPX9nEYkUms5X0fmmQOp6JT3FRp4+LTuvWEyIroW
         JyzxwOUH/vQfGe/3jgb+fyEDl5Tp+yYV2IkAP1ldsXyhkZTb2tDIFZ2PYS+0uJ+yLsGz
         /xtg==
X-Forwarded-Encrypted: i=1; AJvYcCU+jog2nxS8ZRiOle/otNoy/sU4++FZB/1xis9lSog+dExhJHO3nkqI86liQeCcc8fwmzNktVJHg1ph1b/w8Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz89BB1F4gh5G1hTVTdq8MCT/yAKI4NebcZ9naX5irLp0qOzClD
	jyDM7yWcU2qMlc5CM7S/m1pO0yvXrnwgO7JGqFiJMnlE4S9B+dTYCkTYTpuCiyNotpo=
X-Gm-Gg: ASbGncvKqC+bECZrsnjxCt/c1qhAcDPxYBzGvBA+QQ/Axpk+ZJiZO5JrkZKh/izrrKf
	LlLr6LcOtQNuE2fuK3A6daBWocog/s00Sls7VRDVTwbitA50Lsr+XPIgmTRO88DPQqHTkzANx75
	dJpfetKfbPekqHBagcdCOivE2wDG9/BQ0SmdhU4jJF5WgMt5dbST4Hn+7248l7ZHeTaKCHI083Q
	HFPmIWHcCioADsovILF6bsOqrfNdw8mz6/nLdiiCrIye1y8QAWkFX0vcbBya3qNy0Em1TBeFqvK
	sAG3z7oj3nryvqpkF6ieeDHmKX5KviWbgRqhTyWcW3n9SIsZT3ngB6yWyeUtGWATCx8MR8YPoVi
	Lv+W0RK1Z9VgOrYrSp7tocmAE1kRvzavdnRdlpZyzOWBgS8HrsWUUBfk9iWVi
X-Google-Smtp-Source: AGHT+IECjdi+MWNAvcqWs+1OLsKCHSKbh3tJIUEemW3jQjXS2P935Ehl7efgOxAko9BQ18ZlI2cxCw==
X-Received: by 2002:a05:600c:1c12:b0:456:2379:c238 with SMTP id 5b1f17b1804b1-4563532c8eamr1285045e9.17.1752696775581;
        Wed, 16 Jul 2025 13:12:55 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e14ce6sm18964814f8f.68.2025.07.16.13.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 13:12:54 -0700 (PDT)
Date: Wed, 16 Jul 2025 22:12:53 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Alexey Charkov <alchark@gmail.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Ye Zhang <ye.zhang@rock-chips.com>
Subject: Re: [PATCH v6 0/7] RK3576 thermal sensor support, including OTP trim
 adjustments
Message-ID: <aHgHxR1_Gzu8Dwbm@mai.linaro.org>
References: <20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250716_131257_239109_4386B9C6 
X-CRM114-Status: GOOD (  27.12  )
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

T24gVHVlLCBKdW4gMTAsIDIwMjUgYXQgMDI6MzI6MzZQTSArMDIwMCwgTmljb2xhcyBGcmF0dGFy
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
bmNlLgoKUmVwbGFjZWQgcHJldmlvdXNseSBhcHBsaWVkIHZlcnNpb24gVjUgd2l0aCB0aGlzIFY2
IHBhdGNoZXMgMS01CgpUaGFua3MKCiAgLS0gRGFuaWVsCgotLSAKCiA8aHR0cDovL3d3dy5saW5h
cm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0Nz
CgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4g
RmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8Cjxo
dHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
