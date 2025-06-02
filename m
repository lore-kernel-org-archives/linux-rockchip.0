Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 888B3C5B552
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Jun 2025 08:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLgoNCPkTKe+0DfnGv6bQI4ILKLobdL/CwWG8BsMJz4=; b=XcYeHeLSnwOJs3
	Pyuv/zEWhuplNROSq3cEKq4zwr8gsCBI2UJPs7sso2W0wo6IWd0Oo9FPYvYpa8Ef5Ca/g/Yzy+Yzv
	zy+kFOxit2jfChJgnmmcy1bLHNmKVMbZuc7iBudL8fCmE+6+iCEQqufibZuoIS+wIvUu80YPiOQMm
	pZjXUdVI7EVHtjTYE9y8b8VbWKWDVC3+X7HaLEaiTYennmHRAoon3u+YH8aCm5B33HLzEjZVAvG6A
	HOVAlsh/wB9gmRVpCebeb5zBKh3Aws4+2s2KKGvTPXPx86YmneuQ2QQi44Ls1MRO/E8SK1l9hOIAN
	I8udkCr7XP3qxquL8D9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM0MW-00000006yUV-1fds;
	Mon, 02 Jun 2025 08:17:40 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM0KH-00000006yJs-3b8p
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Jun 2025 08:15:24 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-e812fc35985so1033227276.0
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Jun 2025 01:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1748852119; x=1749456919; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IX5KaHY06tu+FKC0bEyE1X52oSF5H+UGj7sz8V9wh8Q=;
        b=FBi4bn1fqsgI8uZb3dN+01/gNbPXGPOaMC2k19HIQ1H6OEKYYmzgPmBFx6b3YzXTKZ
         d19peQW9tqmHMbekYJoUNo9NQYTod73AoBU7xvronlphYajXHXPotQor4JmTZuzi9on4
         iwtHwLXkGOVRODONrhbH3x4184V61JM5OCtWKSlDoOinSyzKrT/87RBALB8/k0JKphxh
         BQqMysQR+t+tHSle01sIY2DNGLimRfPs+rpWaBWTEQSOqP+ef+Q6C0JTT8IeoVNDYdVw
         Y7HaZrF+RtEaIV11+Y9c1bGT0QrPLeawBBZuZUT+io4zMqPGZ/p8JasuUlmftXwn2b08
         u2Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748852119; x=1749456919;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IX5KaHY06tu+FKC0bEyE1X52oSF5H+UGj7sz8V9wh8Q=;
        b=KPb/5EcfCDxWKRsqcqfjPGHIUS1SPzub6AGegS2hUdrrVR+b5HWzD0kv86PbuX6v6N
         KCLb7GWNcwooSlWMxaF+nfIV3jRf6dzf3J2f6C/A7kQfwV78zT99xmM3TwStd0GioLXG
         4YSWxDg4hvDPipsjWRTWkfRgAKRgeTYyPw+3KWKsos3R7oqZKsJrk0csteeZ+T7ZekjU
         r1JPH/vYCZJ7ZofjWm+xxDtA0HJ0acRTd7WG87bzdpu6SQG4K5j5MBfgVYEkqA0visY7
         JpQxhGdNLrDzC9VfipTxSu2ZIsTj4HjJ5gFBO5Hg1k21KYGueY3qwNajzfIawztH0Pc0
         AhCA==
X-Forwarded-Encrypted: i=1; AJvYcCXwc0OXDhi8QbrOoZpa7Kn9ni2Pb7N4E6L4uBRVfPGWuJM+aaH51rPHWZgjLHddzvNmrIYU3H23sYQaBDzq9g==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywoqeka4r19dRmFUeqHtqN6R6Kv6loRBjyXW1q/nJ3yKOU5dqPG
	RSg651RZLb3a89HKZK4pOj78Jjop3xK0W0jkAvhP0hucnDuAdz185wrN92wC2nJtQdm9MzbarF7
	AOl0lbns=
X-Gm-Gg: ASbGnctdcSkZ4yvmR6xvVIjljy+m1dVt71Xv1cyTcUSNIkn7CtzU7Y5nhRBf7JdUOn7
	UIvjYD4x9dWY0Z9+cO036U3ApqChv2+z/lx5nHlZeMQ7Jose+rLuPCBjoeBGm++UuihHngR1CmE
	aqncsqXLpoO6IZcNOkexmcrwequnW37s0PFzLv8+CFJ3oKAxXDmH6ltVeIflFOHxct4vACIkwqb
	aFF86FsKpWgizFRcrMkGs5Vxlzj997ry+tZkVZ7AD1R+amafo9e8gEtU9IXwYhQfjluegBaXeqp
	PDR54Hsyz4aq3yJbKnCj+r4bu63qHYSsn9jzeX5cZmC9YHUB7TLuOUMvpumiwBc6oOAIg2rvNsx
	k4l0exTnNICTnT7o2+vU2JgQy0rDIbw==
X-Google-Smtp-Source: AGHT+IEVoFPwGlpzmW72mTt3jvucmDVjzRo0NEMQel7zn2As3eZHTXxQaA/OWPvstjvj+YfAu6dqkA==
X-Received: by 2002:a05:6902:727:b0:e7d:cfd0:957f with SMTP id 3f1490d57ef6-e7f81dffd18mr16162789276.11.1748852119316;
        Mon, 02 Jun 2025 01:15:19 -0700 (PDT)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com. [209.85.219.176])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e7f733c9f9csm2127052276.17.2025.06.02.01.15.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jun 2025 01:15:19 -0700 (PDT)
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e7dc4e44b47so3647045276.3;
        Mon, 02 Jun 2025 01:15:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUWEsGBRe2Qsnnf4cKrz7IqGjeuliWUbzK0osoWCVwWbijkkgO+EOn2fvs4O8UVNOG2rjFTPlX1DW3E+uiz4Uof@lists.infradead.org, AJvYcCVvPDU5nO9KeUKJT4hCM1DKjkVA4L4Ty41TQVlSwisznlJAeCMaOmldffm2QbedrjjjznfEX0bsvHJ1bxCdI7w=@lists.infradead.org
X-Received: by 2002:a05:6902:723:b0:e7d:d830:41e0 with SMTP id
 3f1490d57ef6-e7f81e05026mr18622596276.12.1748852118798; Mon, 02 Jun 2025
 01:15:18 -0700 (PDT)
MIME-Version: 1.0
References: <20250520-6-10-rocket-v5-0-18c9ca0fcb3c@tomeuvizoso.net>
 <20250520-6-10-rocket-v5-1-18c9ca0fcb3c@tomeuvizoso.net> <CAL_Jsq+2mvUDWWvtPSryAiCNJP_=1vNRxARxWTS=-O-LTQO3Dg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+2mvUDWWvtPSryAiCNJP_=1vNRxARxWTS=-O-LTQO3Dg@mail.gmail.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Mon, 2 Jun 2025 10:15:07 +0200
X-Gmail-Original-Message-ID: <CAAObsKBPywWbe43AeY24P_13zH5m_BCb9arAhf+FVq+w=Z3j6A@mail.gmail.com>
X-Gm-Features: AX0GCFvNhfOr4abfwc18aAyYDuAfUB75c0n6dwgqbzT_BxLwdikrZIB5A8pfreA
Message-ID: <CAAObsKBPywWbe43AeY24P_13zH5m_BCb9arAhf+FVq+w=Z3j6A@mail.gmail.com>
Subject: Re: [PATCH v5 01/10] dt-bindings: npu: rockchip,rknn: Add bindings
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_011522_111075_F25FD1C6 
X-CRM114-Status: GOOD (  34.40  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUm9iLAoKW2FkZGluZyBLZXZlciB0byBDQ10KCk9uIFdlZCwgTWF5IDI4LCAyMDI1IGF0IDM6
NDHigK9QTSBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwg
TWF5IDIwLCAyMDI1IGF0IDU6MjfigK9BTSBUb21ldSBWaXpvc28gPHRvbWV1QHRvbWV1dml6b3Nv
Lm5ldD4gd3JvdGU6Cj4gPgo+ID4gQWRkIHRoZSBiaW5kaW5ncyBmb3IgdGhlIE5ldXJhbCBQcm9j
ZXNzaW5nIFVuaXQgSVAgZnJvbSBSb2NrY2hpcC4KPiA+Cj4gPiB2MjoKPiA+IC0gQWRhcHQgdG8g
bmV3IG5vZGUgc3RydWN0dXJlIChvbmUgbm9kZSBwZXIgY29yZSwgZWFjaCB3aXRoIGl0cyBvd24K
PiA+ICAgSU9NTVUpCj4gPiAtIFNldmVyYWwgbWlzYy4gZml4ZXMgZnJvbSBTZWJhc3RpYW4gUmVp
Y2hlbAo+ID4KPiA+IHYzOgo+ID4gLSBTcGxpdCByZWdpc3RlciBibG9jayBpbiBpdHMgY29uc3Rp
dHVlbnQgc3ViYmxvY2tzLCBhbmQgb25seSByZXF1aXJlCj4gPiAgIHRoZSBvbmVzIHRoYXQgdGhl
IGtlcm5lbCB3b3VsZCBldmVyIHVzZSAoTmljb2xhcyBGcmF0dGFyb2xpKQo+ID4gLSBHcm91cCBz
dXBwbGllcyAoUm9iIEhlcnJpbmcpCj4gPiAtIEV4cGxhaW4gdGhlIHdheSBpbiB3aGljaCB0aGUg
dG9wIGNvcmUgaXMgc3BlY2lhbCAoUm9iIEhlcnJpbmcpCj4gPgo+ID4gdjQ6Cj4gPiAtIENoYW5n
ZSByZXF1aXJlZCBub2RlIG5hbWUgdG8gbnB1QCAoUm9iIEhlcnJpbmcgYW5kIEtyenlzenRvZiBL
b3psb3dza2kpCj4gPiAtIFJlbW92ZSB1bm5lZWRlZCBpdGVtczogKEtyenlzenRvZiBLb3psb3dz
a2kpCj4gPiAtIEZpeCB1c2Ugb2YgbWluSXRlbXMvbWF4SXRlbXMgKEtyenlzenRvZiBLb3psb3dz
a2kpCj4gPiAtIEFkZCByZWctbmFtZXMgdG8gbGlzdCBvZiByZXF1aXJlZCBwcm9wZXJ0aWVzIChL
cnp5c3p0b2YgS296bG93c2tpKQo+ID4gLSBGaXggZXhhbXBsZSAoS3J6eXN6dG9mIEtvemxvd3Nr
aSkKPiA+Cj4gPiB2NToKPiA+IC0gUmVuYW1lIGZpbGUgdG8gcm9ja2NoaXAscmszNTg4LXJrbm4t
Y29yZS55YW1sIChLcnp5c3p0b2YgS296bG93c2tpKQo+ID4gLSBTdHJlYW1saW5lIGNvbXBhdGli
bGUgcHJvcGVydHkgKEtyenlzenRvZiBLb3psb3dza2kpCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTog
U2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBUb21ldSBWaXpvc28gPHRvbWV1QHRvbWV1dml6b3NvLm5ldD4KPiA+IC0t
LQo+ID4gIC4uLi9iaW5kaW5ncy9ucHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS55YW1sICAg
IHwgMTQ3ICsrKysrKysrKysrKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNDcgaW5z
ZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9ucHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS55YW1s
Cj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMC4uOWViNDI2MzY3YWZjYmMwM2MzODdkNDNjNGI4MjUwY2RkMWI5
ZWU4Ngo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL25wdS9yb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwKPiA+IEBAIC0wLDAg
KzEsMTQ3IEBACj4gPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBP
UiBCU0QtMi1DbGF1c2UpCj4gPiArJVlBTUwgMS4yCj4gPiArLS0tCj4gPiArJGlkOiBodHRwOi8v
ZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9ucHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS55YW1s
Iwo+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55
YW1sIwo+ID4gKwo+ID4gK3RpdGxlOiBOZXVyYWwgUHJvY2Vzc2luZyBVbml0IElQIGZyb20gUm9j
a2NoaXAKPiA+ICsKPiA+ICttYWludGFpbmVyczoKPiA+ICsgIC0gVG9tZXUgVml6b3NvIDx0b21l
dUB0b21ldXZpem9zby5uZXQ+Cj4gPiArCj4gPiArZGVzY3JpcHRpb246Cj4gPiArICBSb2NrY2hp
cCBJUCBmb3IgYWNjZWxlcmF0aW5nIGluZmVyZW5jZSBvZiBuZXVyYWwgbmV0d29ya3MsIGJhc2Vk
IG9uIE5WSURJQSdzCj4gPiArICBvcGVuIHNvdXJjZSBOVkRMQSBJUC4KPiA+ICsKPiA+ICsgIFRo
ZXJlIGlzIHRvIGJlIGEgbm9kZSBwZXIgZWFjaCBjb3JlIGluIHRoZSBOUFUuIEluIFJvY2tjaGlw
J3MgZGVzaWduIHRoZXJlCj4gPiArICB3aWxsIGJlIG9uZSBjb3JlIHRoYXQgaXMgc3BlY2lhbCBh
bmQgbmVlZHMgdG8gYmUgcG93ZXJlZCBvbiBiZWZvcmUgYW55IG9mIHRoZQo+ID4gKyAgb3RoZXIg
Y29yZXMgY2FuIGJlIHVzZWQuIFRoaXMgc3BlY2lhbCBjb3JlIGlzIGNhbGxlZCB0aGUgdG9wIGNv
cmUgYW5kIHNob3VsZAo+ID4gKyAgaGF2ZSB0aGUgY29tcGF0aWJsZSBzdHJpbmcgdGhhdCBjb3Jy
ZXNwb25kcyB0byB0b3AgY29yZXMuCj4KPiBJcyB0aGlzIHJlYWxseSBhIGRpc3RpbmN0aW9uIGlu
IHRoZSBoL3c/IElmIHlvdSBjaGFuZ2Ugd2hpY2ggY29yZSBpcwo+IHRoZSB0b3Agb25lIGluIHRo
ZSBEVCwgZG9lcyBpdCBzdGlsbCB3b3JrPwo+Cj4gPiArCj4gPiArcHJvcGVydGllczoKPiA+ICsg
ICRub2RlbmFtZToKPiA+ICsgICAgcGF0dGVybjogJ15ucHVAW2EtZjAtOV0rJCcKPiA+ICsKPiA+
ICsgIGNvbXBhdGlibGU6Cj4gPiArICAgIGVudW06Cj4gPiArICAgICAgLSByb2NrY2hpcCxyazM1
ODgtcmtubi1jb3JlLXRvcAo+ID4gKyAgICAgIC0gcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZQo+
ID4gKwo+ID4gKyAgcmVnOgo+ID4gKyAgICBtYXhJdGVtczogMwo+ID4gKwo+ID4gKyAgcmVnLW5h
bWVzOgo+ID4gKyAgICBpdGVtczoKPiA+ICsgICAgICAtIGNvbnN0OiBwYwo+ID4gKyAgICAgIC0g
Y29uc3Q6IGNuYQo+ID4gKyAgICAgIC0gY29uc3Q6IGNvcmUKPiA+ICsKPiA+ICsgIGNsb2NrczoK
PiA+ICsgICAgbWluSXRlbXM6IDIKPiA+ICsgICAgbWF4SXRlbXM6IDQKPiA+ICsKPiA+ICsgIGNs
b2NrLW5hbWVzOgo+ID4gKyAgICBpdGVtczoKPiA+ICsgICAgICAtIGNvbnN0OiBhY2xrCj4gPiAr
ICAgICAgLSBjb25zdDogaGNsawo+ID4gKyAgICAgIC0gY29uc3Q6IG5wdQo+ID4gKyAgICAgIC0g
Y29uc3Q6IHBjbGsKPiA+ICsgICAgbWluSXRlbXM6IDIKPgo+IEl0IGlzIG9kZCB0aGF0IHRoZSBu
b24tdG9wIGNvcmVzIG9ubHkgaGF2ZSBidXMgY2xvY2tzIGFuZCBubyBtb2R1bGUKPiBjbG9jay4K
CkknbSBub3Qgc3VyZSBJIGdldCB3aGF0IHlvdSBtZWFuIGJ5IG1vZHVsZSBjbG9jaywgYnV0IHRo
ZSBUUk0gc2F5cyB0aGlzOgoKIjM2LjUuMiBDbG9jayBhbmQgUmVzZXQKMS41LjIuMSBDbG9jayBE
b21haW5zClJLTk4gaGFzIHR3byBjbG9jayBkb21haW5zLCBvbmUgaXMgQUhCIGNsb2NrLCB0aGUg
b3RoZXIgaXMgQVhJIGNsb2NrLgpBSEIgY2xvY2ssIHdoaWNoIGlzCnRoZSBjbG9jayBmb3IgQUhC
IGludGVyZmFjZSwgd2hpbGUgQVhJIGNsb2NrLCB3aGljaCBpcyB0aGUgY2xvY2sgZm9yCkFYSSBp
bnRlcmZhY2UuIEFYSSBjbG9jawphbHNvIHVzZWQgZm9yIGNvcmUgY2xvY2sgZm9yIGV2ZXJ5IENh
bGN1bGF0ZSBDb3JlIGFuZCBDb250cm9sIENvcmUuCkNsb2NrIGZyZXF1ZW5jeSBjYW4gYmUKY29u
dHJvbGxlZCBieSBDUlUsIHBsZWFzZSByZWZlciB0byB0aGUgcmVsZXZhbnQgc2VjdGlvbnMuIEF1
dG9tYXRpYwpsb2NhbGl6ZWQgY2xvY2sgZ2F0aW5nIGlzCmVtcGxveWVkIHRocm91Z2hvdXQgdGhl
IGRlc2lnbiBpbiBvcmRlciB0byBtaW5pbWl6ZSB0aGUgZHluYW1pYyBwb3dlcgpjb25zdW1wdGlv
bi4KQWxtb3N0IGFsbCBvZiB0aGUgZmxpcC1mbG9wcyBhcmUgY2xvY2sgZ2F0ZWQgaW4gdGhlIGRl
c2lnbi4gQmxvY2sKbGV2ZWwgY2xvY2sgZ2F0aW5nIGFsc28KaW1wbGVtZW50ZWQgaW4gZXZlcnkg
c2VwYXJhdGUgYmxvY2suIElmIGEgYmxvY2sgYW5kIHRoZSBpbnRlcmZhY2UgdG8KdGhlIGJsb2Nr
IGFyZSBib3RoIGlkbGUsCnRoZW4gdGhlIGNsb2NrIG9mIHRoYXQgYmxvY2sgd2lsbCBiZSBnYXRl
ZCBhdXRvbWF0aWNhbGx5LiBUaGlzIGZlYXR1cmUKY2FuIGJlIGRpc2FibGVkIGJ5CnNvZnR3YXJl
LiIKClNvIG1heWJlIHRoZSBBWEkgKGFjbGs/KSBjbG9jayBpcyBiZWluZyB1c2VkIGFzIHdoYXQg
eW91IGNhbGxlZCB0aGUKbW9kdWxlIGNsb2NrPwoKPiBCdXQgYmFzZWQgb24gdGhlIGNsb2NrIG5h
bWVzLCBJJ20gZ3Vlc3NpbmcgdGhlIGFjbGsvaGNsayBhcmUKPiBub3Qgc2hhcmVkLCBidXQgdGhl
IG5wdSBhbmQgcGNsayBhcmUgc2hhcmVkLiBTaW5jZSB5b3UgbWFrZSB0aGUgdG9wCj4gY29yZSBw
cm9iZSBmaXJzdCwgdGhlbiBpdCB3aWxsIGVuYWJsZSB0aGUgc2hhcmVkIGNsb2NrcyBhbmQgdGhl
Cj4gbm9uLXRvcCBjb3JlcyBkb24ndCBoYXZlIHRvIHdvcnJ5IGFib3V0IHRoZW0uIElmIHNvLCB0
aGF0IGlzIHdyb25nIGFzCj4gaXQgaXMgbGV0dGluZyB0aGUgc29mdHdhcmUgZGVzaWduIGRlZmlu
ZSB0aGUgYmluZGluZ3MuCgpJIGRvbid0IHJlYWxseSBrbm93IHdoYXQgdGhlIHBjbGsgYW5kIG5w
dSBjbGsgYXJlIG5lZWRlZCBmb3IsIGJ1dCBpbgp0aGUgVFJNIEknbSBzZWVpbmcgcmVmZXJlbmNl
cyB0byB0aGUgcGNsayBiZWluZyByZWxhdGVkIHRvIHRoZSBjb3JlIDAKKFRPUCk6CgpwY2xrX25w
dXRvcF9yb290X3NlbApwY2xrX25wdXRvcF9iaXVfZW4KCkNvdWxkbid0IGZpbmQgc2ltaWxhciBy
ZWZlcmVuY2VzIHRvIHRoZSAibnB1IiBjbG9jayB0aG91Z2guCgpDaGVlcnMsCgpUb21ldQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
