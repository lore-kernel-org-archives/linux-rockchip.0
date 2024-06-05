Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 151BAC25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 09:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8/esmrEpWHd1clyVchBbbFZ8TFUE/1f41mAHm4998cU=; b=MwKLoPPzKh9DfPb4ajoVSAP0S3
	l4Hjntqf34Msv1YfNWNdMxSIZBhfU6izlX8y5vXFwRN5hT6LFIjLEbi4yWAUOqBl4SiIekJQNSkra
	9zajxGQGxOfUUwX2OuJ1/xQy/PL1w4H9JF5qj6+P3YBzju9OzNPAtIjPpT8cLphNRmIfp0oWsgZxW
	2Ms88wGUETAS26te8g50WlHYo/PIEyBNUlb1spPTAD2OMFZz4fRbT4EBxfqcnr5xv5i3T26vFZ6uM
	V+4MIb6S0k1IeGSq61FeyeXmHVqqUTx7QEc/NDOQI4jk3AbFNRHFkjXZJkgS2HGQXOO3jlOrH9sDT
	y5I9rQPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEmwr-00000005OQ1-3IJ9;
	Wed, 05 Jun 2024 09:28:50 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEmwo-00000005OOY-0yXT
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jun 2024 09:28:47 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-354f3f6c3b1so1842363f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Jun 2024 02:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717579723; x=1718184523; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9aZp3wyE5ekzsTIWHpWbrt8XuH/G5p0iFSTouqyj9Bg=;
        b=UmY7CGpnQThlkVxEop+oqmhOfdBP2xT9aYj0leeNSjiVGMgFk3Q4dQj/Q709FS7QZc
         yJNjydvtyleJbMYXnt2oM/2d2qKhfs5tMTA8YPYLkcpea1RWjZzwAJQzNI2YMpdv203A
         FK9dprKMIK1s++t/J8khYK4ewRDQGLmLqviIAA0KfZS1+QDoyFanr0teqJUyfIlt2dX+
         R2J/CuzNnTn8XFTKiRsSvpvovRL2hV5t6urgviCvpzm7WCK3dKJyZB826RPqYr+mF0wM
         IboZyjtMYnivwiFjkOq0+oH0/WMh+5yf5ECdFWSFmowSDsM+A0FP2quzErOIsS0Ad1I9
         8G8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717579723; x=1718184523;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9aZp3wyE5ekzsTIWHpWbrt8XuH/G5p0iFSTouqyj9Bg=;
        b=ioDvyrDI8IqPxFll3WMtCQf/O3ta1Hd/hiqHijpetSVU70LNQbeFskDqlOo/cSeBhb
         +noJZ4SJ4A/ieSTHpcMQ+B2lM3vSwgHEI+9oGTiANpqfmw/SxMRIsgzpkyzuSevEpWQ9
         +ZQiSgk51uBCAZ8UaKzE8oPyl5CJpnpmfw7fOMz71g6LQoO8+sPWckTQVZw1UPwN5i0b
         YQQZmsSkg1xJtFh0gq9Q4yWLaGk4plWmH2NbTUpntJeOXGYFRB3xbeik5TH9XuO/U8lw
         5jptF4+qATpdBGmNCUVrMez1UED4sCQTDurpH0eVZ6++ITGXAIaFCbKI636TgEj5D0NT
         iIVw==
X-Forwarded-Encrypted: i=1; AJvYcCUUqNXtFHnU/Yerf3DwpmigHQSuV822KNErK8gLpsRQ5uV1tQs3LUwEvY6Y6Kg/Cb7JGMoB/JDK4xcUEzxgU1A6FHct0p7YQ9/0fdkCzjezWcgY
X-Gm-Message-State: AOJu0YwDqg7APq57KNAuMqWFcptpeREFEGFxCVg3sT+JmHu6giYZPW5E
	xsJ49D1Bhs47IWL7FP2epmoCiHWu3P76qZWl2jiRV37GF8XLD7fWNedC4fpDmBc=
X-Google-Smtp-Source: AGHT+IG4DNIDSVe9T92rRq3LMxr5LieWsgduZLuBSwgYLoAnxR2RRrOizcT2CkEWD5xDDP8HNuZKsg==
X-Received: by 2002:a5d:4645:0:b0:35d:ca3b:4d11 with SMTP id ffacd0b85a97d-35e8ef97043mr1413209f8f.61.1717579723202;
        Wed, 05 Jun 2024 02:28:43 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:c7ce:7756:462d:a8bd? ([2a01:e0a:982:cbb0:c7ce:7756:462d:a8bd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd064aa6csm13842822f8f.93.2024.06.05.02.28.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jun 2024 02:28:42 -0700 (PDT)
Message-ID: <01bde68a-88a7-46eb-860c-1375aa730bec@linaro.org>
Date: Wed, 5 Jun 2024 11:28:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 00/14] Add initial support for the Rockchip RK3588 HDMI TX
 Controller
To: Andy Yan <andyshrk@163.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>, Algea Cao <algea.cao@rock-chips.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <a4b22708-e85d-448a-8145-244b49bca053@linaro.org>
 <ab0a6372-091b-4293-8907-a4b3ff4845c0@rock-chips.com>
 <11359776.NyiUUSuA9g@phil> <ef60403f-078f-411a-867b-9b551e863f56@linaro.org>
 <b8066150-c147-4eb6-9f7a-2bd0268c274e@collabora.com>
 <4456bc5a.9b2d.18fe7b76790.Coremail.andyshrk@163.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <4456bc5a.9b2d.18fe7b76790.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_022846_329754_5CEA50D8 
X-CRM114-Status: GOOD (  28.10  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiAwNS8wNi8yMDI0IDExOjI1LCBBbmR5IFlhbiB3cm90ZToKPiAKPiBIaSwKPiAKPiBB
dCAyMDI0LTA2LTA1IDA0OjMzOjU3LCAiQ3Jpc3RpYW4gQ2lvY2FsdGVhIiA8Y3Jpc3RpYW4uY2lv
Y2FsdGVhQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+PiBPbiA2LzMvMjQgNDowOCBQTSwgbmVpbC5h
cm1zdHJvbmdAbGluYXJvLm9yZyB3cm90ZToKPj4+IEhpLAo+Pj4KPj4+IE9uIDAzLzA2LzIwMjQg
MTU6MDMsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+Pj4+IEFtIE1vbnRhZywgMy4gSnVuaSAyMDI0
LCAxNDoxNDoxNyBDRVNUIHNjaHJpZWIgQW5keSBZYW46Cj4+Pj4+IEhpIE5laWw6Cj4+Pj4+Cj4+
Pj4+IE9uIDYvMy8yNCAxNjo1NSwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4+Pj4+PiBIaSBDaHJp
c3RpYW4sCj4+Pj4+Pgo+Pj4+Pj4gT24gMDEvMDYvMjAyNCAxNToxMiwgQ3Jpc3RpYW4gQ2lvY2Fs
dGVhIHdyb3RlOgo+Pj4+Pj4+IFRoZSBSSzM1ODggU29DIGZhbWlseSBpbnRlZ3JhdGVzIGEgUXVh
ZC1QaXhlbCAoUVApIHZhcmlhbnQgb2YgdGhlCj4+Pj4+Pj4gU3lub3BzeXMgRGVzaWduV2FyZSBI
RE1JIFRYIGNvbnRyb2xsZXIgdXNlZCBpbiB0aGUgcHJldmlvdXMgU29Dcy4KPj4+Pj4+Pgo+Pj4+
Pj4+IEl0IGlzIEhETUkgMi4xIGNvbXBsaWFudCBhbmQgc3VwcG9ydHMgdGhlIGZvbGxvd2luZyBm
ZWF0dXJlcywgYW1vbmcKPj4+Pj4+PiBvdGhlcnM6Cj4+Pj4+Pj4KPj4+Pj4+IC4KPj4+Pj4+Cj4+
Pj4+PiAuLgo+Pj4+Pj4KPj4+Pj4+PiAqIFNDREMgSTJDIEREQyBhY2Nlc3MKPj4+Pj4+PiAqIFRN
RFMgU2NyYW1ibGVyIGVuYWJsaW5nIDIxNjBwQDYwSHogd2l0aCBSR0IvWUNiQ3I0OjQ6NAo+Pj4+
Pj4+ICogWUNiQ3I0OjI6MCBlbmFibGluZyAyMTYwcEA2MEh6IGF0IGxvd2VyIEhETUkgbGluayBz
cGVlZHMKPj4+Pj4+PiAqIE11bHRpLXN0cmVhbSBhdWRpbwo+Pj4+Pj4+ICogRW5oYW5jZWQgQXVk
aW8gUmV0dXJuIENoYW5uZWwgKEVBUkMpCj4+Pj4+PiAtPiBUaG9zZSBmZWF0dXJlcyB3ZXJlIGFs
cmVhZHkgc3VwcG9ydGVkIGJ5IHRoZSBIRE1JIDIuMGEgY29tcGxpYW50Cj4+Pj4+PiBIVywganVz
dAo+Pj4+Pj4gbGlzdCB0aGUgX25ld18gZmVhdHVyZXMgZm9yIEhETUkgMi4xCj4+Pj4+Pgo+Pj4+
Pj4gSSBkaWQgYSBxdWljayByZXZpZXcgb2YgeW91ciBwYXRjaHNldCBhbmQgSSBkb24ndCB1bmRl
cnN0YW5kIHdoeSB5b3UKPj4+Pj4+IG5lZWQKPj4+Pj4+IHRvIGFkZCBhIHNlcGFyYXRlIGR3LWhk
bWktcXAuYyBzaW5jZSB5b3Ugb25seSBuZWVkIHNpbXBsZSB2YXJpYW50cwo+Pj4+Pj4gb2YgdGhl
IEkyQwo+Pj4+Pj4gYnVzLCBpbmZvZnJhbWUgYW5kIGJyaWRnZSBzZXR1cC4KPj4+Pj4+Cj4+Pj4+
PiBDYW4geW91IGVsYWJvcmF0ZSBmdXJ0aGVyID8gaXNuJ3QgdGhpcyBRdWFkLVBpeGVsIChRUCkg
VFggY29udHJvbGxlcgo+Pj4+Pj4gdmVyc2lvbgo+Pj4+Pj4gZGV0ZWN0YWJsZSBhdCBydW50aW1l
ID8KPj4+Pj4+Cj4+Pj4+PiBJIHdvdWxkIHByZWZlciB0byBrZWVwIGEgc2luZ2xlIGR3LWhkbWkg
ZHJpdmVyIGlmIHBvc3NpYmxlLgo+Pj4+Pgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBUaGUgUVAgSERNSSBj
b250cm9sbGVyIGlzIGEgY29tcGxldGVseSBkaWZmZXJlbnQgdmFyaWFudCB3aXRoIHRvdGFsbHkK
Pj4+Pj4gZGlmZmVyZW50Cj4+Pj4+IHJlZ2lzdGVycyBsYXlvdXQsIHNlZSBQQVRDSCAxMy8xNC4K
Pj4+Pj4gSSB0aGluayBtYWtlIGl0IGEgc2VwYXJhdGUgZHJpdmVyIHdpbGwgYmUgZWFzaWVyIGZv
ciBkZXZlbG9wbWVudCBhbmQKPj4+Pj4gbWFpbnRlbmFuY2UuCj4+Pj4KPj4+PiBJJ20gd2l0aCBB
bmR5IGhlcmUuIFRyeWluZyB0byBuYXZpZ2F0ZSBhIGRyaXZlciBmb3IgdHdvIElQIGJsb2NrcyBy
ZWFsbHkKPj4+PiBzb3VuZHMgdGF4aW5nIGVzcGVjaWFsbHkgd2hlbiBib3RoIGFyZSBzbyBkaWZm
ZXJlbnQuCj4+Cj4+IFRoYW5rIHlvdSBhbGwgZm9yIHRoZSB2YWx1YWJsZSBmZWVkYmFjayEKPj4K
Pj4+IEkgYWdyZWUsIEkganVzdCB3YW50ZWQgbW9yZSBkZXRhaWxzIHRoYW4gInZhcmlhbnQgb2Yg
dGhlCj4+PiBTeW5vcHN5cyBEZXNpZ25XYXJlIEhETUkgVFggY29udHJvbGxlciIsIGlmIHRoZSBy
ZWdpc3RlciBtYXBwaW5nIGlzIDEwMCUKPj4+IGRpZmZlcmVudCwgYW5kIGRvZXMgbm90IG1hdGNo
IGF0IGFsbCB3aXRoIHRoZSBvbGQgSVAsIHRoZW4gaXQncyBpbmRlZWQgdGltZQo+Pj4gdG8gbWFr
ZSBhIGJyYW5kIG5ldyBkcml2ZXIsIGJ1dCBpbnN0ZWFkIG9mIGRvaW5nIGEgbWl4IHVwLCBpdCdz
IHRpbWUgdG8KPj4+IGV4dHJhY3QKPj4+IHRoZSBkdy1oZG1pIGNvZGUgdGhhdCBjb3VsZCBiZSBj
b21tb24gaGVscGVycyBpbnRvIGEgZHctaGRtaS1jb21tb24gbW9kdWxlCj4+PiBhbmQgdXNlIHRo
ZW0uCj4+Cj4+IFNvdW5kcyBnb29kLCB3aWxsIGhhbmRsZSB0aGlzIGluIHYyLgo+Pgo+Pj4gQXMg
SSBzZWUsIG5vICJkcml2ZXIiIGNvZGUgY2FuIGJlIHNoYXJlZCwgb25seSBEUk0gcGx1bWJpbmdz
LCBzbyBwZXJoYXBzCj4+PiB0aG9zZQo+Pj4gcGx1bWJpbmcgY29kZSBzaG91bGQgZ28gaW50byB0
aGUgRFJNIGNvcmUgPwo+Pj4KPj4+IEluIGFueSBjYXNlLCBwbGVhc2UgYWRkIG1vcmUgZGV0YWls
cyBvbiB0aGUgY292ZXIgbGV0dGVyLCBpbmNsdWRpbmcgdGhlCj4+PiBkZXRhaWxlZAo+Pj4gSFcg
ZGlmZmVycmVuY2UgYW5kIHRoZSBkZXNpZ24geW91IGNob3NlIHNvIHN1cHBvcnQgdGhpcyBuZXcg
SVAuCj4+Cj4+IEFuZHksIGNvdWxkIHlvdSBwbGVhc2UgaGVscCB3aXRoIGEgc3VtbWFyeSBvZiB0
aGUgSFcgY2hhbmdlcz8KPj4gVGhlIGluZm9ybWF0aW9uIEkgY291bGQgcHJvdmlkZSBpcyByYXRo
ZXIgbGltaXRlZCwgc2luY2UgSSBkb24ndCBoYXZlCj4+IGFjY2VzcyB0byBhbnkgRFcgSVAgZGF0
YXNoZWV0cyBhbmQgSSdtIGFsc28gbm90IGZhbWlsaWFyIGVub3VnaCB3aXRoIHRoZQo+PiBvbGQg
dmFyaWFudC4KPj4KPiAgIEFjY3VyYXRlbHksIHdlIHNob3VsZCByZWZlciB0byBpdCBhcyBhbiBl
bnRpcmVseSBuZXcgSVDvvIxpdCBoYXMgbm90aGluZyBpbiBjb21tb24gd2l0aAo+IHRoZSBjdXJy
ZW50IG1haW5saW5lIGR3LWhkbWnjgIIgVGhlIG9ubHkgIGNvbW1vbmFsaXR5IGlzIHRoYXQgdGhl
eSBib3RoIGNvbWUgZnJvbQo+IFN5bm9wc3lzIERlc2lnbldhcmXvvJoKPiDvvIgx77yJSXQgaGFz
IGEgMTAwJSBkaWZmZXJlbnQgcmVnaXN0ZXIgbWFwcGluZwo+IO+8iDLvvIlJdCBzdXBwb3J0cyBG
UkwgYW5kIERTQwo+IO+8iDPvvIlkaWZmZXJlbnQgY29uZmlndXJhdGlvbiBmbG93IGluIG1hbnkg
cGxhY2Vz44CCCj4gCj4gU28gSSBoYXZlIHRoZSBzYW1lIGZlZWxpbmcgd2l0aCBIZWlrbyBhbmQg
TWF4aW1l77yaCj4gVGhlIERXX0hETUlfUVAgc2hvdWxkIGhhdmUgYSAgc2VwYXJhdGUgZHJpdmVy
IGFuZCB3aXRoIGl0J3MgIG93biBDT05GSUcgIHN1Y2ggYXMgRFJNX0RXX0hETUlfUVAgIGluIEtj
b25maWcuCj4gYW5kIHRoZSByb2NrY2hpcCBwYXJ0IHNob3VsZCBhbHNvIGJlIHNwbGl0IGZyb20g
ZHdfaGRtaS1yb2NrY2hpcC5jLgo+IEkgYW0gc29ycnkgd2UgbWl4ZWQgdGhlbSBpbiBkd19oZG1p
LXJvY2tjaGlwLmMgd2hlbiB3ZSBkZXZlbG9wIHRoZSBic3AgZHJpdmVy77yMYnV0IHdlIHJlYWxs
eSByZWdyZXR0ZWQgdGhpcyBkZWNpc2lvbgo+IHdoZW4gIHdlIHJlcGVhdGVkbHkgYnJva2UgY29t
cGF0aWJpbGl0eSB3aXRoIGR3LWhkbWkgb24gb3RoZXIgc29jc+OAggoKWWVzIHBsZWFzZSwgYW5k
IGFzIEkgc2F5LCBpZiB0aGVyZSdzIGNvZGUgY29tbW9uIHdpdGggdGhlIG9sZCBkdy1oZG1pLCBw
bGVhc2UgYWRkIGEgY29tbW9uCm1vZHVsZSBpZiB0aGlzIGNvZGUgY2FuJ3QgYmUgbW92ZWQgaW4g
Y29yZSBicmlkZ2UgaGVscGVycy4KCk5laWwKCj4gCj4gCj4gCj4+PiBOZWlsCj4+Pgo+Pj4+Cj4+
Pj4gU3lub3BzaXMgYWxzbyBjcmVhdGVkIGEgbmV3IGRzaSBjb250cm9sbGVyIGZvciB0aGUgRFNJ
MiBzdGFuZGFyZCwgd2l0aAo+Pj4+IGEgdmFzdGx5IGRpZmZlcmVudCByZWdpc3RlcnMgbGF5b3V0
Lgo+Pj4+Cj4+Pj4gSSBndWVzcyBhdCBzb21lIHBvaW50IHRoZXJlIGlzIHRpbWUgdG8gc2F5IHRo
aXMgcmVhbGx5IGlzIGEgbmV3IElQIDstKSAuCj4+Pj4KPj4+Pgo+Pj4+IFRob3VnaCB3aGlsZSBv
biB0aGF0IHRob3VnaHQsIEkgZG9uJ3QgZnVsbHkgdW5kZXJzdGFuZCB3aHkgYm90aCBhCj4+Pj4g
Y29tcGlsZWQKPj4+PiB1bmRlciB0aGUgZHdfaGRtaSBrY29uZmlnIHN5bWJvbC4gUGVvcGxlIGdv
aW5nIGZvciBhIG1pbmltYWwga2VybmVsIG1pZ2h0Cj4+Pj4gd2FudCBvbmUgb3IgdGhlIG90aGVy
LCBidXQgbm90IGJvdGggZm9yIHRoZWlyIHNwZWNpZmljIGJvYXJkLgo+Pgo+PiBJbmRlZWQsIGl0
IG1ha2VzIHNlbnNlIHRvIGhhdmUgYSBkZWRpY2F0ZWQgS2NvbmZpZyBvcHRpb24uIFRoaXMgaXMK
Pj4gbW9zdGx5IGEgbGVmdG92ZXIgZnJvbSBkb3duc3RyZWFtIGltcGxlbWVudGF0aW9uLCB3aWxs
IGZpeCBpbiB2Mi4KPj4KPj4gVGhhbmtzIGFnYWluLAo+PiBDcmlzdGlhbgo+Pgo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdAo+PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
Pj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
