Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFE0ACDB465
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 14:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KbA0knUPvdM668rC5GrV7v6Ys6tUU8q5rxh35qGEKJU=; b=Z5Lprs3oqFWR9N
	Pdh2NT0DC0UegClwz9ssRswH1vDL0n4wujaE4huZyUsv5wcuQc0vaUIrMELcUTPFdBsTVYhgHx49h
	eYBehRXQFeSu0CVhzT82IysdWsqLWmp0qkBgU/HSOLd2NSR0uR4pB/ZnFvlPv/e3I3YPQkatk9K83
	zmwe5m6eZfCfNmHMRKFdfE2bTV4U78iY/vUeaIywiFfWgO5XczU6nRvTfzJ3ke9adUNqpYtftZ6Ar
	NQ0k0EyoRm+dnCU0MIAGOfWdbDFbDsbbG6/jsk0QVfhePkQrS2imQIRJUncOz2gLBJyCbxGdoibnK
	US3bmr1jB12Ljfvsgk3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtTcI-0000HB-2e;
	Thu, 19 Oct 2023 14:03:14 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtTcE-0000DF-1W;
	Thu, 19 Oct 2023 14:03:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1697724182; bh=mzygX/Iz4+PfF7qIVuMysQzJMSljB7WHNgZp+lLP3UU=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=R5RN4guTvUB1bj2Wij331KTDYhEJhyRHQ+PQFq+1uYCtbORISApH/hU+LUymEO998
	 TmTeJYwUmainRCNSkiAX3pfWtJ/Wux0X60gnd9ywZDc1dZ+iCOEggv9aeu9tw+l0AI
	 HHMULpYM1vwqehs7IWfu08oRLmNYgm3KriDLWiPs=
Date: Thu, 19 Oct 2023 16:03:02 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Lee Jones <lee@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: mfd: rk8xx: Deprecate
 rockchip,system-power-controller
Message-ID: <ejqkt2t647sok6q2z2civde54xztopwqc5srksjcmosikstiuv@ci4f643m7hxy>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Lee Jones <lee@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20231010174138.1888396-1-megi@xff.cz>
 <20231010174138.1888396-2-megi@xff.cz>
 <20231019102945.GA2424087@google.com>
 <a7b6115e-9490-47cf-8054-ac616dea62fd@linaro.org>
 <20231019135032.GD2424087@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231019135032.GD2424087@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_070311_269539_F46AA348 
X-CRM114-Status: GOOD (  17.80  )
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

T24gVGh1LCBPY3QgMTksIDIwMjMgYXQgMDI6NTA6MzJQTSArMDEwMCwgTGVlIEpvbmVzIHdyb3Rl
Ogo+IAo+IE9uIFRodSwgMTkgT2N0IDIwMjMsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4g
Cj4gPiBPbiAxOS8xMC8yMDIzIDEyOjI5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiA+IE9uIFR1ZSwg
MTAgT2N0IDIwMjMsIE9uZMWZZWogSmlybWFuIHdyb3RlOgo+ID4gPiAKPiA+ID4+IEZyb206IE9u
ZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+ID4gPj4KPiA+ID4+IERlcHJlY2F0ZSBzdXBwb3J0
IGZvciB0aGlzIHByb3BlcnR5IGluIGZhdm9yIG9mIHN0YW5kYXJkCj4gPiA+PiBzeXN0ZW0tcG93
ZXItY29udHJvbGxlciBvbmUuCj4gPiA+Pgo+ID4gPj4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEpp
cm1hbiA8bWVnaUB4ZmYuY3o+Cj4gPiA+PiAtLS0KPiA+ID4+ICBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODA1LnlhbWwgfCAzICsrKwo+ID4gPj4gIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcm9ja2NoaXAscms4MDgueWFtbCB8
IDMgKysrCj4gPiA+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yb2Nr
Y2hpcCxyazgwOS55YW1sIHwgMyArKysKPiA+ID4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODE3LnlhbWwgfCAzICsrKwo+ID4gPj4gIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcm9ja2NoaXAscms4MTgueWFtbCB8IDMgKysr
Cj4gPiA+PiAgNSBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCj4gPiA+IAo+ID4gPiBJ
IGRvbid0IHNlZSBhbnl0aGluZyB3cm9uZyB3aXRoIGl0Lgo+ID4gPiAKPiA+ID4gSXQgd291bGQg
YmUgbmljZSB0byBoYXZlIGEgRFQgQWNrIHRob3VnaC4KPiA+IAo+ID4gUm9iIGdhdmUgcmV2aWV3
IG9uIDEydGggT2N0Lgo+IAo+IFRoaXMgbmV3IHZlcnNpb24gd2FzIHN1Ym1pdHRlZCBvbiB0aGUg
MTB0aCBPY3QuCgpodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzE2OTcxNDA4MTM1My4xNTg3
NTM2LjI3NjcxNTAyOTgyMDgyNTk5NzYucm9iaEBrZXJuZWwub3JnLwoKPiAtLSAKPiBMZWUgSm9u
ZXMgW+adjueQvOaWr10KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
