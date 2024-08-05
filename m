Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2159BC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 16:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFNR8VFAzTWwy2RKPApqZeB0dhQrUcdgWG8SXJzesQc=; b=3MOc05Rl9wjvbh
	Oi1gn35iZw/fpDeqLwlhwi9XTr+w1Qnoj046dQJPFfyzzzm46vr7TjWzmncNXEaL1z2oZOHddDIcE
	M5ij9QvA5zrK1FrIRo5Dvmi91/QN/yEweBytclgWun+Ii8x1SlSrRAq2dPoF2wanZO+3WtFPX3o2Z
	jzcI4sV36SkpLosc168tuiOjHVtZJl1kcqDJrKecYfiTuABKe4X/3GlsIwFhhHVTP9QWTv0SjW/XC
	01BW9AZN4GQACEhLq94RieIaFL4JCeAt74K6sXYte0uKx3Dgjxo6A6sSSci83v4kfBrn0Y5/fPHWs
	2qRUjtWQ9w96yzvAKfsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0SG-0000000GU4u-2GRc;
	Mon, 05 Aug 2024 16:21:04 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0Rj-0000000GTsx-06gi;
	Mon, 05 Aug 2024 16:20:32 +0000
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-3db1d0fca58so6832293b6e.3;
        Mon, 05 Aug 2024 09:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722874829; x=1723479629; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:subject:cc:to:from:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=o/2gcRJhRF+q0oumC+8pyXKRI+ru5NZw7+q3z+G4VQE=;
        b=kQqT+vzDIxZ6e74QTVmOzqQndUYYYha0dl6OxrhXs2e9qZPdYnv2JW7XMUCOrRxe5p
         OR7yBshzwfvwVeQ9WlQqccfOYxSX6sjb4tc40uBkOKhe0JSIub8jsuSaw1BL/EJkctNv
         mV+7d8mX8DK8Cm9ISygQocSPN00y3Z0+LnExBDzVFw4HTtu/xkRPVQN7AxeIO/PDq9qB
         59WYu5lCc2bqyonczjb4CnwVCdZRwM/Cjx/YUGU480LtZ2qYEJH/CHFgp9hfYz9SxxeU
         n7J+QAQH08yNe4k+PQsPYkXJX7BbiXKdIZ8or6G5eCK52hOMGKdN3cobtOqFbjr49bIy
         XkTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722874829; x=1723479629;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:subject:cc:to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o/2gcRJhRF+q0oumC+8pyXKRI+ru5NZw7+q3z+G4VQE=;
        b=foDLc+Dm5Kw8jJWS3nUhdU2QCHBUFkXIQsqdPbDHHLcBmoklLoaVtP90OrBaPewvL2
         1E6FRMt6hKxgGj+Tq0tlmmt1omeN7iOV1aoDP4imnPUTrdTDLmriV7n5eSsClVqUYvzK
         EUsFkO/oBYSragiPmbkBZl39kDjWLulhC1mRVN5WZ+zTr1hVka83UXHWx4Tek5VtZynD
         LMxtIf9Te5IJgURwRlc7LIm6cOSdvbk/4HWD0gaYrQzk33aWq4U/+KQ5iAFtOl04bIdD
         +9HXk8Wbla9H51OFJpnTiV6GXL86zFydfrC+WxyVk5RRkzyPzsuexzTBxNtdazW4cYZr
         pMCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUs+aN5iwDE9tTpZucFEAWQNvZ0l5h+nV4co+B93iyBf5jOzY26UBzNZU243Ktj6OpnquJ8uW/sn5tcyMp9pSujy4Cky3JNMou8GTwcU4sO7PI+695Gu9b9dmcpN5/sOAYjBTPmtjFEpPbzrdsfZiv8aSpuwPVklVE=
X-Gm-Message-State: AOJu0Yz1gGTOEsQObyj76QdVHXD0GuoAMitMxF4M1QgtYGktasGM46J4
	oQvdpwCgRx6LA74GaqC/qzBzq0pyfk4BBzSsSvLWt5TaRov0UZFU
X-Google-Smtp-Source: AGHT+IGhrdCiVzHF4+sgL6JEIeJjR99KHrosaGVM3KVKN0FUNCYWFamuinYDjmTd4Ylqq3yvu2brxQ==
X-Received: by 2002:a05:6808:1b2b:b0:3db:22aa:f565 with SMTP id 5614622812f47-3db558095ccmr16759128b6e.11.1722874829090;
        Mon, 05 Aug 2024 09:20:29 -0700 (PDT)
Received: from neuromancer. ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3db5637b487sm2728598b6e.29.2024.08.05.09.20.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 09:20:28 -0700 (PDT)
Message-ID: <66b0fbcc.050a0220.30fac7.71ce@mx.google.com>
X-Google-Original-Message-ID: <ZrD7y/cmGjV3Kpax@neuromancer.>
Date: Mon, 5 Aug 2024 11:20:27 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: Re: [PATCH v2 0/3] Add initial support for the Rockchip RK3588 HDMI
 TX Controller
References: <20240801-b4-rk3588-bridge-upstream-v2-0-9fa657a4e15b@collabora.com>
 <45B07EAF-4CBA-4DE4-A03B-109767D52B29@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45B07EAF-4CBA-4DE4-A03B-109767D52B29@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_092031_090154_1E21B468 
X-CRM114-Status: GOOD (  41.73  )
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
Cc: Algea Cao <algea.cao@rock-chips.com>, Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>, dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Luis de Arquer <ldearquer@gmail.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, Jonas Karlman <jonas@kwiboo.se>, Sascha Hauer <s.hauer@pengutronix.de>, Alexandre ARNOUD <aarnoud@me.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Mark Yao <markyao0591@gmail.com>, linux-arm-kernel@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU2F0LCBBdWcgMDMsIDIwMjQgYXQgMDM6MjQ6MDZQTSArMDIwMCwgUGlvdHIgT25pc3pjenVr
IHdyb3RlOgo+IEhpIENyaXN0aWFuLAo+IAo+IFdpbGwgeW91IGZpbmQgc29tZSB0aW1lIGFuZCBt
b3RpdmF0aW9uIHRvIGFkZCBDRUMgc3VwcG9ydCB0byBRdWFkLVBpeGVsIChRUCkgVFggY29udHJv
bGxlciA/Cj4gCj4gUHJvYmFibHkgeW91IHJlY2FsbCAtIEkgYWRkZWQgaW5pdGlhbCBDRUMgc3Vw
cG9ydCB0byB5b3VycyB2MSBzZXJpZXMgYW5kIGnigJltIHN0dWNrIHdpdGggdGltaW5nIGlzc3Vl
IChjZWMgcHVsc2VzIGFyZSAzeCB0b28gbG9uZykuCj4gRm9yIG1lIGl0IGxvb2tzIGxpa2UgY2xv
Y2sgaXNzdWUuCj4gSeKAmW0gb3V0IG9mIGlkZWFzIGhvdyB0byBtb3ZlIGZvcndhcmQgd2l0aCB0
aGlzIHRpbW1pbmcgaXNzdWXigKYuCgpJIHdvbmRlciBpZiB1c2luZyB0aGUgY2VjLWdwaW8gb24g
IkdQSU80IFJLX1BDMSIgZm9yIHRoZSBDRUMgZ3BpbyBhbmQKIkdQSU8xIFJLX1BBNSIgZm9yIHRo
ZSBIUEQgZ3BpbyBpcyBhIHBvc3NpYmlsaXR5PyBKdXN0IGEgdGhvdWdodC4KCkNocmlzCgo+ICAK
PiAKPiAKPiA+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IENyaXN0aWFuIENpb2NhbHRlYSA8
Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+IHcgZG5pdSAwMS4wOC4yMDI0LCBvIGdv
ZHouIDA0OjI1Ogo+ID4gCj4gPiBUaGUgUm9ja2NoaXAgUkszNTg4IFNvQyBmYW1pbHkgaW50ZWdy
YXRlcyB0aGUgU3lub3BzeXMgRGVzaWduV2FyZSBIRE1JCj4gPiAyLjEgUXVhZC1QaXhlbCAoUVAp
IFRYIGNvbnRyb2xsZXIgWzRdLCB3aGljaCBpcyBhIG5ldyBJUCBibG9jaywgcXVpdGUKPiA+IGRp
ZmZlcmVudCBmcm9tIHRob3NlIHVzZWQgaW4gdGhlIHByZXZpb3VzIGdlbmVyYXRpb25zIG9mIFJv
Y2tjaGlwIFNvQ3MuCj4gPiAKPiA+IFRoaXMgaXMgdGhlIGxhc3QgY29tcG9uZW50IHRoYXQgbmVl
ZHMgdG8gYmUgc3VwcG9ydGVkIGluIG9yZGVyIHRvIGVuYWJsZQo+ID4gdGhlIEhETUkgb3V0cHV0
IGZ1bmN0aW9uYWxpdHkgb24gdGhlIFJLMzU4OCBiYXNlZCBTQkNzLCBzdWNoIGFzIHRoZQo+ID4g
UkFEWEEgUm9jayA1Qi4gVGhlIG90aGVyIGNvbXBvbmVudHMgYXJlIHRoZSBWaWRlbyBPdXRwdXQg
UHJvY2Vzc29yCj4gPiAoVk9QMikgYW5kIHRoZSBTYW1zdW5nIElQIGJhc2VkIEhETUkvZURQIFRY
IENvbWJvIFBIWSwgZm9yIHdoaWNoIGJhc2ljCj4gPiBzdXBwb3J0IGhhcyBiZWVuIGFscmVhZHkg
bWFkZSBhdmFpbGFibGUgdmlhIFsxXSBhbmQgWzJdLCByZXNwZWN0aXZlbHkuCj4gPiAKPiA+IFBs
ZWFzZSBub3RlIHRoaXMgaXMgYSByZXdvcmtlZCB2ZXJzaW9uIG9mIHRoZSBvcmlnaW5hbCBzZXJp
ZXMsIHdoaWNoCj4gPiByZWxpZWQgb24gYSBjb21tb25pemVkIGR3LWhkbWkgYXBwcm9hY2guICBT
aW5jZSB0aGUgZ2VuZXJhbCBjb25zZW5zdXMKPiA+IHdhcyB0byBoYW5kbGUgaXQgYXMgYW4gZW50
aXJlbHkgbmV3IElQLCBJIGRyb3BwZWQgYWxsIHBhdGNoZXMgcmVsYXRlZCB0bwo+ID4gdGhlIG9s
ZCBkdy1oZG1pIGFuZCBSb2NrY2hpcCBnbHVlIGNvZGUgLSBhIGZldyBvZiB0aGVtIG1pZ2h0IHN0
aWxsIG1ha2UKPiA+IHNlbnNlIGFzIGdlbmVyYWwgaW1wcm92ZW1lbnRzIGFuZCB3aWxsIGJlIHN1
Ym1pdHRlZCBzZXBhcmF0ZWx5Lgo+ID4gCj4gPiBBZGRpdGlvbmFsbHksIGFzIHN1Z2dlc3RlZCBi
eSBOZWlsLCBJJ3ZlIHNlbnQgdGhlIHJld29ya2VkIGJyaWRnZSBkcml2ZXIKPiA+IGFzIGEgc2Vw
YXJhdGUgcGF0Y2hzZXQgWzRdLCBoZW5jZSB0aGlzIHNlcmllcyBoYW5kbGVzIG5vdyBqdXN0IHRo
ZSBuZXcKPiA+IFJvY2tjaGlwIFFQIHBsYXRmb3JtIGRyaXZlci4KPiA+IAo+ID4gSXQncyB3b3J0
aCBtZW50aW9uaW5nIHRoZSBIRE1JIG91dHB1dCBzdXBwb3J0IGlzIGN1cnJlbnRseSBsaW1pdGVk
IHRvCj4gPiBSR0Igb3V0cHV0IHVwIHRvIDRLQDYwSHosIHdpdGhvdXQgYXVkaW8sIENFQyBvciBh
bnkgb2YgdGhlIEhETUkgMi4xCj4gPiBzcGVjaWZpYyBmZWF0dXJlcy4gIE1vcmVvdmVyLCB0aGUg
Vk9QMiBkcml2ZXIgaXMgbm90IGFibGUgdG8gcHJvcGVybHkKPiA+IGhhbmRsZSBhbGwgZGlzcGxh
eSBtb2RlcyBzdXBwb3J0ZWQgYnkgdGhlIGNvbm5lY3RlZCBzY3JlZW5zLCBlLmcuIGl0Cj4gPiBk
b2Vzbid0IGNvcGUgd2l0aCBub24taW50ZWdlciByZWZyZXNoIHJhdGVzLgo+ID4gCj4gPiBBIHBv
c3NpYmxlIHdvcmthcm91bmQgY29uc2lzdHMgb2YgZW5hYmxpbmcgdGhlIGRpc3BsYXkgY29udHJv
bGxlciB0bwo+ID4gbWFrZSB1c2Ugb2YgdGhlIGNsb2NrIHByb3ZpZGVkIGJ5IHRoZSBIRE1JIFBI
WSBQTEwuIFRoaXMgaXMgc3RpbGwgd29yawo+ID4gaW4gcHJvZ3Jlc3MgYW5kIHdpbGwgYmUgc3Vi
bWl0dGVkIGxhdGVyLCBhcyB3ZWxsIGFzIHRoZSByZXF1aXJlZCBEVFMKPiA+IHVwZGF0ZXMuCj4g
PiAKPiA+IFRvIGZhY2lsaXRhdGUgdGVzdGluZyBhbmQgZXhwZXJpbWVudGF0aW9uLCBhbGwgSERN
SSBvdXRwdXQgcmVsYXRlZAo+ID4gcGF0Y2hlcywgaW5jbHVkaW5nIHRob3NlIHBhcnQgb2YgdGhp
cyBzZXJpZXMsIGFzIHdlbGwgYXMgdGhlIGJyaWRnZQo+ID4gZHJpdmVyLCBhcmUgYXZhaWxhYmxl
IGF0IFszXS4KPiA+IAo+ID4gU28gZmFyIEkgY291bGQgb25seSB2ZXJpZnkgdGhpcyBvbiB0aGUg
UkFEWEEgUm9jayA1QiBib2FyZC4KPiA+IAo+ID4gVGhhbmtzLAo+ID4gQ3Jpc3RpYW4KPiA+IAo+
ID4gWzFdOiA1YTAyOGU4ZjA2MmYgKCJkcm0vcm9ja2NoaXA6IHZvcDI6IEFkZCBzdXBwb3J0IGZv
ciByazM1ODgiKQo+ID4gWzJdOiA1NTNiZTI4MzBjNWYgKCJwaHk6IHJvY2tjaGlwOiBBZGQgU2Ft
c3VuZyBIRE1JL2VEUCBDb21ibyBQSFkgZHJpdmVyIikKPiA+IFszXTogaHR0cHM6Ly9naXRsYWIu
Y29sbGFib3JhLmNvbS9oYXJkd2FyZS1lbmFibGVtZW50L3JvY2tjaGlwLTM1ODgvbGludXgvLS9j
b21taXRzL3JrMzU4OC1oZG1pLWJyaWRnZS12Ni4xMS1yYzEKPiA+IFs0XTogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbGttbC8yMDI0MDgwMS1kdy1oZG1pLXFwLXR4LXYxLTAtMTQ4ZjU0MmRlNWZk
QGNvbGxhYm9yYS5jb20vCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRl
YSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4gPiAtLS0KPiA+IENoYW5nZXMg
aW4gdjI6Cj4gPiAtIFJld29ya2VkIHRoZSBnbHVlIGNvZGUgZm9yIFJLMzU4OCBpbnRvIGEgbmV3
IFJvY2tjaGlwIHBsYXRmb3JtIGRyaXZlcgo+ID4gLSBNb3ZlZCBicmlkZ2UgZHJpdmVyIHBhdGNo
ZXMgdG8gYSBzZXBhcmF0ZSBzZXJpZXMgWzRdCj4gPiAtIERyb3BwZWQgYWxsIHRoZSBwYXRjaGVz
IHRvdWNoaW5nIHRvIHRoZSBvbGQgZHctaGRtaSBhbmQgUksgcGxhdGZvcm0KPiA+ICBkcml2ZXJz
Cj4gPiAtIEFkZGVkIGNvbm5lY3RvciBjcmVhdGlvbiB0byBlbnN1cmUgdGhlIEhETUkgUVAgYnJp
ZGdlIGRyaXZlciBkb2VzIG9ubHkKPiA+ICBzdXBwb3J0IERSTV9CUklER0VfQVRUQUNIX05PX0NP
Tk5FQ1RPUgo+ID4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjQw
NjAxLWI0LXJrMzU4OC1icmlkZ2UtdXBzdHJlYW0tdjEtMC1mNjIwMzc1MzIzMmJAY29sbGFib3Jh
LmNvbQo+ID4gCj4gPiAtLS0KPiA+IENyaXN0aWFuIENpb2NhbHRlYSAoMyk6Cj4gPiAgICAgIGR0
LWJpbmRpbmdzOiBkaXNwbGF5OiByb2NrY2hpcDogQWRkIHNjaGVtYSBmb3IgUkszNTg4IEhETUkg
VFggQ29udHJvbGxlcgo+ID4gICAgICBkcm0vcm9ja2NoaXA6IEV4cGxpY2l0bHkgaW5jbHVkZSBi
aXRzIGhlYWRlcgo+ID4gICAgICBkcm0vcm9ja2NoaXA6IEFkZCBiYXNpYyBSSzM1ODggSERNSSBv
dXRwdXQgc3VwcG9ydAo+ID4gCj4gPiAuLi4vZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxkdy1o
ZG1pLXFwLnlhbWwgICAgICB8IDE4OCArKysrKysrKysKPiA+IGRyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9LY29uZmlnICAgICAgICAgICAgICAgICAgIHwgICA4ICsKPiA+IGRyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgICAgICAgICAgIHwgICAxICsKPiA+IGRyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9kd19oZG1pX3FwLXJvY2tjaGlwLmMgICAgIHwgNDMwICsrKysrKysr
KysrKysrKysrKysrKwo+ID4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9k
cnYuYyAgICAgICAgfCAgIDIgKwo+ID4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlw
X2RybV9kcnYuaCAgICAgICAgfCAgIDQgKy0KPiA+IDYgZmlsZXMgY2hhbmdlZCwgNjMyIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+IC0tLQo+ID4gYmFzZS1jb21taXQ6IDE2MTNlNjA0
ZGYwY2QzNTljZjJhN2ZiZDliZTdhMGJjZmFjZmFiZDAKPiA+IGNoYW5nZS1pZDogMjAyNDA2MDEt
YjQtcmszNTg4LWJyaWRnZS11cHN0cmVhbS1hMjdiYWZmMWI4ZmMKPiA+IAo+ID4gCj4gPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0Cj4gPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
