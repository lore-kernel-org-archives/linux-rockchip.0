Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36838C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 10:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GnClDrP5QX6xFpUHxn7TqWSPMPzVJx6anVFWgs24CnI=; b=ftoU6OrqneWV7B
	Unux/zFike/Bk2l4nIA3ni3ZgSzPbhCIhPzx6wrz2HnmlrrP9tqNXJZrHh3GPokj/b6WVG+pdoPjT
	AzmVYy3CUTPxPbkhttvop8elRRHrCa8KkAiQHgRDLFGAo9dIpSOfN7zV282KJjkeNRfiabLKGqTW0
	39DRGwCPjQ09WJzZi+CdyltOzCpln/HkCcsQJ9SI69Lo9eoeiM/1i/X3WMnS5JvSa0faO5Sn3C//9
	hcVGSAej8A483dkQCTVchMqByaSyoe8CtORy3yU3YAaBvXjc5VVSEczzyKGWzuT2rwkqsQjV0NB3F
	11LYnSG/HLiyqLgPAVyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAqrY-000jTc-Te; Mon, 11 Jul 2022 10:42:00 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAqrL-000jFs-0x; Mon, 11 Jul 2022 10:41:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DC13616A3;
	Mon, 11 Jul 2022 03:41:43 -0700 (PDT)
Received: from [10.57.85.194] (unknown [10.57.85.194])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 076BA3F792;
	Mon, 11 Jul 2022 03:41:40 -0700 (PDT)
Message-ID: <15846ffa-f68a-2f88-55a3-40a633132c28@arm.com>
Date: Mon, 11 Jul 2022 11:41:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
Content-Language: en-GB
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, kernel test robot <lkp@intel.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <9567EECF-A154-4FE1-A03C-5ED080409030@gmail.com>
 <190C3FD3-0185-4A99-B10E-A5790047D993@gmail.com>
 <CAMdYzYqGGfWDr11iyyfzigxsL7_N2szuag9P6TUZGuzGF4oB+A@mail.gmail.com>
 <AF6176F5-995E-473B-B494-844ECC26BC03@gmail.com>
 <CAMdYzYocZw1SNtgbfqn1VuvKTCiuMNTYRn2MydiGnL-UxtnYuA@mail.gmail.com>
 <0D8B18A1-82FD-4902-A443-AD774DE43DAD@gmail.com>
 <CAMdYzYpdo6Hb30y1oEya5GT1eXHJVTETq--HcmMjF40gvCUZ9A@mail.gmail.com>
 <E9DC63DF-46A6-438E-A7F1-5F7A65F56DFC@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <E9DC63DF-46A6-438E-A7F1-5F7A65F56DFC@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_034147_185960_D832182C 
X-CRM114-Status: GOOD (  13.91  )
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

T24gMjAyMi0wNi0yNSAxNjozMSwgUGlvdHIgT25pc3pjenVrIHdyb3RlOgo+IAo+IAo+PiBXaWFk
b21vxZvEhyBuYXBpc2FuYSBwcnpleiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPiB3
IGRuaXUgMjUuMDYuMjAyMiwgbyBnb2R6LiAxNjowMDoKPj4KPj4KPj4gVGhlIGZpcnN0IGlzc3Vl
IHlvdSBoYXZlIGlzIHRoZSBUViBpc24ndCByZXNwb25kaW5nIHVudGlsIHRoZSBhYnNvbHV0ZQo+
PiBlbmQuCj4gCj4gSSBzdXNwZWN0IHRoaXMgaXMgYmVjYXVzZSBsYWNrIG9uIGlkbGUgZ2FwcyBi
ZXR3ZWVuIGNlYyBjb21tYW5kcyBzZW50IGZyb20gYm9hcmQgdG8gdHYuCj4gTWF5YmUgVFYgc3cu
IGNhbid0IGRlYWwgd2l0aCBjb25zZWN1dGl2ZSBjb21tYW5kcyB3aXRob3V0IGFueSBpZGxlIGJl
dHdlZW4gdGhlbT8KPiAKPiBJdCBpcyBpbnRlcmVzdGluZyB0aGF0IGRpc2Nvbm5lY3RpbmcgVFYg
LSBzbyBDRUMgbGluZSBpcyBkcml2ZW4gb25seSBieSBib2FyZCAtIHJvY2szYSBzdGlsbCBkb24n
dCBoYXZlIGFueSBpZGxlIGdhcHMgd2hpbGUgcm9jazNiIChhbmQgcmFkeGEgNC4xOSBic3ApIGhh
cyB0aGVtICh2ZXJ5IHNpbWlsYXIgYmV0d2VlbiA1LjE4bWFpbGluZSBhbmQgNC4xOSBic3ApLgo+
IAo+IEhvdyB0aGlzIGlzIHBvc3NpYmxlIHRoYXQgY2hhbmdlIEkvTyBmcm9tIG0wLT5tMSBpbXBh
Y3RzIF90aW1pbmdzXyBvbiBmcmVlIGhhbmdpbmcgQ0VDIGxpbmU/CgpDaGVjayBhbGwgdGhlIHBp
bmN0cmwgc2V0dGluZ3MgYmV5b25kIGp1c3QgdGhlIGZ1bmN0aW9uIG11eCAtIHB1bGxzLCAKZHJp
dmUgc3RyZW5ndGgsIG91dHB1dCB0eXBlLCBldGMuIC0gdGhlIGRlZmF1bHRzIHRlbmQgdG8gYmUg
YWxsIG92ZXIgdGhlIApwbGFjZSwgYW5kIHJhcmVseSB3aGF0IHlvdSB3YW50LgoKUm9iaW4uCgo+
PiBUaGlzIHN0cmlrZXMgbWUgYXMgYSBzaWduYWwgaW50ZWdyaXR5IGlzc3VlLiBEbyB5b3UgaGF2
ZSBhbgo+PiBvc2NpbGxvc2NvcGUgKG5vdCBhIGxvZ2ljIGFuYWx5emVyLCB5b3UgbmVlZCB2b2x0
YWdlcyBhbmQgcmFtcCB0aW1lcykKPj4gdG8gY29tcGFyZSB0aGUgd29ya2luZyB2cyBub24td29y
a2luZyBzaWduYWxzPyBDaGVjayBib3RoIHNpZGVzIG9mIHRoZQo+PiBsZXZlbCBzaGlmdGVyLgo+
IAo+IEluZGVlZCAtIGkgd2lsbCB2ZXJpZnkgdGhpcyB3aXRoIGRpZ2l0YWwgb3NjaWxsb3Njb3Bl
Lgo+IEFscmVhZHkgb3JkZXJlZCBhbmQgbXVzdCBhd2FpdCB3ZWVrIG9yIDIgZm9yIGRlbGl2ZXJ5
IDotKAo+IAo+IE15IGFuYWxvZyBvc2NpbGxvc2NvcGUgc2hvd3MgY29ycmVjdCBsZXZlbHMgYW5k
IHNsb3BlcyAic2VlbXMiIHRvIGJlIHRoZSBzYW1lIGxpa2UgaW4gd29ya2luZyAobm8gbWVtb3J5
IHNvIGkgY2FuIGNvbXBhcmUgb25seSB2aXN1YWxseSBvbiBmdXp6eSBzY3JlZW4pCj4gCj4gRm9y
IG1lIGtleSBpcyB0byB1bmRlcnN0YW5kIHdoeSBvbiByb2NrM2EgdGhlcmUgaXMgbm8gYW55IGlk
bGVzIGJldHdlZW4gY2VjIGNvbW1hbmRzIC0gZXZlbiB3aGVuIG5vdGhpbmcgaXMgY29ubmVjdGVk
IHRvIGJhcmQgKHNvIGNlYyBpcyBvbmx5IHNlbmRpbmcgYW5kIG5vdGhpbmcgZXh0ZXJuYWwgaW1w
YWN0cyBjZWMgc3RhdGUgbWFjaGluZSkuLi4uCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
