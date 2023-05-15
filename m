Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 488B7C7EE23
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 May 2023 15:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31Q0ERMM/Wk//McYw4vs797HYqsnClUMcAu+xayzDRE=; b=PHFMbyfCZIgoF9
	sGJbtUILtlzWalg+Xo1/3NHPR78kVQ/svAdoP3/c1xiafDvj+9NgjWg45kM220NRYvdIStFedIy4h
	sjG744Va1AVroCrW/uo4aydKmyc/t8pmh6Py2epbn+7Y3MDdrELzBehdstNlzc5RKK0wJ+ACggMng
	TByewhAT355AFph2w+tKH2zVuSNx4CMdpX12xDrhVRbVJM20PHpo360+4HJq5lUelyXFZXb8QzdG4
	Z+G0OOf5bbVd2PPPkh7Ovxh3LGpWB2cECKFdfiasqSPi0lX/kZriXtBggCghyShdpDKgIDq1nFjQp
	mp2I9dESySnKqJHE3opg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyZyQ-002Xy9-1g;
	Mon, 15 May 2023 15:18:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyZyO-002XxV-05
	for linux-rockchip@lists.infradead.org;
	Mon, 15 May 2023 15:18:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 87D93625FC;
	Mon, 15 May 2023 15:18:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A595C433EF;
	Mon, 15 May 2023 15:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684163931;
	bh=TXYgj6/20Uus/rd/MXXhGWJpYIqaRRMVUuQbbVSNwSk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ps3JfcQvrrHK/zPEqbOWEy2mt2cKLshPw6KHPs2oF+I15/gX95RGVtYGSsD8d2tDr
	 lg/wPCYS5FNqbP8w36Ow/MxAZ5DSIimSIBem/jRrsbZO4Ar30XeSjKmmvsYz+4iFRj
	 IW2PEyBOEmqxNy+GC2FAOK79GRTbuKkjO6ZOnreIBexGTBOuQS2dCWayyULYx5ZzFA
	 SE92Ug9UqQH92tcl4opY6f+nEbABOiZqueb0TGLO9+A8eJcecShywg1ltszJaD5+/o
	 mwZTeiikhwcJDPG5x9YkF6EChnAidavjdBBr5gQ3a5a6h/hDYTvdAKItvldCfnkfnZ
	 wHQxYFAGlM1Og==
Date: Mon, 15 May 2023 16:18:43 +0100
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	Diederik de Haas <didi.debian@cknow.org>,
	Vincent Legoll <vincent.legoll@gmail.com>
Subject: Re: [PATCH v8 04/14] mfd: rk808: replace 'struct i2c_client' with
 'struct device'
Message-ID: <20230515151843.GP10825@google.com>
References: <20230504173618.142075-1-sebastian.reichel@collabora.com>
 <20230504173618.142075-5-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230504173618.142075-5-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_081852_112348_FE8CE467 
X-CRM114-Status: GOOD (  12.72  )
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

T24gVGh1LCAwNCBNYXkgMjAyMywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IFB1dCAnc3Ry
dWN0IGRldmljZScgcG9pbnRlciBpbnRvIHRoZSBNRkQgcGxhdGZvcm1fZGF0YSBpbnN0ZWFkCj4g
b2YgdGhlICdzdHJ1Y3QgaTJjX2NsaWVudCcgcG9pbnRlci4gVGhpcyBzaW1wbGlmaWVzIHRoZSBj
b2RlCj4gYW5kIHByZXBhcmVzIHRoZSBNRkQgZm9yIFNQSSBzdXBwb3J0Lgo+IAo+IEFja2VkLWZv
ci1NRkQtYnk6IExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+Cj4gVGVzdGVkLWJ5OiBEaWVkZXJp
ayBkZSBIYWFzIDxkaWRpLmRlYmlhbkBja25vdy5vcmc+ICMgUm9jazY0LCBRdWFydHo2NCBNb2Rl
bCBBICsgQgo+IFRlc3RlZC1ieTogVmluY2VudCBMZWdvbGwgPHZpbmNlbnQubGVnb2xsQGdtYWls
LmNvbT4gIyBQaW5lNjQgUXVhcnR6UHJvNjQKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVp
Y2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9t
ZmQvcms4MDguYyAgICAgICB8IDYgKysrLS0tCj4gIGluY2x1ZGUvbGludXgvbWZkL3JrODA4Lmgg
fCAyICstCj4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQoKQXBwbGllZCwgdGhhbmtzCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
