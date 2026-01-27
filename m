Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53BB2D2FEC6
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 17:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2wsdN6vXf75m6i0/Q7pxbVEkpuJfexW6+5rraeSndM=; b=xnPHl6TVMQMrUr
	cm66FbKkU4qP2FcWP7Bp1/Mnb0cbEhtcrLvn5IugadSBYbGHFEXYEn8R7AzqU9kGdB0khShka9oOi
	7MvvYFvOuKRdjgSawyQd2l3fywhCkdwduVhgmSnlx6mlrE5LZz1jPw7igHGagcwWhqnJ9nF2wfuFT
	bm2za27SK0WFdfaWIA9IpWNM0th2sx35YkIs8lZX1cF6ZGeUSeA+IoO5C+w3amjPFMWtfeD5LU8/5
	9w3ZLiqh7kCNb5jnrfF03vGhOKpUnrcYPjY+kbjFJWV6Ky592M7abEpcfAYp5gQziIYkY1rk3DU4q
	i5npL1JWQTFCnkSwuf7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkmuu-0000000Ejmx-3gKr;
	Tue, 27 Jan 2026 17:31:53 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkmud-0000000EjlT-0vMI
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 17:31:50 +0000
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-5032e15525aso9902771cf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 09:31:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769535089; cv=none;
        d=google.com; s=arc-20240605;
        b=EcXmBqUkmnfVhepexAvTIarye0Zyr1tJntBM3kA3nM2C+b3fC51kJLIVfceEzDspZy
         xPcGXUcLh6IKYVQM2J1riQ+y4bAgg2bQ+GMGD5GNaG2uPko000jtbvq1FY5ZjfgJaIkV
         qFl0EjERu04YlMP1tPowDrK34YuMRzNx3SrnZ2XyHxnCL1LAhuGjh0yPl9lJlpQiLQCv
         sjSqCUGPBtRNg30/gI83SIERvV9Z1aOdAVAzX35vXMxCES3s9PwjEms3iYfNEx/k4f9R
         VlQ5+nKq1ivK3LMTSo94vyEVsl8054lt+nulODvHcG8uY95tOLMvco9DKfGCgcGKXfbx
         LmnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PlNmfFoygixWkI7H3Z8R3RRT3c5a4skQJi9DgZ6SblU=;
        fh=MjYUKHLFTIvBSgap5CzsLX8CVGhkkiAZ4Jxfwl/0lzw=;
        b=YUOnCN2eZyMPE944LybKudtPhm/RfaK7DdpA9v1UkNPq/hJEy5/nwww2b9o3TFrTfR
         J05A/0CllwbtAGqJf8ooDj8wBNh3U67XSyV0miL16iGA+xd0UViqfJb3FFe+8DYQQa8y
         ToTjkKb1tAQT96JvC2nj5tiG5pTRPQFbvBeccd3B0tJ8XtBNgJIYy/KZLaAoQ6bVlv3R
         qJzKh3Cv9TvsOPvhrVxIapZCu/7JEWieeRDun0XnPv8qKJVJ8EVe0go4s02TDQR4FE7F
         9j+Tx5JZ7nfvKxzxWNkWRHsEMCH9wYBzRqGGbSarOskSxasbDWisk7vtJDKm90M9Hkc4
         NDiA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769535089; x=1770139889; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PlNmfFoygixWkI7H3Z8R3RRT3c5a4skQJi9DgZ6SblU=;
        b=k7d1bG+Ob2MRxLAUnLjZ3AyE/fQVr02OF62+ui38huBn/JEdGvNKc2d2yS29KIAYHh
         gvp0U/nzPgsyL9q/cIcHc429ImVqehhYSHfEBXoiVCm0PPLQeXeVS2dQqBEUxMD/Aov1
         1qJh6mT7M+XKE+oc1Lgiu5WSX/A8IAprEv3uBuDFopjzobRq+jQmx4M/LY2X2STikqNw
         vvRqs9yXrIDfIWPUi/X52Hk+15QLBwpBp1t8IYSOb06rjRwyN3Qk8ODtWRH9GlFhAVmV
         /+FD5Lwq2H7qj+1Nz0fSi8WV5tQpyPI010Fpi1rhjm092q9MRGo3Lfki+SMmuWZ/W4fV
         AC3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769535089; x=1770139889;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PlNmfFoygixWkI7H3Z8R3RRT3c5a4skQJi9DgZ6SblU=;
        b=biHA8nWZPNFFD37yU18dOtoA/IMEhF9y8b9DY11Q4R00hOvGZtXhuJIESESSTDWEv/
         DS/FUQcTvnPBc/DFxNfB37qN86YfhaLwa4btQ9f8IjloUEnEuneHD8TmWQ55FcfG4hin
         K4cN8K/J5Z7H70gh1iRGxZzQ6TdpwuvrEKGznQrungYqJJ5/cNakCSG4wIphdzyu/IbJ
         4UEzAq0HygcqZYaYZoh/g5e3gqc2oe5PWBWXvgPjjydYQy/zgT4gLbiMC+Jc6UpUsCu5
         XQrFO9kuNRZqz8M6sw4dVNjuScDsx+3YJvgd/+cCtqAEDIF+d0LX+L6QtA5y3x+x9Wdf
         XNbA==
X-Forwarded-Encrypted: i=1; AJvYcCVMrI7/3euShTIBuZ6uwdy0qPXBSLkpGViEeeKXK+MbN89JEo8bFMtHfwbLWtaHKgV8KT9TBoBjTrxGh/Tu8Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YyauHqTUZZZPIO0k+Atg0GS7ze4Ii2gZylMFh/lrS1G9r3SU3HP
	L9Cfiiaq7f7z9wrZ4nPU+WY4UA+LQeNB8M9KL6kL1hhn+l/GW2RodNdYAg55B2C+G+GTWQ3dZi4
	VTmhSIO4i7N18yhVG0lZGR9CugHhx+4I=
X-Gm-Gg: AZuq6aK+S9qLjrynMJnIziDhXniksindxQ2yRgwdJUV2fpFIRy8w1w45CsgNRnZyTLh
	elVfBLySeTz/BPUHEXoSua3ZlD0t1cRxtyyAKgQb+LH4sCKxqkuMnm8zYZepzWmSC8C4XFDnH6l
	GcXkSGuvqA0tkyI5jJgf2yO8JzQuAIMAlGzxVpBioE0UyW0qYV8XWNVZ60db4KJZE3MANwFUWcv
	aFdP40Eds23LHeA3TUzMAYwMb5DRr15/vSw1oySkd7CGnjsxs/pnyJuysn9gnP2bEdcYfY=
X-Received: by 2002:ac8:5a85:0:b0:503:2f49:6f81 with SMTP id
 d75a77b69052e-5032fc262a9mr32087791cf.74.1769535089137; Tue, 27 Jan 2026
 09:31:29 -0800 (PST)
MIME-Version: 1.0
References: <20260127-rockchip-spdif-cleanup-and-bsp-sync-v1-0-a7c547072bbb@collabora.com>
 <20260127-rockchip-spdif-cleanup-and-bsp-sync-v1-4-a7c547072bbb@collabora.com>
In-Reply-To: <20260127-rockchip-spdif-cleanup-and-bsp-sync-v1-4-a7c547072bbb@collabora.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 27 Jan 2026 21:31:18 +0400
X-Gm-Features: AZwV_QiRBuULTXUycKkcZHEVy2gS4ko9kDhO5KYckrC2F3g82wjmaKUQO-30ews
Message-ID: <CABjd4YxVQfp=ZuovBhAzqX9pDBnBmntQoxkr5vXnToPc3pRARw@mail.gmail.com>
Subject: Re: [PATCH 04/10] ASoC: rockchip: spdif: Use dev_err_probe
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, 
	Sjoerd Simons <sjoerd.simons@collabora.com>, linux-sound@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_093135_421433_A4957751 
X-CRM114-Status: GOOD (  18.55  )
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

SGkgU2ViYXN0aWFuLAoKT24gVHVlLCBKYW4gMjcsIDIwMjYgYXQgODowOOKAr1BNIFNlYmFzdGlh
biBSZWljaGVsCjxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IENs
ZWFudXAgdGhlIHByb2JlIHJvdXRpbmUgYSBsaXR0bGUgYml0IGJ5IHVzaW5nIGRldl9lcnJfcHJv
YmUKPiBpbnN0ZWFkIG9mIGRldl9lcnIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVp
Y2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgc291bmQvc29j
L3JvY2tjaGlwL3JvY2tjaGlwX3NwZGlmLmMgfCAxOCArKysrKystLS0tLS0tLS0tLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX3NwZGlmLmMgYi9zb3VuZC9zb2Mvcm9j
a2NoaXAvcm9ja2NoaXBfc3BkaWYuYwo+IGluZGV4IDg0MWVmNDk5ZWQ3Zi4uMjBlZDY0YzFmYTQy
IDEwMDY0NAo+IC0tLSBhL3NvdW5kL3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9zcGRpZi5jCj4gKysr
IGIvc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX3NwZGlmLmMKPiBAQCAtMjc5LDExICsyNzks
OSBAQCBzdGF0aWMgaW50IHJrX3NwZGlmX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4gICAgICAgICAgICAgICAgIHN0cnVjdCByZWdtYXAgKmdyZjsKPgo+ICAgICAgICAgICAg
ICAgICBncmYgPSBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlKG5wLCAicm9ja2NoaXAs
Z3JmIik7Cj4gLSAgICAgICAgICAgICAgIGlmIChJU19FUlIoZ3JmKSkgewo+IC0gICAgICAgICAg
ICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwKPiArICAgICAgICAgICAgICAgaWYgKElT
X0VSUihncmYpKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBkZXZfZXJyX3Byb2Jl
KCZwZGV2LT5kZXYsIFBUUl9FUlIoZ3JmKSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICJyb2NrY2hpcF9zcGRpZiBtaXNzaW5nICdyb2NrY2hpcCxncmYnXG4iKTsKPiAtICAgICAg
ICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihncmYpOwo+IC0gICAgICAgICAgICAgICB9
Cj4KPiAgICAgICAgICAgICAgICAgLyogU2VsZWN0IHRoZSA4IGNoYW5uZWwgU1BESUYgc29sdXRp
b24gb24gUkszMjg4IGFzCj4gICAgICAgICAgICAgICAgICAqIHRoZSAyIGNoYW5uZWwgb25lIGRv
ZXMgbm90IGFwcGVhciB0byB3b3JrCj4gQEAgLTMzNCwxNiArMzMyLDEyIEBAIHN0YXRpYyBpbnQg
cmtfc3BkaWZfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgICAgICAgIHJl
dCA9IGRldm1fc25kX3NvY19yZWdpc3Rlcl9jb21wb25lbnQoJnBkZXYtPmRldiwKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnJrX3NwZGlmX2NvbXBvbmVu
dCwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnJrX3Nw
ZGlmX2RhaSwgMSk7Cj4gLSAgICAgICBpZiAocmV0KSB7Cj4gLSAgICAgICAgICAgICAgIGRldl9l
cnIoJnBkZXYtPmRldiwgIkNvdWxkIG5vdCByZWdpc3RlciBEQUlcbiIpOwo+IC0gICAgICAgICAg
ICAgICByZXR1cm4gcmV0Owo+IC0gICAgICAgfQo+ICsgICAgICAgaWYgKHJldCkKPiArICAgICAg
ICAgICAgICAgcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgcmV0LCAiQ291bGQgbm90
IHJlZ2lzdGVyIERBSVxuIik7Cj4KPiAgICAgICAgIHJldCA9IGRldm1fc25kX2RtYWVuZ2luZV9w
Y21fcmVnaXN0ZXIoJnBkZXYtPmRldiwgTlVMTCwgMCk7Cj4gLSAgICAgICBpZiAocmV0KSB7Cj4g
LSAgICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwgIkNvdWxkIG5vdCByZWdpc3RlciBQ
Q01cbiIpOwo+IC0gICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+IC0gICAgICAgfQo+ICsgICAg
ICAgaWYgKHJldCkKPiArICAgICAgICAgICAgICAgZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCBy
ZXQsICJDb3VsZCBub3QgcmVnaXN0ZXIgUENNXG4iKTsKClNob3VsZG4ndCB0aGlzIG9uZSByZXR1
cm4gdGhlIGVycm9yIGNvZGUsIGluc3RlYWQgb2YgZmFsbGluZyB0aHJvdWdoCnRvICdyZXR1cm4g
MCc/Cgo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIH0KPgo+IC0tCj4gMi41MS4wCj4KCkJlc3QgcmVn
YXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
