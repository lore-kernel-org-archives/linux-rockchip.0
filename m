Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BF7CEC01B8
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 10:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+CEhGvStzcdeCBjxd3eshTept5o1zIhfP3fZ2EVhRDs=; b=JNT5c21gkmHf8C6Z7AIBH/uwm7
	lEBR0soWOcca1aB1qVq/6CTqKJUjnptvCHiDRPM8JOG+ZqpyZyTS3BbM5DVUBvZPYvrREsKOF6X3W
	VWsS/TgvQZ9RNBHbPci+5jWxCbCgVnDVrn+hzVhII1/oAeEz52c4JsFuSuuJ8MyQZLWi6HEyBdHqt
	sB1or0wM5cOod0XTboEa6HPBKnCOgEVYW8FIppFwJjDH3ACOHXjecI7lnArLZN0BsC0png9A48Aeh
	LH8visfwJN9TLVDniDXhsyb8xtkmNhHDPymZ/uz6QzFFdAqGYFupc0nYWnP26XJ2DKfNvwcxSnYXG
	7OtHDQNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4cAb-0000000GSWj-2PFk;
	Mon, 23 Mar 2026 10:06:01 +0000
Received: from mail-m15595.qiye.163.com ([101.71.155.95])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4cAZ-0000000GSVX-1UuU;
	Mon, 23 Mar 2026 10:06:00 +0000
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 37f14d637;
	Mon, 23 Mar 2026 18:05:53 +0800 (GMT+08:00)
Message-ID: <170a22d3-f1d6-4f71-97ca-db3edf689d93@rock-chips.com>
Date: Mon, 23 Mar 2026 18:05:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/9] dt-bindings: display: rockchip: analogix-dp:
 Expand clock-names "hclk" for the third clock
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20260319104031.1986946-1-damon.ding@rock-chips.com>
 <20260319104031.1986946-2-damon.ding@rock-chips.com>
 <20260320-amusing-magnetic-harrier-20cc40@quoll>
 <311d143b-cc78-465e-9be2-0a9a0a33ea0b@kernel.org>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <311d143b-cc78-465e-9be2-0a9a0a33ea0b@kernel.org>
X-HM-Tid: 0a9d1a28788303a3kunmafb06323593c9f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh5CSVZIHU0ZQxpKH0wdSkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=Fko7vEm8qr/yM2Scx5aIktLIO/rsbKX9HQLG3hxzupnw8xra/FYMjlKPI2owJHEspyFJD+ms/U9DaO5WfmxhCm2w1GQVeKDGIM+SQNwMZMvzBNT1QbEO9S3xjsmMIMpH/LWoSgi9tGb7pVcciBKkTO5ljMPe4juXCYwDkDNEcL8=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=qCbZ2f0Kcl+hC4CPhtXEDMfwP+rqGeU660PawdGL7lw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_030559_572567_3B88698B 
X-CRM114-Status: GOOD (  14.00  )
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
Cc: heiko@sntech.de, kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, dianders@chromium.org, amadeus@jmu.edu.cn, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, m.szyprowski@samsung.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, conor+dt@kernel.org, didi.debian@cknow.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, heiko.stuebner@cherry.de, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, alchark@gmail.com, michael.riesch@collabora.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com, tomeu@tomeuvizoso.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgS3J6eXN6dG9mLAoKT24gMy8yMC8yMDI2IDU6NDEgUE0sIEtyenlzenRvZiBLb3psb3dza2kg
d3JvdGU6Cj4gT24gMjAvMDMvMjAyNiAxMDoxOSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToK
Pj4gT24gVGh1LCBNYXIgMTksIDIwMjYgYXQgMDY6NDA6MjNQTSArMDgwMCwgRGFtb24gRGluZyB3
cm90ZToKPj4+IFRoZSBSSzM1ODggZURQIGNvbnRyb2xsZXIgbmVlZHMgdGhlIHZpZGVvIGRhdGFw
YXRoIGNsb2NrICJoY2xrIiB0byB3b3JrCj4+PiB3ZWxsLiBQcmV2aW91c2x5LCBpdCB3b3JrcyB3
aXRob3V0IGV4cGxpY2l0bHkgYWRkaW5nIHRoaXMgY2xvY2sgYmVjYXVzZQo+Pj4gdGhlICdyb2Nr
Y2hpcCx2by1ncmYgPSA8JnZvMV9ncmY+JyBwcm9wZXJ0eSBpbXBsaWNpdGx5IGVuYWJsZXMgSENM
S19WTzEuCj4+Pgo+Pj4gRml4ZXM6IGY4NTUxNDYyNjNiMSAoImR0LWJpbmRpbmdzOiBkaXNwbGF5
OiByb2NrY2hpcDogYW5hbG9naXgtZHA6IEFkZCBzdXBwb3J0IGZvciBSSzM1ODgiKQo+Pj4gU2ln
bmVkLW9mZi1ieTogRGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2NrLWNoaXBzLmNvbT4KPj4+IC0t
LQo+IAo+IEJUVywgYWxsIHlvdXIgcGF0Y2hlcyAodGhpcyBhbmQgcHJldmlvdXMgc2V0Li4uIGFj
dHVhbGx5LCBldmVyeXRoaW5nIHlvdQo+IGV2ZXIgc2VudCBJSVJDKSBlbmQgdXAgbWFya2VkIGFz
IHNwYW0uIEkgZG9uJ3Qgc2VlIGFueXRoaW5nIGluIHRoZQo+IGhlYWRlcnMgcG9pbnRpbmcgdG8g
dGhlIGlzc3VlLiBUaGVyZSBpcyBubyBzY29yZSBhc3NpZ25lZCBhbmQKPiBETUFSQytTUEYrREtJ
TSBwYXNzLgo+IAo+IEhvd2V2ZXIgaXQgc2VlbXMgeW91IGFyZSB1c2luZyBAcm9jay1jaGlwcy5j
b20gYW5kIFNNVFAgc2VydmVyIDE2My5jb20sCj4gc28gbWF5YmUgdGhhdCBkaWZmZXJlbmNlLiBP
ciBtYXliZSBpdCBpcyByb2NrLWNoaXBzIGxhY2sgb2YgRE1BUkMgcG9saWN5Cj4gKHA9bm9uZSBk
aXM9bm9uZSk/Cj4gCj4gUmVnYXJkbGVzcyBvZiB0aGUgcmVhc29uLCBpZiB5b3UgZG8gbm90IGV2
ZXIgcmVjZWl2ZSBhbnN3ZXJzIGZyb20KPiBwZW9wbGUsIGl0IGlzIGxpa2VseSB0aGF0IGlzIHRo
ZSByZWFzb24uCj4gCj4gCgpUaGFuayB5b3UgZm9yIHRoZSBraW5kIGhlYWRzLXVwISBBbmQgSeKA
mW0gc29ycnkgZm9yIHRoZSBleHRyYSB3b3JrIHlvdSAKaGF2ZSB0byBnbyB0aHJvdWdoIGNoZWNr
aW5nIHRoZSBzcGFtIGZvbGRlci4KCkl0IGxvb2tzIGxpa2UgSSByZWFsbHkgbmVlZCB0byBoYXZl
IGEgZ29vZCB0YWxrIHdpdGggb3VyIElUIHRlYW0gYWJvdXQgdGhpcy4KClRoYW5rcyBhZ2FpbiBm
b3IgbGV0dGluZyBtZSBrbm93IOKAlCBtdWNoIGFwcHJlY2lhdGVkIQoKQmVzdCByZWdhcmRzLApE
YW1vbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
