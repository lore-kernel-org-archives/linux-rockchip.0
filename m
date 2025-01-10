Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60C76E77188
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jan 2025 10:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xgdApkyQw1ZWPGON3eZ6W+U8LrFUucesuZ3HNKThtEs=; b=Lh2lfdC484VLYz
	reQeubnFikoR/F6mSGv7PC65gxqk9CKEX+/DZgX3Fr7kTvHr/O/HYcqZgdpbKJazjtq8WMxjl2EO0
	FSHKskDoCFOc2gSiysXSWw5UBcDiRdeARAil3RViXurarTIjUFfhpct3Y0eaON4gxPTMw0PNdixmd
	6Qs0X130KyKKjpckwjYpwHOIgm1bzGIx+CY1J6bRCQzvOsdGdpkxc0wNwa5iymnnuyLFNEEun08po
	baTkZ793SMSb3pW/DfzWpvhda2WoyAeN+InzS/nccf+G9SnpnTkefag7BpSoh8teXLQE4/IhfVUCw
	lBeerpGpKhupuq4yk1Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWCA5-0000000Evdj-27yd;
	Fri, 10 Jan 2025 10:22:41 +0000
Received: from mail-m49231.qiye.163.com ([45.254.49.231])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWBxM-0000000Et1n-3qZW;
	Fri, 10 Jan 2025 10:09:34 +0000
Received: from [192.168.60.65] (unknown [103.29.142.67])
	by smtp.qiye.163.com (Hmail) with ESMTP id 85663352;
	Fri, 10 Jan 2025 18:09:25 +0800 (GMT+08:00)
Message-ID: <46372c17-d317-4477-9635-36564c73cc6a@rock-chips.com>
Date: Fri, 10 Jan 2025 18:09:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 11/17] dt-bindings: pwm: rockchip: Add
 rockchip,rk3562-pwm
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 linux-pwm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-12-kever.yang@rock-chips.com>
 <qvr7x4anlxxtpxjywrqjihxyxejw4i73wrh2ibl3hasayew4s2@obyuxce4ez4g>
Content-Language: en-US
In-Reply-To: <qvr7x4anlxxtpxjywrqjihxyxejw4i73wrh2ibl3hasayew4s2@obyuxce4ez4g>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDQxpDVh1CQkIfSRhJThpLSlYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKS0hVSUJVSk9JVU1MWVdZFhoPEhUdFFlBWU9LSFVKS0lPT09IVUpLS1
	VKQktLWQY+
X-HM-Tid: 0a944fb0ac4c03afkunm85663352
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PRw6NRw*EjIJOQ4wEUpNIjw#
	M0gaCwFVSlVKTEhNTktITE1DSUtKVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQUpLQkM3Bg++
DKIM-Signature: a=rsa-sha256;
	b=CgI98iJrbeouOxI5b3pc4yw7d68VlP0GdydTJiwcX10/5mN0FWV7zhLTXRanZv0ZTZD/hnL1SHzCg3YBgWbnO/UGPiuoYcbjTq2OeVjvfuU6Ow+ExujrV0lg1V6Sd5ZCOgZAQPX/6enhwZ/j/Ecn/1WeiNZWAdMyXOh5dKijOPw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=SnFH98ibQzsvQhtTYNyPTVrfsL5nJpMT8T+fexoCZ8A=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_020933_128953_EF681620 
X-CRM114-Status: GOOD (  13.61  )
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

SGkgVXdlLAoKIMKgwqDCoCBUaGFua3MgdmVyeSBtdWNoIGZvciB5b3VyIHJldmlldy4KCk9uIDIw
MjQvMTIvMjcgMTU6MjQsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IE9uIFR1ZSwgRGVjIDI0
LCAyMDI0IGF0IDA1OjQ5OjE0UE0gKzA4MDAsIEtldmVyIFlhbmcgd3JvdGU6Cj4+IEFkZCByb2Nr
Y2hpcCxyazM1NjItcHdtIGNvbXBhdGlibGUgc3RyaW5nLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBL
ZXZlciBZYW5nPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+Cj4gV2hhdCBpcyB5b3VyIG1lcmdl
IHBsYW4gaGVyZT8gRnJvbSBteSBQT1YgbWVyZ2luZyB0aGUgcHdtIHVwZGF0ZSB2aWEgbXkKPiBw
d20gdHJlZSB3b3VsZCBiZSB0aGUgZWFzaWVzdC4gQnV0IGlmIHlvdSB3YW50IHRvIGxldCBpdCBn
byB2aWEgKHNheSkKPiBhcm0tc29jIHRvIGhhdmUgaXQgYWxsIGluIGEgc2luZ2xlIHRyZWUgc29v
biBhbmQgdGhlbiBiYXNlIG5ldwo+IGRldmVsb3BtZW50IG9uIHRvcCBvZiB0aGF0LCB0aGF0IHdv
dWxkIGJlIGZpbmUgZm9yIG1lLCB0b28uCkkgc2VuZCB0aGlzIGluIGEgcGF0Y2ggc2V0IGZvciBh
IG5ldyBzb2MgYW5kIGJvYXJkIGJlY2F1c2UgdGhlcmUgaXMKbm8gZHJpdmVyIGNoYW5nZSBuZWVk
ZWQsIGFuZCBJIHRoaW5rIGl0IHdvdWxkIGJlIG1vcmUgY2xlYXIgZm9yIHRoZSBuZXcgc29jCnN1
cHBvcnQuIEl0IHdpbGwgYmUgZ3JlYXQgaWYgbWFpbnRhaW5lcnMgbGlrZSB5b3UgY2FuIHBpY2sg
dGhlIHBhdGNoZXMKZm9yIHRoZSBtb2R1bGUgd2hpY2ggSSBndWVzcyBpcyBwcmVmZXJyZWQgd2F5
IGluIHRoZSBrZXJuZWwgbWFpbnRhaW4gcnVsZT8KT3IgZWxzZSBJIGhhdmUgdG8gZm9sbG93IHRo
ZSBjb21tZW50cyBmcm9tS3J6eXN6dG9mIHRvIHNlbmQgcGF0Y2hlcyBvbmUKYnkgb25lIHNlcGFy
YXRlbHkuCgpUaGFua3MsCi0gS2V2ZXIKPiBJbiB0aGUgZm9ybWVyIGNhc2UsIHBsZWFzZSB0ZWxs
IG1lLiBJbiB0aGUgbGF0dGVyIGNhc2U6Cj4KPiBBY2tlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWc8
dWtsZWluZWtAa2VybmVsLm9yZz4KPgo+IEJlc3QgcmVnYXJkcwo+IFV3ZQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
