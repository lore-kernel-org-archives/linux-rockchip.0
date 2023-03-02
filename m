Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26ED8C6FA8E
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Mar 2023 16:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u33OdqzkwY/evgClC8+ihe0sGdOr/AUO1SJdSPln94E=; b=SJvQ+yyZid+GWB
	X7Uu1KS46k5ClRvFOla0DIMYhMfeap4ypIm5zmCqehDpL6+VoUUCb2T9b4sHyMAF3KnDCk0GarkV5
	dLLETHyD19Kba0sJliJKR0dzPEJF7S/FxMqEztrR1y41U/tq9cUcv3t0UNEWIPYHBPoShkrpVSca7
	yMDUINb/G+UymwPYRDc4No5ZADIsgi/Wad6ZM/DMc8FD1YZGwvDZv0imDuDBRwYbXfTQ3uV07x/FZ
	KJyf4vJqxmEWYzLOGVFSettTVUfq8TEfkIRR0XwjcitH/mNvi/HxP87qGyNuGgb0AF2zZYYKuUtOS
	apQAG8zPr4elCchRAUyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXlhg-002oCO-55; Thu, 02 Mar 2023 16:22:48 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXlhd-002oBa-II
	for linux-rockchip@lists.infradead.org; Thu, 02 Mar 2023 16:22:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8B030615C2;
	Thu,  2 Mar 2023 16:22:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6C74C4339C;
	Thu,  2 Mar 2023 16:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677774162;
	bh=8RXUV8bd1LKlHKCGBBvoZ3gMwk6ETdCYY1KHqKNMpKk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K8aKIlEZp/WmC3zFv+2wqFi0PHKtUsQ4ZZT/gmQY260fDwGApk9Lvkl2D03YVyidh
	 T7s6RqcWFpX/N+f0w8SOfx1JQtpfBHSJvykzhqDHFbXniVl+7F6otDdELNN9twXnsC
	 5iBSiiQglgd/OyHmorZR+Yfx2nmTlIZneZqU4JmbGzbvt9p5uoEcPSbrclarVwqL/D
	 B7XmbqH7uDTMbXsPNmy97MifstVb1f1bRuU8ROiDnlIOiZq8gr88izKt4Q6ZEDcHsh
	 WKwFDSsmvuksE0f/dSWH4PnnTa5+FIE+r3Yb5cphdyc1Ln9kqKvC1Y9QvwQHznXF61
	 BKij30H12FbUA==
Date: Thu, 2 Mar 2023 16:22:35 +0000
From: Lee Jones <lee@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	shengfei Xu <xsf@rock-chips.com>
Subject: Re: [PATCHv6 09/11] pinctrl: rk805: add rk806 pinctrl support
Message-ID: <ZADNS9dqqbBE9Ohb@google.com>
References: <20230127181244.160887-1-sebastian.reichel@collabora.com>
 <20230127181244.160887-10-sebastian.reichel@collabora.com>
 <CACRpkdbQfaCX=ZbFQh3p_T3biWEex-QZofXTrbVKd5hYOzMAug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdbQfaCX=ZbFQh3p_T3biWEex-QZofXTrbVKd5hYOzMAug@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_082245_680627_0682CA96 
X-CRM114-Status: GOOD (  16.51  )
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

T24gTW9uLCAzMCBKYW4gMjAyMywgTGludXMgV2FsbGVpaiB3cm90ZToKCj4gT24gRnJpLCBKYW4g
MjcsIDIwMjMgYXQgNzoxMyBQTSBTZWJhc3RpYW4gUmVpY2hlbAo+IDxzZWJhc3RpYW4ucmVpY2hl
bEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPiAKPiA+IEFkZCBzdXBwb3J0IGZvciByazgwNiBkdnMg
cGluY3RybCB0byB0aGUgZXhpc3Rpbmcgcms4MDUKPiA+IGRyaXZlci4KPiA+Cj4gPiBUaGlzIGhh
cyBiZWVuIGltcGxlbWVudGVkIHVzaW5nIHNoZW5nZmVpIFh1J3Mgcms4MDYKPiA+IHNwZWNpZmlj
IGRyaXZlciBmcm9tIHRoZSB2ZW5kb3IgdHJlZSBhcyByZWZlcmVuY2UuCj4gPgo+ID4gQ28tRGV2
ZWxvcGVkLWJ5OiBzaGVuZ2ZlaSBYdSA8eHNmQHJvY2stY2hpcHMuY29tPgo+ID4gU2lnbmVkLW9m
Zi1ieTogc2hlbmdmZWkgWHUgPHhzZkByb2NrLWNoaXBzLmNvbT4KPiA+IFJldmlld2VkLWJ5OiBM
aW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Cj4gPiBTaWduZWQtb2ZmLWJ5
OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiAK
PiBJcyB0aGlzIHNvbWV0aGluZyBJIGNhbiBqdXN0IGFwcGx5PyBJIGhhdmVuJ3QgaGFkIEhlaWtv
J3MgcmV2aWV3Cj4gb24gaXQgYnV0IGl0IGxvb2tzIGlubm9jZW50IGVub3VnaC4KCkFjayBwbGVh
c2UuIDopCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
