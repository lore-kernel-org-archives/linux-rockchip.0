Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59F12CE7B0D
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Sep 2023 08:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LDQVtBiLG1kU/49unmV8GSBvPCvJtA06f2Yw0CnsRyA=; b=QnsEpa7vsBEqlk
	z+EwPcgK8bpzKX4Gl4zy/UBlewH5Cmf9DynJxD0DVm3TKzwVh31dJdktLvi4QDXi+4ImqMBzp5R7J
	3CjZdo3CSq7wuJNlJX8E+J4iaPMViJ8+BzLxjKBc4vQ6Jlf8RrqaCcHhuxIol3V2jbRMbVFZ+ozww
	YIGjiPaEKD972CrP79oYnd8RmVQ6jWdwD2RbTdzG8OUh7jYEyh66VbQcJaizFAnUE2HK6ZgyA+svf
	MQQtulGEyXvGNK77Cz7NILKoN7m3gRjVj7jnJDyU7HjzWL444/JbZmt7sWzGA6FPW4UoBYEBf7Mvl
	Gqd5ztyxjxJIPCDQc4KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlmBQ-002b8p-0N;
	Thu, 28 Sep 2023 08:15:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qll7M-002Ruu-1k
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Sep 2023 07:07:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qll78-0002OF-HC; Thu, 28 Sep 2023 09:07:10 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qll76-009WBJ-GR; Thu, 28 Sep 2023 09:07:08 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qll76-005ZWt-6N; Thu, 28 Sep 2023 09:07:08 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Mun Yew Tham <mun.yew.tham@intel.com>,
	Andy Shevchenko <andy@kernel.org>,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Doug Berger <opendmb@gmail.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-arm-kernel@lists.infradead.org,
	Vladimir Zapolskiy <vz@mleia.com>,
	Grygorii Strashko <grygorii.strashko@ti.com>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Kevin Hilman <khilman@kernel.org>,
	linux-omap@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
	Srinivas Neeli <srinivas.neeli@amd.com>,
	Michal Simek <michal.simek@amd.com>
Subject: [PATCH 00/23] gpio: Convert to platform remove callback returning void
Date: Thu, 28 Sep 2023 09:06:43 +0200
Message-Id: <20230928070706.2290137-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3428; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=9nVFxGPuj5YEs5+UoDMSL9lOpLvMcm5LijwLBu1OgY0=; b=owGbwMvMwMXY3/A7olbonx/jabUkhlRRlbi37y8E5iUprBU55fWONSpc9UxszTNr5mun8j+Uu t92X/2zk9GYhYGRi0FWTJHFvnFNplWVXGTn2n+XYQaxMoFMYeDiFICJ/GDmYJil6yYgrW5zzHXJ 6dTP9rPmfYzPaTlix2sdEyfhGtR3wz3vHlP8hks+y7sf31E3iunNkhfz2hv77caTbTEMqVa7dj+ y+qGr88P5JN+etWlKf0uO1hmGC2vMYOzSPvLm6mb2JWeW2zqsXiXT9iM+tLrhiEVCryy7Q3fA0e 1+/atYj/aFbme9s3/b9ujfr3X/Gi/0NWxJY+xK65DJM3ewlxcW7C59v3nRhPULzgUdmqnXe932l 3N8nkRxx7VcvUvyJuyX3v7jiPIQ8/X5lZLWm3PL0iZ0rs/GtbPnz1P/9n9n1vHpARYrGnkL95na v6h3Ktr4J3rdVU1jXr2On9obKhMEsw6I/7yw7/zMlohkAA==
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_000724_586737_3DF93F55 
X-CRM114-Status: GOOD (  10.53  )
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
cml2ZXJzL2dwaW8gdG8gdXNlCi5yZW1vdmVfbmV3KCkuIFRoZSBtb3RpdmF0aW9uIGlzIHRvIGdl
dCByaWQgb2YgYW4gaW50ZWdlciByZXR1cm4gY29kZQp0aGF0IGlzIChtb3N0bHkpIGlnbm9yZWQg
YnkgdGhlIHBsYXRmb3JtIGRyaXZlciBjb3JlIGFuZCBlcnJvciBwcm9uZSBvbgp0aGUgZHJpdmVy
IHNpZGUuCgpTZWUgY29tbWl0IDVjNWE3NjgwZTY3YiAoInBsYXRmb3JtOiBQcm92aWRlIGEgcmVt
b3ZlIGNhbGxiYWNrIHRoYXQKcmV0dXJucyBubyB2YWx1ZSIpIGZvciBhbiBleHRlbmRlZCBleHBs
YW5hdGlvbiBhbmQgdGhlIGV2ZW50dWFsIGdvYWwuCgpUaGVyZSBhcmUgbm8gaW50ZXJkZXBlbmRl
bmNpZXMgYmV0d2VlbiB0aGUgcGF0Y2hlcy4gQXMgdGhlcmUgYXJlIHN0aWxsCnF1aXRlIGEgZmV3
IGRyaXZlcnMgdG8gY29udmVydCwgSSdtIGhhcHB5IGFib3V0IGV2ZXJ5IHBhdGNoIHRoYXQgbWFr
ZXMKaXQgaW4uIFNvIGV2ZW4gaWYgdGhlcmUgaXMgYSBtZXJnZSBjb25mbGljdCB3aXRoIG9uZSBw
YXRjaCB1bnRpbCB5b3UKYXBwbHkgb3IgYSBzdWJqZWN0IHByZWZpeCBpcyBzdWJvcHRpbWFsLCBw
bGVhc2UgYXBwbHkgdGhlIHJlbWFpbmRlciBvZgp0aGlzIHNlcmllcyBhbnlob3cuCgpCZXN0IHJl
Z2FyZHMKVXdlCgpVd2UgS2xlaW5lLUvDtm5pZyAoMjMpOgogIGdwaW86IGFsdGVyYTogQ29udmVy
dCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICBncGlvOiBhbWRw
dDogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICBn
cGlvOiBicmNtc3RiOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5p
bmcgdm9pZAogIGdwaW86IGNhZGVuY2U6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxi
YWNrIHJldHVybmluZyB2b2lkCiAgZ3BpbzogZGxuMjogQ29udmVydCB0byBwbGF0Zm9ybSByZW1v
dmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICBncGlvOiBmdGdwaW8wMTA6IENvbnZlcnQgdG8g
cGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAgZ3BpbzogZ3JncGlvOiBD
b252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAogIGdwaW86
IGxqY2E6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lk
CiAgZ3BpbzogbHBjMTh4eDogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0
dXJuaW5nIHZvaWQKICBncGlvOiBtYjg2czd4OiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBj
YWxsYmFjayByZXR1cm5pbmcgdm9pZAogIGdwaW86IG1tLWxhbnRpcTogQ29udmVydCB0byBwbGF0
Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICBncGlvOiBtcGM1MjAwOiBDb252
ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAogIGdwaW86IG1w
Yzh4eHg6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lk
CiAgZ3Bpbzogb21hcDogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJu
aW5nIHZvaWQKICBncGlvOiByY2FyOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFj
ayByZXR1cm5pbmcgdm9pZAogIGdwaW86IHJvY2tjaGlwOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJl
bW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAogIGdwaW86IHRiMTB4OiBDb252ZXJ0IHRvIHBs
YXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAogIGdwaW86IHRzNTUwMDogQ29u
dmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICBncGlvOiB1
bmlwaGllcjogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZv
aWQKICBncGlvOiB4Z2VuZS1zYjogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sg
cmV0dXJuaW5nIHZvaWQKICBncGlvOiB4Z3MtaXByb2M6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVt
b3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAgZ3BpbzogeGlsaW54OiBDb252ZXJ0IHRvIHBs
YXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAogIGdwaW86IHp5bnE6IENvbnZl
cnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCgogZHJpdmVycy9n
cGlvL2dwaW8tYWx0ZXJhLmMgICAgfCA2ICsrLS0tLQogZHJpdmVycy9ncGlvL2dwaW8tYW1kcHQu
YyAgICAgfCA2ICsrLS0tLQogZHJpdmVycy9ncGlvL2dwaW8tYnJjbXN0Yi5jICAgfCA2ICsrLS0t
LQogZHJpdmVycy9ncGlvL2dwaW8tY2FkZW5jZS5jICAgfCA2ICsrLS0tLQogZHJpdmVycy9ncGlv
L2dwaW8tZGxuMi5jICAgICAgfCA2ICsrLS0tLQogZHJpdmVycy9ncGlvL2dwaW8tZnRncGlvMDEw
LmMgfCA2ICsrLS0tLQogZHJpdmVycy9ncGlvL2dwaW8tZ3JncGlvLmMgICAgfCA2ICsrLS0tLQog
ZHJpdmVycy9ncGlvL2dwaW8tbGpjYS5jICAgICAgfCA1ICsrLS0tCiBkcml2ZXJzL2dwaW8vZ3Bp
by1scGMxOHh4LmMgICB8IDYgKystLS0tCiBkcml2ZXJzL2dwaW8vZ3Bpby1tYjg2czd4LmMgICB8
IDYgKystLS0tCiBkcml2ZXJzL2dwaW8vZ3Bpby1tbS1sYW50aXEuYyB8IDYgKystLS0tCiBkcml2
ZXJzL2dwaW8vZ3Bpby1tcGM1MjAwLmMgICB8IDggKysrLS0tLS0KIGRyaXZlcnMvZ3Bpby9ncGlv
LW1wYzh4eHguYyAgIHwgNiArKy0tLS0KIGRyaXZlcnMvZ3Bpby9ncGlvLW9tYXAuYyAgICAgIHwg
NiArKy0tLS0KIGRyaXZlcnMvZ3Bpby9ncGlvLXJjYXIuYyAgICAgIHwgNSArKy0tLQogZHJpdmVy
cy9ncGlvL2dwaW8tcm9ja2NoaXAuYyAgfCA2ICsrLS0tLQogZHJpdmVycy9ncGlvL2dwaW8tdGIx
MHguYyAgICAgfCA2ICsrLS0tLQogZHJpdmVycy9ncGlvL2dwaW8tdHM1NTAwLmMgICAgfCA2ICsr
LS0tLQogZHJpdmVycy9ncGlvL2dwaW8tdW5pcGhpZXIuYyAgfCA2ICsrLS0tLQogZHJpdmVycy9n
cGlvL2dwaW8teGdlbmUtc2IuYyAgfCA2ICsrLS0tLQogZHJpdmVycy9ncGlvL2dwaW8teGdzLWlw
cm9jLmMgfCA2ICsrLS0tLQogZHJpdmVycy9ncGlvL2dwaW8teGlsaW54LmMgICAgfCA2ICsrLS0t
LQogZHJpdmVycy9ncGlvL2dwaW8tenlucS5jICAgICAgfCA1ICsrLS0tCiAyMyBmaWxlcyBjaGFu
Z2VkLCA0NyBpbnNlcnRpb25zKCspLCA5MCBkZWxldGlvbnMoLSkKCgpiYXNlLWNvbW1pdDogNzE5
MTM2ZTVjMjQ3NjhlYmRmODBiOWRhYTUzZmFjZWJiZGQzNzdjMwotLSAKMi40MC4xCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
