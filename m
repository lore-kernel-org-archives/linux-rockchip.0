Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 354C5C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Jan 2024 14:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+6NCEoerLRfg217JwsDTFxYTCO62jzaja7xdnSfzrbw=; b=aWEVvjSUySuEc0
	MZTOvTQFakGkV0PoXy9cCxWT0/aZ/gmtIR2/+aK7Lv2cU17gLluF+VNMnYRcmyROhHNt3/SNxQ8x6
	LMBHJSilbX0aHnVgdD3t/mOPprLQAp8ndEsdHyQKe+V2dFR4rXlxMArzQNx6Cq9AjbN3TSQ6ihci3
	i87TDfFu6hCiq9caJnhflzfM7AdhyXBDBoGpJZKotWnKwoNnogErj66tjxikG28/9Vv1Tyz2ZSPPq
	c+Xa7R/f8SHev/SY4ralrtpE+kIQ0CQvZ5sstlgrwotZBm0s87N8yMgHwiLn7LXXRkKr+ptiFq9mQ
	t37rLFC54AEKG9TzASZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rM7dx-001QmX-2T;
	Sat, 06 Jan 2024 14:27:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rM7du-001Qke-0d
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Jan 2024 14:27:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rM7df-00074I-2v; Sat, 06 Jan 2024 15:27:03 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rM7de-000pKj-83; Sat, 06 Jan 2024 15:27:02 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rM7de-004149-0W;
	Sat, 06 Jan 2024 15:27:02 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH] dt-bindings: pwm: rockchip: Allow "interrupts" prooperty
Date: Sat,  6 Jan 2024 15:26:55 +0100
Message-ID: <20240106142654.1262758-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=967; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=Mriijo/ycRG5GCW7t78UJUceaYg2G2vsBOIGskK9hfU=; b=owGbwMvMwMXY3/A7olbonx/jabUkhtSZyXrPlrj8FroT7dD7g+OcjerjDd9UjAWXcfDVT1sY9 CfrTYR3J6MxCwMjF4OsmCKLfeOaTKsqucjOtf8uwwxiZQKZwsDFKQATqRJh/1/QYJ4cvN3C5rHD TL+dfGc2T837k7jAMN7c2l0uQuqOI48JwzFDI+Nie52rv/pfh1W7mOUdFjymoxTd1uC91nGGdY+ fxMZ73xm7mL9W+Zqs5f0m+Gf3MiZNi636PZUyi3OqMnyUOx1XtN9+s/ijw4rY3urLd+MM+Dr0Qm 8/iuY9xf/MqfTpQhljO/soOdGKAJXV4ZdrZqgeqTzPebKBu/KW/4sJeg6zrs+vWSB3ed8On94d9 XIXHFeXe0y6ln5+VuZ7T5MrOuHNt59ekZ8SeZbt0Y0ds+vLWJRn7L88h0Pg8/lb9569D8r0ieVn E998qOzg1bKmmxbzqn7WrApjWrdwb074yQWdKvMs8wK1AA==
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240106_062718_231111_0882AA74 
X-CRM114-Status: UNSURE (   8.94  )
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

VGhpcyBmaXhlcyB0aGUgZHRic19jaGVjayBlcnJvcgoKCWFyY2gvYXJtL2Jvb3QvZHRzL3JvY2tj
aGlwL3J2MTEwOC1lbGdpbi1yMS5kdGI6IHB3bUAxMDI4MDAzMDogJ2ludGVycnVwdHMnIGRvZXMg
bm90IG1hdGNoIGFueSBvZiB0aGUgcmVnZXhlczogJ3BpbmN0cmwtWzAtOV0rJwoJZnJvbSBzY2hl
bWEgJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9wd20vcHdtLXJvY2tjaGlwLnlh
bWwjCgppbiBzZXZlcmFsIGRldmljZSB0cmVlcy4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9wd20tcm9ja2NoaXAueWFtbCB8IDMgKysrCiAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9wd20tcm9ja2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vcHdtLXJvY2tjaGlwLnlhbWwKaW5kZXggNjViZmI0OTJi
M2E0Li4wMzFhNDQ4YWEyYjMgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9wd20vcHdtLXJvY2tjaGlwLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3B3bS9wd20tcm9ja2NoaXAueWFtbApAQCAtNDUsNiArNDUsOSBAQCBwcm9w
ZXJ0aWVzOgogICBjbG9jay1uYW1lczoKICAgICBtYXhJdGVtczogMgogCisgIGludGVycnVwdHM6
CisgICAgbWF4SXRlbXM6IDEKKwogICAiI3B3bS1jZWxscyI6CiAgICAgZW51bTogWzIsIDNdCiAg
ICAgZGVzY3JpcHRpb246CgpiYXNlLWNvbW1pdDogZDczZjQ0NGQwNmZiOGE0MmE1YzA2MjM0NTNm
M2VhMWZlOTg4MDIyOQotLSAKMi40My4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
