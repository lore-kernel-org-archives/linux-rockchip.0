Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C8F3C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQxsimWlUnRFHhmseBwPBmRRaVT5kdWt4cUvBz0l5tE=; b=JfF/C9RCjBxZBc
	Z20F+wOfSwOHXLN8rR60SHs8F6T3GJiBSDvKfkGcUuUnLXc1OA8sKBrmKnJFDBSlMPPXLYfFiXIt3
	GgYrX9caavu4iriyax3UNUp9J2dUTlewGIf3ojrS5KZBTjhYWUGaUB/BVhARisrOJUF/YLUmNqk3B
	PgACpuGBbvUelqtYEhBIsZT8X7gi039C5tt9XAXaJPtGEcI70IVSW8W227bk/qpHOqCWYv0e0qbv9
	6bbPMot2edmUDuTOrtFZlEJEPqR/F/tD9bjvY1SZ6I4a9tW7YPMTasvoPdHUZerVxVNyNWTHXknkF
	nP/g0OuWW+7w9b/yNzsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjcJN-000Ygz-1d;
	Tue, 04 Apr 2023 08:46:41 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjcBv-000Whb-29;
	Tue, 04 Apr 2023 08:39:09 +0000
Received: by mail-lj1-x235.google.com with SMTP id bx10so14653890ljb.8;
        Tue, 04 Apr 2023 01:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680597536;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MrdlODl0H5+PHsF6BIcaDQCeLLNaLHz3VtBPnGOz2PM=;
        b=P0REh2WHl1EKDfiroTLCUjD8DYaPTCETRF2VE6q/v0KXm1MRsyL2PPEr8IZ1EyjEsJ
         f3pvaaiZqU37OTrWSWjfughTHizj1fTrSP4rmWk3/HSpEpuUnuqR7ZWT84NFeh++RL8G
         RYsROggoSa/r34SF2Zo+u5Fc2dZZc2OS5ap1g9ttg7gvSaZzrjzmYD+jc4dSkiWVvp43
         28CTxNr2658fyb1Qzitz8a8VFRCQoD+jt5sQAhzYINMPMZH+i8zh/bk2dRp2diRjTeXQ
         ZkwA5kOx7WGdVgf6lQJqMWTdRt6eNuDp+VqtLWpXmaS9vtKJFSqcNvUV5YqWxzk5JOm4
         bvMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680597536;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MrdlODl0H5+PHsF6BIcaDQCeLLNaLHz3VtBPnGOz2PM=;
        b=yphEsiVwAPscgfTe1q+u/oallKcJ4LwAmkXbnyRNMrDVCNbycWRBiiWIxEGKEXGQGz
         n6T2+CkyzBYF2fYjYaZ6Myxe7SQqhDWAbO0ati8Vtas6svOsfFDeyyStlqb9OSA/GqDX
         ZtuwpwcHfBKdoXQyKJRre4bKaNu5XwvC4xHbgSeq53ApSQaxLth006bh9m9SiIE0gX3S
         bfLubeTqutCaJJNNVFBZYXSncrmPHLyOHLThbd0t7uh/fRVVqHIfck8a8LOMZfKX4h/c
         Tnyl6H+qTFS76tar63sUhndG1Hqp+9j7VBUT2RRC8zmIoRoCO5yNMcAMMUE4sRabXqst
         0vBg==
X-Gm-Message-State: AAQBX9eTFx2tdZIArShj9ACHaymO+2qvwhHZUHtgQtCzAt8poU4am5eQ
	SrogfZg2Z4+21KZlenOFYuvYQ1F8nNkwYOnxTxQf/NyHKK4=
X-Google-Smtp-Source: AKy350YRWO8o83HonQhxyVR1qlxipGouFXslbqo/1KCmYgWBSiIBPGp83XNapgz6XMi3g+DZj0t5McHHLhoEyS/hIwA=
X-Received: by 2002:a2e:a307:0:b0:295:93eb:bab1 with SMTP id
 l7-20020a2ea307000000b0029593ebbab1mr743896lje.1.1680597536075; Tue, 04 Apr
 2023 01:38:56 -0700 (PDT)
MIME-Version: 1.0
References: <20230403175937.2842085-1-javierm@redhat.com> <3738011.44csPzL39Z@diego>
 <d7efebcc-5b5b-185e-bec8-b6b9d5d27d93@undef.tools> <87h6twdpi7.fsf@minerva.mail-host-address-is-not-set>
In-Reply-To: <87h6twdpi7.fsf@minerva.mail-host-address-is-not-set>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Tue, 4 Apr 2023 09:38:44 +0100
Message-ID: <CALeDE9M4eNq1sfQ-UcNZr8naYThmLFxDpt=zj8WkCSzHPUY8ug@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: Jarrah <kernel@undef.tools>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-kernel@vger.kernel.org, Caleb Connolly <kc@postmarketos.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Martijn Braam <martijn@brixit.nl>, 
	Ondrej Jirman <megi@xff.cz>, Rob Herring <robh+dt@kernel.org>, 
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_013901_467043_8EE3348A 
X-CRM114-Status: GOOD (  20.48  )
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

T24gVHVlLCBBcHIgNCwgMjAyMyBhdCA5OjI04oCvQU0gSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFz
CjxqYXZpZXJtQHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gSmFycmFoIDxrZXJuZWxAdW5kZWYudG9v
bHM+IHdyaXRlczoKPgo+ID4gSGksCj4gPgo+ID4gT24gNC80LzIzIDE3OjUxLCBIZWlrbyBTdMO8
Ym5lciB3cm90ZToKPiA+PiBUaGUgaW50ZXJlc3RpbmcgcXVlc3Rpb24gaXMgYWx3YXlzIGlmIHRo
aXMgd2lsbCBicmVhayBzb21lb25lIGVsc2UncyBzZXR1cC4KPiA+PiBJJ3ZlIG5ldmVyIHJlYWxs
eSB1bmRlcnN0b29kIHRoZSBzdHJhbmdlIHNldHRpbmcgb2YgMS41TUJwcywgYnV0IG9uIHRoZQo+
ID4+IG90aGVyIGhhbmQgaXQgX2lzXyBhIHJlYWxpdHkgb24gbW9zdCBib2FyZHMuCj4gPj4KPiA+
PiBQZXJzb25hbGx5IEkgZG9uJ3QgY2FyZSB0aGF0IG11Y2ggZWl0aGVyIHdheSwgYnV0IHdvdWxk
IGxpa2UgYSBjb21tZW50Cj4gPj4gZnJvbSB0aGUgb3RoZXIgcGVvcGxlIHdvcmtpbmcgb24gdGhh
dCBkZXZpY2UgLSBpZiBwb3NzaWJsZS4KPiA+Cj4gPgo+ID4gSSBkb24ndCBoYXZlIGEgc3Ryb25n
IG9waW5pb24gZWl0aGVyIHdheSwgYnV0IEkgd291bGQgbm90ZSB0aGF0Cj4gPiBUb3ctQm9vdFsw
XSB3aGljaCBsYXRlciBtb2RlbHMgb2YgdGhpcyBkZXZpY2Ugc2hpcCB3aXRoIHVzZXMgMTE1MjAw
LAo+ID4gbWVhbmluZyB0aGF0IHRoaXMgd291bGQgcHV0IHRoZSBkZXZpY2Ugb3V0IG9mIHN5bmMg
d2l0aCB0aGUgZGVmYXVsdAo+ID4gdS1ib290IGltcGxlbWVudGF0aW9uIGZyb20gdGhlIGZhY3Rv
cnkuCj4gPgo+Cj4gUHJvYmFibHkgd2UgY2FuJ3QgY2hhbmdlIHRoZW4gYmVjYXVzZSBpdCB3b3Vs
ZCBicmVhayB0aGUgc2V0dXAgb2YgcGVvcGxlCj4gdXNpbmcgVG93LUJvb3QgYXMgYSBib290bG9h
ZGVyLgo+Cj4gPiBBdCBsZWFzdCBmb3IgbWUgaXQncyBiZWVuIGNvbnZlbmllbnQgdG8gaGF2ZSBi
b3RoIHRoZSBQUCBhbmQgUFBQIHVzZSB0aGUKPiA+IHNhbWUgc2V0dGluZ3Mgd2hpbGUgZGVidWdn
aW5nLgo+ID4KPgo+IEFncmVlZCwgYWxsIG15IG90aGVyIGJvYXJkcyB1c2UgMTE1MjAwIGFzIHdl
bGwsIHRoZSBvbmx5IGV4Y2VwdGlvbnMgYXJlCj4gdGhlIFJvY2twcm82NCBhbmQgUGluZVBob25l
IFBybyBmb3IgbWUuCgpBbGwgUm9ja2NoaXBzIGRldmljZXMgdXNlIDEuNW0gZXhjZXB0IGEgY2hy
b21lYm9vayBhbmQgdGhlIFB1bWEsIGFuZAp0aGlzIGRldmljZS4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
