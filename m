Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC62DC282EC
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 14:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXuZJ6YziWE3df1cOepSkapXLQUnKv8avT0g9+JjNX4=; b=N1ddNCdx+5Gd3F
	rx/g3RsRlGzhh74Mbfxd4G/46NEZvf12DUdCgjo4Loa3GQ7K+CgKn6UD6T4F2KlB5AirBvgAuU4ZR
	4o20EWcmGrNZqwv6BlVm2OtQhmmt8PdeM1KXXkSNDy/OMs3/By7hNd3uBgswMFlKRGequTgazJPuX
	KeCEDQUBM+Cm97cDN2+envpkWAo//p5kzrc33P0Pp7cRpyqOU7KjOOPchmbUb1omVWjTNk2tcFZCB
	DPZNFeeiRZ7fZa31V00ye1qbVp8akjlsUEsnF7H+LtUoSLsAVYEQhi+G+XXEFjM46G8s74p0Y8KPA
	IgOCXV2aWJcpr/vomD+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqCD4-0000000BCdu-2jrc;
	Thu, 06 Mar 2025 14:28:26 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqCD2-0000000BCd2-119j;
	Thu, 06 Mar 2025 14:28:25 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-abbb12bea54so150316966b.0;
        Thu, 06 Mar 2025 06:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741271302; x=1741876102; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e0vWWMcXjFfg9c9qiH6NSV7bmKttHRNGNsOhNehrSvM=;
        b=dfnXa6Zc3caRJ3q90eoTQnOdnsvIHDdtkJDqNdkOYDwxMDuozLlPkldjpdFebkC26V
         A9XgWuPMSXPSp2nTuEBPQ9VhXqhExp7NtRzAPnaSybXS5Jlb32LcJTCk4OSVq6BxmPD8
         GPvf9d/Q/suwgiDXRN2jg4w08vwWiwrMt4Jfz5qdrGH8kM44nTvab9Q4Am8hBjl2mHjW
         AtVLqtzhYV+d3pANBahalFiuXK2eDQ6YGFAfvnMs6j9pXxA0XHZg9C9Lc5foUslaDTE8
         iN6/croAhQwi5nC/kbnwMsYy7Qjm5/UctpV5P5+8QPqJtpEc3c2GLA77ab3aTouG0dLs
         7SOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741271302; x=1741876102;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e0vWWMcXjFfg9c9qiH6NSV7bmKttHRNGNsOhNehrSvM=;
        b=cs0rUYMp5Eiqlo/A5O/T6/iF6WW0PGtTvGyGFNLJi5T1CKB8Wd+RCZEcAPcBuItkU5
         BjEIlPKB7ao2UKMQ2El6ftIo/3QGxZ9aA2JEuvE9jSTdrNO42Y9d6T4szN5W3iU97jQD
         BzIvf7nouz2MTMxttZ/cwWKRYSLOC6DQ8jCVzSla2YMUK7G3kXlmqWS89VeDLFFgA8oO
         ijPtIFmEYNaYRwuTEQkN/RvKqfaJoo/oyg11imHTr90a7HvJZTgteJM0atSC/a9Irq9d
         JyBkcQwLoYgHgsNY5Z0WzidwM+Vxps8f/fF96GPIehgg5jtUwoNK5UOIoWSWr2Sn9C4Y
         Nk0g==
X-Forwarded-Encrypted: i=1; AJvYcCVPCYigjh+ZcIlnG6vMSJsD4D7R95FCDun7Sfk6wp9shYCQmKh9onovFVCOzgEPT4R7SjNSpm9oYy3GA021/ERW@lists.infradead.org, AJvYcCVg++kDdejMH4Ovk3kxaYPxKRVbeA5d2SyvihkeA1RgxOMuyiTC42O/z7eM1hgFzkin0MOaP3uqgG4q9D6/cHo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwoCkLCyoV5dlqiLK6uxvUBkK/7gVFv7VrQBX9bMkSR+jrjXJgP
	Vlvd90pn+/IyR3xTmvklIbb/71rEAEqIsQt3XfWA2H4l2Md7wCDS
X-Gm-Gg: ASbGncvrQeUGNooNf+PS9OaskMWFJhyCJMHMYXbpkLHq8AUoiWWNGHGbTQION4u1sFT
	i3RpIsE+IgpGHqmgPZHNGcGBOpXEdlmGubega6O+cjZqHiG5RbwBa1gFlkqQh4jqFOQnVeCrXRS
	X49z8mPsLMSaYypKVrxn0e8woNSoGzSgcGn7E25bN14oSAPbfpYyU78i3TmTuxiKwBBIrUC3dfI
	scD1ybJGtfLL4G+FlsWo9yRkJp8tCqbvWYQ9gakNWAO9Rs2qY4AlW9Bivj8fHncH+wgf3kc84gc
	CWsXiZbNyTIF0u+okp1196Cq8snVEqYYQFz1wcKdISvLBJT5YOooS29DXHoq7lQKLXoQaixDKnz
	zyrjmNMZalBmE3EDUqQIUp2qskQ==
X-Google-Smtp-Source: AGHT+IFozHswlf0bg9ThZSp1FbgljtVYCPPvnTD1k5tckBB+eJRBJhF1NQdof80kjppsiFvLEvgOsA==
X-Received: by 2002:a17:907:3da2:b0:ac1:e2e0:f8d6 with SMTP id a640c23a62f3a-ac20d8bcb19mr672425066b.17.1741271302225;
        Thu, 06 Mar 2025 06:28:22 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2399d4ed4sm104210166b.178.2025.03.06.06.28.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Mar 2025 06:28:21 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH 0/6] Add support for RK3588 DisplayPort Controller
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
X-Priority: 3
In-Reply-To: <252BB2E2-4BC5-4402-953D-F7B30EA5DE14@gmail.com>
Date: Thu, 6 Mar 2025 15:28:08 +0100
Cc: heiko@sntech.de,
 neil.armstrong@linaro.org,
 sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org,
 hjc@rock-chips.com,
 mripard@kernel.org,
 linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 yubing.zhang@rock-chips.com,
 dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>,
 krzk+dt@kernel.org,
 robh@kernel.org,
 linux-arm-kernel@lists.infradead.org
Message-Id: <326B91E9-FB91-43C3-B98B-3EF079F313C6@gmail.com>
References: <25401bfa.291d.19564244e54.Coremail.andyshrk@163.com>
 <75189787-28E1-4FC2-8E10-4960B3877A6F@gmail.com>
 <28b0d3fc.bb3.19568f6b5f8.Coremail.andyshrk@163.com>
 <44213B17-FE14-4FB8-8319-1E31BBF6EAA0@gmail.com>
 <74c154b6.8c50.1956aa8c8d2.Coremail.andyshrk@163.com>
 <1573D5D6-AFED-4D92-8112-B0C6BB52D5FF@gmail.com>
 <46c0d239.a4f5.1956b619b97.Coremail.andyshrk@163.com>
 <252BB2E2-4BC5-4402-953D-F7B30EA5DE14@gmail.com>
To: Andy Yan <andyshrk@163.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_062824_284593_435FA956 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBpb3RyIE9uaXN6Y3p1ayA8cGlvdHIub25p
c3pjenVrQGdtYWlsLmNvbT4gdyBkbml1IDYgbWFyIDIwMjUsIG8gZ29kei4gMTU6MDg6Cj4gCj4g
Cj4gCj4+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMu
Y29tPiB3IGRuaXUgNiBtYXIgMjAyNSwgbyBnb2R6LiAxMzoxNToKPj4gCj4+IEhpIFBpb3RyLAo+
PiAKPj4gCj4+IAo+PiBUaGVuIHdoZW4geW91IERQIGNhYmxlIHBsdWdpbiwgeW91IGNhbiBydW4g
Y29tbWFuZCBhcyBiZWxsb3cgdG8gc2VlIGlmIHRoZSBkcml2ZXIgZGV0ZWN0cyB0aGUgSFBEOgo+
PiAKPj4gIyBjYXQgL3N5cy9jbGFzcy9kcm0vY2FyZDAtRFAtMS9zdGF0dXMgCj4+IGNvbm5lY3Rl
ZAo+PiAjIAo+PiAKPiAKPiAKPiBBbmR5LAo+IFRoeCEKPiAKPiBXaXRoIGFib3ZlIGNoYW5nZXMg
aeKAmW0gZ2V0dGluZyDigJ5jb25uZWN0ZWTigJ0uCj4gQWxzbyBpdCBsb29rcyBjcnRjIGdldHMg
cmVhc29uYWJsZSBtb2RlOiBodHRwczovL2dpc3QuZ2l0aHViLmNvbS93YXJwbWUvZDYyMjBlM2Nj
NTAyMDg2YTRjOTVmMDViZDlmOWNmMGMKPiAKPiBTdGlsbCBibGFjayBzY3JlZW4gaG93ZXZlcuKA
pgo+ICAgCgpzb21lIGFkZGl0aW9uYWwgZGF0YSBwb2ludDogL3N5cy9rZXJuZWwvZGVidWcvZHJp
LzEvdm9wMi9zdW1tYXJ5IAoKCndvcmtpbmcgaGRtaToKClZpZGVvIFBvcnQxOiBBQ1RJVkUKICAg
IENvbm5lY3RvcjogSERNSS1BLTEKICAgICAgICBidXNfZm9ybWF0WzBdOiBVbmtub3duCiAgICAg
ICAgb3V0cHV0X21vZGVbZl0gY29sb3Jfc3BhY2VbMF0KICAgIERpc3BsYXkgbW9kZTogMTkyMHgx
MDgwcDYwCiAgICAgICAgY2xrWzE0ODUwMF0gcmVhbF9jbGtbMTQ4NTAwXSB0eXBlWzQ4XSBmbGFn
WzVdCiAgICAgICAgSDogMTkyMCAyMDA4IDIwNTIgMjIwMAogICAgICAgIFY6IDEwODAgMTA4NCAx
MDg5IDExMjUKICAgIENsdXN0ZXIwLXdpbjA6IEFDVElWRQogICAgICAgIHdpbl9pZDogMAogICAg
ICAgIGZvcm1hdDogWFIyNCBsaXR0bGUtZW5kaWFuICgweDM0MzI1MjU4KSBnbGJfYWxwaGFbMHhm
Zl0KICAgICAgICByb3RhdGU6IHhtaXJyb3I6IDAgeW1pcnJvcjogMCByb3RhdGVfOTA6IDAgcm90
YXRlXzI3MDogMAogICAgICAgIHpwb3M6IDAKICAgICAgICBzcmM6IHBvc1swLCAwXSByZWN0WzE5
MjAgeCAxMDgwXQogICAgICAgIGRzdDogcG9zWzAsIDBdIHJlY3RbMTkyMCB4IDEwODBdCiAgICAg
ICAgYnVmWzBdOiBhZGRyOiAweDAwMDAwMDAwMDE3ZTEwMDAgcGl0Y2g6IDc2ODAgb2Zmc2V0OiAw
ClZpZGVvIFBvcnQyOiBESVNBQkxFRAoKCgoKbm9uLXdvcmtpbmcgRFA6CgpWaWRlbyBQb3J0MTog
RElTQUJMRUQKVmlkZW8gUG9ydDI6IEFDVElWRQogICAgQ29ubmVjdG9yOiBEUC0xCiAgICAgICAg
YnVzX2Zvcm1hdFsxMDBhXTogUkdCODg4XzFYMjQKICAgICAgICBvdXRwdXRfbW9kZVtmXSBjb2xv
cl9zcGFjZVswXQogICAgRGlzcGxheSBtb2RlOiAxOTIweDEwODBwNjAKICAgICAgICBjbGtbMTQ4
NTAwXSByZWFsX2Nsa1sxNDg1MDBdIHR5cGVbNDhdIGZsYWdbNV0KICAgICAgICBIOiAxOTIwIDIw
MDggMjA1MiAyMjAwCiAgICAgICAgVjogMTA4MCAxMDg0IDEwODkgMTEyNQogICAgQ2x1c3RlcjEt
d2luMDogQUNUSVZFCiAgICAgICAgd2luX2lkOiAxCiAgICAgICAgZm9ybWF0OiBYUjI0IGxpdHRs
ZS1lbmRpYW4gKDB4MzQzMjUyNTgpIGdsYl9hbHBoYVsweGZmXQogICAgICAgIHJvdGF0ZTogeG1p
cnJvcjogMCB5bWlycm9yOiAwIHJvdGF0ZV85MDogMCByb3RhdGVfMjcwOiAwCiAgICAgICAgenBv
czogMAogICAgICAgIHNyYzogcG9zWzAsIDBdIHJlY3RbMTkyMCB4IDEwODBdCiAgICAgICAgZHN0
OiBwb3NbMCwgMF0gcmVjdFsxOTIwIHggMTA4MF0KICAgICAgICBidWZbMF06IGFkZHI6IDB4MDAw
MDAwMDAwMDdlZDAwMCBwaXRjaDogNzY4MCBvZmZzZXQ6IDAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
