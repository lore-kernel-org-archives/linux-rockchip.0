Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7B37C76196
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 15:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/x0x/GkQsa+J6wFQLTGh2vNZUMR4NMRM31oqXiaJoAw=; b=4f7hi93ttcbv/X
	bOI793rG9firxN04+/57OudGBhSmoRLDhSYNRIgOK5/g/jFM0atHo94te53raaaYKHZzvE0Oyj4D1
	EmrlMlU4wYSNxswJzwOesig7UJ1pjsGbqqs2iQVanMthGTV/RjM7D7QsiMrSO8NA5/xk2U0ZiBOjR
	RxYQE3Z8swSX5hQKaIAR33eTGVQbh76w87YoMgfFTfH6WZp2Bb6V8romInexBmFEpgIujxRPEvMM/
	94zE3enwMxN5DHXlovcgUqHK94+EM1TMZ8vZv7ADud2WuZlfc10+kF+pMnl0/M+H5Fu8jcL4kpXwa
	je+L5TuZXljLaXdvptxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjMJm-00FonM-0m;
	Mon, 03 Apr 2023 15:42:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjMJk-00Folo-15
	for linux-rockchip@bombadil.infradead.org;
	Mon, 03 Apr 2023 15:42:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=UAOruheIqMvsYzHyxhtbPdP3szI7KMxf8pJ+o4godFA=; b=AdwmwmVfmtnWeU9KsJNBlUu30W
	IWALC0YrE6+NffykBgh7aVZHAhXPm+L1ljliUzO8aNxiFlmOkLDiAbllfDSqxSMjh1XR+hE/4cxT2
	UwfqCqTCDDuR2ga21jSgH5aNRK+8kkOrWJjBfzwSzGGsXYFI5XBrEFokswyHEdYd+TDc86GOdKbZn
	aivL9E1Q9rwItPCfudwlUpzwxH6fi/qeR20+FtF4hoAWqb9fr1f3SdF90bygQjOV+GbJI15F7CLND
	n0M853HGjBasWNK5PbWb07hdYQR2hF+7dYDHjX19v6ElAJZCf7Jwck88AefJoYEUWlcg/iuSrhvn5
	DaGevT5g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjMJh-008uwh-03
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Apr 2023 15:41:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pjMIC-0004b4-3b; Mon, 03 Apr 2023 17:40:24 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pjMI6-008iaO-0i; Mon, 03 Apr 2023 17:40:18 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pjMI5-00AHwO-5x; Mon, 03 Apr 2023 17:40:17 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Deepak R Varma <drv@mailo.com>,
	Yuan Can <yuancan@huawei.com>,
	Simon Horman <horms@verge.net.au>,
	Sven Van Asbroeck <TheSven73@gmail.com>,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Eugen Hristev <eugen.hristev@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>,
	Steve Longerbeam <slongerbeam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Maxime Ripard <mripard@kernel.org>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Parthiban Veerasooran <parthiban.veerasooran@microchip.com>,
	Christian Gromm <christian.gromm@microchip.com>,
	Davidlohr Bueso <dave@stgolabs.net>,
	Marc Dietrich <marvin24@gmx.de>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Umang Jain <umang.jain@ideasonboard.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Adrien Thierry <athierry@redhat.com>,
	Stefan Wahren <stefan.wahren@i2se.com>,
	"Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Jakob Koschel <jakobkoschel@gmail.com>
Cc: linux-staging@lists.linux.dev,
	kernel@pengutronix.de,
	greybus-dev@lists.linaro.org,
	linux-media@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	ac100@lists.launchpad.net,
	linux-tegra@vger.kernel.org,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-rpi-kernel@lists.infradead.org
Subject: [PATCH 00/24] staging: Convert to platform remove callback returning void
Date: Mon,  3 Apr 2023 17:39:50 +0200
Message-Id: <20230403154014.2564054-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5012; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=QcqVobs2IGjtDB50UkJ1/XzbU0MSF7u4i5A5EQTdJQg=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkKvM0O0Tc0pjx/M/6GF+i1BCxRCmy/MPnr7RU1 yFBMKjXOfaJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZCrzNAAKCRCPgPtYfRL+ Tpy2CACy6x0vU06fdXyxll9SO1keGvUJwPKWx+3c3iql31e1Lm+qBWx4HjLGWAH1BCBwe3626DH lDN1BYh6O1PbPw6fq7eefH5DBIAVGnQSOsyyOFUmo5y3kXQn60JKzxX7xSKuHzUxXXkaj6BYFEl dl3VmQyiYF0+g1PGODFTQSeX9kxjPWoD5g9e11a2P8dLs8Iu1lwVEIyHyEyjcsrYsB3Wj23JY5E t8/rn6+663fTt7WDV/oQ0q40Q54RNHtq2Ou/9xwLL/Jm63tGZ6gAnvbnQcFoAji4hrf+apNVsp/ aW4zaDe6809yWD3o9ofDidHCWNev/88M0ILROQDh07UCEMyG
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_164157_170889_48EB0B95 
X-CRM114-Status: GOOD (  12.51  )
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

SGVsbG8sCgp0aGlzIHNlcmllcyBhZGFwdHMgdGhlIHBsYXRmb3JtIGRyaXZlcnMgYmVsb3cgZHJp
dmVycy9zdGFnaW5nIHRvIHVzZSB0aGUKLnJlbW92ZV9uZXcoKSBjYWxsYmFjay4gQ29tcGFyZWQg
dG8gdGhlIHRyYWRpdGlvbmFsIC5yZW1vdmUoKSBjYWxsYmFjawoucmVtb3ZlX25ldygpIHJldHVy
bnMgbm8gdmFsdWUuIFRoaXMgaXMgYSBnb29kIHRoaW5nIGJlY2F1c2UgdGhlIGRyaXZlcgpjb3Jl
IGRvZXNuJ3QgKGFuZCBjYW5ub3QpIGNvcGUgZm9yIGVycm9ycyBkdXJpbmcgcmVtb3ZlLiBUaGUg
b25seSBlZmZlY3QKb2YgYSBub24temVybyByZXR1cm4gdmFsdWUgaW4gLnJlbW92ZSgpIGlzIHRo
YXQgdGhlIGRyaXZlciBjb3JlIGVtaXRzIGEKd2FybmluZy4gVGhlIGRldmljZSBpcyByZW1vdmVk
IGFueWhvdyBhbmQgYW4gZWFybHkgcmV0dXJuIGZyb20gLnJlbW92ZSgpCnVzdWFsbHkgeWllbGRz
IGEgcmVzb3VyY2UgbGVhay4KCkJ5IGNoYW5naW5nIHRoZSByZW1vdmUgY2FsbGJhY2sgdG8gcmV0
dXJuIHZvaWQgZHJpdmVyIGF1dGhvcnMgY2Fubm90CnJlYXNvbmFibHkgYXNzdW1lIGFueSBtb3Jl
IHRoYXQgdGhlcmUgaXMgc29tZSBraW5kIG9mIGNsZWFudXAgbGF0ZXIuCgpBbGwgZHJpdmVycyBp
biBzdGFnaW5nIGFscmVhZHkgcmV0dXJuIHplcm8gaW4gdGhlaXIgcmVtb3ZlIGNhbGxiYWNrLCBz
bwp0aGV5IGNhbiBiZSB0cml2aWFsbHkgY29udmVydGVkLgoKVGhlIGNoYW5nZXMgdG8gdGhlIGlu
ZGl2aWR1YWwgZHJpdmVycyBhcmUgYWxsIG9ydGhvZ29uYWwuIElmIEkgbmVlZCB0bwpyZXNlbmQg
c29tZSBwYXRjaGVzIGJlY2F1c2Ugb2Ygc29tZSByZXZpZXcgZmVlZGJhY2ssIEknZCBsaWtlIHRv
IG9ubHkKc2VuZCB0aGUgcGF0Y2hlcyB0aGF0IGFjdHVhbGx5IG5lZWRlZCBjaGFuZ2VzLCBzbyBw
bGVhc2UgcGljayB1cCB0aGUKcmVtYWluaW5nIHBhdGNoZXMgdGhhdCBkb24ndCBuZWVkIGNoYW5n
aW5nIHRvIHJlZHVjZSB0aGUgYW1vdW50IG9mIG1haWwuCgpCZXN0IHJlZ2FyZHMKVXdlCgpVd2Ug
S2xlaW5lLUvDtm5pZyAoMjQpOgogIHN0YWdpbmc6IGF4aXMtZmlmbzogQ29udmVydCB0byBwbGF0
Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICBzdGFnaW5nOiBlbXh4X3VkYzog
Q29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICBzdGFn
aW5nOiBmaWVsZGJ1czogYXJjeC1hbnlidXM6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNh
bGxiYWNrCiAgICByZXR1cm5pbmcgdm9pZAogIHN0YWdpbmc6IGdyZXlidXM6IGFyY2hlLWFwYi1j
dHJsOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjawogICAgcmV0dXJuaW5nIHZv
aWQKICBzdGFnaW5nOiBncmV5YnVzOiBhcmNoZTogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUg
Y2FsbGJhY2sgcmV0dXJuaW5nCiAgICB2b2lkCiAgc3RhZ2luZzogbWVkaWE6IGF0bWVsLXNhbWE1
ZDItaXNjOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjawogICAgcmV0dXJuaW5n
IHZvaWQKICBzdGFnaW5nOiBtZWRpYTogYXRtZWwtc2FtYTdnNS1pc2M6IENvbnZlcnQgdG8gcGxh
dGZvcm0gcmVtb3ZlIGNhbGxiYWNrCiAgICByZXR1cm5pbmcgdm9pZAogIHN0YWdpbmc6IG1lZGlh
OiBpbXgtbWVkaWEtY3NpOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjawogICAg
cmV0dXJuaW5nIHZvaWQKICBzdGFnaW5nOiBtZWRpYTogaW14LW1lZGlhLWRldjogQ29udmVydCB0
byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sKICAgIHJldHVybmluZyB2b2lkCiAgc3RhZ2luZzog
bWVkaWE6IGlteDYtbWlwaS1jc2kyOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFj
awogICAgcmV0dXJuaW5nIHZvaWQKICBzdGFnaW5nOiBtZWRpYTogaW14OG1xLW1pcGktY3NpMjog
Q29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sKICAgIHJldHVybmluZyB2b2lkCiAg
c3RhZ2luZzogbWVkaWE6IG1lc29uOiB2ZGVjOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBj
YWxsYmFjawogICAgcmV0dXJuaW5nIHZvaWQKICBzdGFnaW5nOiBtZWRpYTogb21hcDRpc3M6IENv
bnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrCiAgICByZXR1cm5pbmcgdm9pZAogIHN0
YWdpbmc6IG1lZGlhOiBya3ZkZWM6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNr
IHJldHVybmluZwogICAgdm9pZAogIHN0YWdpbmc6IG1lZGlhOiBzdW54aTogY2VkcnVzOiBDb252
ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjawogICAgcmV0dXJuaW5nIHZvaWQKICBzdGFn
aW5nOiBtZWRpYTogc3VuNmktaXNwOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFj
awogICAgcmV0dXJuaW5nIHZvaWQKICBzdGFnaW5nOiBtb3N0OiBkaW0yOiBDb252ZXJ0IHRvIHBs
YXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcKICAgIHZvaWQKICBzdGFnaW5nOiBudmVj
OiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAogIHN0
YWdpbmc6IG52ZWM6IG52ZWNfa2JkOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFj
ayByZXR1cm5pbmcKICAgIHZvaWQKICBzdGFnaW5nOiBudmVjX3Bvd2VyOiBDb252ZXJ0IHRvIHBs
YXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcKICAgIHZvaWQKICBzdGFnaW5nOiBudmVj
X3BzMjogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQK
ICBzdGFnaW5nOiBvY3Rlb246IGV0aGVybmV0OiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBj
YWxsYmFjawogICAgcmV0dXJuaW5nIHZvaWQKICBzdGFnaW5nOiB2YzA0X3NlcnZpY2VzOiBiY20y
ODM1LWNhbWVyYTogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUKICAgIGNhbGxiYWNrIHJldHVy
bmluZyB2b2lkCiAgc3RhZ2luZzogdmMwNF9zZXJ2aWNlczogdmNoaXFfYXJtOiBDb252ZXJ0IHRv
IHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjawogICAgcmV0dXJuaW5nIHZvaWQKCiBkcml2ZXJzL3N0
YWdpbmcvYXhpcy1maWZvL2F4aXMtZmlmby5jICAgICAgICAgICAgICAgICAgICAgICB8IDYgKyst
LS0tCiBkcml2ZXJzL3N0YWdpbmcvZW14eF91ZGMvZW14eF91ZGMuYyAgICAgICAgICAgICAgICAg
ICAgICAgICB8IDYgKystLS0tCiBkcml2ZXJzL3N0YWdpbmcvZmllbGRidXMvYW55YnVzcy9hcmN4
LWFueWJ1cy5jICAgICAgICAgICAgICB8IDUgKystLS0KIGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVz
L2FyY2hlLWFwYi1jdHJsLmMgICAgICAgICAgICAgICAgICAgIHwgNiArKy0tLS0KIGRyaXZlcnMv
c3RhZ2luZy9ncmV5YnVzL2FyY2hlLXBsYXRmb3JtLmMgICAgICAgICAgICAgICAgICAgIHwgNiAr
Ky0tLS0KIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9kZXByZWNhdGVkL2F0bWVsL2F0bWVsLXNhbWE1
ZDItaXNjLmMgIHwgNiArKy0tLS0KIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9kZXByZWNhdGVkL2F0
bWVsL2F0bWVsLXNhbWE3ZzUtaXNjLmMgIHwgNiArKy0tLS0KIGRyaXZlcnMvc3RhZ2luZy9tZWRp
YS9pbXgvaW14LW1lZGlhLWNzaS5jICAgICAgICAgICAgICAgICAgIHwgNiArKy0tLS0KIGRyaXZl
cnMvc3RhZ2luZy9tZWRpYS9pbXgvaW14LW1lZGlhLWRldi5jICAgICAgICAgICAgICAgICAgIHwg
NiArKy0tLS0KIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvaW14Ni1taXBpLWNzaTIuYyAgICAg
ICAgICAgICAgICAgIHwgNiArKy0tLS0KIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvaW14OG1x
LW1pcGktY3NpMi5jICAgICAgICAgICAgICAgIHwgNiArKy0tLS0KIGRyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9tZXNvbi92ZGVjL3ZkZWMuYyAgICAgICAgICAgICAgICAgICAgIHwgNiArKy0tLS0KIGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS9vbWFwNGlzcy9pc3MuYyAgICAgICAgICAgICAgICAgICAgICAg
IHwgNiArKy0tLS0KIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgICAgICAg
ICAgICAgICAgICAgICAgIHwgNSArKy0tLQogZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2Nl
ZHJ1cy9jZWRydXMuYyAgICAgICAgICAgICAgICAgfCA2ICsrLS0tLQogZHJpdmVycy9zdGFnaW5n
L21lZGlhL3N1bnhpL3N1bjZpLWlzcC9zdW42aV9pc3AuYyAgICAgICAgICAgfCA2ICsrLS0tLQog
ZHJpdmVycy9zdGFnaW5nL21vc3QvZGltMi9kaW0yLmMgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCA2ICsrLS0tLQogZHJpdmVycy9zdGFnaW5nL252ZWMvbnZlYy5jICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCA2ICsrLS0tLQogZHJpdmVycy9zdGFnaW5nL252ZWMvbnZlY19r
YmQuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCA2ICsrLS0tLQogZHJpdmVycy9zdGFn
aW5nL252ZWMvbnZlY19wb3dlci5jICAgICAgICAgICAgICAgICAgICAgICAgICAgfCA2ICsrLS0t
LQogZHJpdmVycy9zdGFnaW5nL252ZWMvbnZlY19wczIuYyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCA2ICsrLS0tLQogZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC5jICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCA1ICsrLS0tCiAuLi4vc3RhZ2luZy92YzA0X3NlcnZpY2Vz
L2JjbTI4MzUtY2FtZXJhL2JjbTI4MzUtY2FtZXJhLmMgICB8IDYgKystLS0tCiAuLi4vc3RhZ2lu
Zy92YzA0X3NlcnZpY2VzL2ludGVyZmFjZS92Y2hpcV9hcm0vdmNoaXFfYXJtLmMgICB8IDYgKyst
LS0tCiAyNCBmaWxlcyBjaGFuZ2VkLCA0OCBpbnNlcnRpb25zKCspLCA5MyBkZWxldGlvbnMoLSkK
CgpiYXNlLWNvbW1pdDogZmUxNWMyNmVlMjZlZmExMTc0MWE3YjYzMmU5ZjIzYjAxYWNhNGNjNgot
LSAKMi4zOS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
