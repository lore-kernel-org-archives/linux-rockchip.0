Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19A2CE95A8E
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 09:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LIRiotvRCDBIyT/dpDE1mM+cDoVG9kgJYLt9J0/d/nQ=; b=0857bTCGisfufC
	uSxjSNy8DDSxbuGHgnJQkmlR9Xp/OkFCk5kZF+ZybWxTeN/1/4D5Ea7colod/y5WZzlEyoGQlFtx9
	Wy3tRH3yFDjtSLmNPOSf6or27p/jLwTmVtD3SSYQZnl54ZoDN69Th2iju1/1pBrVevrqVc4GSsi6q
	lqUrBiXsBXSXBgjs/04rF1ZuHMdPvuhIuKt3qWvSiBLpahqIBrNvFc9AteI0yTyxH4zGWk78s1uIz
	IGP5WjhCnrP73y4jYKHlMXrSkwhwjpYBFNVs4caYC6IWnsOL7lAgwKbH38rSFSYR3kNExry8bYmK9
	C/Oq1CtKgw+v2w6n1bNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpmTa-00A5Ny-1Z;
	Mon, 09 Oct 2023 09:22:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpmTV-00A5Jo-0D
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Oct 2023 09:22:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qpmTE-0006sS-FJ; Mon, 09 Oct 2023 11:22:36 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qpmTB-000NWK-WD; Mon, 09 Oct 2023 11:22:34 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qpmTB-00C4om-Lw; Mon, 09 Oct 2023 11:22:33 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Tony Lindgren <tony@atomide.com>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-omap@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Yangtao Li <frank.li@vivo.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	alsa-devel@alsa-project.org,
	patches@opensource.cirrus.com,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Andy Shevchenko <andy@kernel.org>,
	Basavaraj Natikar <Basavaraj.Natikar@amd.com>,
	Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Lars Persson <lars.persson@axis.com>,
	linux-arm-kernel@axis.com,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH 00/20] pinctrl: Convert to platform remove callback returning void
Date: Mon,  9 Oct 2023 10:38:36 +0200
Message-Id: <20231009083856.222030-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3496; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=pt9OZIbEVRO7CYphejzNzNKVBdTQOuLMQfjMm/xdSsg=; b=owGbwMvMwMXY3/A7olbonx/jabUkhlTl3b98hd42/517xHB/gviiPU/9MqwUZ0mXf7uieqT57 e1Tr4s5OxmNWRgYuRhkxRRZ7BvXZFpVyUV2rv13GWYQKxPIFAYuTgGYiNF79n9mT5b+PJ2R+ikl wLMnduL/rK7Z79ojXnBnnL3QVfV6IeOf7r+yDxdeUQ/VNbcoUj9/TSL8bE71Y7sDqxerpXI6VEs /1P97Z0YuT218uWOkw/O0NY6abDVGc6fHL8n96l+lGaq7OrdAK4Ax5VjhrnRrd5OA6peWBvlTb3 AyXvpSMPXrLx65FXyMmsnHnqZ+uvjL8HBZBXOtsu7S3Jpkh9r2xaYef+NnftHqsljaMnF9yufEf 1E6pW1rZr69u0fZs2RLfUdYQdgLp/hzIZpzmerWsjlmfmDdx9Wlc7RYWop3kxrz7+18KXNuV655 FaFwVYNlX9ml35+UxAPLrx9fo8B+cpJOMQ9zsGQi0zFOAA==
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_022253_117862_516E7B15 
X-CRM114-Status: UNSURE (   9.73  )
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

SGVsbG8sCgphZnRlciB0aHJlZSBtaW5vciBpbXByb3ZlbWVudHMvc2ltcGxpZmljYXRpb25zIHRo
aXMgc2VyaWVzIGNvbnZlcnRzIGFsbApwbGF0Zm9ybV9kcml2ZXJzIGJlbG93IGRyaXZlcnMvcGlu
Y3RybCB0byAucmVtb3ZlX25ldygpLgoKU2VlIGNvbW1pdCA1YzVhNzY4MGU2N2IgKCJwbGF0Zm9y
bTogUHJvdmlkZSBhIHJlbW92ZSBjYWxsYmFjayB0aGF0CnJldHVybnMgbm8gdmFsdWUiKSBmb3Ig
YW4gZXh0ZW5kZWQgZXhwbGFuYXRpb24gYW5kIHRoZSBldmVudHVhbCBnb2FsLgoKVGhlIG9ubHkg
aW50ZXJkZXBlbmRlbmNpZXMgaW4gdGhpcyBzZXJpZXMgYXJlIHRoZSBwYXRjaGVzIHRoYXQgdG91
Y2ggYQpzaW5nbGUgZHJpdmVyICh0aGF0IGlzICgxLCAxMyksICgyLCAxMiksICgzLCAyMCkpLiBB
cyB0aGVyZSBhcmUgc3RpbGwKcXVpdGUgYSBmZXcgZHJpdmVycyB0byBjb252ZXJ0LCBJJ20gaGFw
cHkgYWJvdXQgZXZlcnkgcGF0Y2ggdGhhdCBtYWtlcwppdCBpbi4gU28gZXZlbiBpZiB0aGVyZSBp
cyBhIG1lcmdlIGNvbmZsaWN0IHdpdGggb25lIHBhdGNoIHVudGlsIHlvdQphcHBseSAob3IgYSBk
aWZmZXJlbnQgY29uY2VybiB0aGF0IGRvZXNuJ3QgYXBwbHkgdG8gYWxsIHBhdGNoZXMpLCBwbGVh
c2UKYXBwbHkgdGhlIHJlbWFpbmRlciBvZiB0aGlzIHNlcmllcyBhbnlob3cuIEknbGwgY29tZSBi
YWNrIHRvIHRoZSBwYXJ0CnRoYXQgeW91IChtYXliZSkgc2tpcHBlZCBhdCBhIGxhdGVyIHBvaW50
LgoKQmVzdCByZWdhcmRzClV3ZQoKVXdlIEtsZWluZS1Lw7ZuaWcgKDIwKToKICBwaW5jdHJsOiBz
dG1meDogSW1wcm92ZSBlcnJvciBtZXNzYWdlIGluIC5yZW1vdmUoKSdzIGVycm9yIHBhdGgKICBw
aW5jdHJsOiBzaW5nbGU6IERyb3AgaWYgYmxvY2sgd2l0aCBhbHdheXMgZmFsc2UgY29uZGl0aW9u
CiAgcGluY3RybDogdGk6IHRpLWlvZGVsYXk6IERyb3AgaWYgYmxvY2sgd2l0aCBhbHdheXMgZmFs
c2UgY29uZGl0aW9uCiAgcGluY3RybDogY2lycnVzOiBtYWRlcmEtY29yZTogQ29udmVydCB0byBw
bGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sKICAgIHJldHVybmluZyB2b2lkCiAgcGluY3RybDogaW50
ZWw6IGNoZXJyeXZpZXc6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrCiAgICBy
ZXR1cm5pbmcgdm9pZAogIHBpbmN0cmw6IGludGVsOiBseW54cG9pbnQ6IENvbnZlcnQgdG8gcGxh
dGZvcm0gcmVtb3ZlIGNhbGxiYWNrCiAgICByZXR1cm5pbmcgdm9pZAogIHBpbmN0cmw6IG5vbWFk
aWs6IGFieDUwMDogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sKICAgIHJldHVy
bmluZyB2b2lkCiAgcGluY3RybDogYW1kOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxs
YmFjayByZXR1cm5pbmcgdm9pZAogIHBpbmN0cmw6IGFydHBlYzY6IENvbnZlcnQgdG8gcGxhdGZv
cm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAgcGluY3RybDogYXMzNzIyOiBDb252
ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAogIHBpbmN0cmw6
IHJvY2tjaGlwOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcg
dm9pZAogIHBpbmN0cmw6IHNpbmdsZTogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJh
Y2sgcmV0dXJuaW5nIHZvaWQKICBwaW5jdHJsOiBzdG1meDogQ29udmVydCB0byBwbGF0Zm9ybSBy
ZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICBwaW5jdHJsOiB0YjEweDogQ29udmVydCB0
byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICBwaW5jdHJsOiBxY29t
OiBzcG1pLWdwaW86IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrCiAgICByZXR1
cm5pbmcgdm9pZAogIHBpbmN0cmw6IHFjb206IHNwbWktbXBwOiBDb252ZXJ0IHRvIHBsYXRmb3Jt
IHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcKICAgIHZvaWQKICBwaW5jdHJsOiBxY29tOiBzc2Jp
LWdwaW86IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrCiAgICByZXR1cm5pbmcg
dm9pZAogIHBpbmN0cmw6IHFjb206IHNzYmktbXBwOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92
ZSBjYWxsYmFjayByZXR1cm5pbmcKICAgIHZvaWQKICBwaW5jdHJsOiByZW5lc2FzOiByem4xOiBD
b252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcKICAgIHZvaWQKICBw
aW5jdHJsOiB0aTogdGktaW9kZWxheTogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJh
Y2sgcmV0dXJuaW5nCiAgICB2b2lkCgogZHJpdmVycy9waW5jdHJsL2NpcnJ1cy9waW5jdHJsLW1h
ZGVyYS1jb3JlLmMgfCAgNiArKy0tLS0KIGRyaXZlcnMvcGluY3RybC9pbnRlbC9waW5jdHJsLWNo
ZXJyeXZpZXcuYyAgIHwgIDYgKystLS0tCiBkcml2ZXJzL3BpbmN0cmwvaW50ZWwvcGluY3RybC1s
eW54cG9pbnQuYyAgICB8ICA1ICsrLS0tCiBkcml2ZXJzL3BpbmN0cmwvbm9tYWRpay9waW5jdHJs
LWFieDUwMC5jICAgICB8ICA1ICsrLS0tCiBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1hbWQuYyAg
ICAgICAgICAgICAgICB8ICA2ICsrLS0tLQogZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtYXJ0cGVj
Ni5jICAgICAgICAgICAgfCAgNiArKy0tLS0KIGRyaXZlcnMvcGluY3RybC9waW5jdHJsLWFzMzcy
Mi5jICAgICAgICAgICAgIHwgIDUgKystLS0KIGRyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tj
aGlwLmMgICAgICAgICAgIHwgIDYgKystLS0tCiBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1zaW5n
bGUuYyAgICAgICAgICAgICB8ICA5ICsrLS0tLS0tLQogZHJpdmVycy9waW5jdHJsL3BpbmN0cmwt
c3RtZnguYyAgICAgICAgICAgICAgfCAxNiArKysrKysrKysrLS0tLS0tCiBkcml2ZXJzL3BpbmN0
cmwvcGluY3RybC10YjEweC5jICAgICAgICAgICAgICB8ICA2ICsrLS0tLQogZHJpdmVycy9waW5j
dHJsL3Fjb20vcGluY3RybC1zcG1pLWdwaW8uYyAgICAgfCAgNSArKy0tLQogZHJpdmVycy9waW5j
dHJsL3Fjb20vcGluY3RybC1zcG1pLW1wcC5jICAgICAgfCAgNSArKy0tLQogZHJpdmVycy9waW5j
dHJsL3Fjb20vcGluY3RybC1zc2JpLWdwaW8uYyAgICAgfCAgNiArKy0tLS0KIGRyaXZlcnMvcGlu
Y3RybC9xY29tL3BpbmN0cmwtc3NiaS1tcHAuYyAgICAgIHwgIDYgKystLS0tCiBkcml2ZXJzL3Bp
bmN0cmwvcmVuZXNhcy9waW5jdHJsLXJ6bjEuYyAgICAgICB8ICA2ICsrLS0tLQogZHJpdmVycy9w
aW5jdHJsL3RpL3BpbmN0cmwtdGktaW9kZWxheS5jICAgICAgfCAxMSArKy0tLS0tLS0tLQogMTcg
ZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgNzMgZGVsZXRpb25zKC0pCgoKYmFzZS1j
b21taXQ6IDBiYjgwZWNjMzNhOGZiNWE2ODIyMzY0NDNjMWU3NDBkNWM5MTdkMWQKLS0gCjIuNDAu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
