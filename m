Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 172FFC6FD20
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 19:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sJhj9CGd5U8jeDDs4wjLUD8GKYq8gDu2O6IrpR0wszo=; b=ODTTLNv3dqT9q7
	KjJoBm0GV+ZDvNuYksp6U9RSeD3UxDkjEcAeEQSKbrV/mebZZl7aeSdxQx5jCiMEh4XOREkIba/gb
	0OztEgeAdgZgLiqsesbRcDjldSWx3jAhpj9tqSNumGCFztZzUJYedeRDjekW+Jw4n/iOYSX3k6sCl
	YFbW8F6XrEGCuiGq244VKJBVfo7SlhSTmwB9PYllNRsTYNkYhRjG/pTYz0qW2xMXa58LptKZ6UDvN
	fi4iN28L3Hyf060PMyyfq1BtyajKfOWN4StlizQnPWtPl8GIC0o8YEMinJOjFhqZAMGSPjalGqiXt
	vYCtpQCZrkbvJQD3c8Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pehlH-00DWCE-0I;
	Tue, 21 Mar 2023 19:35:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pehlC-00DW92-1s
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Mar 2023 19:35:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pehiZ-0008Dw-NB; Tue, 21 Mar 2023 20:32:23 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pehiT-005l5h-9t; Tue, 21 Mar 2023 20:32:17 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pehiS-006qxf-Je; Tue, 21 Mar 2023 20:32:16 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	=?utf-8?q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Joyce Ooi <joyce.ooi@intel.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Jim Quinlan <jim2101024@gmail.com>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tom Joseph <tjoseph@cadence.com>,
	Shawn Guo <shawn.guo@linaro.org>,
	Rahul Tanwar <rtanwar@maxlinear.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Serge Semin <Sergey.Semin@baikalelectronics.ru>,
	Vidya Sagar <vidyas@nvidia.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Miaoqian Lin <linmq006@gmail.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Toan Le <toan@os.amperecomputing.com>
Cc: Rob Herring <robh@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-rpi-kernel@lists.infradead.org,
	linux-omap@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 00/15] PCI: Convert to platform remove callback returning void
Date: Tue, 21 Mar 2023 20:31:53 +0100
Message-Id: <20230321193208.366561-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3608; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=R+5LbNfI6fKiy6X0dtpgsEo+8R1pdW2pwTWUMnz3+QQ=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkGgYLRsLzqyEbvu3VAJNJ+oXLpkkATksJ+mhRk m2Azv/YPFyJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZBoGCwAKCRCPgPtYfRL+ ThmBB/4usOcusxcKm8bzqeDny7jlfyp6JXzDfI5d0+YR6TSbJQflwlOnBkyQvAFNtJzQwgGNu2D BJlqgjGe3xEtIGOU2r4rKY7m+y9u41GugRRXvrsjdNtsPIkTWEw4cjJXoR/TSd2qZb8ZuOE3sjB uNQr8PE0KhtjpplR2zAlse3jtykoQxhN/qYXuZzOTWZFWyT8p0RORCGszYX5Z471/MdAqLXjkhv HoRLxiX1jiwJhmZZvqd03sOeXhk6rfiO5throSaEY8q4/q2UYdsLPsQhFmXbUjMuqBaoEMMqnsP wOUSbpoxpW4Bka12AJYEvNLE8GnI7lHsJPR3jpsh74MlG9iq
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_123506_701295_A9EBEE18 
X-CRM114-Status: GOOD (  11.83  )
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
dmVycy9wY2kgdG8gdXNlIHRoZQoucmVtb3ZlX25ldygpIGNhbGxiYWNrLiBDb21wYXJlZCB0byB0
aGUgdHJhZGl0aW9uYWwgLnJlbW92ZSgpIGNhbGxiYWNrCi5yZW1vdmVfbmV3KCkgcmV0dXJucyBu
byB2YWx1ZS4gVGhpcyBpcyBhIGdvb2QgdGhpbmcgYmVjYXVzZSB0aGUgZHJpdmVyIGNvcmUKZG9l
c24ndCAoYW5kIGNhbm5vdCkgY29wZSBmb3IgZXJyb3JzIGR1cmluZyByZW1vdmUuIFRoZSBvbmx5
IGVmZmVjdCBvZiBhCm5vbi16ZXJvIHJldHVybiB2YWx1ZSBpbiAucmVtb3ZlKCkgaXMgdGhhdCB0
aGUgZHJpdmVyIGNvcmUgZW1pdHMgYSB3YXJuaW5nLiBUaGUKZGV2aWNlIGlzIHJlbW92ZWQgYW55
aG93IGFuZCBhbiBlYXJseSByZXR1cm4gZnJvbSAucmVtb3ZlKCkgdXN1YWxseSB5aWVsZHMgYQpy
ZXNvdXJjZSBsZWFrLgoKQnkgY2hhbmdpbmcgdGhlIHJlbW92ZSBjYWxsYmFjayB0byByZXR1cm4g
dm9pZCBkcml2ZXIgYXV0aG9ycyBjYW5ub3QKcmVhc29uYWJseSBhc3N1bWUgYW55IG1vcmUgdGhh
dCB0aGVyZSBpcyBzb21lIGtpbmQgb2YgY2xlYW51cCBsYXRlci4KCkFsbCBkcml2ZXJzIHdlcmUg
ZWFzeSB0byBjb252ZXJ0IGFzIHRoZXkgYWxsIHJldHVybmVkIHplcm8gaW4gdGhlaXIKcmVtb3Zl
IGNhbGxiYWNrLiBPbmx5IGZvciBpcHJvYyB0aGUgY29udmVyc2lvbiB3YXNuJ3QgdHJpdmlhbCwg
dGhlIG90aGVyCndlcmUgY29udmVydGVkIHVzaW5nIGNvY2NpbmVsbGUuCgpUaGVyZSBhcmUgbm8g
aW50ZXJkZXBlbmRlbmNpZXMgYmV0d2VlbiB0aGVzZSBwYXRjaGVzLiBTbyBldmVuIGlmIHRoZXJl
CmFyZSBzb21lIGNvbmNlcm5zIGZvciBpbmRpdmlkdWFsIHBhdGNoZXMsIEkgYXNrIHlvdSB0byBh
cHBseSB0aGUKcmVtYWluaW5nIHNldC4gVGhlbiBJIG9ubHkgaGF2ZSB0byBjYXJlIGZvciB0aGUg
cmV2aWV3IGZlZWRiYWNrIG9mIHRoZQpyZWZ1c2VkIHBhdGNoZXMuIChIYXZpbmcgc2FpZCB0aGF0
IEkgZG9uJ3QgZXhwZWN0IGFueSBzZXJpb3VzIG9iamVjdGlvbiwKanVzdCB0aGluZ3MgbGlrZSBz
cXVhc2hpbmcgb3Igc2VwYXJhdGluZyBwYXRjaGVzLCBvciBtYXliZSBJIHBpY2tlZCBhCndyb25n
IHN1YmplY3QgcHJlZml4LikKCkJlc3QgcmVnYXJkcwpVd2UKClV3ZSBLbGVpbmUtS8O2bmlnICgx
NSk6CiAgUENJOiBhYXJkdmFyazogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sg
cmV0dXJuaW5nIHZvaWQKICBQQ0k6IGFsdGVyYTogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUg
Y2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICBQQ0k6IGFsdGVyYS1tc2k6IENvbnZlcnQgdG8gcGxh
dGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAgUENJOiBicmNtc3RiOiBDb252
ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAogIFBDSTogY2Fk
ZW5jZS9qNzIxZTogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5n
IHZvaWQKICBQQ0k6IGR3Yy8qOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayBy
ZXR1cm5pbmcgdm9pZAogIFBDSTogaGlzaS1lcnJvcjogQ29udmVydCB0byBwbGF0Zm9ybSByZW1v
dmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICBQQ0k6IGlwcm9jOiBDb252ZXJ0IHRvIHBsYXRm
b3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAogIFBDSTogbWVkaWF0ZWs6IENvbnZl
cnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAgUENJOiBtZWRp
YXRlay1nZW4zOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcg
dm9pZAogIFBDSTogbXQ3NjIxOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayBy
ZXR1cm5pbmcgdm9pZAogIFBDSTogbXZlYnU6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNh
bGxiYWNrIHJldHVybmluZyB2b2lkCiAgUENJOiByb2NrY2hpcC1ob3N0OiBDb252ZXJ0IHRvIHBs
YXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAogIFBDSTogdGVncmE6IENvbnZl
cnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAgUENJOiB4Z2Vu
ZS1tc2k6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lk
CgogZHJpdmVycy9wY2kvY29udHJvbGxlci9jYWRlbmNlL3BjaS1qNzIxZS5jICAgfCA2ICsrLS0t
LQogZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1idDEuYyAgICAgICAgfCA2ICsrLS0t
LQogZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1oaXN0Yi5jICAgICAgfCA2ICsrLS0t
LQogZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1pbnRlbC1ndy5jICAgfCA2ICsrLS0t
LQogZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLWVwLmMgICAgfCA4ICsrKy0t
LS0tCiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXRlZ3JhMTk0LmMgICB8IDggKysr
LS0tLS0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMgICAgICAgIHwgNiAr
Ky0tLS0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLW12ZWJ1LmMgICAgICAgICAgIHwgNiAr
Ky0tLS0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLXRlZ3JhLmMgICAgICAgICAgIHwgNiAr
Ky0tLS0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLXhnZW5lLW1zaS5jICAgICAgIHwgNiAr
Ky0tLS0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1hbHRlcmEtbXNpLmMgICAgIHwgNSAr
Ky0tLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLWFsdGVyYS5jICAgICAgICAgfCA2ICsr
LS0tLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLWJyY21zdGIuYyAgICAgICAgfCA2ICsr
LS0tLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLWhpc2ktZXJyb3IuYyAgICAgfCA2ICsr
LS0tLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLWlwcm9jLXBsYXRmb3JtLmMgfCA2ICsr
Ky0tLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLWlwcm9jLmMgICAgICAgICAgfCA0ICst
LS0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1pcHJvYy5oICAgICAgICAgIHwgMiArLQog
ZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLW1lZGlhdGVrLWdlbjMuYyAgfCA2ICsrLS0tLQog
ZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLW1lZGlhdGVrLmMgICAgICAgfCA2ICsrLS0tLQog
ZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLW10NzYyMS5jICAgICAgICAgfCA2ICsrLS0tLQog
ZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYyAgfCA2ICsrLS0tLQog
MjEgZmlsZXMgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKSwgODAgZGVsZXRpb25zKC0pCgpiYXNl
LWNvbW1pdDogZmUxNWMyNmVlMjZlZmExMTc0MWE3YjYzMmU5ZjIzYjAxYWNhNGNjNgotLSAKMi4z
OS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
