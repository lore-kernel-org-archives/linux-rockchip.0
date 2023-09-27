Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1F77E82CCC
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Sep 2023 19:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A36o5Ly2Khvk+XErD08seIveHcBTHcdomJKW+gr/jWQ=; b=e/Jse0htNtsgZZ
	l/7HcOymCq/SFIJb+h4MoP6NITq5a/qFuYlsosk8VRe389Fjldb0OwpiyPV//S2q57JZMhMRchIMO
	gEvQ7mVdNUmrpldcv7Yfnik0GrfUjCH1mWqGcA/xeJDoYmT9Qt5VhbPQPuj5jiu9HlZRCy9bK8cy1
	HWblIheKU58ckXrK8zEahyH114knwrb2sY+wrEJwa3YxRfNtpIWknku+gX7QGy+N36lnRM73NlFIF
	zdwn+ZFb9wrdMiHaCKypftBL9pW4dfhZWVyt56wHAzeMVfSokAjzzlptcDtNN1ACZLiGhkUHURW8+
	WI6zJBd4zjmgrG1U+Nhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlaMm-001ffS-0D;
	Wed, 27 Sep 2023 19:38:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlaMP-001fQm-2R
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Sep 2023 19:38:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qlaLy-00026g-2W; Wed, 27 Sep 2023 21:37:46 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qlaLs-009PZ9-LJ; Wed, 27 Sep 2023 21:37:40 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qlaLs-005RfL-9X; Wed, 27 Sep 2023 21:37:40 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Guillaume La Roque <glaroque@baylibre.com>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	linux-pm@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	kernel@pengutronix.de,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	=?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Heiko Stuebner <heiko@sntech.de>,
	ye xingchen <ye.xingchen@zte.com.cn>,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Balsam CHIHI <bchihi@baylibre.com>,
	Adam Ward <DLG-Adam.Ward.opensource@dm.renesas.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Support Opensource <support.opensource@diasemi.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
	Yang Yingliang <yangyingliang@huawei.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	=?utf-8?b?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>,
	Alexandre Mergnat <amergnat@baylibre.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Chen Jiahao <chenjiahao16@huawei.com>,
	linux-mediatek@lists.infradead.org,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	=?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-samsung-soc@vger.kernel.org,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Minghao Chi <chi.minghao@zte.com.cn>,
	linux-stm32@st-md-mailman.stormreply.com,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-tegra@vger.kernel.org,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Eduardo Valentin <edubezval@gmail.com>,
	Keerthy <j-keerthy@ti.com>,
	linux-omap@vger.kernel.org,
	Masami Hiramatsu <mhiramat@kernel.org>
Subject: [PATCH 00/31] thermal: Convert to platform remove callback returning void
Date: Wed, 27 Sep 2023 21:37:05 +0200
Message-Id: <20230927193736.2236447-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5170; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=2L69+4GE6Q2OL+RVVKSxPv+do5u2Ko5kq68QSNMRgfA=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlFIRZWCqRy7l7yarbl47C5yOf60xNKfQ07iYJW A/EEIHW5MqJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZRSEWQAKCRCPgPtYfRL+ Tu/sB/9Fn3Qg/Pk83TcfVVbu0SeXU/QOP+wQUG8fohOU85pUfxYkY2y+BVYOyX888wGbpmejtdt gW91oAV/dzkhd4Wr86G902HZjFECPbFhgFmENf63i4l4QNzQ8C6SLHeMWu7lKqGRrZF7ZGaGfWR IfLabFwqVCWBSyzWkwWFHFNYfMPAK60prZP+DNUDxK4NrGyRl7ExVV8C0C9zZorPoQ9B/Zn/ljw gidyl7KiLovd01L3cZgFeEQp8wKCgh5hqnCBvL+ze8e51hLIpYH8VnRjGOdMOPeeBbWlYUzK0Mo xhWkvBmAo5OvZftn9CDCw3HOp2YACajk8dVDXk/5/gIaMV0F
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230927_123813_960549_CDC0E76E 
X-CRM114-Status: GOOD (  11.54  )
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

SGVsbG8sCgp0aGlzIHNlcmllcyBjb252ZXJ0cyBhbGwgcGxhdGZvcm0gZHJpdmVycyBiZWxvdyBk
cml2ZXJzL3RoZXJtYWwgdG8gdXNlCi5yZW1vdmVfbmV3KCkuIFRoZSBtb3RpdmF0aW9uIGlzIHRv
IGdldCByaWQgb2YgYW4gaW50ZWdlciByZXR1cm4gY29kZQp0aGF0IGlzIChtb3N0bHkpIGlnbm9y
ZWQgYnkgdGhlIHBsYXRmb3JtIGRyaXZlciBjb3JlIGFuZCBlcnJvciBwcm9uZSBvbgp0aGUgZHJp
dmVyIHNpZGUuCgpTZWUgY29tbWl0IDVjNWE3NjgwZTY3YiAoInBsYXRmb3JtOiBQcm92aWRlIGEg
cmVtb3ZlIGNhbGxiYWNrIHRoYXQKcmV0dXJucyBubyB2YWx1ZSIpIGZvciBhbiBleHRlbmRlZCBl
eHBsYW5hdGlvbiBhbmQgdGhlIGV2ZW50dWFsIGdvYWwuCgpUaGVyZSBhcmUgbm8gaW50ZXJkZXBl
bmRlbmNpZXMgYmV0d2VlbiB0aGUgcGF0Y2hlcy4gQXMgdGhlcmUgYXJlIHN0aWxsCnF1aXRlIGEg
ZmV3IGRyaXZlcnMgdG8gY29udmVydCwgSSdtIGhhcHB5IGFib3V0IGV2ZXJ5IHBhdGNoIHRoYXQg
bWFrZXMKaXQgaW4uIFNvIGV2ZW4gaWYgdGhlcmUgaXMgYSBtZXJnZSBjb25mbGljdCB3aXRoIG9u
ZSBwYXRjaCB1bnRpbCB5b3UKYXBwbHkgb3IgYSBzdWJqZWN0IHByZWZpeCBpcyBzdWJvcHRpbWFs
LCBwbGVhc2UgYXBwbHkgdGhlIHJlbWFpbmRlciBvZgp0aGlzIHNlcmllcyBhbnlob3cuCgpCZXN0
IHJlZ2FyZHMKVXdlCgpVd2UgS2xlaW5lLUvDtm5pZyAoMzEpOgogIHRoZXJtYWw6IGFtbG9naWM6
IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAgdGhl
cm1hbDogYXJtYWRhOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5p
bmcgdm9pZAogIHRoZXJtYWw6IGJjbTI4MzU6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNh
bGxiYWNrIHJldHVybmluZyB2b2lkCiAgdGhlcm1hbDogbnM6IENvbnZlcnQgdG8gcGxhdGZvcm0g
cmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAgdGhlcm1hbDogZGE5MDYyOiBDb252ZXJ0
IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAogIHRoZXJtYWw6IGRv
dmU6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAg
dGhlcm1hbDogaGlzaTogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJu
aW5nIHZvaWQKICB0aGVybWFsOiBpbXg4bW06IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNh
bGxiYWNrIHJldHVybmluZyB2b2lkCiAgdGhlcm1hbDogaW14OiBDb252ZXJ0IHRvIHBsYXRmb3Jt
IHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAogIHRoZXJtYWw6IGludDM0MDA6IENvbnZl
cnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAgdGhlcm1hbDog
aW50MzQwMTogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZv
aWQKICB0aGVybWFsOiBpbnQzNDAyOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFj
ayByZXR1cm5pbmcgdm9pZAogIHRoZXJtYWw6IGludDM0MDM6IENvbnZlcnQgdG8gcGxhdGZvcm0g
cmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAgdGhlcm1hbDogaW50MzQwNjogQ29udmVy
dCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICB0aGVybWFsOiBr
M19iYW5kZ2FwOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcg
dm9pZAogIHRoZXJtYWw6IGszX2o3Mnh4X2JhbmRnYXA6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVt
b3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAgdGhlcm1hbDoga2lya3dvb2Q6IENvbnZlcnQg
dG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAgdGhlcm1hbDogbHZ0
czogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICB0
aGVybWFsOiB0c2VuczogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJu
aW5nIHZvaWQKICB0aGVybWFsOiByY2FyX2dlbjM6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3Zl
IGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAgdGhlcm1hbDogcmNhcjogQ29udmVydCB0byBwbGF0
Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICB0aGVybWFsOiByb2NrY2hpcDog
Q29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICB0aGVy
bWFsOiByemcybDogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5n
IHZvaWQKICB0aGVybWFsOiBleHlub3NfdG11OiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBj
YWxsYmFjayByZXR1cm5pbmcgdm9pZAogIHRoZXJtYWw6IHNwZWFyOiBDb252ZXJ0IHRvIHBsYXRm
b3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAogIHRoZXJtYWw6IHNwcmQ6IENvbnZl
cnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAgdGhlcm1hbDog
c3RtOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAog
IHRoZXJtYWw6IHNvY3RoZXJtOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayBy
ZXR1cm5pbmcgdm9pZAogIHRoZXJtYWw6IHRlZ3JhLWJwbXA6IENvbnZlcnQgdG8gcGxhdGZvcm0g
cmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAgdGhlcm1hbDogdGktYmFuZGdhcDogQ29u
dmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICB0aGVybWFs
OiB1bmlwaGllcjogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5n
IHZvaWQKCiBkcml2ZXJzL3RoZXJtYWwvYW1sb2dpY190aGVybWFsLmMgICAgICAgICAgICAgICAg
ICAgIHwgMTIgKysrKystLS0tLS0tCiBkcml2ZXJzL3RoZXJtYWwvYXJtYWRhX3RoZXJtYWwuYyAg
ICAgICAgICAgICAgICAgICAgIHwgIDYgKystLS0tCiBkcml2ZXJzL3RoZXJtYWwvYnJvYWRjb20v
YmNtMjgzNV90aGVybWFsLmMgICAgICAgICAgIHwgIDYgKystLS0tCiBkcml2ZXJzL3RoZXJtYWwv
YnJvYWRjb20vbnMtdGhlcm1hbC5jICAgICAgICAgICAgICAgIHwgIDYgKystLS0tCiBkcml2ZXJz
L3RoZXJtYWwvZGE5MDYyLXRoZXJtYWwuYyAgICAgICAgICAgICAgICAgICAgIHwgIDUgKystLS0K
IGRyaXZlcnMvdGhlcm1hbC9kb3ZlX3RoZXJtYWwuYyAgICAgICAgICAgICAgICAgICAgICAgfCAg
NiArKy0tLS0KIGRyaXZlcnMvdGhlcm1hbC9oaXNpX3RoZXJtYWwuYyAgICAgICAgICAgICAgICAg
ICAgICAgfCAgNiArKy0tLS0KIGRyaXZlcnMvdGhlcm1hbC9pbXg4bW1fdGhlcm1hbC5jICAgICAg
ICAgICAgICAgICAgICAgfCAgNiArKy0tLS0KIGRyaXZlcnMvdGhlcm1hbC9pbXhfdGhlcm1hbC5j
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgNiArKy0tLS0KIC4uLi90aGVybWFsL2ludGVsL2lu
dDM0MHhfdGhlcm1hbC9pbnQzNDAwX3RoZXJtYWwuYyAgfCAgNSArKy0tLQogLi4uL3RoZXJtYWwv
aW50ZWwvaW50MzQweF90aGVybWFsL2ludDM0MDFfdGhlcm1hbC5jICB8ICA2ICsrLS0tLQogLi4u
L3RoZXJtYWwvaW50ZWwvaW50MzQweF90aGVybWFsL2ludDM0MDJfdGhlcm1hbC5jICB8ICA2ICsr
LS0tLQogLi4uL3RoZXJtYWwvaW50ZWwvaW50MzQweF90aGVybWFsL2ludDM0MDNfdGhlcm1hbC5j
ICB8ICA2ICsrLS0tLQogLi4uL3RoZXJtYWwvaW50ZWwvaW50MzQweF90aGVybWFsL2ludDM0MDZf
dGhlcm1hbC5jICB8ICA1ICsrLS0tCiBkcml2ZXJzL3RoZXJtYWwvazNfYmFuZGdhcC5jICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgIDYgKystLS0tCiBkcml2ZXJzL3RoZXJtYWwvazNfajcyeHhf
YmFuZGdhcC5jICAgICAgICAgICAgICAgICAgIHwgIDYgKystLS0tCiBkcml2ZXJzL3RoZXJtYWwv
a2lya3dvb2RfdGhlcm1hbC5jICAgICAgICAgICAgICAgICAgIHwgIDYgKystLS0tCiBkcml2ZXJz
L3RoZXJtYWwvbWVkaWF0ZWsvbHZ0c190aGVybWFsLmMgICAgICAgICAgICAgIHwgIDYgKystLS0t
CiBkcml2ZXJzL3RoZXJtYWwvcWNvbS90c2Vucy5jICAgICAgICAgICAgICAgICAgICAgICAgIHwg
IDYgKystLS0tCiBkcml2ZXJzL3RoZXJtYWwvcmNhcl9nZW4zX3RoZXJtYWwuYyAgICAgICAgICAg
ICAgICAgIHwgIDYgKystLS0tCiBkcml2ZXJzL3RoZXJtYWwvcmNhcl90aGVybWFsLmMgICAgICAg
ICAgICAgICAgICAgICAgIHwgIDYgKystLS0tCiBkcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhl
cm1hbC5jICAgICAgICAgICAgICAgICAgIHwgIDYgKystLS0tCiBkcml2ZXJzL3RoZXJtYWwvcnpn
MmxfdGhlcm1hbC5jICAgICAgICAgICAgICAgICAgICAgIHwgIDYgKystLS0tCiBkcml2ZXJzL3Ro
ZXJtYWwvc2Ftc3VuZy9leHlub3NfdG11LmMgICAgICAgICAgICAgICAgIHwgIDYgKystLS0tCiBk
cml2ZXJzL3RoZXJtYWwvc3BlYXJfdGhlcm1hbC5jICAgICAgICAgICAgICAgICAgICAgIHwgIDYg
KystLS0tCiBkcml2ZXJzL3RoZXJtYWwvc3ByZF90aGVybWFsLmMgICAgICAgICAgICAgICAgICAg
ICAgIHwgIDUgKystLS0KIGRyaXZlcnMvdGhlcm1hbC9zdC9zdG1fdGhlcm1hbC5jICAgICAgICAg
ICAgICAgICAgICAgfCAgNiArKy0tLS0KIGRyaXZlcnMvdGhlcm1hbC90ZWdyYS9zb2N0aGVybS5j
ICAgICAgICAgICAgICAgICAgICAgfCAgNiArKy0tLS0KIGRyaXZlcnMvdGhlcm1hbC90ZWdyYS90
ZWdyYS1icG1wLXRoZXJtYWwuYyAgICAgICAgICAgfCAgNiArKy0tLS0KIGRyaXZlcnMvdGhlcm1h
bC90aS1zb2MtdGhlcm1hbC90aS1iYW5kZ2FwLmMgICAgICAgICAgfCAgNiArKy0tLS0KIGRyaXZl
cnMvdGhlcm1hbC91bmlwaGllcl90aGVybWFsLmMgICAgICAgICAgICAgICAgICAgfCAgNiArKy0t
LS0KIDMxIGZpbGVzIGNoYW5nZWQsIDY1IGluc2VydGlvbnMoKyksIDEyMyBkZWxldGlvbnMoLSkK
CmJhc2UtY29tbWl0OiAxODAzMDIyNmE0OGRlMWZiZmFiZjRhZTE2YWFhMjY5NWE0ODQyNTRmCi0t
IAoyLjQwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
