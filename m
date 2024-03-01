Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3846AC5475B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Mar 2024 05:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FsAqqkPqLjmzxT3g/BxRFAy0XhaTe84UX1EKWF/GUiY=; b=uA+k9/oq87VSts
	FQ9CJZpcP560ym8yzfZLew7Matng0hlAB2TLC2V7tGDKrFKTamrAICza6GDT/Dv3XMjl+11VPTaNF
	VLvkdj+/KF1pthkINyBTgdXl4Mgrj5MJ1KRs9RXJ8KvOsGYEwTwnTfjV+RGL21vM2ESXtOBdNdzBC
	dtpE7WN3L+Qer073V/Bhu2w6InCRGTij31Z2tKuNIecUkw0VTVT2Lhvo/tOW9QfQF/CoRr06t39Fj
	tjnYmoyj9zVVgqfB1IWv0P5eiBOaErvtsMb2edIw1zxu0cKD8gk3YU3xpRljjzFXuzrAEttzcPVGB
	Cx72LFJOxr+HXTeftIFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfvL6-0000000GP6E-28mk;
	Fri, 01 Mar 2024 05:21:44 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfvL4-0000000GP5h-0Fz2;
	Fri, 01 Mar 2024 05:21:43 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a3f829cde6dso264764566b.0;
        Thu, 29 Feb 2024 21:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709270501; x=1709875301; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SklaswezKpY2+1y0XS0FlAH9tuUjyIoA0V4YKjlG8BI=;
        b=h4poMrjxdcePHUJMVO2kVySsT8ezx/O1hQr6Ghwfjz6C0uDxsHFHnqXTKXTOFV7G7Z
         TR8pzuQKeZuwYBU2wU4qjqyze7sn//lGQRUyKGZkth1W9HTFKbsSLCsccwEZHWQJrgq8
         hSIpeiqC8no718hicIp2gmqXtS2d9jLDcXhkegOIOYPX+4u8UIEsiu9FA+X/vTZbxxKc
         5Q+9KyO0KbuBfv6kLK6kjl8zKNErg1cGyCd6scZUNasjf8EAhN0o64YwNuuBZY25Y67f
         IsYKEepfTEpoiSs7FGUF85zFVNuNiKn+uu+ZBEf1HOM5fbLxSz5kd3TXkJOBA/TyKsRT
         MbwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709270501; x=1709875301;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SklaswezKpY2+1y0XS0FlAH9tuUjyIoA0V4YKjlG8BI=;
        b=pgtqq7bAjkA2ONvUFe6bw4E9XictZtWBFBWvOGbzjuH4AaRcAdeLDVCnM5jJMIHB41
         UPEjstvD+QP784z/aADnnu2OWsRuqsDN/95WpQQ09i1pJ0acO1VoYDsQQ8/q1wX/8y1R
         LOXNDrNZxuWmV7q7dcWHtfXIx0Y9+i9p20FqGaW2Lp94U9WXR5lzDpn5fgx20ad9nr8v
         I9NJCWs2zGcDmolQpfEZxRBFjsEW/JdlgBX2y04NWadW2D1PBhX99MME2TbxwQAPRLyE
         1iUBngBccs0k2OzmSo5Ih98re7CaeyumgXjAG+xVjDWpCaqhwTUcUyABF4+zYVaol5rV
         fAdA==
X-Forwarded-Encrypted: i=1; AJvYcCVyN+7uohqXc7+XP8RCIOdjkRMQPijcG8TEEydWYcGjerbKFyYr9BirbwRHe96sl3wbmTG1arR2n/dEowk7TjtP/JkGSMG49o5YXOg7Azdn+Fky/ZkB5hMd3UJUnfkUkycvn3eYakuN6QmL21nA1yewHqAjvbi1V+I=
X-Gm-Message-State: AOJu0YzR2vdyDSdXSA86G5v/qH5wupvi9fzu2gpO79HaBw/mOc+ASrw2
	HY28ebsqwPNW2yPavLKd0j4zWyp5cqcBdLBzVdT7WfqnLHl0OzMAIzAg+EdiKwciMVekJdJMjsB
	nXMi9ET8qKALUKfG9pXQpKUW7kcM=
X-Google-Smtp-Source: AGHT+IGET3NOaLRRZnH2bw1a3UmEv71dQ2BUqrpAAHnkRq0XM79z2IXN07RFGJg5LqpXTEmuY26raYoc+M7W22Jy3HI=
X-Received: by 2002:a17:906:f989:b0:a44:27e8:f514 with SMTP id
 li9-20020a170906f98900b00a4427e8f514mr407888ejb.38.1709270500676; Thu, 29 Feb
 2024 21:21:40 -0800 (PST)
MIME-Version: 1.0
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <20240229-rk-dts-additions-v3-2-6afe8473a631@gmail.com> <823379825559bb76088c31f44f998dd3@manjaro.org>
In-Reply-To: <823379825559bb76088c31f44f998dd3@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 1 Mar 2024 09:21:30 +0400
Message-ID: <CABjd4YybaQnKm+VpU_xVrCb=pxQ7oQXPHGZzn_u1w_h3yn7gwg@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] arm64: dts: rockchip: enable automatic active
 cooling on Rock 5B
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_212142_120821_E07A6B76 
X-CRM114-Status: GOOD (  14.95  )
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

T24gRnJpLCBNYXIgMSwgMjAyNCBhdCAxOjI14oCvQU0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFu
amFyby5vcmc+IHdyb3RlOgo+Cj4gSGVsbG8gQWxleGV5LAo+Cj4gT24gMjAyNC0wMi0yOSAyMDoy
NiwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gPiBUaGlzIGxpbmtzIHRoZSBQV00gZmFuIG9uIFJh
ZHhhIFJvY2sgNUIgYXMgYW4gYWN0aXZlIGNvb2xpbmcgZGV2aWNlCj4gPiBtYW5hZ2VkIGF1dG9t
YXRpY2FsbHkgYnkgdGhlIHRoZXJtYWwgc3Vic3lzdGVtLCB3aXRoIGEgdGFyZ2V0IFNvQwo+ID4g
dGVtcGVyYXR1cmUgb2YgNjVDIGFuZCBhIG1pbmltdW0tc3BpbiBpbnRlcnZhbCBmcm9tIDU1QyB0
byA2NUMgdG8KPiA+IGVuc3VyZSBhaXJmbG93IHdoZW4gdGhlIHN5c3RlbSBnZXRzIHdhcm0KPgo+
IEknZCBzdWdnZXN0IHRoYXQgeW91IHJlcGxhY2UgImF1dG9tYXRpYyBhY3RpdmUgY29vbGluZyIg
d2l0aCAiYWN0aXZlCj4gY29vbGluZyIgaW4gdGhlIHBhdGNoIHN1YmplY3QuICBJIGtub3csIGl0
IG1heSBzZWVtIGxpa2UgbW9yZSBvZiB0aGUKPiB1bm5lY2Vzc2FyeSBuaXRwaWNraW5nLCA6KSBi
dXQgSSBob3BlIHlvdSdsbCBhZ3JlZSB0aGF0ICJhdXRvbWF0aWMiCj4gaXMgYWN0dWFsbHkgcmVk
dW5kYW50IHRoZXJlLiAgSXQgd291bGQgYWxzbyBtYWtlIHRoZSBwYXRjaCBzdWJqZWN0Cj4gYSBi
aXQgc2hvcnRlci4KPgo+IEFub3RoZXIgb3B0aW9uIHdvdWxkIGJlIHRvIHJlcGxhY2UgImF1dG9t
YXRpYyBhY3RpdmUgY29vbGluZyIgd2l0aAo+ICJhdXRvbWF0aWMgZmFuIGNvbnRyb2wiLCB3aGlj
aCBtYXkgYWN0dWFsbHkgYmUgYSBiZXR0ZXIgY2hvaWNlLgo+IEknZCBiZSBoYXBweSB3aXRoIHdo
aWNoZXZlciBvbmUgeW91IHByZWZlci4gOikKClNvdW5kcyBnb29kIHRvIG1lLCB0aGFua3MhCgo+
IE90aGVyd2lzZSwgcGxlYXNlIGZlZWwgZnJlZSB0byBhZGQ6Cj4KPiBSZXZpZXdlZC1ieTogRHJh
Z2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+CgpUaGFuayB5b3UgRHJhZ2FuLCBtdWNoIGFw
cHJlY2lhdGVkIQoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
