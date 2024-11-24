Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D74DE6688F
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Nov 2024 03:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8poHmMJ8UIx20hX3QVNyKYUaqHG3YSiSZLwPd5vXUU=; b=H6ovJcfpbWy2rK
	pZsfYBCJKbdc6Rhw9FTYUfNDpZZCyQfrLKRYtPwh5C1qUMy5uG52I+OU8KYHcwdIUTz+0GopY8VCM
	TKyq8zeeiBd99o6JX1mdxGHq5sRR6YqeOA1h1rJ1IC5WflabK7TgoCWPCycf/FUU7b8YPFqpYk+C7
	EdIOy9CJk6dX108Cy7mH4NYeJgWgMZxAR3FXnmmr33l2tRcbRO+TKiIJOLHoLtwntQtRpiqQQ87va
	2805/WBdo+G4Q7W89PPTjxVWGdZQ2uJymPah6NRO++xkkos9sY6nJP/VYpBENfyv8lQcbWtkhOfWD
	oCgCq067DI672mHNvarg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tF30F-00000005Cj9-002v;
	Sun, 24 Nov 2024 03:09:39 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tF30C-00000005CiG-06XA;
	Sun, 24 Nov 2024 03:09:37 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-720c2db824eso3385257b3a.0;
        Sat, 23 Nov 2024 19:09:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732417775; x=1733022575; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4+SmZ5O1idyx9nxxUYpNJ/ay8b6RbqKKFo2QgDR4SSw=;
        b=PFvL+XKDBP3wtSdNvQvNFH33NuSZjOVqJzUdj7X6xC3asex0AORzWQF+3JIvGFP6eD
         GcIf2wcKS26D2/5qusTkWSc7AOabuokQBLr2x7dAyUgw8chJCq/vERrtkoNjMVgPcWOd
         dMU9rs5vB6O/uLJG3GEB3MqFJR2pPpZzKXf0j3vpPL3SL8Fd6MA8qOAcPCi21G64fcc3
         LbnO+c8ffxVd67FkMKtQxQcmi7HyyxgZAK5FPMwJRmrUfbx9DUpcgXrUmv6YnzolFiP/
         6+T/QrEUS12fiOPI4oa5tKUjAvu4aUQuGXGlqHPYOPpnGdpS1zo5LebsroEOR0QAcwKT
         oBRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732417775; x=1733022575;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4+SmZ5O1idyx9nxxUYpNJ/ay8b6RbqKKFo2QgDR4SSw=;
        b=DxDGKDs2vJObSBTA+VRz4GeJiT1kNT15EGx6OaSBIBnOK0NOTtDXYWLMS/S0qDE9Wx
         SU3SOHp7pZZPw+PH2ddIsypTyTdZQrlztXSVLkfNUtSfIQ4fkwDj5j5de4A6cx6QqMmp
         c4D5U8449stfy9mxcPAMOIbdtl69S1gD8+AA4Obmhf3JclvR2x5d1msuers14nUqBjrU
         PUYsvSxBIlGRG+qbi3ak1zAgyV5a/ZA0dTg8OoS8/swOd6ZDisIaWIlSEyUkRIBEsA1t
         KLdc2KWLqV65jM7dScaVgduFG45TwHj1mLXyy6ztAnnYRDRHs4bwt6xPyKwsn0Ho2jZp
         p9eg==
X-Forwarded-Encrypted: i=1; AJvYcCUlbNGfekHrTRYqQH5y6UI1SFAYfHkYtykuKwOPaHQDkxEI7e9YS3bWo1aURYULv4hKDJNAaGTzEBMysxMPYhQ=@lists.infradead.org, AJvYcCXuBCr3OKNgVckr4Yx2mmaqvlKuuN9TMj+w0SivJabhtQjQeQkaooqXRNLMcdNTkiPi0lRN8ts4iLy88xNUYkb4@lists.infradead.org
X-Gm-Message-State: AOJu0YytC19g6SSzdlfFl2mbZML6LhBbMNcZanETT1gQkuu5zMKHU12j
	P74eAkL/j5lKN6jkkKRW8jT+ubZx86MZ1n7nduFG+esObhea6XS8tkWoergFHiEc9XZP+aHJBJn
	N9tSMRoW9IDLAOQ1OguEsyoy4sq4=
X-Gm-Gg: ASbGncsx0LkbbJRcNL4O7ZNQcf0/9ElPlDnIcxmCWtV62AeSthPllMrzjmCbrKoLK3W
	lRInied6eA7a8BBkBD1Q2h5HDg3l3n/8=
X-Google-Smtp-Source: AGHT+IG0Y23MhsftEXKYRfu9HiZmUraCNXR69wteGncoeREYFexmu0TkcVsDHI751SLBgXR/i8ns8wQeV0KiejYebOU=
X-Received: by 2002:a17:903:244b:b0:211:f6e4:d68e with SMTP id
 d9443c01a7336-2129fce2e23mr120152755ad.10.1732417774793; Sat, 23 Nov 2024
 19:09:34 -0800 (PST)
MIME-Version: 1.0
References: <20241121131904.261230-1-hugues.fruchet@foss.st.com>
In-Reply-To: <20241121131904.261230-1-hugues.fruchet@foss.st.com>
From: Adam Ford <aford173@gmail.com>
Date: Sat, 23 Nov 2024 21:09:23 -0600
Message-ID: <CAHCN7xJr-sXPGMr7aPH=-Cg+-YQMYChY0u6UNuH5rH8g6cpXhg@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] Add WebP support to hantro decoder
To: Hugues Fruchet <hugues.fruchet@foss.st.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Sebastian Fricke <sebastian.fricke@collabora.com>, Ricardo Ribalda <ribalda@chromium.org>, 
	Erling Ljunggren <hljunggr@cisco.com>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
	Jean-Michel Hautbois <jeanmichel.hautbois@ideasonboard.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241123_190936_085083_24D5A1A4 
X-CRM114-Status: GOOD (  17.86  )
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

T24gVGh1LCBOb3YgMjEsIDIwMjQgYXQgNzoyMuKAr0FNIEh1Z3VlcyBGcnVjaGV0CjxodWd1ZXMu
ZnJ1Y2hldEBmb3NzLnN0LmNvbT4gd3JvdGU6Cj4KPiBBZGQgV2ViUCBpbWFnZSBkZWNvZGluZyBz
dXBwb3J0IHRvIHN0YXRlbGVzcyBWNEwyIFZQOCBkZWNvZGVyLgo+Cj4gVGhpcyBoYXZlIGJlZW4g
dGVzdGVkIG9uIFNUTTMyTVAyNTctRVYgYm9hcmQgdXNpbmcgR1N0cmVhbWVyLgoKSSB3YW50IHRv
IHRlc3QgdGhpcyBvbiBhbiBpLk1YOE0gTWluaS4gIElzIHRoZXJlIGEgY2VydGFpbiBnc3RyZWFt
ZXIKdmVyc2lvbiBvciBicmFuY2ggSSBzaG91bGQgdXNlLCBvciBpcyAxLjI0IHN1ZmZpY2llbnQ/
CgphZGFtCj4KPiBTaW1wbGUgYmFzaWMgdGVzdDoKPiAkPiB3Z2V0IGh0dHBzOi8vd3d3LmdzdGF0
aWMuY29tL3dlYnAvZ2FsbGVyeS8xLndlYnAKPiAkPiBnc3QtbGF1bmNoLTEuMCBmaWxlc3JjIGxv
Y2F0aW9uPSAxLndlYnAgISB0eXBlZmluZCAhIHY0bDJzbHdlYnBkZWMgISBpbWFnZWZyZWV6ZSBu
dW0tYnVmZmVycz0yMCAhIHdheWxhbmRzaW5rIGZ1bGxzY3JlZW49dHJ1ZQo+Cj4gU2xpZGVzaG93
IG9mIGEgc2V0IG9mIFdlYlAgcGljdHVyZXMgYW5kIFdlYk0gdmlkZW8gZmlsZXM6Cj4gJD4gd2dl
dCBodHRwczovL3d3dy5nc3RhdGljLmNvbS93ZWJwL2dhbGxlcnkvMi53ZWJwCj4gJD4gd2dldCBo
dHRwczovL3d3dy5nc3RhdGljLmNvbS93ZWJwL2dhbGxlcnkvMy53ZWJwCj4gJD4gd2dldCBodHRw
czovL3d3dy5nc3RhdGljLmNvbS93ZWJwL2dhbGxlcnkvNC53ZWJwCj4gJD4gd2dldCBodHRwczov
L3d3dy5nc3RhdGljLmNvbS93ZWJwL2dhbGxlcnkvNS53ZWJwCj4gJD4gd2dldCBodHRwczovL3Nh
bXBsZW1lZGlhLmxpbmFyby5vcmcvVlA4L2JpZ19idWNrX2J1bm55XzQ4MHBfVlA4X1ZPUkJJU18y
NWZwc18xOTAwS19zaG9ydC5XZWJNCj4gJD4gZ3N0LXBsYXktMS4wICoud2VicCAqLndlYm0gKi5X
ZWJNIC0td2FpdC1vbi1lb3MKPiA8aGl0IGtleSAiPiIgdG8gZGlzcGxheSBuZXh0IGZpbGUgPgo+
Cj4gTGFyZ2UgV2ViUCBpbWFnZSA+IDE2Nzc3MjE1IChzaXplID4gMl4yNCkKPiAkPiBnc3QtbGF1
bmNoLTEuMCBmYWtlc3JjIG51bS1idWZmZXJzPTEgZm9ybWF0PTQgZG8tdGltZXN0YW1wPXRydWUg
ZmlsbHR5cGU9MyBzaXpldHlwZT0yIHNpemVtYXg9MjUxNjU4MjQgYmxvY2tzaXplPTI1MTY1ODI0
ICEgdmlkZW8veC1yYXcsIGZvcm1hdD1JNDIwLCB3aWR0aD00MDk2LCBoZWlnaHQ9MzA3MiwgZnJh
bWVyYXRlPTEvMSAhIHdlYnBlbmMgcXVhbGl0eT0xMDAgISBmaWxlc2luayBsb2NhdGlvbj00MDk2
eDMwNzJfSFFfcmFuZG9tLndlYnAKPiAkPiBscyAtbCA0MDk2eDMwNzJfSFFfcmFuZG9tLndlYnAK
PiBbLi4uXSAxNjg3NzQwNCBOb3YgMjAgMTE6NDAgNDA5NngzMDcyX0hRX3JhbmRvbS53ZWJwCj4g
JD4gZ3N0LWxhdW5jaC0xLjAgZmlsZXNyYyBsb2NhdGlvbj0gNDA5NngzMDcyX0hRX3JhbmRvbS53
ZWJwIGJsb2Nrc2l6ZT0xNjg3NjYxMCAhIGltYWdlL3dlYnAsIHdpZHRoPTEsIGhlaWdodD0xLCBm
cmFtZXJhdGU9MC8xICEgdjRsMnNsd2VicGRlYyAhIGltYWdlZnJlZXplIG51bS1idWZmZXJzPTIw
ICEgd2F5bGFuZHNpbmsgZnVsbHNjcmVlbj10cnVlCj4KPiBMYXJnZSBXZWJQIGltYWdlIGRlY29k
aW5nIHVzaW5nIHBvc3QtcHJvY2Vzc29yIGlzIHVudGVzdGVkIGJlY2F1c2Ugb2YgbGFjawo+IG9m
IGhhcmR3YXJlIHN1cHBvcnQgb24gdGhpcyBwbGF0Zm9ybSwgbmV2ZXJ0aGVsZXNzIHN1cHBvcnQg
aXMgcHJvdmlkZWQgaW4KPiB0aGlzIHNlcmllIGZvciBmdXJ0aGVyIHRlc3Rpbmcgb24gYW5vdGhl
ciBwbGF0Zm9ybSBoYXZpbmcgcG9zdC1wcm9jZXNzb3IKPiBzdXBwb3J0Lgo+Cj4gPT09PT09PT09
PT0KPiA9IGhpc3RvcnkgPQo+ID09PT09PT09PT09Cj4gdmVyc2lvbiAzOgo+ICAgIC0gRml4IHJl
bWFya3MgZnJvbSBOaWNvbGFzIER1ZnJlc25lOgo+ICAgICAtIERvY3VtZW50IGNvbnN0cmFpbnQg
YWJvdXQga2V5IGZyYW1lIG9ubHkgZm9yIFdlYlAKPiAgICAgLSBGaXggcmViYXNlIGlzc3VlCj4g
ICAgLSBGaXggdHlwbyBkZXRlY3RlZCBieSBEaWVkZXJpayBkZSBIYWFzCj4KPiB2ZXJzaW9uIDI6
Cj4gICAgLSBGaXggcmVtYXJrcyBmcm9tIE5pY29sYXMgRHVmcmVzbmU6Cj4gICAgIC0gVXNlIGJ5
dGVzcGVybGluZSBoZWxwZXIgdG8gY29tcHV0ZSBjaHJvbWEgc2l6ZQo+ICAgICAtIEludHJvZHVj
ZSBhIG5ldyBleHBsaWNpdCBXRUJQIGZyYW1lIGNvbXByZXNzZWQgZm9ybWF0Cj4gICAgICAgaW5z
dGVhZCBvZiByZWx5aW5nIG9uIFZQOCArIFdlYlAgZmxhZwo+ICAgICAtIDRLIHN1cHBvcnQgaW4g
Ym90aCBkZWNvZGVyIGFuZCBwb3N0LXByb2MKPgo+IHZlcnNpb24gMToKPiAgIC0gSW5pdGlhbCBz
dWJtaXNzaW9uCj4KPiBIdWd1ZXMgRnJ1Y2hldCAoMyk6Cj4gICBtZWRpYTogdWFwaTogYWRkIFdl
YlAgdUFQSQo+ICAgbWVkaWE6IHZlcmlzaWxpY29uOiBhZGQgV2ViUCBkZWNvZGluZyBzdXBwb3J0
Cj4gICBtZWRpYTogdmVyaXNpbGljb246IHBvc3Rwcm9jOiA0SyBzdXBwb3J0Cj4KPiAgLi4uL3Vz
ZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2JpYmxpby5yc3QgICAgICAgICAgfCAgOSArKysrKysrKysK
PiAgLi4uL21lZGlhL3Y0bC9waXhmbXQtY29tcHJlc3NlZC5yc3QgICAgICAgICAgICAgfCAxNyAr
KysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hh
bnRyby5oICAgICB8ICAyICsrCj4gIC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50
cm9fZzFfcmVncy5oIHwgIDMgKystCj4gIC4uLi9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9f
ZzFfdnA4X2RlYy5jICAgIHwgMTQgKysrKysrKysrKysrKysKPiAgLi4uL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL2hhbnRyb19wb3N0cHJvYy5jICAgICAgfCAgNiArKysrKy0KPiAgLi4uL21lZGlhL3Bs
YXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMgICAgfCAgMiArKwo+ICAuLi4vcGxhdGZv
cm0vdmVyaXNpbGljb24vc3RtMzJtcDI1X3ZwdV9ody5jICAgICB8IDE3ICsrKysrKysrKysrKysr
Ky0tCj4gIGRyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItaW9jdGwuYyAgICAgICAgICAgIHwg
IDEgKwo+ICBpbmNsdWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmggICAgICAgICAgICAgICAgICB8
ICAxICsKPiAgMTAgZmlsZXMgY2hhbmdlZCwgNjggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkKPgo+IC0tCj4gMi4yNS4xCj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
