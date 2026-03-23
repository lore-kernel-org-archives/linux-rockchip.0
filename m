Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08F30EC01B6
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 09:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bD9WRj6/yB+FfDAZtoTt4fOchuhTR61ALR6RAb9os6E=; b=PcvWovtt4QiQ/MuR0fFFDjH7IA
	RNSI6IgGcWTgWnuBP0Wy/qDDfiCQJdFJIx5GWmDwvb/sEMmGSS6rdmj51uTS9RkE/hNnC10Sx+yiC
	naj61SUMK1nPi5wrC42M+IKTJmv95B/63W4mjpRSnI4eaFHRzdaAuPD2cj2YzIRxJET8FvO+DPomk
	kwxPu5Cinml5QogTD6Y8kbvZhTP0zaHHnhEqRKmKnPHWasoaWum0n1ShTA6QnHn/akaS0lG4KZoqB
	EuA0SejMUG/+hHedCEiVLNJoJ9yqaJIp55tyGeSvT7f/UWdFSr0lXGwncR3nV7B8HV+laBMDG1b2H
	kFkKgz7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4c4S-0000000GRbF-0IRj;
	Mon, 23 Mar 2026 09:59:40 +0000
Received: from mail-m19731101.qiye.163.com ([220.197.31.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4c4N-0000000GRWs-0rkR;
	Mon, 23 Mar 2026 09:59:38 +0000
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 37f125092;
	Mon, 23 Mar 2026 17:59:11 +0800 (GMT+08:00)
Message-ID: <c349eaf2-5852-4bb6-9dac-f7240e1c8098@rock-chips.com>
Date: Mon, 23 Mar 2026 17:59:11 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/9] dt-bindings: display: rockchip: analogix-dp:
 Expand clock-names "hclk" for the third clock
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20260319104031.1986946-1-damon.ding@rock-chips.com>
 <20260319104031.1986946-2-damon.ding@rock-chips.com>
 <20260320-amusing-magnetic-harrier-20cc40@quoll>
 <6bf2b3c9-4af0-4c3a-a34f-ebe881d4827b@rock-chips.com>
 <904ad60f-82d6-4ad9-baa1-4d5196c57c76@kernel.org>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <904ad60f-82d6-4ad9-baa1-4d5196c57c76@kernel.org>
X-HM-Tid: 0a9d1a22577503a3kunm5765aa83592746
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx9CHlZLHklLQxpDGkwYGU5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=QaDPqk5+K33rWGC+Sk5tDLChlbDsO/bfMYXaEULZkUQCERH77KlcWVFsyhSlXZR2Y46pQUsNpqfFa2U9iWQ3stkbwgtTG9J4/E012AU6aaPKYYdzVm+wR1iSAoKDsvA+OzjKs14O7GOkHTuwPdAlURjPYGWeJq297DIxSi/RtRQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Ma+sCIU/amVun6wDil2mNjR94in5yy/hwcmilDBpqY4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_025935_774100_0C0CEF1C 
X-CRM114-Status: GOOD (  11.58  )
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

T24gMy8yMy8yMDI2IDU6MjQgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMjMv
MDMvMjAyNiAwOTo0OSwgRGFtb24gRGluZyB3cm90ZToKPj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAsYW5h
bG9naXgtZHAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5
L3JvY2tjaGlwL3JvY2tjaGlwLGFuYWxvZ2l4LWRwLnlhbWwKPj4+PiBpbmRleCBkOTliMjNiODhj
YzUuLmQyYmM4NjM2YjYyNiAxMDA2NDQKPj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxhbmFsb2dpeC1kcC55YW1sCj4+
Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2No
aXAvcm9ja2NoaXAsYW5hbG9naXgtZHAueWFtbAo+Pj4+IEBAIC0yNiw3ICsyNiw5IEBAIHByb3Bl
cnRpZXM6Cj4+Pj4gICAgICAgIGl0ZW1zOgo+Pj4+ICAgICAgICAgIC0gY29uc3Q6IGRwCj4+Pj4g
ICAgICAgICAgLSBjb25zdDogcGNsawo+Pj4+IC0gICAgICAtIGNvbnN0OiBncmYKPj4+PiArICAg
ICAgLSBlbnVtOgo+Pj4+ICsgICAgICAgICAgLSBncmYKPj4+PiArICAgICAgICAgIC0gaGNsawo+
Pj4KPj4+IFlvdSBqdXN0IHRvbGQgbWUgaXQgaXMgdGhlIHNhbWUgY2xvY2ssIG5vPyBJIGFza2Vk
IHRoYXQgYW5kIHlvdQo+Pj4gY29uZmlybWVkPyBPciB5b3UgcmVwbGllZCB3aXRoIGFuIGFuc3dl
ciBub3QgcmVsZXZhbnQgdG8gdGhlIHF1ZXN0aW9uPwo+Pj4KPj4KPj4gQWhhLCBJIG1heSBoYXZl
IG1pc3VuZGVyc3Rvb2QgeW91ciBlYXJsaWVyIGFkdmljZSBhcyBtZWFuaW5nIHRoYXQgc2luY2UK
Pj4gdGhlIFJLMzU3NiBhbmQgUkszNTg4IHBsYXRmb3JtcyBzaGFyZSB0aGUgc2FtZSBkZXNpZ24s
IHRoZWlyIGNsb2NrCj4+IGRlcGVuZGVuY2llcyBzaG91bGQgYWxzbyBiZSBpZGVudGljYWwuCj4+
Cj4+IFRoZSAnZ3JmJyBjbG9jayBhbmQgJ2hjbGsnIGNsb2NrIGFyZSBkaWZmZXJlbnQuCj4+IE9u
IFJLMzM5OSwgdGhlIEdSRiBjbG9jayBpcyBmb3IgYWNjZXNzaW5nIFZJTyBHUkYgcmVnaXN0ZXJz
Lgo+IAo+IE9LCj4gCj4+IE9uIFJLMzU4OC9SSzM1NzYsIHRoZSBlRFAgJ2hjbGsnIGlzIHJlcXVp
cmVkIGFzIGl0IGlzIHRoZSBwYXJlbnQgY2xvY2sKPj4gb2YgJ3BjbGsnIGluIHRoZSBBSEIgYnVz
IHRvcG9sb2d5Lgo+IAo+IEhlaCwgZGV2aWNlIHRha2VzIHBjbGssIHNvIHlvdSBkbyBub3QgbmVl
ZCB0byB0YWtlIGl0cyBwYXJlbnQuCgpFbW0sIG15IGV4cGxhbmF0aW9uIG1heSBub3QgaGF2ZSBi
ZWVuIGNsZWFyIGVub3VnaC4gQXQgdGhlIGNsb2NrIHRyZWUgCmxldmVsLCB0aGUgaGNsayBhbmQg
cGNsayBhcmUgdHdvIHNlcGFyYXRlIGNsb2Nrcywgd2hpbGUgcGNsaydzIHBhcmVudCAKY2xvY2sg
aXMgaGNsayBpbiB0aGUgTk9DIGRlc2lnbiwgYXMgaWxsdXN0cmF0ZWQgYmVsb3c6CihUYWtlIHRo
ZSBOT0MgZGVzaWduIG9mIFJLMzU3NiBhcyBleGFtcGxlKQoKUERfVk9QCiAgIGhjbGtfdm9wCiAg
ICAg4pSc4pSAIFBEX1ZPMS9oY2xrX3ZvMQogICAgIOKUgiAgICDilJzilIAgaGNsa192bzFfcyAo
Vk8xIEFIQlMpCiAgICAg4pSCICAgIOKUlOKUgCBwY2xrX3ZvMV9zIChWTzEgQVBCKQogICAgIOKU
lOKUgCBQRF9WTzAvaGNsa192bzAKICAgICAgICAgIOKUnOKUgCBoY2xrX3ZvMF9zIChWTzAgQUhC
KQogICAgICAgICAg4pSc4pSAIHBjbGtfdm8wICAgKFZPMCBBSEJTKQogICAgICAgICAg4pSU4pSA
IHBjbGtfdm8wX3MgKFZPMCBBUEJTKQoKVGhlbiwgdGhlIGNsb2NrIHRyZWUgZGVzaWduIGlzOgoK
aGNsa192bzBfcm9vdCAoMjAwTSkK4pSc4pSAIGhjbGtfc3BkaWZyeDJfZW4K4pSCICAgIOKUlOKU
gCBoY2xrX3NwZGlmcngyICgyMDBNKQrilJzilIAgaGNsa19zcGRpZjJfZW4K4pSCICAgIOKUlOKU
gCBoY2xrX3NwZGlmMiAoMjAwTSkK4pSc4pSAIGhjbGtfc2FpNl84Y2hfZW4K4pSCICAgIOKUlOKU
gCBoY2xrX3NhaTZfOGNoICgyMDBNKQrilJzilIAgaGNsa19oZGNwMF9lbgrilIIgICAg4pSU4pSA
IGhjbGtfaGRjcDAgKDIwME0pCuKUnOKUgCBoY2xrX3ZvMF9iaXVfZW4K4pSCICAgIOKUlOKUgCBo
Y2xrX3ZvMF9iaXUgKDIwME0pCuKUlOKUgCBoY2xrX3NhaTVfOGNoX2VuCiAgICAgIOKUlOKUgCBo
Y2xrX3NhaTVfOGNoICgyMDBNKQoKcGNsa192bzBfcm9vdCAoMTUwTSkK4pSc4pSAIHBjbGtfaGRt
aXR4MF9lbgrilIIgICAg4pSU4pSAIHBjbGtfaGRtaXR4MCAoMTUwTSkK4pSc4pSAIHBjbGtfdm8w
X2dyZl9lbgrilIIgICAg4pSU4pSAIHBjbGtfdm8wX2dyZiAoMTUwTSkK4pSc4pSAIHBjbGtfZWRw
MF9lbgrilIIgICAg4pSU4pSAIHBjbGtfZWRwMCAoMTUwTSkK4pSc4pSAIHBjbGtfZHNpaG9zdDBf
ZW4K4pSCICAgIOKUlOKUgCBwY2xrX2RzaWhvc3QwICgxNTBNKQrilJzilIAgcGNsa19oZGNwMF9l
bgrilIIgICAg4pSU4pSAIHBjbGtfaGRjcDAgKDE1ME0pCuKUlOKUgCBwY2xrX3ZvMF9iaXVfZW4K
ICAgICAg4pSU4pSAIHBjbGtfdm8wX2JpdSAoMTUwTSkKClRoZXJlZm9yZSwgd2UgbmVlZCB0YWtl
ICdoY2xrJyBhcyByZWZlcmVuY2UgY2xvY2suCgo+IAo+Pgo+Pj4gSWYgdGhpcyBkZXZpY2UgdGFr
ZXMgcmVmZXJlbmNlIHRvIGdyZiwgd2h5IGRvZXMgaXQgYWxzbyB0YWtlIGdyZiBjbG9jaz8KPj4+
IERldmljZXMgTVVTVCBOT1QgdGFrZSBjbG9ja3Mgb24gYmVoYWxmIG9mIG90aGVyIGRldmljZXMs
IHNvIHBsZWFzZQo+Pj4gYW5zd2VyIHdpdGggYSBsaXN0IG9mIGFsbCBjbG9jayBpbnB1dHMgYWNj
b3JkaW5nIHRvIGRhdGFzaGVldC9tYW51YWwuCj4+Pgo+Pgo+PiBPbiBlYXJsaWVyIHBsYXRmb3Jt
cywgdGhlIEdSRiB3YXMgbm90IHBhcnRpdGlvbmVkIGludG8gc2VwYXJhdGUKPj4gZnVuY3Rpb25h
bCBzbWFsbCBHUkYgdW5pdHMgYXMgb24gbmV3ZXIgZGVzaWducy4gVGhlcmVmb3JlLCB0aGUgJ2dy
ZicKPj4gY2xvY2sgd2FzIGRlc2lnbmVkIGFzIHRoZSBjbG9jayBkZXBlbmRlbmN5IGZvciBhbGwg
cmVsZXZhbnQgbW9kdWxlcy4KPj4KPj4gRm9yIFJLMzU4OC9SSzM1NzYgZURQIG1vZHVsZSwgdGhl
IGxpc3Qgb2YgYWxsIGNsb2NrIGlucHV0cyBpczoKPj4KPj4gQ0xLX0VEUDBfMjRNOiBSZWZlcmVu
Y2UgY2xvY2suCj4+IFBDTEtfRURQMDogQUhCIGNsb2NrLgo+PiBIQ0xLX1ZPMS9IQ0xLX1ZPMF9S
T09UOiBWaWRlbyBkYXRhcGF0aCBjbG9jay4KPiAKCkJlc3QgcmVnYXJkcywKRGFtb24KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
