Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B01B210A88E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Mar 2026 16:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hqXNja9/6giDH/mORrJmK2ZnjA6bSiCmwDzDIc2a9C0=; b=TDXeD0ZFIU8atA
	nlQ/HQ4p78kEBexyfjrRuqtPoc/ew1KNBKVPT0knDYfmiUM9JH7d0Uyt1KiVY2bXsjfoFWKBJSIBQ
	tB9wM6zny+1uYwlVA29ukoHPa4IkdIV5o7dPv8oAWuckpoD2nOZ2BwCI6iinm0EjtL9IcNz7KryVp
	2hzCB5QPVktzacRSmhrNJmmbt6IkqYRdBJ0OMKitJuoLYRa0wxhsHp67u7+BkDmOmtYzt6gkQXIuw
	KABznHKU+e2/mCl8OLa7CKDFu2PzX59LBj+1NI9kldQLmSHe2gE8a9KslYCHokhu7d07YvR7iEsUa
	geiMsGwV4RwBmrsoj9nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5nlL-00000005sA5-45fc;
	Thu, 26 Mar 2026 16:40:51 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5nlG-00000005s96-0y2X
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Mar 2026 16:40:50 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-89a6ac6f389so13198056d6.3
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Mar 2026 09:40:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774543244; cv=none;
        d=google.com; s=arc-20240605;
        b=jJalloAxACTKzzT19cBq3x8vDWXz8U7MrftVR2+H+AlCtY4rqNOUa2H54V9azCa61E
         wpKAOYB1Y6L0pbsH347iXFViFTspvhLoceGz2MEbGH0AiZugcgma/Z7fu6PJGT2igki5
         0d4MCsi4UUXEuxp+TCPvuN3zijVUkFX5QNDbL0B+Vn8rsasO+poBeTJsGp3aKl4BX1nb
         AVn9DKvdL3YFzeLldPy/xHRRkxSUjGtH8y1Xoft+FXZFh7QMBTS/nKaprDKPU7yyumi7
         lZDgrTbN1Nch2xNCRnJVmlXwzpLYz0LkcBmNcgvff2PNtaNKlED7JuBf6HpPTyf+z9DP
         QIZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=lMVh41/flJhHXUmskY74HI0cHDnV8XVUzcIyI3Tc5Ws=;
        fh=240bcCUUsISDc1LHaGmXvyRsw82EX+ZFhIaoAgnWDBU=;
        b=F8hlvLGQA4P9HnNcDTUF+Wuqv4WpZLvpRdTqGz5xknYMAzXVYjdiPA4cBfjW3kksPO
         mVwDLcL4phqUEsKJRd4nwQSd6MfbgpuGaiHI0HeR+buX/tjgYQAkXKEJA3Ir2CXf+OLI
         F4Ob1ttoxzemIL9cXduNWjrSoyCwrPstwNyAaQ2eHuggM1YHLMYFFk6U84/+Zel0mVrS
         znUCQUn6yQWXBi7c3EwpLkSPTiQQt024kxWjmWGhBKW3iL8xEi9/oDl8jgM95vTs7P+r
         vuXkOMiENYBUUyb4eDHgbv4FxxRu6Uwn/JMPNO/zRp3YgxtzH1mWNY/PfFu8H91BT5mL
         osDQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1774543244; x=1775148044; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lMVh41/flJhHXUmskY74HI0cHDnV8XVUzcIyI3Tc5Ws=;
        b=iFpUMb78QsLonjyihYc43FNXsn0Qh7MMcvk9MTxEFreeQZbjBF80f+q16wZcbBw+iA
         sKxs9ClYmfGuJrswmDI91+MDV0XnLRShvOYaaTNBBO2rnh3Ut5H83Rq5uHIZPP7BjWcw
         Ma89VNIXVRLtg0K4i8nX5YgBaAdk4IGoaD35BKoj6PmCiHVp5YrZ9R+mZHdvlbJ88RYX
         jRsKXkkRL4r7WZa2kYd7gHS8B1/i6dXW9XBfkKAtRUDIxYKYUmvSHyNWDc8gjtoOe5I+
         v68e91On4vbWG0lbNPm0s2X8g4puCEnn76G06m7S3Z23V06fUxu9g9BZT6bTmueB2nL4
         hc7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774543244; x=1775148044;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lMVh41/flJhHXUmskY74HI0cHDnV8XVUzcIyI3Tc5Ws=;
        b=WmgOYMkxrPAHE2JyIavYFGO9qwho6USeg7WIxfrqIwcDzD3jFRiWr8E1XD+PYHay37
         dxuydLNeR8tT6V9CsrVXNJ2HenyRJ5zzNVgsBtDGO186oyjjLuFsD/COcsCSq42crQW3
         avBCz42MV8ChBM89wQb0H8eRVtHpN4pnp32dzKH+kIqhQbNBp7DrnHO3nggJ7TP28Lwl
         NepVZSD2199+vPqPIoDuSiA9kDaKlonukfBB7cf/VankpekgLEUx47J7/9WlyMtGLZP7
         q9FuvRVaKrAO8tZRgsj3Sb1smRqbha6NUE+g+rj/aa74vM45gt00qHfrFzO1yr5//5lu
         Y3ag==
X-Forwarded-Encrypted: i=1; AJvYcCVUYOc/ay9IMxTKmBEXGZLej/M0OrzlFhSfszoUs3VmDNBnvyd9PVIlu9hBkBGgPsQi2B1AnxOxHl3HAedLVQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxnbAwf0zrUdIEJQdvjZWOc1+b0X7T+SimK9uU4aQx4RSGPL75H
	PqHlCwgqFhk4UFZDx8B4+gsepoSlC0lu5ykDT6oAPHlYr9PZO2oxpZDs82TdBaiO0GZXrYXWqbr
	LyYptNA8iJjzLLUdwjut4PSpqtlVmWLt+XIDJbLZ3ig==
X-Gm-Gg: ATEYQzz6TweFcY6b6hnJoDh67CgSEygV34hZwg7sjreAWfu99jNAcNLzB1YE0fC6fl1
	WV5rJ0FIw9gGw8yImznAMdUGefx/xqfpzr8OkiklOLfCakCSWCkVeIGKf6REfiSZS98FSrVDlD0
	IxBdJumeMoFvL+SVhnWT1RlEabfQUNR9n3uxR1Y+MOoi+sjdkJ1jn657r4EaZ5uMX0eznzjM84B
	poZt+vccwF73nrGv2vYluwBFqjepBut5rJt0NeZLOqAaSh27yQmF4hq3Vt4HGyfNc4t9GT5S3Js
	vo6NJvY=
X-Received: by 2002:a05:6214:d6f:b0:89c:866d:15c9 with SMTP id
 6a1803df08f44-89cc4b07bc2mr122325186d6.56.1774543244239; Thu, 26 Mar 2026
 09:40:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260325-neat-elegant-raven-ebc9ab@houat> <acPA60Ci3n_t__xF@intel.com> <3979783.tdWV9SEqCh@workhorse>
In-Reply-To: <3979783.tdWV9SEqCh@workhorse>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 26 Mar 2026 16:40:32 +0000
X-Gm-Features: AQROBzB2J1rLcK9oOY95uN7pO5Y8iJWro7kBrTyJSKQV06IZlwAC79afqJRLPi8
Message-ID: <CAPj87rMpu-ZL45_uNPcZe3gu8Eqn2ALp3r0zRgghvT08-6RGVg@mail.gmail.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color format"
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Maxime Ripard <mripard@kernel.org>, =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
	Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
	Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com, 
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org, 
	intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org, 
	Werner Sembach <wse@tuxedocomputers.com>, Andri Yngvason <andri@yngvason.is>, 
	Marius Vlad <marius.vlad@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_094046_357557_A187230E 
X-CRM114-Status: GOOD (  29.00  )
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

SGkgdGhlcmUsCgpPbiBUaHUsIDI2IE1hciAyMDI2IGF0IDEyOjQ0LCBOaWNvbGFzIEZyYXR0YXJv
bGkKPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPiB3cm90ZToKPiBPbiBXZWRuZXNk
YXksIDI1IE1hcmNoIDIwMjYgMTI6MDM6MDcgQ2VudHJhbCBFdXJvcGVhbiBTdGFuZGFyZCBUaW1l
IFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiA+IEJ1dCBJJ20gbm90IHJlYWxseSBjb25jZXJuZWQg
YWJvdXQgZG9jdW1lbnRpbmcgc3RydWN0IG1lbWJlcnMuCj4gPiBXaGF0IEknbSB0YWxraW5nIGFi
b3V0IGlzIHRoZSAqdWFwaSogZG9jcy4gU3VyZWx5IHVzZXJzcGFjZQo+ID4gd2lsbCB3YW50IHRv
IGtub3cgd2hhdCB0aGUgbmV3IHByb3BlcnR5IGFjdHVhbGx5IGRvZXMgc28gdGhlCj4gPiB1YXBp
IG5lZWRzIHRvIGJlIGRvY3VtZW50ZWQgcHJvcGVybHkuIEFuZCBkb3duIHRoZSBsaW5lIHNvbWUK
PiA+IG5ldyBkcml2ZXIgbWlnaHQgYWxzbyBpbXBsZW1lbnQgdGhlIHdyb25nIGJlaGF2aW91ciBp
ZiB0aGVyZQo+ID4gaXMgbm8gY2xlYXIgc3BlY2lmaWNhdGlvbi4KPiA+Cj4gPiBTbyBJJ20gdGhp
bmtpbmcgKG9yIHBlcmhhcHMgaG9waW5nKSB0aGUgcnVsZSBtaWdodCBiZSBzb21ldGhpbmcgbGlr
ZToKPiA+IC0gWUNiQ3IgbGltaXRlZCByYW5nZQo+ID4gLSBSR0IgZnVsbCByYW5nZSBpZiAiQnJv
YWRjYXN0IFJHQiIgcHJvcGVydHkgaXMgbm90IHByZXNlbnQKPiA+IC0gUkdCIGZ1bGwgb3IgbGlt
aXRlZCByYW5nZSBiYXNlZCBvbiB0aGUgIkJyb2FkY2FzdCBSR0IiIHByb3BlcnR5Cj4gPiAgIGlm
IGl0J3MgcHJlc2VudAo+ID4KPiA+IEkgdGhpbmsgdGhlICJCcm9hZGNhc3QgUkdCIiBwcm9wZXJ0
eSBpdHNlbGYgbWlnaHQgYWxzbyBiZSBsYWNraW5nCj4gPiBwcm9wZXIgdWFwaSBkb2NzLCBzbyB0
aGF0IG1heSBuZWVkIHRvIGJlIHJlbWVkaWVkIGFzIHdlbGwuCj4KPiBBbHJpZ2h0LCBzbyBpbiB2
MTIgSSdsbCBkbyB0aGUgZm9sbG93aW5nOgo+Cj4gLSBBZGQgYSBsaW5lIHRvIGFsbCBZQ0JDUiBj
b25uZWN0b3IgZm9ybWF0cyB0aGF0IHNwZWNpZmllcyB0aGV5J3JlCj4gICBsaW1pdGVkIHJhbmdl
IGFzIGxvbmcgYXMgQnJvYWRjYXN0IFJHQiBpcyBsaW1pdGVkLiBXaGV0aGVyIGl0J3MgbGltaXRl
ZAo+ICAgcmFuZ2Ugd2hlbiBCcm9hZGNhc3QgUkdCIGlzIGZ1bGwgaXMgcHVycG9zZWZ1bGx5IGxl
ZnQgdW5kZWZpbmVkLgo+ICAgSW4gdGhlIGZ1dHVyZSwgd2UgY2FuIGV4cGFuZCB0aGlzIHRvIHN0
YXRlIHRoZXkncmUgbGltaXRlZCByYW5nZSBieQo+ICAgZGVmYXVsdCB1bmxlc3Mgc29tZSBvdGhl
ciBwcm9wZXJ0eSBpcyBzZXQuIElmIHdlJ3JlIG5vdCByZS11c2luZwo+ICAgQnJvYWRjYXN0IFJH
QiBmb3IgdGhhdCwgdGhpcyB3aWxsIHdvcmsgb3V0IGZpbmUsIGJlY2F1c2UgdXNlcnMgd2hvCj4g
ICBkb24ndCBrbm93IGFib3V0IHRoZSBldmVudHVhbCBuZXcgcHJvcGVydHkgd29uJ3QgaGF2ZSB0
aGlzIGJlaGF2aW91cgo+ICAgY2hhbmdlZC4gSWYgd2UgZG8gcmUtdXNlICJCcm9hZGNhc3QgUkdC
IiBmb3IgdGhhdCwgdGhlbiBvbmx5IHVzZXJzCj4gICByZWx5aW5nIG9uIHRoaW5ncyB3ZSBleHBs
aWNpdGx5IGxlZnQgdW5kZWZpbmVkIHdpbGwgZ2V0IHN1cnByaXNlCj4gICBmdWxsIHJhbmdlIFlD
QkNSLgo+IC0gQWRkIGEgbGluZSB0byB0aGUgUkdCIGNvbm5lY3RvciBmb3JtYXQgdGhhdCBzcGVj
aWZpZXMgaXRzIHJhbmdlCj4gICBkZXBlbmRzIG9uIHRoZSAiQnJvYWRjYXN0IFJHQiIgcHJvcGVy
dHkKPgo+IFRoaXMgaXMgYSBiaXQgb2YgYSBtZXNzLCBiZWNhdXNlIGl0J3MgZW50aXJlbHkgcmVh
c29uYWJsZSB0aGF0IGEKPiBmdXR1cmUgWUNCQ1IgcmFuZ2UgcHJvcGVydHkgd291bGQgd2FudCB0
byBkZWZhdWx0IHRvIGZ1bGwgcmFuZ2UKPiBzbyB0aGF0IHVzZXJzIGdldCB0aGUgbW9zdCBjb2xv
ciBvdXQgb2YgdGhlaXIgbW9uaXRvcnMuIEJ1dCB3aXRoCj4gdGhpcyBkZXNjcmlwdGlvbiBvZiB0
aGUgY29ubmVjdG9yIGNvbG9yIGZvcm1hdHMsIHdlIGNhbid0IGRvIHRoYXQuCj4KPiBJZiB0aGVy
ZSBhcmUgYWx0ZXJuYXRlIHN1Z2dlc3Rpb25zLCBJJ20gb3BlbiBmb3IgdGhlbS4gV2UgY2FuJ3QK
PiByZWFsbHkgcmVuYW1lICJCcm9hZGNhc3QgUkdCIiBidXQgaWYgSSBoYWQgYSB0aW1lIG1hY2hp
bmUsIHRoYXQnZAo+IGJlIG15IGZpcnN0IGNob2ljZS4KCidCcm9hZGNhc3QgUkdCJyBpc24ndCB3
aGF0IHlvdSB3YW50IGV2ZW4gaWYgaXQgY291bGQgaGFuZGxlIFlVViwgc2luY2UKaXQgYWxzbyBz
ZXRzIHVwIGNvbG91ciB0cmFuc2Zvcm1zIHRvIG1vZGlmeSB0aGUgZGF0YSAuLi4gc28gd2UgbmVl
ZCBhCnNlcGFyYXRlLCBvcnRob2dvbmFsLCBwcm9wZXJ0eSB3aGljaCBvbmx5IGFmZmVjdHMgdGhl
IEhETUkgaW5mb2ZyYW1lLApyYXRoZXIgdGhhbiBhcHBseWluZyBhbnkgdHJhbnNmb3Jtcy4KCkNo
ZWVycywKRGFuaWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
