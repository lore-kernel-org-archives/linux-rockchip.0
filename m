Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26669D6C2B6
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Nov 2024 22:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCXQo5qiTHkIfVmciPGSfzYFoxYM0YXWnseAGbAVsV0=; b=m1b8hA2iX7D2xN
	oLgzqyxtlO9TWEUtbu3UUP5ZjkP0Fu8qZqsvrebGN/ZSFa3JExGlTXlfDyCC9dLtHn73AG0+UB7k8
	MgtK4qgESgfYGef21U6wFXAzlM7KP4CxP6cTckp/uLl3iNRASUhDY2I/NE5oCmVfdKd6TwlYcUjTh
	TmuhYOmrWptkifwT9kWfJ5Nw0J7T3xsUNF2m24UVVtvXlC60MPGUInN1SHUdIOIPtYNhRoCv9VZFf
	L6u0kgTxPrCGKO7Z46HwHDx81VRbp4+ruBy6Z8AbtjlJvhiP3HRyGaDobQVHJ8UOYDCoxTqpfAc/I
	/UEUV2vDZTbQ3zB/tJNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDX03-0000000DvAE-1ntc;
	Tue, 19 Nov 2024 22:47:11 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDWz7-0000000Dv55-0JdB;
	Tue, 19 Nov 2024 22:46:14 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-46101120e70so45066601cf.1;
        Tue, 19 Nov 2024 14:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732056371; x=1732661171; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nFlvZUhBTVG/QjGIG47CN+zwdKjfaq1hUpC4OSztlJc=;
        b=ONcHAhTxOm6ea4tzX9Js7v/85s2/KfWoCG5y89AJu4t9Zf8UQ3pEMMFG0huwYK8IE9
         nvaGZN971OBW52/Fm8oiyLUPTdVDPuROH9vdMdjAo0+Rzaqw814snIo/Dg0fXn4fiW1X
         2GtLByb/l9qh/0PGCF6D0DP6KR/h6rySd1OtEFYpHOfsUMkihVfNamfa8ktpCgnRgduk
         d63AODZsGdWSDn1n5o1YPsLrPeqCNeBzq647QWVje6Tc8tyf07Q/Zh7P6G1dfZfHDIW4
         rSHlx5Ls/m09YqXXVZNYBZzduwWEQCGujxs88d4gumUJDAay/xC8nb9zvXxIxoHvUXHf
         KgIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732056371; x=1732661171;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nFlvZUhBTVG/QjGIG47CN+zwdKjfaq1hUpC4OSztlJc=;
        b=H5sMbp9n3J8xnD4O4zHzuz9eSzcG+N4dhQfI0GVsK8rhzIrfLacQAJit2uVfxyevHZ
         /wN0/raKrxFuyYBWx/gXaE8XnfhzcDSWsr6crSFMkDuYsM0phOfMRUFId8Coddl4UOrn
         IhfKEdoSgZAKz11KnTWxOxA/SR/aIRRMYKIYd63Ym8/0C0tPMXkpZVv7eddXKvrcEmzK
         MY6DPE/pRaa4+BX4tz+82uj1JojsMnI3j55BcyccAbZrQbGDHV1qbQAHSQbOjgxorb7H
         kN5rfgO4g31mSr26quDjNBETv5BkrW39447fGLxJ647MA7/L7xCDKW33C+yDafat20Ha
         YxKg==
X-Forwarded-Encrypted: i=1; AJvYcCUefZg1l+nHGYQq3wdkaqLOHJTZvptn9NghdXlm354YeGibZ0S3JKmuEZcr7Dmg6eS834Mw4F7IfIbyBJ7E6xo4@lists.infradead.org, AJvYcCXLxrWpIZDNFZ70K8AwO3aEaFDpYdqeAembp43hORBN3eicBXwcFiVQf0kuw4n4VWp5sgpmX5fdfMbiHOkWdRo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyiZ9xsWwBrNWDcPR4XaV4YasUjnc+6uWyedF0yRsgh4dH8w6MQ
	IgycBN9r6RExqjIANmEbRnXw9qJLax+vHAqSwo9MMsG2gtfH+5/VIPiGJI3RA6FR81cV5xiB+LW
	VEMuWPsoQdpq89RcM7sTvxTdQf/Q=
X-Google-Smtp-Source: AGHT+IFftTaj4R1HHwo/Eur2kE1kx/vORWSc0ROFajcQGqwuxJIqnWmgNQ2EMXfRCVrM+p2dKLWz3cRFX0pW3nWlfJA=
X-Received: by 2002:ac8:5e11:0:b0:461:41cb:823c with SMTP id
 d75a77b69052e-464692a1b68mr5307851cf.0.1732056371312; Tue, 19 Nov 2024
 14:46:11 -0800 (PST)
MIME-Version: 1.0
References: <20241107211428.32273-1-jiashengjiangcool@gmail.com>
 <20241107211428.32273-3-jiashengjiangcool@gmail.com> <zd5673eo7kqwg67lsy6h3m4zdpmgp5xzhr355ialwx6zhdopfb@7x3v5b747sqn>
 <CANeGvZVibHOsqdD+zw_u2yswJdvUu=Ssep9eWeAOcqmg6J-zqg@mail.gmail.com> <y4xv4lduinhjbhzt64erjw3er5w3s2tcwzjxxdknoudaefupxq@fbqf4esensnk>
In-Reply-To: <y4xv4lduinhjbhzt64erjw3er5w3s2tcwzjxxdknoudaefupxq@fbqf4esensnk>
From: Jiasheng Jiang <jiashengjiangcool@gmail.com>
Date: Tue, 19 Nov 2024 17:46:00 -0500
Message-ID: <CANeGvZXnu93tXowfOn=+3H0-=dEYuwBOkjytcuMH1m6yxGg9pw@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] i2c: rk3x: Add check for clk_enable()
To: Andi Shyti <andi.shyti@kernel.org>
Cc: dianders@chromium.org, rmk@dyn-67.arm.linux.org.uk, max.schwarz@online.de, 
	david.wu@rock-chips.com, heiko@sntech.de, vz@mleia.com, wsa@kernel.org, 
	manabian@gmail.com, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_144613_112170_36DB26BE 
X-CRM114-Status: GOOD (  20.54  )
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

SGkgQW5kaSwKCk9uIFR1ZSwgTm92IDE5LCAyMDI0IGF0IDU6MDPigK9QTSBBbmRpIFNoeXRpIDxh
bmRpLnNoeXRpQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gSGkgSmlhc2hlbmcsCj4KPiA+ID4gPiAg
c3RhdGljIHUzMiByazN4X2kyY19mdW5jKHN0cnVjdCBpMmNfYWRhcHRlciAqYWRhcCkKPiA+ID4g
PiBAQCAtMTM2NSw5ICsxMzg5LDEyIEBAIHN0YXRpYyBpbnQgcmszeF9pMmNfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ID4gPiAgICAgICB9Cj4gPiA+ID4KPiA+ID4gPiAg
ICAgICBjbGtfcmF0ZSA9IGNsa19nZXRfcmF0ZShpMmMtPmNsayk7Cj4gPiA+ID4gLSAgICAgcmsz
eF9pMmNfYWRhcHRfZGl2KGkyYywgY2xrX3JhdGUpOwo+ID4gPiA+ICsgICAgIHJldCA9IHJrM3hf
aTJjX2FkYXB0X2RpdihpMmMsIGNsa19yYXRlKTsKPiA+ID4gPiAgICAgICBjbGtfZGlzYWJsZShp
MmMtPmNsayk7Cj4gPiA+Cj4gPiA+IHlvdSBjYW4ndCBkaXNhYmxlIGEgY2xvY2sgdGhhdCBoYXMg
ZmFpbGVkIHRvIGVuYWJsZSwgcmlnaHQ/Cj4gPiA+Cj4gPiA+IEJUVywgYWx0aG91Z2ggSSBsaWtl
IHRoaXMgcGF0Y2ggKG9yIGF0IGxlYXN0IEkgZG9uJ3QgZGlzbGlrZSksIEkKPiA+ID4gc3RpbGwg
d2FudCB0byBjaGVjayB3aGV0aGVyIGl0J3Mgd2FudGVkIG9yIG5vdC4KPiA+ID4KPiA+ID4gQW5k
aQo+ID4gPgo+ID4KPiA+IFRoYW5rIHlvdSBmb3IgeW91ciBhZHZpY2UuIEkgaGF2ZSBjYXJlZnVs
bHkgcmV2aWV3ZWQgdGhlIHBhdGNoLgo+ID4gVGhlcmUgYXJlIHR3byBjbG9ja3M6ICJpMmMtPmNs
ayIgYW5kICJpMmMtPnBjbGsiLgo+ID4gVGhlICJpMmMtPmNsayIgaXMgZW5hYmxlZCBhbmQgZGlz
YWJsZWQgaW4gcmszeF9pMmNfcHJvYmUoKSwKPiA+IHdoaWxlIHRoZSAiaTJjLT5wY2xrIiBpcyBt
YW5hZ2VkIHdpdGhpbiByazN4X2kyY19hZGFwdF9kaXYoKS4KPiA+IFRodXMsIHRoZSAiaTJjLT5j
bGsiIGhhcyBhbHJlYWR5IGJlZW4gZW5hYmxlZCBhdCB0aGlzIHBvaW50Lgo+Cj4geWVzLCB0aGF0
J3MgY29ycmVjdCwgdGhhdCdzIGEgZmFzdCByZXZpZXcgYW5kIGFueXdheSB5b3VyIHBhdGNoCj4g
ZG9lc24ndCBoYXZlIGFueXRoaW5nIHRvIGRvIHdpdGggdGhpcy4KPgo+IEJUVywgZGlkIHlvdSBo
YXZlIHJlYWwgZmFpbHVyZSBleHBlcmllbmNlIGhlcmUgb3IgaXMgaXQganVzdAo+IHNwZWN1bGF0
aW9uPwoKQ3VycmVudGx5LCBJIGhhdmUgbm8gaWRlYSBob3cgdG8gdHJpZ2dlciB0aGlzIGZhaWx1
cmUuCkluIGZhY3QsIEkgb25seSBpZGVudGlmaWVkIGl0IHRocm91Z2ggc3RhdGljIGFuYWx5c2lz
LgpIb3dldmVyLCBJIGJlbGlldmUgYWRkaW5nIGEgY2hlY2sgaGVyZSB3aWxsIGVuaGFuY2UgdGhl
CnJvYnVzdG5lc3Mgb2YgdGhlIGNvZGUuCgotSmlhc2hlbmcKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
