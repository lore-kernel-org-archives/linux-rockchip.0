Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C424C76196
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 19:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JY/Btz3w3N95ytY3XRKQQgxhnqjnWilvbhKCGISq71U=; b=wuQ0ZjZUB7VYIM
	AoKSeJSjGsZSrFnLiVTKQo/0DNUMcmQQMSjrgUFw0e1IW3HSqG1U8TXqXVJMjwJOkInoHulOBm332
	9MYoJUWQx3nIKvtdqCkIeIlPS2vwdSoZLA44TJ9EYXMvgBhXyhXa076d263dILnB75cbm8a9r7TKJ
	aDIkoBhoj54YaD3grH9XHBp4sTKOTHxV6mlt8UrvjLEJSKXd1Kc0yuWg4NRmMWmXlyBWQLGFzvkzL
	thKafmVtbPpO9flZWmwcoNZGZ2dtyZPgr6erVcB8dDsbsBVue0/zsqoep5Dp3a9r8YH9F3UQmN2TB
	JmGY+JaJ9kyOYWNJ1Mzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjPnV-00GNrj-2A;
	Mon, 03 Apr 2023 19:24:57 +0000
Received: from lahtoruutu.iki.fi ([185.185.170.37])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjPnQ-00GNoP-1m;
	Mon, 03 Apr 2023 19:24:54 +0000
Received: from hillosipuli.retiisi.eu (dkzcv-3yyyyyyyyyyyyyt-3.rev.dnainternet.fi [IPv6:2001:14ba:4505:1fdc::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sailus)
	by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 4Pr16v6hS3z49Q0d;
	Mon,  3 Apr 2023 22:24:39 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu;
	t=1680549885;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Tp5qcqPaxivMIuFMRKaAe5HT8V/qPK5f6UKZnTDqXZs=;
	b=wj8iMdaB6O5svgBz97QcbFfxl9pOUa1PNhWR6/nMI8DJ/TlBNBIzxaoXQ4xFtAVcllZBGn
	1h11XWEmzs+t+7S8wZmoH14Ni8IZIiAbMuwhBvBpaZQSxGqHI3PBS4/eRQdeOwpNSUUZ4Q
	9oD4KR5OR/7ixTFuQJjiBae6kKroRXjgsr1oQ1YHFdRtSRUWdkyXT6ydrbBKs2fI2Nf6at
	KgPm5BT3ib2zzo+p3tbEYZMZCdzbPUGlXdxIKRq6Wl3LoBqS5w7Tcdh9ze+jq4BX8ZDee1
	E31/c03A+3U1KSnRAQJPWWdm9O+j4FuxlElRkzejBkCFdfXldIoFoa2cL7+rAQ==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1680549885; a=rsa-sha256;
	cv=none;
	b=pTLkgQTxUMn8kAT5W3Z+ogFont60P6E8KePKCXivg0tBgmGITjjXMVNgPLPZmGVszTwkb9
	8xmV8K+JZuzm7F5CFJy//1r6ial5+VTAqVELsLbmuuAMfOY1FbI3yDkl8ZCGK0ToM5mF6F
	iXE23DARwHLsLEzlUBnPniLP4sabKK6I8VHkzWvPos67ec7cBwbNsoN6VKbLTay13Lx0Te
	srYyEk9eLJ72MlypaetY0e3iRJp+oyVh9XtQdLwdV+Gk7bvcCtArTcbo8tYuuL7peYlIWK
	3MAa6H4E+TVhwLzsPEbZwvIuhCayXj1Up3OmaEuUmeKIlKMxGrnJHjS1tylKqw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sailus smtp.mailfrom=sakari.ailus@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=lahtoruutu; t=1680549885;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Tp5qcqPaxivMIuFMRKaAe5HT8V/qPK5f6UKZnTDqXZs=;
	b=nDY5LUXsU7qY8CejlN+YlEuCBrJE/yaOwuV73ThTDfxvd8Q/gVoeJnKw2jhXh4fy8A7SPX
	04/1VA27KvucaNF6obkcJs2PPrdTE0lqb28f0pJOkLQXoIeseCKj3IvDUyXnBCVMbpl03s
	yasLIby0zyRIhZg4rK6kfJ04rUVkkEFvNGm5TZYXULNkyhoQREHpmP/LL8JdsOm0Nmc2LH
	0bmnev2mHgSMrVvTzXkiub2kKx9ZZcsn7/QC6F+28qWZ7KKjWBErPDIXmgXOy47iBBRRO6
	0ZiawUTptzsFdcFQ0UPZ510Z4RUtHySIcAMki/r3tFx2/Ka+zwbnh9UJRyw49Q==
Received: from valkosipuli.retiisi.eu (valkosipuli.localdomain [192.168.4.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by hillosipuli.retiisi.eu (Postfix) with ESMTPS id 4C2E2634C91;
	Mon,  3 Apr 2023 22:22:09 +0300 (EEST)
Date: Mon, 3 Apr 2023 22:22:08 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>
Cc: Rob Herring <robh@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Joe Tessler <jrt@google.com>,
	Dongchun Zhu <dongchun.zhu@mediatek.com>,
	Jacopo Mondi <jacopo+renesas@jmondi.org>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Tiffany Lin <tiffany.lin@mediatek.com>,
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Yunfei Dong <yunfei.dong@mediatek.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vikash Garodia <quic_vgarodia@quicinc.com>,
	Heiko Stuebner <heiko@sntech.de>, Benoit Parrot <bparrot@ti.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH] media: dt-bindings: Drop unneeded quotes
Message-ID: <ZCsnYGMkV2Zrw3fJ@valkosipuli.retiisi.eu>
References: <20230320233944.2920964-1-robh@kernel.org>
 <ZCaoVwRuxVOTZdI4@valkosipuli.retiisi.eu>
 <36febd82-85b2-aa4d-c7e0-6343b119e0cc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <36febd82-85b2-aa4d-c7e0-6343b119e0cc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_122452_763035_867F05C5 
X-CRM114-Status: GOOD (  18.35  )
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

SGkgU3RhbiwKCkhvdyBhcmUgeW91IGRvaW5nPwoKT24gTW9uLCBBcHIgMDMsIDIwMjMgYXQgMDg6
MjY6MjhQTSArMDMwMCwgU3RhbmltaXIgVmFyYmFub3Ygd3JvdGU6Cj4gSGVpIFNha2FyaSwKPiAK
PiBPbiAzMS4wMy4yMyDQsy4gMTI6MzEg0YcuLCBTYWthcmkgQWlsdXMgd3JvdGU6Cj4gPiBIaSBS
b2IsCj4gPiAKPiA+IE9uIE1vbiwgTWFyIDIwLCAyMDIzIGF0IDA2OjM5OjQyUE0gLTA1MDAsIFJv
YiBIZXJyaW5nIHdyb3RlOgo+ID4gPiBDbGVhbnVwIGJpbmRpbmdzIGRyb3BwaW5nIHVubmVlZGVk
IHF1b3Rlcy4gT25jZSBhbGwgdGhlc2UgYXJlIGZpeGVkLAo+ID4gPiBjaGVja2luZyBmb3IgdGhp
cyBjYW4gYmUgZW5hYmxlZCBpbiB5YW1sbGludC4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6
IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gPiAKPiA+IFRoaXMgcGF0Y2ggY29udGFp
bnMgY2hhbmdlcyB0byBRdWFsY29tbSBiaW5kaW5ncyB0aGF0IGhhdmUgYmVlbiBhbHJlYWR5Cj4g
PiBtYWRlIGJ5IG90aGVyIHBhdGNoZXMgYnkgS3J6eXN6dG9mLiBJIHRoaW5rIHRoZXNlIHRvb2sg
c29tZSB0aW1lIHRvIGdldAo+ID4gbWVyZ2VkIHRvIHRoZSBtZWRpYSB0cmVlLgo+ID4gCj4gPiBJ
J3ZlIGRyb3BwZWQgdGhvc2UsIHRoZSByZXN1bHQgaXMgaGVyZToKPiA+IAo+ID4gPFVSTDpodHRw
czovL2dpdC5saW51eHR2Lm9yZy9zYWlsdXMvbWVkaWFfdHJlZS5naXQvY29tbWl0Lz9pZD1kNzVj
YWUwODg0ZTgwYmJhNDg2Zjg1ZTgyYjMzYTFkYWUzYzljOTc2Pgo+ID4gCj4gCj4gRG8geW91IHRo
aW5rIGl0IHdpbGwgZml4IHRoaXMgcHVsbCByZXF1ZXN0IGZhaWx1cmU/Cj4gCj4gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsLzIwMjMwMzI5MjE0MzEwLjI1MDM0ODQtMS1qZW5raW5zQGxpbnV4
dHYub3JnLwoKQWgsIGl0IHNlZW1zIHRvIGJlIHRoZSBzYW1lIGlzc3VlIGhlcmUuCgpUaGUgcGF0
Y2ggaGFzIGJlZW4gbWVyZ2VkIHZpYSBteSB0cmVlLCB3aGVyZWFzIHRoZSByZXN0IG9mIHRoZSBw
YXRjaHNldCB3YXMKYXBwYXJlbnRseSBtZXJnZWQgYnkgSGFucyBlYXJsaWVyIG9uLgoKPFVSTDpo
dHRwczovL3BhdGNod29yay5saW51eHR2Lm9yZy9wcm9qZWN0L2xpbnV4LW1lZGlhL2xpc3QvP3Nl
cmllcz05NTMxJnN1Ym1pdHRlcj0mc3RhdGU9KiZxPSZhcmNoaXZlPSZkZWxlZ2F0ZT0+CgotLSAK
S2luZCByZWdhcmRzLAoKU2FrYXJpIEFpbHVzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
