Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BAD2CDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 22:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9tQ5sZSRk7KIH4iaoNA8tYvptMkpucio82E3QewxgiU=; b=c2zMR8Uq54zQH1
	IfzLJ0s0bAlR98Dz2kchBz+KBjoBCz77LJjBlX9pG+LmGWKKw7zSLCY/gBbkChroBvUKZ2VkjFLA/
	uhbU0R2wTI7auAJK7qbpD2F+jK5WjDKx9DbUjMluRJRKh6vWBNgx70H98g5vomaqJ1UHL4RR3Jy8y
	+af7dLUb+XOV6xzr0m5l/s8tHBrerDBV0HKTQdcTFLFRxTkbAXBnd0qvojkWv9PTPtF7a0MJGIJJz
	wEEMQiq15t8kZzd5ZACSlMAvO4bA91aUhx4QJX7gQgQHs2tXMJl73WAN2ura+7nLtg1eV0Qy/yR0f
	qtsrk5m7scOBBHggotAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrQWg-004NBd-2B;
	Fri, 13 Oct 2023 22:20:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrQWa-004N92-2H
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 22:20:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qrQVy-0003u1-Se; Sat, 14 Oct 2023 00:20:14 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qrQVu-001UQy-HS; Sat, 14 Oct 2023 00:20:10 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qrQVu-00FrGg-6a; Sat, 14 Oct 2023 00:20:10 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de,
	James Schulman <james.schulman@cirrus.com>,
	David Rhodes <david.rhodes@cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	patches@opensource.cirrus.com,
	Hal Feng <hal.feng@starfivetech.com>,
	Xingyu Wu <xingyu.wu@starfivetech.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Rob Herring <robh@kernel.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Wang Yufen <wangyufen@huawei.com>,
	Aidan MacDonald <aidanmacdonald.0x0@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Astrid Rost <astrid.rost@axis.com>,
	Robert Hancock <robert.hancock@calian.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Sameer Pujar <spujar@nvidia.com>,
	linux-tegra@vger.kernel.org,
	Jerome Brunet <jbrunet@baylibre.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-amlogic@lists.infradead.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@quicinc.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>
Subject: [PATCH 0/7] ASoc: Another series to convert to struct platform_driver:remove_new()
Date: Sat, 14 Oct 2023 00:19:46 +0200
Message-ID: <20231013221945.1489203-9-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2489; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=cYxL2O/75ZQ/Qssv/SmxSII6i6fEkRf+6aE5Dq5YLkk=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlKcKBsGGsO1NpDsWYb6jhOZ5bd55SP6d25vKGy 7YmQnTVdj6JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZSnCgQAKCRCPgPtYfRL+ Tor2B/9HSydQELpgS1t6snPAaAhDEQtcvtaeVBtpjFaal3r22ICSQDGErHMALZMsZM0DK4SvBus xitQy7lPnrHt1F3EHuZqLuqRxDxirQNRbDyFCC7VHAoP+siDOseZ8orQNkqO8dLG5lh4aEywNEZ D+klzbNqXCfw/4sFshIT4zJnpUocZNmxeEASSq3aEErlNufS0lk1AdIS351Ksm9BV8tZHM0Gpg7 vvVXsCgzYxg4KII4s+FYF12ZF3E+OOhxcAMYwSftV5cGdzyPJTPf/P3lyCOXxi7vVDHM34gLSFH b1mmX7ZIBzFL7VeooM4IfAlsY2wNy4BB6nHQ6CiSpTuf1el/
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_152052_749210_EB1E78AD 
X-CRM114-Status: UNSURE (   8.33  )
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

SGVsbG8sCgp0aGlzIGlzIGFub3RoZXIgc2VyaWVzIHRvIGNvbnZlcnQgQVNvQyBkcml2ZXJzIHRv
IHVzZSBzdHJ1Y3QKcGxhdGZvcm1fZHJpdmVyOnJlbW92ZV9uZXcoKS4gVGhlIHJvY2tjaGlwIG9u
ZSB3YXMgYWxyZWFkeSBzZW5kIGJlZm9yZQpidXQgd2l0aCBhIHdyb25nIHN1YmplY3QgcHJlZml4
LCB0aGUgY3M0Mmw0MyBkcml2ZXIgaXMgbmV3ZXIgdGhhbiB0aGUKbGFzdCBzZXJpZXMuIFRoZSBy
ZW1haW5pbmcgZml2ZSBwYXRjaGVzIGFyZSBmb3IgZHJpdmVyIGNvbWJvcyB0aGF0IG15CmNvY2Np
bmVsbGUgcGF0Y2ggZmFpbGVkIHRvIGRldGVjdCBiZWZvcmUuCgpCZXN0IHJlZ2FyZHMKVXdlCgpV
d2UgS2xlaW5lLUvDtm5pZyAoNyk6CiAgQVNvQzogcm9ja2NoaXA6IGkyc190ZG06IENvbnZlcnQg
dG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZwogICAgdm9pZAogIEFTb0M6IGNz
NDJsNDM6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lk
CiAgQVNvQzogc3RhcmZpdmUvamg3MTEwLXB3bWRhYzogQ29udmVydCB0byBwbGF0Zm9ybSByZW1v
dmUgY2FsbGJhY2sKICAgIHJldHVybmluZyB2b2lkCiAgQVNvQzogc2ltcGxlLWNhcmQtdXRpbHM6
IE1ha2Ugc2ltcGxlX3V0aWxfcmVtb3ZlKCkgcmV0dXJuIHZvaWQKICBBU29DOiBtZXNvbjogTWFr
ZSBtZXNvbl9jYXJkX3JlbW92ZSgpIHJldHVybiB2b2lkCiAgQVNvQzogcWNvbTogbHBhc3M6IE1h
a2UgYXNvY19xY29tX2xwYXNzX2NwdV9wbGF0Zm9ybV9yZW1vdmUoKSByZXR1cm4KICAgIHZvaWQK
ICBBU29DOiB1bmlwaGllcjogTWFrZSB1bmlwaGllcl9haW9fcmVtb3ZlKCkgcmV0dXJuIHZvaWQK
CiBpbmNsdWRlL3NvdW5kL3NpbXBsZV9jYXJkX3V0aWxzLmggICAgICAgICAgICAgICAgICAgfCAy
ICstCiBzb3VuZC9zb2MvY29kZWNzL2NzNDJsNDMuYyAgICAgICAgICAgICAgICAgICAgICAgICAg
fCA2ICsrLS0tLQogc291bmQvc29jL2dlbmVyaWMvYXVkaW8tZ3JhcGgtY2FyZC5jICAgICAgICAg
ICAgICAgIHwgMiArLQogc291bmQvc29jL2dlbmVyaWMvYXVkaW8tZ3JhcGgtY2FyZDItY3VzdG9t
LXNhbXBsZS5jIHwgMiArLQogc291bmQvc29jL2dlbmVyaWMvYXVkaW8tZ3JhcGgtY2FyZDIuYyAg
ICAgICAgICAgICAgIHwgMiArLQogc291bmQvc29jL2dlbmVyaWMvc2ltcGxlLWNhcmQtdXRpbHMu
YyAgICAgICAgICAgICAgIHwgNCArLS0tCiBzb3VuZC9zb2MvZ2VuZXJpYy9zaW1wbGUtY2FyZC5j
ICAgICAgICAgICAgICAgICAgICAgfCAyICstCiBzb3VuZC9zb2MvbWVzb24vYXhnLWNhcmQuYyAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAyICstCiBzb3VuZC9zb2MvbWVzb24vZ3gtY2FyZC5j
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAyICstCiBzb3VuZC9zb2MvbWVzb24vbWVzb24t
Y2FyZC11dGlscy5jICAgICAgICAgICAgICAgICAgfCA0ICstLS0KIHNvdW5kL3NvYy9tZXNvbi9t
ZXNvbi1jYXJkLmggICAgICAgICAgICAgICAgICAgICAgICB8IDIgKy0KIHNvdW5kL3NvYy9xY29t
L2xwYXNzLWFwcTgwMTYuYyAgICAgICAgICAgICAgICAgICAgICB8IDIgKy0KIHNvdW5kL3NvYy9x
Y29tL2xwYXNzLWNwdS5jICAgICAgICAgICAgICAgICAgICAgICAgICB8IDUgKy0tLS0KIHNvdW5k
L3NvYy9xY29tL2xwYXNzLWlwcTgwNnguYyAgICAgICAgICAgICAgICAgICAgICB8IDIgKy0KIHNv
dW5kL3NvYy9xY29tL2xwYXNzLXNjNzE4MC5jICAgICAgICAgICAgICAgICAgICAgICB8IDIgKy0K
IHNvdW5kL3NvYy9xY29tL2xwYXNzLXNjNzI4MC5jICAgICAgICAgICAgICAgICAgICAgICB8IDIg
Ky0KIHNvdW5kL3NvYy9xY29tL2xwYXNzLmggICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
IDIgKy0KIHNvdW5kL3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9pMnNfdGRtLmMgICAgICAgICAgICAg
ICB8IDYgKystLS0tCiBzb3VuZC9zb2Mvc3RhcmZpdmUvamg3MTEwX3B3bWRhYy5jICAgICAgICAg
ICAgICAgICAgfCA1ICsrLS0tCiBzb3VuZC9zb2MvdGVncmEvdGVncmFfYXVkaW9fZ3JhcGhfY2Fy
ZC5jICAgICAgICAgICAgfCAyICstCiBzb3VuZC9zb2MvdW5pcGhpZXIvYWlvLWNwdS5jICAgICAg
ICAgICAgICAgICAgICAgICAgfCA0ICstLS0KIHNvdW5kL3NvYy91bmlwaGllci9haW8tbGQxMS5j
ICAgICAgICAgICAgICAgICAgICAgICB8IDIgKy0KIHNvdW5kL3NvYy91bmlwaGllci9haW8tcHhz
Mi5jICAgICAgICAgICAgICAgICAgICAgICB8IDIgKy0KIHNvdW5kL3NvYy91bmlwaGllci9haW8u
aCAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDIgKy0KIDI0IGZpbGVzIGNoYW5nZWQsIDI3
IGluc2VydGlvbnMoKyksIDQxIGRlbGV0aW9ucygtKQoKCmJhc2UtY29tbWl0OiBlM2IxOGY3MjAw
ZjQ1ZDY2ZjcxNDExMzZjMjU1NTRhYzFlODIwMDliCi0tIAoyLjQyLjAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
