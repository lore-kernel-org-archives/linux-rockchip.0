Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 320ACD59D99
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Dec 2025 11:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCJnxv+A/8pQjGo5P0d+zJ75Nvn7kteazqKGlQT3U9k=; b=oaYLG53VQvdKCl
	VjvQjCg6GTQ6nD9yFsnNnN14AK2cNSSold4qysvLbNrY2dgZ/qqtm66PrFdL3vpIkQliCAJUpRk9I
	jeHhOxhQ4kow2YehwyES5zjxl/I5OZqcbX8K9ap+pcHXaChes2sPdpdiIqxzKbq+qIZqO4SdBw27T
	3KG1QebKIZdlcKTKGqsj+QrJdz1nXKcEjCM/eGMy3JCXRsCyMsMW1NeMSQENwdoh4MuOeLOtaU5w0
	DdTeGRNKlVSnuVKJfHdt/iZvfi6y7FBxAVYTMnanpbxCB2n/4a10SXfMyv1Fv09sozctQJ8ZO+KVH
	WkPuTmaC7NCs5EfsTCEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6sU-00000003X7K-3xSm;
	Mon, 15 Dec 2025 11:36:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6sS-00000003X6q-2593;
	Mon, 15 Dec 2025 11:36:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=QuF8eKYdyq0Lx8q7EFdB8lJKxyIkO2eBdUsXglP9txM=; b=1AlnazApiDEhlijBTC0mwxyBQu
	Yk9J4u2sl6IlknfNmDU06dEBcLn7GF4vglaa7tkWsjvCnHRYV/dgnrtoUQh1ekSay9NBjHHO1PEee
	AsWcz/JMZOQ6+LRbU027X3kDK9Nawin2HhVzyKDGC+icz4TkDs5fea/XJk0huyDlzD5QMeGuNW7rf
	MWfz30VnoGipVOHUX4yBDUDBEjdMfdN6vc/VV1KFcDXvgZfqBOnv1kdGKOxF/AiVexzV0bcC+L7wq
	cOtPdDqJhpcZGDcJAA6jrNFOu3YqTcBaXeGseK2sc6CBx77ENl9lVuCLM3eCs27XC/ApGURT6tfwo
	KkziR4yQ==;
Received: from [192.76.154.229] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vV6sN-0000B7-NP; Mon, 15 Dec 2025 12:36:27 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, guptarud@gmail.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 phone-devel@vger.kernel.org, Rudraksha Gupta <guptarud@gmail.com>,
 Ondrej Jirman <megi@xff.cz>, Martijn Braam <martijn@brixit.nl>,
 Kamil =?UTF-8?B?VHJ6Y2nFhHNraQ==?= <ayufan@ayufan.eu>
Subject: Re: [PATCH v5 1/4] arm64: dts: rockchip: Add light/proximity sensor to
 Pinephone Pro
Date: Mon, 15 Dec 2025 12:36:26 +0100
Message-ID: <10855349.CDJkKcVGEf@phil>
In-Reply-To: <20251124-ppp_light_accel_mag_vol-down-v5-1-f9a10a0a50eb@gmail.com>
References: <20251124-ppp_light_accel_mag_vol-down-v5-0-f9a10a0a50eb@gmail.com>
 <20251124-ppp_light_accel_mag_vol-down-v5-1-f9a10a0a50eb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_033632_721525_D78C0D8D 
X-CRM114-Status: GOOD (  11.29  )
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

SGksCgpBbSBEaWVuc3RhZywgMjUuIE5vdmVtYmVyIDIwMjUsIDA0OjQ3OjAwIE1pdHRlbGV1cm9w
w6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgUnVkcmFrc2hhIEd1cHRhIHZpYSBCNCBSZWxheToK
Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVw
aG9uZS1wcm8uZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBo
b25lLXByby5kdHMKPiBpbmRleCA2Zjk3ZTU3ZjM2ZjUuLjJkMjg1OGVlMTQ5ZSAxMDA2NDQKPiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0
cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1w
cm8uZHRzCj4gQEAgLTUyMCw2ICs1MjAsMTYgQEAgdG91Y2hzY3JlZW5AMTQgewo+ICAJCXRvdWNo
c2NyZWVuLXNpemUteCA9IDw3MjA+Owo+ICAJCXRvdWNoc2NyZWVuLXNpemUteSA9IDwxNDQwPjsK
PiAgCX07Cj4gKwo+ICsJbGlnaHQtc2Vuc29yQDQ4IHsKPiArCQljb21wYXRpYmxlID0gInNlbnNv
cnRlayxzdGszMzExIjsKPiArCQlwcm94aW1pdHktbmVhci1sZXZlbCA9IDwzMDA+OwoKcHJveGlt
aXR5LW5leHQtLi4uIGJlbG9uZ3MgYmVsb3cgcGluY3RybC0qCgoKPiArCQlyZWcgPSA8MHg0OD47
Cj4gKwkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzQ+Owo+ICsJCWludGVycnVwdHMgPSA8Uktf
UEQzIElSUV9UWVBFX0VER0VfRkFMTElORz47Cj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0
IjsKPiArCQlwaW5jdHJsLTAgPSA8JmxpZ2h0X2ludF9sPjsKPiArCX07Cj4gIH07Cj4gIAo+ICAm
aTJjNCB7Cj4gQEAgLTY4OSw2ICs2OTksMTIgQEAgdmNjMXY4X2NvZGVjX2VuOiB2Y2MxdjgtY29k
ZWMtZW4gewo+ICAJCX07Cj4gIAl9Owo+ICAKPiArCXN0azMzMTEgewoKcGxlYXNlIHNvcnQgbm9k
ZXMgYWxwaGFiZXRpY2FsbHkKKHN0azMzMTEgYWZ0ZXIgdmNjMXY4LWNvZGVjLWVuIGlzIGluY29y
cmVjdCkKCgo+ICsJCWxpZ2h0X2ludF9sOiBsaWdodC1pbnQtbCB7Cj4gKwkJCXJvY2tjaGlwLHBp
bnMgPSA8NCBSS19QRDMgUktfRlVOQ19HUElPICZwY2ZnX2lucHV0X3B1bGxfdXA+Owo+ICsJCX07
Cj4gKwl9Owo+ICsKPiAgCXdpcmVsZXNzLWJsdWV0b290aCB7Cj4gIAkJYnRfd2FrZV9waW46IGJ0
LXdha2UtcGluIHsKPiAgCQkJcm9ja2NoaXAscGlucyA9IDwyIFJLX1BEMiBSS19GVU5DX0dQSU8g
JnBjZmdfcHVsbF9ub25lPjsKPiAKPiAKCgpIZWlrbwoKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
