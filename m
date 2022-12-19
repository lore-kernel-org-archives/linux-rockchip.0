Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 544A3C001B2
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 21:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ntdLHvgLhL4O2qVdOSGyuUoPKL+Idd7DpB8TkV1i5N0=; b=qnG0nuPP5mEDUC
	975tHe6CKuoDb1PX+vPjUE/rfZwnlofrr0lYqDeZEqHBXOZFgMS7tcAeGwW98/EvZFU14GeRA/nr5
	dZoikzJOnKzrOwV10P3ZgdAnUUiSRF4BGcU/wsVQk/3Z1YJuK/v9NKGX3y2p8SmaPirwXgray+EGS
	bCGiGuhaPDiQnM/upEAXIkdQCrCk+whjl/XUPvu/safW05UNfHHne1/SzPOkKbUKdZv4acdsSeEAO
	yBWKGEJEZdCz+ujt+cLD4o+YpjPFhK+HvNoD9XpUKcLC5FhSe8AIthxJzOi67GikcPVPzvgGRO3jo
	bCrYaMz6UdTnWj1TTxFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7NhZ-003x9I-R5; Mon, 19 Dec 2022 21:29:37 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7NhW-003x6j-G4
	for linux-rockchip@lists.infradead.org; Mon, 19 Dec 2022 21:29:36 +0000
Received: by mail-lf1-x12f.google.com with SMTP id b13so15703190lfo.3
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Dec 2022 13:29:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bUcJbVxMOaJY/dHHh8xvsq+/igbf7VEloWZtT9T4IzU=;
        b=rzxTEULuNPC0Sk1BptH9+AxtBNYpQ4FvyVS+RZXbKY2D7sBHJ+hvBHwrVH0tDi7Rvz
         h4OqVfIgl0PXf8Ovl/2qSyZ/KoyDOz9b003uMNhVpm1J9JtBDCAKWeuWE15pPZW2gIIv
         h2chuLEfXiovnqiNG9l6ZAuMR5mFNmzXxnQB4SVLDVxbGW409nYMSJQ8Jmpb0JuRijyo
         okvz2kocRJ8wM8Iz2aai0aQ9EMHjWfEAQzNAt/EigCOd9aZW5+sIKW1ofP+jf5VWzLqc
         ANlZC/28G3mnTqMXI1dTNeDbeSi+5h4yy7kRA41V1CQcQkqDfSx4HNK+10KuUXPbxWgi
         7jYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bUcJbVxMOaJY/dHHh8xvsq+/igbf7VEloWZtT9T4IzU=;
        b=Zw42vdPEKUPyP9JTv84paUaiCtCDoIb34pw/hd9I5vnsQEUile+pDhnT0X/L3f0fxS
         X0mLelj1qghK2dtgIIBmGHhyBsRjpX4MbaQKmXPS3laJ2mUE94bl391+2nfH4FpEcj+4
         peSIb6jv9Nqmlo8TgCrkJTl1siDVx8BhbdfoD5Yaxol/wwNRwJ3gkyooiat3cVmuJy9W
         s3Mcb8iKKo3/jzr6edno3K+RJDjACpvRWeVdgAII4okIBVXS/8tiXl262Cnl7VOPp4yL
         E8//sjAvIobkwyQg3tjOy6S4YCNXxL3lKhLX8rxusa3o9YRQz1SCx8PzIEC5QCkx/HK+
         7i1Q==
X-Gm-Message-State: AFqh2krJEEK9fk4CDUgs6QVKRWUUYzyq6VF8n+RD3byUKYQgX73sEoED
	7R3LdQRXZLH7FDA528jyQ/uGGxVxqm3W0PxlYcEbUA==
X-Google-Smtp-Source: AMrXdXuizsuNjhFyKkOnbtLJwUqaBbpBBlxoGkLKHoZC+MtkShGjXM8bjGIdWmzqC9sIRApRvAJrUe+gsXpQ2zhJRfc=
X-Received: by 2002:a05:6512:3f1e:b0:4c8:a047:8833 with SMTP id
 y30-20020a0565123f1e00b004c8a0478833mr206178lfa.653.1671485371730; Mon, 19
 Dec 2022 13:29:31 -0800 (PST)
MIME-Version: 1.0
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
 <20221219155616.848690-4-benjamin.gaignard@collabora.com> <07747babe7f83a496f9cd82849c6c2386550ac28.camel@ndufresne.ca>
In-Reply-To: <07747babe7f83a496f9cd82849c6c2386550ac28.camel@ndufresne.ca>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 19 Dec 2022 18:29:20 -0300
Message-ID: <CAAEAJfDoX_aSTg1TO8F21iSriYeTXtRbHPo8wxx5br2v6eCt7Q@mail.gmail.com>
Subject: Re: [PATCH v1 3/9] media: verisilicon: Save bit depth for AV1 decoder
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, p.zabel@pengutronix.de, 
	mchehab@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	heiko@sntech.de, daniel.almeida@collabora.com, 
	nicolas.dufresne@collabora.co.uk, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_132934_558578_4CDF0E5F 
X-CRM114-Status: GOOD (  20.33  )
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

Qm9uam91ciBOaWNvbGFzLAoKT24gTW9uLCBEZWMgMTksIDIwMjIgYXQgNTozNyBQTSBOaWNvbGFz
IER1ZnJlc25lIDxuaWNvbGFzQG5kdWZyZXNuZS5jYT4gd3JvdGU6Cj4KPiBMZSBsdW5kaSAxOSBk
w6ljZW1icmUgMjAyMiDDoCAxNjo1NiArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgYSDDqWNyaXQg
Ogo+ID4gU3RvcmUgYml0IGRlcHRoIGluZm9ybWF0aW9uIGZyb20gQVYxIHNlcXVlbmNlIGNvbnRy
b2wuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdh
aWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gPiAtLS0KPiA+ICAuLi4vbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vaGFudHJvX2Rydi5jICAgfCAyNiArKysrKysrKysrKysrKysrKysrCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMgYi9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+ID4gaW5kZXggNDUwMGUxZmMwZjJj
Li44ZTkzNzEwZGNmZWQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zl
cmlzaWxpY29uL2hhbnRyb19kcnYuYwo+ID4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKPiA+IEBAIC0zMjQsNiArMzI0LDI1IEBAIHN0YXRpYyBp
bnQgaGFudHJvX3ZwOV9zX2N0cmwoc3RydWN0IHY0bDJfY3RybCAqY3RybCkKPiA+ICAgICAgIHJl
dHVybiAwOwo+ID4gIH0KPiA+Cj4gPiArc3RhdGljIGludCBoYW50cm9fYXYxX3NfY3RybChzdHJ1
Y3QgdjRsMl9jdHJsICpjdHJsKQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBoYW50cm9fY3R4ICpj
dHg7Cj4gPiArCj4gPiArICAgICBjdHggPSBjb250YWluZXJfb2YoY3RybC0+aGFuZGxlciwKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaGFudHJvX2N0eCwgY3RybF9oYW5kbGVy
KTsKPiA+ICsKPiA+ICsgICAgIHN3aXRjaCAoY3RybC0+aWQpIHsKPiA+ICsgICAgIGNhc2UgVjRM
Ml9DSURfU1RBVEVMRVNTX0FWMV9TRVFVRU5DRToKPiA+ICsgICAgICAgICAgICAgY3R4LT5iaXRf
ZGVwdGggPSBjdHJsLT5wX25ldy5wX2F2MV9zZXF1ZW5jZS0+Yml0X2RlcHRoOwo+Cj4gVGhhdCBz
ZWVtcyBhIGxpdHRsZSBiZSB3ZWFrLCB3aGF0IGhhcHBlbnMgaWYgeW91IGNoYW5nZSB0aGUgYml0
X2RlcHRoIHdpdGggYQo+IG5vbi1yZXF1ZXN0IHNfY3RybCB3aGlsZSBpdHMgZGVjb2RpbmcgPyBU
byBiZSB0aGlzIGRlc2VydmUgYSBsaXR0bGUgYml0IG9mCj4gcHJvdGVjdGlvbiwgYSBzb21ldGhp
bmcgdGhhdCB2YWxpZGF0ZSBhbmQgY29weSBpdCBhdCB0aGUgc3RhcnQgb2YgdGhlIGRlY29kaW5n
Lgo+CgpPaCwgbmljZSBjYXRjaC4gV2UgbmVlZCB0byByZXR1cm4gRUJVU1ksIHNlZQpodHRwczov
L3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL3Y1LjAvbWVkaWEvdWFwaS92NGwvYnVmZmVyLmh0bWwj
aW50ZXJhY3Rpb25zLWJldHdlZW4tZm9ybWF0cy1jb250cm9scy1hbmQtYnVmZmVycy4KClRoZXJl
J3MgYWxyZWFkeSBhbiBBUEkgaW4gdGhlIFY0TDIgY29udHJvbCBmcmFtZXdvcmsgZm9yIGRyaXZl
cnMgdG8gdXNlLApzZWUgdjRsMl9jdHJsX2dyYWIgaW4KaHR0cHM6Ly93d3cua2VybmVsLm9yZy9k
b2MvaHRtbC92NS4wL21lZGlhL2thcGkvdjRsMi1jb250cm9scy5odG1sI2FjdGl2ZS1hbmQtZ3Jh
YmJlZC1jb250cm9scy4KCj4gcC5zLiBJIGtub3csIFZQOSBzZWVtcyBzaW1pbGFyLCB0aG91Z2gg
YXJndWFibHkgdGhhdCB3YXMgY29waWVkIGZyb20ganBlZywgZm9yCj4gd2hpY2ggaXQgc2VlbXMg
dG90YWxseSBzYXZlIHRvIGNoYW5nZSB0aGUgcXVhbGl0eSBhdCBydW4tdGltZS4KPgoKTm8sIHdh
c24ndCBjb3BpZWQgZnJvbSBKUEVHIDotKSBJIGp1c3QgZGlkbid0IHJlYWxpemUgdGhpcyB3YXMg
YW4KaXNzdWUsIGJ1dCBpdCBpcwpnaXZlbiB0aGUgYml0X2RlcHRoIGFmZmVjdHMgdGhlIGJ1ZmZl
cnMgc28geW91IGFyZSBjb3JyZWN0LCBpdCBuZWVkcwp0byBiZSBmaXhlZCBmb3IgVlA5IHRvby4K
ClRoYW5rcyEKRXplcXVpZWwKCj4gPiArICAgICAgICAgICAgIGJyZWFrOwo+ID4gKyAgICAgZGVm
YXVsdDoKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiArICAgICB9Cj4gPiAr
Cj4gPiArICAgICByZXR1cm4gMDsKPiA+ICt9Cj4gPiArCj4gPiArCj4gPiAgc3RhdGljIGNvbnN0
IHN0cnVjdCB2NGwyX2N0cmxfb3BzIGhhbnRyb19jdHJsX29wcyA9IHsKPiA+ICAgICAgIC50cnlf
Y3RybCA9IGhhbnRyb190cnlfY3RybCwKPiA+ICB9Owo+ID4gQEAgLTMzNiw2ICszNTUsMTIgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCB2NGwyX2N0cmxfb3BzIGhhbnRyb192cDlfY3RybF9vcHMgPSB7
Cj4gPiAgICAgICAuc19jdHJsID0gaGFudHJvX3ZwOV9zX2N0cmwsCj4gPiAgfTsKPiA+Cj4gPiAr
c3RhdGljIGNvbnN0IHN0cnVjdCB2NGwyX2N0cmxfb3BzIGhhbnRyb19hdjFfY3RybF9vcHMgPSB7
Cj4gPiArICAgICAudHJ5X2N0cmwgPSBoYW50cm9fdHJ5X2N0cmwsCj4gPiArICAgICAuc19jdHJs
ID0gaGFudHJvX2F2MV9zX2N0cmwsCj4gPiArfTsKPiA+ICsKPiA+ICsKPiA+ICAjZGVmaW5lIEhB
TlRST19KUEVHX0FDVElWRV9NQVJLRVJTICAgKFY0TDJfSlBFR19BQ1RJVkVfTUFSS0VSX0FQUDAg
fCBcCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBWNEwyX0pQRUdf
QUNUSVZFX01BUktFUl9DT00gfCBcCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBWNEwyX0pQRUdfQUNUSVZFX01BUktFUl9EUVQgfCBcCj4gPiBAQCAtNTEzLDYgKzUz
OCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaGFudHJvX2N0cmwgY29udHJvbHNbXSA9IHsKPiA+
ICAgICAgICAgICAgICAgLmNvZGVjID0gSEFOVFJPX0FWMV9ERUNPREVSLAo+ID4gICAgICAgICAg
ICAgICAuY2ZnID0gewo+ID4gICAgICAgICAgICAgICAgICAgICAgIC5pZCA9IFY0TDJfQ0lEX1NU
QVRFTEVTU19BVjFfU0VRVUVOQ0UsCj4gPiArICAgICAgICAgICAgICAgICAgICAgLm9wcyA9ICZo
YW50cm9fYXYxX2N0cmxfb3BzLAo+ID4gICAgICAgICAgICAgICB9LAo+ID4gICAgICAgfSwgewo+
ID4gICAgICAgICAgICAgICAuY29kZWMgPSBIQU5UUk9fQVYxX0RFQ09ERVIsCj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
