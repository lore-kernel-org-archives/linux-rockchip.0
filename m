Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82CB41090225
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 13:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:MIME-Version:References:
	In-Reply-To:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wqmtrc/7Lgfa1w9qIcW+RixAoDhCzRVge0b/bDvJGsU=; b=rl6RmLaxlyigMe9swN33dkByp1
	hIdgrdWcAtEc2crYPG/aT8TR7QaW6mDTQ80Qaj765S5wLqxsfDWQ+NPt3++V3o9InR1K1VbLJJoFW
	AylQgath3sLa/CHWrXN5h4zLCVt3pAN0vAmdMKf/O95Mj1zFc1ZFz1LRFzzLzIeCjyOV232++MCb9
	9rD+tq9ZIRaZ7sp6NikM8xC/g39RuJbhgjXWVTe76izuEC01RSsALNsvKdtFAX6H61NhQg9GyWq96
	ZMQ3ejbPKVPIBAFVqiVps/FkI23dGERJA0Op+rhgh7SR5T8/t08SVOXUijxeAbM2kfEoSnbzhsbGL
	mn6eTgwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3DaG-0000000AhX7-37T9;
	Thu, 19 Mar 2026 13:38:44 +0000
Received: from aposti.net ([185.119.170.32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3DaD-0000000AhVo-2omB;
	Thu, 19 Mar 2026 13:38:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=crapouillou.net;
	s=mail; t=1773927515;
	bh=ksvyivwMMcfAco4JH1SNvzalhs1WV6ffPUpIeWy4SQ8=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date:From;
	b=Wjg+5HA2DcTy7ImzDCfL/hiwNCW3P+AT+sac3h1AcSSNPOrO713uAzTj+LGFyQIFN
	 qZw7s81n5YdPRSxoA+qWuuOqKcdY5sAKCEH1+bgXIPB6PDV/AKYCjaJZ38qyuU8n+E
	 +NbUAIZRrQvXeRWqEhXISlJM+aOu9BAoOryWWTIM=
Message-ID: <5a390e368fa74f7f96bcceefea34af306d768929.camel@crapouillou.net>
Subject: Re: [PATCH 05/15] dt-bindings: rtc: ingenic,rtc: Use generic
 power-controller schema
From: Paul Cercueil <paul@crapouillou.net>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, "Rafael J. Wysocki"	 <rafael@kernel.org>, Ulf
 Hansson <ulf.hansson@linaro.org>, Florian Fainelli	
 <florian.fainelli@broadcom.com>, Broadcom internal kernel review list	
 <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>, Scott
 Branden <sbranden@broadcom.com>, Saenz Julienne <nsaenz@kernel.org>, Lee
 Jones <lee@kernel.org>,  Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>, Shree Ramamoorthy <s-ramamoorthy@ti.com>,  Jerome
 Neanne <jerome.neanne@baylibre.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Dmitry Osipenko <digetx@gmail.com>, Heiko
 Stuebner <heiko@sntech.de>, Joseph Chen <chenjh@rock-chips.com>,  Chris
 Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>,
 Sebastian Reichel	 <sebastian.reichel@collabora.com>, Andreas Kemnade
 <andreas@kemnade.info>,  Jonathan =?ISO-8859-1?Q?Neusch=E4fer?=	
 <j.neuschaefer@gmx.net>, Lubomir Rintel <lkundrak@v3.sk>, Julien Panis	
 <jpanis@baylibre.com>, Matti Vaittinen <mazziesaccount@gmail.com>,
 Alexander Kurz <akurz@blala.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 	linux-rtc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
In-Reply-To: <20260316-power-controller-v1-5-92c80e5e1744@nxp.com>
References: <20260316-power-controller-v1-0-92c80e5e1744@nxp.com>
	 <20260316-power-controller-v1-5-92c80e5e1744@nxp.com>
Autocrypt: addr=paul@crapouillou.net; prefer-encrypt=mutual;
 keydata=mQENBF0KhcEBCADkfmrzdTOp/gFOMQX0QwKE2WgeCJiHPWkpEuPH81/HB2dpjPZNW03ZM
 LQfECbbaEkdbN4YnPfXgcc1uBe5mwOAPV1MBlaZcEt4M67iYQwSNrP7maPS3IaQJ18ES8JJ5Uf5Uz
 FZaUawgH+oipYGW+v31cX6L3k+dGsPRM0Pyo0sQt52fsopNPZ9iag0iY7dGNuKenaEqkYNjwEgTtN
 z8dt6s3hMpHIKZFL3OhAGi88wF/21isv0zkF4J0wlf9gYUTEEY3Eulx80PTVqGIcHZzfavlWIdzhe
 +rxHTDGVwseR2Y1WjgFGQ2F+vXetAB8NEeygXee+i9nY5qt9c07m8mzjABEBAAG0JFBhdWwgQ2VyY
 3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PokBTgQTAQoAOBYhBNdHYd8OeCBwpMuVxnPua9InSr
 1BBQJdCoXBAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHPua9InSr1BgvIH/0kLyrI3V0f
 33a6D3BJwc1grbygPVYGuC5l5eMnAI+rDmLR19E2yvibRpgUc87NmPEQPpbbtAZt8On/2WZoE5OIP
 dlId/AHNpdgAtGXo0ZX4LGeVPjxjdkbrKVHxbcdcnY+zzaFglpbVSvp76pxqgVg8PgxkAAeeJV+ET
 4t0823Gz2HzCL/6JZhvKAEtHVulOWoBh368SYdolp1TSfORWmHzvQiCCCA+j0cMkYVGzIQzEQhX7U
 rf9N/nhU5/SGLFEi9DcBfXoGzhyQyLXflhJtKm3XGB1K/pPulbKaPcKAl6rIDWPuFpHkSbmZ9r4KF
 lBwgAhlGy6nqP7O3u7q23hRU=
MIME-Version: 1.0
Date: Thu, 19 Mar 2026 12:12:52 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_063842_238466_4A0CA1D0 
X-CRM114-Status: GOOD (  10.70  )
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

SGksCgpMZSBsdW5kaSAxNiBtYXJzIDIwMjYgw6AgMjI6NDcgKzA4MDAsIFBlbmcgRmFuIChPU1Mp
IGEgw6ljcml0wqA6Cj4gRnJvbTogUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+Cj4gCj4gQ29u
dmVydCB0aGUgYmluZGluZyB0byB1c2UgdGhlIGdlbmVyaWMgcG93ZXItY29udHJvbGxlciBzY2hl
bWEKPiBpbnN0ZWFkIGJ5Cj4gcmVmZXJlbmNpbmcgcG93ZXItY29udHJvbGxlci55YW1sIGFuZCBy
ZW1vdmluZyB0aGUgbG9jYWwKPiBgc3lzdGVtLXBvd2VyLWNvbnRyb2xsZXJgIHByb3BlcnR5IGRl
ZmluaXRpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+
CgpBY2tlZC1ieTogUGF1bCBDZXJjdWVpbCA8cGF1bEBjcmFwb3VpbGxvdS5uZXQ+CgpDaGVlcnMs
Ci1QYXVsCgo+IC0tLQo+IMKgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3J0Yy9p
bmdlbmljLHJ0Yy55YW1sIHwgNyArLS0tLS0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9ydGMvaW5nZW5pYyxydGMueWFtbAo+IGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3J0Yy9pbmdlbmljLHJ0Yy55YW1sCj4gaW5kZXgKPiBkZTk4Nzli
ZGIzMTc1YTdlMGYyNDMwNGI1YTA4NGE4ZmFhMjMzYzQ2Li40MTU1NjZkOGRiYTU2NGViYWQ5NzY2
ODk1OTYKPiBiYmNkNjk5ZWQ2MDIxIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9ydGMvaW5nZW5pYyxydGMueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9ydGMvaW5nZW5pYyxydGMueWFtbAo+IEBAIC0xMSw2ICsxMSw3
IEBAIG1haW50YWluZXJzOgo+IMKgCj4gwqBhbGxPZjoKPiDCoMKgIC0gJHJlZjogcnRjLnlhbWwj
Cj4gK8KgIC0gJHJlZjogL3NjaGVtYXMvcG93ZXIvcG93ZXItY29udHJvbGxlci55YW1sIwo+IMKg
wqAgLSBpZjoKPiDCoMKgwqDCoMKgwqAgbm90Ogo+IMKgwqDCoMKgwqDCoMKgwqAgcHJvcGVydGll
czoKPiBAQCAtNTMsMTIgKzU0LDYgQEAgcHJvcGVydGllczoKPiDCoMKgICIjY2xvY2stY2VsbHMi
Ogo+IMKgwqDCoMKgIGNvbnN0OiAwCj4gwqAKPiAtwqAgc3lzdGVtLXBvd2VyLWNvbnRyb2xsZXI6
Cj4gLcKgwqDCoCBkZXNjcmlwdGlvbjogfAo+IC3CoMKgwqDCoMKgIEluZGljYXRlcyB0aGF0IHRo
ZSBSVEMgaXMgcmVzcG9uc2libGUgZm9yIHBvd2VyaW5nIE9GRgo+IC3CoMKgwqDCoMKgIHRoZSBz
eXN0ZW0uCj4gLcKgwqDCoCB0eXBlOiBib29sZWFuCj4gLQo+IMKgwqAgaW5nZW5pYyxyZXNldC1w
aW4tYXNzZXJ0LXRpbWUtbXM6Cj4gwqDCoMKgwqAgbWluaW11bTogMAo+IMKgwqDCoMKgIG1heGlt
dW06IDEyNQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
