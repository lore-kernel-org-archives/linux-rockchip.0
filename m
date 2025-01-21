Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48727C87FCB
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 11:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1h+xBZrMuMGbQnym79dycXWzEj7Uh/S1ApCEqDW7Eng=; b=eUv+WsaD7KsUVm
	Kyw94o8GnCgxUZKFgAkzGjshRF+XgP8OkYA1WNLmqeiZV9GxJtPm/lVRCPB/JEvUFfyAawyP97zfe
	5TgIOhenwujy6LjrEYvHuOTp9GLQPfcnqTj+tgoKmQVOUfQT0hWE1lg0EORBuqzDhbCDb/o4hwcRq
	eQZkkB2ExnBkidYc6Lhn8DV43HP/ItkdN+ZNFo3DKFUa0P5GNUk5fjwW4hrLx2w2tktUaQp3faY2j
	HyxftzEvpftSDMcHh3ZtgL6gZxU+UqTI78YmYqzT+LpdbLIBoPtdmLQkYffnDjrB/AJM9+zzRV7+8
	Otn+hJ16bHzsr1x11P4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujcZf-0000000F2jN-1ET7;
	Wed, 06 Aug 2025 11:44:51 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taCKD-00000007juF-3xdL
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jan 2025 11:21:43 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-30613802a6bso58424431fa.1
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jan 2025 03:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737458500; x=1738063300; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ccl7pK+fGoMwVya6mvoYHjlRDfdrE2si7QnLrLuVzrA=;
        b=D5NYmCHcw9RHZJxK3onQ4wkxxb+x99O50F1cJF0BdlAosBcfbzhCPswQXPFn1kuA1p
         5d5v9NTYcZo2WnXG+iC60uWzGW5AV70OLDrcnrl+sVkhYpGnDGRZ7k93QbxbGi/MAvQ+
         gvNXemHbXLKWcbShS7ooZW/s/anTZvMwwdSh8xjdO0bGrgikRHUOA0xWYr3bCYcg2ceC
         ykBwxGJuy1lWyTYdjvanlK581mPVrroJnb/hDK8UOQmNtAwJN/Chd7iRi2+rp50tzisO
         ZskO5Gm4GjiipzyFJ1rTGp49HfLT4VRfVbNx9i3cEQgV2+5wG1DrjSxwEoUJFm6fgNkG
         KP+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737458500; x=1738063300;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ccl7pK+fGoMwVya6mvoYHjlRDfdrE2si7QnLrLuVzrA=;
        b=LLmUe3l0oGrsuKHE6PFd/tEV6s7n/voKgNfrG9nwS+YPMY2Wk88VSvEoe0NOUOtIKk
         K7jwpMmHd5vOkvC9+WU5aIXItPODK0Uc6JleS06xB6PlZ+e6yjqaLCmlzO+YSRN4Bqa2
         tB5pcCsdlv6YH1KaacHrQMBGHU1UT6fbsy7FKe19akhx4jQclp2kQ7e++4GvesZ0yS7U
         klGZb2JJd66BoJsQw5LYFDA3qH3sFxYzfiC0j5JTU6hy5r/bvmSGHj9ISuRHq+rtMrZz
         TdQwi3u5uxvGXScUt/CBPSAWXUs/7eWUibeyNUZpNHumr3LtMkvrTBbD7fMZVZyxsCjv
         j3Xw==
X-Forwarded-Encrypted: i=1; AJvYcCWtZu3qAvey80xfeQ1cnt43SS5XH33GayOQulSUtA1mE6Itjgp6AdKP8X8tFHAB4KRc0n/DyqkHAQci5B0luw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyUWoFPUCuT77qlWXGpIgnhL3eW3gROom/PXvkHfIhg9dijUX3G
	uB76flAc75tRo4kwU7+KKtnFZcWCJJIBcLHJc/AX/+2oAL3qzk836t/RWC7hj08=
X-Gm-Gg: ASbGncsc4NoEhC/o9/oQeJclEPC0dgHOPyYQVCkenmu/+B0Cvt46jCeXBSU/AzzCMsr
	CYFRr8Ggkkd8yTWPHBsGEDnVEXe2B6VwrY/ww+zKH+yeaCmj0MQPjtm41YrRyLcOz0LUC57wKAb
	qU8RdqqFGB+e5EjgbOK/SAchzrFAELPEhdnml+Cw1J9LB+ep3EJTIJMOn4qz0LJoExFv2UEBQ8v
	aTU5OirhFzzYkxRektEz1f8FT2Qo4o84cIj9H8FhbpQU64JDCfrZPAOuLEdpwrvotqdkfsze2Us
	aLHsUJaGzCN5+MxJf1NYI43GhQo4ifawRcph1BRi4TS/dGN+oA==
X-Google-Smtp-Source: AGHT+IFYzzED8Wa2HZSUyJkmbJmRc7n+A/fvnsoklQLIV99y/1uEpOedpIlkjVzotwOAh8lDtCA/PA==
X-Received: by 2002:a05:651c:b2a:b0:300:7f87:a65 with SMTP id 38308e7fff4ca-3072cb1f9b0mr65240811fa.35.1737458499868;
        Tue, 21 Jan 2025 03:21:39 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3072a51825fsm20633711fa.111.2025.01.21.03.21.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 03:21:38 -0800 (PST)
Date: Tue, 21 Jan 2025 13:21:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
	Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, 
	Danilo Krummrich <dakr@redhat.com>, Harry Wentland <harry.wentland@amd.com>, 
	Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, 
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
	Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>, 
	Samuel Holland <samuel@sholland.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Gurchetan Singh <gurchetansingh@chromium.org>, 
	Chia-I Wu <olvaffe@gmail.com>, Zack Rusin <zack.rusin@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, imx@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	freedreno@lists.freedesktop.org, virtualization@lists.linux.dev, 
	spice-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Jani Nikula <jani.nikula@intel.com>, Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH v2 0/5] drm/connector: make mode_valid() callback accept
 const mode pointer
Message-ID: <ak4cz6v6rjguh4jgacyu2mcfh5igtb7qwhvbvdcnfjc5hraloi@d7dwxc7v5gbo>
References: <20241214-drm-connector-mode-valid-const-v2-0-4f9498a4c822@linaro.org>
 <173624946815.1500596.321177900833598022.b4-ty@linaro.org>
 <CAMuHMdVwcaY2Fgpf7GYhBrE5B+AEg=v0BH4OjMXgnp=wqjxmKg@mail.gmail.com>
 <CAA8EJpos0HQpr9P4XRkto0Jy+Anf1xEH2xhEU8wtCyUQd+XwMg@mail.gmail.com>
 <CAMuHMdW-9F9aypY_XeU3y=dn3AAxjFrZO+H+=hbMF7nGrTLAQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdW-9F9aypY_XeU3y=dn3AAxjFrZO+H+=hbMF7nGrTLAQQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_032141_988263_B5C44923 
X-CRM114-Status: GOOD (  28.28  )
X-Mailman-Approved-At: Wed, 06 Aug 2025 03:42:56 -0700
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

T24gVHVlLCBKYW4gMjEsIDIwMjUgYXQgMTI6MTA6MjVQTSArMDEwMCwgR2VlcnQgVXl0dGVyaG9l
dmVuIHdyb3RlOgo+IEhpIERtaXRyeSwKPiAKPiBDQyBzZnIKPiAKPiBPbiBUdWUsIEphbiAyMSwg
MjAyNSBhdCAxMTo0NOKAr0FNIERtaXRyeSBCYXJ5c2hrb3YKPiA8ZG1pdHJ5LmJhcnlzaGtvdkBs
aW5hcm8ub3JnPiB3cm90ZToKPiA+IE9uIFR1ZSwgMjEgSmFuIDIwMjUgYXQgMTE6MTMsIEdlZXJ0
IFV5dHRlcmhvZXZlbiA8Z2VlcnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+ID4gPiBPbiBUdWUs
IEphbiA3LCAyMDI1IGF0IDEyOjMx4oCvUE0gRG1pdHJ5IEJhcnlzaGtvdgo+ID4gPiA8ZG1pdHJ5
LmJhcnlzaGtvdkBsaW5hcm8ub3JnPiB3cm90ZToKPiA+ID4gPiBPbiBTYXQsIDE0IERlYyAyMDI0
IDE1OjM3OjA0ICswMjAwLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gPiA+ID4gV2hpbGUg
d29ya2luZyBvbiB0aGUgZ2VuZXJpYyBtb2RlX3ZhbGlkKCkgaW1wbGVtZW50YXRpb24gZm9yIHRo
ZSBIRE1JCj4gPiA+ID4gPiBDb25uZWN0b3IgZnJhbWV3b3JrIEkgbm90aWNlZCB0aGF0IHVubGlr
ZSBvdGhlciBEUk0gb2JqZWN0cwo+ID4gPiA+ID4gZHJtX2Nvbm5lY3RvciBhY2NlcHRzIG5vbi1j
b25zdCBwb2ludGVyIHRvIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlLAo+ID4gPiA+ID4gd2hpbGUg
b2J2aW91c2x5IG1vZGVfdmFsaWQoKSBpc24ndCBleHBlY3RlZCB0byBtb2RpZnkgdGhlIGFyZ3Vt
ZW50Lgo+ID4gPiA+ID4KPiA+ID4gPiA+IE1hc3MtY2hhbmdlIHRoZSBEUk0gZnJhbWV3b3JrIGNv
ZGUgdG8gcGFzcyBjb25zdCBhcmd1bWVudCB0byB0aGF0Cj4gPiA+ID4gPiBjYWxsYmFjay4KPiA+
ID4gPiA+Cj4gPiA+ID4gPiBbLi4uXQo+ID4gPiA+Cj4gPiA+ID4gQXBwbGllZCB0byBkcm0tbWlz
Yy1uZXh0LCB0aGFua3MhCj4gPiA+ID4KPiA+ID4gPiBbMS81XSBkcm0vZW5jb2Rlcl9zbGF2ZTog
bWFrZSBtb2RlX3ZhbGlkIGFjY2VwdCBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZQo+ID4g
PiA+ICAgICAgIGNvbW1pdDogN2E1Y2Q0NWZhYjBhMjY3MWFhNGVhNmQ4ZmI4MGNlYTI2ODM4NzE3
Ngo+ID4gPiA+IFsyLzVdIGRybS9hbWRncHU6IGRvbid0IGNoYW5nZSBtb2RlIGluIGFtZGdwdV9k
bV9jb25uZWN0b3JfbW9kZV92YWxpZCgpCj4gPiA+ID4gICAgICAgY29tbWl0OiBiMjU1Y2U0Mzg4
ZTA5ZjE0MzExZTc5MTJkMGNjZDQ1YTE0YTA4ZDY2Cj4gPiA+ID4gWzMvNV0gZHJtL3N0aTogaGRh
OiBwYXNzIGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlKiB0byBoZGFfZ2V0X21vZGVfaWR4
KCkKPiA+ID4gPiAgICAgICBjb21taXQ6IDVmMDExYjQ0MjAwNmNjYjI5MDQ0MjYzZGYxMDg0M2Rl
ODBmYzBiMTQKPiA+ID4gPiBbNC81XSBkcm0vY29ubmVjdG9yOiBtYWtlIG1vZGVfdmFsaWRfY3R4
IHRha2UgYSBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZQo+ID4gPiA+ICAgICAgIGNvbW1p
dDogNjZkZjlkZWJjYjI5ZDE0ODAyOTEyZWQ3OWE5Y2Y5YmE3MjFiNTFhNAo+ID4gPiA+IFs1LzVd
IGRybS9jb25uZWN0b3I6IG1ha2UgbW9kZV92YWxpZCB0YWtlIGEgY29uc3Qgc3RydWN0IGRybV9k
aXNwbGF5X21vZGUKPiA+ID4gPiAgICAgICBjb21taXQ6IDI2ZDZmZDgxOTE2ZTYyZDJiMDU2OGQ5
NzU2ZTVmOWMzM2YwZjliN2EKPiA+ID4KPiA+ID4gSSBjYW5ub3QgZmluZCB0aGVzZSBpbiBkcm0t
bWlzYyBvciBkcm0tbmV4dCwgYnV0IHRoZXkgYXJlIGluIGRybS10aXA/Cj4gPgo+ID4gVGhlc2Ug
YXJlIGluIGRybS1taXNjL2RybS1taXNjLW5leHQsIHRoZSBjb21taXQgSURzIGFyZSBhIHBhcnQg
b2YgdGhlCj4gPiBHaXQgaGlzdG9yeS4KPiA+Cj4gPiA+IFRoZSBsYXN0IG9uZSBkdWUgdG8gY29t
bWl0IDJiZGM3MjE5MTdjZjE0MWYgKCJNZXJnZSByZW1vdGUtdHJhY2tpbmcKPiA+ID4gYnJhbmNo
ICdkcm0tbWlzYy9kcm0tbWlzYy1uZXh0JyBpbnRvIGRybS10aXAiKS4KPiA+ID4KPiA+ID4gV2hh
dCBhbSBJIG1pc3Npbmc/Cj4gPiA+IFRoYW5rcyEKPiA+Cj4gPiBJdCBtaWdodCBiZSBzb21lIGtp
bmQgb2YgbWlzaW50ZXJhY3Rpb24gYmV0d2VlbiBkcm0tbWlzYy1uZXh0IHZzCj4gPiBkcm0tbWlz
Yy1uZXh0LWZpeGVzIHZzIG1lcmdlIHdpbmRvdy4gTGV0IG1lIHJlY2hlY2sgZGltIHJlYnVpbGQt
dGlwLgo+IAo+IEkgaW5kZWVkIHNlZSB0aGUgY29tbWl0IGluCj4gaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9taXNjL2tlcm5lbC8tL2Jsb2IvZHJtLW1pc2MtbmV4dC9pbmNsdWRl
L2RybS9kcm1fbW9kZXNldF9oZWxwZXJfdnRhYmxlcy5oP3JlZl90eXBlPWhlYWRzCj4gCj4gW2Rp
dmluZyBkZWVwZXJdCj4gCj4gU28gSSBtaXNzZWQgdGhlIGNoYW5nZSBmcm9tIHRoZSBmb3ItbGlu
dXgtbmV4dCB0byB0aGUgZHJtLW1pc2MtbmV4dAo+IGJyYW5jaC4gIEhlbmNlIEkgZmV0Y2hlZCBv
bmx5IHRoZSBmb3JtZXIsIGFuZCB3YXMgdXNpbmcgYSBzdGFsZQo+IHZlcnNpb24gb2YgdGhlIGxh
dHRlci4KPiAKPiBBcHBhcmVudGx5IFN0ZXBoZW4gaXMgYWxzbyB1c2luZyB0aGUgb2xkIGJyYW5j
aGVzIGZvciBsaW51eC1uZXh0Ogo+IAo+ICAgICBkcm0tbWlzYy1maXhlcyBnaXQKPiBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL21pc2Mva2VybmVsLmdpdCNmb3ItbGludXgtbmV4
dC1maXhlcwo+ICAgICBkcm0tbWlzYyBnaXQKPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL21pc2Mva2VybmVsLmdpdCNmb3ItbGludXgtbmV4dAo+IAo+IEkgYmVsaWV2ZSB0aGUg
bGF0dGVyIHNob3VsZCBiZSBkcm0tbWlzYy1uZXh0Lgo+IFNob3VsZCB0aGUgZm9ybWVyIGJlIGRy
bS1taXNjLWZpeGVzIG9yIGRybS1taXNjLW5leHQtZml4ZXM/IE9yIGJvdGg/CgpOby4gQm90aCBi
cmFuY2hlcyBhcmUgY29ycmVjdC4gVGhpcyBpcyBob3cgdGhlIGRybS1taXNjIHRyZWUgbWFuYWdl
ZApkZXZlbG9wbWVudCBwcm9jZXNzOiBkdXJpbmcgdGhlIG1lcmdlIHdpbmRvdyAoYW5kIHNldmVy
YWwgcHJlY2VlZGluZwp3ZWVrcykgdGhlIGRybS1taXNjLW5leHQgYnJhbmNoIGlzIG9wZW4gZm9y
IHRoZSBjb21taXRzLiBIb3dldmVyIHRob3NlCmNvbW1pdHMgYXJlIG5vdCB0YXJnZXRlZCB0aGUg
Zm9ydGhjb21pbmcgLXJjMS4gVGh1cyB0aGUgZm9yLWxpbnV4LW5leHQKYnJhbmNoIGlzIGRpdmVy
dGVkIHRvIHBvaW50IHRvIGRybS1taXNjLW5leHQtZml4ZXMuIFRoaXMgaXMgYWxsIGJlaW5nIGJ5
CnRoZSBkaW0gdG9vbC4KClJlc3BlY3RpdmUgbW9kZV92YWxpZCBjaGFuZ2VzIHdlcmUgYXBwbGll
ZCB0b28gbGF0ZSBpbiB0aGUgY3ljbGUsIHNvCnRoZXkgYXJlIG5vdCBnb2luZyB0byBsYW5kIGlu
dG8gNi4xNC1yYzEgKGFuZCBhcmUgbm90IGEgcGFydCBvZiB0aGUKZm9yLWxpbnV4LW5leHQgYnJh
bmNoKS4gT25jZSA2LjE0LXJjMSBpcyByZWxlYXNlZCBhbmQgd2Ugc3RhcnQgd29ya2luZwp0b3dh
cmRzIDYuMTUsIGZvci1saW51eC1uZXh0IHdpbGwgYWdhaW4gcG9pbnQgdG8gZHJtLW1pc2MtbmV4
dC4KCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
