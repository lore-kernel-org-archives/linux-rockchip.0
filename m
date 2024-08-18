Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8283C5320E
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Aug 2024 20:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzcSW7GrguZq80VG74q6oJijFzgBmkahm9cTROeft9k=; b=b6j46CihhajXZR
	aOIWdfgcNBF7iXHAEMdz3s1/XSRPGWfsc/uDU7OpDtX6rFOjUhcV93xSdNUQhkEANlP92oGv3CA82
	fO+0l/q/WHM6w3jInvW7RdEWBRLAot/GJfnEf2QDI84BYppKUGizlsI9JI6UDkYjAj9TR8ivzPPFo
	E9SzKA13vZGFqZxkuUi5pOZOCyKu987IH/z5Dn+u//RR+69vfrUgdTi8PLU/w643sGqvVsSae4My0
	LQ/QjP47tTzGd5zw5OffwZ01S/KhxTBGwvBeDP6ZMEIPUw+0mW3/X05kpHvXR60a1E/QuOYx6kMRf
	tCRzZET9m4fFJBeEE4uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfmEH-0000000HCCn-0VBt;
	Sun, 18 Aug 2024 20:10:21 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfmEC-0000000HCCJ-33xW;
	Sun, 18 Aug 2024 20:10:19 +0000
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-3db1e21b0e4so2448851b6e.2;
        Sun, 18 Aug 2024 13:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724011815; x=1724616615; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qy/+jzT/NOiYw3uhsQ90salDPTFe4qnoDBEo8k9h6Rg=;
        b=BDUt89kr+QlK/uCj9Sej+Uki249eG75ok4XjaeEq7Ihntz1avp91Q+6FsCVPswg0X1
         LMsp3Uilk5AERYiEp/Wsviactqp33pqRbWkT5uJJPNrQDe0YSpyV2sUpUaIqhkZ/jtWi
         Z88tduTzZpaEmL5DA9lj0rjSYdHDh+PuRlxIoyAB37uNsOV89EiWsM+l8MmO/hUF0Avs
         9n6eUYZkIesCputI+5zERamV2Ywz8lKe+jaWKul3sdK5xA332xaTrYxBVphiEXwV/cjk
         Jsu+E67uFB15jTOXHnDt/tJ0eAnfTvpDZ93rOh/MYwhtR4t6BAx8nUUudnuibVdq20MR
         QJ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724011815; x=1724616615;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qy/+jzT/NOiYw3uhsQ90salDPTFe4qnoDBEo8k9h6Rg=;
        b=CCJu09wQTdYp6U3D6x57u0UMY/E0C4Zirt7EYfCqVlJbKK/0mTsjEeK9Gd3+kwQrGg
         ly4RIAgJo4lZN08mUESK6TVuzQxNUFjBI2CGyakuXD+teFt1bta3Zs+3JNu+CfX7qSj7
         K43DOonNl0097JFsOVINdaGHwt5FeLhFfJyIgZFwxBFsw7jYYPengawjvIRBpbJSJhPl
         YWdiTPehGmBHk3L7z2QWk1U8Z68bAEeis28qu9+MskStA8U6Snh1ixF2imnUuGREeiMy
         sox8Nfe3tjcQrWymfaHyPoWHXb2xEmH+2b6u2Kr+h/9wY8SXaf7YnljjoK2h8+nPG2iw
         meBg==
X-Forwarded-Encrypted: i=1; AJvYcCVarbCqFx4eUoBNt2lBvYLr4qZsG/cdf2UCRiQ6I/ywdQbYVq0/bFiQnqxnL/+OwfN26ntKd6uh+ZJUAVudaWPumaEjE4e+np9ilKarAVF30d5aiP0=
X-Gm-Message-State: AOJu0YyFfbg0bRMFkvfXL8UUCFrZYh+adbYiCq9S7l2z9suAwr94frUf
	5eLuSZ160Fd0X5SciKXLWsJTmaYEXi/HE4rc4b2gRY1QKPRsodvXeESIsOmq9pNZ3hdXglnIC6I
	nyY8B2Ib77i+wj44Cm+C9tmbXCvfONzW1
X-Google-Smtp-Source: AGHT+IHJoFs9kq0DonN2CXQEo5pYPafXJaMBOnGljUPRyg7t7x+vEVzjt5+Y7d1CumebXA2fN+0KbrIMpMBtlZEUGPo=
X-Received: by 2002:a05:6808:e87:b0:3da:bc80:b233 with SMTP id
 5614622812f47-3dd3ad546bdmr9654294b6e.17.1724011815630; Sun, 18 Aug 2024
 13:10:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAAMcf8Dts3=6CxNCLZBvXsdFHpaOs9mL2NJ8TMPU5+duray6-g@mail.gmail.com>
 <d35a5c5216ee3d0321c725aea61e0326@manjaro.org> <CAAMcf8CFED71FKUBpRy+FZNf8XKim1fuxW1C+ErZQqLsaWm1yQ@mail.gmail.com>
 <4455b5175d3c372c15d9732f03b9eb20@manjaro.org>
In-Reply-To: <4455b5175d3c372c15d9732f03b9eb20@manjaro.org>
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 18 Aug 2024 22:10:04 +0200
Message-ID: <CAAMcf8CpkZHY6Awyo3LWZXfkqbZ1z3YcvF5W_08uv-XNov2j-A@mail.gmail.com>
Subject: Re: [BUG] Rockchip SPI: Runtime PM usage count underflow!
To: Dragan Simic <dsimic@manjaro.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-spi@vger.kernel.org, 
	Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_131016_798283_E8F4FB43 
X-CRM114-Status: GOOD (  29.44  )
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

T24gU3VuLCBBdWcgMTgsIDIwMjQgYXQgOToyMOKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IE9uIDIwMjQtMDgtMTggMjA6NTUsIFZpY2VudGUgQmVyZ2Fz
IHdyb3RlOgo+ID4gT24gU3VuLCBBdWcgMTgsIDIwMjQgYXQgODoyNuKAr1BNIERyYWdhbiBTaW1p
YyA8ZHNpbWljQG1hbmphcm8ub3JnPgo+ID4gd3JvdGU6Cj4gPj4gT24gMjAyNC0wOC0xOCAyMDox
MywgVmljZW50ZSBCZXJnYXMgd3JvdGU6Cj4gPj4gPiBpIGFtIGEgdXNlciBvZiB0aGUgQ09ORklH
X1NQSV9TUElERVYgZGV2aWNlLgo+ID4+ID4gSXQgc3RvcHBlZCB3b3JraW5nIGJldHdlZW4gNi44
IGFuZCA2LjEwLjUuCj4gPj4gPiBUaGUgU1BJIGJ1cyBpdHNlbGYgcmVwb3J0cyBubyBlcnJvcnMg
dG8gdXNlcnNwYWNlLCBidXQgbm8gZGV2aWNlcwo+ID4+ID4gYXBwZWFyIGNvbm5lY3RlZCB0byB0
aGUgYnVzLgo+ID4+ID4gVGhlIHBsYXRmb3JtIHVzZWQgaXMgUkszMzI4Lgo+ID4+ID4gVGhlIG9u
bHkgc3BpLXJlbGF0ZWQgbWVzc2FnZSBpbiBkbWVzZyBpczoKPiA+PiA+IHJvY2tjaGlwLXNwaSBm
ZjE5MDAwMC5zcGk6IFJ1bnRpbWUgUE0gdXNhZ2UgY291bnQgdW5kZXJmbG93IQo+ID4+Cj4gPj4g
SSdtIHdvcmtpbmcgb24gYSByZWxhdGVkIHBhdGNoLiAgQ291bGQgeW91LCBwbGVhc2UsIGRlc2Ny
aWJlIHlvdXIKPiA+PiB1c2UgY2FzZSBmb3IgdGhlIHNwaWRldiBkcml2ZXIsIGkuZS4gd2hhdCBi
b2FyZCBhcmUgeW91IHVzaW5nIGl0IG9uLAo+ID4+IGFuZCBmb3Igd2hhdCBwdXJwb3NlPwo+ID4K
PiA+IFRoZSBib2FyZCBpcyBST0NLNjQgYW5kIHRoZSBwdXJwb3NlIGlzIHRvIHVwZGF0ZSBhbGwg
dGhlIHNvZnR3YXJlIHRoYXQKPiA+IGJvYXJkIHJ1bnMsIHdoaWNoIGlzIHN0b3JlZCBvbiB0aGUg
U1BJIE5PUiBmbGFzaCBvbmJvYXJkLgo+Cj4gU28sIGlmIEkgZ290IGl0IHJpZ2h0LCB5b3UgYm9v
dCB5b3VyIFJvY2s2NCBmcm9tIHRoZSBTUEkgY2hpcCB0aGF0Cj4gY29udGFpbnMgYWxsIHRoZSBz
b2Z0d2FyZSBpdCBydW5zLCBidXQgeW91IGFsc28gYm9vdCBMaW51eCBvbiBpdCBmcm9tCgpjb3Jy
ZWN0Cgo+IGEgbWljcm9TRCBjYXJkLCB0byB1cGRhdGUgdGhlIGNvbnRlbnRzIG9mIHRoZSBTUEkg
Y2hpcD8gIEknbSBndWVzc2luZwo+IGl0IHRoYXQgd2F5LCBiZWNhdXNlIHRoZSBzaXplIG9mIGFu
IFNQSSBjaGlwIGlzIGhhcmRseSBsYXJnZSBlbm91Z2gKPiBmb3Igc3RvcmluZyBldmVuIGFuIGV4
dHJlbWVseSBzaXplLW9wdGltaXplZCBMaW51eCBzeXN0ZW0uCgpObywgZXZlcnl0aGluZyBpcyBp
biB0aGUgU1BJIE5PUiBmbGFzaCwgd2hpY2ggaXMgMTZNQiBpbiBzaXplIGFuZCBpdAppcyBlbm91
Z2ggZm9yIG15IGFwcGxpY2F0aW9uLgoKPiBBbnl3YXksIEkgd29uZGVyIHdoeSBkbyB5b3UgaGF2
ZSB0byB1c2UgdGhlIHNwaWRldiBkcml2ZXIgZm9yIHRoYXQKPiBwdXJwb3NlPyAgV2h5IGNhbid0
IHlvdSB1c2UgJ2NvbXBhdGlibGUgPSAiamVkZWMsc3BpLW5vciI7JyB0byBhY2Nlc3MKPiB0aGUg
U1BJIGNoaXAgdGhyb3VnaCAvZGV2L210ZDAgdW5kZXIgTGludXg/CgpUaGUgYnVnIHJlcG9ydCBp
cyBhYm91dCB0aGUgU1BJIGJ1cywgTVREIGlzIGEgc2VydmljZSBwcm92aWRlZCBvbiB0b3AKb2Yg
dGhlIFNQSSBidXMuCklmIHRoZSBidXMgZmFpbHMsIHRoZW4gdGhlcmUgaXMgbm8gTVRELgpUaGF0
IHNhaWQsIGkgZG9uJ3QgdXNlIE1URC4gVGhlIGJvb3Rsb2FkZXIgcmVhZHMgdGhlIGtlcm5lbCwg
ZHRiIGFuZAppbml0cmFtZnMgZnJvbSB0aGUgU1BJIGZsYXNoIGludG8gUkFNIGFuZCBib290cyBs
aW51eCBlbnRpcmVseSBvbiBSQU0uClRoZXJlIGlzIG5vIHBlcnNpc3RlbnQgZmlsZXN5c3RlbSBv
biB0b3Agb2YgTVRELgoKPiA+IEkgaGF2ZSBub3QgdGVzdGVkIHRoaXMga2VybmVsIHZlcnNpb24g
b24gUkszMzk5LCBidXQgaXQgbWF5IGFsc28KPiA+IGFmZmVjdCB0aGF0IG90aGVyIHVzZSBjYXNl
Ogo+ID4gaHR0cHM6Ly9naXRsYWIuY29tL3ZpY2VuY2Iva2V2aW5ib290Cj4gPgo+ID4gTi5CLjog
TXkgbmFtZSBpcyBWaWNlbnRlLgo+Cj4gT2gsIEknbSBzb3JyeSBmb3IgbWlzdHlwaW5nIHlvdXIg
Zmlyc3QgbmFtZS4gIFNob3VsZCd2ZSBjb3B5ICYgcGFzdGVkCj4gaXQgaW5zdGVhZCwgdG8gcHJl
dmVudCBzdWNoIHR5cGluZyBtaXN0YWtlcy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
