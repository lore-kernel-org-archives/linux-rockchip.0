Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79274C27C43
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 May 2024 14:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0c4pJ9xn4VoVkRTEYpEUdVJmO6+1FLmcnahtAY/KZk=; b=H48Ku8FFogGO6b
	WAxH2ZI/sRhHrnGN0+okBeww81INoJaQ18jzYZOaexR88YQYy5MUt1uyJ1u+aTvQHTNj4m4f6fUv8
	C08GUAAkH3xi6DPNWTR1hpsZOTct0sykjUrrV4K4fe9+gPLj5RK8AHSFgIB1FyKZmN9oMhpRwAMuL
	crkWiksz5/VXhvgvqP1xAKGsx4qhzUhjaEzD+guPi4nThs2KU9Uy9piZ45lNYXqpDF+MGR2SMyHHO
	3qF1/gJhlxTkryYiHtmUlZcPKZTngwS4Mx6awn2hTVH0vSghPCWiuuEkb5+X9b5mPFP8ihYIcVuNU
	tnMcqz2OZd+IvFT5jDxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCgrM-00000007YXp-19e5;
	Thu, 30 May 2024 14:34:28 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCgrJ-00000007YVU-1ADo
	for linux-rockchip@lists.infradead.org;
	Thu, 30 May 2024 14:34:27 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id 6a1803df08f44-6ad86f3cc34so5274796d6.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 May 2024 07:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717079658; x=1717684458; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SC6nWvS6ksIVK7SPyvfcXHHq7DHpEEdDXC/BUNLhAHQ=;
        b=hbfXpJQF+Ph4yAsmx/4qwrTAskFwqbGVLIN36gII5EWO/djq7vJqf7vDPNk84YEBre
         3KglVy7BfcNKsaN0kDd6N67+XPmxRNBAH5acnVOWWftB48sTZsJkkCA2mhhxVEXJwQX9
         JOg0jbiNUI9HMuIDPTb2IE/NurvW40JYZXUGw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717079658; x=1717684458;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SC6nWvS6ksIVK7SPyvfcXHHq7DHpEEdDXC/BUNLhAHQ=;
        b=e61BILRC55Ra61DsEYNa38y2TK4nKwYWXoI/rGrR22PXRj/cLNAnIfw7y6WO+tZkf5
         izZYn5vVQYo9JsD1/xQl3MdY7C0j5i8isV9lKNOQU2xLZ8qSkHrR6jdIDBrzX/9W65U5
         olwuYOOWrqi1kb+XV3UdQj/qk/jAL9ueyblk3jMkVmUMORJoq9yc1M9CuuqlgYA15JgK
         7WAM/CfluDBLHxHAqFHjKy2JbX545i49DuwdzEBU39mNT1YG5vwakvjh5enajPojZfbw
         a+uog2ud/i3D2YwIjFJutjj+Y956+hP2zD5oDx6Fwil7lfNqfwQ/StKz4ne1i58id6JW
         5dVQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7ETl3sflyeq44KpnwgjdcmU8okoBG2JZPZyc5/NqRPze6M+At5QrNHEbH+J5Mmg+MYRpu2sH6BVq4pNlo83Tg+FARxPbcM58EzLOdSYjsh3eS
X-Gm-Message-State: AOJu0Yz6CC3169RZyXwKvdfTQ5p9BfuQrAE8czjJ965sB1+RLjkesfcI
	xNmwBMIyh4vlP1bCxEbmARqtTXS703xHLwDnges4216MOZNVfBfdbFt3a8L5raZnpPQkfkC6lAs
	=
X-Google-Smtp-Source: AGHT+IESotTSYofLifBtb5Nd7tdY8bsXy+a7Yr8Gurj1cXHcZ3SEf/zxEDTcwhpTBzGMkMM5oxtPcw==
X-Received: by 2002:a05:6214:3f8c:b0:6ab:83a5:195 with SMTP id 6a1803df08f44-6ae0ccf4ba8mr26378656d6.41.1717079658190;
        Thu, 30 May 2024 07:34:18 -0700 (PDT)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com. [209.85.160.173])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6ad791691e4sm44790896d6.138.2024.05.30.07.34.16
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 May 2024 07:34:16 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-43dfe020675so363491cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 May 2024 07:34:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWP7Gbi3RUPbcIxcxeueJDVAdyLbp9ITxCp4vFBlWkDpVhmQWC02gZtXCeMxD3eZjmJU/K7r66vXBFMySqvuSR0EonlbMkWWlEUwl7FWK7mcRys
X-Received: by 2002:a05:622a:544e:b0:43a:b51c:46ca with SMTP id
 d75a77b69052e-43feb5182fdmr2765661cf.29.1717079656252; Thu, 30 May 2024
 07:34:16 -0700 (PDT)
MIME-Version: 1.0
References: <20240529-edp-panel-drop-v2-0-fcfc457fc8dd@linaro.org> <20240529-edp-panel-drop-v2-1-fcfc457fc8dd@linaro.org>
In-Reply-To: <20240529-edp-panel-drop-v2-1-fcfc457fc8dd@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 30 May 2024 07:33:59 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Uw+KYQQ2xFLhNdWSW0sNX9uV_zSAVO2uBWY4JEcaO2bA@mail.gmail.com>
Message-ID: <CAD=FV=Uw+KYQQ2xFLhNdWSW0sNX9uV_zSAVO2uBWY4JEcaO2bA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] drm/panel-edp: add fat warning against adding new
 panel compatibles
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Jeffrey Hugo <quic_jhugo@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_073425_438723_67A5E65D 
X-CRM114-Status: GOOD (  27.17  )
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

SGksCgpPbiBUdWUsIE1heSAyOCwgMjAyNCBhdCA0OjUy4oCvUE0gRG1pdHJ5IEJhcnlzaGtvdgo8
ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IEFkZCBhIGZhdCB3YXJuaW5n
IGFnYWluc3QgYWRkaW5nIG5ldyBwYW5lbCBjb21wYXRpYmxlcyB0byB0aGUgcGFuZWwtZWRwCj4g
ZHJpdmVyLiBBbGwgbmV3IHVzZXJzIG9mIHRoZSBlRFAgcGFuZWxzIGFyZSBzdXBwb3NlZCB0byB1
c2UgdGhlIGdlbmVyaWMKPiAiZWRwLXBhbmVsIiBjb21wYXRpYmxlIGRldmljZSBvbiB0aGUgQVVY
IGJ1cy4gVGhlIHJlbWFpbmluZyBjb21wYXRpYmxlcwo+IGFyZSBlaXRoZXIgdXNlZCBieSB0aGUg
ZXhpc3RpbmcgRFQgb3Igd2VyZSB1c2VkIHByZXZpb3VzbHkgYW5kIGFyZQo+IHJldGFpbmVkIGZv
ciBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eS4KPgo+IFN1Z2dlc3RlZC1ieTogRG91ZyBBbmRlcnNv
biA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgo+IFJldmlld2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8
bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgQmFyeXNo
a292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9wYW5lbC9wYW5lbC1lZHAuYyB8IDE4ICsrKysrKysrKysrKysrKysrLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1lZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9w
YW5lbC1lZHAuYwo+IGluZGV4IDZkYjI3N2VmY2JiNy4uOTViMjVlYzY3MTY4IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1lZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9wYW5lbC9wYW5lbC1lZHAuYwo+IEBAIC0xNzc2LDcgKzE3NzYsMjMgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcGxhdGZvcm1fb2ZfbWF0Y2hbXSA9IHsKPiAgICAgICAg
IHsKPiAgICAgICAgICAgICAgICAgLyogTXVzdCBiZSBmaXJzdCAqLwo+ICAgICAgICAgICAgICAg
ICAuY29tcGF0aWJsZSA9ICJlZHAtcGFuZWwiLAo+IC0gICAgICAgfSwgewo+ICsgICAgICAgfSwK
PiArICAgICAgIC8qCj4gKyAgICAgICAgKiBEbyBub3QgYWRkIHBhbmVscyB0byB0aGUgbGlzdCBi
ZWxvdyB1bmxlc3MgdGhleSBjYW5ub3QgYmUgaGFuZGxlZCBieQo+ICsgICAgICAgICogdGhlIGdl
bmVyaWMgZWRwLXBhbmVsIGNvbXBhdGlibGUuCj4gKyAgICAgICAgKgo+ICsgICAgICAgICogVGhl
IG9ubHkgdHdvIHZhbGlkIHJlYXNvbnMgYXJlOgo+ICsgICAgICAgICogLSBiZWNhdXNlIG9mIHRo
ZSBwYW5lbCBpc3N1ZXMgKGUuZy4gYnJva2VuIEVESUQgb3IgYnJva2VuCj4gKyAgICAgICAgKiAg
IGlkZW50aWZpY2F0aW9uKSwKPiArICAgICAgICAqIC0gYmVjYXVzZSB0aGUgcGxhdGZvcm0gd2hp
Y2ggdXNlcyB0aGUgcGFuZWwgZGlkbid0IHdpcmUgdXAgdGhlIEFVWAo+ICsgICAgICAgICogICBi
dXMgcHJvcGVybHkuCj4gKyAgICAgICAgKgo+ICsgICAgICAgICogSW4gYWxsIG90aGVyIGNhc2Vz
IHRoZSBwbGF0Zm9ybSBzaG91bGQgdXNlIHRoZSBhdXgtYnVzIGFuZCBkZWNsYXJlCj4gKyAgICAg
ICAgKiB0aGUgcGFuZWwgdXNpbmcgdGhlICdlZHAtcGFuZWwnIGNvbXBhdGlibGUgYXMgYSBkZXZp
Y2Ugb24gdGhlIEFVWAo+ICsgICAgICAgICogYnVzLiBUaGUgbGFjayBvZiB0aGUgYXV4LWJ1cyBz
dXBwb3J0IGlzIG5vdCBhIHZhbGlkIGNhc2UuIFBsYXRmb3Jtcwo+ICsgICAgICAgICogYXJlIHVy
Z2VkIHRvIGJlIGNvbnZlcnRlZCB0byBkZWNsYXJpbmcgcGFuZWxzIGluIGEgcHJvcGVyIHdheS4K
CkknbSBzdGlsbCBhdCBsZWFzdCBzbGlnaHRseSBjb25mdXNlZCBieSB0aGUgd29yZGluZy4gV2hh
dCBpcyAidGhlIGxhY2sKb2YgdGhlIGF1eC1idXMgc3VwcG9ydCIuIEkgZ3Vlc3MgdGhpcyBpcyBk
aWZmZXJlbnQgZnJvbSB0aGUgdmFsaWQKcmVhc29uIG9mICJ0aGUgcGxhdGZvcm0gd2hpY2ggdXNl
cyB0aGUgcGFuZWwgZGlkbid0IHdpcmUgdXAgdGhlIEFVWApidXMgcHJvcGVybHkiIGJ1dCBJJ20g
bm90IHN1cmUgaG93LiBNYXliZSB5b3UgY2FuIGV4cGxhaW4/CgpJIGd1ZXNzIEknZCB3cml0ZSBp
dCBsaWtlIHRoaXM6CgogICAgLyoKICAgICAqIERvIG5vdCBhZGQgcGFuZWxzIHRvIHRoZSBsaXN0
IGJlbG93IHVubGVzcyB0aGV5IGNhbm5vdCBiZSBoYW5kbGVkIGJ5CiAgICAgKiB0aGUgZ2VuZXJp
YyBlZHAtcGFuZWwgY29tcGF0aWJsZS4KICAgICAqCiAgICAgKiBUaGUgb25seSB0d28gdmFsaWQg
cmVhc29ucyBhcmU6CiAgICAgKiAtIGJlY2F1c2Ugb2YgdGhlIHBhbmVsIGlzc3VlcyAoZS5nLiBi
cm9rZW4gRURJRCBvciBicm9rZW4KICAgICAqICAgaWRlbnRpZmljYXRpb24pLgogICAgICogLSBi
ZWNhdXNlIHRoZSBwbGF0Zm9ybSB3aGljaCB1c2VzIHRoZSBwYW5lbCBkaWRuJ3Qgd2lyZSB1cCB0
aGUgQVVYCiAgICAgKiAgIGJ1cyBwcm9wZXJseS4gTk9URSB0aGF0LCB0aG91Z2ggdGhpcyBpcyBh
IG1hcmdpbmFsbHkgdmFsaWQgcmVhc29uLAogICAgICogICBzb21lIGp1c3RpZmljYXRpb24gbmVl
ZHMgdG8gYmUgbWFkZSBmb3Igd2h5IHRoZSBwbGF0Zm9ybSBjYW4ndAogICAgICogICB3aXJlIHVw
IHRoZSBBVVggYnVzIHByb3Blcmx5LgogICAgICoKICAgICAqIEluIGFsbCBvdGhlciBjYXNlcyB0
aGUgcGxhdGZvcm0gc2hvdWxkIHVzZSB0aGUgYXV4LWJ1cyBhbmQgZGVjbGFyZQogICAgICogdGhl
IHBhbmVsIHVzaW5nIHRoZSAnZWRwLXBhbmVsJyBjb21wYXRpYmxlIGFzIGEgZGV2aWNlIG9uIHRo
ZSBBVVgKICAgICAqIGJ1cy4KICAgICAqLwoKV2hhdCBkbyB5b3UgdGhpbms/IEluIGFueSBjYXNl
LCBpdCBwcm9iYWJseSBkb2Vzbid0IG1hdHRlciBtdWNoLiBUaGUKaW1wb3J0YW50IHRoaW5nIGlz
IHNvbWUgc29ydCBvZiB3YXJuaW5nIGhlcmUgdGVsbGluZyBwZW9wbGUgbm90IHRvIGFkZAp0byB0
aGUgdGFibGUuIEluIHRoYXQgc2Vuc2U6CgpSZXZpZXdlZC1ieTogRG91Z2xhcyBBbmRlcnNvbiA8
ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
