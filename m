Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F032DCCF9EB
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Oct 2025 01:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08kDa2fY54ntg/e8+Aod+myaX51JXUCUqMjR6Zk+qog=; b=o+U2sdLCvjHqK9
	V5UzVAb0MdIhv7p2wS41aPrqGlGhe7rWozD0RQCPQaCEfjlVgHl9RcBwgjYCaqkl+AZZuAYsggV/q
	y18jLElZ1WVTsn3wwDjByZlUxWBzs3wMZv4sKH9NWQHpVEp8oEUah86D+iQGeFnCyYCPWA7BrzpDA
	X7mA2V4OvblpdAkxIb+cR0Y+38otUjEXs/eP9yhF6vSUDQGqU9CotPbWiTnTOqZh9ZcDySK3vZkWi
	UzmFf6XesDyCnH84J0bNXElzO1AHDPje2TfrXyQT/gVzCMUoZgJA6Tzikm0kXvEhXK9lNL86AnYfE
	rm59fElCTwr/ycjVHfwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEHYs-00000003Krn-0YXb;
	Thu, 30 Oct 2025 01:34:46 +0000
Received: from mail-yx1-xb12b.google.com ([2607:f8b0:4864:20::b12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEHYp-00000003Kqg-0jZp
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Oct 2025 01:34:44 +0000
Received: by mail-yx1-xb12b.google.com with SMTP id 956f58d0204a3-63e255e9a20so710124d50.0
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Oct 2025 18:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761788082; x=1762392882; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QSYKQjyLLpQ9U6VgF/+NC7c9Vfg3d8+LTPH7512lTcw=;
        b=KuJvQSbGxrGAvKU6rSfDOzT3N1DzN/16gr2rq1KYUhvf6zAeSImd7lRIkpx0fyeIrH
         rIt4tEmRy8duiLl5rxTiDYbCgq6Pg1/V6lzAXaXSfIWrsrfgHKrgoK6j1At4C0LWNYwf
         srHX3HQAOPCUqsyst+VNGE7iu/MBOC3sZjCYdWCkeUG+SuhVRnb1TCVfF9/Mj3bIAmor
         YpBitgWGPP7FT0OqJux80mZgUuQNJYxO7ukjyi/wDNOtOIXXABey869P+2zbDGMnIORs
         knFC0PY7ESXHUdeKta/w60XkIARu0zcALXgjvEhca3gEe2UK4hks0iVFZ6AQZLSTVXK2
         Inyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761788082; x=1762392882;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QSYKQjyLLpQ9U6VgF/+NC7c9Vfg3d8+LTPH7512lTcw=;
        b=SO9tRi6/Vopvey3xmHexvwrdafHK4w7JB3wpBL008XAzj/KSQygubzCSIFZD5bWeTg
         m7btfkTumW04sIbgdhQz6DOEtuaxpShoKGaP0uQEiItB0Pv4n+dSmF0Kaw1r3T5808Hy
         Y7Voj+zHN/PLcD8bTUWcVbnIMG3u1f2tQODN9MNQ52r1sg+RrVyIVBrbW3WcLQOPRySL
         bOsp/HMxo/9iRtTL/ZNCh+Cd08uU94xlY67/P2J9SHLjLGg8EhVyAeiZPrvj5O0UCzAJ
         oYivaVZORYFepYWHdQQr53gQsLeSkHz4kvGhNXRf5YS9F1e3smL1Pk5ct/C81apQyj9Y
         BtPw==
X-Forwarded-Encrypted: i=1; AJvYcCWRSJ00NJ4GWAXg4KBXob2it8Q4MlLZ2huKlpRd5rS/BVRFiQfkYxsln6pLOFWrWZM1CI+cLNaA9PLsmUGtqw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwK82BdrLVZQZk7szy962S/lO50augEaiDlYkB0Xr9GT6po60/J
	tDp8R0h+DWxxUjaa+U2TMPlKxgUZdnu145ERnGWMUC2agdX2HqZffrGNNXTkje9seaVDISTavXu
	2snH3TJz+EVMHB7C0IzRq2DA4S/0krQ4=
X-Gm-Gg: ASbGnctBhwT9ZRRqfJlEF3IE1f6Ky651uydQ3PUmhbOA6MvLOLNeoAWBVBSe4+/dbXz
	ZLsT7qttyBfTV3kKPNuyJEXKCUGvL8x20oxHxX3Ts+LYSZwD1RxdyZpr/VmOFoXHwUwaYlwZq+j
	/hgLt3q1yr2ZBZAGNtOo6HQL9bb0gMY+ely5Zl9+gtM7ldYIia2jyX3fh3F9k9XkrWPkfnv+eB+
	3fDMpGj3PC7rFFTdx5706wJX/Dv2fWKDFIfMCqq7o9XM7L8VkbgpD7qvh0=
X-Google-Smtp-Source: AGHT+IHMgJ4rKBE3uO85FiTJlzlAN942wrm4DmLjbiS0N7/wUCXXDdFNOdlxyLWqUIKEUXLtWtfDUoP0SJbFBB5hViQ=
X-Received: by 2002:a05:690c:6a89:b0:784:841e:c03c with SMTP id
 00721157ae682-7863903404amr16292487b3.15.1761788081875; Wed, 29 Oct 2025
 18:34:41 -0700 (PDT)
MIME-Version: 1.0
References: <20251029071435.88-1-kernel@airkyi.com> <20251029071435.88-11-kernel@airkyi.com>
 <CAL411-o6mF71oBeRsJ-OPZNbLegn4iJ_ELN9xVdppTM3ssUPOw@mail.gmail.com>
 <cc8b583a-77ec-4a7f-97cc-2d148f7fee9f@rock-chips.com> <e0c5bda3-7428-49e0-9955-fa23f1e4f35d@rock-chips.com>
In-Reply-To: <e0c5bda3-7428-49e0-9955-fa23f1e4f35d@rock-chips.com>
From: Peter Chen <hzpeterchen@gmail.com>
Date: Thu, 30 Oct 2025 09:34:30 +0800
X-Gm-Features: AWmQ_bnwd-FVfcBS5MP2Q8qG3_b5HlIQQto3HU-lVRe3FvjLA4i8HmYCB1URRXQ
Message-ID: <CAL411-oXfvp-iqN+uRmFHijdmW=1omKwozKOoZ2shxukMHmwPg@mail.gmail.com>
Subject: Re: [PATCH v8 10/10] arm64: dts: rockchip: rk3399-evb-ind: Add
 support for DisplayPort
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Frank Wang <frank.wang@rock-chips.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>, 
	Diederik de Haas <didi.debian@cknow.org>, Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_183443_231399_8649858B 
X-CRM114-Status: GOOD (  19.39  )
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

T24gV2VkLCBPY3QgMjksIDIwMjUgYXQgNjozMuKAr1BNIENoYW95aSBDaGVuIDxjaGFveWkuY2hl
bkByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBPbiAxMC8yOS8yMDI1IDY6MjEgUE0sIENoYW95
aSBDaGVuIHdyb3RlOgo+Cj4gPiBIaSBQZXRlciwKPiA+Cj4gPiBPbiAxMC8yOS8yMDI1IDU6NDUg
UE0sIFBldGVyIENoZW4gd3JvdGU6Cj4gPj4+ICsmaTJjNCB7Cj4gPj4+ICsgICAgICAgaTJjLXNj
bC1yaXNpbmctdGltZS1ucyA9IDw0NzU+Owo+ID4+PiArICAgICAgIGkyYy1zY2wtZmFsbGluZy10
aW1lLW5zID0gPDI2PjsKPiA+Pj4gKyAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPj4+ICsKPiA+
Pj4gKyAgICAgICB1c2JjMDogdHlwZWMtcG9ydGNAMjIgewo+ID4+PiArICAgICAgICAgICAgICAg
Y29tcGF0aWJsZSA9ICJmY3MsZnVzYjMwMiI7Cj4gPj4+ICsgICAgICAgICAgICAgICByZWcgPSA8
MHgyMj47Cj4gPj4+ICsgICAgICAgICAgICAgICBpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvMT47
Cj4gPj4+ICsgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPFJLX1BBMiBJUlFfVFlQRV9MRVZF
TF9MT1c+Owo+ID4+PiArICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
PiA+Pj4gKyAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdXNiYzBfaW50PjsKPiA+Pj4gKyAg
ICAgICAgICAgICAgIHZidXMtc3VwcGx5ID0gPCZ2YnVzX3R5cGVjPjsKPiA+Pj4gKwo+ID4+PiAr
ICAgICAgICAgICAgICAgdXNiX2NvbjogY29ubmVjdG9yIHsKPiA+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgY29tcGF0aWJsZSA9ICJ1c2ItYy1jb25uZWN0b3IiOwo+ID4+PiArICAgICAgICAg
ICAgICAgICAgICAgICBsYWJlbCA9ICJVU0ItQyI7Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGRhdGEtcm9sZSA9ICJkdWFsIjsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgcG93
ZXItcm9sZSA9ICJkdWFsIjsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgdHJ5LXBvd2Vy
LXJvbGUgPSAic2luayI7Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wLXNpbmstbWlj
cm93YXR0ID0gPDEwMDAwMDA+Owo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICBzaW5rLXBk
b3MgPQo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxQRE9fRklYRUQoNTAw
MCwgMjUwMCwgUERPX0ZJWEVEX1VTQl9DT01NKT47Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgIHNvdXJjZS1wZG9zID0KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8
UERPX0ZJWEVEKDUwMDAsIDE1MDAsIFBET19GSVhFRF9VU0JfQ09NTSk+Owo+ID4+PiArCj4gPj4+
ICsgICAgICAgICAgICAgICAgICAgICAgIGFsdG1vZGVzIHsKPiA+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBkaXNwbGF5cG9ydCB7Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzdmlkID0gL2JpdHMvIDE2IDwweGZmMDE+Owo+ID4+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmRvID0gPDB4MDAwMDFjNDY+Owo+
ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gPj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgIH07Cj4gPj4+ICsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgcG9y
dHMgewo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxz
ID0gPDE+Owo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxz
ID0gPDA+Owo+ID4+PiArCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcG9y
dEAwIHsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9
IDwwPjsKPiA+Pj4gKwo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgdXNiY19oczogZW5kcG9pbnQgewo+ID4+PiArIHJlbW90ZS1lbmRwb2ludCA9IDwmdTJwaHkw
X3R5cGVjX2hzPjsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IH07Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+Pj4gKwo+ID4+
IFdoeSBVU0IyIFBIWSBuZWVkcyB0byBiZSBub3RpZmllZCBmb3IgVHlwZS1DIGNvbm5lY3Rpb24/
Cj4gPgo+ID4gSSB0aGluayB0aGUgVVNCLWNvbm5lY3RvciBiaW5kaW5nIHJlcXVpcmUgYSBwb3J0
QDAgZm9yIEhpZ2ggU3BlZWQuICBTbyBJIGZpbGxlZCBpbiBVU0IyIFBIWSBoZXJlLiBBbmQgSSBo
YXZlIGxvb2tlZCB1cCBib2FyZHMgd2l0aCB0aGUgc2FtZSB1c2FnZSwgYW5kIHNvbWUgb2YgdGhl
IHJlc3VsdHMgYXJlIGFzIGZvbGxvd3M6Cj4gPgo+ID4gLSByazMzOTktZmlyZWZseS5kdHMKPiA+
Cj4gPiAtIHJrMzM5OS1waW5lYm9vay1wcm8uZHRzCj4gPgo+ID4gLSByazMzOTktZWFpZGstNjEw
LmR0cwo+ID4KCk9rYXkuICBNeSBxdWVzdGlvbiBpcyBiYXNpYzogVVNCMiBQSFkgc3VwcGxpZXMg
RFAvRE0sIGFuZCB0aGUgRFAvRE0gaXMKc2hvcnQgZm9yIFR5cGUtQyBjb25uZWN0b3IsCmFuZCBu
byBjb250cm9sIGlzIG5lZWRlZCBmb3IgVHlwZS1DIGFwcGxpY2F0aW9uLgpXaHkgaXMgdGhlcmUg
YSByZW1vdGUtZW5kcG9pbnQgY29ubmVjdGlvbiBiZXR3ZWVuIFVTQjIgUEhZIGFuZCBUeXBlLUMg
Y29ubmVjdG9yPwoKPiA+Cj4gPj4KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBwb3J0QDEgewo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cmVnID0gPDE+Owo+ID4+PiArCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB1c2JjX3NzOiBlbmRwb2ludCB7Cj4gPj4+ICsgcmVtb3RlLWVuZHBvaW50ID0gPCZ0
Y3BoeTBfdHlwZWNfc3M+Owo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfTsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+ID4+PiAr
Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcG9ydEAyIHsKPiA+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwyPjsKPiA+Pj4gKwo+
ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdXNiY19kcDogZW5k
cG9pbnQgewo+ID4+PiArIHJlbW90ZS1lbmRwb2ludCA9IDwmdGNwaHkwX3R5cGVjX2RwPjsKPiA+
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gPj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgfTsKPiA+Pj4gKyAgICAgICAgICAgICAgIH07Cj4gPj4+ICsgICAgICAgfTsKPiA+Pj4gK307
Cj4gPj4+ICsKPiA+PiAuLi4uLgo+ID4+PiAgICZ1MnBoeTAgewo+ID4+PiAgICAgICAgICBzdGF0
dXMgPSAib2theSI7Cj4gPj4+ICsKPiA+Pj4gKyAgICAgICBwb3J0IHsKPiA+Pj4gKyAgICAgICAg
ICAgICAgIHUycGh5MF90eXBlY19oczogZW5kcG9pbnQgewo+ID4+PiArICAgICAgICAgICAgICAg
ICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JnVzYmNfaHM+Owo+ID4+PiArICAgICAgICAgICAg
ICAgfTsKPiA+Pj4gKyAgICAgICB9Owo+ID4+PiAgIH07Cj4gPj4+Cj4gPj4gVGhlcmUgaXMgbm8g
c3dpdGNoIGFuZCBtdXgsIGhvdyB0byBjby13b3JrIHdpdGggVHlwZS1DPwo+ID4KPiA+IEkgY2hl
Y2tlZCB0aGUgcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIGJ1dCBkaWQgbm90IGZpbmQgYW55IHN3
aXRjaCBvciBtdXguIERvZXMgdGhpcyBtZWFuIHRoYXQgd2UgbmVlZCB0byBpbXBsZW1lbnQgdGhl
bT8gVGhhbmsgeW91Lgo+Cj4gV2FpdCBhIG1pbnV0ZSwgYWN0dWFsbHkgd2UgaGF2ZSBtdWx0aXBs
ZSBoYXJkd2FyZSBpbnRlcmZhY2VzLCBvbmUgb2Ygd2hpY2ggaXMgVHlwZS1DLCBldmVudHVhbGx5
IGNvbm5lY3RlZCB0byBVU0JEUFBIWSwgYW5kIHRoZSBvdGhlciBpcyBtaWNyby11c2IgY29ubmVj
dGVkIHRvIFUyUEhZLgoKSSBhc3N1bWUgdGhlIE1pY3JvLVVTQiBjb25uZWN0b3IgZG9lcyBub3Qg
dXNlIFR5cGUtQy9QRCBJQywgaXMgaXQKcmlnaHQ/IERvZXMgaXQgcmVsYXRlIHRvIHRoaXMgcGF0
Y2g/CgpCZXN0IHJlZ2FyZHMsClBldGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
