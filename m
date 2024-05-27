Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A7F0C25B74
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 09:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKNUkjdTd39ONLNMqKyAnVfJrFo5FugUvLVowoajsjo=; b=GFYnUODmjYuUl2
	Ny6mE6sWCwy1nY94n5Qv0Q8dhOXV3x16ly9XnLjON2oJrsj5z6hlRl/1hE5Z+WoQEpqjKx5G5fTBI
	5HwehweAqm6w83dEQVTbZtLcg5H+NauPPwZ5JYOOXz8OXWZYlt1aN5TckYil9mHp15lLMc0rEOJfv
	2y72wWX8fDBcHlr75rSRzS6brVSKcv2DQ4Ya9cNJt+xCzLcxYOIQ1sakF5x0YnpjhpHA0uA/tp9lg
	nyZf3TzZgLf03Y6dlBNvY3lO1pZV8NAUxpBuEdgmiHZBfg6AC0wuE3+k/PoimrR9kO2AJVbQtY80R
	0nW429DRBbLgeS6mzmfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWt4-0000000EU3u-0gwX;
	Mon, 27 May 2024 09:43:26 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWt0-0000000EU20-3vX5
	for linux-rockchip@lists.infradead.org;
	Mon, 27 May 2024 09:43:24 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5238fe0cfc9so4849658e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 27 May 2024 02:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716803000; x=1717407800; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0N7iqS/jW6psWnJVJQjJRax8oZv8fa2R262LhPDLB+4=;
        b=UUzwFZ7qCDPybv/vOZbSIkqdrKd6b3IWL5WFJK/1WLzfV76RyS3exTRXaYrvHTHpgW
         mKfU6xASwSYRv2OoDjc1DNAtHc6hmwswFMq9wLQ1Ne68xqvuljhFsbensiqFRkrDFrdC
         sV6GQymXj72nCS044h/wGbqmQSt1fIUn2DFqOsjlw1FK/V8iSobZyIVvmw/L8v32gopE
         lpk1ZZA/7maWqTFTLHd8+w8zsLMn2JQgAwPMvwWAOIOHe0LnOP70wGbRH8nI73cTy2kC
         1B1chR5jWGMnfjuBBijGQndFgUq6QinLQYIkbcGvV4qWRHaLD7Wd1alT6qwfsbLzzQMN
         FykQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716803000; x=1717407800;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0N7iqS/jW6psWnJVJQjJRax8oZv8fa2R262LhPDLB+4=;
        b=KoTioNprI5/bHGh+RO8G71TgBnbUARLcUKNJssT0iTccfipEUknXP9nUrrFGMhspKm
         5rC0Sdo+ojo84+uK88lWoc9L2LRS/6AhSuql4hppev93yfe0fRo2YT1cZhwdJp7dIOQo
         9u08T5n/pwiKRkWSIbEhcuILmMQ1M7UTrWNpvzzEF92SqMeXuINu7EzX7NwrBk+h+AUk
         F3r/Y9Jf3hUCYWDWyimlVnFCjfqvHJ3q1Zh6ClcCSKIf01eg8O6ricJIvtTWyHqlvLIf
         QOcbhWybJIU5WbD+0kq1DSe74/4XL+5qBMAxNEKHRvUtQfO6ZBGTPZ8mVhuEmK7lCHjT
         +UWw==
X-Forwarded-Encrypted: i=1; AJvYcCW9k4T0NnaHLthR0UUBleARKngs1qj0ukr41PSSFS/i4afLuFIG/PHEC5dtuB4+lRKdxUZBMEqlPwe9qsPdxFwsi04gQmGNfY2vQfY2rHXrU8G1
X-Gm-Message-State: AOJu0YzKfMlO2jMEbh8vs+Wwn/ebx2JM9LfqatmCY6SSOrgek05uLqlb
	Ror4JkHF6XVnQVEGRhuGHV3WYqT4AYDpGaN47e53tvwD8HJ9P0UNhPyUR3XlqL0=
X-Google-Smtp-Source: AGHT+IEiQ8C9Lceia0g8JujCBp7raFBHsn1Pi+Zhb5Y4D5nikSTHmLnkevBZXNf8N4rIWwJyGf6zsw==
X-Received: by 2002:a05:6512:3145:b0:520:ed4e:2206 with SMTP id 2adb3069b0e04-527ef9d9483mr3265363e87.17.1716803000505;
        Mon, 27 May 2024 02:43:20 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-529a7fb982esm230632e87.265.2024.05.27.02.43.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 02:43:20 -0700 (PDT)
Date: Mon, 27 May 2024 12:43:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick <sebastian.wick@redhat.com>, 
	Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, Pekka Paalanen <pekka.paalanen@collabora.com>
Subject: Re: [PATCH v14 17/28] drm/connector: hdmi: Add Broadcast RGB property
Message-ID: <a65wtf2hy7ufimkcgo5k2c34ygvtv7erwh567ngsnuaha7qiny@nl6lx67qsjuw>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-17-51950db4fedb@kernel.org>
 <4n55dbl2h275z5ubebigri4xjtjsvt44w62n656srdgndcav2j@rrq5haucqx5u>
 <20240527-adamant-just-spaniel-ebed4e@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240527-adamant-just-spaniel-ebed4e@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_024323_005119_25893C05 
X-CRM114-Status: GOOD (  29.88  )
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

T24gTW9uLCBNYXkgMjcsIDIwMjQgYXQgMTE6MDI6MTNBTSArMDIwMCwgTWF4aW1lIFJpcGFyZCB3
cm90ZToKPiBIaSwKPiAKPiBUaGFua3MgYWdhaW4gZm9yIHRoYXQgdGhvcm91Z2ggcmV2aWV3IDop
Cj4gCj4gT24gVGh1LCBNYXkgMjMsIDIwMjQgYXQgMDE6MjI6NTZQTSBHTVQsIERtaXRyeSBCYXJ5
c2hrb3Ygd3JvdGU6Cj4gPiBPbiBUdWUsIE1heSAyMSwgMjAyNCBhdCAxMjoxMzo1MFBNICswMjAw
LCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+ID4gPiBUaGUgaTkxNSBkcml2ZXIgaGFzIGEgcHJvcGVy
dHkgdG8gZm9yY2UgdGhlIFJHQiByYW5nZSBvZiBhbiBIRE1JIG91dHB1dC4KPiA+ID4gVGhlIHZj
NCBkcml2ZXIgdGhlbiBpbXBsZW1lbnRlZCB0aGUgc2FtZSBwcm9wZXJ0eSB3aXRoIHRoZSBzYW1l
Cj4gPiA+IHNlbWFudGljcy4gS1dpbiBoYXMgc3VwcG9ydCBmb3IgaXQsIGFuZCBhIFBSIGZvciBt
dXR0ZXIgaXMgYWxzbyB0aGVyZSB0bwo+ID4gPiBzdXBwb3J0IGl0Lgo+ID4gPiAKPiA+ID4gQm90
aCBkcml2ZXJzIGltcGxlbWVudGluZyB0aGUgc2FtZSBwcm9wZXJ0eSB3aXRoIHRoZSBzYW1lIHNl
bWFudGljcywKPiA+ID4gcGx1cyB0aGUgdXNlcnNwYWNlIGhhdmluZyBzdXBwb3J0IGZvciBpdCwg
aXMgcHJvb2YgZW5vdWdoIHRoYXQgaXQncwo+ID4gPiBwcmV0dHkgbXVjaCBhIGRlLWZhY3RvIHN0
YW5kYXJkIG5vdyBhbmQgd2UgY2FuIHByb3ZpZGUgaGVscGVycyBmb3IgaXQuCj4gPiA+IAo+ID4g
PiBMZXQncyBwbHVtYiBpdCBpbnRvIHRoZSBuZXdseSBjcmVhdGVkIEhETUkgY29ubmVjdG9yLgo+
ID4gPiAKPiA+ID4gUmV2aWV3ZWQtYnk6IERhdmUgU3RldmVuc29uIDxkYXZlLnN0ZXZlbnNvbkBy
YXNwYmVycnlwaS5jb20+Cj4gPiA+IEFja2VkLWJ5OiBQZWtrYSBQYWFsYW5lbiA8cGVra2EucGFh
bGFuZW5AY29sbGFib3JhLmNvbT4KPiA+ID4gUmV2aWV3ZWQtYnk6IFNlYmFzdGlhbiBXaWNrIDxz
ZWJhc3RpYW4ud2lja0ByZWRoYXQuY29tPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlw
YXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+Cj4gPiA+IC0tLQo+ID4gPiAgRG9jdW1lbnRhdGlvbi9n
cHUva21zLXByb3BlcnRpZXMuY3N2ICAgICAgICAgICAgfCAgMSAtCj4gPiA+ICBkcml2ZXJzL2dw
dS9kcm0vZGlzcGxheS9kcm1faGRtaV9zdGF0ZV9oZWxwZXIuYyB8ICA0ICstCj4gPiA+ICBkcml2
ZXJzL2dwdS9kcm0vZHJtX2F0b21pYy5jICAgICAgICAgICAgICAgICAgICB8ICAyICsKPiA+ID4g
IGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYyAgICAgICAgICAgICAgIHwgIDQgKysK
PiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMgICAgICAgICAgICAgICAgIHwg
ODggKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiAgaW5jbHVkZS9kcm0vZHJtX2Nvbm5l
Y3Rvci5oICAgICAgICAgICAgICAgICAgICAgfCAzNiArKysrKysrKysrCj4gPiA+ICA2IGZpbGVz
IGNoYW5nZWQsIDEzMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZ3B1L2ttcy1wcm9wZXJ0aWVzLmNzdiBiL0RvY3Vt
ZW50YXRpb24vZ3B1L2ttcy1wcm9wZXJ0aWVzLmNzdgo+ID4gPiBpbmRleCAwZjk1OTA4MzQ4Mjku
LmNhZWYxNGM1MzJkNCAxMDA2NDQKPiA+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9ncHUva21zLXBy
b3BlcnRpZXMuY3N2Cj4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZ3B1L2ttcy1wcm9wZXJ0aWVz
LmNzdgo+ID4gPiBAQCAtMTUsMTEgKzE1LDEwIEBAIE93bmVyIE1vZHVsZS9Ecml2ZXJzLEdyb3Vw
LFByb3BlcnR5IE5hbWUsVHlwZSxQcm9wZXJ0eSBWYWx1ZXMsT2JqZWN0IGF0dGFjaGVkLERlCj4g
PiA+ICAsLOKAnHNhdHVyYXRpb27igJ0sUkFOR0UsIk1pbj0wLCBNYXg9MTAwIixDb25uZWN0b3Is
VEJECj4gPiA+ICAsLOKAnGh1ZeKAnSxSQU5HRSwiTWluPTAsIE1heD0xMDAiLENvbm5lY3RvcixU
QkQKPiA+ID4gICxWaXJ0dWFsIEdQVSzigJxzdWdnZXN0ZWQgWOKAnSxSQU5HRSwiTWluPTAsIE1h
eD0weGZmZmZmZmZmIixDb25uZWN0b3IscHJvcGVydHkgdG8gc3VnZ2VzdCBhbiBYIG9mZnNldCBm
b3IgYSBjb25uZWN0b3IKPiA+ID4gICws4oCcc3VnZ2VzdGVkIFnigJ0sUkFOR0UsIk1pbj0wLCBN
YXg9MHhmZmZmZmZmZiIsQ29ubmVjdG9yLHByb3BlcnR5IHRvIHN1Z2dlc3QgYW4gWSBvZmZzZXQg
Zm9yIGEgY29ubmVjdG9yCj4gPiA+ICAsT3B0aW9uYWwsIiIiYXNwZWN0IHJhdGlvIiIiLEVOVU0s
InsgIiJOb25lIiIsICIiNDozIiIsICIiMTY6OSIiIH0iLENvbm5lY3RvcixUREIKPiA+ID4gLWk5
MTUsR2VuZXJpYywiIiJCcm9hZGNhc3QgUkdCIiIiLEVOVU0sInsgIiJBdXRvbWF0aWMiIiwgIiJG
dWxsIiIsICIiTGltaXRlZCAxNjoyMzUiIiB9IixDb25uZWN0b3IsIldoZW4gdGhpcyBwcm9wZXJ0
eSBpcyBzZXQgdG8gTGltaXRlZCAxNjoyMzUgYW5kIENUTSBpcyBzZXQsIHRoZSBoYXJkd2FyZSB3
aWxsIGJlIHByb2dyYW1tZWQgd2l0aCB0aGUgcmVzdWx0IG9mIHRoZSBtdWx0aXBsaWNhdGlvbiBv
ZiBDVE0gYnkgdGhlIGxpbWl0ZWQgcmFuZ2UgbWF0cml4IHRvIGVuc3VyZSB0aGUgcGl4ZWxzIG5v
cm1hbGx5IGluIHRoZSByYW5nZSAwLi4xLjAgYXJlIHJlbWFwcGVkIHRvIHRoZSByYW5nZSAxNi8y
NTUuLjIzNS8yNTUuIgo+ID4gCj4gPiBTaG91bGQgaXQgc3RpbGwgYmUgZGVmaW5lZCBhcyBhIGdl
bmVyaWMgcHJvcGVydHk/Cj4gCj4gSSdtIG5vdCBzdXJlIHdoYXQgeW91IG1lYW4gaGVyZSwgc29y
cnkuIEl0J3MgYmVpbmcgZG9jdW1lbnRlZCBhcyBhCj4gY29ubmVjdG9yIHByb3BlcnR5IG5vdywg
c28gaXQncyB2ZXJ5IG11Y2ggc3RpbGwgbGlzdGVkIGFzIGEgZ2VuZXJpYwo+IHByb3BlcnR5PwoK
SSBkaWRuJ3QgcGVyZm9ybSBteSBkdXR5IHdlbGwgZW5vdWdoIGFuZCBJIGRpZG4ndCBjaGVjayB0
aGUgZmlsZSBmb3IKb3RoZXIgaW5zdGFuY2VzIG9mIHRoZSBwcm9wZXJ0eS4gTm93IEkgaW5kZWVk
IHNlZSBhIGdlbmVyaWMgIkJyb2FkY2FzdApSR0IiIHByb3BlcnR5LCBidXQgdG8gbWUgaXQgbG9v
a3MgbGlrZSBoYXZpbmcgYSBkaWZmZXJlbnQgc2V0IG9mIHZhbHVlczoKCiwsIiIiQnJvYWRjYXN0
IFJHQiIiIixFTlVNLCJ7IOKAnG9mZuKAnSwg4oCcYXV0b+KAnSwg4oCcb27igJ0gfSIsQ29ubmVj
dG9yLFRCRAoKLS0gCldpdGggYmVzdCB3aXNoZXMKRG1pdHJ5CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
