Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B074C4828F
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 14:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ViCQ6ynx4s3TywEhEBxowYADyb0LmfHHAnBRF5yb/E=; b=HBhsEnI0b3kLno
	qvRPgQDidCWLJcWukAF7z0x9iszQe5x+lPrLRCRySOXT2Ehug+W/3TO/mRtUSYZGo9OvIDWXdb3cq
	z+Drf1XY0p9Qfvh8Z3NGyCqwhP0Vd905l9L4DnhYlOU1eVVflxOTK2j+YriusW98Tn5Cctss5EeKc
	Xr+0upxc+0hduHCAYSNlmz885bjzruJfgNH+fOrd9Ix+v5flOfJ/nXzxyM/ytp4zI4g/cNaSc/l8F
	QpsVi3+CmDIXDjJSviq/hSMbLWBJs6y9BtN/Vns3twmk9CPyJHS1UJxyZFxrYf9wnaOzxLTc03k5s
	DrDtipn2U/eGE9fsnXkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVY15-00000008Hpo-46I5;
	Thu, 01 Feb 2024 14:26:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVY12-00000008HoM-2jKl;
	Thu, 01 Feb 2024 14:26:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6D4A461F2A;
	Thu,  1 Feb 2024 14:26:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A8A4C433A6;
	Thu,  1 Feb 2024 14:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706797567;
	bh=u8hZb1KY0acvINicwcOlLX6sBnV2lOH0PfaW//UVPBk=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=uzcxDK2YySJRUJ/KdXk5MZPQAIsI8rzec3nTqmSfnmQRlcFCwrYZ/bQfwiS9yaST0
	 Q5yG6m31Mg1NEqNslE1BZOeskSWtV0T8qx3clsYtj7LORzgTUEfJvUskeiWlCuyIvr
	 fBM5bjF0r/UWZEreHIEfMVnOvbA1t1tcYPbM/yDlyKEFT4aPfCN0avR4QmDRgm2RQT
	 EGszEUlW9ie5uNl1mFLhJsuRG568ySDeWfgnW0FdNkHO5wNAHIlmnkmnPRwMMJx30P
	 Rv04U3BFHUHFBZzX22RBia96MV2b2HverdfgRb2jSIkmfEhCUwtkhGh0swYPhHWAQc
	 SJOubzAF+UbJA==
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-6de0ba30994so766001b3a.1;
        Thu, 01 Feb 2024 06:26:07 -0800 (PST)
X-Gm-Message-State: AOJu0YyeyxnNLSU2H+qzoDu6TogTmgeAL+/J7mS/3KATgGnMmrjwcVXp
	aqbzOpTdTAPRwFVM1LXfSQ20LPEnBqvXK2s1sQYGIC8C+B3HLJKJ12dflT5TWW5dSmwoktcgn9u
	HP5vI1pFhcyEitkOC3vuataY+evo=
X-Google-Smtp-Source: AGHT+IEQ57LFCXx03pmPY0BiaAVWqsmooCa8JnBK4SyQoscvPIE/4caLjfgkMTh91ldy8kJvhymf6n8Ec+0Xv8T1yH8=
X-Received: by 2002:a05:6a00:981:b0:6d9:a074:659f with SMTP id
 u1-20020a056a00098100b006d9a074659fmr10435698pfg.13.1706797566559; Thu, 01
 Feb 2024 06:26:06 -0800 (PST)
MIME-Version: 1.0
References: <20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com> <20240130-rk-dts-additions-v2-2-c6222c4c78df@gmail.com>
In-Reply-To: <20240130-rk-dts-additions-v2-2-c6222c4c78df@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 1 Feb 2024 22:26:09 +0800
X-Gmail-Original-Message-ID: <CAGb2v65--rgb2FqmG_0-w1-jUL0odqKXxiZJ-XPYA4uomfYmaQ@mail.gmail.com>
Message-ID: <CAGb2v65--rgb2FqmG_0-w1-jUL0odqKXxiZJ-XPYA4uomfYmaQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] arm64: dts: rockchip: enable temperature driven
 fan control on Rock 5B
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_062608_813226_31F1C50F 
X-CRM114-Status: GOOD (  20.50  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBKYW4gMzEsIDIwMjQgYXQgMjoyMuKAr0FNIEFsZXhleSBDaGFya292IDxhbGNoYXJr
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIGVuYWJsZXMgdGhlcm1hbCBtb25pdG9yaW5nIG9u
IFJhZHhhIFJvY2sgNUIgYW5kIGxpbmtzIHRoZSBQV00KPiBmYW4gYXMgYW4gYWN0aXZlIGNvb2xp
bmcgZGV2aWNlIG1hbmFnZWQgYXV0b21hdGljYWxseSBieSB0aGUgdGhlcm1hbAo+IHN1YnN5c3Rl
bSwgd2l0aCBhIHRhcmdldCBTb0MgdGVtcGVyYXR1cmUgb2YgNjVDIGFuZCBhIG1pbmltdW0tc3Bp
bgo+IGludGVydmFsIGZyb20gNTVDIHRvIDY1QyB0byBlbnN1cmUgYWlyZmxvdyB3aGVuIHRoZSBz
eXN0ZW0gZ2V0cyB3YXJtCj4KPiBBY2tlZC1ieTogRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpj
YW5vQGxpbmFyby5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogQWxleGV5IENoYXJrb3YgPGFsY2hhcmtA
Z21haWwuY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1y
b2NrLTViLmR0cyB8IDM0ICsrKysrKysrKysrKysrKysrKysrKysrKy0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDMzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4gaW5kZXggYTBlMzAzYzNhMWRj
Li5iNDg1ZWRlZWY4NzYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtcm9jay01Yi5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OC1yb2NrLTViLmR0cwo+IEBAIC01Miw3ICs1Miw3IEBAIGxlZF9yZ2JfYiB7Cj4KPiAg
ICAgICAgIGZhbjogcHdtLWZhbiB7Cj4gICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicHdt
LWZhbiI7Cj4gLSAgICAgICAgICAgICAgIGNvb2xpbmctbGV2ZWxzID0gPDAgOTUgMTQ1IDE5NSAy
NTU+Owo+ICsgICAgICAgICAgICAgICBjb29saW5nLWxldmVscyA9IDwwIDEyMCAxNTAgMTgwIDIx
MCAyNDAgMjU1PjsKPiAgICAgICAgICAgICAgICAgZmFuLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47
Cj4gICAgICAgICAgICAgICAgIHB3bXMgPSA8JnB3bTEgMCA1MDAwMCAwPjsKPiAgICAgICAgICAg
ICAgICAgI2Nvb2xpbmctY2VsbHMgPSA8Mj47Cj4gQEAgLTE3Myw2ICsxNzMsMzQgQEAgJmNwdV9s
MyB7Cj4gICAgICAgICBjcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1X2xpdF9zMD47Cj4gIH07Cj4KPiAr
JnBhY2thZ2VfdGhlcm1hbCB7Cj4gKyAgICAgICBwb2xsaW5nLWRlbGF5ID0gPDEwMDA+Owo+ICsK
PiArICAgICAgIHRyaXBzIHsKPiArICAgICAgICAgICAgICAgcGFja2FnZV9mYW4wOiBwYWNrYWdl
LWZhbjAgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIHRlbXBlcmF0dXJlID0gPDU1MDAwPjsK
PiArICAgICAgICAgICAgICAgICAgICAgICBoeXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIHR5cGUgPSAiYWN0aXZlIjsKPiArICAgICAgICAgICAgICAgfTsKPiAr
ICAgICAgICAgICAgICAgcGFja2FnZV9mYW4xOiBwYWNrYWdlLWZhbjEgewo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIHRlbXBlcmF0dXJlID0gPDY1MDAwPjsKPiArICAgICAgICAgICAgICAgICAg
ICAgICBoeXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIHR5cGUg
PSAiYWN0aXZlIjsKPiArICAgICAgICAgICAgICAgfTsKPiArICAgICAgIH07Cj4gKwo+ICsgICAg
ICAgY29vbGluZy1tYXBzIHsKPiArICAgICAgICAgICAgICAgbWFwMCB7Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgdHJpcCA9IDwmcGFja2FnZV9mYW4wPjsKPiArICAgICAgICAgICAgICAgICAg
ICAgICBjb29saW5nLWRldmljZSA9IDwmZmFuIFRIRVJNQUxfTk9fTElNSVQgMT47Cj4gKyAgICAg
ICAgICAgICAgIH07Cj4gKyAgICAgICAgICAgICAgIG1hcDEgewo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIHRyaXAgPSA8JnBhY2thZ2VfZmFuMT47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAg
Y29vbGluZy1kZXZpY2UgPSA8JmZhbiAxIFRIRVJNQUxfTk9fTElNSVQ+Owo+ICsgICAgICAgICAg
ICAgICB9Owo+ICsgICAgICAgfTsKPiArfTsKPiArCj4gICZpMmMwIHsKPiAgICAgICAgIHBpbmN0
cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gICAgICAgICBwaW5jdHJsLTAgPSA8JmkyYzBtMl94ZmVy
PjsKPiBAQCAtNzMxLDYgKzc1OSwxMCBAQCByZWd1bGF0b3Itc3RhdGUtbWVtIHsKPiAgICAgICAg
IH07Cj4gIH07Cj4KPiArJnRzYWRjIHsKPiArICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiArfTsK
PiArCgpJcyB0aGVyZSBhbnkgcmVhc29uIHRoaXMgY2FuJ3QgYmUgZW5hYmxlZCBieSBkZWZhdWx0
IGluIHRoZSAuZHRzaSBmaWxlPwpUaGUgdGhlcm1hbCBzZW5zb3IgZG9lc24ndCBkZXBlbmQgb24g
YW55dGhpbmcgZXh0ZXJuYWwsIHNvIHRoZXJlIHNob3VsZApiZSBubyByZWFzb24gdG8gcHVzaCB0
aGlzIGRvd24gdG8gdGhlIGJvYXJkIGxldmVsLgoKQ2hlbll1Cgo+ICAmdWFydDIgewo+ICAgICAg
ICAgcGluY3RybC0wID0gPCZ1YXJ0Mm0wX3hmZXI+Owo+ICAgICAgICAgc3RhdHVzID0gIm9rYXki
Owo+Cj4gLS0KPiAyLjQzLjAKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
