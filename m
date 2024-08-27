Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32096C54735
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 22:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4mrPAJt7iAe3tC2rXp3bD4DWGLQ6BGjgMVx5El3L18=; b=lyW8lV8wkV5C0T
	xgdB36+AwF2yG+F6ogw4xiT8/4gVF874451bGnaTdCxkxyhA2VkGOsjlCN905TDIpcPXtjCbglMjL
	XciURUBuLd0cA4fBkjgPmI18sqTy4AyXvMgxnBq2RuLL/gXNkbjdpbhli5wyTwkagok5BxHa1TNgp
	WeZFI47KozOxv0s7D8uojKRyqi71NjRA/aH/1zb13E34eSklDGPRlgRYIQ1LJtR7A3eYcuhReKur/
	yw8SK0v+kin8MmVuGg7rcBz2QPMM1EOmuo9EOUUmfKopgs2zWdmq2mGBBb83RDao37Zd+JQl8zSQT
	7jmOrvBGuvs15R/B2uYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj4J9-0000000CytP-1gjh;
	Tue, 27 Aug 2024 22:04:59 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj4J6-0000000CyrS-0zFG;
	Tue, 27 Aug 2024 22:04:57 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-371ba7e46easo3503551f8f.0;
        Tue, 27 Aug 2024 15:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724796294; x=1725401094; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VZgyQZttbFN6Mpv5C6Zqi3PHF1KkrD2jrO7egIws/+I=;
        b=l0SVfxEC2mqU/y6uJhmirzJTdNoIaUFiQNaSuRb8kwow4NM0STdUh5Y9GREt6LcSm5
         u0QxmC1hcw54OZt5QgnJXowntoovou6Vf6WXJfVWs6Ytcq6eefPd1J8T9OJkVRocld7D
         fFWNhJoqHmTDkPiZ2UsWm3vy+6XTSDJ+WYzrdFvRGJ1jXr0SexZ3FWRbf8Y7QfnxpX2G
         5PpIhczYFYuudMU9K5D0Da0ZMeIXlG2jRgF0LsZn7codDUp6ae1hsR9M3E97y3iZqWiO
         AiOnQAOcFvOfqdHdnAnv5kb/A9q7iRPfqKxBCQGY1QHnDQ0aKo0NJuPLOUlwZnpjYgQx
         lpPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724796294; x=1725401094;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VZgyQZttbFN6Mpv5C6Zqi3PHF1KkrD2jrO7egIws/+I=;
        b=ZFhooBA/rsAOI179FPWLAhOvTbg40duv68O1BAZjwKC0uB6G8bTlWlBjZ5jrrF0kCx
         JFmhu+iUJeywaOw/+hzN+IskESwqqBS5tolxyXsUG7nkj4LjpxTQjtruer9WXH7tk6Ae
         wIbLgX99IWC0RiK2VdJSzdNMuPR7Qlk63SRATyejrfzGtj9CMIVhdNkGIbs4IYMjE3nq
         Ss9TKJfV6doQAgNDxuuxBKFgzVYGr/AMUrtZJtR3Ou42pmteI1c8N4zZHMhUlsXEnQWT
         A+p1Xr1wSjvlcQhBfyeILuu1eK7V7LtleMOHDGpyyHUjNi2FkyLy049AqvPE3IUeMKFr
         FyuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDdouDZNq+G8HPBvkywSwv3KancXtltHBPyaS+uq/txH2kFsvGiaXe4s/59TX+x0VAuigeMQyYbE9MnoHN@lists.infradead.org, AJvYcCXIR+g8SWxOgx8aRXSo1K8JZuyjFNbuP0fH+14JoM3C8KAzEYpe0mzv1n1vZ4FauuztKiezhreWPwYcxtLGnFs=@lists.infradead.org, AJvYcCXuojC6YVNUZroh2UkVhHdfPZCTehWSJixSfPigS18OTy7SkdW6b9CWnR5u2wVd8UWyztM8+pdCjT4B+sJFAA8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzBR+1Smy+/b3uAR2oPpaa6zBqOExGF0gss0v2ZvNHmeZ5Tt7/L
	tLOolmn6s5eaP5gTr8eRagVNauU8IpowCgo+x+mnwXV6NKd8n9d+jBbnfsUHxSJublAAW+n0F8g
	ldWR1dUWMvoB3w2L8ZKZsoYe5Wz/B9Q==
X-Google-Smtp-Source: AGHT+IHWk+OQ6gg8FUjgV2v4vECfE0Fa9RJ/6lK2GykuDqzWb1DzW5pw5cVNOpUVhtAQtCWvfc0gKwWGbXHqNy0EXDs=
X-Received: by 2002:a05:6000:8d:b0:368:747c:5a04 with SMTP id
 ffacd0b85a97d-3731185ad48mr7748341f8f.25.1724796293984; Tue, 27 Aug 2024
 15:04:53 -0700 (PDT)
MIME-Version: 1.0
References: <20240820070818.1124403-1-vignesh.raman@collabora.com>
In-Reply-To: <20240820070818.1124403-1-vignesh.raman@collabora.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 27 Aug 2024 15:04:42 -0700
Message-ID: <CAF6AEGu-T4=3jPRcnq3BFBtfb_yhmWE2b8EgxgTm5Q0bqSv04Q@mail.gmail.com>
Subject: Re: [PATCH v1] drm/ci: increase timeout for all jobs
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, 
	guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	deborah.brouwer@collabora.com, linux-mediatek@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
	intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_150456_293533_5AC7075E 
X-CRM114-Status: GOOD (  14.07  )
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

T24gVHVlLCBBdWcgMjAsIDIwMjQgYXQgMTI6MDnigK9BTSBWaWduZXNoIFJhbWFuCjx2aWduZXNo
LnJhbWFuQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gU2V0IHRoZSB0aW1lb3V0IG9mIGFsbCBk
cm0tY2kgam9icyB0byAxaDMwbSBzaW5jZQo+IHNvbWUgam9icyB0YWtlcyBtb3JlIHRoYW4gMSBo
b3VyIHRvIGNvbXBsZXRlLgo+Cj4gU2lnbmVkLW9mZi1ieTogVmlnbmVzaCBSYW1hbiA8dmlnbmVz
aC5yYW1hbkBjb2xsYWJvcmEuY29tPgoKQWNrZWQtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGdt
YWlsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9jaS90ZXN0LnltbCB8IDUgKysrKy0K
PiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9jaS90ZXN0LnltbCBiL2RyaXZlcnMvZ3B1L2RybS9j
aS90ZXN0LnltbAo+IGluZGV4IGI2ZjQyOGNkYWY5NC4uMDlkODQ0Nzg0MGU5IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9jaS90ZXN0LnltbAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9j
aS90ZXN0LnltbAo+IEBAIC0xMCw2ICsxMCw3IEBACj4gIC5sYXZhLXRlc3Q6Cj4gICAgZXh0ZW5k
czoKPiAgICAgIC0gLnRlc3QtcnVsZXMKPiArICB0aW1lb3V0OiAiMWgzMG0iCj4gICAgc2NyaXB0
Ogo+ICAgICAgIyBOb3RlOiBCdWlsZCBkaXIgKGFuZCB0aHVzIGluc3RhbGwpIG1heSBiZSBkaXJ0
eSBkdWUgdG8gR0lUX1NUUkFURUdZCj4gICAgICAtIHJtIC1yZiBpbnN0YWxsCj4gQEAgLTcxLDYg
KzcyLDcgQEAKPiAgICAgIC0gLmJhcmVtZXRhbC10ZXN0LWFybTY0Cj4gICAgICAtIC51c2UtZGVi
aWFuL2JhcmVtZXRhbF9hcm02NF90ZXN0Cj4gICAgICAtIC50ZXN0LXJ1bGVzCj4gKyAgdGltZW91
dDogIjFoMzBtIgo+ICAgIHZhcmlhYmxlczoKPiAgICAgIEZET19DSV9DT05DVVJSRU5UOiAxMAo+
ICAgICAgSFdDSV9URVNUX1NDUklQVDogIi9pbnN0YWxsL2lndF9ydW5uZXIuc2giCj4gQEAgLTIx
NSw3ICsyMTcsNiBAQCBwYW5mcm9zdDpyazMzOTk6Cj4gICAgZXh0ZW5kczoKPiAgICAgIC0gLmxh
dmEtaWd0Ong4Nl82NAo+ICAgIHN0YWdlOiBpOTE1Cj4gLSAgdGltZW91dDogIjFoMzBtIgo+ICAg
IHZhcmlhYmxlczoKPiAgICAgIERSSVZFUl9OQU1FOiBpOTE1Cj4gICAgICBEVEI6ICIiCj4gQEAg
LTQxNCw2ICs0MTUsNyBAQCBwYW5mcm9zdDpnMTJiOgo+Cj4gIHZpcnRpb19ncHU6bm9uZToKPiAg
ICBzdGFnZTogc29mdHdhcmUtZHJpdmVyCj4gKyAgdGltZW91dDogIjFoMzBtIgo+ICAgIHZhcmlh
YmxlczoKPiAgICAgIENST1NWTV9HQUxMSVVNX0RSSVZFUjogbGx2bXBpcGUKPiAgICAgIERSSVZF
Ul9OQU1FOiB2aXJ0aW9fZ3B1Cj4gQEAgLTQzNiw2ICs0MzgsNyBAQCB2aXJ0aW9fZ3B1Om5vbmU6
Cj4KPiAgdmttczpub25lOgo+ICAgIHN0YWdlOiBzb2Z0d2FyZS1kcml2ZXIKPiArICB0aW1lb3V0
OiAiMWgzMG0iCj4gICAgdmFyaWFibGVzOgo+ICAgICAgRFJJVkVSX05BTUU6IHZrbXMKPiAgICAg
IEdQVV9WRVJTSU9OOiBub25lCj4gLS0KPiAyLjQzLjAKPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
