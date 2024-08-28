Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25E16C54FAA
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 13:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONJwkw5NjQ6k8SSjO0wkomCkZJ4czCtW+6sj9FrqIk8=; b=b0sEL4CjKEDssM
	Beo1DLFeHD/wiZNuiExGob3rq17Lcmn6jXjd+7JGDyS51Dv++3NezgE0BjYjrotv/u9rNrZI1C01U
	Z3O9dkXnca84+oXoeRb4KO3pY2+WSGn6CasyLSH2pBPgu1K8JeSEp1skTeLwcVUYOQia1sXYvyXey
	Tiqhs9UDbijhGp61RlmlZ5savFzT70ijSMaV8I3MSAv/h/TiMW84+Wss7kGsU9m5rPlTT0fXuw4AA
	Ffb+Q+ttKYPUZH88LX7XccGUY1kF1aG4Ln8InTGUMG1oZM56/2L/Y60XZA5hNpRqLIYKdt7LjA7XS
	5SkO2d7XA8UwbfuEzsSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIgV-0000000FWL4-0Uo1;
	Wed, 28 Aug 2024 13:26:03 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIfe-0000000FWCU-1wFW;
	Wed, 28 Aug 2024 13:25:12 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2f4f2868783so63417691fa.2;
        Wed, 28 Aug 2024 06:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724851508; x=1725456308; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IgiiWmkaONZMDrv95lSjLISp29W4kqOAF1MsY3+Ck9Q=;
        b=Yyh5IjnZIHntA8Qh8nZQ9TCGAY1oY2FHYPAqoGeI2cWRFCdVcXmLAEHGYqIc1iO0rI
         R8ZjiXpRbPkWjzsbFpCzwPogvOkYXa8GrLx4kbAvt52nZ4ZaicgWJNIBLNLAlKXhB4iu
         eenTpcPhQhPNkEh7yXWSeP8H9Ag5CLHhi04cA+XEsPOHM9OWk0kOeFFG6zkDiqjUYv61
         QmQRzj55MBeG067tSxeX04l1JN6TGtc3nOElKyPZMoTZRYZO5jlfN5Yf2Q6hfpcLH8QM
         797oJagjhU2N7usPC4PhtFP+73O8ugsyTYx1pzMzOWVmhNr9K/hcQLLNSZy7+7k0d9M5
         s4Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724851508; x=1725456308;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IgiiWmkaONZMDrv95lSjLISp29W4kqOAF1MsY3+Ck9Q=;
        b=RVhF/AXTEdJMx+VXtqPlUGrgobu5ajIQqwYJSCSHO8Fk65Qx3M/BbdUJxNz1lCQomK
         1TyQHvlPWpUyFnHQwYmZcgs9L6pgILXX8+c4YcffitkcKMjT9OlZfYaRJZrXxCGa8RTa
         N4mgf9KpkJWMohXamNfgm0B7ZAfE1+tzLLkA4yd5+p/BH6Heaff5JA8IWALBjdCNtOxM
         rDaUz1lE09sBA4pen/AGEEcV+DDO+UADCzidE9JA7EC2QPN3NSilR1m3dJf5RH7ZSlyB
         g4pcAgL/wtTowqs9qxpXq2RttYQXnM9gohtoVi4twAzJkp7Z5TX7J6ZfSYzu0bqoDPLf
         N23g==
X-Forwarded-Encrypted: i=1; AJvYcCUkKjZcEgIWVGnUay5RgG4MY5G1zxVI0k4DHNOZEdZ5Y0nJGjUxGUND10Iv8oqTAnlbzu5FBIS2TEMffPU8Qf19@lists.infradead.org, AJvYcCWAux9Mk4+vvG8RQv/2vA/3BiwES6ipqSZ8NwpzzOIGJoJBBAwDF8uF3v56GypbNHQ519BOzl8+rPKRhZYuWJw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxN75kAAEDHJsf6RQ1NCO8cY7sA3v/AXW1Mp41Dd/dH3Bz0+HXD
	CpeJnN1I1+EAi2HvNNZO3BNba45EZJgS084kSie+KrwLaiTnNn8rBvDGRmGrSC8hqs1E45NVMvk
	EaSewfAudhBSr3bkSzpjN3y8JDpOZ8OxDWWY=
X-Google-Smtp-Source: AGHT+IGUdU+h+hht4AnIJHIpk5GDpGgevmNBw32u6Cg0ojQjMizUfieIlJnFQWDOIjZW9gSubMvP7BelF8hDq6Rw/2I=
X-Received: by 2002:a2e:80a:0:b0:2f3:e7cb:ee37 with SMTP id
 38308e7fff4ca-2f55b64108cmr13324471fa.8.1724851507882; Wed, 28 Aug 2024
 06:25:07 -0700 (PDT)
MIME-Version: 1.0
References: <20240828074755.1320692-1-net147@gmail.com> <2502361.uoxibFcf9D@diego>
In-Reply-To: <2502361.uoxibFcf9D@diego>
From: Jonathan Liu <net147@gmail.com>
Date: Wed, 28 Aug 2024 23:24:56 +1000
Message-ID: <CANwerB0NUFyJ1egYNEAnhdqSyBTq41cSKKC0bAbKudZAPx8UfA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable RK809 audio codec for
 Radxa ROCK 4C+
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_062510_527054_63AE5FA1 
X-CRM114-Status: GOOD (  14.98  )
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

SGkgSGVpa28sCgpPbiBXZWQsIDI4IEF1ZyAyMDI0IGF0IDIyOjU5LCBIZWlrbyBTdMO8Ym5lciA8
aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiBBbSBNaXR0d29jaCwgMjguIEF1Z3VzdCAyMDI0LCAw
OTo0Nzo1MyBDRVNUIHNjaHJpZWIgSm9uYXRoYW4gTGl1Ogo+ID4gVGhpcyBhZGRzIHRoZSBuZWNl
c3NhcnkgZGV2aWNlIHRyZWUgY2hhbmdlcyB0byBlbmFibGUgYW5hbG9nIGF1ZGlvCj4gPiBvdXRw
dXQgZm9yIHRoZSAzLjUgbW0gVFJTIGhlYWRwaG9uZSBqYWNrIG9uIHRoZSBSYWR4YSBST0NLIDRD
KyB3aXRoCj4gPiBpdHMgUks4MDkgYXVkaW8gY29kZWMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTog
Sm9uYXRoYW4gTGl1IDxuZXQxNDdAZ21haWwuY29tPgo+Cj4gYXMgaXQgbG9va3MgbGlrZSB5b3Ug
aGF2ZSBvbmUgb2YgdGhvc2UgYm9hcmRzLCBjb3VsZCBJIHBvc3NpYmx5IGFzIHlvdQo+IHRvIHRh
a2UgYSBsb29rIGF0IHRoZSB2ZGRfY3B1X2IgYW5kIHZkZF9ncHUgbm9kZXM/Cj4KPiBJIHNlZSAo
YW5kIGRldmljZXRyZWUgY2hlY2sgcmVwb3J0cyBpdCB0b28pIGEgcGluY3RybC0wIGZvciB0aGUg
dnNlbC1ncGlvCj4gd2l0aG91dCBhY2NvbXBhbnlpbmcgcGluY3RybC1uYW1lcy4KPgo+IENvdWxk
IHlvdSBjaGVjayBpZiB0aGluZ3MgZmFpbCBpZiB5b3UgZWl0aGVyIGFkZCBwaW5jdHJsLW5hbWVz
IG9yIHJlbW92ZQo+IHRoZSBwaW5jdHJsLTAgZW50cnk/CgpJIHRyaWVkIGJvdGggYnV0IG5laXRo
ZXIgcmVzdWx0ZWQgaW4gYW55IGNoYW5nZSB0byB0aGUgd2FybmluZ3MgaW4gZHRic19jaGVjay4K
UmV2ZXJ0aW5nIG15IGNoYW5nZSBhbHNvIHJlc3VsdHMgaW4gdGhlIHNhbWUgd2FybmluZ3Mgc28g
SSBkb24ndCB0aGluawppdCBpcyByZWxhdGVkIHRvIG15IGNoYW5nZS4KClJlZ2FyZHMsCkpvbmF0
aGFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
