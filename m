Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7628C83F20
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jul 2025 07:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UfiTYCROZT7m5nqCavGGI35owJY9BYPCgFBf/kSeiuk=; b=cbkksUL8N4I51I
	SaIWHuBsH5F4ljiel5qRfjjECtK50GOEE4koqeAKnGWWV6s1oeFWyUA8QBlvwt+B0OhOxQog1d72I
	dCCo1FuylOUx4ZVlEpwlFDtRikecyrnzPHxKzwsj8kP2H5OxiT3OMadFgepUkt/gmGD83y/uv4yFE
	4Fi2Cg2FAw6EssbrRPRmevs6ug91/7x/5/QRkc31ZXhduwa1yjgc4AixSraDTYC0LgzgfMzNUUqpx
	2eLGePhtPyGTagOTT2EWeWqd5wG+jFJbuT1BpoBRE8sxDH8d5iFZvu1J90EbVFfqqyL8zIBzUjFnb
	K30vAEt/8NVH1NKLK3Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua8NP-0000000E0QB-0lWF;
	Fri, 11 Jul 2025 07:40:59 +0000
Received: from mail-m21469.qiye.163.com ([117.135.214.69])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua89x-0000000DyA4-2yHT;
	Fri, 11 Jul 2025 07:27:07 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1bae50b4c;
	Fri, 11 Jul 2025 15:26:58 +0800 (GMT+08:00)
Message-ID: <ec271884-87a1-4117-a7f7-45e423b9de8a@rock-chips.com>
Date: Fri, 11 Jul 2025 15:26:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/12] drm/exynos: exynos_dp: Remove redundant
 &analogix_dp_plat_data.skip_connector
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 jingoohan1@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 hjc@rock-chips.com, andy.yan@rock-chips.com,
 dmitry.baryshkov@oss.qualcomm.com, l.stach@pengutronix.de,
 dianders@chromium.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20250709070139.3130635-1-damon.ding@rock-chips.com>
 <20250709070139.3130635-6-damon.ding@rock-chips.com>
 <6306541.2iPT33SAM4@diego>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <6306541.2iPT33SAM4@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0saQ1ZPTxhIHh8aQx1OS0NWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a97f86155fa03a3kunm5a905d91f32139
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MC46TRw5ATE0Qh8eE1ZDGTwX
	PEIKCy9VSlVKTE5JSUpDQ0lLSUpNVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJQk5INwY+
DKIM-Signature: a=rsa-sha256;
	b=MVDBP+MlXmQIBids0j03Vrslb0E7yHyCGuZ7vavVT9bPeByoPFrna+SYZtUEzpKc162OMDNeixdHM2x4Lyi7dBzfmK8GzfH9YcN70K/4VBtbxnDPFtyKHshIarOPguVv7/6s15pne+vD4nRZd1JOoUilcMrtPA7VZP8FsUR2+wQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=3f/SyxPB0VfACu7tJD6T5FVMoYuITfLiK8Gntfmm160=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_002706_001446_D1EC2E78 
X-CRM114-Status: GOOD (  14.20  )
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

SGkgSGVpa28sCgpPbiAyMDI1LzcvMTAgMzo1OCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkg
RGFtb24sCj4gCj4gQW0gTWl0dHdvY2gsIDkuIEp1bGkgMjAyNSwgMDk6MDE6MzIgTWl0dGVsZXVy
b3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBEYW1vbiBEaW5nOgo+PiBUaGUgJmFuYWxvZ2l4
X2RwX3BsYXRfZGF0YS5za2lwX2Nvbm5lY3RvciByZWxhdGVkIGNoZWNrIGNhbiBiZSByZXBsYWNl
ZAo+PiBieSAmYW5hbG9naXhfZHBfcGxhdF9kYXRhLmJyaWRnZS4KPj4KPj4gU2lnbmVkLW9mZi1i
eTogRGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+ICAgZHJp
dmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHAuYyB8IDEgLQo+PiAgIDEgZmlsZSBjaGFuZ2Vk
LCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9z
L2V4eW5vc19kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHAuYwo+PiBpbmRl
eCA5ZDdkM2YwMDllNTguLjllMTMxM2ZkZWNhZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2V4eW5vcy9leHlub3NfZHAuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4
eW5vc19kcC5jCj4+IEBAIC0yMzcsNyArMjM3LDYgQEAgc3RhdGljIGludCBleHlub3NfZHBfcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4gICAJZHAtPnBsYXRfZGF0YS5wb3dl
cl9vZmYgPSBleHlub3NfZHBfcG93ZXJvZmY7Cj4+ICAgCWRwLT5wbGF0X2RhdGEuYXR0YWNoID0g
ZXh5bm9zX2RwX2JyaWRnZV9hdHRhY2g7Cj4+ICAgCWRwLT5wbGF0X2RhdGEuZ2V0X21vZGVzID0g
ZXh5bm9zX2RwX2dldF9tb2RlczsKPj4gLQlkcC0+cGxhdF9kYXRhLnNraXBfY29ubmVjdG9yID0g
ISFicmlkZ2U7Cj4+ICAgCj4+ICAgb3V0Ogo+PiAgIAlkcC0+YWRwID0gYW5hbG9naXhfZHBfcHJv
YmUoZGV2LCAmZHAtPnBsYXRfZGF0YSk7Cj4+Cj4gCj4gSSB0aGluayB5b3UgbWlnaHQgd2FudCB0
byBtZXJnZQo+IC0gZHJtL2V4eW5vczogZXh5bm9zX2RwOiBSZW1vdmUgcmVkdW5kYW50ICZhbmFs
b2dpeF9kcF9wbGF0X2RhdGEuc2tpcF9jb25uZWN0b3IKPiAtIGRybS9icmlkZ2U6IGFuYWxvZ2l4
X2RwOiBSZW1vdmUgcmVkdW5kYW50ICZhbmFsb2dpeF9kcF9wbGF0X2RhdGEuc2tpcF9jb25uZWN0
b3IKPiAKPiBCZWNhdXNlIHdoZW4gc2VwYXJhdGUgdGhpcyBjcmVhdGVzIGEgYmlzZWN0aW9uIGlz
c3VlLgo+IExpa2Ugd2hlbiBhIGJpc2VjdCBoYXBwZW5zIHRvIGxhbmQgZGlyZWN0bHkgb24gdGhp
cyBjb21taXQsIHlvdSBhbHJlYWR5IGhhdmUKPiByZW1vdmVkIHRoZSBleHlub3MgYXNzaWdubWVu
dCwgYnV0IHRoZSB1cGRhdGVkIGNoZWNrIGZyb20gdGhlIGZvbGxvd2luZyBwYXRjaAo+IGlzIG5v
dCB5ZXQgaW4gcGxhY2UuCj4gCj4gCgpPaCwgSSBzZWUuIFNxdWFzaGluZyByZWxhdGVkIGNvbW1p
dHMgdG9nZXRoZXIgd291bGQgYmUgYmV0dGVyLgoKQmVzdCByZWdhcmRzLApEYW1vbgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
