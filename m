Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FDB3C61CE8
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 13:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6S9A4+lKRBRurFgL6qviKYOejT8shTn0zAANPgh+G/E=; b=cIjGb5OYGPbqTw
	xNe3kmsO3tvbeoIWE4prrRogLga/FoIS63BdNbiUnunEwe4T8e00RZcIjprynokxjiH+yiXLua9KY
	/7H4YZtf9/dRXbOe5EmOOZjxpl7b2FYhFIJesRIGjBFHgtW2k0PRYJb0420BNaH1KEa5l/h2OtdFp
	Gt9iXEkty/eR9WXWLVoZmbi88DOZuo7iid/Egq4n8rR2+vw7d4ONR+QTek1AeJAsrZMZTkAdoHSWB
	vQHXIbBwj9vFTo4WQhLJyVaxmfRqvL1dp5XXmTqxNBFNq671EbFK67tpQ+cW5Q4G0Hj9bFyiWHQuz
	XeJIMoyMZjkQAhEI3Ujw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPhpq-0000000DN2D-42MV;
	Thu, 12 Jun 2025 13:19:14 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPfjZ-0000000D5gr-3HuG;
	Thu, 12 Jun 2025 11:04:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1749726275;
	bh=+Ccw5JM2ysrP6p18gVlHfA/xuzZsyf6EShm65BKIUU4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=crVdHEJHZ49tKIM6cQp/sxc/UxQS0Md/A9mrs7WZOkhjq8cTDVp3bXd251kYyZ9ES
	 tIru8QtPCoM+ymTaCYPFVysC2oVFi+IWaKpPZfvhinNeiK5m/MPEGeljYEtCZktkcy
	 KU/RZjdrlRcTyhYOfuZNW+BAyPF1ZiTWe6B4ypKVOqwE9ROhDjFRYIpllSyfFapLc5
	 PMpW7jgXnYZwdrN5Ju3TXOQLHo4Saa6z6zyWdwl9RBrZd9JPyLu0lF5pMa1py3aSEU
	 dHQqmCoTgonMIG6DgcPYqqpehYKSSSwQBV09hbO0Vc6wdyXdncNZKGfflK2gF50f3d
	 QtXM5Fq6DOJJg==
Received: from [192.168.1.90] (unknown [212.93.144.165])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2B0D417E088C;
	Thu, 12 Jun 2025 13:04:35 +0200 (CEST)
Message-ID: <535a4e1c-33d3-4941-8315-df20d4dec799@collabora.com>
Date: Thu, 12 Jun 2025 14:04:09 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add HDMI PHY PLL clock source
 to VOP2 on rk3576
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, kernel@collabora.com,
 Andy Yan <andyshrk@163.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20250612-rk3576-hdmitx-fix-v1-0-4b11007d8675@collabora.com>
 <20250612-rk3576-hdmitx-fix-v1-3-4b11007d8675@collabora.com>
 <01D5D2D8-392B-4926-884E-1A4FB87C03CF@gmail.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <01D5D2D8-392B-4926-884E-1A4FB87C03CF@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_040437_973283_095E8BAC 
X-CRM114-Status: GOOD (  14.67  )
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

T24gNi8xMi8yNSAxOjIyIFBNLCBQaW90ciBPbmlzemN6dWsgd3JvdGU6Cj4gCj4gCj4+IFdpYWRv
bW/Fm8SHIG5hcGlzYW5hIHByemV6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2Fs
dGVhQGNvbGxhYm9yYS5jb20+IHcgZG5pdSAxMSBjemUgMjAyNSwgbyBnb2R6LiAyMzo0NzoKPj4K
Pj4gU2luY2UgY29tbWl0IGM4NzFhMzExZWRmMCAoInBoeTogcm9ja2NoaXA6IHNhbXN1bmctaGRw
dHg6IFNldHVwIFRNRFMKPj4gY2hhciByYXRlIHZpYSBwaHlfY29uZmlndXJlX29wdHNfaGRtaSIp
LCB0aGUgd29ya2Fyb3VuZCBvZiBwYXNzaW5nIHRoZQo+PiByYXRlIGZyb20gRFcgSERNSSBRUCBi
cmlkZ2UgZHJpdmVyIHZpYSBwaHlfc2V0X2J1c193aWR0aCgpIGJlY2FtZQo+PiBwYXJ0aWFsbHkg
YnJva2VuLCBhcyBpdCBjYW5ub3QgcmVsaWFibHkgaGFuZGxlIG1vZGUgc3dpdGNoZXMgYW55bW9y
ZS4KPj4KPj4gQXR0ZW1wdGluZyB0byBmaXggdGhpcyB1cCBhdCBQSFkgbGV2ZWwgd291bGQgbm90
IG9ubHkgaW50cm9kdWNlCj4+IGFkZGl0aW9uYWwgaGFja3MsIGJ1dCBpdCB3b3VsZCBhbHNvIGZh
aWwgdG8gYWRlcXVhdGVseSByZXNvbHZlIHRoZQo+PiBkaXNwbGF5IGlzc3VlcyB0aGF0IGFyZSBh
IGNvbnNlcXVlbmNlIG9mIHRoZSBzeXN0ZW0gQ1JVIGxpbWl0YXRpb25zLgo+Pgo+PiBJbnN0ZWFk
LCBwcm9jZWVkIHdpdGggdGhlIHNvbHV0aW9uIGFscmVhZHkgaW1wbGVtZW50ZWQgZm9yIFJLMzU4
ODogbWFrZQo+PiB1c2Ugb2YgdGhlIEhETUkgUEhZIFBMTCBhcyBhIGJldHRlciBzdWl0ZWQgRENM
SyBzb3VyY2UgZm9yIFZPUDIuIFRoaXMKPj4gd2lsbCBub3Qgb25seSBhZGRyZXNzIHRoZSBhZm9y
ZW1lbnRpb25lZCBwcm9ibGVtLCBidXQgaXQgc2hvdWxkIGFsc28KPj4gZmFjaWxpdGF0ZSB0aGUg
cHJvcGVyIG9wZXJhdGlvbiBvZiBkaXNwbGF5IG1vZGVzIHVwIHRvIDRLQDYwSHouCj4+Cj4+IEl0
J3Mgd29ydGggbm90aW5nIHRoYXQgYW55dGhpbmcgYWJvdmUgNEtAMzBIeiBzdGlsbCByZXF1aXJl
cyBoaWdoIFRNRFMKPj4gY2xvY2sgcmF0aW8gYW5kIHNjcmFtYmxpbmcgc3VwcG9ydCwgd2hpY2gg
aGFzbid0IGJlZW4gbWFpbmxpbmVkIHlldC4KPj4KPj4gRml4ZXM6IGQ3NGI4NDJjYWIwOCAoImFy
bTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgdm9wIGZvciByazM1NzYiKQo+PiBDYzogc3RhYmxlQHZn
ZXIua2VybmVsLm9yZwo+PiBTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0
aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4gYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NzYuZHRzaSB8IDYgKysrKy0tCj4+IDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NzYuZHRzaQo+PiBpbmRleCA2YTEzZmUwYzM1MTNmYjJmZjdjZDUzNWFhNzBlMzM4
NmMzNzY5NmU0Li5iMWFjMjMwMzVkZDc4OWYwNDc4YmYxMGM3OGM3NGVmMTY3ZDk0OTA0IDEwMDY0
NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni5kdHNpCj4+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LmR0c2kKPj4gQEAgLTExNTUs
MTIgKzExNTUsMTQgQEAgdm9wOiB2b3BAMjdkMDAwMDAgewo+PiA8JmNydSBIQ0xLX1ZPUD4sCj4+
IDwmY3J1IERDTEtfVlAwPiwKPj4gPCZjcnUgRENMS19WUDE+LAo+PiAtIDwmY3J1IERDTEtfVlAy
PjsKPj4gKyA8JmNydSBEQ0xLX1ZQMj4sCj4+ICsgPCZoZHB0eHBoeT47Cj4+IGNsb2NrLW5hbWVz
ID0gImFjbGsiLAo+PiAgICAgICJoY2xrIiwKPj4gICAgICAiZGNsa192cDAiLAo+PiAgICAgICJk
Y2xrX3ZwMSIsCj4+IC0gICAgICAiZGNsa192cDIiOwo+PiArICAgICAgImRjbGtfdnAyIiwKPj4g
KyAgICAgICJwbGxfaGRtaXBoeTAiOwo+PiBpb21tdXMgPSA8JnZvcF9tbXU+Owo+PiBwb3dlci1k
b21haW5zID0gPCZwb3dlciBSSzM1NzZfUERfVk9QPjsKPj4gcm9ja2NoaXAsZ3JmID0gPCZzeXNf
Z3JmPjsKPj4KPj4gLS0gCj4+IDIuNDkuMAo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
Pj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4gCj4gQ3Jpc3RpYW4s
Cj4gSXQgZml4ZXMgZnJhY3Rpb25hbCBoZCBtb2RlcyBmb3IgbWUgb24gcmszNTc2Lgo+IFRoeCBm
b3IgdGhpcyBmaXghCgpUaGFua3MgZm9yIHRlc3RpbmchIDopCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
