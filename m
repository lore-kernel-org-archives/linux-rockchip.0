Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F949C4828D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJ4UzLYqWgXPKWzWz9OrFxaFw5Xs/F+g6TYTtQQloho=; b=XD2f6R7b+w3w5o
	qIMwwTbvwBvngD/v5oEZL/zI/WmhSeC5QG0vdliGxFX2mVqYd1p/EboW6mQg6eoZ1BWz84IbPe6AG
	wrsn3AkZQFHHq1jUVVxtQXtWA5ZrUYIsB7qNLBdaOQbb/f6aQ0I7bYopORqwwVQZCp69pkHO3U0uQ
	jMJZSmR4uPDhTh7DExudPTOCQho3bAUWpSrYoMc0Uf/49FRE9EpT6dE+1IOQUrP9CVHbLaH3Wd0sl
	RqahF+1ZN+TrG9aBzSPJcEWwAcCOSVuXg5URqrs5PFuJUg5GEfDZLoOuftkc5daYElX9Yrv39bBUV
	9FI/lL69fBVzyKhvmTZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVcXK-000000098TZ-2Yi2;
	Thu, 01 Feb 2024 19:15:46 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVcXH-000000098Ry-0U9q;
	Thu, 01 Feb 2024 19:15:44 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a2f79e79f0cso178191566b.2;
        Thu, 01 Feb 2024 11:15:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706814941; x=1707419741; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jI8uqnU2Vc4rvU4x/h8F0oStlnQZndU9gGWlOQPijbk=;
        b=FjkeCMXVKxKafBtr65Eb9zHINmkUcB2hiykwL/7fCjA52X5MbVOcpPAGP6oH8Dfpeo
         3vo8srNjgD55rx/rKXif9tMJo6qbR+f/xL8LYCD5hpFV5gXBotqkhVw3HLsbWuaTtqiH
         AEBb7t13JzOFdOfmSYl3tInhvO5dQ9Fx8YWr8CbitYIJXUdAyuVCqFGb5j4LelzD9U88
         19S5ozxJNBA4y4/GVky+yCduC8BQxC2Y75xmDPtVe7IQSGPUcOznHTnhsZ290lwIBeJP
         /v6Gja+/CHoI3Fwf5E+p9DPyYzBgIfqavyymeLqjK36Q28iZaTMOCRwk5Ez3xYDBHUCh
         dUZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706814941; x=1707419741;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jI8uqnU2Vc4rvU4x/h8F0oStlnQZndU9gGWlOQPijbk=;
        b=qUnA1+7oYGK7FTcoDgO8qdwwFPgaT7Af3CRJWJSIu81ZzFrqw6Wr2Y1MDwPfjk/5aD
         P/B+GZSP5u2rGPMCmAzffkdQZmVi8vkcrEQbUaVePduAj12NXdys1cfHPnws+I7hS1QY
         BJgaz2n5PaR8DlZXJ/eWJN9qTRhUWUiTb4oP4B8iou5UweAL1xFTbeYa7whrEkD+wqAO
         b6BqM2Rw4x2Q0CnmniDpNpElJK6XmygKDXayMbXgEeAEQNHUJf9dbdGXZfKZrLu0Qn/3
         WAAj9lzSfD/wn3LW7jnlqZrMd0R3pALSPaHTUjiLcGI4la8D+9eeFkx7Zbbt6DLZ/s31
         HqkA==
X-Gm-Message-State: AOJu0YzI2cbczgW5QcRkjaMmEBhWe/2p+xxEfQZM2adt4YRs5eSDWaSv
	O0JCSWkKlrmq3qQ7yhY+kQSrynHVHlmLAvCrprX1Bhbbd57Y7ZjmWhowxG6V20ipmReUxVG/V/x
	JNWsFhUEJwy06odiIAPf2M8QxJaYXJGtRRHGjPw==
X-Google-Smtp-Source: AGHT+IGGH+Ad9eE65DLXqQRZjO0osYEVlcM/foILFZ83ZPaRmyt1ORRANDxBS6dKp82WDLeBewFcVgRL7/tu6Os6dws=
X-Received: by 2002:a17:906:3082:b0:a36:f42f:83a3 with SMTP id
 2-20020a170906308200b00a36f42f83a3mr186494ejv.41.1706814940618; Thu, 01 Feb
 2024 11:15:40 -0800 (PST)
MIME-Version: 1.0
References: <20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com>
 <20240130-rk-dts-additions-v2-2-c6222c4c78df@gmail.com> <CAGb2v65--rgb2FqmG_0-w1-jUL0odqKXxiZJ-XPYA4uomfYmaQ@mail.gmail.com>
 <5e3e12d65e4919372e7fb02d56202393@manjaro.org>
In-Reply-To: <5e3e12d65e4919372e7fb02d56202393@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 1 Feb 2024 23:15:28 +0400
Message-ID: <CABjd4Yx0kQ67fScrFVavjObMLaNt_PJ3TVOhLpCmj00Dx9dOqA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] arm64: dts: rockchip: enable temperature driven
 fan control on Rock 5B
To: Dragan Simic <dsimic@manjaro.org>
Cc: wens@kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_111543_199866_E1593CF6 
X-CRM114-Status: GOOD (  27.17  )
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

T24gVGh1LCBGZWIgMSwgMjAyNCBhdCA5OjM04oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFu
amFyby5vcmc+IHdyb3RlOgo+Cj4gSGVsbG8gQ2hlbi1ZdSwKPgo+IE9uIDIwMjQtMDItMDEgMTU6
MjYsIENoZW4tWXUgVHNhaSB3cm90ZToKPiA+IE9uIFdlZCwgSmFuIDMxLCAyMDI0IGF0IDI6MjLi
gK9BTSBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+Cj4gPiB3cm90ZToKPiA+Pgo+
ID4+IFRoaXMgZW5hYmxlcyB0aGVybWFsIG1vbml0b3Jpbmcgb24gUmFkeGEgUm9jayA1QiBhbmQg
bGlua3MgdGhlIFBXTQo+ID4+IGZhbiBhcyBhbiBhY3RpdmUgY29vbGluZyBkZXZpY2UgbWFuYWdl
ZCBhdXRvbWF0aWNhbGx5IGJ5IHRoZSB0aGVybWFsCj4gPj4gc3Vic3lzdGVtLCB3aXRoIGEgdGFy
Z2V0IFNvQyB0ZW1wZXJhdHVyZSBvZiA2NUMgYW5kIGEgbWluaW11bS1zcGluCj4gPj4gaW50ZXJ2
YWwgZnJvbSA1NUMgdG8gNjVDIHRvIGVuc3VyZSBhaXJmbG93IHdoZW4gdGhlIHN5c3RlbSBnZXRz
IHdhcm0KPiA+Pgo+ID4+IEFja2VkLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9A
bGluYXJvLm9yZz4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0Bn
bWFpbC5jb20+Cj4gPj4gLS0tCj4gPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LXJvY2stNWIuZHRzIHwgMzQKPiA+PiArKysrKysrKysrKysrKysrKysrKysrKystCj4gPj4g
IDEgZmlsZSBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPj4KPiA+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01
Yi5kdHMKPiA+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIu
ZHRzCj4gPj4gaW5kZXggYTBlMzAzYzNhMWRjLi5iNDg1ZWRlZWY4NzYgMTAwNjQ0Cj4gPj4gLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPiA+PiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+ID4+
IEBAIC01Miw3ICs1Miw3IEBAIGxlZF9yZ2JfYiB7Cj4gPj4KPiA+PiAgICAgICAgIGZhbjogcHdt
LWZhbiB7Cj4gPj4gICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicHdtLWZhbiI7Cj4gPj4g
LSAgICAgICAgICAgICAgIGNvb2xpbmctbGV2ZWxzID0gPDAgOTUgMTQ1IDE5NSAyNTU+Owo+ID4+
ICsgICAgICAgICAgICAgICBjb29saW5nLWxldmVscyA9IDwwIDEyMCAxNTAgMTgwIDIxMCAyNDAg
MjU1PjsKPiA+PiAgICAgICAgICAgICAgICAgZmFuLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47Cj4g
Pj4gICAgICAgICAgICAgICAgIHB3bXMgPSA8JnB3bTEgMCA1MDAwMCAwPjsKPiA+PiAgICAgICAg
ICAgICAgICAgI2Nvb2xpbmctY2VsbHMgPSA8Mj47Cj4gPj4gQEAgLTE3Myw2ICsxNzMsMzQgQEAg
JmNwdV9sMyB7Cj4gPj4gICAgICAgICBjcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1X2xpdF9zMD47Cj4g
Pj4gIH07Cj4gPj4KPiA+PiArJnBhY2thZ2VfdGhlcm1hbCB7Cj4gPj4gKyAgICAgICBwb2xsaW5n
LWRlbGF5ID0gPDEwMDA+Owo+ID4+ICsKPiA+PiArICAgICAgIHRyaXBzIHsKPiA+PiArICAgICAg
ICAgICAgICAgcGFja2FnZV9mYW4wOiBwYWNrYWdlLWZhbjAgewo+ID4+ICsgICAgICAgICAgICAg
ICAgICAgICAgIHRlbXBlcmF0dXJlID0gPDU1MDAwPjsKPiA+PiArICAgICAgICAgICAgICAgICAg
ICAgICBoeXN0ZXJlc2lzID0gPDIwMDA+Owo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgIHR5
cGUgPSAiYWN0aXZlIjsKPiA+PiArICAgICAgICAgICAgICAgfTsKPiA+PiArICAgICAgICAgICAg
ICAgcGFja2FnZV9mYW4xOiBwYWNrYWdlLWZhbjEgewo+ID4+ICsgICAgICAgICAgICAgICAgICAg
ICAgIHRlbXBlcmF0dXJlID0gPDY1MDAwPjsKPiA+PiArICAgICAgICAgICAgICAgICAgICAgICBo
eXN0ZXJlc2lzID0gPDIwMDA+Owo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgIHR5cGUgPSAi
YWN0aXZlIjsKPiA+PiArICAgICAgICAgICAgICAgfTsKPiA+PiArICAgICAgIH07Cj4gPj4gKwo+
ID4+ICsgICAgICAgY29vbGluZy1tYXBzIHsKPiA+PiArICAgICAgICAgICAgICAgbWFwMCB7Cj4g
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgdHJpcCA9IDwmcGFja2FnZV9mYW4wPjsKPiA+PiAr
ICAgICAgICAgICAgICAgICAgICAgICBjb29saW5nLWRldmljZSA9IDwmZmFuIFRIRVJNQUxfTk9f
TElNSVQgMT47Cj4gPj4gKyAgICAgICAgICAgICAgIH07Cj4gPj4gKyAgICAgICAgICAgICAgIG1h
cDEgewo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgIHRyaXAgPSA8JnBhY2thZ2VfZmFuMT47
Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgY29vbGluZy1kZXZpY2UgPSA8JmZhbiAxIFRI
RVJNQUxfTk9fTElNSVQ+Owo+ID4+ICsgICAgICAgICAgICAgICB9Owo+ID4+ICsgICAgICAgfTsK
PiA+PiArfTsKPiA+PiArCj4gPj4gICZpMmMwIHsKPiA+PiAgICAgICAgIHBpbmN0cmwtbmFtZXMg
PSAiZGVmYXVsdCI7Cj4gPj4gICAgICAgICBwaW5jdHJsLTAgPSA8JmkyYzBtMl94ZmVyPjsKPiA+
PiBAQCAtNzMxLDYgKzc1OSwxMCBAQCByZWd1bGF0b3Itc3RhdGUtbWVtIHsKPiA+PiAgICAgICAg
IH07Cj4gPj4gIH07Cj4gPj4KPiA+PiArJnRzYWRjIHsKPiA+PiArICAgICAgIHN0YXR1cyA9ICJv
a2F5IjsKPiA+PiArfTsKPiA+PiArCj4gPgo+ID4gSXMgdGhlcmUgYW55IHJlYXNvbiB0aGlzIGNh
bid0IGJlIGVuYWJsZWQgYnkgZGVmYXVsdCBpbiB0aGUgLmR0c2kgZmlsZT8KPiA+IFRoZSB0aGVy
bWFsIHNlbnNvciBkb2Vzbid0IGRlcGVuZCBvbiBhbnl0aGluZyBleHRlcm5hbCwgc28gdGhlcmUg
c2hvdWxkCj4gPiBiZSBubyByZWFzb24gdG8gcHVzaCB0aGlzIGRvd24gdG8gdGhlIGJvYXJkIGxl
dmVsLgo+Cj4gQWN0dWFsbHksIHRoZXJlIGlzIGEgcmVhc29uLiAgRGlmZmVyZW50IGJvYXJkcyBj
YW4gaGFuZGxlIHRoZSBjcml0aWNhbAo+IG92ZXJoZWF0aW5nIGRpZmZlcmVudGx5LCBieSBsZXR0
aW5nIHRoZSBDUlUgb3IgdGhlIFBNSUMgaGFuZGxlIGl0LiAgVGhpcwo+IHdhcyBhbHNvIHRoZSBj
YXNlIGZvciB0aGUgUkszMzk5Lgo+Cj4gUGxlYXNlLCBoYXZlIGEgbG9vayBhdCB0aGUgZm9sbG93
aW5nIERUIHByb3BlcnRpZXMsIHdoaWNoIGFyZSBjb25zdW1lZAo+IGJ5IGRyaXZlcnMvdGhlcm1h
bC9yb2NrY2hpcF90aGVybWFsLmM6Cj4gICAgLSAicm9ja2NoaXAsaHctdHNodXQtbW9kZSIKPiAg
ICAtICJyb2NrY2hpcCxody10c2h1dC1wb2xhcml0eSIKPgo+IFNlZSBhbHNvIHBhZ2UgMSwzNzIg
b2YgdGhlIFJLMzU4OCBUUk0gdjEuMC4KPgo+IFRoaXMgaGFzIGFsc28gcmVtaW5kZWQgbWUgdG8g
Y2hlY2sgaG93IGlzIHRoZSBSb2NrIDVCIGFjdHVhbGx5IHdpcmVkLAo+IGp1c3QgdG8gbWFrZSBz
dXJlLiAgV2UgYWN0dWFsbHkgbmVlZCB0byBwcm92aWRlIHRoZSB0d28gRFQgcHJvcGVydGllcwo+
IGxpc3RlZCBhYm92ZSwgYXQgbGVhc3QgdG8gYXZvaWQgZW1pdHRpbmcgdGhlIHdhcm5pbmdzLgoK
V2VsbCB0aGUgZGVmYXVsdHMgYXJlIGFscmVhZHkgcHJvdmlkZWQgaW4gcmszNTg4cy5kdHNpLCBz
byB0aGVyZSB3b24ndApiZSBhbnkgd2FybmluZ3MgKHNlZSBsaW5lcyAyMjIyLTIyMjMgaW4gTGlu
dXMnIG1hc3RlciB2ZXJzaW9uKSwgYW5kCmFjY29yZGluZyB0byB0aGUgdmVuZG9yIGtlcm5lbCB0
aG9zZSBhcmUgYWxzbyB3aGF0IFJvY2sgNUIgdXNlcy4KClRoaXMgbWFkZSBtZSB0aGluayBob3dl
dmVyOiB3aGF0IGlmIGEgYm9hcmQgZG9lc24ndCBlbmFibGUgVFNBREMsIGJ1dApoYXMgT1BQcyBp
biBwbGFjZSBmb3IgaGlnaGVyIHZvbHRhZ2UgYW5kIGZyZXF1ZW5jeSBzdGF0ZXM/IFRoZXJlIHdv
bid0CmJlIGFueSB0aHJvdHRsaW5nIChhcyB0aGVyZSB3b24ndCBiZSBhbnkgdGhlcm1hbCBtb25p
dG9yaW5nKSBhbmQgdGhlcmUKbWlnaHQgbm90IGJlIGEgY3JpdGljYWwgc2h1dGRvd24gYXQgYWxs
IGlmIGl0IGhlYXRzIHVwIC0gcG9zc2libHkgZXZlbgpjYXVzaW5nIGhhcmR3YXJlIGRhbWFnZS4g
SW4gdGhpcyBjYXNlIGl0IHNlZW1zIHRoYXQgaGF2aW5nIFRTQURDCmVuYWJsZWQgYnkgZGVmYXVs
dCB3b3VsZCBhdCBsZWFzdCB0cmlnZ2VyIHBhc3NpdmUgY29vbGluZywgaG9wZWZ1bGx5CmF2b2lk
aW5nIHRoZSBjcml0aWNhbCBzaHV0ZG93biBhbHRvZ2V0aGVyIGFuZCBtYWtpbmcgdGhvc2UgcHJv
cGVydGllcwppcnJlbGV2YW50IGluIDk5JSBjYXNlcy4KCkJlc3QgcmVnYXJkcywKQWxleGV5Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
