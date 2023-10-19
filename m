Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81AADCDB465
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 13:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJHTP+frVQzosfvmFCjROKIA4YqXM24Z4joLDROWelg=; b=WUdn1JGTnhR387
	wswtjR1VpakxlBUmfRBFpvZ2jg8gIeApre4CSh017j24uypglwNkcUR2owr4MC7pdxxGoH19ooQNy
	z67LjxhlFXh/tcjC9Yobgy2jaG7NqVmpXtGhvxSy1ZA64XS3W8EtaNT0AlFJfNkgx4ffXPpDJbZ8z
	5uCCGRiNLVhtx0DvG5QHngyfYy5wYmham4hx9RhjMxJKxly/e0g9q1N08JdkktvYgqU6OTCUCTzM5
	zF2dM1GaUCyj4H3Kk1tBQwVGX1P2pDoTliZ7x0OjaZpGuWfhZqpmJKkLKpkHJskwsIQs+6XM4wsuz
	KkWVByvptuvhqeyPgjjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtTQD-00HZF9-1v;
	Thu, 19 Oct 2023 13:50:45 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtTQ8-00HZD3-0N;
	Thu, 19 Oct 2023 13:50:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 94ADCB82952;
	Thu, 19 Oct 2023 13:50:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD39AC433C7;
	Thu, 19 Oct 2023 13:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697723437;
	bh=oy5VzoMhN6wZ1Vzq3Eg71Tf23vyezgeMhkqlIYLuizA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KFF8kYkzoGiHfBO8gNfdHBGk9gOgif60Km8M2iB03XtUdc6uHtDmf5vch03FprWdc
	 yhVh/N+yb+Pm0KNYibkrM6iaSM2u+TrYGIz6KNUJxjhFptHdUebiyy/0Xhjos7K3D1
	 JMvrWlF+/h5bXX3zcZtPwYYqRJgUmCrMPlRkl6DWlRnFS30Dr6oFJbcLUTbPx7cwng
	 w4xcUZEnmyyJO9eZ2T/oJcLM2kRaFoK+q4hhiREhKHhMSmbVoMLYZHiR1TajPCh9Da
	 Z9FJmAwdAuQUbXoKMscFYa8eHOfishbBQxbev7NGteePpsFG7NgP+d3ioEEZ8Wi7wU
	 giqLMnCi0bZhw==
Date: Thu, 19 Oct 2023 14:50:32 +0100
From: Lee Jones <lee@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: mfd: rk8xx: Deprecate
 rockchip,system-power-controller
Message-ID: <20231019135032.GD2424087@google.com>
References: <20231010174138.1888396-1-megi@xff.cz>
 <20231010174138.1888396-2-megi@xff.cz>
 <20231019102945.GA2424087@google.com>
 <a7b6115e-9490-47cf-8054-ac616dea62fd@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a7b6115e-9490-47cf-8054-ac616dea62fd@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_065040_292852_7A99D33A 
X-CRM114-Status: GOOD (  16.29  )
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

T24gVGh1LCAxOSBPY3QgMjAyMywgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKCj4gT24gMTkv
MTAvMjAyMyAxMjoyOSwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gT24gVHVlLCAxMCBPY3QgMjAyMywg
T25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gPiAKPiA+PiBGcm9tOiBPbmRyZWogSmlybWFuIDxtZWdp
QHhmZi5jej4KPiA+Pgo+ID4+IERlcHJlY2F0ZSBzdXBwb3J0IGZvciB0aGlzIHByb3BlcnR5IGlu
IGZhdm9yIG9mIHN0YW5kYXJkCj4gPj4gc3lzdGVtLXBvd2VyLWNvbnRyb2xsZXIgb25lLgo+ID4+
Cj4gPj4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4gPj4gLS0t
Cj4gPj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcm9ja2NoaXAscms4
MDUueWFtbCB8IDMgKysrCj4gPj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9t
ZmQvcm9ja2NoaXAscms4MDgueWFtbCB8IDMgKysrCj4gPj4gIERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9tZmQvcm9ja2NoaXAscms4MDkueWFtbCB8IDMgKysrCj4gPj4gIERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcm9ja2NoaXAscms4MTcueWFtbCB8IDMg
KysrCj4gPj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcm9ja2NoaXAs
cms4MTgueWFtbCB8IDMgKysrCj4gPj4gIDUgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygr
KQo+ID4gCj4gPiBJIGRvbid0IHNlZSBhbnl0aGluZyB3cm9uZyB3aXRoIGl0Lgo+ID4gCj4gPiBJ
dCB3b3VsZCBiZSBuaWNlIHRvIGhhdmUgYSBEVCBBY2sgdGhvdWdoLgo+IAo+IFJvYiBnYXZlIHJl
dmlldyBvbiAxMnRoIE9jdC4KClRoaXMgbmV3IHZlcnNpb24gd2FzIHN1Ym1pdHRlZCBvbiB0aGUg
MTB0aCBPY3QuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
