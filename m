Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41662D29C41
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 16:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GH+V0ehcG4AJlhP2tMzY7aYLuUTzrzzotFNtcvRD0jw=; b=s4DuV1aKvW0Mo8
	KdRUGu6rNuy/wPdas9KyxIMPIEiICPd8iCoQ1CBJlFXM97lI2qMcUJsdJzNQvB8zi+vhOV8TH0rlz
	V5sButoz7hKDI6iWExgYmG+gMxzc1FYx9vVKltWEhACPfb9WnU3dDSyorWGbvbbNBYoariXNQCf8l
	m6TknAjPYJAtEbgCLAZ7DAQsxZocJ2Gv5GE2Pu+PfkFNpdSn7mor76a7Rddn6irEIylb1jBUh7e9n
	/5cQpMFZzZCEMa7V3txwAH2io7tblPyWoSjY2P4BlPeWP6hhGJIDPbjieDlSq4b4/IBLl4V88SxLa
	zCB18Jv6fLGFnMwu3kvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhrmj-00000002QTK-1z32;
	Mon, 19 Jan 2026 16:07:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhrmh-00000002QSa-2oDN;
	Mon, 19 Jan 2026 16:07:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=8pPZdQPY4l/E6Ki51s+kyYAdtveDcn2eRM82KhpKvEs=; b=NCLAf0GyaclQZPdMNf4kV+ydak
	6AOdai735qQfi6T1UQ3K+ccjB1uImgyZUNmG93Tm03D3La8nM6AWcjwQNRgGIpoZCVP9XmqhH2eG8
	cHedeNeY7IC4dYd0GYcW/QrLJxQ6jfW+7/H8ffARoq4O4fi3ye8TpQJheeEObtEde1vOd25ED51B/
	/BlMHAiDjORwBRjW9/ZR+4UDHdN+ZMJ3YQoKyYzy8O92PBa8FrpqzhuVDHd2BBtAQH3LqiA3utzWH
	s5GZF2eLd1PC5rgjvkWZ+xeBBkYm8asn/ll956TTgFVtFl/6vJSrvBBpzwFUCdc0NWg2VJaf5Q6YB
	Endu1X2g==;
Received: from i53875a9c.versanet.de ([83.135.90.156] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vhrmB-0037VG-F4; Mon, 19 Jan 2026 17:06:48 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
 Damon Ding <damon.ding@rock-chips.com>
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 jingoohan1@gmail.com, p.zabel@pengutronix.de, hjc@rock-chips.com,
 andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 dianders@chromium.org, m.szyprowski@samsung.com, luca.ceresoli@bootlin.com,
 jani.nikula@intel.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v8 00/18] Apply drm_bridge_connector and panel_bridge helper for
 the Analogix DP driver
Date: Mon, 19 Jan 2026 17:06:46 +0100
Message-ID: <6571983.R56niFO833@diego>
In-Reply-To: <20251217093321.3108939-1-damon.ding@rock-chips.com>
References: <20251217093321.3108939-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_080719_726474_E8A169C4 
X-CRM114-Status: GOOD (  16.78  )
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

SGkgRGFtb24sCgpBbSBNaXR0d29jaCwgMTcuIERlemVtYmVyIDIwMjUsIDEwOjMzOjAzIE1pdHRl
bGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgRGFtb24gRGluZzoKPiBQQVRDSCAxIGlz
IHRvIGVuc3VyZSB0aGUgbGFzdCBicmlkZ2UgZGVjbGFyZXMgT1BfRURJRCBvciBPUF9NT0RFUyBv
ciBib3RoLgo+IFBBVENIIDIgaXMgYSBzbWFsbCBmb3JtYXQgb3B0aW1pemF0aW9uIGZvciBzdHJ1
Y3QgYW5hbG9naWRfZHBfZGV2aWNlLgo+IFBBVENIIDMgaXMgdG8gcGVyZm9ybSBtb2RlIHNldHRp
bmcgaW4gJmRybV9icmlkZ2VfZnVuY3MuYXRvbWljX2VuYWJsZS4KPiBQQVRDSCA0IGlzIHRvIGFk
ZCBhIG5ldyBwYXJhbWV0ZXIgdG8gc3RvcmUgdGhlIHBvaW50IG9mIG5leHQgYnJpZGdlLgo+IFBB
VENIIDUgaXMgdG8gbWFrZSBsZWdhY3kgYnJpZGdlIGRyaXZlciBtb3JlIHVuaXZlcnNhbC4KPiBQ
QVRDSCA2LTExIGFyZSBwcmVwYXJhdGlvbnMgZm9yIGFwcGx5IGRybV9icmlkZ2VfY29ubmVjdG9y
IGhlbHBlci4KPiBQQVRDSCAxMiBpcyB0byBhcHBseSB0aGUgZHJtX2JyaWRnZV9jb25uZWN0b3Ig
aGVscGVyLgo+IFBBVENIIDEzLTE1IGFyZSB0byBtb3ZlIHRoZSBwYW5lbC9icmlkZ2UgcGFyc2lu
ZyB0byB0aGUgQW5hbG9naXggc2lkZS4KPiBQQVRDSCAxNiBpcyB0byBhdHRhY2ggdGhlIG5leHQg
YnJpZGdlIG9uIEFuYWxvZ2l4IHNpZGUgdW5pZm9ybWx5Lgo+IFBBVENIIDE3LTE4IGFyZSB0byBh
cHBseSB0aGUgcGFuZWxfYnJpZGdlIGhlbHBlci4KCk9uIHRvcCBvZiBhbGwgdGhlIHJlY2VudCBi
cmlkZ2UtcmVsYXRlZCBjb21taXRzLCB0aGlzIHNlcmllcyBzdGlsbCB3b3JrcwpvbiBteSByazM1
ODgtZURQIGJvYXJkIC0gd2hlbiB0aGUgZGlzcGxheSBpcyBwbHVnZ2VkIGluIG9uIGJvb3QuCgpB
cyB0aGF0IGlzIHRoZSBjdXJyZW50IHN0YXRlIHdlIGFsc28gaGFkIGJlZm9yZSwgdGhpcyBzZXJp
ZXM6ClRlc3RlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4gb24gcmszNTg4
CgoKPT09PT09CiEhISBUaGUgZm9sbG93aW5nIHNob3VsZCBub3QgaG9sZCB1cCB0aGlzIHNlcmll
cyB0aG91Z2gsIGJlY2F1c2UgdGhlCmFuYWxvZ2l4LWRwIG5vdCBoYW5kbGluZyBob3RwbHVnLCBp
cyBhbHNvIHRoZSBjdXJyZW50IHN0YXRlIGFscmVhZHkhISEKPT09PT09CgpIb3dldmVyLCBhY3R1
YWxseSBob3RwbHVnZ2luZyB0aGUgZGV2aWNlIGRvZXMgbm90IHNlZW0gdG8gd29yay4KCldpdGgg
dGhlIGhwZC1ncGlvIGluc2lkZSBhIGRwLWNvbm5lY3RvciBub2RlLgoKCigxKSBXaGVuIGJvb3Rp
bmcgY29ubmVjdGVkIGFuZCB1bnBsdWdnaW5nIHRoZSBkaXNwbGF5IEkgZ2V0OgoKWyAgIDQyLjcy
NTg4OF0gcm9ja2NoaXAtZHAgZmRlYzAwMDAuZWRwOiBSeCBNYXggTGluayBSYXRlIGlzIGFibm9y
bWFsIDowICEKWyAgIDQyLjczMzMyNV0gcm9ja2NoaXAtZHAgZmRlYzAwMDAuZWRwOiBSeCBNYXgg
TGFuZSBjb3VudCBpcyBhYm5vcm1hbCA6MCAhClsgICA0Mi43NjQ4NTNdIHJvY2tjaGlwLWRwIGZk
ZWMwMDAwLmVkcDogTFQgbGluayBzdGFydCBmYWlsZWQhClsgICA0Mi43NzExMDVdIHJvY2tjaGlw
LWRwIGZkZWMwMDAwLmVkcDogZURQIGxpbmsgdHJhaW5pbmcgZmFpbGVkICgtMTEwKQpbICAgNDIu
Nzc4MzI5XSByb2NrY2hpcC1kcCBmZGVjMDAwMC5lZHA6IHVuYWJsZSB0byBkbyBsaW5rIHRyYWlu
LCByZXQ9LTExMApbICAgNDIuNzg1NzQ3XSBbZHJtOmFuYWxvZ2l4X2RwX2JyaWRnZV9hdG9taWNf
ZW5hYmxlXSAqRVJST1IqIGRwIGNvbW1pdCBlcnJvciwgcmV0ID0gLTExMAooIC4uLiByZXBlYXN0
cyBhIGJ1bmNoIG9mIHRpbWVzIC4uLiApClsgICA0My4yODQ4OTddIHJvY2tjaGlwLWRwIGZkZWMw
MDAwLmVkcDogZmFpbGVkIHRvIHNldCBicmlkZ2UsIHJldHJ5OiA0ClsgICA0My4yOTIwNDVdIHJv
Y2tjaGlwLWRwIGZkZWMwMDAwLmVkcDogdG9vIG1hbnkgdGltZXMgcmV0cnkgc2V0IGJyaWRnZSwg
Z2l2ZSBpdCB1cAoKcGx1Z2dpbmcgdGhlIGVEUCBiYWNrIGluIHJlZW5hYmxlcyB0aGUgZGlzcGxh
eSBzdWNjZXNzZnVsbHkgdGhvdWdoLgoKKDIpIEJvb3Rpbmcgd2l0aCB0aGUgZGlzcGxheSB1bnBs
dWdnZWQKClNhbWUgbWVzc2FnZXMgYXMgYWJvdmUsIGJ1dCBwbHVnZ2luZyB0aGUgZGlzcGxheSBp
biBmb3IgdGhlIGZpcnN0IHRpbWUKZG9lcyBub3QgY3JlYXRlIGFuIG91dHB1dC4KCkknbGwgdHJ5
IHRvIGRpZyBtb3JlLCBidXQgaWYgeW91IGhhdmUgYW4gaWRlYSwgd2hhdCBJIHNob3VsZCBsb29r
IGF0LCBJJ2QsCmJlIHJlYWxseSBncmF0ZWZ1bC4KCgpUaGFua3MKSGVpa28KCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
