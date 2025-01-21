Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FC26CA0EC0
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 10:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EI4/lw2PPI7rJAcvH7UGiKdpz9ucsM4Szq9NYqnapM=; b=Olzbh7BZNlC2fX
	5s8wnVTvUqqadLhrtnnqRHN+4ZJZkfMUHkqV5OXS7d+4jvsB0mzsDymMq04nJOo7xd842on5bmGK4
	Mku/lgPz5RB1U0M2zz8Qjhq7GI7wRssA04vKyZMuFUUiYfWqlGcNFcbjntpv7EeWqDLVP2ACV+6UA
	OfxGVEyA+taP3znWDWD4EkEXXshDPVocV5BQE/q45HOJu05KHRbWeXMOZLaprO5ww+BMKrMPGPJ7K
	ast2kZbmGY1wr5W3lJoDCDnHzuN0ieXsaatoc89QeyEsohY2d05Wjkbo77FwunKOYieMkYo/x7LKF
	fxmxJi9XJL7U1UT8zOig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbh8-0000000EwgF-3nAQ;
	Wed, 06 Aug 2025 10:48:30 +0000
Received: from mail-ua1-f43.google.com ([209.85.222.43])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taC9Y-00000007i74-2nEw;
	Tue, 21 Jan 2025 11:10:41 +0000
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-85c4cd95885so1014743241.1;
        Tue, 21 Jan 2025 03:10:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737457838; x=1738062638;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VXUdfGyq4c5FX1gamn0gc9cnARR4WPDnFMac/C/Y36A=;
        b=N5ttPcOKsrQZEJIpsorWfJ8K699IM+xxP26zCVCJ8f4ZFFtf7wu1gAbMS+sahjteKw
         zEyDEOIa4hhiYiA1VpiT+D6xfhetDZhZLvp/8QK5mUuKB97REKXn/cZg1rlbbiJlR/UF
         jJw6MmvY7McqG8DheYt64m4plZ74uL0e5XKV+k7X7uJd3o5xltjHG4S/iRPSEzzrgBRW
         qx8DsRHhRpw0XGQGaTqghTIuq25U9vwrwzBAKcthJDr82N6KECuI40OYiYaQYW0By//a
         0c4E5td9OfQtMrPYk2EZzuaSv1jcFpArc5D5FOCEGy9WgOw8N10X0nEfje1FgEtP74Qw
         COcw==
X-Forwarded-Encrypted: i=1; AJvYcCVSisHGhCDwW2k6tNDRwW8U0+y+OxWPoNkoul0hfg7YWJw48NARjbAUZcmbMu00lZft/DiYilwgoIBYFa+blKgA@lists.infradead.org, AJvYcCVilGdMKA48ab/Pa45MvhQ5diCww4AeYdguWP4g6E1NL45GNnUndRjJ7JDqTMKOWpkGcHHCj3q8YqU/2vH5Vsc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyh1UWsuDosS0Ki0fgKHaIRhe9bLPN/zhjm1cPdNgtTQKXSEUTC
	PSUjvIwa9jpZvzsNnfYbsHT12Bgl0dVpDZQnYBLDqrp1nhMtv3S+8UMqmoUu
X-Gm-Gg: ASbGncvUOYb1rF5ylsB1e0i7h21G0QXcIuzqVpO9WaGFS0JPrNoT1vz3J98n28qBaqA
	cdO+rlve3i+883mgGtTvgbH8eOUsS2KSug6JJvzyxpMc5in7DayMCyOl8/Iu5VdfwOR+bSZskGA
	abbQPUkPqRU8op0DNvYtynY33Xh9hOC8PVL4OmxNjhEjGsVZRJfb8b+tpaK+pwE4RApXsG/pOvQ
	LYxLyviIAmcKSIDjKnRVlePgFhSiJnNgViRKVfLapB3aeLp+w/+Rg+Rqi2WNoZ5B/pwkj2BiuKN
	f0cp3RBwXxXfoX0FqnJmsawV9t9dbgZf
X-Google-Smtp-Source: AGHT+IGBQq+8NHEc5qgzZlKnQmMZeFzIuz5ASTWL41Ubp5jMPfB4HNDaLjg2l8FT2dZn2ms2EAewAQ==
X-Received: by 2002:a05:6102:3e95:b0:4b6:d773:afc0 with SMTP id ada2fe7eead31-4b6d773b357mr973129137.13.1737457837924;
        Tue, 21 Jan 2025 03:10:37 -0800 (PST)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4b68a1ed208sm2119411137.1.2025.01.21.03.10.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2025 03:10:37 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-4b11a110e4eso1428094137.1;
        Tue, 21 Jan 2025 03:10:37 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU+SdkIJTXcfuwCdSxnjSGBxoxTWFtFZl3qPmnSU+zDNq6zJFyTpzUWJFNCPK6v5Mosbzze1ucoQ0Lph+oAi4M=@lists.infradead.org, AJvYcCXVTCI2w/xsvJ/VTaYBP/O7nNYj6RVdmGGMP2UkAt9dtsoBS7fkTvQ/8BxTA6cCsu2n7gc/uEGu3Zx/Rb5yu3/k@lists.infradead.org
X-Received: by 2002:a05:6102:1625:b0:4b2:ad50:a99c with SMTP id
 ada2fe7eead31-4b690b86c0fmr12441756137.2.1737457837255; Tue, 21 Jan 2025
 03:10:37 -0800 (PST)
MIME-Version: 1.0
References: <20241214-drm-connector-mode-valid-const-v2-0-4f9498a4c822@linaro.org>
 <173624946815.1500596.321177900833598022.b4-ty@linaro.org>
 <CAMuHMdVwcaY2Fgpf7GYhBrE5B+AEg=v0BH4OjMXgnp=wqjxmKg@mail.gmail.com> <CAA8EJpos0HQpr9P4XRkto0Jy+Anf1xEH2xhEU8wtCyUQd+XwMg@mail.gmail.com>
In-Reply-To: <CAA8EJpos0HQpr9P4XRkto0Jy+Anf1xEH2xhEU8wtCyUQd+XwMg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 21 Jan 2025 12:10:25 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW-9F9aypY_XeU3y=dn3AAxjFrZO+H+=hbMF7nGrTLAQQ@mail.gmail.com>
X-Gm-Features: AbW1kvZBx44easXhFOatWXKdq1_QMeY-mb30d2zlnMs06wKR4MmvmnSlyypmVlE
Message-ID: <CAMuHMdW-9F9aypY_XeU3y=dn3AAxjFrZO+H+=hbMF7nGrTLAQQ@mail.gmail.com>
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
	Jani Nikula <jani.nikula@intel.com>, Stephen Rothwell <sfr@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_031040_706545_4498BFB3 
X-CRM114-Status: GOOD (  28.34  )
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

SGkgRG1pdHJ5LAoKQ0Mgc2ZyCgpPbiBUdWUsIEphbiAyMSwgMjAyNSBhdCAxMTo0NOKAr0FNIERt
aXRyeSBCYXJ5c2hrb3YKPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4gd3JvdGU6Cj4gT24g
VHVlLCAyMSBKYW4gMjAyNSBhdCAxMToxMywgR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51
eC1tNjhrLm9yZz4gd3JvdGU6Cj4gPiBPbiBUdWUsIEphbiA3LCAyMDI1IGF0IDEyOjMx4oCvUE0g
RG1pdHJ5IEJhcnlzaGtvdgo+ID4gPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4gd3JvdGU6
Cj4gPiA+IE9uIFNhdCwgMTQgRGVjIDIwMjQgMTU6Mzc6MDQgKzAyMDAsIERtaXRyeSBCYXJ5c2hr
b3Ygd3JvdGU6Cj4gPiA+ID4gV2hpbGUgd29ya2luZyBvbiB0aGUgZ2VuZXJpYyBtb2RlX3ZhbGlk
KCkgaW1wbGVtZW50YXRpb24gZm9yIHRoZSBIRE1JCj4gPiA+ID4gQ29ubmVjdG9yIGZyYW1ld29y
ayBJIG5vdGljZWQgdGhhdCB1bmxpa2Ugb3RoZXIgRFJNIG9iamVjdHMKPiA+ID4gPiBkcm1fY29u
bmVjdG9yIGFjY2VwdHMgbm9uLWNvbnN0IHBvaW50ZXIgdG8gc3RydWN0IGRybV9kaXNwbGF5X21v
ZGUsCj4gPiA+ID4gd2hpbGUgb2J2aW91c2x5IG1vZGVfdmFsaWQoKSBpc24ndCBleHBlY3RlZCB0
byBtb2RpZnkgdGhlIGFyZ3VtZW50Lgo+ID4gPiA+Cj4gPiA+ID4gTWFzcy1jaGFuZ2UgdGhlIERS
TSBmcmFtZXdvcmsgY29kZSB0byBwYXNzIGNvbnN0IGFyZ3VtZW50IHRvIHRoYXQKPiA+ID4gPiBj
YWxsYmFjay4KPiA+ID4gPgo+ID4gPiA+IFsuLi5dCj4gPiA+Cj4gPiA+IEFwcGxpZWQgdG8gZHJt
LW1pc2MtbmV4dCwgdGhhbmtzIQo+ID4gPgo+ID4gPiBbMS81XSBkcm0vZW5jb2Rlcl9zbGF2ZTog
bWFrZSBtb2RlX3ZhbGlkIGFjY2VwdCBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZQo+ID4g
PiAgICAgICBjb21taXQ6IDdhNWNkNDVmYWIwYTI2NzFhYTRlYTZkOGZiODBjZWEyNjgzODcxNzYK
PiA+ID4gWzIvNV0gZHJtL2FtZGdwdTogZG9uJ3QgY2hhbmdlIG1vZGUgaW4gYW1kZ3B1X2RtX2Nv
bm5lY3Rvcl9tb2RlX3ZhbGlkKCkKPiA+ID4gICAgICAgY29tbWl0OiBiMjU1Y2U0Mzg4ZTA5ZjE0
MzExZTc5MTJkMGNjZDQ1YTE0YTA4ZDY2Cj4gPiA+IFszLzVdIGRybS9zdGk6IGhkYTogcGFzcyBj
b25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSogdG8gaGRhX2dldF9tb2RlX2lkeCgpCj4gPiA+
ICAgICAgIGNvbW1pdDogNWYwMTFiNDQyMDA2Y2NiMjkwNDQyNjNkZjEwODQzZGU4MGZjMGIxNAo+
ID4gPiBbNC81XSBkcm0vY29ubmVjdG9yOiBtYWtlIG1vZGVfdmFsaWRfY3R4IHRha2UgYSBjb25z
dCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZQo+ID4gPiAgICAgICBjb21taXQ6IDY2ZGY5ZGViY2Iy
OWQxNDgwMjkxMmVkNzlhOWNmOWJhNzIxYjUxYTQKPiA+ID4gWzUvNV0gZHJtL2Nvbm5lY3Rvcjog
bWFrZSBtb2RlX3ZhbGlkIHRha2UgYSBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZQo+ID4g
PiAgICAgICBjb21taXQ6IDI2ZDZmZDgxOTE2ZTYyZDJiMDU2OGQ5NzU2ZTVmOWMzM2YwZjliN2EK
PiA+Cj4gPiBJIGNhbm5vdCBmaW5kIHRoZXNlIGluIGRybS1taXNjIG9yIGRybS1uZXh0LCBidXQg
dGhleSBhcmUgaW4gZHJtLXRpcD8KPgo+IFRoZXNlIGFyZSBpbiBkcm0tbWlzYy9kcm0tbWlzYy1u
ZXh0LCB0aGUgY29tbWl0IElEcyBhcmUgYSBwYXJ0IG9mIHRoZQo+IEdpdCBoaXN0b3J5Lgo+Cj4g
PiBUaGUgbGFzdCBvbmUgZHVlIHRvIGNvbW1pdCAyYmRjNzIxOTE3Y2YxNDFmICgiTWVyZ2UgcmVt
b3RlLXRyYWNraW5nCj4gPiBicmFuY2ggJ2RybS1taXNjL2RybS1taXNjLW5leHQnIGludG8gZHJt
LXRpcCIpLgo+ID4KPiA+IFdoYXQgYW0gSSBtaXNzaW5nPwo+ID4gVGhhbmtzIQo+Cj4gSXQgbWln
aHQgYmUgc29tZSBraW5kIG9mIG1pc2ludGVyYWN0aW9uIGJldHdlZW4gZHJtLW1pc2MtbmV4dCB2
cwo+IGRybS1taXNjLW5leHQtZml4ZXMgdnMgbWVyZ2Ugd2luZG93LiBMZXQgbWUgcmVjaGVjayBk
aW0gcmVidWlsZC10aXAuCgpJIGluZGVlZCBzZWUgdGhlIGNvbW1pdCBpbgpodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZHJtL21pc2Mva2VybmVsLy0vYmxvYi9kcm0tbWlzYy1uZXh0L2lu
Y2x1ZGUvZHJtL2RybV9tb2Rlc2V0X2hlbHBlcl92dGFibGVzLmg/cmVmX3R5cGU9aGVhZHMKCltk
aXZpbmcgZGVlcGVyXQoKU28gSSBtaXNzZWQgdGhlIGNoYW5nZSBmcm9tIHRoZSBmb3ItbGludXgt
bmV4dCB0byB0aGUgZHJtLW1pc2MtbmV4dApicmFuY2guICBIZW5jZSBJIGZldGNoZWQgb25seSB0
aGUgZm9ybWVyLCBhbmQgd2FzIHVzaW5nIGEgc3RhbGUKdmVyc2lvbiBvZiB0aGUgbGF0dGVyLgoK
QXBwYXJlbnRseSBTdGVwaGVuIGlzIGFsc28gdXNpbmcgdGhlIG9sZCBicmFuY2hlcyBmb3IgbGlu
dXgtbmV4dDoKCiAgICBkcm0tbWlzYy1maXhlcyBnaXQKaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2RybS9taXNjL2tlcm5lbC5naXQjZm9yLWxpbnV4LW5leHQtZml4ZXMKICAgIGRybS1t
aXNjIGdpdApodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL21pc2Mva2VybmVsLmdp
dCNmb3ItbGludXgtbmV4dAoKSSBiZWxpZXZlIHRoZSBsYXR0ZXIgc2hvdWxkIGJlIGRybS1taXNj
LW5leHQuClNob3VsZCB0aGUgZm9ybWVyIGJlIGRybS1taXNjLWZpeGVzIG9yIGRybS1taXNjLW5l
eHQtZml4ZXM/IE9yIGJvdGg/CgpUaGFua3MhCgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAg
ICAgICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3Mg
bG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVy
c29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYg
YSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkg
InByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
