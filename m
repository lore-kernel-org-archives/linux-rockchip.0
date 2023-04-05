Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD9EDC7619A
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Apr 2023 13:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uysg24Zrl06F9UbK9PMOdmV4Z537FaZ8EOpybOuJ9l0=; b=f9LH1quXAbXGuF
	HfhxbPL97GK9TEND49hS0Ca/nViuF72kFvFwuCJ0K9Zyv+vDK/s9ipAjSfLv//QK77zQIcrDtKqmK
	f1yRAgeYPnkFMgBo87yPD0lsk8Q9kNd2g0QoDmPvtJGV0tUFu4TfTXbamsTJp19ylPu6ooRJrbTR6
	TP7GuE2KgIMnmFbwRP7F5m0/BNcyIy3/7sF/a47l6pAst4MRSSzEAkP+MmIoh535QYg+I9VRjJbJK
	Gvquor8cfJJghnVuEvxUdI31G0nG54TX7wRZvjdVJK1TH1rPsDuhO9Oj5OkpXwzo5cGcwSl1h2s4K
	cekJFWEYhwbQQewRCULQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2mE-004SqJ-17;
	Wed, 05 Apr 2023 13:02:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2m9-004Sow-2E;
	Wed, 05 Apr 2023 13:02:10 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pk2lE-0006xn-Nr; Wed, 05 Apr 2023 15:01:12 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>,
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Orson Zhai <orsonzhai@gmail.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Vincent Shih <vincent.sunplus@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Evgeniy Polyakov <zbr@ioremap.net>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-sunxi@lists.linux.dev, linux-rtc@vger.kernel.org,
 Michael Walle <michael@walle.cc>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject:  Re: [PATCH V4] nvmem: add explicit config option to read old syntax fixed OF
 cells
Date: Wed, 05 Apr 2023 15:01:10 +0200
Message-ID: <4767237.ejJDZkT8p0@diego>
In-Reply-To: <20230403225540.1931-1-zajec5@gmail.com>
References: <20230403225540.1931-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_060209_746537_D9CE8E2C 
X-CRM114-Status: GOOD (  18.74  )
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

QW0gRGllbnN0YWcsIDQuIEFwcmlsIDIwMjMsIDAwOjU1OjQwIENFU1Qgc2NocmllYiBSYWZhxYIg
TWnFgmVja2k6Cj4gRnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IAo+
IEJpbmRpbmcgZm9yIGZpeGVkIE5WTUVNIGNlbGxzIGRlZmluZWQgZGlyZWN0bHkgYXMgTlZNRU0g
ZGV2aWNlIHN1Ym5vZGVzCj4gaGFzIGJlZW4gZGVwcmVjYXRlZC4gSXQgaGFzIGJlZW4gcmVwbGFj
ZWQgYnkgdGhlICJmaXhlZC1sYXlvdXQiIE5WTUVNCj4gbGF5b3V0IGJpbmRpbmcuCj4gCj4gTmV3
IHN5bnRheCBpcyBtZWFudCB0byBiZSBjbGVhcmVyIGFuZCBzaG91bGQgaGVscCBhdm9pZGluZyBp
bXByZWNpc2UKPiBiaW5kaW5ncy4KPiAKPiBOVk1FTSBzdWJzeXN0ZW0gYWxyZWFkeSBzdXBwb3J0
cyB0aGUgbmV3IGJpbmRpbmcuIEl0IHNob3VsZCBiZSBhIGdvb2QKPiBpZGVhIHRvIGxpbWl0IHN1
cHBvcnQgZm9yIG9sZCBzeW50YXggdG8gZXhpc3RpbmcgZHJpdmVycyB0aGF0IGFjdHVhbGx5Cj4g
c3VwcG9ydCAmIHVzZSBpdCAod2UgY2FuJ3QgYnJlYWsgYmFja3dhcmQgY29tcGF0aWJpbGl0eSEp
LiBUaGF0IHdheSB3ZQo+IGFkZGl0aW9uYWxseSBlbmNvdXJhZ2UgbmV3IGJpbmRpbmdzICYgZHJp
dmVycyB0byBpZ25vcmUgZGVwcmVjYXRlZAo+IGJpbmRpbmcuCj4gCj4gSXQgd2Fzbid0IGNsZWFy
ICh0byBtZSkgaWYgcnRjIGFuZCB3MSBjb2RlIGFjdHVhbGx5IHVzZXMgb2xkIHN5bnRheAo+IGZp
eGVkIGNlbGxzLiBJIGVuYWJsZWQgdGhlbSB0byBkb24ndCByaXNrIGFueSBicmVha2FnZS4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4gW2Zv
ciBtZXNvbi17ZWZ1c2UsbXgtZWZ1c2V9LmNdCj4gQWNrZWQtYnk6IE1hcnRpbiBCbHVtZW5zdGlu
Z2wgPG1hcnRpbi5ibHVtZW5zdGluZ2xAZ29vZ2xlbWFpbC5jb20+Cj4gW2ZvciBtdGstZWZ1c2Uu
YywgbnZtZW0vY29yZS5jLCBudm1lbS1wcm92aWRlci5oXQo+IFJldmlld2VkLWJ5OiBBbmdlbG9H
aW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEu
Y29tPgo+IFtNVDgxOTIsIE1UODE5NSBDaHJvbWVib29rc10KPiBUZXN0ZWQtYnk6IEFuZ2Vsb0dp
b2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5j
b20+Cj4gW2ZvciBtaWNyb2NoaXAtb3RwYy5jXQo+IFJldmlld2VkLWJ5OiBDbGF1ZGl1IEJlem5l
YSA8Y2xhdWRpdS5iZXpuZWFAbWljcm9jaGlwLmNvbT4KPiBbU0FNQTdHNS1FS10KPiBUZXN0ZWQt
Ynk6IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYUBtaWNyb2NoaXAuY29tPgoKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9udm1lbS9yb2NrY2hpcC1lZnVzZS5jIGIvZHJpdmVycy9udm1lbS9y
b2NrY2hpcC1lZnVzZS5jCj4gaW5kZXggZTQ1NzlkZTVkMDE0Li5hZGM4YmM3MGNmZmEgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9udm1lbS9yb2NrY2hpcC1lZnVzZS5jCj4gKysrIGIvZHJpdmVycy9u
dm1lbS9yb2NrY2hpcC1lZnVzZS5jCj4gQEAgLTIwNSw2ICsyMDUsNyBAQCBzdGF0aWMgaW50IHJv
Y2tjaGlwX3JrMzM5OV9lZnVzZV9yZWFkKHZvaWQgKmNvbnRleHQsIHVuc2lnbmVkIGludCBvZmZz
ZXQsCj4gIAo+ICBzdGF0aWMgc3RydWN0IG52bWVtX2NvbmZpZyBlY29uZmlnID0gewo+ICAJLm5h
bWUgPSAicm9ja2NoaXAtZWZ1c2UiLAo+ICsJLmFkZF9sZWdhY3lfZml4ZWRfb2ZfY2VsbHMgPSB0
cnVlLAo+ICAJLnN0cmlkZSA9IDEsCj4gIAkud29yZF9zaXplID0gMSwKPiAgCS5yZWFkX29ubHkg
PSB0cnVlLAoKZm9yIHJvY2tjaGlwLWVmdXNlLmMKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVy
IDxoZWlrb0BzbnRlY2guZGU+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
