Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A6B5D277C1
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jan 2026 16:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RpSYpf3fKKw76G7rj/+BdcWVPuBUNWnAXhj/5TFnmpY=; b=xyJxMD6lsxoDnx
	sE4ZCLQ91iS+9J4XRKIqfMxJpid0V4eLuofgQfJN8qSgcasYLcs48tba/E+Zu2HsGEEAknJX8ztJM
	VZv5ky5DrukUvF/5lfam1Zd1mt8k1NPegnbzLMGn3licDJQ/qLHS6KF6Y+oRhU0lYvwXL8tWmNDX0
	foAIUsXEdOBcDCXXsihzpuNEshdQIWpRgtXuXN/rVxvmBuLdHDu9jmiyOILiVFuNAV2kqs3LN2VNJ
	bBSGqY2NFlSQTpE5IkVjsWHDtpEWUuDdCadKFMdSKKS/s2W4DvDfLiAPm7WBfGWVt9+6fRTHvEEKA
	QuEcHS8lKWE7hhXKDHxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vecET-00000003YfY-02IS;
	Sat, 10 Jan 2026 16:54:33 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vecEP-00000003YfD-1tNM
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Jan 2026 16:54:31 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-79045634f45so57902037b3.1
        for <linux-rockchip@lists.infradead.org>; Sat, 10 Jan 2026 08:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1768064067; x=1768668867; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zgFtFK+acLpuQAz2BzGRmGrNRWb9jmojhInoAcIgzv8=;
        b=vb5fvn8RF4joVkApj/O/XaJbrZm0qGr2P7+3lFCAi/AM+ThLUSiap9zAgfBz6TTCRa
         zWYQkrOwZtaGOJGqijzsXaJjvVui4KipZH4bvCwyaunWlJcG8iYSgxIK2C2A8CDlOyeG
         pfaMqmbVyr8jQlaAoLd75Rifgr5svex/klyi4JgHBhYdMBdZ6hrWv3u1ZDe2ycHFxZDN
         JQuh5iVEXeyey5e5KGR17QCCE25hN0JyfuFBYh6WveVgjw1kby8NCkoFofQd9oh4aGnU
         OAmTmszYtOZzELUClkLQJc806oZtcQVBgHkHhdYKj6K/8xFBAfcRSGio6ofDlx26oaA8
         9ePQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768064067; x=1768668867;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zgFtFK+acLpuQAz2BzGRmGrNRWb9jmojhInoAcIgzv8=;
        b=bMXdG9nh+/3/RBN7wZTXlW0YD05ZZgh+uujaNKkeFvkXCoYC8iMuzgfdGA3zZPM1+b
         xB1EJrR7twRh/R+toQbkg/tiUMHVHvg5RsCQnQ9Lmlk/7fq59pemOALGxU0+pTKiqscA
         RbHC3eHi6IIjxgW5FVo5FqPOawfaSst2QO68zMaQL7/POsHNg0Nw32GVIWFPFtfNk79k
         4qaCBodRZuhmXJwTF3eBfjACDR+/d+CM1T/DQl115hpjkN5VhyqN+nIofYcdLUxKajxC
         aJMpsub06rjRgDoFaizRc8R0VFW4dAU7Ttk+XgIg0YLt8p0CmTe9deHW3ouOIiu0YH0D
         d1eQ==
X-Forwarded-Encrypted: i=1; AJvYcCUH2iXddKMLVHdsYDt151OuhODnWWJn/ymlT59L0fgT795BtDM5/iF/MkdX63p+O01N16eQAaZ74oVH0KIdgw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3rUrM7Q2bcKydXFxstlS4fW9WJviao9/SHTn+iOJax6OE198T
	TgepBUp2wc2kWLoKPI+HMXcDZXU0R6KYAIAXDw8ye3iq+ZqITEgonW9zP3qu6uOLt/vEcHbLmSc
	pzxxHGkU=
X-Gm-Gg: AY/fxX498R13DifSbTK3u789yGfIYLKB7BT2oiiUb6LPOspDXHqJRNvKO0axzo/epNW
	oUpbHwxOU+2PvO/g7H1kSiVJyf/zjpnxjEsEGqPnlUqK4cCDJvP69YBu+CNvNwn443RcK/lAsyC
	OgMwDx5NrlAIf3hjHElJ5DB3+kxGjRT28s3O2AiDK5JeLU2CLZNnBCPqeAonTb1OofZ9SqYYDa9
	45SPqkicZH+DssNJBKD/Tt0ZfDclrAFSmUV7q72J13W0H9SHUisionWPoDTVChfjzfLMjsWuw85
	e7IzkaVf25a5Y5X+OQysPR18dsxGu8QOhzM7TsZGowHNw1KMA4EnqlfcUWYRR+x7P6ewulUZ40D
	oxol8tKsE12F9bm1mHefe0hlcX8JxoRRWv610kB4oQex3ZfC9g/CPkZAaMbDTEF/eLllBQr1xDK
	RSK/guV0lulsyu06g7L/+tyDX6yEhWvnHojyqoeriI3orunlwSHg==
X-Google-Smtp-Source: AGHT+IH9dL5r1GLmMjxttmDwwEH3+V6Yd1MjzEqyUO4IK0E8eVI9rTlaGdFh2x9UUOM6Tf8d8+DlWA==
X-Received: by 2002:a05:690c:2605:b0:789:2311:46a with SMTP id 00721157ae682-790b57590e9mr119138977b3.19.1768064067093;
        Sat, 10 Jan 2026 08:54:27 -0800 (PST)
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com. [74.125.224.52])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-790aa57deacsm51923837b3.20.2026.01.10.08.54.26
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jan 2026 08:54:26 -0800 (PST)
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-6467bed0d2fso5145923d50.0
        for <linux-rockchip@lists.infradead.org>; Sat, 10 Jan 2026 08:54:26 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUbfQiExDp9rhHCLyuvTJ/TI/8JP3fyk4oaW9GR/4VtHb3nADdp5lNdqFlVpwowG9TkMBU3rZzQAeKNLPtMGw==@lists.infradead.org
X-Received: by 2002:a53:bdcc:0:b0:63f:b1d4:f9e3 with SMTP id
 956f58d0204a3-64716b3a7d4mr8056846d50.9.1768064066164; Sat, 10 Jan 2026
 08:54:26 -0800 (PST)
MIME-Version: 1.0
References: <20251215-rocket-error-path-v1-0-eec3bf29dc3b@cherry.de>
In-Reply-To: <20251215-rocket-error-path-v1-0-eec3bf29dc3b@cherry.de>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Sat, 10 Jan 2026 17:54:15 +0100
X-Gmail-Original-Message-ID: <CAAObsKBmJDbDfegLP-yrO+ys5m1zyoDUe9KMQ8tHeRXxQGAdow@mail.gmail.com>
X-Gm-Features: AQt7F2rSDY8AwFu9wKOfOPB3fQ0feqjbIImAsj0T1FY9RvNW3OrnzYnknqJKAuw
Message-ID: <CAAObsKBmJDbDfegLP-yrO+ys5m1zyoDUe9KMQ8tHeRXxQGAdow@mail.gmail.com>
Subject: Re: [PATCH 0/2] accel/rocket: fix unwinding in error paths of two functions
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Oded Gabbay <ogabbay@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Quentin Schulz <quentin.schulz@cherry.de>, 
	stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260110_085429_753976_BFE0A0D9 
X-CRM114-Status: GOOD (  20.42  )
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

T24gTW9uLCBEZWMgMTUsIDIwMjUgYXQgNTozNuKAr1BNIFF1ZW50aW4gU2NodWx6IDxmb3NzK2tl
cm5lbEAwbGVpbC5uZXQ+IHdyb3RlOgo+Cj4gQXMgcmVwb3J0ZWRbMV0sIGluIHRoZSBjdXJyZW50
IHN0YXRlIG9mIG1hc3RlciAodGhhdCBpcywgKndpdGhvdXQqCj4gdGhhdFsyXSBwYXRjaCwgeWV0
IHVubWVyZ2VkKSwgaXQgaXMgcG9zc2libGUgdG8gdHJpZ2dlcgo+IE9vcHMvb3V0LW9mLWJvdW5k
cyBlcnJvcnMvdW5iYWxhbmNlZCBydW50aW1lIFBNIGJ5IHNpbXBseSBjb21waWxpbmcKPiBEUk1f
QUNDRUxfUk9DS0VUIGJ1aWx0LWluICg9eSkgaW5zdGVhZCBvZiBhcyBhIG1vZHVsZSAoPW0pLgo+
Cj4gVGhpcyBmaXhlcyBwb2ludHMgMSBhbmQgMiByZXBvcnRlZCBoZXJlWzFdIGJ5IGZpeGluZyB0
aGUgdW53aW5kaW5nIGluCj4gdHdvIGZ1bmN0aW9ucyB0byBwcm9wZXJseSB1bmRvIGV2ZXJ5dGhp
bmcgZG9uZSBpbiB0aGUgc2FtZSBmdW5jdGlvbgo+IHByaW9yIHRvIHRoZSBlcnJvci4KPgo+IE5v
dGUgdGhhdCB0aGlzIGRvZXNuJ3QgbWVhbiB0aGUgUm9ja2V0IGRldmljZSBpcyB1c2FibGUgaWYg
b25lIGNvcmUgaXMKPiBtaXNzaW5nLiBJbiBmYWN0LCBpdCBzZWVtcyBpdCBkb2Vzbid0IGFzIEkn
bSBoaXQgd2l0aCBtYW55Cj4gcm9ja2V0IGZkYWMwMDAwLm5wdTogTlBVIGpvYiB0aW1lZCBvdXQK
PiBmb2xsb3dlZCBieSBvbmUKPiByb2NrZXQgZmRhZDAwMDAubnB1OiBOUFUgam9iIHRpbWVkIG91
dAo+IChhbmQgdGhhdCwgZml2ZSB0aW1lcykgd2hlbmV2ZXIgY29yZTAgKGZkYWIwMDAwLm5wdSkg
ZmFpbHMgdG8gcHJvYmUgYW5kCj4gSSdtIHJ1bm5pbmcgdGhlIGV4YW1wbGUgZnJvbQo+IGh0dHBz
Oi8vZG9jcy5tZXNhM2Qub3JnL3RlZmxvbi5odG1sI2RvLXNvbWUtaW5mZXJlbmNlLXdpdGgtbW9i
aWxlbmV0djEKPiBzbyBzb21ldGhpbmcgZWxzZSBwcm9iYWJseSBuZWVkcyBzb21lIGFkZGl0aW9u
YWwgbG92ZS4KPgo+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8w
YjIwZDc2MC1hZDRmLTQxYzAtYjczMy0zOWRiMTBkNmNjNDFAY2hlcnJ5LmRlLwo+IFsyXSBodHRw
czovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI1MTIwNTA2NDczOS4yMDI3MC0x
LXJteHB6bGJAZ21haWwuY29tLwo+Cj4gU2lnbmVkLW9mZi1ieTogUXVlbnRpbiBTY2h1bHogPHF1
ZW50aW4uc2NodWx6QGNoZXJyeS5kZT4KClRoYW5rIHlvdSwgcHVzaGVkIGl0IHRvIGRybS1taXNj
LW5leHQuCgpCZXN0IHJlZ2FyZHMsCgpUb21ldSBWaXpvc28KCj4gLS0tCj4gUXVlbnRpbiBTY2h1
bHogKDIpOgo+ICAgICAgIGFjY2VsL3JvY2tldDogZml4IHVud2luZGluZyBpbiBlcnJvciBwYXRo
IGluIHJvY2tldF9jb3JlX2luaXQKPiAgICAgICBhY2NlbC9yb2NrZXQ6IGZpeCB1bndpbmRpbmcg
aW4gZXJyb3IgcGF0aCBpbiByb2NrZXRfcHJvYmUKPgo+ICBkcml2ZXJzL2FjY2VsL3JvY2tldC9y
b2NrZXRfY29yZS5jIHwgIDcgKysrKystLQo+ICBkcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRf
ZHJ2LmMgIHwgMTUgKysrKysrKysrKysrKystCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAtLS0KPiBiYXNlLWNvbW1pdDogYTYxOTc0NmQyNWM4
YWRhZmUyOTQ3NzdjYzk4YzQ3YTA5NzU5YjNlZAo+IGNoYW5nZS1pZDogMjAyNTEyMTItcm9ja2V0
LWVycm9yLXBhdGgtZjk3ODRjNDZhNTAzCj4KPiBCZXN0IHJlZ2FyZHMsCj4gLS0KPiBRdWVudGlu
IFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAY2hlcnJ5LmRlPgo+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
