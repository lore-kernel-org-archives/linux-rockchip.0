Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36802C25B74
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 19:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KgXJ3QZV9oEhUzVcE9mgnbHJa74QB+5s3v43TzANX6I=; b=1PL/OnLEzkSOzv
	/6RLQwnoaQL70TImvAwY4E2K5iRwg2ld8zYV0j//EbNzU19EQawt0RJXafT9iRD61uw/TvAMrF/Br
	Q4XmavLPywN3INbOZRNBEvHHRgMxx2qP8/JsoHs9utudSCmsAggdDSHt4Ea0QLLCS8Y2kTKm9nZM/
	wgA9Kjhogg2kj6qDqFtZ7ap/BWX2ahi9LO0zIM0h5Rv5sHp9gRKMLzdhPP5u0PYLNjM73OC+9Dne7
	EXcOK5XuPbURys1HCwsSupYaTScTCKSLyXKylsdiXxLbxTRNP13aWeswR8zRziaGA6ySvFZPgM7EJ
	vgxqrfK0V++pK/3DLRow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBfaZ-0000000G796-20F5;
	Mon, 27 May 2024 19:00:55 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBfaV-0000000G76r-0vBF
	for linux-rockchip@lists.infradead.org;
	Mon, 27 May 2024 19:00:53 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-df457d734abso68132276.0
        for <linux-rockchip@lists.infradead.org>; Mon, 27 May 2024 12:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716836448; x=1717441248; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Ja7vlfEqAriKa+FwY5Dmg/udaegLnmPF1+eRGrrskg=;
        b=GJakX58z+XeUGblB49K9WNUi+QDakX+Ha3KPq8FZJDy0kI3TR9fLJ4+8jL2gRKPf7R
         L7luLgkzGKK/qCm4Co0ffdf0Y9OO5ZRAA1tVik/rVea2H3JWCb78oHcMfitbR1vYVuet
         mhCH3uXbZimpU5EsgKopUB884VbVAIV2w+4rUppIvU1iR1eRF5XZntVgUpZh1fLBlyuH
         2NT0Kwguu8ANwa4UkRmKIl8Js36Qdj/Lvfz7mvqxWOHcYiNJXIZx5Nqn0ub13WfhLPTz
         uXrXSYmGilViPA+S439k7+36FLpWsHn62PukHARhUBG8qnNMRk++2/MhsjJNCL9Zsj0o
         cB9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716836448; x=1717441248;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Ja7vlfEqAriKa+FwY5Dmg/udaegLnmPF1+eRGrrskg=;
        b=mo+vszhuxqBuJQls4IbOxgMv3uNWfq32bJbwF3JSjhiANiCOpN36Q0v1saKqwV7PIG
         yAF1FmAsV04La4WpjcM8Njj91e6qQoo1ti/NDmFtr18Rn7wysBRYXLOXqd+8qxbqONjq
         NtSIH30nmX2q3OEPPQQp7XdM3h2z/Ztl8IA9UlrMviUHF6g1JwiwosqWY46nLsDfbg+b
         ONsN7lotM0HBAFgT1NI2Wxkc94TKAY3+uKU7U4xWRncL+KXxqyAgidJMI6NX3DyjyegY
         bA6kaUw/W8v6BfoCatEN/ELFq+S/3QW2QxgDJtnw77m9cjwdqzZ2CzD/SbzJ3HSTvtCo
         nGPw==
X-Forwarded-Encrypted: i=1; AJvYcCWs50ssnhrYwj5cEf1xTP557bMtxPfZALT3nv6TbnQnNIBQPq4Ja104yGeTYH6x1ULfSU3MB91aKHegoU7YhfdKfDm+f4DKrT0U3pmRpvPmaOsy
X-Gm-Message-State: AOJu0YyFZyKvcvqkl1R68jR6c8Y3x9+crIuW27opMLSJ0Wond9KLGiQX
	joINhFmR5WzU9z10V7bgxudbNChrDvsEvvOO47dzpOQzhSDrrEzd/ZwziOHiduuJ2djHhOSXwjC
	V20M113Nltj7gtg3kzmyhhXxm+tuP/IK8e10wAw==
X-Google-Smtp-Source: AGHT+IFCtPi34MiO9HbMkpVChKlNZ5PYokKGNe1Zkm5+YriPlaD5ppmt2yv+lpMdcC4aRafyvtA23o5zBngE0l9ui5s=
X-Received: by 2002:a25:86c7:0:b0:df7:94d3:5555 with SMTP id
 3f1490d57ef6-df794d357fcmr5601696276.41.1716836447989; Mon, 27 May 2024
 12:00:47 -0700 (PDT)
MIME-Version: 1.0
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-17-51950db4fedb@kernel.org>
 <4n55dbl2h275z5ubebigri4xjtjsvt44w62n656srdgndcav2j@rrq5haucqx5u>
 <20240527-adamant-just-spaniel-ebed4e@houat> <a65wtf2hy7ufimkcgo5k2c34ygvtv7erwh567ngsnuaha7qiny@nl6lx67qsjuw>
 <20240527-colorful-orange-bug-bbeefe@houat>
In-Reply-To: <20240527-colorful-orange-bug-bbeefe@houat>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 27 May 2024 22:00:36 +0300
Message-ID: <CAA8EJpre5u_tD7VVnHwcjzJEV=9X_0Z+U==+gJGQBz6ie8FzFA@mail.gmail.com>
Subject: Re: [PATCH v14 17/28] drm/connector: hdmi: Add Broadcast RGB property
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick <sebastian.wick@redhat.com>, 
	=?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	Pekka Paalanen <pekka.paalanen@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_120051_331928_664CE5EB 
X-CRM114-Status: GOOD (  34.22  )
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

T24gTW9uLCAyNyBNYXkgMjAyNCBhdCAxNjozMCwgTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gTW9uLCBNYXkgMjcsIDIwMjQgYXQgMTI6NDM6
MThQTSBHTVQsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPiBPbiBNb24sIE1heSAyNywgMjAy
NCBhdCAxMTowMjoxM0FNICswMjAwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+ID4gPiBIaSwKPiA+
ID4KPiA+ID4gVGhhbmtzIGFnYWluIGZvciB0aGF0IHRob3JvdWdoIHJldmlldyA6KQo+ID4gPgo+
ID4gPiBPbiBUaHUsIE1heSAyMywgMjAyNCBhdCAwMToyMjo1NlBNIEdNVCwgRG1pdHJ5IEJhcnlz
aGtvdiB3cm90ZToKPiA+ID4gPiBPbiBUdWUsIE1heSAyMSwgMjAyNCBhdCAxMjoxMzo1MFBNICsw
MjAwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+ID4gPiA+ID4gVGhlIGk5MTUgZHJpdmVyIGhhcyBh
IHByb3BlcnR5IHRvIGZvcmNlIHRoZSBSR0IgcmFuZ2Ugb2YgYW4gSERNSSBvdXRwdXQuCj4gPiA+
ID4gPiBUaGUgdmM0IGRyaXZlciB0aGVuIGltcGxlbWVudGVkIHRoZSBzYW1lIHByb3BlcnR5IHdp
dGggdGhlIHNhbWUKPiA+ID4gPiA+IHNlbWFudGljcy4gS1dpbiBoYXMgc3VwcG9ydCBmb3IgaXQs
IGFuZCBhIFBSIGZvciBtdXR0ZXIgaXMgYWxzbyB0aGVyZSB0bwo+ID4gPiA+ID4gc3VwcG9ydCBp
dC4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBCb3RoIGRyaXZlcnMgaW1wbGVtZW50aW5nIHRoZSBzYW1l
IHByb3BlcnR5IHdpdGggdGhlIHNhbWUgc2VtYW50aWNzLAo+ID4gPiA+ID4gcGx1cyB0aGUgdXNl
cnNwYWNlIGhhdmluZyBzdXBwb3J0IGZvciBpdCwgaXMgcHJvb2YgZW5vdWdoIHRoYXQgaXQncwo+
ID4gPiA+ID4gcHJldHR5IG11Y2ggYSBkZS1mYWN0byBzdGFuZGFyZCBub3cgYW5kIHdlIGNhbiBw
cm92aWRlIGhlbHBlcnMgZm9yIGl0Lgo+ID4gPiA+ID4KPiA+ID4gPiA+IExldCdzIHBsdW1iIGl0
IGludG8gdGhlIG5ld2x5IGNyZWF0ZWQgSERNSSBjb25uZWN0b3IuCj4gPiA+ID4gPgo+ID4gPiA+
ID4gUmV2aWV3ZWQtYnk6IERhdmUgU3RldmVuc29uIDxkYXZlLnN0ZXZlbnNvbkByYXNwYmVycnlw
aS5jb20+Cj4gPiA+ID4gPiBBY2tlZC1ieTogUGVra2EgUGFhbGFuZW4gPHBla2thLnBhYWxhbmVu
QGNvbGxhYm9yYS5jb20+Cj4gPiA+ID4gPiBSZXZpZXdlZC1ieTogU2ViYXN0aWFuIFdpY2sgPHNl
YmFzdGlhbi53aWNrQHJlZGhhdC5jb20+Cj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUg
UmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICBEb2N1
bWVudGF0aW9uL2dwdS9rbXMtcHJvcGVydGllcy5jc3YgICAgICAgICAgICB8ICAxIC0KPiA+ID4g
PiA+ICBkcml2ZXJzL2dwdS9kcm0vZGlzcGxheS9kcm1faGRtaV9zdGF0ZV9oZWxwZXIuYyB8ICA0
ICstCj4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWMuYyAgICAgICAgICAgICAg
ICAgICAgfCAgMiArCj4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfdWFwaS5j
ICAgICAgICAgICAgICAgfCAgNCArKwo+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fY29u
bmVjdG9yLmMgICAgICAgICAgICAgICAgIHwgODggKysrKysrKysrKysrKysrKysrKysrKysrKwo+
ID4gPiA+ID4gIGluY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaCAgICAgICAgICAgICAgICAgICAg
IHwgMzYgKysrKysrKysrKwo+ID4gPiA+ID4gIDYgZmlsZXMgY2hhbmdlZCwgMTMzIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+ID4gPgo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZ3B1L2ttcy1wcm9wZXJ0aWVzLmNzdiBiL0RvY3VtZW50YXRpb24vZ3B1L2tt
cy1wcm9wZXJ0aWVzLmNzdgo+ID4gPiA+ID4gaW5kZXggMGY5NTkwODM0ODI5Li5jYWVmMTRjNTMy
ZDQgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2dwdS9rbXMtcHJvcGVydGll
cy5jc3YKPiA+ID4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZ3B1L2ttcy1wcm9wZXJ0aWVzLmNz
dgo+ID4gPiA+ID4gQEAgLTE1LDExICsxNSwxMCBAQCBPd25lciBNb2R1bGUvRHJpdmVycyxHcm91
cCxQcm9wZXJ0eSBOYW1lLFR5cGUsUHJvcGVydHkgVmFsdWVzLE9iamVjdCBhdHRhY2hlZCxEZQo+
ID4gPiA+ID4gICws4oCcc2F0dXJhdGlvbuKAnSxSQU5HRSwiTWluPTAsIE1heD0xMDAiLENvbm5l
Y3RvcixUQkQKPiA+ID4gPiA+ICAsLOKAnGh1ZeKAnSxSQU5HRSwiTWluPTAsIE1heD0xMDAiLENv
bm5lY3RvcixUQkQKPiA+ID4gPiA+ICAsVmlydHVhbCBHUFUs4oCcc3VnZ2VzdGVkIFjigJ0sUkFO
R0UsIk1pbj0wLCBNYXg9MHhmZmZmZmZmZiIsQ29ubmVjdG9yLHByb3BlcnR5IHRvIHN1Z2dlc3Qg
YW4gWCBvZmZzZXQgZm9yIGEgY29ubmVjdG9yCj4gPiA+ID4gPiAgLCzigJxzdWdnZXN0ZWQgWeKA
nSxSQU5HRSwiTWluPTAsIE1heD0weGZmZmZmZmZmIixDb25uZWN0b3IscHJvcGVydHkgdG8gc3Vn
Z2VzdCBhbiBZIG9mZnNldCBmb3IgYSBjb25uZWN0b3IKPiA+ID4gPiA+ICAsT3B0aW9uYWwsIiIi
YXNwZWN0IHJhdGlvIiIiLEVOVU0sInsgIiJOb25lIiIsICIiNDozIiIsICIiMTY6OSIiIH0iLENv
bm5lY3RvcixUREIKPiA+ID4gPiA+IC1pOTE1LEdlbmVyaWMsIiIiQnJvYWRjYXN0IFJHQiIiIixF
TlVNLCJ7ICIiQXV0b21hdGljIiIsICIiRnVsbCIiLCAiIkxpbWl0ZWQgMTY6MjM1IiIgfSIsQ29u
bmVjdG9yLCJXaGVuIHRoaXMgcHJvcGVydHkgaXMgc2V0IHRvIExpbWl0ZWQgMTY6MjM1IGFuZCBD
VE0gaXMgc2V0LCB0aGUgaGFyZHdhcmUgd2lsbCBiZSBwcm9ncmFtbWVkIHdpdGggdGhlIHJlc3Vs
dCBvZiB0aGUgbXVsdGlwbGljYXRpb24gb2YgQ1RNIGJ5IHRoZSBsaW1pdGVkIHJhbmdlIG1hdHJp
eCB0byBlbnN1cmUgdGhlIHBpeGVscyBub3JtYWxseSBpbiB0aGUgcmFuZ2UgMC4uMS4wIGFyZSBy
ZW1hcHBlZCB0byB0aGUgcmFuZ2UgMTYvMjU1Li4yMzUvMjU1LiIKPiA+ID4gPgo+ID4gPiA+IFNo
b3VsZCBpdCBzdGlsbCBiZSBkZWZpbmVkIGFzIGEgZ2VuZXJpYyBwcm9wZXJ0eT8KPiA+ID4KPiA+
ID4gSSdtIG5vdCBzdXJlIHdoYXQgeW91IG1lYW4gaGVyZSwgc29ycnkuIEl0J3MgYmVpbmcgZG9j
dW1lbnRlZCBhcyBhCj4gPiA+IGNvbm5lY3RvciBwcm9wZXJ0eSBub3csIHNvIGl0J3MgdmVyeSBt
dWNoIHN0aWxsIGxpc3RlZCBhcyBhIGdlbmVyaWMKPiA+ID4gcHJvcGVydHk/Cj4gPgo+ID4gSSBk
aWRuJ3QgcGVyZm9ybSBteSBkdXR5IHdlbGwgZW5vdWdoIGFuZCBJIGRpZG4ndCBjaGVjayB0aGUg
ZmlsZSBmb3IKPiA+IG90aGVyIGluc3RhbmNlcyBvZiB0aGUgcHJvcGVydHkuIE5vdyBJIGluZGVl
ZCBzZWUgYSBnZW5lcmljICJCcm9hZGNhc3QKPiA+IFJHQiIgcHJvcGVydHksIGJ1dCB0byBtZSBp
dCBsb29rcyBsaWtlIGhhdmluZyBhIGRpZmZlcmVudCBzZXQgb2YgdmFsdWVzOgo+ID4KPiA+ICws
IiIiQnJvYWRjYXN0IFJHQiIiIixFTlVNLCJ7IOKAnG9mZuKAnSwg4oCcYXV0b+KAnSwg4oCcb27i
gJ0gfSIsQ29ubmVjdG9yLFRCRAo+Cj4gVGhhdCdzIG5vdCByZWFsbHkgd2hhdCBJIG1lYW50OiB0
aGF0IGZpbGUgaXMgZGVwcmVjYXRlZCBub3cgYW5kIGl0J3Mgbm90Cj4gd2hlcmUgd2UgZG9jdW1l
bnQgdGhlIHByb3BlcnRpZXMgYW55bW9yZS4gVGhpcyBwYXRjaCBoYXMgaW1wcm92ZWQgdGhhdAo+
IGRvY3VtZW50YXRpb24gYW5kIG1vdmVkIGl0IHRvIHRoZSBuZXcgcGxhY2UsIGFuZCByZW1vdmVk
IHRoZSBkZXByZWNhdGVkCj4gcGFydC4KPgo+IEhvd2V2ZXIsIHRoaXMgbGluZSBzaG91bGRuJ3Qg
YmUgdGhlcmUgYXQgYWxsLiBJJ2xsIGFkZCBhIHBhdGNoIHRvIHJlbW92ZQo+IGl0LgoKU0cKCj4K
PiBUaGFua3MhCj4gTWF4aW1lCgoKCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
