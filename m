Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C435CCD194
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 16:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2XB7Ycg29ZNVj8RzT4VMNndqhcVMTRNLhaXWGHjk7ro=; b=w/cPkfrIPfbtCx
	8rpsIh6p84IjYg3ydyPVu3cW0brEcKQcVerijTjZcmckeDTI6UodV66rsh9EbOhRz1k1ZrKSvSaLb
	NQ/J2YF9vsQJj9icIyM83UAJ+LCYFjxvFsl/Gj/+u/a+Vp23GSoBUAi/eWVh2CZf4MVH16/G1wapa
	C03Bc6Nu+yBwZm4b6z21fvG808k5GaBtoHJwMYRHLOO3cHZiTsUTTEZ0PaXUuAmMMi95b3QSjqxZh
	xQ5Hg7vy6PgcYyh9FvgtrVZcAzV9rpusqJS4ImmK03kzXXQZIBsnu4jU4Bei+K8lJw8W3rpkrmDRw
	iL6f1SHZt//u9MNFit3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v94Rh-00000002IZw-1iFj;
	Wed, 15 Oct 2025 16:33:49 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v94Rf-00000002IYX-0Moi
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Oct 2025 16:33:48 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-8572d7b2457so233575985a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Oct 2025 09:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1760546025; x=1761150825; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5TVB0JF51SZtYqzdiOCW6IylhkwcFhWMNKiMPXUv89E=;
        b=iYDGAwhkK1qT0eRh1RrGu5VrtcfA9aJ/IwDYm5QaA5O/dY9jrJ+DdXYQd7mLNS8MfK
         eJyW/98MBT7cVeiUI7khPUjQwr43r0Ik9EqPM6z10Wn/QNxgWDuOscPmgqWPUX4+8fN8
         vta8g35LgiksLjNdYYXDcR58nNAkpkteRtirRhdmZYVRxT95kZhR94Kj9qLHiwbO9GBf
         08+QM5WAObwN5KNjEVjiXkAofSIME07akWl30B6rLjL3O47mXnKEAPdgd8WnvNZrceL4
         zrkHJFAdHqzup51LvAz8kiLgj5BOPFln4pUadOw0AHZyUzENKVR7ud8xSxqJRp3QtGqQ
         XkdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760546025; x=1761150825;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5TVB0JF51SZtYqzdiOCW6IylhkwcFhWMNKiMPXUv89E=;
        b=Gg9sVJbz1ytrCv4UW+QbfMLe1xg2P8DGLjwODzkpFG8Q4oYVPLEA62To5eD90PQqRI
         10Bn5cmftbtiDISz8Z83DW5Y2Vxt2N2AzKoGAnVCtMAH1ZOhZmwmXhpdd8B+wCCOLCue
         2HzuJs5sTvXFAESox7QXuxWCw/dJJX0k4pHMHZ8qoXYSgY0cn5TKDAPixLAFfGWw47cu
         J/Mt15IqfjLSd6gMdZFy9d8+/ZF9xLcCMmChfzSsDS2/xV1r1a29sM2PFv1pueiA7T+V
         jN6fc0Ska9HRZJfdOUCI1kGCiJh45roxdQrQazcr2DE/IAdxHrAFS1lT+MI1RjR2Pk83
         Re0g==
X-Forwarded-Encrypted: i=1; AJvYcCVX0k8jY87Jrz+xkk2BQCROTN+YYTeas+Dmt8ViR+1NbNqvAQC4M/OkE10XdE3B1sz+N908wOJt9U0DWlqrVw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzzP+pVFFXn0mVgNnGClKW1HVOOvTwa5ErouDsRP3Tk2OVrdU8x
	vLctzYq4GxsxBUPhBKwsVK6Xazo2TrEpJ+RBNWKlLxJspwJrZJhv0stmcX5DE8WOgRgQtuuVZ3+
	V6g8VluY9ZqXHunOzZfFywDgseU488qF2C0K2nOt8sw==
X-Gm-Gg: ASbGncvKXKvi4+4e5xgBBhmdC4bH2s2KNJyebVmsbENtk9KJffs5w3BCBz7sBqdmWQZ
	3/ocT14piZ/8baKfeVEYGMm1yGby8svWq682E+SOjTe1KKs/WYsdByyDZs84/uiJboovcHXBVP8
	tx9ENM7OmRJIQEBWGELfCnr9h3Sv/2h7d4RYwRhGLHufxav07rX/7L734+LE8P9trIgygJtk0b6
	iZZolDWR4ubiGY9Wm6dv5U=
X-Google-Smtp-Source: AGHT+IEWLzmTAJuFvcRpHnhLL3oSxt5DVoapSEF3DOsu9jpTcS07RnjUwC01/MbeqWj+sQer43+GACQfNyCtsVTrhDM=
X-Received: by 2002:a05:620a:17a5:b0:827:937c:2c2e with SMTP id
 af79cd13be357-88f11537a62mr99337985a.30.1760546025481; Wed, 15 Oct 2025
 09:33:45 -0700 (PDT)
MIME-Version: 1.0
References: <20250903-rk3588-hdmi-cec-v4-0-fa25163c4b08@collabora.com>
 <20250903-rk3588-hdmi-cec-v4-2-fa25163c4b08@collabora.com> <2753758.X9hSmTKtgW@diego>
In-Reply-To: <2753758.X9hSmTKtgW@diego>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 15 Oct 2025 17:33:34 +0100
X-Gm-Features: AS18NWCJkFE5KF2FTR_JnzlOKDLW2oUBf1S94gJ5rVRW2DgSbekEAuXHzCMSdZw
Message-ID: <CAPj87rPqNw8BH7FCEAQONZWxTY+eUAE9DeWVTyJoTbN7mv=RfA@mail.gmail.com>
Subject: Re: [PATCH v4 2/6] drm/bridge: dw-hdmi-qp: Fixup timer base setup
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_093347_226446_E75B3F63 
X-CRM114-Status: GOOD (  14.01  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, Will Deacon <will@kernel.org>, Simona Vetter <simona@ffwll.ch>, Robert Foss <rfoss@kernel.org>, David Airlie <airlied@gmail.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Sandy Huang <hjc@rock-chips.com>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCAxNSBPY3QgMjAyNSBhdCAxNjo0NCwgSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVj
aC5kZT4gd3JvdGU6Cj4gQW0gTWl0dHdvY2gsIDMuIFNlcHRlbWJlciAyMDI1LCAyMDo1MTowMCBN
aXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToK
PiA+IEN1cnJlbnRseSB0aGUgVElNRVJfQkFTRV9DT05GSUcwIHJlZ2lzdGVyIGdldHMgaW5pdGlh
bGl6ZWQgdG8gYSBmaXhlZAo+ID4gdmFsdWUgYXMgaW5pdGlhbGx5IGZvdW5kIGluIHZlbmRvciBk
cml2ZXIgY29kZSBzdXBwb3J0aW5nIHRoZSBSSzM1ODgKPiA+IFNvQy4gIEFzIGEgbWF0dGVyIG9m
IGZhY3QgdGhlIHZhbHVlIG1hdGNoZXMgdGhlIHJhdGUgb2YgdGhlIEhETUkgVFgKPiA+IHJlZmVy
ZW5jZSBjbG9jaywgd2hpY2ggaXMgcm91Z2hseSA0MjguNTcgTUh6Lgo+ID4KPiA+IEhvd2V2ZXIs
IG9uIFJLMzU3NiBTb0MgdGhhdCByYXRlIGlzIHNsaWdodGx5IGxvd2VyLCBpLmUuIDM5Ni4wMCBN
SHosIGFuZAo+ID4gdGhlIGluY29ycmVjdCByZWdpc3RlciBjb25maWd1cmF0aW9uIGJyZWFrcyBD
RUMgZnVuY3Rpb25hbGl0eS4KPiA+Cj4gPiBTZXQgdGhlIHRpbWVyIGJhc2UgYWNjb3JkaW5nIHRv
IHRoZSBhY3R1YWwgcmVmZXJlbmNlIGNsb2NrIHJhdGUgdGhhdAo+ID4gc2hhbGwgYmUgcHJvdmlk
ZWQgYnkgdGhlIHBsYXRmb3JtIGRyaXZlci4gIE90aGVyd2lzZSBmYWxsYmFjayB0byB0aGUKPiA+
IHZlbmRvciBkZWZhdWx0Lgo+ID4KPiA+IFdoaWxlIGF0IGl0LCBhbHNvIGRyb3AgdGhlIHVubmVj
ZXNzYXJ5IGVtcHR5IGxpbmVzIGluCj4gPiBkd19oZG1pX3FwX2luaXRfaHcoKS4KPiA+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xs
YWJvcmEuY29tPgo+Cj4gUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2gu
ZGU+Cj4KPiBUaGlzIF9kb2VzXyBsb29rIG9rIHRvIG1lLCBidXQgYXMgdGhhdCB0b3VjaGVzIHRo
ZSBtYWluIGJyaWRnZSwgY291bGQKPiB3ZSBnZXQgYSAybmQgc2V0IG9mIGV5ZXM/CgpTdXJlIGNh
bi4KClJldmlld2VkLWJ5OiBEYW5pZWwgU3RvbmUgPGRhbmllbHNAY29sbGFib3JhLmNvbT4KCkNo
ZWVycywKRGFuaWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
