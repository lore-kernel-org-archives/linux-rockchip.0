Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CAF9C44514
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 07:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmRPHKtOV/h0yv009Tucct+Y0CyGzq2e5yMjJG/24Ko=; b=tkFNMRM9TS8HNx
	6tJ6OP356mXaYwBHsBuwLI/tVhnqOTg8s2w5V20YzPMJ4CiEjobTiIdFRwZzdxR66WDtZoR6HsBKV
	4zHZ13MwfM6ubROcDuj5iLKKnzRcNtTfcE6pkwMLHTlOEXrupzx+hx1yn/otnsSS7vwrbshYv0twW
	YCCTte5N+tvtNXwrQDO46NB0a324n/gfji/S52Z7TqSyf/TvkxTYNFq/H68mjfAMmSn31q/8374nF
	8uCdBXLIDZrGG4UyCQYUIJAlNWUNiJuGyrFyDAEDxvKlFLWLWFQw1dFGPQgRKQDyIuDgPVfx+CqS7
	GWAI4DYKHPTsj6cRjVPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkd8i-00000001Tls-1xck;
	Fri, 17 Jul 2026 07:37:44 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkd8e-00000001Tk9-01xS;
	Fri, 17 Jul 2026 07:37:42 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id D5F761A103B;
	Fri, 17 Jul 2026 07:37:34 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 943D660361;
	Fri, 17 Jul 2026 07:37:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id DC0A611BD3D44;
	Fri, 17 Jul 2026 09:37:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1784273852; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Cdb0RCCdG1Y5r/It8CwrJzVJ0JbWRfQ0sD99bdj9c+M=;
	b=kon2YfH/dOK4tDt53OBaDo5FFMl+LDNwDVUop5ds1NRI/Wg1uSfOdRPoX//xppPkYw4F4k
	i7WIsxXBl1un2FVxbtH0z+MNg/Pxf/kDZFkkmQMF7GWX2KDvfCGfcNPlsGE/XeWd6UWU5+
	GU0KvK2Qz5NhcKTqLYeMaoODnDSsLW8zaf8j7HAZsl2HX2a+q1UNwnNfj8/t2YSHY0CoOJ
	iuHvYWwy+oF8TF5SvX8WUIAoCWzZZkD3fHymApMwuHuo/Ci0SwMn3oduihoRjpk8TrJJuw
	dKfxpFRA4xRbQoh0VoLeExcl0443IzDaZd45c4NSu8UobUALaKN9EhlqiiNUTA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Pan Chuang <panchuang@vivo.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,  Daniel Lezcano
 <daniel.lezcano@kernel.org>,  Zhang Rui <rui.zhang@intel.com>,  Lukasz
 Luba <lukasz.luba@arm.com>,  Markus Mayer <mmayer@broadcom.com>,  Broadcom
 internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
  Florian Fainelli <florian.fainelli@broadcom.com>,  Frank Li
 <Frank.Li@nxp.com>,  Sascha Hauer <s.hauer@pengutronix.de>,  Pengutronix
 Kernel Team <kernel@pengutronix.de>,  Fabio Estevam <festevam@gmail.com>,
  zhanghongchen <zhanghongchen@loongson.cn>,  Yinbo Zhu
 <zhuyinbo@loongson.cn>,  Amit Kucheria <amitk@kernel.org>,  Thara Gopinath
 <thara.gopinath@gmail.com>,  Niklas =?utf-8?Q?S=C3=B6derlund?=
 <niklas.soderlund@ragnatech.se>,  Geert Uytterhoeven
 <geert+renesas@glider.be>,  Magnus Damm <magnus.damm@gmail.com>,  John
 Madieu <john.madieu.xa@bp.renesas.com>,  Heiko Stuebner <heiko@sntech.de>,
  Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>,  Krzysztof Kozlowski
 <krzk@kernel.org>,  Peter Griffin <peter.griffin@linaro.org>,  Alim Akhtar
 <alim.akhtar@samsung.com>,  Maxime Coquelin <mcoquelin.stm32@gmail.com>,
  Alexandre Torgue <alexandre.torgue@foss.st.com>,  Thierry Reding
 <thierry.reding@kernel.org>,  Jonathan Hunter <jonathanh@nvidia.com>,
  Matthias Brugger <matthias.bgg@gmail.com>,  AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>,  Srinivas Pandruvada
 <srinivas.pandruvada@linux.intel.com>,  Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>,  Laura Nao <laura.nao@collabora.com>,
  Fei Shao <fshao@chromium.org>,  Chen-Yu Tsai <wenst@chromium.org>,
  Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,  Frank Wunderlich
 <frank-w@public-files.de>,  Mikko Perttunen <mperttunen@nvidia.com>,
  Svyatoslav Ryhel <clamor95@gmail.com>,  linux-pm@vger.kernel.org (open
 list:THERMAL),  linux-kernel@vger.kernel.org (open list),
  linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM7XXX ARM
 ARCHITECTURE),  imx@lists.linux.dev (open list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE),  linux-arm-msm@vger.kernel.org (open list:ARM/QUALCOMM
 MAILING LIST),  linux-renesas-soc@vger.kernel.org (open list:RENESAS R-CAR
 THERMAL DRIVERS),  linux-rockchip@lists.infradead.org (open
 list:ARM/Rockchip SoC support),  linux-samsung-soc@vger.kernel.org (open
 list:SAMSUNG THERMAL DRIVER),  linux-stm32@st-md-mailman.stormreply.com
 (moderated list:ARM/STM32 ARCHITECTURE),  linux-tegra@vger.kernel.org
 (open list:TEGRA ARCHITECTURE SUPPORT),
  linux-mediatek@lists.infradead.org (moderated list:ARM/Mediatek SoC
 support:Keyword:mediatek),  Niklas S?derlund
 <niklas.soderlund+renesas@ragnatech.se>
Subject: Re: [PATCH v2] thermal/drivers: Remove redundant error messages on
 IRQ request failure
In-Reply-To: <20260717024733.374913-1-panchuang@vivo.com> (Pan Chuang's
	message of "Fri, 17 Jul 2026 10:47:10 +0800")
References: <20260717024733.374913-1-panchuang@vivo.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Fri, 17 Jul 2026 09:37:18 +0200
Message-ID: <87v7aekqxd.fsf@bootlin.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_003740_173759_DA384F3D 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
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

T24gMTcvMDcvMjAyNiBhdCAxMDo0NzoxMCArMDgsIFBhbiBDaHVhbmcgPHBhbmNodWFuZ0B2aXZv
LmNvbT4gd3JvdGU6Cgo+IFNpbmNlIGNvbW1pdCA1NWI0OGUyM2Y1YzQgKCJnZW5pcnEvZGV2cmVz
OiBBZGQgZXJyb3IgaGFuZGxpbmcgaW4KPiBkZXZtX3JlcXVlc3RfKl9pcnEoKSIpLCBkZXZtX3Jl
cXVlc3RfaXJxKCkgYW5kIGRldm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoKQo+IGF1dG9tYXRpY2Fs
bHkgbG9nIGRldGFpbGVkIGVycm9yIG1lc3NhZ2VzIG9uIGZhaWx1cmUuIFJlbW92ZSB0aGUKPiBu
b3ctcmVkdW5kYW50IGRyaXZlci1zcGVjaWZpYyBkZXZfZXJyKCkgYW5kIGRldl9lcnJfcHJvYmUo
KSBjYWxscy4KPgo+IFNpZ25lZC1vZmYtYnk6IFBhbiBDaHVhbmcgPHBhbmNodWFuZ0B2aXZvLmNv
bT4KPiBSZXZpZXdlZC1ieTogRnJhbmsgTGkgPEZyYW5rLkxpQG54cC5jb20+Cj4gUmV2aWV3ZWQt
Ynk6IEFuZHkgU2hldmNoZW5rbyA8YW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwuY29tPgo+
IFJldmlld2VkLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJl
Pgo+IFJldmlld2VkLWJ5OiBOaWtsYXMgUz9kZXJsdW5kIDxuaWtsYXMuc29kZXJsdW5kK3JlbmVz
YXNAcmFnbmF0ZWNoLnNlPgoKICAgICAgICAgICAgICAgICAgICAgICBeClRoZXJlIGlzIGFuIGVu
Y29kaW5nIGlzc3VlIGhlcmUKCj4gIGRyaXZlcnMvdGhlcm1hbC9hcm1hZGFfdGhlcm1hbC5jICAg
ICAgICAgICAgICAgICAgICAgICAgICB8IDUgKy0tLS0KClJldmlld2VkLWJ5OiBNaXF1ZWwgUmF5
bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgoKVGhhbmtzLApNaXF1w6hsCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
