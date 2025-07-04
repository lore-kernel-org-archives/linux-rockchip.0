Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99942C8303D
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jul 2025 14:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvbTB+lgN2vZaQm32pQxKGqjYXrLQ4cct6UwIFeARzM=; b=AFcXN8S3PckGcw
	scMNVegvEZGdBgWDG+079yYydSlL/asmh9Yw2GfVhBsmu7E9ktdwF+dWNHaLEFK2qArgpkuf3Bren
	PTK9oijHE3GR49tNPtJvoe18Vs/KUEbH49q7sz5ik/Ep2dXqeeDkcxeJoiTcDQJOE47OVnLDSrkdW
	gKhz/9Bb/Ie+r3gvaQ3+vttoDEbk8aSI0YnfB6aBxtmEjmfHIqyoZvArq2+MVv3+0r4zvUG5TWb5I
	YtWBKmFTYkXpUprFXkUpKvXnl35Qqi4UmVJROshlYu/Tgirv1ViI3VKFiH/P72r0Lw8npOQKjNKnd
	+Hsbyninr1yUJ7jo3vWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXhkJ-0000000EiqN-3KLb;
	Fri, 04 Jul 2025 14:50:35 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXhgT-0000000Ehyy-2qrD;
	Fri, 04 Jul 2025 14:46:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1751640395;
	bh=v8cXoT5/F19wrmjHbKU/PHIAXpvw0LXWFp/Fmehd2QY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jXS+rROx0FfOA3nvo+XoPJsrmSPiFsU84nd3JJxqdtnLXH9p9bfq3p5C9JerBnb1b
	 HOete7Iolcy99BpVMAP8IiEy1G6qfAtrOsmRkyNWBFO3lQI+lKw25MrrLN8rzRMrxb
	 SfklKP3CESeMsiJ4JeQ5cOXfa5Gv+BcrKvp5KZhcsMsdQbq1QIR0gL+PqbyarBREY4
	 5vH1F0cv8Kd0s/PSQ5LjSV8qsuMSs+RgjMBy/bCvMzBZOk7QV09NVETlR8V+qbVL7f
	 A6fYHyZaBIseHBvbvUvPRcng2yUMkpybaUZ2b297wANMRrnUqgkmF2PeikDhQRR2m3
	 +1S9plpne9+gw==
Received: from [192.168.1.90] (unknown [212.93.144.165])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6FC7A17E07FF;
	Fri,  4 Jul 2025 16:46:34 +0200 (CEST)
Message-ID: <f02af24c-18de-4b56-85cd-da7af8a73222@collabora.com>
Date: Fri, 4 Jul 2025 17:46:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/rockchip: dw_hdmi_qp: Provide CEC IRQ in
 dw_hdmi_qp_plat_data
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250704-rk3588-hdmi-cec-v1-0-2bd8de8700cd@collabora.com>
 <20250704-rk3588-hdmi-cec-v1-1-2bd8de8700cd@collabora.com>
 <13504186.5MRjnR8RnV@diego>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <13504186.5MRjnR8RnV@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_074637_891589_235D1E47 
X-CRM114-Status: GOOD (  16.19  )
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

SGkgSGVpa28sCgpPbiA3LzQvMjUgNTozNyBQTSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkg
Q3Jpc3RpYW4sCj4gCj4gQW0gRnJlaXRhZywgNC4gSnVsaSAyMDI1LCAxNjoyMzoyMiBNaXR0ZWxl
dXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToKPj4gSW4g
cHJlcGFyYXRpb24gdG8gc3VwcG9ydCB0aGUgQ0VDIGludGVyZmFjZSBvZiB0aGUgRGVzaWduV2Fy
ZSBIRE1JIFFQIElQCj4+IGJsb2NrLCBleHRlbmQgdGhlIHBsYXRmb3JtIGRhdGEgdG8gcHJvdmlk
ZSB0aGUgcmVxdWlyZWQgSVJRIG51bWJlci4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4g
Q2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+ICBk
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jIHwgNCArKysrCj4+
ICBpbmNsdWRlL2RybS9icmlkZ2UvZHdfaGRtaV9xcC5oICAgICAgICAgICAgICAgIHwgMSArCj4+
ICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9kd19oZG1pX3FwLXJvY2tjaGlwLmMKPj4gaW5kZXggN2Q1MzFiNmY0YzA5
OGM2YzU0ODc4OGRhZDQ4N2NlNDYxM2EyZjMyYi4uMTI2ZTU1NjAyNTk2MWU4NjQ1ZjM1NjdiNGQ3
YTFjNzNjYzJmMmU3ZiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3
X2hkbWlfcXAtcm9ja2NoaXAuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdf
aGRtaV9xcC1yb2NrY2hpcC5jCj4+IEBAIC01MzksNiArNTM5LDEwIEBAIHN0YXRpYyBpbnQgZHdf
aGRtaV9xcF9yb2NrY2hpcF9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAq
bWFzdGVyLAo+PiAgCWlmIChwbGF0X2RhdGEubWFpbl9pcnEgPCAwKQo+PiAgCQlyZXR1cm4gcGxh
dF9kYXRhLm1haW5faXJxOwo+PiAgCj4+ICsJcGxhdF9kYXRhLmNlY19pcnEgPSBwbGF0Zm9ybV9n
ZXRfaXJxX2J5bmFtZShwZGV2LCAiY2VjIik7Cj4+ICsJaWYgKHBsYXRfZGF0YS5jZWNfaXJxIDwg
MCkKPj4gKwkJcmV0dXJuIHBsYXRfZGF0YS5jZWNfaXJxOwo+PiArCj4+ICAJaXJxID0gcGxhdGZv
cm1fZ2V0X2lycV9ieW5hbWUocGRldiwgImhwZCIpOwo+PiAgCWlmIChpcnEgPCAwKQo+PiAgCQly
ZXR1cm4gaXJxOwo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vYnJpZGdlL2R3X2hkbWlfcXAu
aCBiL2luY2x1ZGUvZHJtL2JyaWRnZS9kd19oZG1pX3FwLmgKPj4gaW5kZXggZTliZTZkNTA3YWQ5
Y2RjNTVmNWM3ZDZkM2VmMzdlYmE0MWYxY2U3NC4uYjRhOWI3Mzk3MzRlYzdiNjcwMTNiNjgzZmU2
MDE3NTUxYWExOTE3MiAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS9kcm0vYnJpZGdlL2R3X2hkbWlf
cXAuaAo+PiArKysgYi9pbmNsdWRlL2RybS9icmlkZ2UvZHdfaGRtaV9xcC5oCj4+IEBAIC0yMyw2
ICsyMyw3IEBAIHN0cnVjdCBkd19oZG1pX3FwX3BsYXRfZGF0YSB7Cj4+ICAJY29uc3Qgc3RydWN0
IGR3X2hkbWlfcXBfcGh5X29wcyAqcGh5X29wczsKPj4gIAl2b2lkICpwaHlfZGF0YTsKPj4gIAlp
bnQgbWFpbl9pcnE7Cj4+ICsJaW50IGNlY19pcnE7Cj4+ICB9Owo+IAo+IGZyb20gYSBzdHJ1Y3R1
cmUgcG9pbnQtb2YtdmlldywgSSdkIGV4cGVjdCB0aGUgc2VyaWVzIHRvIGJlIHNvbWV0aGluZyBs
aWtlOgo+IAo+ICgxKSBkcm0vYnJpZGdlOiBkdy1oZG1pLXFwOiBBZGQgQ0VDIHN1cHBvcnQKPiAg
ICAgLT4gaW5jbHVkaW5nIGFkZGluZyB0aGUgY2VjX2lycSB0byBkd19oZG1pX3FwX3BsYXRfZGF0
YQo+ICgyKSBkcm0vYnJpZGdlOiBkdy1oZG1pLXFwOiBGaXh1cCB0aW1lciBiYXNlIHNldHVwCj4g
ICAgIC0+IGluY2x1ZGluZyBhZGRpbmcgdGhlIHJlZl9jbGtfcmF0ZSB0byBkd19oZG1pX3FwX3Bs
YXRfZGF0YQo+ICgzKSBkcm0vcm9ja2NoaXA6IGR3X2hkbWlfcXA6IFByb3ZpZGUgQ0VDIElSUSBp
biBkd19oZG1pX3FwX3BsYXRfZGF0YQo+ICg0KSBkcm0vcm9ja2NoaXA6IGR3X2hkbWlfcXA6IFBy
b3ZpZGUgcmVmIGNsb2NrIHJhdGUgaW4gZHdfaGRtaV9xcF9wbGF0X2RhdGEKPiAoNSkgYXJtNjQ6
IGRlZmNvbmZpZzogRW5hYmxlIERXIEhETUkgUVAgQ0VDIHN1cHBvcnQKPiAKPiBUaGUgcGF0Y2hl
cyBhZGRpbmcgdGhlIGdlbmVyaWMgZnVuY3Rpb25hbGl0eSB0byB0aGUgYnJpZGdlIHNob3VsZCBh
bHNvCj4gaW5jbHVkZSB0aGUgbmVlZGVkIGVsZW1lbnRzIGFuZCBub3QgZGVwZW5kIG9uIHBsYXRm
b3JtLXNwZWNpZmljIHBhdGNoZXMuCgpZb3UgYXJlIHJpZ2h0LCB0aGF0J3MgYSBtdWNoIGJldHRl
ciBhcHByb2FjaC4KClRoYW5rcyBmb3IgdGhlIHF1aWNrIGZlZWRiYWNrIQoKUmVnYXJkcywKQ3Jp
c3RpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
