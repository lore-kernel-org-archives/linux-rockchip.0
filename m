Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1887C83F26
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jul 2025 02:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VEJnJ27MO+28sPMmw3diNjL7qQTGMXlLnf6IfTt+ZMM=; b=Zc2rUvkVi8NS6L
	E0ID5D/VBPapuSCbNH9ovtsRRKopA46NuJ1FH3pkojHr09Dz/v7yJLEAp9ghrETCePPZb4dmz9P3m
	DvzMHggahe0X6ulcqOLjliNJRY+jJSykwXGUBGQ+1f6VRXqbYtvYBsoZq3mvGzYoJibtj2uG9jBbf
	bcbZaeNOW/udPoav5ncJ1PO4/9XiTDCcRFmORko9TwBoM/lafgR05ZPJUah2Zj9rTLGwVAZFIGgzL
	OF0sfIlw3T2+lViHZ6GePOrtjQg2DRhfEU3s42IOcJbOz7OI9pFpyLptmQw0AbgyQoT9Is3LCS0ex
	MmsL9WD5ktof/48Ky4XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf7xs-00000008sl2-2eZB;
	Fri, 25 Jul 2025 02:15:16 +0000
Received: from mail-m32117.qiye.163.com ([220.197.32.117])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf7xp-00000008sjE-22PW;
	Fri, 25 Jul 2025 02:15:15 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1d30daf98;
	Fri, 25 Jul 2025 10:15:07 +0800 (GMT+08:00)
Message-ID: <b0ce0d8d-4ceb-419e-a892-d39b8633aa13@rock-chips.com>
Date: Fri, 25 Jul 2025 10:15:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/14] Apply drm_bridge_connector and panel_bridge
 helper for the Analogix DP driver
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
 <3890785.kQq0lBPeGt@diego>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <3890785.kQq0lBPeGt@diego>
X-HM-Tid: 0a983f5cdd0d03a3kunm18dd1a7ad70d9
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk8YSlYYQxpJTUhCQk1PSBlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=KMKARJPJW06jkInizHjvIBa2f9dBzLMKkAMK563pYRj3p2h0dxgKuirrWh301Xv0TuGwm0OOTALQT9/UErJ0HweSyG88BuTMnkDSZTAH9b5AoJC+/+Dzp6HROoAHvz1cWYDn25PVnk/mD/yU9OE2aag4cqZ10fbbzaXH1xMcwh4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=DLYgWqNIFGd0r4HW5nV9IESqFa9QNfwIUAHcBOdrhMg=;
	h=date:mime-version:subject:message-id:from;
X-HMAIL-Slblob-Mailprops: v1_neYYFWAlZzU6u2dlJ0lhZxxW3LNr/WCm4T/Zs27CXRucL5kMTeaK3zjPaPc3+xDf0VaycF59W9UbzOeqsUypy93IvVGAp7EIBubMTc/Nt06gB9UeYFfpG7JNT+Y5puW4OW+6FkYrGV5kMDJPKhRndEU3OQhP/OI1WD0ctb7/jZaQ+vCyokORdz2Ph+0uw0sli3ZylNUMyRtRolfNPJgkc0QR8fyHosI9qk9ISzsXHYewwFeVLwmP+cPu7IpelpBm834g3VVGqhmDqG9rXq1NrA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_191514_003985_EBE55B85 
X-CRM114-Status: UNSURE (   8.42  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiAyMDI1LzcvMjQgMjE6MTAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFt
IERvbm5lcnN0YWcsIDI0LiBKdWxpIDIwMjUsIDEwOjAyOjUwIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgRGFtb24gRGluZzoKPj4gUEFUQ0ggMSBpcyBhIHNtYWxsIGZvcm1h
dCBvcHRpbWl6YXRpb24gZm9yIHN0cnVjdCBhbmFsb2dpZF9kcF9kZXZpY2UuCj4+IFBBVENIIDIg
aXMgdG8gcGVyZm9ybSBtb2RlIHNldHRpbmcgaW4gJmRybV9icmlkZ2VfZnVuY3MuYXRvbWljX2Vu
YWJsZS4KPj4gUEFUQ0ggMyBpcyB0byBhcHBseSBhIGJldHRlciBBUEkgZm9yIHRoZSBlbmNvZGVy
IGluaXRpYWxpemF0aW9uLgo+PiBQQVRDSCA0LTcgYXJlIHByZXBhcmF0aW9ucyBmb3IgYXBwbHkg
ZHJtX2JyaWRnZV9jb25uZWN0b3IgaGVscGVyLgo+PiBQQVRDSCA4IGlzIHRvIGFwcGx5IHRoZSBk
cm1fYnJpZGdlX2Nvbm5lY3RvciBoZWxwZXIuCj4+IFBBVENIIDktMTEgYXJlIHRvIG1vdmUgdGhl
IHBhbmVsL2JyaWRnZSBwYXJzaW5nIHRvIHRoZSBBbmFsb2dpeCBzaWRlLgo+PiBQQVRDSCAxMi0x
MyBhcmUgcHJlcGFyYXRpb25zIGZvciBhcHBseSBwYW5lbF9icmlkZ2UgaGVscGVyLgo+PiBQQVRD
SCAxNCBpcyB0byBhcHBseSB0aGUgcGFuZWxfYnJpZGdlIGhlbHBlci4KPiAKPiBmb3IgZnV0dXJl
IHJldmlzaW9ucywgcGxlYXNlIHByb3ZpZGUgYSBjaGFuZ2Vsb2cgb24gd2hhdCBjaGFuZ2VkIHNp
bmNlCj4gdGhlIHByZXZpb3VzIHZlcnNpb24sIEkgZ3Vlc3MgaWRlYWxseSBoZXJlIGluIHRoZSBj
b3Zlci1sZXR0ZXIuCj4gCj4gCj4gT24gbXkgcmszNTg4LXRpZ2VyLWRpc3BsYXlwb3J0LWNhcnJp
ZXIgdGhpcyB3b3JrcyBsaWtlIGEgY2hhcm0KPiBUZXN0ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxo
ZWlrb0BzbnRlY2guZGU+Cj4gCj4gCj4gCj4gCgpHbGFkIHRvIHNlZSB5b3VyIHJldmlldyBhbmQg
dGVzdC4gOi0pCgpJIHdpbGwgaW5jbHVkZSB0aGUgdmVyc2lvbi10by12ZXJzaW9uIGNoYW5nZWxv
Z3MgKHYyIC0+IHYzIGFuZCB2MyAtPiB2NCkgCmluIHRoZSBuZXh0IGl0ZXJhdGlvbi4KCkJlc3Qg
cmVnYXJkcywKRGFtb24KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
