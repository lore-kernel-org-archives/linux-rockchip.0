Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFFE3C021B1
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 18:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fF7lGvmJVAusJRwALjaV0ATj5iDcTT14RQQ8LdFQlR8=; b=zAA53HHgHwj6cm
	89wxNVsqAy46HwsnVdQNoLh3JjXpEwawQm2Q1cZtPgKOhsEmbuFZlPrrdZ7Yz3lyed+gzo37mauhs
	Lo6bayzV9NJuw+Hfz2aiGwmZK7jWGUPESXIw6ALDVuWP6LpuFIVgNc9Y2HuDl4wvYYpLOCyqgrgKL
	iV65gTcJxAux5nF/6rVgQrPyBk1/MRivJFmIaxuJr3vIhdYNckjrKZ08XaqeaEMMiH7n79aqhMK4z
	9FSesOVCUQ/Gm1wo7WcDvxsPtWAjeQwhseFzLA7WYB+14Tvv1xt3ixVvhorCDGkoTT6P7acvjOMJ9
	aYCZt09UmLZLxWpvHHmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlBM3-00000002O99-14hE;
	Thu, 20 Feb 2025 18:32:59 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlBL2-00000002Nro-09ac;
	Thu, 20 Feb 2025 18:31:57 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5dee1626093so4465762a12.1;
        Thu, 20 Feb 2025 10:31:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740076314; x=1740681114; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sMr3lvJ7EopRpQyFUlg/MoDrJDe+8pm+RaJvLNxz/5k=;
        b=YJVJj34Dmmw54le9GVDCl6WwY/SJaN6gvxreIiBzRXYm22BLC27aCI0Z9vMjv9wAlh
         Kcub7+Z/9jtTLRDNyyOtJCqVE/kq+uYpJHsMFDKau7VhLcUbGOpVv/frW/h6DmVxdkqX
         so2mC4perwfc6iBuNqkma9lmiJZKpdRXK9+QgHiMG7bZzQ70onb+HUZ9nb4MIzx6Mlii
         Afctsxl9M8KCnc9oFoeefSE8Jk4e2aAEwR0iQoSPAjJf5TafpXDBA7NFYQYViMv7tHFO
         exnkpPAWqIsYncoPZv5EyF+YH1Mz3/JjJYAl3wWVZEPb71XWRCUzUUaAQlFNiYbSPsd1
         /+Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740076314; x=1740681114;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sMr3lvJ7EopRpQyFUlg/MoDrJDe+8pm+RaJvLNxz/5k=;
        b=CcOfWa+64KdCou+W5Xh66f0dRTsF/wQrRoautYta1MsYRKR1Y9O98slembbHf8fL6M
         27UmUlbx+rGuXWObJNk0gd4KZVFrJHIFYyVgq75giSEagBt1QSMsWssjGnKZ8lgA/JhW
         D1WeX8/NdioNaBCMzOyaxkTBA8lI/b0TZJohEaVjWxpQY/5x1FalM5BLoiM84nasuaZH
         1spWPA31hEe1koRq+mwoZoItFd+2zITl0l1SUw64pdMxF6GHNCt+pCcqSI9q3YR66ddK
         6i5E9knQGHwWfzVeQOPw/u67cglpYqLHzsamMPzPO5/kXO8pvSEJNRLaJn2+vKno/apS
         HTPA==
X-Forwarded-Encrypted: i=1; AJvYcCUOEuq32Tg9/T2g74oeLH64+RGJz+4mvIkAUZLpYzgWaKNBa4KDsBSnfK6koUE2aTKK+E3+SRKmzfCT1RK9ReU=@lists.infradead.org, AJvYcCWTiYfTrSB3EAyt/n6wkTbsF6qISWA1JKxIFXm87X1Anyk+Of5bQFiAuk7NRl21k7zyoT3merxYjfGVPt7NROu9@lists.infradead.org
X-Gm-Message-State: AOJu0YysnbGUSTt9xci9kUCRiYmqMbWZXGJ3H2hDO1mBmlUe9oYHv0CT
	2GzF7yasbdHmDy91y1jGMN3Gzyrb20qXUy8/hiCBVkhkfCZhyP4T
X-Gm-Gg: ASbGncu7VuCX6HVDZgGe0JYloI2lqdj615fvvA4PRdbYK5IsnSLhZSCaw3TKEuaSbW6
	o1qN6qRofh3RotHGGd2U1KeDY55Z/1KgL4knsi4X/+sJklPMkZ3BNnlttblMD5vDCFIthgsagwS
	gEY4K2QSB5ZHJVFTkYIU+KbPgiwP+UUEiSlg6eDKlkP3beOmkV+16Q3QITftL0YTCJXYAVkEawn
	RmCg76zW0jIjo43o1AAhrCn6Avg/ewqzPFNRD2lingDGtKAIJKmOPySl3oZvFp1KPALx2D3lCpX
	cLXviicd0OR5ccKUygDIYe3tRIlTlKRmjc6wBcUFS9cblBq0hmD6bRj8QgzK9G7oFA23cpWj
X-Google-Smtp-Source: AGHT+IFbxBiIiVyThGFUApBE/J2v7Yf4y9GSheJDY9cjGQbwdKH79wDotPht1emZ1XR1jrwSaRJKuA==
X-Received: by 2002:a05:6402:3491:b0:5de:5e08:babd with SMTP id 4fb4d7f45d1cf-5e0a12b9c7amr4570026a12.11.1740076314077;
        Thu, 20 Feb 2025 10:31:54 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece270b17sm12453533a12.62.2025.02.20.10.31.50
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Feb 2025 10:31:53 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH v7 0/3] Add HDMI audio on the rk3588 SoC
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <2357838.ElGaqSPkdT@earth>
Date: Thu, 20 Feb 2025 19:31:36 +0100
Cc: linux-kernel@vger.kernel.org,
 Algea Cao <algea.cao@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 dri-devel@lists.freedesktop.org,
 Niklas Cassel <cassel@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 kernel@collabora.com,
 David Airlie <airlied@gmail.com>,
 Dragan Simic <dsimic@manjaro.org>,
 Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>,
 Robert Foss <rfoss@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>,
 FUKAUMI Naoki <naoki@radxa.com>,
 devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Alexey Charkov <alchark@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Message-Id: <BA73C4A1-C680-4748-9CE1-4B3B19A14261@gmail.com>
References: <20250217215641.372723-1-detlev.casanova@collabora.com>
 <B8EF5196-55FB-44EC-B93C-E327C791225B@gmail.com> <2357838.ElGaqSPkdT@earth>
To: Detlev Casanova <detlev.casanova@collabora.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_103156_077734_4A1C37B9 
X-CRM114-Status: GOOD (  15.63  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IERldGxldiBDYXNhbm92YSA8ZGV0bGV2LmNh
c2Fub3ZhQGNvbGxhYm9yYS5jb20+IHcgZG5pdSAyMCBsdXQgMjAyNSwgbyBnb2R6LiAxODowMzoK
PiAKPiBIaSBQaW90ciwKPiAKPiBPbiBUaHVyc2RheSwgMjAgRmVicnVhcnkgMjAyNSAwNjoxNjoy
MCBFU1QgUGlvdHIgT25pc3pjenVrIHdyb3RlOgo+PiAKPj4gCj4+IERldGVsdiwKPj4gCj4+IEp1
c3QgY3VyaW91cyBvZiB5b3VyIG9waW5pb246Cj4+IAo+PiBJ4oCZbSBvbiA2LjE0LXJjMyBhbmQg
dXNpbmcKPj4gaHR0cHM6Ly9naXRsYWIuY29sbGFib3JhLmNvbS9jcmlzdGljYy9saW51eC1uZXh0
Ly0vY29tbWl0cy9yazM1ODgtaGRtaS1icmlkCj4+IGdlICsgdGhpcyB2NyBzZXJpZXMuCj4gCj4g
RG8geW91IGhhdmUgdGhlIGJyYW5jaCBhdmFpbGFibGUgc29tZXdoZXJlID8KCk15IHRlc3RzIGFy
ZSBvbiBteSBNaW5pTXl0aDIgZGlzdHJvLiAKTXkgYnVpbGQgc3lzdGVtIGlzIHZhbmlsbGEgdXBz
dHJlYW0rcGF0Y2hlcyBzdHlsZS4gIApLZXJuZWwgaXMgbWFpbmxpbmUgNi4xNC1yYzMga2VybmVs
IHdpdGggYXBwbGllZCBzZXJpZXMgb2YgcGF0Y2hlczoKClBBVENIRklMRVMgKz0gMTAwMS1tYXRo
LmgtYWRkLURJVl9ST1VORF9VUF9OT19PVkVSRkxPVy5wYXRjaApQQVRDSEZJTEVTICs9IDEwMDIt
Y2xrLWRpdmlkZXItRml4LWRpdmlzb3ItbWFza2luZy1vbi02NC1iaXQtcGxhdGZvcm1zLnBhdGNo
ClBBVENIRklMRVMgKz0gMTAwMy1jbGstY29tcG9zaXRlLXJlcGxhY2Utb3Blbi1jb2RlZC1hYnNf
ZGlmZi5wYXRjaAojIGhkbWkgdmlkZW8gc3VwcG9ydApQQVRDSEZJTEVTICs9IDEwMTAtRlJPTS1N
TC1waHktcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHgtRG9uLXQtdXNlLWR0LS5wYXRjaApQQVRD
SEZJTEVTICs9IDEwMTEtRlJPTS1VUFNUUkVBTS1kcm0tcm9ja2NoaXAtRG9uLXQtY2hhbmdlLWhk
bWktcmVmZXJlbi5wYXRjaApQQVRDSEZJTEVTICs9IDEwMTItRlJPTS1VUFNUUkVBTS1kcm0tcm9j
a2NoaXAtdm9wMi1Ecm9wLXVubmVjZXNzYXJ5LWlmXy5wYXRjaApQQVRDSEZJTEVTICs9IDEwMTMt
RlJPTS1VUFNUUkVBTS1kcm0tcm9ja2NoaXAtdm9wMi1JbXByb3ZlLWRpc3BsYXktbW9kZS5wYXRj
aApQQVRDSEZJTEVTICs9IDEwMTQtV0lQLWRybS1yb2NrY2hpcC12b3AyLUltcHJvdmUtZGlzcGxh
eS1tb2Rlcy1oYW5kbGluZy5wYXRjaApQQVRDSEZJTEVTICs9IDEwMTUtZHJtLWJyaWRnZS1kdy1o
ZG1pLVN5bmMtY29tbWVudHMtd2l0aC1hY3R1YWwtYnVzLWZvci5wYXRjaApQQVRDSEZJTEVTICs9
IDEwMTYtZHJtLWJyaWRnZS1jb25uZWN0b3ItU3luYy1zdXBwb3J0ZWRfZm9ybWF0cy13aXRoLWNv
bS5wYXRjaApQQVRDSEZJTEVTICs9IDEwMTctZHJtLWNvbm5lY3Rvci1oZG1pLUV2YWx1YXRlLWxp
bWl0ZWQtcmFuZ2UtYWZ0ZXItY29tcC5wYXRjaApQQVRDSEZJTEVTICs9IDEwMTgtZHJtLWNvbm5l
Y3Rvci1oZG1pLUFkZC1zdXBwb3J0LWZvci1ZVVY0MjAtZm9ybWF0LXZlci5wYXRjaApQQVRDSEZJ
TEVTICs9IDEwMTktZHJtLWNvbm5lY3Rvci1oZG1pLUltcHJvdmUtZGVidWctbWVzc2FnZS1mb3It
c3VwcG9ydC5wYXRjaApQQVRDSEZJTEVTICs9IDEwMjAtZHJtLWNvbm5lY3Rvci1oZG1pLVVzZS1Z
VVY0MjAtb3V0cHV0LWZvcm1hdC1hcy1hbi1SRy5wYXRjaApQQVRDSEZJTEVTICs9IDEwMjEtcGh5
LUFkZC1IRE1JLWNvbmZpZ3VyYXRpb24tb3B0aW9ucy5wYXRjaApQQVRDSEZJTEVTICs9IDEwMjIt
cGh5LWhkbWktQWRkLWNvbG9yLWRlcHRoLWNvbmZpZ3VyYXRpb24ucGF0Y2gKUEFUQ0hGSUxFUyAr
PSAxMDIzLXBoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LUZpeC1jbG9jay1yYXRpby1zZXR1cC5w
YXRjaApQQVRDSEZJTEVTICs9IDEwMjQtcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHgtRHJvcC11
bnVzZWQtbGNwbGxfY29uZmlnLnBhdGNoClBBVENIRklMRVMgKz0gMTAyNS1waHktcm9ja2NoaXAt
c2Ftc3VuZy1oZHB0eC1TZXR1cC1UTURTLWNoYXItcmF0ZS12aWEtLnBhdGNoClBBVENIRklMRVMg
Kz0gMTAyNi1waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC1BZGQtaGlnaC1jb2xvci1kZXB0aC1t
YW5hLnBhdGNoClBBVENIRklMRVMgKz0gMTAyNy1waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC1D
bGVhbnVwLWludGVybmFsLXJhdGUtaGFuLnBhdGNoClBBVENIRklMRVMgKz0gMTAyOC1waHktcm9j
a2NoaXAtc2Ftc3VuZy1oZHB0eC1Bdm9pZC1Iei1oSHotdW5pdC1jb252ZXJzLnBhdGNoClBBVENI
RklMRVMgKz0gMTAyOS1URVNULXBoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LUFkZC12ZXJib3Nl
LWxvZ2dpbmcucGF0Y2gKUEFUQ0hGSUxFUyArPSAxMDMwLVdJUC1kcm0tYnJpZGdlLUFkZC1kZXRl
Y3RfY3R4LWhvb2sucGF0Y2gKUEFUQ0hGSUxFUyArPSAxMDMxLVdJUC1kcm0tYnJpZGdlLWNvbm5l
Y3Rvci1Td2l0Y2gtZnJvbS1kZXRlY3QtdG8tZGV0ZWMucGF0Y2gKUEFUQ0hGSUxFUyArPSAxMDMy
LVdJUC1kcm0tYnJpZGdlLWR3LWhkbWktcXAtQWRkLWhpZ2gtVE1EUy1jbG9jay1yYXRpby0ucGF0
Y2gKUEFUQ0hGSUxFUyArPSAxMDMzLVdJUC1kcm0tcm9ja2NoaXAtdm9wMi1BZGQtaGlnaC1jb2xv
ci1kZXB0aC1zdXBwb3J0LnBhdGNoClBBVENIRklMRVMgKz0gMTAzNC1XSVAtZHJtLXJvY2tjaGlw
LXZvcDItQWRkLVlVVjQyMC1zdXBwb3J0LnBhdGNoClBBVENIRklMRVMgKz0gMTAzNS1XSVAtZHJt
LXJvY2tjaGlwLWR3X2hkbWlfcXAtTWFrZS11c2Utb2YtcGh5X2NvbmZpZ3VyLnBhdGNoClBBVENI
RklMRVMgKz0gMTAzNi1XSVAtZHJtLXJvY2tjaGlwLWR3X2hkbWlfcXAtQWRkLTEwYnBjLWFuZC1Z
VVY0MjAtb3V0LnBhdGNoClBBVENIRklMRVMgKz0gMTAzNy1XSVAtZHJtLWJyaWRnZS1kdy1oZG1p
LXFwLUVuYWJsZS0xMGJwYy1hbmQtWVVWNDIwLnBhdGNoCiMgaGRtaSBhdWRpbyBzdXBwb3J0ClBB
VENIRklMRVMgKz0gMTA0MC1kcm0tYnJpZGdlLXN5bm9wc3lzLWFkZC1hdWRpby1zdXBwb3J0LWZv
ci1kdy1oZG1pLXFwLXY3LnBhdGNoCiMgY2VjIHN1cHBvcnQKUEFUQ0hGSUxFUyArPSAxMDQ1LWRy
bS1icmlkZ2Utc3lub3BzeXMtYWRkLWNlYy1zdXBwb3J0LnBhdGNoCiMgdmFyIGFkZGl0aW9ucwpQ
QVRDSEZJTEVTICs9IDEwNjAtbmV0LWV0aGVybmV0LWFkZC15dDY4MDEtZ2lnZS1wY2llLWNvbnRy
b2xsZXIucGF0Y2gKUEFUQ0hGSUxFUyArPSAxMDYxLW5ldC1ldGhlcm5ldC15dDY4MDEtZ2lnZS1w
Y2llLXNpbGVuY2UtZGVidWctbXNncy5wYXRjaApQQVRDSEZJTEVTICs9IDEwNjItV0lQLWlvbW11
LXJvY2tjaGlwLWFkZC1mbHVzaF9pb3RsYl9hbGwtb3BzLnBhdGNoClBBVENIRklMRVMgKz0gMTA2
My1tZWRpYS1yb2NrY2hpcC1hZGQtcmt2ZGVjMi1kcml2ZXIucGF0Y2gKUEFUQ0hGSUxFUyArPSAx
MDY0LW1lZGlhLXJrdmRlYzItYWRkLWlvbW11LXN1cHBvcnQtdjMucGF0Y2gKUEFUQ0hGSUxFUyAr
PSAxMDY1LXdpcC1hZGQtaGV2Yy1zdXBwb3J0LnBhdGNoClBBVENIRklMRVMgKz0gMTA2Ni13aXAt
aGV2Yy1hZGQtcmVmLWZyYW1lcy1zdXBwb3J0LnBhdGNoCiMgZHRzaSBhZGRpdGlvbnMKUEFUQ0hG
SUxFUyArPSAxMDcwLWFybTY0LWR0c2ktcmszNTg4cy1hZGQtdm9wMi1jbG9jay1yZXNldHMucGF0
Y2gKUEFUQ0hGSUxFUyArPSAxMDcxLWFybTY0LWR0c2ktcm9ja2NoaXAtMzU4OHMtYWRkLWhkbWkt
YnJpZGdlLnBhdGNoClBBVENIRklMRVMgKz0gMTA3Mi1hcm02NC1kdHNpLXJvY2tjaGlwLTM1ODgt
aGRtaS1hZGQtYXVkaW8tc3VwcG9ydC5wYXRjaApQQVRDSEZJTEVTICs9IDEwNzQtYXJtNjQtZHRz
aS1yb2NrY2hpcC1hZGQtcmt2ZGVjMi12aWRlby12ZWNvZGVyLW9uLXJrMzU4OC5wYXRjaApQQVRD
SEZJTEVTICs9IDEwNzctYXJtNjQtZHRzaS1ya3ZkZWMyLWFkZC1pb21tdS1zdXBwb3J0LXYzLnBh
dGNoClBBVENIRklMRVMgKz0gMTA3OC1hcm02NC1kdHNpLXJvY2tjaGlwLXJrMzU2eC1hZGQtcmt2
ZGVjMi12aWRlby1kZWNvZGVyLW5vZGVzLnBhdGNoCiMgZHRzIHBhdGNoZXMKUEFUQ0hGSUxFUyAr
PSAxMDgwLWFybTY0LWR0cy1yb2NrY2hpcC1yazM1ODhzLXJvY2s1YS1kdHMtaW1wcm92ZW1lbnRz
LnBhdGNoClBBVENIRklMRVMgKz0gMTA4MS1hcm02NC1kdHMtcm9ja2NoaXAtcmszNTg4LXJvY2s1
Yi1kdHMtaW1wcm92ZW1lbnRzLnBhdGNoClBBVENIRklMRVMgKz0gMTA4Mi1hcm02NC1kdHMtcm9j
a2NoaXAtcmszNTg4cy1yb2NrNWMtZHRzLWltcHJvdmVtZW50cy5wYXRjaApQQVRDSEZJTEVTICs9
IDEwODMtYXJtNjQtZHRzLXJvY2tjaGlwLXJrMzU4OC1yb2NrNWl0eC1kdHMtaW1wcm92ZW1lbnRz
LnBhdGNoClBBVENIRklMRVMgKz0gMTA4NC1hcm02NC1kdHMtcm9ja2NoaXAtcmszNTg4cy1vcGk1
LWR0cy1pbXByb3ZlbWVudHMucGF0Y2gKUEFUQ0hGSUxFUyArPSAxMDg1LWFybTY0LWR0cy1yb2Nr
Y2hpcC1yazM1ODgtb3BpNXBsdXMtZHRzLWltcHJvdmVtZW50cy5wYXRjaApQQVRDSEZJTEVTICs9
IDEwODYtYXJtNjQtZHRzLXJvY2tjaGlwLXJrMzU4OHMtYWRkLW9waTVwcm8tZHRzLnBhdGNoClBB
VENIRklMRVMgKz0gMTA4Ny1hcm02NC1kdHMtcm9ja2NoaXAtcmszNTg4cy1hZGQtbmFub3BpLW02
LWR0cy5wYXRjaApQQVRDSEZJTEVTICs9IDEwODgtYXJtNjQtZHRzLXJvY2tjaGlwLXJrMzU4OHMt
bmFub3BjLXI2cy1kdHMtaW1wcm92ZW1lbnRzLnBhdGNoClBBVENIRklMRVMgKz0gMTA4OS1hcm02
NC1kdHMtcm9ja2NoaXAtcmszNTg4LW5hbm9wYy10Ni1kdHNpLWltcHJvdmVtZW50cy5wYXRjaApQ
QVRDSEZJTEVTICs9IDEwOTAtYXJtNjQtZHRzLXJvY2tjaGlwLXJrMzU4OC1hZGQtcm9jazV0LWR0
LnBhdGNoCgogcGF0Y2hlcyBhcmUgZnJvbTogaHR0cHM6Ly9naXRodWIuY29tL3dhcnBtZS9taW5p
bXl0aDIvdHJlZS9tYXN0ZXIvc2NyaXB0L2tlcm5lbC9saW51eC02LjE0L2ZpbGVzCgpLZXJuZWwg
Y29uZmlnIGlzOiBodHRwczovL2dpdGh1Yi5jb20vd2FycG1lL21pbmlteXRoMi9ibG9iL21hc3Rl
ci9zY3JpcHQva2VybmVsL2xpbnV4LTYuMTQvZmlsZXMvbGludXgtNi4xNC1hcm02NC1hcm12OC5j
b25maWcKCkFib3ZlIHBhdGNoaW5nIGlzIGVmZmVjdGl2ZWx5OiAKCi0gaHR0cHM6Ly9naXRsYWIu
Y29sbGFib3JhLmNvbS9jcmlzdGljYy9saW51eC1uZXh0Ly0vY29tbWl0cy9yazM1ODgtaGRtaS1i
cmlkZ2UKLSBZb3VycyBoZG1pIGF1ZGlvIHY3Ci4gYWRkZWQgY2VjIHN1cHBvcnQKLSBhZGRlZCBy
a3ZkZWMyIChpbmNsdWRpbmcgaGV2YykKLSBzb21lIGR0cyBlbmFibGVtZW50cyBmb3IgYWJvdmUK
Cgo+IAo+PiBPbiBtaW5lIHJvY2s1YiBhbGwgd29ya3MgbmljZWx5IGJ1dCAtIGF0IGJvb3QgdGlt
ZSAtIGnigJltIGdldHRpbmcgc29tZSBvb3BzCj4+IGluIGtlcm5lbCBsaWtlIHRoaXM6Cj4+IGh0
dHBzOi8vZ2lzdC5naXRodWIuY29tL3dhcnBtZS9lMTY2OGFjYmVmNzgxN2U1ZDJhODhhNjg0MDMy
ODcyMgo+IAo+IEkgZGlkIG5vdGljZSB0aGF0IGF0IG9uZSBwb2ludCBidXQgaXQgZGlzYXBwZWFy
ZCBhZnRlciBhIHJlYmFzZSBvbiB0aGUgdGhlIAo+IGxhdGVzdCBtYXN0ZXIgc28gSSBkaWRuJ3Qg
bG9vayBmdXJ0aGVyIGludG8gdGhhdC4KCkluZGVlZCAtIGkuZS4gaSBkb27igJl0IGhhdmUgdGhl
c2Ugb29wcyBvbiByazM1ODggYmFzZWQgb3JhbmdlNXBsdXMuCkFsc28gNi4xMiBrZXJuZWwgaXMg
Y2xlYW4uCkJ1dCBpIGhhdmUgdGhlbSByZXByb2R1Y2libGUgb24gcm9jazViIChhbmQgYWxzbyBl
LmcuIG9uIHJvY2s1dCkKICAKPiBDb3VsZCBpdCBiZSByZWxhdGVkIHRvIDI1MThhMGUxYjg3ODA0
MmY5YWZhNDVhZTA2M2U1NDRhMTZlZmMxYTMgIkFTb0M6IHNpbXBsZS0KPiBjYXJkOiB1c2UgX19m
cmVlKGRldmljZV9ub2RlKSBmb3IgZGV2aWNlIG5vZGUiID8KPiAKCkkgdHJpZWQgd2l0aCAyNTE4
YTBlMWI4NzgwNDJmOWFmYTQ1YWUwNjNlNTQ0YTE2ZWZjMWEzIHJldmVyZWQgYW5kIHRoaXMgTk9U
IGhlbHBzLgpXaXRoIHJldmVydGVkIGFib3ZlIGNvbW1pdCwgZG1lc2cgaXM6IGh0dHBzOi8vZ2lz
dC5naXRodWIuY29tL3dhcnBtZS9kYmZlODEzNTgzZTQ2NjBhMDJiNzQzMTVmMTkzZTc2OAoKICAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
