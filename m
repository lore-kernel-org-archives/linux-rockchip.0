Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 665E4C49EA1
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Aug 2024 13:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCkZAOF5Whj1plX/HUM+vYjV8Or7AKepRlkbf3vXUk8=; b=yYXSGn2DEXeWN+
	HBuTKnT4byFYN4NnepWzCr6L64ut1Y9WmMExLbahXcmXk5mnhuCw7E9YO4BrTjIS0zHvB31Ddu1OM
	wEMJs+I5P1QqhrZKL50aH8Ae2vZfHhRSUxdYvicI2JqdPEAxM07Or7ysD42m+Hetp5EHRYPCLjZdn
	6uOJcPj/LlHx7CwNvi/ICeKZbm21i/1WNijc7NvZq8nNTTblo4dL57ZTwpt453L2ArXCMhRl8vmCA
	ZYvbNiO0Icc/86L1yqI80R9QSOGIA8g9Cjzx+0SYl6vAjVQonWwX4C5+pvcbbLWQh5WuikkXx9KR+
	w5vBgmi7LDklr3khvo1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saEka-0000000BT3i-3upT;
	Sat, 03 Aug 2024 13:24:48 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saEk4-0000000BSxY-0u8L;
	Sat, 03 Aug 2024 13:24:17 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2f029e9c9cfso135974541fa.2;
        Sat, 03 Aug 2024 06:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722691453; x=1723296253; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UzpCCTH0/xwvVQdxzEjUmceihmN3TBWI0uvCFLscZtY=;
        b=YF88HS8/7eL/H13rlNIWuu5oOWwVBCerQ3WfwZR8Hv5lRa8P2QiUgW8DrlAe8rHiZS
         SbcYeD2mnRWmE8AoWM38EcDgVmFHdO+q0Er0L/7dEHh8N/Yib7VA+0v/jh9kOmsvAyj0
         m1UiTXBZt9E5bd00q7qDUhyV16gkT6fwxdKU+9/TN/EyEiHtWv6bpBaw17cyK6B3Q254
         L0tDK6thRJ6JPf2GyVv5m8+94Bh9eqvtktR6vp6WAVs4nqELYiqOKi11WphraymhtQai
         Em7xXpCuog5xoo0xSFYfDZckVcZ0tzskSyhLCpoGaHM3dnyIs2BxBM57cgMCR1He3//G
         tOPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722691453; x=1723296253;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UzpCCTH0/xwvVQdxzEjUmceihmN3TBWI0uvCFLscZtY=;
        b=t+YkXqzNNF26uuS8Sa3uVJC/ka+AJHKX5YOmKguT0qXpED6Hz6EZkz6Sd2VuOl8Z+V
         gNwjsr7ZhZuL3e4kdSzB0Kj4rpFGU8e5O1cdVTlwubHoW59HXcUE+OmT7M1bP09EMCTm
         0ncv792ibWm1OVJEFhgRGg9MhPcfW8BnHAEut724qpWtcjzcfgJU3Ne0LWKLAG/JJy5a
         v5CC6ra+F6OlWvbl1P+tO6VDjKvZjV4fhZD7gSfJAIgb6O2F/Er56DXfuqQTtvivSBQL
         ssRqkdv+pnuYmXdf26whStfuW0Ql6he2JcHdSiNzZgHFZyL75tJXrooc/5zZsL9s+Bmd
         kr5A==
X-Forwarded-Encrypted: i=1; AJvYcCXfseqm3LTxuK4dfkMtVeXHxW9WezMZWrWryKGD1cLU/6atiW0074rQaAN7sbNZJBMFuWHWNwnf8oQpZiiTsHR+aEUsr9adbdh9VOGsjcc+cW9DRFcHrWpX8uvsqq6ynpGr7JjK846Y44ccL7qKq6WnGiwE5dMtetY=
X-Gm-Message-State: AOJu0Yw/jQWr2XT/qe01mNIG8hIa1AHksDVwK8jdy6z70JfksijCQ0Ep
	980DdakC6V9OdIx2yX4YwCNW66XH0S3NEuwOF/BQBSzdTuqtHAVi
X-Google-Smtp-Source: AGHT+IHxajhrVXECR8o0njI5ofrgVEj/uAk6WTxsocWIGcDjAW3f8TEqykfMjSBHeSmbargLx9MOqw==
X-Received: by 2002:a2e:b8c7:0:b0:2f1:5d61:937e with SMTP id 38308e7fff4ca-2f15d61943dmr51500231fa.29.1722691452413;
        Sat, 03 Aug 2024 06:24:12 -0700 (PDT)
Received: from smtpclient.apple (84-10-100-139.static.chello.pl. [84.10.100.139])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f16a9ded09sm2451181fa.109.2024.08.03.06.24.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Aug 2024 06:24:11 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.15\))
Subject: Re: [PATCH v2 0/3] Add initial support for the Rockchip RK3588 HDMI
 TX Controller
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20240801-b4-rk3588-bridge-upstream-v2-0-9fa657a4e15b@collabora.com>
Date: Sat, 3 Aug 2024 15:24:06 +0200
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org,
 kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
Message-Id: <45B07EAF-4CBA-4DE4-A03B-109767D52B29@gmail.com>
References: <20240801-b4-rk3588-bridge-upstream-v2-0-9fa657a4e15b@collabora.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
X-Mailer: Apple Mail (2.3654.120.0.1.15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240803_062416_284143_24FEE155 
X-CRM114-Status: GOOD (  34.18  )
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

SGkgQ3Jpc3RpYW4sCgpXaWxsIHlvdSBmaW5kIHNvbWUgdGltZSBhbmQgbW90aXZhdGlvbiB0byBh
ZGQgQ0VDIHN1cHBvcnQgdG8gUXVhZC1QaXhlbCAoUVApIFRYIGNvbnRyb2xsZXIgPwoKUHJvYmFi
bHkgeW91IHJlY2FsbCAtIEkgYWRkZWQgaW5pdGlhbCBDRUMgc3VwcG9ydCB0byB5b3VycyB2MSBz
ZXJpZXMgYW5kIGnigJltIHN0dWNrIHdpdGggdGltaW5nIGlzc3VlIChjZWMgcHVsc2VzIGFyZSAz
eCB0b28gbG9uZykuCkZvciBtZSBpdCBsb29rcyBsaWtlIGNsb2NrIGlzc3VlLgpJ4oCZbSBvdXQg
b2YgaWRlYXMgaG93IHRvIG1vdmUgZm9yd2FyZCB3aXRoIHRoaXMgdGltbWluZyBpc3N1ZeKApi4K
IAoKCj4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlz
dGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4gdyBkbml1IDAxLjA4LjIwMjQsIG8gZ29kei4g
MDQ6MjU6Cj4gCj4gVGhlIFJvY2tjaGlwIFJLMzU4OCBTb0MgZmFtaWx5IGludGVncmF0ZXMgdGhl
IFN5bm9wc3lzIERlc2lnbldhcmUgSERNSQo+IDIuMSBRdWFkLVBpeGVsIChRUCkgVFggY29udHJv
bGxlciBbNF0sIHdoaWNoIGlzIGEgbmV3IElQIGJsb2NrLCBxdWl0ZQo+IGRpZmZlcmVudCBmcm9t
IHRob3NlIHVzZWQgaW4gdGhlIHByZXZpb3VzIGdlbmVyYXRpb25zIG9mIFJvY2tjaGlwIFNvQ3Mu
Cj4gCj4gVGhpcyBpcyB0aGUgbGFzdCBjb21wb25lbnQgdGhhdCBuZWVkcyB0byBiZSBzdXBwb3J0
ZWQgaW4gb3JkZXIgdG8gZW5hYmxlCj4gdGhlIEhETUkgb3V0cHV0IGZ1bmN0aW9uYWxpdHkgb24g
dGhlIFJLMzU4OCBiYXNlZCBTQkNzLCBzdWNoIGFzIHRoZQo+IFJBRFhBIFJvY2sgNUIuIFRoZSBv
dGhlciBjb21wb25lbnRzIGFyZSB0aGUgVmlkZW8gT3V0cHV0IFByb2Nlc3Nvcgo+IChWT1AyKSBh
bmQgdGhlIFNhbXN1bmcgSVAgYmFzZWQgSERNSS9lRFAgVFggQ29tYm8gUEhZLCBmb3Igd2hpY2gg
YmFzaWMKPiBzdXBwb3J0IGhhcyBiZWVuIGFscmVhZHkgbWFkZSBhdmFpbGFibGUgdmlhIFsxXSBh
bmQgWzJdLCByZXNwZWN0aXZlbHkuCj4gCj4gUGxlYXNlIG5vdGUgdGhpcyBpcyBhIHJld29ya2Vk
IHZlcnNpb24gb2YgdGhlIG9yaWdpbmFsIHNlcmllcywgd2hpY2gKPiByZWxpZWQgb24gYSBjb21t
b25pemVkIGR3LWhkbWkgYXBwcm9hY2guICBTaW5jZSB0aGUgZ2VuZXJhbCBjb25zZW5zdXMKPiB3
YXMgdG8gaGFuZGxlIGl0IGFzIGFuIGVudGlyZWx5IG5ldyBJUCwgSSBkcm9wcGVkIGFsbCBwYXRj
aGVzIHJlbGF0ZWQgdG8KPiB0aGUgb2xkIGR3LWhkbWkgYW5kIFJvY2tjaGlwIGdsdWUgY29kZSAt
IGEgZmV3IG9mIHRoZW0gbWlnaHQgc3RpbGwgbWFrZQo+IHNlbnNlIGFzIGdlbmVyYWwgaW1wcm92
ZW1lbnRzIGFuZCB3aWxsIGJlIHN1Ym1pdHRlZCBzZXBhcmF0ZWx5Lgo+IAo+IEFkZGl0aW9uYWxs
eSwgYXMgc3VnZ2VzdGVkIGJ5IE5laWwsIEkndmUgc2VudCB0aGUgcmV3b3JrZWQgYnJpZGdlIGRy
aXZlcgo+IGFzIGEgc2VwYXJhdGUgcGF0Y2hzZXQgWzRdLCBoZW5jZSB0aGlzIHNlcmllcyBoYW5k
bGVzIG5vdyBqdXN0IHRoZSBuZXcKPiBSb2NrY2hpcCBRUCBwbGF0Zm9ybSBkcml2ZXIuCj4gCj4g
SXQncyB3b3J0aCBtZW50aW9uaW5nIHRoZSBIRE1JIG91dHB1dCBzdXBwb3J0IGlzIGN1cnJlbnRs
eSBsaW1pdGVkIHRvCj4gUkdCIG91dHB1dCB1cCB0byA0S0A2MEh6LCB3aXRob3V0IGF1ZGlvLCBD
RUMgb3IgYW55IG9mIHRoZSBIRE1JIDIuMQo+IHNwZWNpZmljIGZlYXR1cmVzLiAgTW9yZW92ZXIs
IHRoZSBWT1AyIGRyaXZlciBpcyBub3QgYWJsZSB0byBwcm9wZXJseQo+IGhhbmRsZSBhbGwgZGlz
cGxheSBtb2RlcyBzdXBwb3J0ZWQgYnkgdGhlIGNvbm5lY3RlZCBzY3JlZW5zLCBlLmcuIGl0Cj4g
ZG9lc24ndCBjb3BlIHdpdGggbm9uLWludGVnZXIgcmVmcmVzaCByYXRlcy4KPiAKPiBBIHBvc3Np
YmxlIHdvcmthcm91bmQgY29uc2lzdHMgb2YgZW5hYmxpbmcgdGhlIGRpc3BsYXkgY29udHJvbGxl
ciB0bwo+IG1ha2UgdXNlIG9mIHRoZSBjbG9jayBwcm92aWRlZCBieSB0aGUgSERNSSBQSFkgUExM
LiBUaGlzIGlzIHN0aWxsIHdvcmsKPiBpbiBwcm9ncmVzcyBhbmQgd2lsbCBiZSBzdWJtaXR0ZWQg
bGF0ZXIsIGFzIHdlbGwgYXMgdGhlIHJlcXVpcmVkIERUUwo+IHVwZGF0ZXMuCj4gCj4gVG8gZmFj
aWxpdGF0ZSB0ZXN0aW5nIGFuZCBleHBlcmltZW50YXRpb24sIGFsbCBIRE1JIG91dHB1dCByZWxh
dGVkCj4gcGF0Y2hlcywgaW5jbHVkaW5nIHRob3NlIHBhcnQgb2YgdGhpcyBzZXJpZXMsIGFzIHdl
bGwgYXMgdGhlIGJyaWRnZQo+IGRyaXZlciwgYXJlIGF2YWlsYWJsZSBhdCBbM10uCj4gCj4gU28g
ZmFyIEkgY291bGQgb25seSB2ZXJpZnkgdGhpcyBvbiB0aGUgUkFEWEEgUm9jayA1QiBib2FyZC4K
PiAKPiBUaGFua3MsCj4gQ3Jpc3RpYW4KPiAKPiBbMV06IDVhMDI4ZThmMDYyZiAoImRybS9yb2Nr
Y2hpcDogdm9wMjogQWRkIHN1cHBvcnQgZm9yIHJrMzU4OCIpCj4gWzJdOiA1NTNiZTI4MzBjNWYg
KCJwaHk6IHJvY2tjaGlwOiBBZGQgU2Ftc3VuZyBIRE1JL2VEUCBDb21ibyBQSFkgZHJpdmVyIikK
PiBbM106IGh0dHBzOi8vZ2l0bGFiLmNvbGxhYm9yYS5jb20vaGFyZHdhcmUtZW5hYmxlbWVudC9y
b2NrY2hpcC0zNTg4L2xpbnV4Ly0vY29tbWl0cy9yazM1ODgtaGRtaS1icmlkZ2UtdjYuMTEtcmMx
Cj4gWzRdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjQwODAxLWR3LWhkbWktcXAt
dHgtdjEtMC0xNDhmNTQyZGU1ZmRAY29sbGFib3JhLmNvbS8KPiAKPiBTaWduZWQtb2ZmLWJ5OiBD
cmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgo+IC0t
LQo+IENoYW5nZXMgaW4gdjI6Cj4gLSBSZXdvcmtlZCB0aGUgZ2x1ZSBjb2RlIGZvciBSSzM1ODgg
aW50byBhIG5ldyBSb2NrY2hpcCBwbGF0Zm9ybSBkcml2ZXIKPiAtIE1vdmVkIGJyaWRnZSBkcml2
ZXIgcGF0Y2hlcyB0byBhIHNlcGFyYXRlIHNlcmllcyBbNF0KPiAtIERyb3BwZWQgYWxsIHRoZSBw
YXRjaGVzIHRvdWNoaW5nIHRvIHRoZSBvbGQgZHctaGRtaSBhbmQgUksgcGxhdGZvcm0KPiAgZHJp
dmVycwo+IC0gQWRkZWQgY29ubmVjdG9yIGNyZWF0aW9uIHRvIGVuc3VyZSB0aGUgSERNSSBRUCBi
cmlkZ2UgZHJpdmVyIGRvZXMgb25seQo+ICBzdXBwb3J0IERSTV9CUklER0VfQVRUQUNIX05PX0NP
Tk5FQ1RPUgo+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI0MDYw
MS1iNC1yazM1ODgtYnJpZGdlLXVwc3RyZWFtLXYxLTAtZjYyMDM3NTMyMzJiQGNvbGxhYm9yYS5j
b20KPiAKPiAtLS0KPiBDcmlzdGlhbiBDaW9jYWx0ZWEgKDMpOgo+ICAgICAgZHQtYmluZGluZ3M6
IGRpc3BsYXk6IHJvY2tjaGlwOiBBZGQgc2NoZW1hIGZvciBSSzM1ODggSERNSSBUWCBDb250cm9s
bGVyCj4gICAgICBkcm0vcm9ja2NoaXA6IEV4cGxpY2l0bHkgaW5jbHVkZSBiaXRzIGhlYWRlcgo+
ICAgICAgZHJtL3JvY2tjaGlwOiBBZGQgYmFzaWMgUkszNTg4IEhETUkgb3V0cHV0IHN1cHBvcnQK
PiAKPiAuLi4vZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxkdy1oZG1pLXFwLnlhbWwgICAgICB8
IDE4OCArKysrKysrKysKPiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyAgICAgICAg
ICAgICAgICAgICB8ICAgOCArCj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL01ha2VmaWxlICAg
ICAgICAgICAgICAgICAgfCAgIDEgKwo+IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1p
X3FwLXJvY2tjaGlwLmMgICAgIHwgNDMwICsrKysrKysrKysrKysrKysrKysrKwo+IGRyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgICAgICAgIHwgICAyICsKPiBkcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5oICAgICAgICB8ICAgNCArLQo+
IDYgZmlsZXMgY2hhbmdlZCwgNjMyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAtLS0K
PiBiYXNlLWNvbW1pdDogMTYxM2U2MDRkZjBjZDM1OWNmMmE3ZmJkOWJlN2EwYmNmYWNmYWJkMAo+
IGNoYW5nZS1pZDogMjAyNDA2MDEtYjQtcmszNTg4LWJyaWRnZS11cHN0cmVhbS1hMjdiYWZmMWI4
ZmMKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
