Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A3B1C27C43
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 May 2024 23:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Njw5er7HLJXXFDjF7T/4cTKa9dR4HyUsdL29tdtGSkQ=; b=KPch+rGnIBnKZm
	WYVXk9oOc+0rkh5zvozQX7Epkre0BwHoXLG/SDqi2VGHOfo3owvyeBp7TVhjwmX+BnJ6faz+caSkH
	88NhbxXNSs58s8NHa9nrwbrwWaD5bJEba2sJd5Y1V0m3y5GtyHhgAbT+utmPfJ+3RO2vANZjyCn+P
	noPerfj7t2piz9vpiYdbhaN/gOTaSUes5DKA6dgWRCIW8ryarT/rgxW67x3Sc1zfQMhLtDKrqcFAr
	HCoCC2J8MrKmUQc8FntR6cOEiRwGcA1JWsGQvSf8PKE7QeGut9mlHeArntunYSJhfC2BhOdMV+dtn
	MWH6YXiHDbprqd4U0+Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCp9M-00000008gXT-2vP7;
	Thu, 30 May 2024 23:25:36 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCp9K-00000008gVC-0NEf
	for linux-rockchip@lists.infradead.org;
	Thu, 30 May 2024 23:25:35 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-df4dda88ce9so1188338276.3
        for <linux-rockchip@lists.infradead.org>; Thu, 30 May 2024 16:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717111527; x=1717716327; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sv0LecyVOWd5yytKjjDHRWsA6Vnu0bk1m9ADGMShsuo=;
        b=KZTCSjUHIpxIGpfnlytypSIY+3vKH0tSZK9pOkx209HuRi0BRuQ2CFTA7eJFKckTdt
         IES+a5U4xFzGuVix1pAfGWU8HLqQg1ZaRZRS/uE4J831YJtZtGPZgeZGxpq99TYmKtG9
         FSWY2yHVYM4WQuOTnmn+YCwTxQ5AXsGiEv5b/yj+T+0e9Ci9W9aisLlX3PzwJoYdcw2P
         XLPCvnhYXhPHkFf601Z95ytwSrXtlptPEq+8EFO15BEoCLEwxxDDWYCxjvGgQ94jbYkR
         33txCu/5oQgmPvyZBGpRygtLhg0Cw3unCzlf5QOT8uCq6lamrsxn2zXRrLrZE1h51IPu
         1kag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717111527; x=1717716327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sv0LecyVOWd5yytKjjDHRWsA6Vnu0bk1m9ADGMShsuo=;
        b=cVtI+nMwiMetUo8v/UXqyogbmAtTIpUWJOWUugts8WenDUJfTcVHiUJ6vsS7Rs/IXd
         DcL4Rhd7zrSGW4DcnRKF376Y33GtPWXwovWEi9wLSkD8ulFd6MDbDgBcNHvi7zMjxW9H
         0+8y2+e5ktUgPPhr9mBmWpRMRXVCp0CqU4aPULEFKfXuTmIPq1fFuFRc+ezBoVwr7/kw
         8pxrfzzmjskgGGjK5TrWnfscVV/iBHwSbu+eGugjYM7lEPN1y/2djhNWdYgKn3bNv0hL
         4I/4vygpWvhcljUWp/qgpyqccSc5eH2LXzLHpuoc6iwr69YWse6cFWh45zXhnOkUAKp0
         PFXw==
X-Forwarded-Encrypted: i=1; AJvYcCUj/CJRHORaIxho3YQwKCf9Qd3G8EfSr8wrJIqTNtNz8AD/MXDYFkIOoGzxcZjdW3nRb9RqcNplP/Cl5sP4CtG+WLb/rlozlyDo4T9ueujVmV41
X-Gm-Message-State: AOJu0YzaeslnL6ALnwNz0VKGRg0WuKfpTx+HyAwW8qecgLtk7KtOKaDR
	lve/qptlGZMo7siipR7BYR/C6vY0e5hko9gycdaGqu3Anqp+cZ5Y5tmkO51uGYEqAGkXKjl7CRO
	ZE0OdNwUpUQn2Is8e6XXNpHlDlG3XGoe82fWBrw==
X-Google-Smtp-Source: AGHT+IGoT2aZ50ey6PYkXo4gk0t6FYv3SWVRLhfFVMNTxxcjrabn1SF849fjcmILla0ETMZvmc8wUcRAZ6PmWQmcsDw=
X-Received: by 2002:a25:a2c6:0:b0:de5:852f:6afe with SMTP id
 3f1490d57ef6-dfa73c23234mr310487276.30.1717111527524; Thu, 30 May 2024
 16:25:27 -0700 (PDT)
MIME-Version: 1.0
References: <20240531-edp-panel-drop-v3-0-4c98b2b95e3a@linaro.org> <CAD=FV=XMgAnaEaHXZJL57+66OXs0afP9vurxf_ffqkum=xqEfA@mail.gmail.com>
In-Reply-To: <CAD=FV=XMgAnaEaHXZJL57+66OXs0afP9vurxf_ffqkum=xqEfA@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 31 May 2024 02:25:16 +0300
Message-ID: <CAA8EJpoy4vTGGFqoCXUKshWhLVUL8ME1i2Z_X5B+yRG45vx6+w@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] drm/panel-edp: remove several legacy compatibles
 used by the driver
To: Doug Anderson <dianders@chromium.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Jeffrey Hugo <quic_jhugo@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_162534_135389_D48FA114 
X-CRM114-Status: GOOD (  26.89  )
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

T24gRnJpLCAzMSBNYXkgMjAyNCBhdCAwMjoyNCwgRG91ZyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hy
b21pdW0ub3JnPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gVGh1LCBNYXkgMzAsIDIwMjQgYXQgNDox
M+KAr1BNIERtaXRyeSBCYXJ5c2hrb3YKPiA8ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPiB3
cm90ZToKPiA+Cj4gPiBUaGVyZSBhcmUgdHdvIHdheXMgdG8gZGVzY3JpYmUgYW4gZURQIHBhbmVs
IGluIGRldmljZSB0cmVlLiBUaGUKPiA+IHJlY29tbWVuZGVkIHdheSBpcyB0byBhZGQgYSBkZXZp
Y2Ugb24gdGhlIEFVWCBidXMsIGlkZWFsbHkgdXNpbmcgdGhlCj4gPiBlZHAtcGFuZWwgY29tcGF0
aWJsZS4gVGhlIGxlZ2FjeSB3YXkgaXMgdG8gZGVmaW5lIGEgdG9wLWxldmVsIHBsYXRmb3JtCj4g
PiBkZXZpY2UgZm9yIHRoZSBwYW5lbC4KPiA+Cj4gPiBEb2N1bWVudCB0aGF0IGFkZGluZyBzdXBw
b3J0IGZvciBlRFAgcGFuZWxzIGluIGEgbGVnYWN5IHdheSBpcyBzdHJvbmdseQo+ID4gZGlzY291
cmFnZWQgKGlmIG5vdCBmb3JiaWRkZW4gYXQgYWxsKS4KPiA+Cj4gPiBXaGlsZSB3ZSBhcmUgYXQg
aXQsIGFsc28gZHJvcCBsZWdhY3kgY29tcGF0aWJsZSBzdHJpbmdzIGFuZCBiaW5kaW5ncyBmb3IK
PiA+IGZpdmUgcGFuZWxzLiBUaGVzZSBjb21wYXRpYmxlIHN0cmluZ3Mgd2VyZSBuZXZlciB1c2Vk
IGJ5IGEgRFQgZmlsZQo+ID4gcHJlc2VudCBpbiBMaW51eCBrZXJuZWwgYW5kIG1vc3QgbGlrZWx5
IHdlcmUgbmV2ZXIgdXNlZCB3aXRoIHRoZQo+ID4gdXBzdHJlYW0gTGludXgga2VybmVsLgo+ID4K
PiA+IFRoZSBmb2xsb3dpbmcgY29tcGF0aWJsZXMgd2VyZSBuZXZlciB1c2VkIGJ5IHRoZSBkZXZp
Y2VzIHN1cHBvcnRlZCBieQo+ID4gdGhlIHVwc3RyZWFtIGtlcm5lbCBhbmQgYXJlIGEgc3ViamVj
dCB0byBwb3NzaWJsZSByZW1vdmFsOgo+ID4KPiA+IC0gbGcsbHAwOTdxeDEtc3BhMQo+ID4gLSBz
YW1zdW5nLGxzbjEyMmRsMDEtYzAxCj4gPiAtIHNoYXJwLGxkLWQ1MTE2ejAxYgo+ID4KPiA+IEkn
bSBjb25zaWRlcmluZyBkcm9wcGluZyB0aGVtIGxhdGVyLCB1bmxlc3MgdGhlcmUgaXMgYSBnb29k
IHJlYXNvbiBub3QKPiA+IHRvIGRvIHNvLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBC
YXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4KPiA+IC0tLQo+ID4gQ2hhbmdl
cyBpbiB2MzoKPiA+IC0gUmVwaHJhc2VkIHRoZSB3YXJuaW5nIGNvbW1lbnQsIGZvbGxvd2luZyBz
b21lIG9mIERvdWcncyBzdWdnZXN0aW9ucy4KPiA+IC0gTGluayB0byB2MjogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvci8yMDI0MDUyOS1lZHAtcGFuZWwtZHJvcC12Mi0wLWZjZmM0NTdmYzhkZEBs
aW5hcm8ub3JnCj4gPgo+ID4gQ2hhbmdlcyBpbiB2MjoKPiA+IC0gQWN0dWFsbHkgZHJvcCBzdXBw
b3J0IGZvciBmaXZlIHBhbmVscyBhY2tlZCBieSBEb3VnIEFuZGVyc3Nvbgo+ID4gLSBMaW5rIHRv
IHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjQwNTIzLWVkcC1wYW5lbC1kcm9wLXYx
LTEtMDQ1ZDYyNTExZDA5QGxpbmFyby5vcmcKPiA+Cj4gPiAtLS0KPiA+IERtaXRyeSBCYXJ5c2hr
b3YgKDMpOgo+ID4gICAgICAgZHJtL3BhbmVsLWVkcDogYWRkIGZhdCB3YXJuaW5nIGFnYWluc3Qg
YWRkaW5nIG5ldyBwYW5lbCBjb21wYXRpYmxlcwo+ID4gICAgICAgZHQtYmluZGluZ3M6IGRpc3Bs
YXk6IHBhbmVsLXNpbXBsZTogZHJvcCBzZXZlcmFsIGVEUCBwYW5lbHMKPiA+ICAgICAgIGRybS9w
YW5lbC1lZHA6IGRyb3Agc2V2ZXJhbCBsZWdhY3kgcGFuZWxzCj4gPgo+ID4gIC4uLi9iaW5kaW5n
cy9kaXNwbGF5L3BhbmVsL3BhbmVsLXNpbXBsZS55YW1sICAgICAgIHwgIDEwIC0tCj4gPiAgZHJp
dmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLWVkcC5jICAgICAgICAgICAgICAgICAgfCAxOTIgKysr
LS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCsp
LCAxNzcgZGVsZXRpb25zKC0pCj4KPiBUaGFua3MhIEknbSBoYXBweSB0byBhcHBseSB0aGlzIHNl
cmllcyBvciBhbHNvIGhhcHB5IGlmIHNvbWUgb3RoZXIKPiBkcm0tbWlzYyBjb21taXR0ZXIgbWVt
YmVyIHdhbnRzIHRvIGFwcGx5IGl0LiBQcm9iYWJseSB3ZSBzaG91bGQgd2FpdAo+IGZvciBhIERU
IHBlcnNvbiB0byBtYWtlIHN1cmUgdGhhdCB0aGV5IGRvbid0IGhhdmUgYW55IHByb2JsZW1zIHdp
dGgKPiB0aGUgYmluZGluZ3MgY2hhbmdlLgoKWWVzLCBJJ20gd2FpdGluZyBmb3IgYW4gYWNrIGZy
b20gRFQgbWFpbnRhaW5lcnMuCgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
