Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ADC7C25B79
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 May 2024 09:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sZPYfk82CBeieqGVSCzUcFRNqc/mvow6DqJRFOTE96Q=; b=gv2asKO/CXpsUd
	Bl4x8d3TNWb5Lnk0FJH6aXNSsONPHfd15BKSK2+4na4YP21cmr1m4sx5WXgwrDqxmL+5qWv+y8s83
	CuXEfAaol0NQTo2ATkQMXwxC0JXmfSDfJg6fZZwgkJ3qJrWloMtgWlHGE9AJCM2JwLVNhq8f40olZ
	kl69PwO02/rxZL2agfnRIC/snuLLpkhkZwG4lsPtXstvpezKk311qtjM5kL6mX78hiivVCJkWyoye
	Zcp/8GCAmaS4P1u9Y8nzEzzw9UP54IJ5Za/m+0WGqkQhe6933vNazy6i/5qDN1GswQkqAOOH8JXww
	OFJ6ZNMPTAhv+9ciD4Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sARBV-00000008Y0p-0Pvk;
	Fri, 24 May 2024 09:25:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sARBS-00000008XzE-2P0h
	for linux-rockchip@lists.infradead.org;
	Fri, 24 May 2024 09:25:55 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1sARBB-0007SY-J8; Fri, 24 May 2024 11:25:37 +0200
From: =?UTF-8?q?Sven=20P=C3=BCschel?= <s.pueschel@pengutronix.de>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	daniel@ffwll.ch
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	Michael Tretter <m.tretter@pengutronix.de>,
	=?UTF-8?q?Sven=20P=C3=BCschel?= <s.pueschel@pengutronix.de>
Subject: [PATCH] drm/rockchip: Set DMA max segment size
Date: Fri, 24 May 2024 11:23:59 +0200
Message-Id: <20240524092400.2019587-1-s.pueschel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240524_022554_613361_149206FC 
X-CRM114-Status: UNSURE (   7.53  )
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

RnJvbTogTWljaGFlbCBUcmV0dGVyIDxtLnRyZXR0ZXJAcGVuZ3V0cm9uaXguZGU+CgpUaGVyZSBp
cyBubyByZWFzb24gdG8gbGltaXQgdGhlIERNQSBtYXggc2VnbWVudCBzaXplIGZvciB0aGUgUm9j
a2NoaXAKVk9QIGFuZCBWT1AyLiBTZXQgaXQgdG8gdGhlIG1heGltdW0uCgpUaGlzIHByZXZlbnRz
IHRoZSBmb2xsb3dpbmcgd2FybmluZyB3aGVuIERNQSBBUEkgZGVidWdnaW5nIGlzIGVuYWJsZWQK
d2l0aCBDT05GSUdfRE1BX0FQSV9ERUJVR19TRz15OgoKCURNQS1BUEk6IHJvY2tjaGlwLWRybSBk
aXNwbGF5LXN1YnN5c3RlbTogbWFwcGluZyBzZyBzZWdtZW50IGxvbmdlciB0aGFuIGRldmljZSBj
bGFpbXMgdG8gc3VwcG9ydCBbbGVuPTIwODg5Nl0gW21heD02NTUzNl0KClNpZ25lZC1vZmYtYnk6
IE1pY2hhZWwgVHJldHRlciA8bS50cmV0dGVyQHBlbmd1dHJvbml4LmRlPgpTaWduZWQtb2ZmLWJ5
OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgfCAyICsrCiAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fZHJ2LmMKaW5kZXggYWI1NWQ3MTMyNTUwLi4wZjkzZWZkMWE4ZmEgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYwpAQCAtNjcsNiArNjcsOCBAQCBpbnQg
cm9ja2NoaXBfZHJtX2RtYV9hdHRhY2hfZGV2aWNlKHN0cnVjdCBkcm1fZGV2aWNlICpkcm1fZGV2
LAogCQl9CiAJfQogCisJZG1hX3NldF9tYXhfc2VnX3NpemUoZHJtX2Rldi0+ZGV2LCBVSU5UX01B
WCk7CisKIAlyZXQgPSBpb21tdV9hdHRhY2hfZGV2aWNlKHByaXZhdGUtPmRvbWFpbiwgZGV2KTsK
IAlpZiAocmV0KSB7CiAJCURSTV9ERVZfRVJST1IoZGV2LCAiRmFpbGVkIHRvIGF0dGFjaCBpb21t
dSBkZXZpY2VcbiIpOwoKYmFzZS1jb21taXQ6IDM5YmMyN2JkNjg4MDY2YTYzZTU2ZjdmNjRhZDM0
ZmFlMDNmYmUzYjgKLS0gCjIuMzkuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
