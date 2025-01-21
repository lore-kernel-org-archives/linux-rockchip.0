Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E33FC87FD3
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 11:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AcP94Cyz+lbLilld+bC/TIw8nMYE4otLEmDRlV9AvEA=; b=yi81tSrYgSGHIE
	07WgUFQAo2Ch1mcv7aE6+uCrY4IrsV2d+2rXC3oR75Ec7ELIxzHdgPm9DWwxKJ7XCHiSt5/JwB5NH
	VSz+Qv7fvLATmapsC3PGN5wTMYFCJOBylQAMnKcimzTOXwNVPibcZIUAKt8zkrcRRxN2IZNZ/qP+D
	YNpLtQ/QNDS5N//Hphq9o/v0egTFCzm/XVlPLsPQD8qu8CE48eKYaA8dOEZDOUV084CakgWqKE/Ih
	oQDOaB5b3f/NlFo2jYLvCLIVOr187kwRPfUruHsiV5KhcOL8q/OXGcZvKzgjjyQHew4UI1h0juyTy
	43xL7Y2VDihOSyL2iXxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujcZe-0000000F2j4-3t34;
	Wed, 06 Aug 2025 11:44:50 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taBkO-00000007dSo-0iNz
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jan 2025 10:44:41 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-e549b0f8d57so9019558276.3
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jan 2025 02:44:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737456279; x=1738061079; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fM4RiAz8x0xBzhbf4AlSqIUYbrQ3SaJ7YEvWtIB73WA=;
        b=TlBYZozxeAWvcuYQlYs9BO3vdwNC/+u9EeSbOqmDwVekUFLje0QG8jKk0LOMnGDkn0
         Km/lhRiP5Y3sjBaj18y03fVHIqchw3tWsFKZVduR+1uQZqBY2gOHdadbr+JTPbVv52mN
         kohZfEeoB8hUZZvCfU7XBAejKpKE+++bgpPso2eiNcNaJRtkwJcjiTS6Ox1SZr56Dw0l
         z8vJKkyfr28eNwKEOf2Rq9OaMIuFwnXUY1lvjL3db3Jc0eiAJ8FzBw/BpU4p4W10Wgyg
         +QBTThp1Y6E/C9vpWhiMHxrGHvSOeiJsiyQ4Lvkl+dXFEAlZ8jQjbCnM29SC3GcWt6l4
         y42g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737456279; x=1738061079;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fM4RiAz8x0xBzhbf4AlSqIUYbrQ3SaJ7YEvWtIB73WA=;
        b=dYv2pKP9ZXGBJv/dsVhxsGLxNI3uKvVYqxxy+TBQAyLJCKoUXqwNy2z5WjlRFQUYAY
         q1NBrO0NGu0ecJAwG5i0gEvPjf2LVyWy5GVGmqS+1bYLFEt+MTAHLe7ydjKl5ufJfKVq
         cQmz6Kx3/r77s3jtjPL161IHX/DwbCpyl7cFwyvB9FgLfCno00wj1AY0/lZBsoW7slkf
         PW11D0Cge4UM0qJS5SVRHwLaGScF0vvjOuqc0qIhgGSIVzoPQQGaYxajrHhjudM8AEVv
         7iOPcM7EfFngFMJLRtjWLoQoS6LkZZXkSpMXoyagjs2cDNO/hcNf2Z43aE41vGDh0B1t
         tpDQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4iw0HkQ5bFa+g3EsJoX4/hVqxUY5W4oWFbq4x9VMmLCpABXZwTEUlJcGOI/vUgomwiXPqpaDhf1o7eQ1AUg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw03tk6VtvI3em5nDT4SWuJ79qmxvEuGtNvaSRnxwwk4uSYwpMi
	HUvsdELXTQrCI05JLZs2DkWC0wt4FBeRAr/XSKmRb5Meqiohkjt9iDtaZLRnAJrmNPaj7GOTl6G
	p3Ke+EcZ+a51QJqWvrPFqkKVw9jMREpr90m2mRA==
X-Gm-Gg: ASbGncseJqaihkgfz+vm9VZcV2dvCy/QDIb05fwrpGcYWs5OPiarkVsObg20D+SUq6T
	f6+9Cr8i3QGvqenmCYPnmRK7v12KcRqQnfuPhwIppLkRZblLPwap+73JQEOJyxeYeVQ==
X-Google-Smtp-Source: AGHT+IHO0V0jurSGd/L1Ymx0QNx/m/A6wTdCul+m+iz6FYx+lOCJoAuF4E4jOdjfH48/SXNUBM+6kJMlTjWcDWiw9yM=
X-Received: by 2002:a05:690c:3701:b0:6f6:d4bf:d01a with SMTP id
 00721157ae682-6f6eb940fb8mr129606697b3.34.1737456278815; Tue, 21 Jan 2025
 02:44:38 -0800 (PST)
MIME-Version: 1.0
References: <20241214-drm-connector-mode-valid-const-v2-0-4f9498a4c822@linaro.org>
 <173624946815.1500596.321177900833598022.b4-ty@linaro.org> <CAMuHMdVwcaY2Fgpf7GYhBrE5B+AEg=v0BH4OjMXgnp=wqjxmKg@mail.gmail.com>
In-Reply-To: <CAMuHMdVwcaY2Fgpf7GYhBrE5B+AEg=v0BH4OjMXgnp=wqjxmKg@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 Jan 2025 12:44:27 +0200
X-Gm-Features: AbW1kvabZ-in97OiEwfu0vjcyzelZUBMNUaWG-jd-XhigpbETlYrZDr4y_chW2I
Message-ID: <CAA8EJpos0HQpr9P4XRkto0Jy+Anf1xEH2xhEU8wtCyUQd+XwMg@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] drm/connector: make mode_valid() callback accept
 const mode pointer
To: Geert Uytterhoeven <geert@linux-m68k.org>
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
X-CRM114-CacheID: sfid-20250121_024440_211322_8C4637F3 
X-CRM114-Status: GOOD (  17.43  )
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

T24gVHVlLCAyMSBKYW4gMjAyNSBhdCAxMToxMywgR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBs
aW51eC1tNjhrLm9yZz4gd3JvdGU6Cj4KPiBIaSBEbWl0cnksCj4KPiBPbiBUdWUsIEphbiA3LCAy
MDI1IGF0IDEyOjMx4oCvUE0gRG1pdHJ5IEJhcnlzaGtvdgo+IDxkbWl0cnkuYmFyeXNoa292QGxp
bmFyby5vcmc+IHdyb3RlOgo+ID4gT24gU2F0LCAxNCBEZWMgMjAyNCAxNTozNzowNCArMDIwMCwg
RG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+ID4gV2hpbGUgd29ya2luZyBvbiB0aGUgZ2VuZXJp
YyBtb2RlX3ZhbGlkKCkgaW1wbGVtZW50YXRpb24gZm9yIHRoZSBIRE1JCj4gPiA+IENvbm5lY3Rv
ciBmcmFtZXdvcmsgSSBub3RpY2VkIHRoYXQgdW5saWtlIG90aGVyIERSTSBvYmplY3RzCj4gPiA+
IGRybV9jb25uZWN0b3IgYWNjZXB0cyBub24tY29uc3QgcG9pbnRlciB0byBzdHJ1Y3QgZHJtX2Rp
c3BsYXlfbW9kZSwKPiA+ID4gd2hpbGUgb2J2aW91c2x5IG1vZGVfdmFsaWQoKSBpc24ndCBleHBl
Y3RlZCB0byBtb2RpZnkgdGhlIGFyZ3VtZW50Lgo+ID4gPgo+ID4gPiBNYXNzLWNoYW5nZSB0aGUg
RFJNIGZyYW1ld29yayBjb2RlIHRvIHBhc3MgY29uc3QgYXJndW1lbnQgdG8gdGhhdAo+ID4gPiBj
YWxsYmFjay4KPiA+ID4KPiA+ID4gWy4uLl0KPiA+Cj4gPiBBcHBsaWVkIHRvIGRybS1taXNjLW5l
eHQsIHRoYW5rcyEKPiA+Cj4gPiBbMS81XSBkcm0vZW5jb2Rlcl9zbGF2ZTogbWFrZSBtb2RlX3Zh
bGlkIGFjY2VwdCBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZQo+ID4gICAgICAgY29tbWl0
OiA3YTVjZDQ1ZmFiMGEyNjcxYWE0ZWE2ZDhmYjgwY2VhMjY4Mzg3MTc2Cj4gPiBbMi81XSBkcm0v
YW1kZ3B1OiBkb24ndCBjaGFuZ2UgbW9kZSBpbiBhbWRncHVfZG1fY29ubmVjdG9yX21vZGVfdmFs
aWQoKQo+ID4gICAgICAgY29tbWl0OiBiMjU1Y2U0Mzg4ZTA5ZjE0MzExZTc5MTJkMGNjZDQ1YTE0
YTA4ZDY2Cj4gPiBbMy81XSBkcm0vc3RpOiBoZGE6IHBhc3MgY29uc3Qgc3RydWN0IGRybV9kaXNw
bGF5X21vZGUqIHRvIGhkYV9nZXRfbW9kZV9pZHgoKQo+ID4gICAgICAgY29tbWl0OiA1ZjAxMWI0
NDIwMDZjY2IyOTA0NDI2M2RmMTA4NDNkZTgwZmMwYjE0Cj4gPiBbNC81XSBkcm0vY29ubmVjdG9y
OiBtYWtlIG1vZGVfdmFsaWRfY3R4IHRha2UgYSBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9k
ZQo+ID4gICAgICAgY29tbWl0OiA2NmRmOWRlYmNiMjlkMTQ4MDI5MTJlZDc5YTljZjliYTcyMWI1
MWE0Cj4gPiBbNS81XSBkcm0vY29ubmVjdG9yOiBtYWtlIG1vZGVfdmFsaWQgdGFrZSBhIGNvbnN0
IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlCj4gPiAgICAgICBjb21taXQ6IDI2ZDZmZDgxOTE2ZTYy
ZDJiMDU2OGQ5NzU2ZTVmOWMzM2YwZjliN2EKPgo+IEkgY2Fubm90IGZpbmQgdGhlc2UgaW4gZHJt
LW1pc2Mgb3IgZHJtLW5leHQsIGJ1dCB0aGV5IGFyZSBpbiBkcm0tdGlwPwoKVGhlc2UgYXJlIGlu
IGRybS1taXNjL2RybS1taXNjLW5leHQsIHRoZSBjb21taXQgSURzIGFyZSBhIHBhcnQgb2YgdGhl
CkdpdCBoaXN0b3J5LgoKPiBUaGUgbGFzdCBvbmUgZHVlIHRvIGNvbW1pdCAyYmRjNzIxOTE3Y2Yx
NDFmICgiTWVyZ2UgcmVtb3RlLXRyYWNraW5nCj4gYnJhbmNoICdkcm0tbWlzYy9kcm0tbWlzYy1u
ZXh0JyBpbnRvIGRybS10aXAiKS4KPgo+IFdoYXQgYW0gSSBtaXNzaW5nPwo+IFRoYW5rcyEKCkl0
IG1pZ2h0IGJlIHNvbWUga2luZCBvZiBtaXNpbnRlcmFjdGlvbiBiZXR3ZWVuIGRybS1taXNjLW5l
eHQgdnMKZHJtLW1pc2MtbmV4dC1maXhlcyB2cyBtZXJnZSB3aW5kb3cuIExldCBtZSByZWNoZWNr
IGRpbSByZWJ1aWxkLXRpcC4KCj4KPiBQLlMuIFNpbWE6IG5vdGljZWQgd2hpbGUgcmVzb2x2aW5n
IGEgbWVyZ2UgY29uZmxpY3QgdXNpbmcgZHJtLXRpcC4gVGh4IQoKCi0tIApXaXRoIGJlc3Qgd2lz
aGVzCkRtaXRyeQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
