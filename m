Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BEC7E77188
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Dec 2024 01:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9j4n8j1MB46NvkVcR3ekCbtfYRvvU21ePezBpJZg6lg=; b=DlesL+vA2p4YtlLr/EdAQtW6J/
	Kkr6hPmbRXSkpOfRoJuPk053+Sx6jC+nHls1AiKcX9T1kAmOexFGMvhYxWXaiO7gisHCvq8HSgoSP
	ihvhETFwKLodK89yh8QzrH7Rc04P/82hd1yzAZrSpv2q30gSFHZ5O/wRLxLtLPAiNGQlfVxOfWsgT
	GD3jy0NAoGuzyCr9ci7tJ7EliSRyu++2t4FMStnPHzvxgd+KnEA8VfzW01KM7vDHxBgfnoWh0RNZv
	h1Yw2SP+z/ViR5Lrh24z3o4H1mqa2j3FDyDeFG+8B6UNhXtZ+Qp7aMBHHLF1ApAG3bLouP73mXnXP
	aaD2Ap5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tO5Rf-00000000VeB-0pOh;
	Thu, 19 Dec 2024 01:35:19 +0000
Received: from mail-m49230.qiye.163.com ([45.254.49.230])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tO5Rc-00000000VdX-2Q4H;
	Thu, 19 Dec 2024 01:35:18 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6277199f;
	Thu, 19 Dec 2024 09:35:12 +0800 (GMT+08:00)
Message-ID: <7fa672bb-7263-468b-ad7d-f1585459dc67@rock-chips.com>
Date: Thu, 19 Dec 2024 09:35:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/11] phy: phy-rockchip-samsung-hdptx: Add support for
 eDP mode
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
References: <20241216031225.3746-1-damon.ding@rock-chips.com>
 <20241216031225.3746-5-damon.ding@rock-chips.com>
 <867267676.0ifERbkFSE@diego>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <867267676.0ifERbkFSE@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkMZH1ZMSUpOGkNMT0gZTENWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93dc8dfa8a03a3kunm6277199f
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MDI6DAw5PDIJEBc2GhccPS45
	DAkaCxxVSlVKTEhPTkxJSkpPSkpOVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSENINwY+
DKIM-Signature: a=rsa-sha256;
	b=XhyWv9FByJopn3syCU++lxNWmISu60bEdehFbK8P7AGggwYo/a1h0s5S04Av3Zl1vVlfWXvSlNoMA0oNgGTx/sLizcbW9E6W/wCWrhIWOdbdVtnI8XBJaPUxahn0qXYxWxQXK6HnXmwTCVGXVtiEMPOh3/JdZ3vFkdE3C9G0O/k=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=JfU0BRy6UxjKGOBHhFm9jV2l7Tlz/ThMRo8XbQs5bSE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241218_173516_781203_60885E10 
X-CRM114-Status: GOOD (  10.88  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiAyMDI0LzEyLzE4IDIwOjM1LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBI
aSBEYW1vbiwKPiAKPiBBbSBNb250YWcsIDE2LiBEZXplbWJlciAyMDI0LCAwNDoxMjoxOCBDRVQg
c2NocmllYiBEYW1vbiBEaW5nOgo+PiBBZGQgYmFzaWMgc3VwcG9ydCBmb3IgUkJSL0hCUi9IQlIy
IGxpbmsgcmF0ZXMsIGFuZCB0aGUgdm9sdGFnZSBzd2luZyBhbmQKPj4gcHJlLWVtcGhhc2lzIGNv
bmZpZ3VyYXRpb25zIG9mIGVhY2ggbGluayByYXRlIGhhdmUgYmVlbiB2ZXJpZmllZCBhY2NvcmRp
bmcKPj4gdG8gdGhlIGVEUCAxLjMgcmVxdWlyZW1lbnRzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBE
YW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hpcHMuY29tPgo+Pgo+PiAtLS0KPj4KPj4gQ2hh
bmdlcyBpbiB2MjoKPj4gLSBBZGQgdGhlIG1vZHVsZSBhdXRob3IKPj4gLS0tCj4gCj4+IEBAIC0y
NTUsNiArMzY0LDE5IEBAIHN0cnVjdCByb3BsbF9jb25maWcgewo+PiAgIAl1OCBjZF90eF9zZXJf
cmF0ZV9zZWw7Cj4+ICAgfTsKPj4gICAKPj4gK3N0cnVjdCB0eF9kcnZfY3RybCB7Cj4+ICsJdTgg
dHhfZHJ2X2x2bF9jdHJsOwo+PiArCXU4IHR4X2Rydl9wb3N0X2x2bF9jdHJsOwo+PiArCXU4IGFu
YV90eF9kcnZfaWRydl9pZG5fY3RybDsKPj4gKwl1OCBhbmFfdHhfZHJ2X2lkcnZfaXVwX2N0cmw7
Cj4+ICsJdTggYW5hX3R4X2Rydl9hY2NkcnZfZW47Cj4+ICsJdTggYW5hX3R4X2Rydl9hY2NkcnZf
Y3RybDsKPj4gKwl1OCB0eF9kcnZfcHJlX2x2bF9jdHJsOwo+PiArCXU4IGFuYV90eF9qZXFfZW47
Cj4+ICsJdTggdHhfamVxX2V2ZW5fY3RybDsKPj4gKwl1OCB0eF9qZXFfb2RkX2N0cmw7Cj4+ICt9
Owo+PiArCj4+ICAgZW51bSBya19oZHB0eF9yZXNldCB7Cj4+ICAgCVJTVF9QSFkgPSAwLAo+PiAg
IAlSU1RfQVBCLAo+IAo+IG5vdCBhIGZ1bGwgcmV2aWV3ICh5ZXQpLCBidXQgdGhpcyBwYXJ0IGNv
bmZsaWN0cyB3aXRoCj4gY29tbWl0IGYyZGJjYTE2OTc5MCAoInBoeTogcGh5LXJvY2tjaGlwLXNh
bXN1bmctaGRwdHg6IERvbid0IHJlcXVlc3QgUlNUX1BIWS9SU1RfUk9QTEwvUlNUX0xDUExMIikK
PiAKPiBbMF0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQv
bmV4dC9saW51eC1uZXh0LmdpdC9jb21taXQvP2lkPWYyZGJjYTE2OTc5MGVhMWU0MzZmZmRkOWVm
MzdkN2MzYTQ0MDFjNDYKPiAKPiAKPiAKPiAKSSB3aWxsIHVwZGF0ZSB0byB0aGUgbGF0ZXN0IEtl
cm5lbCBicmFuY2ggYW5kIGZpeCB0aGlzIGNvbmZsaWN0IGluIHRoZSAKbmV4dCB2ZXJzaW9uLgoK
QmVzdCByZWdhcmRzLApEYW1vbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
