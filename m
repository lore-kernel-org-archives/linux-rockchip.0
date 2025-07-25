Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5865FC83F26
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jul 2025 01:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLUReS5ZoDhYA5allVBGLDKEUuaxNz+WG+HllRJD9Rw=; b=VabXoJMU9WNwCi
	RRodSl1AB5IxdfrXY3GXgQ455yA3xXj3XpG3ie/l46jqcwfrwInGCLhO8MywasipGlh/D9p7EVurj
	4E0eh5VS53GQbLaVMmAjqocXYAHApSn7QAzjiZ8RXENKWY0Ru/x4mzKf8kE6XZJJKHD7hn+Ay4vc+
	5HBL5lqIecWabPtHIwRCMVVnhI09Dae9jePVrCir1cZmVFyuOyubQDGRpBo+iqztWoktSzInARy1A
	5WSKBVn7F10j8vQKaXmFSjTvWEXaaILfbYzjevlYFh76pVIAAr55CvXYRUifXIodI+t8eyUGaFoqg
	DMQ02PfxnrTffgA7emCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf7h0-00000008rCy-3ctZ;
	Fri, 25 Jul 2025 01:57:50 +0000
Received: from mail-m2453.xmail.ntesmail.com ([45.195.24.53])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf7gx-00000008rCD-1B0D;
	Fri, 25 Jul 2025 01:57:49 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1d303d32a;
	Fri, 25 Jul 2025 09:57:42 +0800 (GMT+08:00)
Message-ID: <b0c9f1cb-1478-4afb-91dd-11c894adb957@rock-chips.com>
Date: Fri, 25 Jul 2025 09:57:41 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 14/14] drm/bridge: analogix_dp: Apply panel_bridge
 helper
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
References: <20250724080304.3572457-1-damon.ding@rock-chips.com>
 <20250724080304.3572457-15-damon.ding@rock-chips.com>
 <22774005.EfDdHjke4D@diego>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <22774005.EfDdHjke4D@diego>
X-HM-Tid: 0a983f4ceb0203a3kunma3621b7ace742
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkhOSVYeSkgYTEofS04eQk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=PVnDJ7pq+2r+4DMA8NohRlIruBXZ6gKP5DOewVoBX5Ylhaokv+t1PQXA1wz9DlnXhKIviBOFuSFK2az7J1VBnBVWbBLOX/xNfakDiLvSGeqwh0cRkks8NRZt4SoD2Kc/oRP7u314F63JU7vY40c1/YwCIuUlJVv545mfkGqrsn4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=WLNloxMnqHrVGlM+X06CnaTEpSjYhIn6LZ5vpWKDrB8=;
	h=date:mime-version:subject:message-id:from;
X-HMAIL-Slblob-Mailprops: v1_kTakW7JjryuX/AmUDtQem/B3OxKuePxjilAMswNtGNl+d8SOM9348xuxK/oXXNSZwBcHuiF6t9UjgbNLcz4+KNbbW05FZ4IyRAbd7dk6NaCKrKysu6K6q60iuPNcCnPIZhyHky03MWq61Dd9wlSoHawfr/5tWrI0+JSsIXQB4zIVwVh5aCpUpITY3yRLmlT8c1z68y7tuyIQ+YT3K0rQ3PQSB+Po3wXuCCetOntKcbiW+2DRzgUYrAy8byX+hKKk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_185747_905669_F4797A82 
X-CRM114-Status: GOOD (  11.12  )
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

SGkgSGVpa28sCgpPbiAyMDI1LzcvMjQgMjE6MDgsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhp
IERhbW9uLAo+IAo+IEFtIERvbm5lcnN0YWcsIDI0LiBKdWxpIDIwMjUsIDEwOjAzOjA0IE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRGFtb24gRGluZzoKPj4gSW4gb3JkZXIg
dG8gdW5pZnkgdGhlIGhhbmRsaW5nIG9mIHRoZSBwYW5lbCBhbmQgYnJpZGdlLCBhcHBseQo+PiBw
YW5lbF9icmlkZ2UgaGVscGVycyBmb3IgQW5hbG9naXggRFAgZHJpdmVyLiBXaXRoIHRoaXMgcGF0
Y2gsIHRoZQo+PiBicmlkZ2Ugc3VwcG9ydCB3aWxsIGFsc28gYmVjb21lIGF2YWlsYWJsZS4KPj4K
Pj4gVGhlIGZvbGxvd2luZyBjaGFuZ2VzIGhhdmUgYmVuIG1hZGU6Cj4+IC0gQXBwbHkgcGxhbmVf
YnJpZGdlIGhlbHBlciB0byB3cmFwIHRoZSBwYW5lbCBhcyB0aGUgYnJpZGdlLgo+PiAtIFJlbW92
ZSB0aGUgZXhwbGljaXQgcGFuZWwgQVBJcyBjYWxscywgd2hpY2ggY2FuIGJlIHJlcGxhY2VkIHdp
dGgKPj4gICAgdGhlIGF1dG9taWMgYnJpZGdlIEFQSXMgY2FsbHMgd3JhcHBlZCBieSB0aGUgcGFu
ZWwuCj4+IC0gVW5pZnkgdGhlIEFQSSBvZiBnZXR0aW5nIG1vZGVzIHRvIGRybV9icmlkZ2VfZ2V0
X21vZGVzKCkuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IERhbW9uIERpbmcgPGRhbW9uLmRpbmdAcm9j
ay1jaGlwcy5jb20+Cj4gCj4gVG8ga2VlcCB0aGUgY29kZSBiaXNlY3RhYmxlLCBJIHRoaW5rIHBh
dGNoZXMgMTIrMTMrMTQgbmVlZCB0byBiZSBvbmUgcGF0Y2g/Cj4gUmVtb3ZpbmcgdGhlIHBhbmVs
LWhhbmRsaW5nIGZlZm9yZSB0aGlzIGNvbnZlcnNpb24gdG8gdGhlIHBhbmVsLWJyaWRnZQo+IHdv
dWxkIHByb2R1Y2UgYSBnYXAsIHdoZXJlIHByZXZpb3VzbHkgaG9va2VkIHVwIHBhbmVscyB3b3Vs
ZCBub3Qgd29yawo+IGlmIGEgZ2l0IGJpc2VjdCBsYW5kcyBkaXJlY3RseSBiZWZvcmUgdGhpcyBw
YXRjaCAxNCwgSSB0aGluawo+IAo+IAo+IEhlaWtvCj4gCj4gCgpBcyBleHBlY3RlZCwgcGF0Y2gg
MTIgYW5kIHBhdGNoIDEzIHNob3VsZCByZW1haW4gZnVuY3Rpb25hbGx5IAppbmRlcGVuZGVudC4g
VGhleSBzaG91bGQgYmUgbG9naWNhbGx5IHNlbGYtY29udGFpbmVkIGV2ZW4gd2l0aG91dCBwYXRj
aCAKMTQuIE90aGVyd2lzZSwgcGF0Y2ggMTQgd291bGQgbmVlZCB0byBpbmNvcnBvcmF0ZSB0aG9z
ZSBwYW5lbCBvcGVyYXRpb25zIAp2aWEgcGFuZWxfYnJpZGdlIGFzIHdlbGwuCgpCb3RoIHBhdGNo
IDEyIGFuZCBwYXRjaCAxMyBoYXZlIGJlZW4gaW5kZXBlbmRlbnRseSB2YWxpZGF0ZWQgb24gdGhl
IApSSzM1ODhTIEVWQjEuCgpCZXN0IHJlZ2FyZHMsCkRhbW9uCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
