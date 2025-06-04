Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90FBDC61CE7
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 08:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWEwbWPSuZhg7Q7BfCs2ueAJ2/igF2p1Bc13TmpELks=; b=ksyYIRHa5YcVoe
	QZO9K6ocszq4LhdjF+cWQ+RdM1jWACam3dmLl0jHjglN9Hl6Vrb46a8q0+Ik1oTorKPflTCGZXNY3
	YhPRII3QukoP0graYatD8+fKBM9Oxe2TNzwUi0tflLllbGcOv7X0GoXL7hEvZ0G1KAEni3+5yO08E
	CkLANoVeik1eMMrFA5TcdNqolgZHFI7ct2+cmUxHUjg/kOPsWQyzxlAssaNnuEYut7n45FjcsfOWe
	nPVpUQy678Bph6/rNnp5Y/m7TT+9Yc7nuydOBadaDrwyKo0W+ASacgq0Vo/NtF9edqAVTCz/xddVH
	ShPLscpGJLshAuvk412g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMjk5-0000000CvsP-3TVM;
	Wed, 04 Jun 2025 08:45:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMjen-0000000Cuym-0qQ8;
	Wed, 04 Jun 2025 08:39:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=ncKFJ2m/Ggn0OpW0FtMpeotUrPRiDPOb7CG/Tgptuh8=; b=nO88kd9jGBbtA/VXI9JU4IzVTa
	w74PJFH/OIZhNdpijwszwaIH+HuTCH+056zaeZOh03cSkp8IjBG+e1S59fJTQiB6KX0WkRGxwW/HX
	B/N5R/kIX/EQdVP4YYRG9+tjyEZAlrEwtn5AUAXfo6jS+ZsZhTitNjGMoNIgpsUmf4GCHvp+9F9eU
	KuOtvw1YCtB6dWNlpNRkyHMWTzH1DLtKxbVevZRCtxl04fOuHX2y02U6QE8m1YUA9d3mlDoimPpQI
	3+LPvnLu3gnU96/LoNhfzu/BQyjR+pb9cjy6we2/aR+NJLSdWlfuxnD5YcJIlP8Kp8Y29bjjM2U2F
	HwnUT9vA==;
Received: from i53875a2b.versanet.de ([83.135.90.43] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uMjeO-0006eE-8a; Wed, 04 Jun 2025 10:39:08 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
Subject: Re: [PATCH v6 03/10] arm64: dts: rockchip: Enable the NPU on quartzpro64
Date: Wed, 04 Jun 2025 10:39:07 +0200
Message-ID: <4605519.Wku2Vz74k6@diego>
In-Reply-To: <20250604-6-10-rocket-v6-3-237ac75ddb5e@tomeuvizoso.net>
References: <20250604-6-10-rocket-v6-0-237ac75ddb5e@tomeuvizoso.net>
 <20250604-6-10-rocket-v6-3-237ac75ddb5e@tomeuvizoso.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_013933_238211_66066BA6 
X-CRM114-Status: GOOD (  16.68  )
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

QW0gTWl0dHdvY2gsIDQuIEp1bmkgMjAyNSwgMDk6NTc6MTYgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBUb21ldSBWaXpvc286Cj4gRW5hYmxlIHRoZSBub2RlcyBhZGRlZCBp
biBhIHByZXZpb3VzIGNvbW1pdCB0byB0aGUgcmszNTg4cyBkZXZpY2UgdHJlZS4KCnNob3VsZG4n
dCB0aGUgcXVhcnR6cHJvNjQgYWxzbyBuZWVkIGEgdmRkX25wdSByZWd1bGF0b3IsIGxpa2UgdGhl
IHJvY2stNWIKc3VwcG9ydCBhdCB0aGUgZW5kIG9mIHRoZSBzZXJpZXM/IElmIG5vdCwgcGxlYXNl
IG1lbnRpb24gdGhhdCBpbiB0aGUgY29tbWl0Cm1lc3NhZ2UuCgpBbHNvLCBpdCdkIG1ha2Ugc2Vu
c2UgdG8gY29sbGVjdCBhbGwgZHRzIHBhdGNoZXMgaW4gb25lIGxvY2F0aW9uIChwcm9iYWJseQph
dCB0aGUgYm90dG9tIG9mIHRoZSBzZXJpZXM9CgoKSGVpa28KCgo+IHYyOgo+IC0gU3BsaXQgbm9k
ZXMgKFNlYmFzdGlhbiBSZWljaGVsKQo+IC0gU29ydCBub2RlcyAoU2ViYXN0aWFuIFJlaWNoZWwp
Cj4gLSBBZGQgYm9hcmQgcmVndWxhdG9ycyAoU2ViYXN0aWFuIFJlaWNoZWwpCj4gCj4gU2lnbmVk
LW9mZi1ieTogVG9tZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9zby5uZXQ+Cj4gLS0tCj4gIC4u
Li9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcXVhcnR6cHJvNjQuZHRzIHwgMzAgKysr
KysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1xdWFy
dHpwcm82NC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1xdWFydHpw
cm82NC5kdHMKPiBpbmRleCA3OGFhYTY2MzViNWQyMGE2NTBhYmE4ZDhjMmQwZDRmNDk4ZmYwZDMz
Li4yZTQ1YjIxM2MyNWI5OTU3MWRkNzFjZTkwYmM3OTcwNDE4ZjYwMjc2IDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXF1YXJ0enBybzY0LmR0cwo+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXF1YXJ0enBybzY0LmR0cwo+
IEBAIC00MTUsNiArNDE1LDM2IEBAICZwY2llM3g0IHsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAg
fTsKPiAgCj4gKyZya25uX2NvcmVfdG9wIHsKPiArCW5wdS1zdXBwbHkgPSA8JnZkZF9ucHVfczA+
Owo+ICsJc3JhbS1zdXBwbHkgPSA8JnZkZF9ucHVfbWVtX3MwPjsKPiArCXN0YXR1cyA9ICJva2F5
IjsKPiArfTsKPiArCj4gKyZya25uX2NvcmVfMSB7Cj4gKwlucHUtc3VwcGx5ID0gPCZ2ZGRfbnB1
X3MwPjsKPiArCXNyYW0tc3VwcGx5ID0gPCZ2ZGRfbnB1X21lbV9zMD47Cj4gKwlzdGF0dXMgPSAi
b2theSI7Cj4gK307Cj4gKwo+ICsmcmtubl9jb3JlXzIgewo+ICsJbnB1LXN1cHBseSA9IDwmdmRk
X25wdV9zMD47Cj4gKwlzcmFtLXN1cHBseSA9IDwmdmRkX25wdV9tZW1fczA+Owo+ICsJc3RhdHVz
ID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArJnJrbm5fbW11X3RvcCB7Cj4gKwlzdGF0dXMgPSAib2th
eSI7Cj4gK307Cj4gKwo+ICsmcmtubl9tbXVfMSB7Cj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307
Cj4gKwo+ICsmcmtubl9tbXVfMiB7Cj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICAm
c2FyYWRjIHsKPiAgCXZyZWYtc3VwcGx5ID0gPCZ2Y2NfMXY4X3MwPjsKPiAgCXN0YXR1cyA9ICJv
a2F5IjsKPiAKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
