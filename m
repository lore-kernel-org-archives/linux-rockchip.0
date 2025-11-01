Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BFCDCCFA03
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Nov 2025 14:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQ/Qntw8NvPa+WlfOufUA93JN2Si2tf9qIARZGSIpwQ=; b=R26UuoooHFErmL
	mCiJ2/OP7CIiE2KWQVWcycJu+7bgD5UFR/mFysN+980QI6bu7MaHtmzQep7jS1lheIbWIe5I/MQfA
	MtCtOBaLpGoWxNj7eFFlLlCv1aWgJz+/f1DzDqDq5kFc8jCczpdG958hU+GF5rI6jeUk7PIWplEDE
	WJrHWLE0VtQwiFmlLehfFtZ6pN2UwomXNc525M50FFDo3Hx2R2Mmr8zD+cEQjf8dTOsHec+806NCa
	hkUoKhKcf//OfRAzWTQey9Fw8MDGObvuBri6o1tIs1PkyczWKrZuREqEol4/Gqc01QBaMFg4RGnGm
	nG8GyK3CwPBwU67S/a9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFCTk-00000007pid-4BQ5;
	Sat, 01 Nov 2025 14:21:17 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFCTh-00000007pi7-45pP;
	Sat, 01 Nov 2025 14:21:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 37C9143B4B;
	Sat,  1 Nov 2025 14:21:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AB40C4CEF1;
	Sat,  1 Nov 2025 14:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762006870;
	bh=Gvf1mYIDAEuIXGTcNGdXvQgYVAM627aH5dsUdJvMLwQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nG48ZwOsmf7ywyIGxFuAKUMJaoY0VGESkpv/4qfZ/KTJNA6A2yFpJYCOkpKtiQL3p
	 MwqeckBV20eo0FzheXg09WpWb8CJ/4Qkx2OAcUGcGGtx0NA1P+bi2JffRjGJmI9+bp
	 5CJcGRHKTC/tknYmstKlskizDI2wkbBuzf89hPe5acIc/W6IqYgngxX0YC0LU+qFtx
	 ZUVmaw1kczjP+C9CvW38D//14rynREuHAONkC0ZqFBmXtXikwPUH/q4ofymafDb/Tz
	 NCExRsF/0TC/fuwYqUkoC1aVQ3rIn4lxdpD0HeJHvYlr+uE1I3ogVeulX/p2qIuBCc
	 yU7Fs4Bv+fErw==
Date: Sat, 1 Nov 2025 19:50:58 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Jingoo Han <jingoohan1@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Subject: Re: [PATCH v4 9/9] PCI: dwc: support missing PCIe device on resume
Message-ID: <qlil44i7ywwxurdfovkbqvvjff7dey53uy5hzq4zbmvg7jg54o@zdg27w4q26gr>
References: <20251029-rockchip-pcie-system-suspend-v4-0-ce2e1b0692d2@collabora.com>
 <20251029-rockchip-pcie-system-suspend-v4-9-ce2e1b0692d2@collabora.com>
 <dc230a62-bd31-450a-9acd-fa654f694b3a@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dc230a62-bd31-450a-9acd-fa654f694b3a@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_072114_077050_626F563D 
X-CRM114-Status: GOOD (  26.38  )
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

T24gVGh1LCBPY3QgMzAsIDIwMjUgYXQgMTE6MDc6MTlBTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSB3cm90ZToKPiAKPiBPbiAxMC8yOS8yMDI1IDExOjI2IFBNLCBTZWJhc3RpYW4g
UmVpY2hlbCB3cm90ZToKPiA+IFdoZW4gZHdfcGNpZV9yZXN1bWVfbm9pcnEoKSBpcyBjYWxsZWQg
Zm9yIGEgUENJZSByb290IGNvbXBsZXggZm9yIGEgUENJZQo+ID4gc2xvdCB3aXRoIG5vIGRldmlj
ZSBwbHVnZ2VkIG9uIFJvY2tjaGlwIFJLMzU3NiwgZHdfcGNpZV93YWl0X2Zvcl9saW5rKCkKPiA+
IHdpbGwgcmV0dXJuIC1FVElNRURPVVQuIER1cmluZyBwcm9iZSB0aW1lIHRoaXMgZG9lcyBub3Qg
aGFwcGVuLCBzaW5jZQo+ID4gdGhlIHBsYXRmb3JtIHNldHMgJ3VzZV9saW5rdXBfaXJxJy4KPiA+
IAo+ID4gVGhpcyBhZGRzIHRoZSBzYW1lIGxvZ2ljIGZyb20gZHdfcGNpZV9ob3N0X2luaXQoKSB0
byB0aGUgUE0gcmVzdW1lCj4gPiBmdW5jdGlvbiB0byBhdm9pZCB0aGUgcHJvYmxlbS4KPiA+IAo+
ID4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNv
bGxhYm9yYS5jb20+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kZXNpZ253YXJlLWhvc3QuYyB8IDEzICsrKysrKysrKystLS0KPiA+ICAgMSBmaWxlIGNoYW5n
ZWQsIDEwIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtaG9zdC5jIGIvZHJp
dmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWhvc3QuYwo+ID4gaW5kZXgg
ZTkyNTEzYzViZGE1Li5mMjVmMWMxMzY5MDAgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtaG9zdC5jCj4gPiArKysgYi9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtaG9zdC5jCj4gPiBAQCAtMTIxNSw5ICsx
MjE1LDE2IEBAIGludCBkd19wY2llX3Jlc3VtZV9ub2lycShzdHJ1Y3QgZHdfcGNpZSAqcGNpKQo+
ID4gICAJaWYgKHJldCkKPiA+ICAgCQlyZXR1cm4gcmV0Owo+ID4gLQlyZXQgPSBkd19wY2llX3dh
aXRfZm9yX2xpbmsocGNpKTsKPiA+IC0JaWYgKHJldCkKPiA+IC0JCXJldHVybiByZXQ7Cj4gPiAr
CS8qCj4gPiArCSAqIE5vdGU6IFNraXAgdGhlIGxpbmsgdXAgZGVsYXkgb25seSB3aGVuIGEgTGlu
ayBVcCBJUlEgaXMgcHJlc2VudC4KPiA+ICsJICogSWYgdGhlcmUgaXMgbm8gTGluayBVcCBJUlEs
IHdlIHNob3VsZCBub3QgYnlwYXNzIHRoZSBkZWxheQo+ID4gKwkgKiBiZWNhdXNlIHRoYXQgd291
bGQgcmVxdWlyZSB1c2VycyB0byBtYW51YWxseSByZXNjYW4gZm9yIGRldmljZXMuCj4gPiArCSAq
Lwo+IAo+IEluIHRoZSByZXN1bWUgc2NlbmFyaW8sIHdlIHNob3VsZCBleHBsaWNpdGx5IHdhaXQg
Zm9yIHRoZSBsaW5rIHRvIGJlIHVwLAo+IHRoZXJlIGlzIG5vIElSUSBzdXBwb3J0IGF0IHRoaXMg
cmVzdW1lIHBoYXNlCgpUaGlzIGNvdWxkIGJlIGZpeGVkIGlmIHRoZSBQTSBoYW5kbGVycyBhcmUg
bW92ZWQgdG8gbm9uLW5vX2lycSBvbmVzLgoKPiBhbmQgc2Vjb25kbHkgYWZ0ZXIgY29udHJvbGxl
ciByZXN1bWUgcG0gZnJhbWV3b3JrIHdpbGwgc3RhcnQgcmVzdW1pbmcgdGhlCj4gYnJpZGdlcyAm
IGVuZHBvaW50cy4gd2hhdCBoYXBwZW5zCj4gaWYgdGhlIGxpbmsgaXMgbm90IHVwIGJ5IHRoZSB0
aW1lIGVuZHBvaW50IGlzIHJlc3VtZSBpcyBjYWxsZWQuIEFuZCBlbnRpcmUKPiBzYXZlICYgcmVz
dG9yZSBzdGF0ZXMgbWlnaHQgYWxzbyBnZXRzIG1lc3NlZCB1cC4KPiBUaGVyZSB3aWxsIGJlIG5v
IHdheSB0byByZWNvdmVyIGZyb20gdGhpcy4KPiAKClRoaXMgaXMgdHJ1ZSBpZiB0aGVyZSB3ZXJl
IGFueSBkZXZpY2VzIGNvbm5lY3RlZCB0byB0aGUgYnVzIGR1cmluZyBzdXNwZW5kLiBJZgp0aGVy
ZSB3ZXJlIG5vIGRldmljZXMsIHRoZW4gaXQgaXMgZmluZSB0byBza2lwIHdhaXRpbmcgZm9yIHRo
ZSBsaW5rIHRvIGJlIHVwLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+N
IOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
