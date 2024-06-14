Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8559C27C6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 08:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ajzqtfLKyPy8o+ZySwI8NNhQC/1KLkqrh48GjvmvD/g=; b=A2SFdM1laxnEQmKl41RYA/pePZ
	Rd/Vuu2tPV/rbeBeKmyAP/+n8KmDAIDkTqG9f+W0jle6Ne4T+tAqa6hiyuSwrNbX8q5lfH/SSIRb7
	FoTSB7btO1/Y6EJWrkZ7sxz7YloucB9UgM9jduGAatraTsCk86ne/GM3OmIae7w+pW6X+pG20lOmX
	KFgs0rTEtkdeTxLG19/hUMT89CZCUpCVsYo1riBlCokNWgZyyW8mRJ2uMBfHlUCeR7WVATpCPg+iJ
	sisQw99M0bqpd5/wHIKN9gKJBADZdyTOZ0P4XPFnGWoBIRzVeGvPuYIhRt+m5x4HtPAlzGTpz612z
	LQSRMIaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI2Sm-0000000235B-3Ca6;
	Fri, 14 Jun 2024 08:39:12 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI2Si-0000000232g-3TgJ
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jun 2024 08:39:11 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-35f2c0b7701so1167091f8f.0
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2024 01:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718354347; x=1718959147; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gyw6TIQZ0Xcni+LNb3JwKvBdl1n46DFQH3QxBDRHvF0=;
        b=zBgm6Rg7345s2RrSM3GXTUC9sak9oKhlS25XgSs37eeV2Wya19Z1k1EKOr83VxIm7D
         DD21STE2GUvnswdAv6xlOtJ5HddY0nK4xlHp8ISKxnr3jSU+/eVdtSMYSx4V30F8V1c2
         MIhbwTOheYHHIf4AeTKURvegAiLsBGIyAiwFu0Hy6YlBZPVKNM6bvLq7Jxt0L9T2jEkX
         ch/4r95oCTYA2tJPXgSfxxyfUag8ynBt3QI8gsrULyj5D+oK1x3p7GXGkNhL5POxwQi3
         AVkLsHml8obgJr4F+PtLnZ51Y9oaRqMfvF1ydm5WGOAtiPd3O1HGlpDGas1RvMmdYkcK
         efYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718354347; x=1718959147;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gyw6TIQZ0Xcni+LNb3JwKvBdl1n46DFQH3QxBDRHvF0=;
        b=OlXqm0Kbr2h1hhEO/dHf4pM434dAGs8/ZW/BNBrt6DQtpMbOmwvKURrymT46UggoQd
         6VjWhh4+0ZxokbqWA76kVMI2sh8xjbswZgwJDq4uBm1GvBkxm102azM73DxEQfjleChx
         E/bMEWmFTAEMrWI/NyvEViow/CQm06Jrv1LbRHTAxr3PvZCiGkDj/LSqV6rXfDPcGQD0
         LLxwOLHb9KX5ASXT0axsNF4wfk0cnzpDiRkVJANJZqQPKJ/HGO89C2DTLKgehS7cgfbi
         5QABGhpPhEhUWrFXujAbXqOzzdb8Ps9wm7+tZHiYpSSL+//sC1vGHvZ3MV0SeHrwqkI2
         76Ig==
X-Forwarded-Encrypted: i=1; AJvYcCWmq0mipeE6EQbb/OAwRzukRp0rddsjeYBLjOFjtoxj23cUTti7nH9IDi+Lbnv8y447RllXmcdCuFvoQIlznDPfDDR8iyu2+8lTMfUjGU2talXK
X-Gm-Message-State: AOJu0Yx8GkwKfsaSM0VZfGmvI+qr2cMVd5mfCLL3/mSt11yEHyy0GmNU
	MeDAWCo51+FtEXorQagnc60Yt0hA+a5DIAwhY1kEApAYlO/NbTH5UiOpvO+w7ho=
X-Google-Smtp-Source: AGHT+IGhakMQyioBHsX0F33tZUElM2k7k/HiK58xnch8pvg3F+O/gic2pejzHdQ0R1UImKTvpQJZYA==
X-Received: by 2002:adf:f04f:0:b0:35f:2551:b967 with SMTP id ffacd0b85a97d-360718de62emr5139003f8f.16.1718354346939;
        Fri, 14 Jun 2024 01:39:06 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:261a:269e:a3a8:a2cc? ([2a01:e0a:982:cbb0:261a:269e:a3a8:a2cc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-360750f249csm3717924f8f.75.2024.06.14.01.39.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jun 2024 01:39:06 -0700 (PDT)
Message-ID: <37e7b6a5-5345-48cb-996f-c50ec935cded@linaro.org>
Date: Fri, 14 Jun 2024 10:39:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 13/14] drm/bridge: synopsys: Add DW HDMI QP TX controller
 driver
To: Andy Yan <andyshrk@163.com>
Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Sam Ravnborg <sam@ravnborg.org>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <20240601-b4-rk3588-bridge-upstream-v1-13-f6203753232b@collabora.com>
 <20240601143226.GA2003970@ravnborg.org>
 <59519381-2729-4839-9882-65a981a0c551@collabora.com>
 <20240604204110.GA84949@ravnborg.org>
 <f656c72e-fac8-4345-9b65-1031ebe81c25@collabora.com>
 <304b4602-8722-4ed0-a555-8dada573ee79@collabora.com>
 <5dc16b34-d638-4fab-84e1-cb7db08ad80e@linaro.org>
 <2d8e9235.68f3.19015881d35.Coremail.andyshrk@163.com>
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
In-Reply-To: <2d8e9235.68f3.19015881d35.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_013908_964642_AB922D2F 
X-CRM114-Status: GOOD (  33.16  )
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

T24gMTQvMDYvMjAyNCAwODo1NiwgQW5keSBZYW4gd3JvdGU6Cj4gCj4gCj4gCj4gCj4gCj4gCj4g
Cj4gSGkgTmVpbO+8jAo+IAo+IEF0IDIwMjQtMDYtMDUgMTk6NDg6MDksICJOZWlsIEFybXN0cm9u
ZyIgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc+IHdyb3RlOgo+PiBPbiAwNS8wNi8yMDI0IDEy
OjExLCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3JvdGU6Cj4+PiBPbiA2LzUvMjQgMTI6MzQgQU0sIENy
aXN0aWFuIENpb2NhbHRlYSB3cm90ZToKPj4+PiBPbiA2LzQvMjQgMTE6NDEgUE0sIFNhbSBSYXZu
Ym9yZyB3cm90ZToKPj4+Pj4gSGkgQ3Jpc3RpYW4uCj4+Pj4+Cj4+Pj4+IE9uIFR1ZSwgSnVuIDA0
LCAyMDI0IGF0IDEwOjMyOjA0UE0gKzAzMDAsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90ZToKPj4+
Pj4+IEhpIFNhbSwKPj4+Pj4+Cj4+Pj4+PiBPbiA2LzEvMjQgNTozMiBQTSwgU2FtIFJhdm5ib3Jn
IHdyb3RlOgo+Pj4+Pj4+IEhpIENyaXN0aWFuLAo+Pj4+Pj4+Cj4+Pj4+Pj4gYSBmZXcgZHJpdmUt
YnkgY29tbWVudHMgYmVsb3cuCj4+Pj4+Pj4KPj4+Pj4+PiAJU2FtCj4+Pj4+Pj4KPj4+Pj4+Pgo+
Pj4+Pj4+PiArCj4+Pj4+Pj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3JfZnVu
Y3MgZHdfaGRtaV9xcF9jb25uZWN0b3JfZnVuY3MgPSB7Cj4+Pj4+Pj4+ICsJLmZpbGxfbW9kZXMg
PSBkcm1faGVscGVyX3Byb2JlX3NpbmdsZV9jb25uZWN0b3JfbW9kZXMsCj4+Pj4+Pj4+ICsJLmRl
dGVjdCA9IGR3X2hkbWlfY29ubmVjdG9yX2RldGVjdCwKPj4+Pj4+Pj4gKwkuZGVzdHJveSA9IGRy
bV9jb25uZWN0b3JfY2xlYW51cCwKPj4+Pj4+Pj4gKwkuZm9yY2UgPSBkd19oZG1pX3FwX2Nvbm5l
Y3Rvcl9mb3JjZSwKPj4+Pj4+Pj4gKwkucmVzZXQgPSBkcm1fYXRvbWljX2hlbHBlcl9jb25uZWN0
b3JfcmVzZXQsCj4+Pj4+Pj4+ICsJLmF0b21pY19kdXBsaWNhdGVfc3RhdGUgPSBkcm1fYXRvbWlj
X2hlbHBlcl9jb25uZWN0b3JfZHVwbGljYXRlX3N0YXRlLAo+Pj4+Pj4+PiArCS5hdG9taWNfZGVz
dHJveV9zdGF0ZSA9IGRybV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rvcl9kZXN0cm95X3N0YXRlLAo+
Pj4+Pj4+PiArfTsKPj4+Pj4+Pj4gKwo+Pj4+Pj4+PiArc3RhdGljIGludCBkd19oZG1pX3FwX2Jy
aWRnZV9hdHRhY2goc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSwKPj4+Pj4+Pj4gKwkJCQkgICAg
ZW51bSBkcm1fYnJpZGdlX2F0dGFjaF9mbGFncyBmbGFncykKPj4+Pj4+Pj4gK3sKPj4+Pj4+Pj4g
KwlzdHJ1Y3QgZHdfaGRtaSAqaGRtaSA9IGJyaWRnZS0+ZHJpdmVyX3ByaXZhdGU7Cj4+Pj4+Pj4+
ICsKPj4+Pj4+Pj4gKwlpZiAoZmxhZ3MgJiBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1Ip
Cj4+Pj4+Pj4+ICsJCXJldHVybiBkcm1fYnJpZGdlX2F0dGFjaChicmlkZ2UtPmVuY29kZXIsIGhk
bWktPm5leHRfYnJpZGdlLAo+Pj4+Pj4+PiArCQkJCQkgYnJpZGdlLCBmbGFncyk7Cj4+Pj4+Pj4+
ICsKPj4+Pj4+Pj4gKwlyZXR1cm4gZHdfaGRtaV9jb25uZWN0b3JfY3JlYXRlKGhkbWksICZkd19o
ZG1pX3FwX2Nvbm5lY3Rvcl9mdW5jcyk7Cj4+Pj4+Pj4+ICt9Cj4+Pj4+Pj4KPj4+Pj4+PiBBcmUg
dGhlcmUgYW55IHVzZXJzIGxlZnQgdGhhdCByZXF1aXJlcyB0aGUgZGlzcGxheSBkcml2ZXIgdG8g
Y3JlYXRlIHRoZQo+Pj4+Pj4+IGNvbm5lY3Rvcj8KPj4+Pj4+PiBJbiBvdGhlciB3b3JkcyAtIGNv
dWxkIHRoaXMgZHJpdmVyIGZhaWwgaWYgRFJNX0JSSURHRV9BVFRBQ0hfTk9fQ09OTkVDVE9SCj4+
Pj4+Pj4gaXMgbm90IHBhc3NlZCBhbmQgZHJvcCBkd19oZG1pX2Nvbm5lY3Rvcl9jcmVhdGUoKT8K
Pj4+Pj4+Pgo+Pj4+Pj4+IEkgZGlkIG5vdCB0cnkgdG8gdmVyaWZ5IHRoaXMgLSBqdXN0IGEgbmFp
dmUgcXVlc3Rpb24uCj4+Pj4+Pgo+Pj4+Pj4gSSd2ZSBqdXN0IHRlc3RlZCB0aGlzIGFuZCBpdCBk
b2Vzbid0IHdvcmsgLSBkd19oZG1pX2Nvbm5lY3Rvcl9jcmVhdGUoKQo+Pj4+Pj4gaXMgc3RpbGwg
bmVlZGVkLgo+Pj4+Pgo+Pj4+PiBIbW0sIHNlZW1zIHRoZSBkaXNwbGF5IGRyaXZlciBvciBzb21l
IG90aGVyIGJyaWRnZSBkcml2ZXIgZmFpbHMgdG8KPj4+Pj4gc3VwcG9ydCAiRFJNX0JSSURHRV9B
VFRBQ0hfTk9fQ09OTkVDVE9SIi4KPj4+Pj4gd2hhdCBvdGhlciBkcml2ZXJzIGFyZSBpbnZvbHZl
ZD8KPj4+Pgo+Pj4+IENvdWxkIGl0IGJlIHJlbGF0ZWQgdG8gdGhlIGdsdWUgZHJpdmVyICh1cGRh
dGVkIGluIHRoZSBuZXh0IHBhdGNoKSB3aGljaAo+Pj4+IGlzIGFsc28gcmVzcG9uc2libGUgZm9y
IHNldHRpbmcgdXAgdGhlIGVuY29kZXI/Cj4+Pj4KPj4+Pj4gTm90ZSB0aGF0IG15IGNvbW1lbnRz
IGhlcmUgc2hvdWxkIGJlIHNlZW4gYXMgcG90ZW50aWFsIGZ1dHVyZQo+Pj4+PiBpbXByb3ZlbWVu
dHMsIGFuZCBkbyBub3QgYmxvY2sgdGhlIHBhdGNoIGZyb20gYmVpbmcgdXNlZC4KPj4+Pgo+Pj4+
IFRoYW5rcyBmb3IgdGhlIGhlYWRzIHVwISBXaWxsIHRyeSB0byBnZXQgYmFjayB0byB0aGlzIHNv
b24gYW5kIGludmVzdGlnYXRlLgo+Pj4gICAgCj4+PiBJSVVDLCBtb2Rlcm4gYnJpZGdlcyBzaG91
bGQgbm90IGNyZWF0ZSB0aGUgY29ubmVjdG9yIGJ1dCByZWx5IG9uIGRpc3BsYXkKPj4+IGRyaXZl
cnMgdG8gdGFrZSBjYXJlIG9mLCB3aGljaCBpbiB0aGlzIGNhc2UgaXMgdGhlIFZPUDIgZHJpdmVy
LiBIb3dldmVyLAo+Pj4gaXQgYWxzbyBoYW5kbGVzIHNvbWUgb2YgdGhlIG9sZGVyIFNvQ3MgcmVs
eWluZyBvbiB0aGUgbm9uLVFQIHZhcmlhbnQgb2YKPj4+IERXIEhETUkgSVAuIEhlbmNlIHRoZSBl
eGlzdGluZyBkdy1oZG1pIGRyaXZlciB3b3VsZCBiZSBhbHNvIGltcGFjdGVkIGluCj4+PiBvcmRl
ciB0byBjb21lIHVwIHdpdGggYSBwcm9wZXIgc29sdXRpb24uCj4+Pgo+Pj4gQSBxdWljayBjaGVj
ayBzaG93cyB0aGVyZSBhcmUgc2V2ZXJhbCB1c2VycyBvZiB0aGlzIElQOgo+Pj4KPj4+ICQgZ2l0
IGdyZXAgLUUgJz0gZHdfaGRtaV8oYmluZHxwcm9iZSlcKCcKPj4+IGRyaXZlcnMvZ3B1L2RybS9i
cmlkZ2UvaW14L2lteDhtcC1oZG1pLXR4LmM6ICAgIGhkbWktPmR3X2hkbWkgPSBkd19oZG1pX3By
b2JlKHBkZXYsIHBsYXRfZGF0YSk7Cj4+PiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lz
L2R3LWhkbWkuYzogICAgICBoZG1pID0gZHdfaGRtaV9wcm9iZShwZGV2LCBwbGF0X2RhdGEpOwo+
Pj4gZHJpdmVycy9ncHUvZHJtL2lteC9pcHV2My9kd19oZG1pLWlteC5jOiAgICAgICAgaGRtaS0+
aGRtaSA9IGR3X2hkbWlfcHJvYmUocGRldiwgbWF0Y2gtPmRhdGEpOwo+Pj4gZHJpdmVycy9ncHUv
ZHJtL2luZ2VuaWMvaW5nZW5pYy1kdy1oZG1pLmM6ICAgICAgaGRtaSA9IGR3X2hkbWlfcHJvYmUo
cGRldiwgJmluZ2VuaWNfZHdfaGRtaV9wbGF0X2RhdGEpOwo+Pj4gZHJpdmVycy9ncHUvZHJtL21l
c29uL21lc29uX2R3X2hkbWkuYzogIG1lc29uX2R3X2hkbWktPmhkbWkgPSBkd19oZG1pX3Byb2Jl
KHBkZXYsICZtZXNvbl9kd19oZG1pLT5kd19wbGF0X2RhdGEpOwo+Pj4gZHJpdmVycy9ncHUvZHJt
L3JlbmVzYXMvcmNhci1kdS9yY2FyX2R3X2hkbWkuYzogaGRtaSA9IGR3X2hkbWlfcHJvYmUocGRl
diwgJnJjYXJfZHdfaGRtaV9wbGF0X2RhdGEpOwo+Pj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L2R3X2hkbWktcm9ja2NoaXAuYzogICAgICAgICAgICBoZG1pLT5oZG1pID0gZHdfaGRtaV9iaW5k
KHBkZXYsIGVuY29kZXIsIHBsYXRfZGF0YSk7Cj4+PiBkcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3Vu
OGlfZHdfaGRtaS5jOiAgaGRtaS0+aGRtaSA9IGR3X2hkbWlfYmluZChwZGV2LCBlbmNvZGVyLCBw
bGF0X2RhdGEpOwo+Pj4KPj4+IEkgZGlkbid0IGNoZWNrIHdoaWNoIGRpc3BsYXkgZHJpdmVycyB3
b3VsZCBiZSBpbnZvbHZlZCwgSSdkIGd1ZXNzIHRoZXJlCj4+PiBhcmUgcXVpdGUgYSBmZXcgb2Yg
dGhlbSBhcyB3ZWxsLiBTbyBpdCBzZWVtcyB0aGlzIGVuZHMgdXAgYmVpbmcgYSBwcmV0dHkKPj4+
IGNvbXBsZXggdGFzay4KPj4KPj4gSWYgdGhpcyB3b3VsZCBiZSBhIGJyYW5kIG5ldyBkcml2ZXIs
IHRoZW4gaXQgc2hvdWxkIG9ubHkgc3VwcG9ydCBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNU
T1IsCj4+IHNvIHlvdSBzaG91bGQgbm90IGNyZWF0ZSBhIGNvbm5lY3RvciBmcm9tIHRoZSBkcml2
ZXIuCj4+Cj4+IFRoZSBmYWN0IGR3LWhkbWkgYWNjZXB0cyBhbiBhdHRhY2ggd2l0aG91dCB0aGUg
ZmxhZyBpcyBmb3IgbGVnYWN5IHB1cnBvc2UKPj4gc2luY2Ugc29tZSBEUk0gZHJpdmVycyBoYXZl
bid0IHN3aXRjaGVkIHRvIERSTV9CUklER0VfQVRUQUNIX05PX0NPTk5FQ1RPUiB5ZXMsCj4+IGJ1
dCBpdCdzIGEgcmVxdWlyZW1lbnQgZm9yIG5ldyBicmlkZ2VzIHNvIGF0IHNvbWUgcG9pbnQgeW91
J2xsIG5lZWQgdG8gbWFrZQo+PiBzdXJlIHRoZSByb2NrY2hpcCBnbHVlIGFuZCBkcm0gZHJpdmVy
IHN1cHBvcnRzIERSTV9CUklER0VfQVRUQUNIX05PX0NPTk5FQ1RPUi4KPj4KPj4gVGhpcyB3aWxs
IGdyZWF0bHkgc2ltcGxpZnkgdGhlIGRyaXZlciEKPiAKPiBCYXNlZCBvbiB0aGUgcHJldmlvdXMg
ZGlzY3Vzc2lvbu+8jCB0aGUgRFcgSERNSSBRUCBkcml2ZXJzIHdpbGwgYmUgaW1wbGVtZW50ZWQg
bGlrZSB0aGlz77yaCj4gCj4gQ29yZSBicmlkZ2UgbGlicmFyee+8mgo+ICAgZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLXFwLmMKPiBSb2NrY2hpcCBwbGF0Zm9ybSBzcGVj
aWZpYyBnbHVl77yaCj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2No
aXAuYwo+IAo+IEFzIGEgbmV3IGJyaWRnZSBkcml2ZXIgc2hvdWxkIG9ubHkgc3VwcG9ydCBEUk1f
QlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1IsCj4gSXMgaXQgYWNjZXB0YWJsZSBpZiB3ZSBpbXBs
ZW1lbnQgdGhlIGNvbm5lY3RvciBhdCAgdGhlIHJvY2tjaGlwIGdsdWUgZHdfaGRtaV9xcC1yb2Nr
Y2hpcC5jIO+8nwo+IAo+IE91ciBjdXJyZW50IGNvbWJpbmF0aW9uIGlzIGEgYml0IGNvbXBsZXjv
vJoKPiBUaGUgZGlzcGxheSBjb250cm9sbGVyIGRyaXZlciBpcyAgZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMg77yMd2hpY2ggc2hhcmVkCj4gYnkgcmszNTY477yM
IHJrMzU4OCBhbmQgc29tZSB1cGNvbWluZyBzb2MgbGlrZSByazM1MjgvcmszNTYyLgo+IAo+IEZv
ciByazM1ODjvvIwgd2UgaGF2ZSB0b3RhbGx5IG5ldyBIRE1J44CBRFDjgIFEU0kyICBJUO+8jCB0
aGV5IG5lZWQgYnJhbmQgbmV3IGJyaWRnZSBkcml2ZXIgdGhhdAo+IHNob3VsZCBvbmx5IHN1cHBv
cnQgRFJNX0JSSURHRV9BVFRBQ0hfTk9fQ09OTkVDVE9S77yMIGFuZCB0aGVyZSBpcyBhbHNvIGFu
IGVEUCBvbiByazM1ODgKPiB1c2UgYW5hbG9naXhfZHBfY29yZS5jIHRoYXQgY3JlYXRlIGNvbm5l
Y3RvciBieSBhbmFsb2dpeF9kcCBicmlkZ2XjgIIKPiAKPiBGb3IgIHJrMzU2OO+8jCB0aGUgSERN
SS9lRFAvRFNJIElQIGFyZSBiYXNlZCBvbiBvbGQgSVDvvIwgdGhlIGNvcnJlc3BvbmRpbmcgZHJp
dmVycyBhcmUgZHctaGRtae+8jGFuYWxvZ2l4X2RwCj4gYW5kIGR3LW1pcGktZHNpLCB0aGV5IGJv
dGggY3JlYXRlIGRybSBjb25uZWN0b3IgYnkgaXQncyBicmlkZ2UgZHJpdmVyLiBBbmQgcmszNTI4
L3JrMzU2MiBhcmUgbGlrZSB0aGlzIHRvb+OAggo+IAo+IFNvIGlmIHdlIGNhbiBjcmVhdGUgZHJt
X2Nvbm5lY3RvciBhdCBnbHVlIHNpZGUgKHN1Y2ggYXMgZHdfaGRtaV9xcC1yb2NrY2hpcC5jKSwg
bGV0IHRoZSBpbnRlcmZhY2UgZHJpdmVyIGRlY2lkZQo+IGlmIGl0IHNob3VsZCBjcmVhdGUgZHJt
X2Nvbm5lY3RvciBvciBub3Qgd2lsbCBtYWtlIHRoZSB2b3AyIGRyaXZlciBzaW1wbGVy44CCCgpJ
IHRoaW5rIHlvdSBzaG91bGQgc3RhcnQgbWlncmF0aW9uIHRvIGRybV9icmlkZ2VfY29ubmVjdG9y
IGluc3RlYWQgb2YgaGFja2luZyBkd19oZG1pX3FwLXJvY2tjaGlwLmMgaW50bwpmaXR0aW5nIGlu
dG8gRFJNX0JSSURHRV9BVFRBQ0hfTk9fQ09OTkVDVE9SLgoKWW91J2xsIGFkZCB0ZWNobmljYWwg
ZGVwdCwgYW5kIHRoZSBtaWdyYXRpb24gd2lsbCBiZSBldmVuIGhhcmRlciBhZnRlcndhcmRzLgoK
QnV0IGluIGFueSBjYXNlLCBicmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5jIGFuZCByb2NrY2hp
cC9kd19oZG1pX3FwLXJvY2tjaGlwLmMgc2hvdWxkIGJlIHNlbmQKaW4gdHdvIHNlcGFyYXRlIHBh
dGNoc2V0cywgc28gaG93IHJvY2tjaGlwIERSTV9CUklER0VfQVRUQUNIX05PX0NPTk5FQ1RPUiBp
cyBhIGRpZmZlcmVudCBzdG9yeS4KCk5laWwKCj4gCj4gCj4gCj4gCj4gCj4+Cj4+IE5laWwKPj4K
Pj4+Cj4+PiBDcmlzdGlhbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
