Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68FE0CA0EED
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 11:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9+IORamwdp+D9ZM44JZ57el4W0+WdFmnPXOx7nQRuw=; b=dQ8rytRgKQjec+
	Hvb1dq3mCIO6Qnc47OalBJi/PzZA+cqIlIoTXElSoo9z9jOpYuE33H1lMockO1/B/y44wCpBrf6+k
	1U02pwUooT3Wq0AL04LgeWizSn2GMUWofIbZr9mWWSiEO8Lxh57Dg/3+wnZu5Hgc0vLpolJsrvC0M
	UfINXtYTXnfolhuo03P6PEC726QU44XbrN8dRolG7227Aqc8l3NO8X8Wbuihkpok5CB2qL6hQF35s
	ytbkrbvnXPU0UITTFPtMRnKlmSeCbIAlR9fwiL1dI/h+krFdzkEIuisvN4En2ZYvblgllwKashDdV
	+oegSQ2l7biZcU4XXCkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uraQG-00000001H4L-0ttz;
	Thu, 28 Aug 2025 11:04:04 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urZQ5-000000013jH-0tE2;
	Thu, 28 Aug 2025 09:59:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1756375184; bh=9xSK5wQebA1aqy7LgKNxVsJm9NVimwKAsxwFdofUyZo=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=Jpl9V0EnXS0hooV4AW2thMQ/BJNtdjxOk3uvnXwwmT4pP1pGH6nas3SOnUVQhucE1
	 tjLA7D1ah1ADClJAPAK5fJfTPdDSf69icB7ShRkI1tJ5/VSREk24HjyIW961hLQhCD
	 6n3CXMohR8IjNRfBFw0bii9/JAIwOvm9CVIDMsYs=
Date: Thu, 28 Aug 2025 11:59:44 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Diederik de Haas <didi.debian@cknow.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Dragan Simic <dsimic@manjaro.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add vcc-supply to SPI flash on
 Pinephone Pro
Message-ID: <s4pqhvg542k4d3m4sosnugy5sdnqpw3dabv7cw4o33imvfyxje@yao7oufrhxn6>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Peter Robinson <pbrobinson@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Diederik de Haas <didi.debian@cknow.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Dragan Simic <dsimic@manjaro.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20250827143501.1646163-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250827143501.1646163-1-pbrobinson@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_025949_694490_E938E3CA 
X-CRM114-Status: GOOD (  16.48  )
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

T24gV2VkLCBBdWcgMjcsIDIwMjUgYXQgMDM6MzQ6NThQTSArMDEwMCwgUGV0ZXIgUm9iaW5zb24g
d3JvdGU6Cj4gQXMgZG9jdW1lbnRlZCBpbiB0aGUgUGluZXBob25lUHJvLVNjaGVtYXRpYy1WMS4w
LTIwMjExMTI3LnBkZiwKPiBwYWdlIDExLCB0aGUgU1BJIEZsYXNoJ3MgVkNDIHBpbiBpcyBjb25u
ZWN0ZWQgdG8gVkNDXzFWOCBwb3dlcgo+IHNvdXJjZS4gVGhpcyBmaXhlcyB0aGUgZm9sbG93aW5n
IHdhcm5pbmc6Cj4gCj4gICBzcGktbm9yIHNwaTEuMDogc3VwcGx5IHZjYyBub3QgZm91bmQsIHVz
aW5nIGR1bW15IHJlZ3VsYXRvcgo+IAo+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFJvYmluc29uIDxw
YnJvYmluc29uQGdtYWlsLmNvbT4KClJldmlld2VkLWJ5OiBPbmTFmWVqIEppcm1hbiA8bWVnaUB4
ZmYuY3o+CgpUaGFuayB5b3UsCglvLgoKPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktcGluZXBob25lLXByby5kdHMKPiBpbmRleCBiZTkwZTA0OWEzMDJjLi4yNGU0MzY1
YTJlNTg4IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LXBpbmVwaG9uZS1wcm8uZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktcGluZXBob25lLXByby5kdHMKPiBAQCAtNzcyLDYgKzc3Miw3IEBAIGZsYXNoQDAgewo+
ICAJCWNvbXBhdGlibGUgPSAiamVkZWMsc3BpLW5vciI7Cj4gIAkJcmVnID0gPDA+Owo+ICAJCXNw
aS1tYXgtZnJlcXVlbmN5ID0gPDEwMDAwMDAwPjsKPiArCQl2Y2Mtc3VwcGx5ID0gPCZ2Y2NfMXY4
PjsKPiAgCX07Cj4gIH07Cj4gIAo+IC0tIAo+IDIuNTEuMAo+IAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
