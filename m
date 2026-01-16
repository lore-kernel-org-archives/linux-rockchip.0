Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84EA3D4A60F
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 14:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8C1K915rw4IRHHox7mvLHRsfJZmJZ8Uhgej7pCSMXc=; b=H/ciGfuVcWNUJz
	fpdRRr4gXM7dBM2t3o3CL8uBUQmYQq1wDegAdZDq2bmJI/KetSZJpipUriYzvr6KzGqgBDOdVZfRe
	UEVnA5FVhqA+gUf5WO0qawXkdLG/9cdKnUwFiUy5VYcrV193hkD6ingiyLB3wQLS6LLHDKOLhdzhu
	5ZLMSLBTr71NFTlICUVB1WcxDdrDRUPM3eQEfOB9d36GTABALq3f9p5awm9cGClKeuciEiLQqdeHV
	354Nb9BKq2R/W1vNCCWwE+cN2GjDJhZZuT+5pX6j+8pZTiJti2YkcHSUuQoNmfNPuYBUpBHLmsN8s
	KUlpP8v/5j8IscrVh8uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgkkx-0000000EFj8-24pd;
	Fri, 16 Jan 2026 14:24:55 +0000
Received: from mail-m3293.qiye.163.com ([220.197.32.93])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgkkr-0000000EFiL-2PWG
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jan 2026 14:24:54 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30ef46e5a;
	Fri, 16 Jan 2026 22:24:40 +0800 (GMT+08:00)
Message-ID: <0c6b4cc1-ce99-4d59-a470-b07dec763e8b@rock-chips.com>
Date: Fri, 16 Jan 2026 22:24:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 FUKAUMI Naoki <naoki@radxa.com>,
 Marco Schirrmeister <mschirrmeister@gmail.com>,
 John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: (subset) [PATCH v4 0/5] Fix sd card support for RK3576 platform
To: Heiko Stuebner <heiko@sntech.de>, Ulf Hansson <ulf.hansson@linaro.org>
References: <1768524932-163929-1-git-send-email-shawn.lin@rock-chips.com>
 <176857210194.116631.11189192556414524729.b4-ty@sntech.de>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <176857210194.116631.11189192556414524729.b4-ty@sntech.de>
X-HM-Tid: 0a9bc731aea209cckunma7c09507737a3c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUgaQlZJSk8dHktIHUlPTUNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Sb+rY8nk8Ejra1PEfQhzgPPEi7zoTmfua3u4T3ZLfEzIZimP+iLjTUczs2Q/u7ML0JsvPRmfptEh9QF1QcdaERr6e4Pet/umJumuiaYX05kjmGuSKXIwx40j18+2imsv+HoIJUjyOk60TKCZt5Fr0ar2XTAgETW2Lv6Kg8CaUHI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=xpJGynjXo2jFqQ092nLYCB2ielun+b6JZDAUGmUfEc4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_062451_065713_E2B05ADC 
X-CRM114-Status: GOOD (  11.34  )
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

CuWcqCAyMDI2LzAxLzE2IOaYn+acn+S6lCAyMjowNCwgSGVpa28gU3R1ZWJuZXIg5YaZ6YGTOgo+
IAo+IE9uIEZyaSwgMTYgSmFuIDIwMjYgMDg6NTU6MjcgKzA4MDAsIFNoYXduIExpbiB3cm90ZToK
Pj4gTWFyY28gcmVwb3J0ZWQgYSBwcm9ibGVtWzFdIGZvciBoaXMgRnJpZW5kbHlFbGVjIE5hbm9Q
aSBSNzZTIGJvYXJkLiBUaGUgcHJvYmxlbQo+PiBpcyBiZWN1YXNlIGFmdGVyIHJ1bnRpbWUgc3Vz
cGVuZCwgdGhlIGFzc29jaWF0ZWQgcG93ZXIgZG9tYWluIGlzIHBvd2VyZWQgb2ZmLCB3aGljaAo+
PiByZXNldHMgdGhlIHJlZ2lzdGVycyBpbmNsdWRpbmcgcG93ZXIgY29udHJvbCBiaXQsIGNhcmQg
ZGV0ZWN0aW9uIGxvZ2ljIGFuZCBpbnRlcm5hbAo+PiBwaGFzZSByZWdpc3RlcnMuIFRoaXMgbGVh
ZHMgdG8gdGhyZWUgcHJvYmxlbXMgbmVlZCB0byBiZSBzb2x2ZWQuCj4+Cj4+IDEuIGhvdC1wbHVn
IGJyb2tlbjoKPj4KPj4gWy4uLl0KPiAKPiBBcHBsaWVkLCB0aGFua3MhCj4gCj4gWzEvNV0gc29j
OiByb2NrY2hpcDogZ3JmOiBGaXggd3JvbmcgUkszNTc2X0lPQ0dSRl9NSVNDX0NPTiBkZWZpbml0
aW9uCj4gICAgICAgIGNvbW1pdDogM2NkYzMwYzQyZDRhODc0NDRmNmM3YWZiZWZkNmE5MzgxYzRj
YWEyNwo+IFsyLzVdIHNvYzogcm9ja2NoaXA6IGdyZjogU3VwcG9ydCBtdWx0aXBsZSBncmYgdG8g
YmUgaGFuZGxlZAo+ICAgICAgICBjb21taXQ6IDc1ZmI2M2FlMDMxMjExZTkyNjRhYzg4OGZhYmMy
Y2E5Y2QzZmNjY2YKPiBbNC81XSBhcm02NDogZHRzOiByb2NrY2hpcDogRml4IFNEIGNhcmQgc3Vw
cG9ydCBmb3IgUkszNTc2IEVWQjEKPiAgICAgICAgY29tbWl0OiA3MjI2NjY0YmY5NTJjNGNmZGRj
Y2Q3NGIxNTRhN2Q5OTQ2MDhkMTUzCj4gWzUvNV0gYXJtNjQ6IGR0czogcm9ja2NoaXA6IEZpeCBT
RCBjYXJkIHN1cHBvcnQgZm9yIFJLMzU3NiBOYW5vcGkgUjc2cwo+ICAgICAgICBjb21taXQ6IGE5
YzFhY2ViZmUwNDg0MzQzYTQ0M2QwODJlMDM5Y2E3NzE4NmVkMjIKPiAKPiBJJ3ZlIHF1ZXVlZCB0
aGVtIGZvciA2LjIwIGJlY2F1c2UgSSdkIGxpa2UgdGhlbSB0byBtYXJpbmF0ZSBhIGJpdCBsb25n
ZXIKPiBkdWUgdG8gdGhlIHNpemUgb2YgdGhlIGNoYW5nZXMsIGJ1dCBhZGRlZCBDYy1zdGFibGUg
dGFncyBzbyB0aGF0IHRoZXkKPiB0aGVuIGNhbiBtYWtlIHRoZWlyIHdheSBpbnRvIHN0YWJsZSBr
ZXJuZWxzLgo+IAoKU3VyZSwgdGhhbmtzIEhlaWtvLgoKPiBEZXBlbmRpbmcgaWYgTU1DIG1haW50
YWluZXJzIHNlZSBwYXRjaDMsIHlvdSBtaWdodCB3YW50IHRvIHJlc2VuZCBpdAo+IGluZGl2aWR1
YWxseSBhdCBzb21lIHBvaW50Lgo+IAo+IAo+IEJlc3QgcmVnYXJkcywKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
