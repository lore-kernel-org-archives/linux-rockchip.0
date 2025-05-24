Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67F48C54E71
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 May 2025 08:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UwdqsQYrAFIheGZ9SiRtbLPR5Sylb7B1tMefeKrpfJQ=; b=fYxg/c3jrQLz2R
	t5/i4i/RHHLHteoZmEXpetXkDUxQLwoIh42374NVcHdsOfOeQstTOseSKKtnW6A219rtBOuXTC9tL
	4nkgAz0ZGyFXBcR0Cf8gLUuHz8fzjHgO6Btzmf49+4w8NVIfgvm+Tc9WxTkHl77p63jHyoNsJPvUT
	GuootDDfGUTOiRsmpUDGqruqOSd3zwfNzej4Txk4TjRqq36mNDlu4x+ymtwGDHWPUtSv/0sq8dZ94
	T2B4Fs20mvh90Om6Q326p670NypdOinLjtbHYwtqdgWhGS+bIWBpMle2FxyGVEMorct7FJrITLG5a
	FQccIRiLHCZFclbF/dOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIjnv-00000005WEw-0JI2;
	Sat, 24 May 2025 08:00:27 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIjnr-00000005WCw-1lbT;
	Sat, 24 May 2025 08:00:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=HG4jeHKiiB0ABQ8SUjqPMkyYhMmLoOjAO8m16dhU8lw=; b=P
	K7rR2smictRIbPp9o5EiSvXdSEjGdmzWlp7UFVtRXnEhnK3zeQwTwsiVDvw8yPVt
	zUUajUNbe58L6MPQQQJL7uHmWFMnaWPZz5xlxbPDXWhrNSfB1n6jdl5LBOz8nt8S
	eBiq8kPfVoYPWby+7iJyF5DdOAkxYcalxxXmyT709s=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-135 (Coremail) ; Sat, 24 May 2025 15:59:52 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Sat, 24 May 2025 15:59:52 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: heiko@sntech.de, neil.armstrong@linaro.org,
	sebastian.reichel@collabora.com, stephen@radxa.com,
	dri-devel@lists.freedesktop.org, hjc@rock-chips.com,
	mripard@kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	yubing.zhang@rock-chips.com, naoki@radxa.com,
	Laurent.pinchart@ideasonboard.com,
	"Andy Yan" <andy.yan@rock-chips.com>, krzk+dt@kernel.org,
	robh@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re:Re: [PATCH v3 2/9] drm/bridge: synopsys: Add DW DPTX Controller
 support library
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <hsrec7lguapfxdxulyncypdx5c2rzamcxeoj2kiojw3ukvi5c3@lwr6eriwoxdy>
References: <20250403033748.245007-1-andyshrk@163.com>
 <20250403033748.245007-3-andyshrk@163.com>
 <2f4796ad.a2e0.196ceb908b0.Coremail.andyshrk@163.com>
 <hsrec7lguapfxdxulyncypdx5c2rzamcxeoj2kiojw3ukvi5c3@lwr6eriwoxdy>
X-NTES-SC: AL_Qu2fCvycvE0i5CmbYOkfmkcVgOw9UcO5v/Qk3oZXOJF8jB7o+QsaQHlnIl7Mz/iwIAC8nDyzXwpc4+Bxdpt3U68pE8705fD6WYa0kk1KxQiX6w==
MIME-Version: 1.0
Message-ID: <7d4f2ae8.23f1.197014e386f.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: hygvCgD3P9F5fDFoeC4MAA--.40552W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hNXXmgxdoFyowACs1
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250524_010023_848260_7E6F15E2 
X-CRM114-Status: GOOD (  12.26  )
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

CgpIZWxsbyBEbWl0cnksCgoK5ZyoIDIwMjUtMDUtMjQgMTU6NDY6MTXvvIwiRG1pdHJ5IEJhcnlz
aGtvdiIgPGRtaXRyeS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4g5YaZ6YGT77yaCj5PbiBX
ZWQsIE1heSAxNCwgMjAyNSBhdCAwODoxNTo1NVBNICswODAwLCBBbmR5IFlhbiB3cm90ZToKPj4g
SGVsbG8gRG1pdHJ577yMCj4+IAo+PiAgICAgV291bGQgaXQgYmUgY29udmVuaWVudCBmb3IgeW91
IHRvIGNvbnRpbnVlIHJldmlld2luZyB0aGlzIHBhdGNoIGF0IHlvdXIgY29udmVuaWVuY2U/Cj4+
IE9yIGxldCBtZSBrbm93IHlvdXIgb3BpbmlvbiBvbiB0aGlzIHBhdGNoLgo+PiAgCj4+ICAgIFRo
ZXJlIGlzIHN0aWxsIG9uZSB1bnJlc29sdmVkIGlzc3VlIGhpZ2hsaWdodGVkIGJ5IHlvdSBpbiB0
aGUgZmlyc3QgdmVyc2lvbjogdHJ5IHRvIHVzZSBkcm1fZHBfcmVhZF9zaW5rX2NvdW50X2NhcAo+
PiBpbnN0ZWFkIG9mIGR3X2RwX2hhc19zaW5rX2NvdW50LiBCdXQgdGhlcmUgaXMgbm8gcmVzcG9u
c2Ugb24gbXkgcGF0Y2ggdHJ5IHRvIFBhc3MgZG93biBjb25uZWN0b3IgdG8gZHJtIGJyaWRnZSBk
ZXRlY3QgaG9va1swXS4KPj4gICAgSSBkb24ndCBrbm93IGhvdyB0byBwcm9jZWVkIHdpdGggdGhp
cyBwYXRjaCBhdCB0aGUgbW9tZW50Lgo+Cj5QbGVhc2UgZXhjdXNlIG1lIGZvciB0aGUgZGVsYXku
IEl0IHNlZW1zIE1heGltZSBkb2Vzbid0IGxpa2UgdGhhdCBwYXRjaCwKPmJ1dCBJIGRvIG5vdCBz
ZWUgYSB2aWFibGUgZ2VuZXJpYyBhbHRlcm5hdGl2ZS4KPgoKCkkgc3RpbGwgd2FudCB0byBleHBy
ZXNzIG15IGdyYXRpdHVkZSBmb3IgeW91ciBoZWxwLiAKU28sIGNvdWxkIHdlIHBlcmhhcHMgZmly
c3Qga2VlcCB0aGlzIHBhcnQgYXMgaXQgaXMgbm93LCBhbmQKd2UgY2FuIHN3aXRjaCB0byB0aGUg
Z2VuZXJpYyBoZWxwZXIgaW4gb25lIGRheSB3aGVuIHdlIGZpbmQgYSBwcm9wZXIgd2F5IHRvIGdl
dCB0aGUgY29ubmVjdG9yID8KCgo+PiAKPj4gCj4+IFswXWh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2RyaS1kZXZlbC8yMDI1MDMyMTA4NTM0NS4xMzYzODAtMS1hbmR5c2hya0AxNjMuY29tLwo+PiAK
Pj4gVGhhbmsgeW91Lgo+PiAgIAo+PiBBdCAyMDI1LTA0LTAzIDExOjM3OjMwLCAiQW5keSBZYW4i
IDxhbmR5c2hya0AxNjMuY29tPiB3cm90ZToKPj4gPkZyb206IEFuZHkgWWFuIDxhbmR5LnlhbkBy
b2NrLWNoaXBzLmNvbT4KPj4gPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
