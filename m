Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10B5DC55182
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 16:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J7xI+zhdOZFJ1dtzV7MLgBnBKXyK8Y3WYPrFo8CPv/g=; b=FBs7OSaerNHEJ2
	Gck/evcY6ScA9ogohe7Rpz2gC0H2N1CFj6WM5iBOKn7MQW4dBiUFFsMPbYY1e2d2JdqfivbuRpOfv
	3gxECvAHJzvLZHUsMMa6VLEWPdC52QK1e8dreQGL39Z/ew/WVBwab+oWmOYdtPXb7FcyNwY664nq6
	a+7ZtoPVvXVdv0Qj98PbgEsmCLHfTBVTkMHSsK9RNid9bBH212g86pBPDDW+CvFVJ2aVvFsq8UxJl
	Y72yvU/lQ9lg4g2/YDi7QHD4HHRnUZu/UBpL5by+kbspV6z62zrZnxpNY0ifgoUxXoNZESh8Fp19H
	534YSJVURqNjH4H4sHvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqves-000000006Qr-28jH;
	Mon, 03 Aug 2026 16:36:58 +0000
Received: from mail-ua1-x92b.google.com ([2607:f8b0:4864:20::92b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqvep-000000006PN-1K3E
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 16:36:56 +0000
Received: by mail-ua1-x92b.google.com with SMTP id a1e0cc1a2514c-971a7a7061bso1658061241.1
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 09:36:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785775014; cv=none;
        d=google.com; s=arc-20260327;
        b=WfNJIlFqR3H9KsHS+WK6EUmI4/FApZ6tXluCv001YV26+pLskkdN5Uw7OphACyxsAp
         V8Ezoled6On5J9/ynYDLDkGFUc3z9C+ecsOXRfPnX5TkmfUPOUh3nM2YitQNYWb6M4Sr
         Capi8I3XC+7ZeZko8pHLSlxqHxyWhfBzCAyHoQIYM02uIfspKECrVQLyKb0wXL07kQJ2
         ITTCRul+aMLVejWja9V+wxEshlYLVfj5kWuvVmva8Bfy4T4anvRQekiR/bhUiKEuxxFl
         nNEgPi54T9o7zGxYFHnGTBgSSU1ATa8yJKRTCDpRzkWQryE8wo8orpUURf909zRw7GeE
         smRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=y2mO7QnlyPovrqJ9WwdH4iPAu4v/YWoM0OB9E5eGsqI=;
        fh=G5ImBAqXJvRJYPP2EWAPU6lxsCWQ09Qx/P0ZVNIZhfk=;
        b=pB5e8vAxgotspZe1+bUEl0XuUgSoCPWKvVfBzstNoj2IfXSs9XybnWDwiqV9Nnx+lb
         j0k4xgeqJijgPV5Xm3kDhE3TE0V4yfZJuTDN8pLUItPo50Cnuc1OLFSAnZ+X2Le307lY
         7K9zHeWFNAus9dpyMpVhwtIx0ansfHvtYaqR6HL/wJLIGvR/u/oEWqyapzoAjm+dR4t+
         gsnZ05g1F6cjQ38/sRfNldPKYzm6iFl5txQ6vvpNIehleuaJNZc3AmJZWv7JcYBzAIa/
         vjep6cgU++XC0vOGubD442UO6K/n8k1lfp3VnkgP9g7w8ZKfiqWTLEpi/6l8uMoYNhPF
         r61g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785775014; x=1786379814; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=y2mO7QnlyPovrqJ9WwdH4iPAu4v/YWoM0OB9E5eGsqI=;
        b=r43wsFedo26IFN1Oxld01ncWTnbTfJXkiZvkMi7GW0VyoXsYxrsC9tHSvJd62Psiyh
         EJCYb31NtHd5eVWj3Q43m/cGLB8Gj4Q5BWflNHT7apdst3xJ+LIBdes6OrDXshY+ptFO
         Eb0SdFt5LIImZgihOeej4/i4xFfdaZpAJzDMLZNujY26mzIheuYmsOJ+Cw3gB+D+UmkF
         IhUug/kx0sczCGO0JaS1ilxDKxAOW8pngnrN8eNL8y3NaDEJ2QWhBO7SVKk+FU0T8ob1
         pHw5Hhr3U8xGy/eYm9wmBO1fktvp2zkKlmpvVMbPG0U0xMSLCVgCRKRm/pPyfp4ucKUL
         MESQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785775014; x=1786379814;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=y2mO7QnlyPovrqJ9WwdH4iPAu4v/YWoM0OB9E5eGsqI=;
        b=gEFA2yNOtel+T3xJAwVnivqSDWkqKTtitpsPsTm3Wp8panTsGX0taw6FM4FQfYsazB
         tQCu+pBS1+tGPYa+OTac+xJcSVrfKuqc2gRZQFk+geK2mTs+cZziS5yZ+1SyLNKBMfsf
         LjRW5LwOgY50VJcfS0Z9wKlBY2umtS5DAwtybN8Dj98deMqvtOpBEb5V61jCuJInvp9h
         BF9tZ99PXJnZCzgrxnDOLzVEmI/z+qzHQX4CIE9pvAqbbieuCs9zvhCt8hvVq0E6fJrZ
         JDOXYXD7L+Y/wmIF3q9g5t0tm1IaXbM/kFsqJlV+f2aMI5A25OzWl8DVV3XYg+jJnBl6
         GOtA==
X-Forwarded-Encrypted: i=1; AHgh+RrSKKA+9gdk1WbBIaEggq/vOg/QmbMxFpmvV/Ht6lHt9SmI994dG5ff8+wCE11fHDSn96X0KFmaIxw7d6bAHw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7dMMFcHUHK1G+3ItPFJbBLWZatixdXtPqCOzOUilfnJGnpaV1
	+F+WeR1PFXLhVfLS5uWVfaKLbCQrVuuc0BCJnMu4wMfUnPTREOZbaeEM1KHMjEh8hcWl1YP9Za9
	ZLAFcKzDwhyWPb6Mf/KeRyW9WV+yu9hA=
X-Gm-Gg: AR+sD12nsfCKZV6B1tgvGQsRm8prx4uTCx/QZMqGFyejObejHmvr3aMsS6aLjL2NsQ5
	5e0eU/uVI7SSTz6GFneKtlPLOJVfy9itOkRdXl8I6aUfmnDNpXYdxPDlxa4/mMj0wllQzB/uwwT
	v+NSUucibcDidlzbhpz1O+HSToEb5fewXZT9OujyrjbaSWP9jdryDrYZcKg6iLByywQMN6+GbnY
	uqba+JPwnabLXcmUca5JQt+Tr8mfimvyW4o40jYifC4l0CsKYZZqPgVk/XUUkza7ZH57d5VPrIY
	gx689KPTfvrYvHHzeAgcRhE94tQ0nUvPXOzSjjnMWv8HYWdqr6Ro11WL/JZEi+MDrgqPIXAIv9t
	rio7cas4Hh61a2Ovfi4fFuvCBewjP+toT/e/t/+nNhRj3ryaYgtxlA5RXUZrPbaWHFPGCFuQA48
	5V/7qb3fZzo7wegOtgSBygOuZGU9BvU3/qS8I/fhojoADmtW8=
X-Received: by 2002:a05:6102:41a9:b0:740:2bcd:24d2 with SMTP id
 ada2fe7eead31-75b2245a880mr8777953137.5.1785775013743; Mon, 03 Aug 2026
 09:36:53 -0700 (PDT)
MIME-Version: 1.0
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <20260802-submit-acx00-of-dynamic-v1-v1-8-0a53cd9e21cc@gmail.com>
 <f2cc3c90-060f-40c1-a55e-e2ed91e65487@kernel.org> <CADvTj4q7HnOYJZE-M070-1npEdne__Ct5D9FeUNVVXa8Bsm7qQ@mail.gmail.com>
 <e198e8fa-6c5e-4c8d-a4de-d8bb25aab0bd@kernel.org> <cd177647-827c-481a-9ac6-5f5a1882f14e@kernel.org>
In-Reply-To: <cd177647-827c-481a-9ac6-5f5a1882f14e@kernel.org>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Mon, 3 Aug 2026 10:36:39 -0600
X-Gm-Features: AUfX_mxf143l7ltuwFHdM8jtybu0jFAqTogB47kH9lIVgz-FaKgqQGV-oPrZGYA
Message-ID: <CADvTj4qby5jow6BkvumZFK6cF8aLCTeQZz39VKEdm59jEtRp8w@mail.gmail.com>
Subject: Re: [PATCH 08/21] dt-bindings: mfd: x-powers: add AC200
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>, 
	Richard Genoud <richard.genoud@bootlin.com>, Maxime Ripard <mripard@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	mfd@lists.linux.dev, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_093655_366653_C773962D 
X-CRM114-Status: GOOD (  15.68  )
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

T24gTW9uLCBBdWcgMywgMjAyNiBhdCAyOjIx4oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
a0BrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIDAzLzA4LzIwMjYgMTA6MjAsIEtyenlzenRvZiBL
b3psb3dza2kgd3JvdGU6Cj4gPj4+PiAtLS0gL2Rldi9udWxsCj4gPj4+PiArKysgYi9pbmNsdWRl
L2R0LWJpbmRpbmdzL21mZC94LXBvd2VycyxhYzIwMC5oCj4gPj4+PiBAQCAtMCwwICsxLDEzIEBA
Cj4gPj4+PiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNE
LTItQ2xhdXNlKSAqLwo+ID4+Pj4gKy8qCj4gPj4+PiArICogSW50ZXJydXB0IG51bWJlcnMgb2Yg
dGhlIFgtUG93ZXJzIEFDMjAwIGludGVycnVwdCBjb250cm9sbGVyLgo+ID4+Pj4gKyAqLwo+ID4+
Pj4gKwo+ID4+Pj4gKyNpZm5kZWYgX0RUX0JJTkRJTkdTX01GRF9YX1BPV0VSU19BQzIwMF9ICj4g
Pj4+PiArI2RlZmluZSBfRFRfQklORElOR1NfTUZEX1hfUE9XRVJTX0FDMjAwX0gKPiA+Pj4+ICsK
PiA+Pj4+ICsjZGVmaW5lIEFDMjAwX0lSUV9UVkUgICAgICAgICAgICAgICAgICAgICAgICAwCj4g
Pj4+PiArI2RlZmluZSBBQzIwMF9JUlFfRVBIWSAgICAgICAgICAgICAgICAgICAgICAgMQo+ID4+
Pj4gKyNkZWZpbmUgQUMyMDBfSVJRX1JUQyAgICAgICAgICAgICAgICAgICAgICAgIDIKPiA+Pj4K
PiA+Pj4gSGFyZHdhcmUgY29uc3RhbnRzIGFyZSBub3QgcmVhbGx5IGJpbmRpbmdzLCBldmVuIHRo
b3VnaCB5b3UgdXNlIHRoZW0gaW4KPiA+Pj4gdGhlIGRyaXZlci4KPiA+Pgo+ID4+IFNob3VsZCBJ
IGRvIHNvbWV0aGluZyBkaWZmZXJlbnQgZm9yIHRoaXM/Cj4gPgo+ID4gSSB3b3VsZCBqdXN0IGRy
b3AgdGhlIGRlZmluZXMgYW5kIHRoZSBoZWFkZXIsIGJlY2F1c2UgdGhlc2UgYXJlIGZpeGVkCj4g
PiBoYXJkd2FyZSBudW1iZXJzLgo+ID4KPgo+IEhtLCB1bmxlc3MgdGhleSBhcmUgbm90IGFuZCB5
b3UgYWRkZWQgYWJzdHJhY3QgSUQgbnVtYmVycyBmb3IgYm90aCBEVFMKPiBhbmQgZHJpdmVycz8g
VGhlbiB0aGlzIHdvdWxkIGJlIGZpbmUuCgpZZWFoLCB0aGVzZSBhcmUgbW9yZSBhYnN0cmFjdCBJ
RCBudW1iZXJzLCB0aGV5IGFyZW4ndCByZWFsbHkgaGFyZHdhcmUKY29uc3RhbnRzIGFzIHRoZSBk
cml2ZXIgdHJhbnNsYXRlcyB0aGVtLgoKPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
