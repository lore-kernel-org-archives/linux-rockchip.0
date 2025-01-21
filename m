Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40423C87FCB
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wYWA3l75nHHGefX/DhGo2dapCaxYHDkOoR2H/VgZ1lY=; b=Caok9LWGuWahsB
	HXn35lgwiUO/gHpa3S0bp39cUbgoBllLPHrzQJrk89hKQROHQUBzGE+sbKS//7M+Ulj3Jk9gbvV8N
	qUW318clSGQFvLun0z/uWTvS93wPEOtFRa1xPdL2OgUm0oK3vO88MJcZC3qVR6DwgaKWDUUeeKVrA
	dke+thqZAOPQpI9yL4tCeAUfSn0jTDwl+B8P5sjdKOImfZY4RVJV6tX7YKjn9b9rJcEZTUcdoZZUI
	8k23Wak+Y7Qamqwhoo8Dltb/LJ3P/U+O6JhpC3p6N/0M4s2kdoy7wk/JbXXGGtZohz5XjU3vH+mBq
	hEo2ZBwc9Cx7r1UbtBwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbh7-0000000EwfG-06kr;
	Wed, 06 Aug 2025 10:48:29 +0000
Received: from mail-qv1-f46.google.com ([209.85.219.46])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taAKa-00000007NTS-0OGR;
	Tue, 21 Jan 2025 09:13:57 +0000
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6dd15d03eacso51973826d6.0;
        Tue, 21 Jan 2025 01:13:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737450834; x=1738055634;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h0F66BpcncnDZq8+yac2PqIUMY5KsLdGVzSelKc0x5s=;
        b=A7SfsW/33e/FrW4LnRGAa/gjelunDiiZ4U0dqrRwsq3meQzdtqyuGCNbe/tBoeJZOV
         YT3SCRJbuL5ASieVXxCKxUH4DREB+uquNcVLwYxnpUGPxYGbA1Q3dLhhyC2uxpYweOFC
         S3zGxy8j4bJ78itBCyPER9+qe5k+QsKWE9AfTeoVYkKlBa21MQq0d8DJgdGgGblTKSC8
         BpePolw68BLUwZB7asHzfOVro9BHEExVciLMaXTLwMvmSdijZRtkc1LgKF4PPMefG3vG
         6HWoMifgmoFWIB/NdlO6VpHYsV4oKPC7Zgj0iewVZtVrrOOuVDn1cksXysho1Y8nIxCC
         srOg==
X-Forwarded-Encrypted: i=1; AJvYcCV3asSgiu3mvwamWFG16iDdOdJPJxrUFWNHSCyDq+I/WlGaw1miCv77bhKeWYVsUAiQ51jjPEOnNA1haO6IiOw=@lists.infradead.org, AJvYcCV3hTyJjKMD4qh2ddsLnKEiFvXIhqfC0aUKZW0u1TAr1W+xIwP3qPRIQwFEUn/wcNbO8s78C9yANZfAVn06h4UL@lists.infradead.org
X-Gm-Message-State: AOJu0YyNB9jGEd2fkpFRYBK7yHWU6u2J1AsxerQFKUntzwaA4s56maBn
	C02YD7SeYdfqxOI/F1vwLV1KP+VtYpaIoPROvnEBH9KCrSwRp8ONSF6c+9Jp
X-Gm-Gg: ASbGnctW8TzCUGPApeMPJ6GB18zcQj1H0a+PnmRQ8e4Ktj3Xpq0FjNgqINRubvZC1Tv
	jDN9urHWBtLA3XcDwaQFT7L3HcJyMuOXRqFj6E7nBccP191oE88xJR8lzwfNc9idXWzixFgQ5p9
	yYIDZe5k6y+ts03zf/zDbyw5nRzF7umhgQVBE9k0IBPdWWnHhCV3IaT8KRqBD5/NNLBEwLSNfEi
	KVcv92eqLOJt8LW0OGutPTpv+TDsbPbst0lY/x+/90iRytlWGLu5nOGdoMM0aI9mt7HQnNZxeq5
	ULnfCO5tBvlMMIr3KDpyz/n32yH24yeUWxlV
X-Google-Smtp-Source: AGHT+IENq7xLW36L4AgonPx884baKXzE6ONH3W7/UMpuyybGKjyuHzzsVYvOi1SDmityB7X3x5cT8A==
X-Received: by 2002:a0c:c3c4:0:b0:6e1:c404:473 with SMTP id 6a1803df08f44-6e1c40404b4mr150788296d6.5.1737450834128;
        Tue, 21 Jan 2025 01:13:54 -0800 (PST)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com. [209.85.222.180])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e1afbf3887sm49435726d6.9.2025.01.21.01.13.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2025 01:13:53 -0800 (PST)
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-7b6ed0de64aso491602585a.0;
        Tue, 21 Jan 2025 01:13:53 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUKPrtkF8oSYcR/SsaypUPTfW+pr63ro9dA3zTuZPiGrk3/LHWSSrG5M18Efo3LfIBKw2MDeVAdVLpMMY0h4tM=@lists.infradead.org, AJvYcCXAOKiynBg3Ms6BgcjFbZ5MmrDliTC2fRwWJpJH49IkKsRVMm7bwQAu6nuPEkd5iGlEjlEwNXEKJer38RH1wyXB@lists.infradead.org
X-Received: by 2002:a05:6122:1783:b0:517:e7b7:d04b with SMTP id
 71dfb90a1353d-51cd983d39emr19246646e0c.5.1737450357663; Tue, 21 Jan 2025
 01:05:57 -0800 (PST)
MIME-Version: 1.0
References: <20241214-drm-connector-mode-valid-const-v2-0-4f9498a4c822@linaro.org>
 <173624946815.1500596.321177900833598022.b4-ty@linaro.org>
In-Reply-To: <173624946815.1500596.321177900833598022.b4-ty@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 21 Jan 2025 10:05:45 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVwcaY2Fgpf7GYhBrE5B+AEg=v0BH4OjMXgnp=wqjxmKg@mail.gmail.com>
X-Gm-Features: AbW1kvaysGolt62WeN4DkS2DNKlSt5oN-0lBeK1j4PwxsWLIrFBPjsQ9bnC7ZcA
Message-ID: <CAMuHMdVwcaY2Fgpf7GYhBrE5B+AEg=v0BH4OjMXgnp=wqjxmKg@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] drm/connector: make mode_valid() callback accept
 const mode pointer
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, 
	Danilo Krummrich <dakr@redhat.com>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, Alex Deucher <alexander.deucher@amd.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Xinhui Pan <Xinhui.Pan@amd.com>, Alain Volmat <alain.volmat@foss.st.com>, 
	Raphael Gallais-Pou <rgallaispou@gmail.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Peter Senna Tschudin <peter.senna@gmail.com>, Ian Ray <ian.ray@ge.com>, 
	Martyn Welch <martyn.welch@collabora.co.uk>, Inki Dae <inki.dae@samsung.com>, 
	Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Stefan Agner <stefan@agner.ch>, Alison Wang <alison.wang@nxp.com>, 
	Patrik Jakobsson <patrik.r.jakobsson@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>, 
	Samuel Holland <samuel@sholland.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, =?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Gurchetan Singh <gurchetansingh@chromium.org>, 
	Chia-I Wu <olvaffe@gmail.com>, Zack Rusin <zack.rusin@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, intel-gfx@lists.freedesktop.org, 
	intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, 
	virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Jani Nikula <jani.nikula@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_011356_127495_AE3436CC 
X-CRM114-Status: GOOD (  21.04  )
X-Mailman-Approved-At: Wed, 06 Aug 2025 03:45:50 -0700
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

SGkgRG1pdHJ5LAoKT24gVHVlLCBKYW4gNywgMjAyNSBhdCAxMjozMeKAr1BNIERtaXRyeSBCYXJ5
c2hrb3YKPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4gd3JvdGU6Cj4gT24gU2F0LCAxNCBE
ZWMgMjAyNCAxNTozNzowNCArMDIwMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+IFdoaWxl
IHdvcmtpbmcgb24gdGhlIGdlbmVyaWMgbW9kZV92YWxpZCgpIGltcGxlbWVudGF0aW9uIGZvciB0
aGUgSERNSQo+ID4gQ29ubmVjdG9yIGZyYW1ld29yayBJIG5vdGljZWQgdGhhdCB1bmxpa2Ugb3Ro
ZXIgRFJNIG9iamVjdHMKPiA+IGRybV9jb25uZWN0b3IgYWNjZXB0cyBub24tY29uc3QgcG9pbnRl
ciB0byBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSwKPiA+IHdoaWxlIG9idmlvdXNseSBtb2RlX3Zh
bGlkKCkgaXNuJ3QgZXhwZWN0ZWQgdG8gbW9kaWZ5IHRoZSBhcmd1bWVudC4KPiA+Cj4gPiBNYXNz
LWNoYW5nZSB0aGUgRFJNIGZyYW1ld29yayBjb2RlIHRvIHBhc3MgY29uc3QgYXJndW1lbnQgdG8g
dGhhdAo+ID4gY2FsbGJhY2suCj4gPgo+ID4gWy4uLl0KPgo+IEFwcGxpZWQgdG8gZHJtLW1pc2Mt
bmV4dCwgdGhhbmtzIQo+Cj4gWzEvNV0gZHJtL2VuY29kZXJfc2xhdmU6IG1ha2UgbW9kZV92YWxp
ZCBhY2NlcHQgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUKPiAgICAgICBjb21taXQ6IDdh
NWNkNDVmYWIwYTI2NzFhYTRlYTZkOGZiODBjZWEyNjgzODcxNzYKPiBbMi81XSBkcm0vYW1kZ3B1
OiBkb24ndCBjaGFuZ2UgbW9kZSBpbiBhbWRncHVfZG1fY29ubmVjdG9yX21vZGVfdmFsaWQoKQo+
ICAgICAgIGNvbW1pdDogYjI1NWNlNDM4OGUwOWYxNDMxMWU3OTEyZDBjY2Q0NWExNGEwOGQ2Ngo+
IFszLzVdIGRybS9zdGk6IGhkYTogcGFzcyBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSog
dG8gaGRhX2dldF9tb2RlX2lkeCgpCj4gICAgICAgY29tbWl0OiA1ZjAxMWI0NDIwMDZjY2IyOTA0
NDI2M2RmMTA4NDNkZTgwZmMwYjE0Cj4gWzQvNV0gZHJtL2Nvbm5lY3RvcjogbWFrZSBtb2RlX3Zh
bGlkX2N0eCB0YWtlIGEgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUKPiAgICAgICBjb21t
aXQ6IDY2ZGY5ZGViY2IyOWQxNDgwMjkxMmVkNzlhOWNmOWJhNzIxYjUxYTQKPiBbNS81XSBkcm0v
Y29ubmVjdG9yOiBtYWtlIG1vZGVfdmFsaWQgdGFrZSBhIGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxh
eV9tb2RlCj4gICAgICAgY29tbWl0OiAyNmQ2ZmQ4MTkxNmU2MmQyYjA1NjhkOTc1NmU1ZjljMzNm
MGY5YjdhCgpJIGNhbm5vdCBmaW5kIHRoZXNlIGluIGRybS1taXNjIG9yIGRybS1uZXh0LCBidXQg
dGhleSBhcmUgaW4gZHJtLXRpcD8KVGhlIGxhc3Qgb25lIGR1ZSB0byBjb21taXQgMmJkYzcyMTkx
N2NmMTQxZiAoIk1lcmdlIHJlbW90ZS10cmFja2luZwpicmFuY2ggJ2RybS1taXNjL2RybS1taXNj
LW5leHQnIGludG8gZHJtLXRpcCIpLgoKV2hhdCBhbSBJIG1pc3Npbmc/ClRoYW5rcyEKClAuUy4g
U2ltYTogbm90aWNlZCB3aGlsZSByZXNvbHZpbmcgYSBtZXJnZSBjb25mbGljdCB1c2luZyBkcm0t
dGlwLiBUaHghCgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdl
ZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlv
bmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9u
cyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVu
IEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNv
bWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGlu
dXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
