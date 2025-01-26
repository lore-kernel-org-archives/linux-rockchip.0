Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7653EC0218C
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Jan 2025 00:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Skk/WkT8JvQRier/Rb+vYhFAtmZv+wDOjSXV06L2kM=; b=moVEjFsEWBkUJi
	uRu7vxcmadT9JDAF2icFfYceF97xoYSXSdkdvGjgUj/6+sQiqmv7k82OrPJkaz4SsR9JlzFk8zRgp
	F2vnvkC68trkdeEMo/3+lQpKNq7x12X5j0vbwVTBp0oRzBq4EGfs3aJ0zFUEHJDpSU8z0kfktiAKL
	HzLm1n+XTGLH+NcEZTElqy9jyu1PoB+RFYsPjIEAgZZT8OQAAEPY2NNmqEptIufY7lLdB720B7+Tq
	mDLctcev4iTMw67U5fmCASgIv70CcuBMlUcPhuvmKkt3EbkpjwFOoUkvaOZxVAFYHLzHzZT1YasM7
	jl/qe+sZeUSKPDg6bx9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbqnG-0000000H0nq-2cUz;
	Sun, 26 Jan 2025 00:46:30 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbqly-0000000H0lA-0RKL
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Jan 2025 00:45:11 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5439a6179a7so3475573e87.1
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Jan 2025 16:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737852307; x=1738457107; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e571IkY7EK87y3Sunky/t3TOpY/BAarwHBxbWfeNYyU=;
        b=cdbEaS6B7gnrqGR+8aWQUGjC9OnJ7P3s1Ex/VEp1p9wB3HzMi32otO0psGpPYIHmgm
         l1n9w+HyRLWiubOaIUVo5eh1PhSUOL9w25onnm+po2nsNU9fjZQzg3y+sJU+W5Amxken
         oScw4lgCih1reYGpGkvtr9gGkybximvwo+ehs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737852307; x=1738457107;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e571IkY7EK87y3Sunky/t3TOpY/BAarwHBxbWfeNYyU=;
        b=A2CktoBpUneAUiKGunQ1Krx6PQjzLpgFaUfqktorqxdZJUVxEQfCqH1gW14zEiQv88
         2YlRI77tk3xK0hvYsaW0Zgp45NiDMLaIsUpUn8JfQi+ut/XwvIkqitWAujlxb9u43Jr1
         XRuyStJVZlUL88I2dN9DKvHJLn1xUQWAw4CUTrOshJ58Mxx9q1eJAhLPFBnLr4RfqUMi
         7gxabVgxzClMWMLvrpU3GA+G+HU4gkJexxOJwbDF+3IZnM1+va8Q0MNm8yz/TXaNJTBw
         V/fsb+m7qBAWJk+oSWU/Wce4myd1JUSZxbEB9TDm1tO4XZsLbVwNkwJGUvM1PbXD0hk2
         64cg==
X-Forwarded-Encrypted: i=1; AJvYcCV7Iaa6yd8CqKb6muIQh2vY7h+BamE6b0irNGo4GjJ34WHuz5YzLWAbXQnprH9k1z+EzbADjnjzcDoJZOnYgg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4m77gUmgPxvaf/+z7Doq9ykkUAOoCA5lfnXhTPI9FWZB0XqNU
	XVuKLzmNO0fiXnrvtF/ZsF//A5I1+iQwz2mEJ0w5RdAdFfXWHKL6PGMhFoQC7IyNARvZoaPAMro
	PLw==
X-Gm-Gg: ASbGncv8aEr4yDGVT2ngcllkbCivvr75UMAvlaeU9bZBGeuyK4K/8ASjei8JYALKfNG
	MnHtbtI/8Z3btTQrafoMfpml46wU8wllfJuR5EaNbS/vJcoPHijFquQFkE5jGGnW25m5irqdCVR
	bCoCTPzEuKr4f7tOTWxoUX2tlF02DzPSN2UMMPwbRSWuj+9Y+KBJG1N/m85TfCqF+StdbP2iTwj
	siMmXVG5QX6k8IOtgO/ziQPWyRNdDsrKjxcU0ZiG8lZhX+mivxVQsdRQ3mnSaCNOuRXSzT5mLNd
	sz+cieNavRmIPPU3KgTafWGHddBcagpvhFjCNdc7NZgRywn5
X-Google-Smtp-Source: AGHT+IE8IbGVZol7IZo7gUAOE1d5AU8FhhZizST66g7+UXdD9rxVrkVbZmookuVGTiSX0KUnBG3Lxw==
X-Received: by 2002:a05:6512:6d1:b0:541:32e5:654c with SMTP id 2adb3069b0e04-543c7d9a0c7mr2736155e87.17.1737852306580;
        Sat, 25 Jan 2025 16:45:06 -0800 (PST)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com. [209.85.208.175])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c8379493sm771772e87.161.2025.01.25.16.45.04
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jan 2025 16:45:04 -0800 (PST)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-30225b2586cso44847721fa.0
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Jan 2025 16:45:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUTS7cVMZUOsPM70irEGuzMw4q4R903LDWtyqpR6AKS8EFC0v/kcCWh0WKWIVdnnoqiBVzKOfUEzffV4o1LtQ==@lists.infradead.org
X-Received: by 2002:a05:651c:205c:b0:300:17a3:7af9 with SMTP id
 38308e7fff4ca-30761c517bdmr37753901fa.19.1737852303712; Sat, 25 Jan 2025
 16:45:03 -0800 (PST)
MIME-Version: 1.0
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-13-damon.ding@rock-chips.com> <rwn3g7tqgjnc525cjqtivgfgedhooiayn5nujng7bdzazgqhle@wfpuvoyr2tii>
 <CAD=FV=WKsA9fcq-LzGcYmgbMuMLUp5SMggpzBzZnvd3sxGf9BQ@mail.gmail.com> <7ef0454b-fddd-44c0-be4a-c81c443f08f6@rock-chips.com>
In-Reply-To: <7ef0454b-fddd-44c0-be4a-c81c443f08f6@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Sat, 25 Jan 2025 16:44:51 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XZOfqcV51Sog3CNBe0mengYyX5cRbftdDY0e73mZNWQA@mail.gmail.com>
X-Gm-Features: AWEUYZlT8dd77sVC0SZMqkozj-k92yxOjbM1lGN9IVzDz0DDUqySb4xOYDl6kKM
Message-ID: <CAD=FV=XZOfqcV51Sog3CNBe0mengYyX5cRbftdDY0e73mZNWQA@mail.gmail.com>
Subject: Re: [PATCH v6 12/14] drm/edp-panel: Add LG Display panel model LP079QX1-SP0V
To: Damon Ding <damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250125_164510_172427_C6183388 
X-CRM114-Status: GOOD (  12.66  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, vkoul@kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBGcmksIEphbiAyNCwgMjAyNSBhdCA4OjE44oCvUE0gRGFtb24gRGluZyA8ZGFtb24u
ZGluZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiA+Pj4gICAjZGVmaW5lIEVEUF9QQU5FTF9F
TlRSWSh2ZW5kX2Nocl8wLCB2ZW5kX2Nocl8xLCB2ZW5kX2Nocl8yLCBwcm9kdWN0X2lkLCBfZGVs
YXksIF9uYW1lKSBcCj4gPj4+ICAgeyBcCj4gPj4+ICAgICAgICAuaWRlbnQgPSB7IFwKPiA+Pj4g
QEAgLTE5NTUsNiArMTk2MSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZWRwX3BhbmVsX2VudHJ5
IGVkcF9wYW5lbHNbXSA9IHsKPiA+Pj4gICAgICAgIEVEUF9QQU5FTF9FTlRSWSgnQycsICdTJywg
J1cnLCAweDExMDAsICZkZWxheV8yMDBfNTAwX2U4MF9kNTAsICJNTkI2MDFMUzEtMSIpLAo+ID4+
PiAgICAgICAgRURQX1BBTkVMX0VOVFJZKCdDJywgJ1MnLCAnVycsIDB4MTEwNCwgJmRlbGF5XzIw
MF81MDBfZTUwLCAiTU5CNjAxTFMxLTQiKSwKPiA+Pj4KPiA+Pj4gKyAgICAgRURQX1BBTkVMX0VO
VFJZKCdFJywgJ1QnLCAnQycsIDB4MDAwMCwgJmRlbGF5XzUwXzUwMF9lMjAwLCAiTFAwNzlRWDEt
U1AwViIpLAo+ID4KPiA+IEkgZG9uJ3QgbG92ZSB0aGF0IHRoZSBJRCBpcyAweDAwMDAuIFRoYXQg
bWFrZXMgbWUgbmVydm91cyB0aGF0IHRoZQo+ID4gcGFuZWwgdmVuZG9yIGlzbid0IHNldHRpbmcg
dGhlIElEIHByb3Blcmx5LiAuLi5idXQgYXQgbGVhc3QgdGhlIHN0cmluZwo+ID4gbWF0Y2hlcyBp
biB0aGUgRURJRCBzbyBob3BlZnVsbHkgdGhhdCB3aWxsIGJlIGVub3VnaCB0byB1bmlxdWVseQo+
ID4gaWRlbnRpZnkgdGhpbmdzLgo+ID4KPiA+Cj4KPiBUaGUgSUQgIjB4MDAwMCIgbWFrZXMgbWUg
bmVydm91cyB0b28sIGJ1dCB0aGUgRURJRCBvYnRhaW5lZCBmcm9tIHRoaXMKPiBwYW5lbCBpbmRl
ZWQgc2hvdyBpdCwgd2hpY2ggaXMgcXVpdGUgc3VycHJpc2luZy4gTWF5IEkgc3RpbGwgc2V0IGl0
IHRvCj4gIjB4MDAwMCIgYXMgaXQgcmVhbGx5IGlzPwoKWWVhaCwga2VlcCBpdCBhcyAweDAwMDAu
IFNpbmNlIHRoZSBwYW5lbCBuYW1lIGlzIGluIHRoZSBFRElEIHRoZW4KY29tbWl0IGJmMjAxMTI3
YzFiOCAoImRybS9wYW5lbC1lZHA6IE1hdGNoIGVkcF9wYW5lbHMgd2l0aCBwYW5lbAppZGVudGl0
eSIpIHNob3VsZCBwcm92aWRlIHNvbWUgc2FmZXR5LgoKLURvdWcKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
