Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B1F9D148B3
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 07:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q1XX+MAjwrHuYZkhaP0/r/77qdP2e1IMde0oMfeLshE=; b=FHXc7QR+pAiA9T
	AVI0JjNUWpfx2P84BIA6TW11Jx/5m/2TZfLFdEpJo1/gAHnlxcUjO+d19vQeO2eIQ8ztTB2Y1gA0W
	BUQ93HWuXJ8jvnzsbmnS5Oz3DchP2D0HYBoVzacMtr+xgvCIp1oQ4nRpdSkWY/kzdZ+XPDyMLlvTG
	J0FIbf5v1YnbFqYH8SZSKvRASuHDLwUFoje82bpCL6XV9xHzJPPj57TonP0tzPdY5X7J3+GaGUpFY
	gN3S2PIMtzVTOVYVuBgTemFYeSYtFSi1blKDHZGyamRdiLVdNA73LZu2ZqVOo+8JTuLoHnwtFDMmJ
	E+glF6EpQ2NeXspk/lWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdk4d-0000000G3Lo-1CQb;
	Thu, 08 Jan 2026 07:04:47 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdk4a-0000000G3L2-2qmJ
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Jan 2026 07:04:45 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-64d02c01865so4508521a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 23:04:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767855883; x=1768460683; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EAN8+Ciqh5L4w3kAbltziKsgSCvOxXNi49H+2aGyv4Y=;
        b=TddIoUJ9F5MeZSH7T6hpKnJpOQ0hK7SuRwtsj3tWYNXGz7UpYdAsjzlMmM50OxqT5N
         zkYNq5w1hb3KqzYy6jaQy6NL8SNyEIboKEzCZG7J2Ga4VzVKNf+EMCqVrAfk5PXmSEMe
         14uDi7FQyut/TMNbM5tgML5WX+N7QE5rOfztaI31chB5zzg1i9GUmlgMDaxQtn8OGpjT
         J5kd5Wr7HuHE1/qNEZKQwVo4Yz0/QTo66f3ZFX95LKuYRs0uRKY3rJzamtSMTUTtzema
         f5McU/Jfz6/0D+8LY9OrIkAtX2SMygTS/Tb/yJVXJiAzui0AXkhpce8nMnG+PyQyKq7M
         i6Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767855883; x=1768460683;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EAN8+Ciqh5L4w3kAbltziKsgSCvOxXNi49H+2aGyv4Y=;
        b=Afo8XgS2d45vF8JfvhUSH/3DYWmn+uUD8DbUAdt/7ULnVZg3TRauEHbG5gTd0K8bBu
         hbkq8uw/1T62EXSa6BIwjPuxLisAz7C/gu/q4w/EEx4GSsIRNOuoW7aow4R2ILxjRkHH
         tBZlNL8enVWOE59Nf6Mm7Fy/GUWDIUDfvn3VwmRO6B8rjAHNAUy3l5uK/DzVibxFOM/y
         me0LfJ7SnbXhg68VF/ej4XN8r2JZK3rTYCLNyQAbSnOrcLZhSEP6F9j7SbkPZOMxpfM1
         KC1wU4/bHVK6WQysoIPcMAkW49EgSpa/TKjArNMTLcqVEkUt1zojmlmsg2RV6e6/5tl+
         Mu/w==
X-Forwarded-Encrypted: i=1; AJvYcCX9E7HSafcO5q55ITL/ISK0+WqkympvT2rsp169sfxY5e+S/iV8IdUxcYnOUc9VsF3pcm1wvAjY2one0p0YuA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwHfAAP8FoiSw7fNlqMW6BxfFqV/9gseWVWgJj0QCq8sT2+/Sw8
	vecqlWhCwA0WvZm6cHqcCJyRwhaKospJQYuIwDuErjFKohUuH3T2umCINtiC6UxSaGbxJgMA0h0
	yA8U9C190FSMIC+LilZcNOg7jrRDpYxw=
X-Gm-Gg: AY/fxX5XTi9JXNFejB03VbyJJtSMxq1GqyKU3cYrdU+an0bI69KaWHkZPOOtfDSOU1z
	yJa56QZOwUrC/7e1Oh0rwkgnhq9P8GeuL2QFN51NTj7NklK9BOf2lhRVqb+0ImoMS8gGpihVXFK
	j1mXiVHBIt/B51ZeinB/V5NjXP/56WOFM4IDahe/CsGyuJW2TKE6wOnLP3YRIkXRILIwbmmv3vb
	I15tn7Boe6sKwsRceGfjq3wJIrxuA/Pb3O9Z1WvYUeFKaL7AzUQ9AhETD/ArXzY6lTnejQO16Lb
	tg==
X-Google-Smtp-Source: AGHT+IGBP1Y/NBrrCMuhwkVQ6AO2ojqKOG+H99YGlpDe1e8ewtDuvZGEnWtYEQt6lSgwqc5HalftMS2UQQytGVd5v6I=
X-Received: by 2002:a05:6402:3593:b0:64c:69e6:ad3e with SMTP id
 4fb4d7f45d1cf-65097e8e43fmr4488123a12.33.1767855882738; Wed, 07 Jan 2026
 23:04:42 -0800 (PST)
MIME-Version: 1.0
References: <20260102131819.123745-1-linux.amoon@gmail.com> <ald3sxdzggbhqvpc7ra7x5nkf36xoamgwfumz5r4jwgirdzyes@nwvka2h256f6>
In-Reply-To: <ald3sxdzggbhqvpc7ra7x5nkf36xoamgwfumz5r4jwgirdzyes@nwvka2h256f6>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 8 Jan 2026 12:34:25 +0530
X-Gm-Features: AQt7F2rxp4OBghS7YFRzpcNM61eouESYIn1a5kIjLPye8P3AweeGw4bjR-rsO54
Message-ID: <CANAwSgTAHUXkZXxe_Y0KTssqqvKZAiOe2ZwiFV4EJ8k9sj00Ng@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: dw-rockchip: Add runtime PM support to Rockchip PCIe
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Niklas Cassel <cassel@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Hans Zhang <18255117159@163.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	"open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_230444_740544_12847854 
X-CRM114-Status: GOOD (  21.52  )
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

SGkgTWFuaXZhbm5hbiwKClRoYW5rcyBmb3IgeW91ciByZXZpZXcgY29tbWVudHMuCgpPbiBUdWUs
IDYgSmFuIDIwMjYgYXQgMTk6MDYsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaUBrZXJuZWwu
b3JnPiB3cm90ZToKPgo+IE9uIEZyaSwgSmFuIDAyLCAyMDI2IGF0IDA2OjQ3OjUwUE0gKzA1MzAs
IEFuYW5kIE1vb24gd3JvdGU6Cj4gPiBBZGQgcnVudGltZSBwb3d3ZSBtYW5hZ2VlbWVudCBmdW5j
dGlvbmFsaXR5IGludG8gdGhlIFJvY2tjaGlwIERlc2lnbldhcmUKPiA+IFBDSWUgY29udHJvbGxl
ciBkcml2ZXIuIENhbGxpbmcgZGV2bV9wbV9ydW50aW1lX2VuYWJsZSgpIGR1cmluZyBkZXZpY2UK
PiA+IHByb2JpbmcgYWxsb3dzIHRoZSBjb250cm9sbGVyIHRvIHJlcG9ydCBpdHMgcnVudGltZSBQ
TSBzdGF0dXMsIGVuYWJsaW5nCj4gPiBwb3dlciBtYW5hZ2VtZW50IGNvbnRyb2xzIHRvIGJlIGFw
cGxpZWQgY29uc2lzdGVudGx5IGFjcm9zcyB0aGUgZW50aXJlCj4gPiBjb25uZWN0ZWQgUENJZSBo
aWVyYXJjaHkuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQW5hbmQgTW9vbiA8bGludXguYW1vb25A
Z21haWwuY29tPgo+ID4gLS0tCj4gPiB2MjoKPiA+ICAgIGltcHJvdmUgdGhlIGNvbW1pdCBtZXNz
YWdlCj4gPiAgICBEcm9wIHRoZSAucmVtb3ZlIHBhdGNoCj4gPiAgICBEcm9wIHRoZSBkaXNhYmxl
X3BtX3J1bnRpbWUKPiA+IHYxOgo+ID4gIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1
MTAyNzE0NTYwMi4xOTkxNTQtMy1saW51eC5hbW9vbkBnbWFpbC5jb20vCj4gPiAtLS0KPiA+ICBk
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgfCAxNyArKysrKysr
KysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCj4gPgo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAu
YyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ID4gaW5k
ZXggZjg2MDVmZTYxYTQxNS4uMjQ5OGZmNTE0NmE1YSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ID4gKysrIGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gPiBAQCAtMjAsNiArMjAsNyBA
QAo+ID4gICNpbmNsdWRlIDxsaW51eC9vZl9pcnEuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvcGh5
L3BoeS5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiA+ICsjaW5j
bHVkZSA8bGludXgvcG1fcnVudGltZS5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9yZWdtYXAuaD4K
PiA+ICAjaW5jbHVkZSA8bGludXgvcmVzZXQuaD4KPiA+Cj4gPiBAQCAtNzA5LDYgKzcxMCwyMCBA
QCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPiA+ICAgICAgIGlmIChyZXQpCj4gPiAgICAgICAgICAgICAgIGdvdG8gZGVpbml0X3Bo
eTsKPiA+Cj4gPiArICAgICByZXQgPSBwbV9ydW50aW1lX3NldF9zdXNwZW5kZWQoZGV2KTsKPiA+
ICsgICAgIGlmIChyZXQpCj4gPiArICAgICAgICAgICAgIGdvdG8gZGVpbml0X2NsazsKPgo+IFNl
cmlvdXNseT8gV2h5IGRvIHlvdSBuZWVkIHRoaXM/IERlZmF1bHQgUE0gc3RhdHVzIGlzICdzdXNw
ZW5kZWQnLgpUaGVzZSBjaGFuZ2VzIHdlcmUgcGFydCBvZiBteSB3b3JrIG9uIHN1c3BlbmQvcmVz
dW1lIGNhcGFiaWxpdGllcwo+Cj4gPiArCj4gPiArICAgICByZXQgPSBkZXZtX3BtX3J1bnRpbWVf
ZW5hYmxlKGRldik7Cj4gPiArICAgICBpZiAocmV0KSB7Cj4gPiArICAgICAgICAgICAgIHJldCA9
IGRldl9lcnJfcHJvYmUoZGV2LCByZXQsICJGYWlsZWQgdG8gZW5hYmxlIHJ1bnRpbWUgUE1cbiIp
Owo+ID4gKyAgICAgICAgICAgICBnb3RvIGRlaW5pdF9jbGs7Cj4gPiArICAgICB9Cj4gPiArCj4g
PiArICAgICByZXQgPSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGRldik7Cj4gPiArICAgICBp
ZiAocmV0KQo+ID4gKyAgICAgICAgICAgICBnb3RvIGRlaW5pdF9jbGs7Cj4gPiArCj4gPiAgICAg
ICBzd2l0Y2ggKGRhdGEtPm1vZGUpIHsKPiA+ICAgICAgIGNhc2UgRFdfUENJRV9SQ19UWVBFOgo+
ID4gICAgICAgICAgICAgICByZXQgPSByb2NrY2hpcF9wY2llX2NvbmZpZ3VyZV9yYyhwZGV2LCBy
b2NrY2hpcCk7Cj4gPiBAQCAtNzMwLDYgKzc0NSw4IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNp
ZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4KPiA+ICBkZWluaXRfY2xr
Ogo+ID4gICAgICAgY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUocm9ja2NoaXAtPmNsa19jbnQs
IHJvY2tjaGlwLT5jbGtzKTsKPiA+ICsgICAgIHBtX3J1bnRpbWVfZGlzYWJsZShkZXYpOwo+Cj4g
WW91IHVzZWQgZGV2bV8gZm9yIGVuYWJsZS4KPgo+ID4gKyAgICAgcG1fcnVudGltZV9ub19jYWxs
YmFja3MoZGV2KTsKPgo+IFdoeT8gV2hlcmUgaXMgcG1fcnVudGltZV9wdXQoKT8gUGxlYXNlIHJl
YWQgRG9jdW1lbnRhdGlvbi9wb3dlci9ydW50aW1lX3BtLnJzdC4KPgpPaywgSSB3aWxsIHN0dWR5
IGFuZCB1cGRhdGUgdGhlIGNoYW5nZXMuCj4gLSBNYW5pCj4KPiAtLQo+IOCuruCuo+Cuv+CuteCu
o+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KClRoYW5rcwotQW5hbmQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
