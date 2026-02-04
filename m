Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EA61E8B387
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 01:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qib9BushlUb9fnSlsrWxq1OA3vpZi53YMTaknVdmalo=; b=fN/gnZYgwjkYi6
	egjX8ypkkg9WspL6AQAWbHy6R/zcIegbAy+dFAc43rqTbuSy9vSv7PDGY9iGK94QWgITUr41WOZXB
	2lU8nGsUeph7jVEkFz+ayAZ+hPLm87sBk782WgF/i4Fiq9Hxe19jCsRoBoa3Sn5iLq5W7VY0FdjOJ
	LXyCfe5UXdovNqo9qqdoEL7jvHFkYNI87DTVxrxphE8Wu+yjSx9nP/1UDALC63VJC0INxVIXfbdxi
	rc/dXbjBIpmlDZTLYXYCYvDWIQIJAe9hn34/J90GjQoDP4MUBN4Qw9g0MuBWerBb6483waixFhuNm
	HnkzHc8u/to2x2cUBd8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnS4A-00000007ixd-29AT;
	Wed, 04 Feb 2026 01:52:26 +0000
Received: from mail-m3286.qiye.163.com ([220.197.32.86])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnS47-00000007ixA-27IB;
	Wed, 04 Feb 2026 01:52:25 +0000
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 330683486;
	Wed, 4 Feb 2026 09:52:14 +0800 (GMT+08:00)
Message-ID: <0b7e39bd-a403-45e4-93fd-701ab092525c@rock-chips.com>
Date: Wed, 4 Feb 2026 09:52:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 00/18] Apply drm_bridge_connector and panel_bridge
 helper for the Analogix DP driver
To: Luca Ceresoli <luca.ceresoli@bootlin.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 jingoohan1@gmail.com, p.zabel@pengutronix.de, hjc@rock-chips.com,
 andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 dianders@chromium.org, m.szyprowski@samsung.com, jani.nikula@intel.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251217093321.3108939-1-damon.ding@rock-chips.com>
 <6571983.R56niFO833@diego> <DG5A5BNULPQX.HRWTJLN9UQ2W@bootlin.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <DG5A5BNULPQX.HRWTJLN9UQ2W@bootlin.com>
X-HM-Tid: 0a9c2659a20003a3kunme960d4ef73ad41
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkwZGVYaGR1NSE9NTE4ZTkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=KgtiUAp3ditdHJKw+YuPPmNedi6wR8b12xUSPp9hcUoCRAF7xNzEH3nZxGzbDeVSwJ93E6fDJ4Vl+9dnwKTJZG+vl+h1p5MWiMW8N/vLgv/Gn6vfD3J5HwbqagBHelnTeZk/XowaXaNkj1TqDjoeCz7JqI3qjrAMILEPUybjYuI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=qDNxEGFKLTcQaAxSN3kPzeWr8ZRpCLzvyWFyoP3CJgQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_175224_027254_9384208E 
X-CRM114-Status: GOOD (  13.11  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTHVjYSwKCk9uIDIvMy8yMDI2IDc6MTEgUE0sIEx1Y2EgQ2VyZXNvbGkgd3JvdGU6Cj4gSGVs
bG8gSGVpa28sIERhbW9uLAo+IAo+IE9uIE1vbiBKYW4gMTksIDIwMjYgYXQgNTowNiBQTSBDRVQs
IEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBIaSBEYW1vbiwKPj4KPj4gQW0gTWl0dHdvY2gsIDE3
LiBEZXplbWJlciAyMDI1LCAxMDozMzowMyBNaXR0ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBz
Y2hyaWViIERhbW9uIERpbmc6Cj4+PiBQQVRDSCAxIGlzIHRvIGVuc3VyZSB0aGUgbGFzdCBicmlk
Z2UgZGVjbGFyZXMgT1BfRURJRCBvciBPUF9NT0RFUyBvciBib3RoLgo+Pj4gUEFUQ0ggMiBpcyBh
IHNtYWxsIGZvcm1hdCBvcHRpbWl6YXRpb24gZm9yIHN0cnVjdCBhbmFsb2dpZF9kcF9kZXZpY2Uu
Cj4+PiBQQVRDSCAzIGlzIHRvIHBlcmZvcm0gbW9kZSBzZXR0aW5nIGluICZkcm1fYnJpZGdlX2Z1
bmNzLmF0b21pY19lbmFibGUuCj4+PiBQQVRDSCA0IGlzIHRvIGFkZCBhIG5ldyBwYXJhbWV0ZXIg
dG8gc3RvcmUgdGhlIHBvaW50IG9mIG5leHQgYnJpZGdlLgo+Pj4gUEFUQ0ggNSBpcyB0byBtYWtl
IGxlZ2FjeSBicmlkZ2UgZHJpdmVyIG1vcmUgdW5pdmVyc2FsLgo+Pj4gUEFUQ0ggNi0xMSBhcmUg
cHJlcGFyYXRpb25zIGZvciBhcHBseSBkcm1fYnJpZGdlX2Nvbm5lY3RvciBoZWxwZXIuCj4+PiBQ
QVRDSCAxMiBpcyB0byBhcHBseSB0aGUgZHJtX2JyaWRnZV9jb25uZWN0b3IgaGVscGVyLgo+Pj4g
UEFUQ0ggMTMtMTUgYXJlIHRvIG1vdmUgdGhlIHBhbmVsL2JyaWRnZSBwYXJzaW5nIHRvIHRoZSBB
bmFsb2dpeCBzaWRlLgo+Pj4gUEFUQ0ggMTYgaXMgdG8gYXR0YWNoIHRoZSBuZXh0IGJyaWRnZSBv
biBBbmFsb2dpeCBzaWRlIHVuaWZvcm1seS4KPj4+IFBBVENIIDE3LTE4IGFyZSB0byBhcHBseSB0
aGUgcGFuZWxfYnJpZGdlIGhlbHBlci4KPj4KPj4gT24gdG9wIG9mIGFsbCB0aGUgcmVjZW50IGJy
aWRnZS1yZWxhdGVkIGNvbW1pdHMsIHRoaXMgc2VyaWVzIHN0aWxsIHdvcmtzCj4+IG9uIG15IHJr
MzU4OC1lRFAgYm9hcmQgLSB3aGVuIHRoZSBkaXNwbGF5IGlzIHBsdWdnZWQgaW4gb24gYm9vdC4K
Pj4KPj4gQXMgdGhhdCBpcyB0aGUgY3VycmVudCBzdGF0ZSB3ZSBhbHNvIGhhZCBiZWZvcmUsIHRo
aXMgc2VyaWVzOgo+PiBUZXN0ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+
IG9uIHJrMzU4OAo+IAo+IEknbSBhcHBwbHlpbmcgcGF0Y2hlcyAxLTMgYW5kIGdvdCBhIGNoZWNr
cGF0Y2ggd2FybmluZyBmb3IgZWFjaCBwYXRjaDoKPiAKPiAgICBXQVJOSU5HOiBVbmV4cGVjdGVk
IGNvbnRlbnQgYWZ0ZXIgZW1haWw6ICdIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiBv
biByazM1ODgnLCBzaG91bGQgYmU6ICdIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiAo
b24gcmszNTg4KScKPiAKPiBJJ20gZml4aW5nIGl0IHdoaWxlIGFwcGx5aW5nIHRob3NlIDMgcGF0
Y2hlcy4KPiAKPiBEYW1vbiwgY2FuIHlvdSBmaXggdGhhdCBmb3IgdGhlIHJlbWFpbmluZyBwYXRj
aGVzIGJlZm9yZSBzZW5kaW5nIGEgbmV3Cj4gaXRlcmF0aW9uPwo+IAoKWWVzLCB3aWxsIGZpeCBp
biB2OS4KCkJlc3QgcmVnYXJkcywKRGFtb24KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
