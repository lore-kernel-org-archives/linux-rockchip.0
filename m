Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CE77C02194
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Feb 2025 17:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S0xrpTuwC+brIZ7ZlJpuSThyNaByvjvBRvN4Qzb8GFw=; b=pE1FHd+A/TaZXG
	d653ruGn8rD1QXaj8AxCE3nLp0JWljPhiCyqqWi5pW4qBghCl3SXKk3UQPnt4Co5OJTcDSN9WatnT
	+8zGFZpcEgwydYNzUsmIRNhrH8l3m4BSZhkaJqSNsMr2Dhz60SH5IMing/YyCCqhFIia/6iKcZnnD
	ip+BlYAmfR1ghfteXiY3xATDe3jgieYlfAoFTg8U0BE0T8JU5ZzEENPuQIFlQyKyKGrUpcW8vZ2kY
	a0iFJHmozgXmeZLZ96rmBoeCt98QfU55PiRyXz/GGMhq0aukKYLIC82LSfZhHXxZr/k4dS+ahw33C
	bgom6hPZZi4ess4LS6Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgSX3-0000000AZZp-3kLu;
	Fri, 07 Feb 2025 17:52:49 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgSNX-0000000AX7V-2qag;
	Fri, 07 Feb 2025 17:43:01 +0000
Received: by mail-qt1-x831.google.com with SMTP id d75a77b69052e-46783d44db0so23861391cf.1;
        Fri, 07 Feb 2025 09:42:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738950178; x=1739554978; darn=lists.infradead.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=u54wyKy08YVTcdsmqPxr1bFLRjYzOxYrbgu4ALnLyls=;
        b=j4SMuhKdC0HZRv+glSZxT39kWUOWkERyByeeSiVRZ7rR+MfIetdZMF5TkaRlklsgmE
         N8iokbwHw/5zexgsGwm/Y+K4jQW/sW5yS+/gDTd1pOCPjvSXrV/UQEnyepR6IQfSl25X
         GL15YKh4GSYQ5d/b4thRGDtcSF9GFzSB3An7EfaXYm+MkZFlCm9QiPThL8kL2bv4E6Xe
         qvkzXx32vnic2mpPUuWFxDOfR73XtfR4KJRK6VeUba83dVxM7bu+rxbORmfLMUe6c4Gk
         zD7cFPTwLnO0R7SyLA7SxFcrfpcGS/cf/u2ALcbMI2TQ1tgprXrbeRFBO0uwipPFsPFR
         AM9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738950178; x=1739554978;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u54wyKy08YVTcdsmqPxr1bFLRjYzOxYrbgu4ALnLyls=;
        b=Ol7Sq4OORWkGOuxloU+lEotLXYC7sQr3gJCv0R1jYLb+Xn9ulrbwCwvw7XjdG8AJWT
         NNzfm5fzawruX2z1/Us/rvKDgIdGz+UVG/mJxX+XcUYIm7c89I8Bp0itEpwxZ1I1nla0
         Yjcgph4Gi9g4eKt3qItEOCFTyrKOW1fmwZDSr/VuzrPlq5Dgy0E9oZfIgmySFQsYJNxR
         VqNW5fkU1omyUDpYVJOPJrBnrru1gzAKIlazLmQhNhQTf+GJG1Ia001/hA0NxOCeRH6V
         rQNFUPpwMkpD2+D5RAaOs/RXgyWjlY2/DVvVbNLWGlIiEyh+uH1WtP5CHoUsvwZh5fr2
         mSnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWaLGQBCqb5ZkALEh0Gy0wJoWFBfLkBqLNMvOxmPMEEJR5QzH+Td3PEyK4LLf3xcwU/eMZpQQGYQezEoGAO+4VD@lists.infradead.org, AJvYcCXPLojHgaddW8lQP/aOdZVpJi4LE8s6hRfSwDxA6GU3GbUtgQ+HaM8cltlduJfDpYbcTzrKcTf2UM+AJlbqZBc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxh4X5fcawg0AZ3/8mQorG5g0awFi2t3GqKN/LjLmd5IRlMC+FJ
	Toi79uyLoBFftLuAJ1V7/a+2aZxHbrnwYVEYx8lmbkJVCG3dJwyo
X-Gm-Gg: ASbGncsvslWSi32FfHn9MLEiqC30vjGkhH1jKpI+9Sb8XTxa9gYB3IxunDHeGipF1V1
	aBqHUhkuiVzkhgxGaaNUE31ZXeOALsPDcNBl8CkM5g/6xDIFHtMR7kCEEQmz9tUBKMrcXg0easg
	mI8T4D45OxM5EN5NbZvnzoZ8gJCwYtd4LKtkM1rNVf+tPBhxpxb5aMntFKh1Sk5E5+W4yGdaeGl
	d9uz+aHq6WsPJW6oB3cjmf5k+HkUxCbwcZusPLNyN/u2d39MQfA7tNIS6Gkd3LPnoyMVnuJlnZz
	LHesyD2uTy0t7fsyfcJBAmC6EVNKCtBgcVe1JBNskeg=
X-Google-Smtp-Source: AGHT+IH3DF2ccE09vTzNT3aWXfr9o8hGV8lDRWlk4BMtyiA39cvcPxbJvfohs7KwFEtPpIsYgHBr/g==
X-Received: by 2002:ac8:7d89:0:b0:46c:7252:927f with SMTP id d75a77b69052e-471679a02c0mr46777051cf.6.1738950178512;
        Fri, 07 Feb 2025 09:42:58 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-47149275d5esm19033831cf.8.2025.02.07.09.42.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 09:42:57 -0800 (PST)
Date: Fri, 7 Feb 2025 12:42:55 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-kernel@vger.kernel.org, "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] thermal/drivers/rockchip: add missing rk3328 mapping
 entry
Message-ID: <20250207174255.GA29827@localhost>
References: <20250207164740.14475-1-twoerner@gmail.com>
 <fc3c4542d5cc4d95f74692140e5ea8b5@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fc3c4542d5cc4d95f74692140e5ea8b5@manjaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_094259_717533_9379E39B 
X-CRM114-Status: GOOD (  20.72  )
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

T24gRnJpIDIwMjUtMDItMDcgQCAwNjoxNToyMiBQTSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IEhl
bGxvIFRyZXZvciwKPiAKPiBPbiAyMDI1LTAyLTA3IDE3OjQ3LCBUcmV2b3IgV29lcm5lciB3cm90
ZToKPiA+IFRoZSBtYXBwaW5nIHRhYmxlIGZvciB0aGUgcmszMzI4IGlzIG1pc3NpbmcgdGhlIGVu
dHJ5IGZvciAtMjXCsEMgd2hpY2ggaXMKPiA+IGZvdW5kIGluIHRoZSBUUk1bMV0gwqc5LjUuMiAi
VGVtcGVyYXR1cmUtdG8tY29kZSBtYXBwaW5nIi4KPiA+IAo+ID4gTk9URTogdGhlIGtlcm5lbCB1
c2VzIHRoZSB0c2FkY19xX3NlbD0xJ2IxIG1vZGUgd2hpY2ggaXMgZGVmaW5lZCBhczoKPiA+ICAg
ICAgIDQwOTYtPGNvZGUgaW4gdGFibGU+LiBXaGVyZWFzIHRoZSB0YWJsZSBpbiB0aGUgVFJNIGdp
dmVzIHRoZSBjb2RlCj4gPiAgICAgICAiMzc3NCIgZm9yIC0yNcKwQywgdGhlIGtlcm5lbCB1c2Vz
IDQwOTYtMzc3ND0zMjIuCj4gPiAKPiA+IExpbms6Cj4gPiBodHRwczovL29wZW5zb3VyY2Uucm9j
ay1jaGlwcy5jb20vaW1hZ2VzLzkvOTcvUm9ja2NoaXBfUkszMzI4VFJNX1YxLjEtUGFydDEtMjAx
NzAzMjEucGRmCj4gPiBTaWduZWQtb2ZmLWJ5OiBUcmV2b3IgV29lcm5lciA8dHdvZXJuZXJAZ21h
aWwuY29tPgo+IAo+IFRoYW5rcyBmb3IgdGhlIHBhdGNoLiAgSSB0aGluayB0aGlzIHNob3VsZCBh
bHNvIGluY2x1ZGUgYSBGaXhlcyB0YWcKCk9rYXksIEknbGwgc2VuZCBhIHYyLiBJdCdzIG5vdCBy
ZWFsbHkgYSBiaWcgZml4LiBUaGUgVFJNIGluc3RydWN0cyB0aGUgY29kZQp0byBpbnRlcnBvbGF0
ZSBsaW5lYXJseSBiZXR3ZWVuIHZhbHVlcyAod2hpY2ggSSBhc3N1bWUgdGhlIExpbnV4IGtlcm5l
bCBkb2VzPykKYW5kIHRoZSB0YWJsZSBpcyBjb21wbGV0ZWx5IGxpbmVhciBpbiB0aGlzIHJhbmdl
LgoKPiBhbmQgYmUgc3VibWl0dGVkIGZvciBpbmNsdXNpb24gaW50byBzdGFibGUga2VybmVscy4K
PiAKPiA+IC0tLQo+ID4gIGRyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMgfCAxICsK
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPiA+IGIvZHJpdmVycy90aGVybWFs
L3JvY2tjaGlwX3RoZXJtYWwuYwo+ID4gaW5kZXggZjU1MWRmNDhlZWY5Li5hOGFkODVmZWI2OGYg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4gPiAr
KysgYi9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4gPiBAQCAtMzg2LDYgKzM4
Niw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgdHNhZGNfdGFibGUgcmszMzI4X2NvZGVfdGFibGVb
XQo+ID4gPSB7Cj4gPiAgCXsyOTYsIC00MDAwMH0sCj4gPiAgCXszMDQsIC0zNTAwMH0sCj4gPiAg
CXszMTMsIC0zMDAwMH0sCj4gPiArCXszMjIsIC0yNTAwMH0sCj4gPiAgCXszMzEsIC0yMDAwMH0s
Cj4gPiAgCXszNDAsIC0xNTAwMH0sCj4gPiAgCXszNDksIC0xMDAwMH0sCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
