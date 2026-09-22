Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48647C982F1
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 08:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5UX821w7t4feCjoqXK6LofNUE3fU73xRihf4GPmLxo=; b=U70l7VrNBSA2Hv
	kwXfXAyN5ANhGJ0QLFPABP3jKCJxWOuJGy+/CUKIBZKYte23ukGsYaE5Muut2ycy1beqd2eB/c5bx
	K/rQdcptdEJoRg9s769JBk5Lz03MKginH6GVbRwv8xcDta+vdkBuVdiNnVhcRVfJryr+8dTo9iBfF
	g4BVunJkhBi69LvQ8a35z+iI/3OvIP+/8oEGAuoACtLaoU+i6z7cSg55U6Yg8G9hIYM6s57qYKICM
	e5P1kFjc2/IXwBKlItM0UXxgyE013mtinhpbxctynRTS4Pk9pPSffAm7f+zXbHzl3NxzA4/U9jsme
	kaZKto/aGTFl5oWZTU8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8wGY-00000004mCf-3JWj;
	Tue, 22 Sep 2026 08:54:18 +0000
Received: from mail-m9371.xmail.ntesmail.com ([103.126.93.71])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8wGV-00000004m8h-0LUu;
	Tue, 22 Sep 2026 08:54:17 +0000
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4eb501a7b;
	Tue, 22 Sep 2026 16:54:04 +0800 (GMT+08:00)
Message-ID: <5a411d61-18f4-4d12-9acf-78320ab97d6b@rock-chips.com>
Date: Tue, 22 Sep 2026 16:54:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 19/19] drm/bridge: analogix_dp: don't create a
 panel_bridge
To: Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jessica Zhang <jesszhan0024@gmail.com>,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>,
 Paul Kocialkowski <paulk@sys-base.io>, Linus Walleij <linusw@kernel.org>,
 Inki Dae <inki.dae@samsung.com>, Jagan Teki <jagan@amarulasolutions.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Sean Paul <sean@poorly.run>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>
Cc: Albert Esteve <aesteve@redhat.com>, Anusha Srivatsa
 <asrivats@redhat.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, asahi@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
References: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com>
 <20260916-drm-bridge-every-panel-v3-19-83afb4f1a707@bootlin.com>
 <975a4d45-9a61-4858-b498-8bc0a1e44746@rock-chips.com>
 <96882735-091f-49c6-a47b-5da8be711818@rock-chips.com>
 <DLLOW2ROGP6L.3GTVT76VYPGAU@bootlin.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <DLLOW2ROGP6L.3GTVT76VYPGAU@bootlin.com>
X-HM-Tid: 0aa0c8527e9a03a8kunm0c11385e8262e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCQk8YVh5KTU4fTBpIHUJPSVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQkxVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=VUMZwH3ZKyjnCH60Goi5U3Vl4nFl+MAx1A1qjQ4sQPJsJELH/axOKlZpuWVXdpUvCCP00441WDmikcC3zP82z6IUPyTAT3cyO6aUOORiTTynOxObIcFhdpn7WhshuvAgZWqwqWeg91ArKUw1BugGOb8+J2UJCAexwN2J2SQ4UZo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=nxecp8OUY0Lx57p1dANxfv0uvDW3w9nGB0PrL1gdmKA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_015415_629260_5299811E 
X-CRM114-Status: GOOD (  13.31  )
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

T24gOS8yMi8yMDI2IDQ6MDcgUE0sIEx1Y2EgQ2VyZXNvbGkgd3JvdGU6Cj4gSGVsbG8gRGFtb24s
Cj4gCj4gT24gTW9uIFNlcCAyMSwgMjAyNiBhdCA4OjM0IEFNIENFU1QsIERhbW9uIERpbmcgd3Jv
dGU6Cj4+IE9uIDkvMjEvMjAyNiAxMTowNyBBTSwgRGFtb24gRGluZyB3cm90ZToKPj4+IEhpIEx1
Y2EsCj4+Pgo+Pj4gT24gOS8xNi8yMDI2IDk6NDUgUE0sIEx1Y2EgQ2VyZXNvbGkgd3JvdGU6Cj4+
Pj4gTm93IGEgcGFuZWxfYnJpZGdlIGlzIGF1dG9tYXRpY2FsbHkgY3JlYXRlZCBmb3IgZXZlcnkg
ZHJtX3BhbmVsIGFuZCB0aGUKPj4+PiBwYW5lbC1icmlkZ2UgQVBJIGlzIGp1c3QgYSBkZXByZWNh
dGVkIHdyYXBwZXIgdG8gYWNjZXNzIGl0Lgo+Pj4+Cj4+Pj4gVXBkYXRlIGFuZCBzaW1wbGlmeSB0
aGUgY29kZSBieSBqdXN0IGdldHRpbmcgYSByZWZlcmVuY2UgdG8gdGhlCj4+Pj4gYWxyZWFkeS1l
eGlzdGluZyBicmlkZ2UgdXNpbmcgb2ZfZHJtX2dldF9icmlkZ2VfYnlfZW5kcG9pbnQoKS4KPj4+
Pgo+Pj4+IEFzIG9mX2RybV9nZXRfYnJpZGdlX2J5X2VuZHBvaW50KCkgcmV0dXJucyBhIHJlZmNv
dW50ZWQgYnJpZGdlLCB0YWtlIGNhcmUKPj4+PiBvZiBwdXR0aW5nIHRoZSBicmlkZ2UgcmVmZXJl
bmNlLiBUaGlzIGlzIG5vdCBlYXNpbHkgZG9uZSBpbiB0aGUgcmVtb3ZlCj4+Pj4gcGF0aAo+Pj4+
IGR1ZSB0byB0aGUgZGlmZmVyZW50IHByb2JlIHBhdGhzIG9mIHRoZSB1c2VyIGRyaXZlcnMsIHNv
IGFkZCBhIGRldm0KPj4+PiBhY3Rpb24KPj4+PiB0byBlbnN1cmUgdGhlIHJlZmVyZW5jZSBpcyBw
dXQgb25seSB3aGVuIGl0IHdhcyB0YWtlbi4KPj4+Pgo+Pj4+IEFzc2lzdGVkLWJ5OiBvcGVuY29k
ZTpkZWVwc2Vlay12NC1mbGFzaC0wNzMxCj4+Pj4gU2lnbmVkLW9mZi1ieTogTHVjYSBDZXJlc29s
aSA8bHVjYS5jZXJlc29saUBib290bGluLmNvbT4KPj4+PiAtLS0KPj4+PiAgwqAgZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9LY29uZmlnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAg
MSAtCj4+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBf
Y29yZS5jIHwgNDAgKysrKysrKysrKysrCj4+Pj4gKy0tLS0tLS0tLQo+Pj4+ICDCoCBkcml2ZXJz
L2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfCAzNiArCj4+Pj4gKy0tLS0tLS0tLS0tLS0tLS0tCj4+Pj4gIMKgIGRyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9hbmFsb2dpeF9kcC1yb2NrY2hpcC5jwqDCoMKgIHzCoCA5IC0tLS0tCj4+Pj4g
IMKgIGluY2x1ZGUvZHJtL2JyaWRnZS9hbmFsb2dpeF9kcC5owqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHzCoCAxIC0KPj4+PiAgwqAgNSBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNl
cnRpb25zKCspLCA2MiBkZWxldGlvbnMoLSkKPj4+Pgo+Pgo+PiBbc25pcF0KPj4KPj4+PiBAQCAt
NDg4LDE0ICs0ODcsNiBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9kcF9yZW1vdmUoc3RydWN0Cj4+
Pj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4+ICDCoCB7Cj4+Pj4gIMKgwqDCoMKgwqAgc3Ry
dWN0IHJvY2tjaGlwX2RwX2RldmljZSAqZHAgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsK
Pj4KPj4gVGhlIGFib3ZlIHVudXNlZCAmcm9ja2NoaXBfZHBfZGV2aWNlIGNvdWxkIGJlIGFsc28g
cmVtdmVkLgo+IAo+IEFoLCBpbmRlZWQhCj4gCj4gSSBndWVzcyBJIGNhbiBrZWVwIHlvdXIgcmV2
aWV3IHRhZ3MgaWYgYXBwbHlpbmcgdGhpcyBwYXRjaCB3aXRoIG9ubHkgdGhpcwo+IGxpbmUgcmVt
b3ZlZC4gQ29ycmVjdD8KPiAKClllYWgsIHN1cmUhCgpCZXN0IHJlZ2FyZHMsCkRhbW9uCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
