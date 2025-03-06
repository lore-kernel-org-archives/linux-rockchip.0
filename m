Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADDBDC28B27
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 13:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/z9wXjlMtK2TTe9abZT3XQ2KxNP00sD+cDES68kXY2g=; b=N/Y70FBtg9hVvG
	DaqQQ3VsYMkFn/POsXcT+ZK0VdFzNGtMpZ85ehMuV4eVaIgwkxOHJ3UR4CTPZtAWigtn7gt0Pu2Hg
	kVhxOzpS9C7tz2j4/hIfb1gGFFeNMuYnnOPSnWApdSv/NOD4Z88S9ZbcfcJZnPExJD0ukR+4o+y2G
	xFZ7NmUEMsZ5KsXFO5UCsh5Pwhb1/Cs3WIQc5VAP3kL0crpZz5NIpjBLRHWtsdyReks41yKX2o4UW
	ApmEXZx/cmi8gcJ8d7B1XB3XxKScVBM72VI4riGgpujGo/Znc6x0Qpmznyp9xYiePbokgatSTjzXQ
	cM1n7kCoGpM222IlUnqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBC5-0000000B2eh-13Xn;
	Thu, 06 Mar 2025 13:23:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqAww-0000000B0C2-3GgU
	for linux-rockchip@bombadil.infradead.org;
	Thu, 06 Mar 2025 13:07:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=tub56u27slUSeM33CgyympJU415Xqw1zM4nVTXKlmqo=; b=hlgHKUadg2Vhmnm5vYKmolKyX4
	Sw6Ff3VC+mVi3vyFTw/1OT0t1ZG9memXl/xurFDGQCmoeNts3U1kA6StEu8ZMDJv7PZKNVmwTxlZh
	aztJVdB5yMu++V2hj8IyeVHlQ7dVsqQ8eMBLRJAV6pHEkL49zTMs9kLSI810QColyLHVOPkwAe1b3
	HZ3PEITQDfH4Yvxxow7OFu+MSMrNL5W9uiDx1FBWEFxoWUaRL7t8ANKSTVxNV2RyaElMcTX5+9D2U
	t2BEkgj9L988M/yZxHd5x2D30RPl94lxbZPQdaVeQmahJHSWUc9VvIkaT0c8Re6KzZieVfZSU4b44
	AC9FPCdw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqAwt-000000015Q8-47jZ
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 13:07:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=tub56u27slUSeM33CgyympJU415Xqw1zM4nVTXKlmqo=; b=QACnV8s8mXopm0366ZNMKsK0Ds
	SSd3bl5oezuocetjxvmxDz343LS8M2ltZqKuvHwHbESuUjAdEHnpZrRNdzNkbtTCqlEo+0Lt0Dpc/
	HpiLcjKOohB320DGLLe42kvh/R5qvinAYbPhgnnUWlDRLJ9ryX+RLuJR4tAL1ATsmztiI+TXSs7Qp
	RMqg/SgXfYAkXgCB1gfNjOHAz1yay82w7UF9JiV7CIKmX09/eUPT8kciaVBe6YKKVsfIbQoxgkZK1
	oHnt2BcntnqtO6eNCuSX53xLT7X29iqLYbzgkIwA1vvYYXd36RVKMb3i/u1sDzwkVcicXjI3c9HZF
	sHvWThJQ==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tqAwj-0003Aj-FF; Thu, 06 Mar 2025 14:07:29 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 jose.abreu@synopsys.com, nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v14 2/3] arm64: dts: rockchip: Enable HDMI receiver on rock-5b
Date: Thu, 06 Mar 2025 14:07:28 +0100
Message-ID: <3292594.iZASKD2KPV@diego>
In-Reply-To: <20250306072842.287142-3-dmitry.osipenko@collabora.com>
References: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
 <20250306072842.287142-3-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_130740_093692_C7D43074 
X-CRM114-Status: GOOD (  14.05  )
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

QW0gRG9ubmVyc3RhZywgNi4gTcOkcnogMjAyNSwgMDg6Mjg6NDEgTUVaIHNjaHJpZWIgRG1pdHJ5
IE9zaXBlbmtvOgo+IEZyb206IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBj
b2xsYWJvcmEuY29tPgo+IAo+IFRoZSBSb2NrIDVCIGhhcyBhIE1pY3JvIEhETUkgcG9ydCwgd2hp
Y2ggY2FuIGJlIHVzZWQgZm9yIHJlY2VpdmluZwo+IEhETUkgZGF0YS4gVGhpcyBlbmFibGVzIHN1
cHBvcnQgZm9yIGl0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJh
c3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNocmVleWEgUGF0
ZWwgPHNocmVleWEucGF0ZWxAY29sbGFib3JhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkg
T3NpcGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICAuLi4vYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzIHwgMTggKysrKysrKysrKysr
KysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPiBpbmRleCBkNTk3
MTEyZjFkNWIuLjM3NzgyNGU2OWUyMCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4gQEAgLTIyMCw2ICsyMjAsMTggQEAgaGRtaTBf
b3V0X2NvbjogZW5kcG9pbnQgewo+ICAJfTsKPiAgfTsKPiAgCj4gKyZoZG1pX3JlY2VpdmVyX2Nt
YSB7Cj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICsmaGRtaV9yZWNlaXZlciB7Cj4g
KwlzdGF0dXMgPSAib2theSI7Cj4gKwlocGQtZ3Bpb3MgPSA8JmdwaW8xIFJLX1BDNiBHUElPX0FD
VElWRV9MT1c+Owo+ICsJcGluY3RybC0wID0gPCZoZG1pbTFfcnhfY2VjICZoZG1pbTFfcnhfaHBk
aW4gJmhkbWltMV9yeF9zY2wgJmhkbWltMV9yeF9zZGEgJmhkbWlyeF9ocGQ+Owo+ICsJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCW1lbW9yeS1yZWdpb24gPSA8JmhkbWlfcmVjZWl2ZXJf
Y21hPjsKCm5pdDogcHJvcGVydHkgc29ydGluZywgYWxwaGFiZXRpY2FsIC4uLiBidXQgd2l0aCBz
dGF0dXMgYXQgdGhlIGVuZAoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
