Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7254D46C16
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jan 2026 00:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yDjKSPRpMItyST3W8GxdfaMUWheHuKP4r+a+beVjx4M=; b=tPNGFlPlxkNDNa
	QM7bv6tlOnKLBgCSHiiZLanS0aqI0vMDbgZKN3qJQD3t4SJCw75UO0Mab6Vg50vSlI9KYTJaGTSY/
	zm6U9D2ggqUxfPX1YJdWBe4m2QlhuzrFh7KWN50OzeNazsmw/1DWP5RtmYtjuIvEWBWYaItHaJ/qz
	lzEUfDrJqgikrXGUACL+xj62DhhhesA+iX6nMk99r/peVWqTYncXczrheS3R4CCRmFOd3gFTO/hCQ
	jtl6pfrKzdgH3D96U9JeAF2FDSqTR9ogsayjlwCMEwyQPEu5f2g73XhOaapl0YeTGYS/1w/BRr5oZ
	sMQ5v4W0GaMoYWE51/rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlGNe-0000000H0vR-2Lut;
	Thu, 29 Jan 2026 00:59:30 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlGNZ-0000000H0ro-171n;
	Thu, 29 Jan 2026 00:59:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1769648361;
	bh=SK9DAHI42+HcAqGDUXbY4PTrHz4UAIk9djwlfz1sA7A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Uh6OiSCEOqmkxxPip+2nXd73HCxtJ+rsOvl1nPQSibgx5wi0troRQAVzqDbkuw1w5
	 9kZfc7uXGjiFhACmADtgK7zAxHxPucVUYYbGoHhGQDEDMj0lP/fTljLbzJsFNU5XDm
	 NUTcPXehgstRegpoKQYZu5AVYIrUT47bBq1UKPZq5BB215bfxVo7ZjoMLcZtsiOzbb
	 rciOltonep3rxOntUKoaCYkG4GqfpQx1WEnKTKRuor8xY4Dc6PnSZvNV/NCm5Nn1rH
	 5gW2RDKsIN5JMGZVgNFrmA8Pa0XbgNJLWmMxqa6Eijs/qetWIGLEKE6ZUt1AimM7lm
	 epB/1Wi2Hyt5A==
Received: from localhost (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BF97117E0443;
	Thu, 29 Jan 2026 01:59:21 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 29 Jan 2026 02:58:51 +0200
Subject: [PATCH v6 1/4] uapi: Provide DIV_ROUND_CLOSEST()
MIME-Version: 1.0
Message-Id: <20260129-rk3588-bgcolor-v6-1-c15f755a4055@collabora.com>
References: <20260129-rk3588-bgcolor-v6-0-c15f755a4055@collabora.com>
In-Reply-To: <20260129-rk3588-bgcolor-v6-0-c15f755a4055@collabora.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, 
 Haneen Mohammed <hamohammed.sa@gmail.com>, 
 Melissa Wen <melissa.srw@gmail.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Robert Mader <robert.mader@collabora.com>, kernel@collabora.com, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>, 
 Diederik de Haas <diederik@cknow-tech.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260128_165925_476963_4D78E56E 
X-CRM114-Status: GOOD (  11.41  )
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

Q3VycmVudGx5IERJVl9ST1VORF9DTE9TRVNUKCkgaXMgb25seSBhdmFpbGFibGUgZm9yIHRoZSBr
ZXJuZWwgdmlhCmluY2x1ZGUvbGludXgvbWF0aC5oLgoKRXhwb3NlIGl0IHRvIHVzZXJsYW5kIGFz
IHdlbGwgYnkgYWRkaW5nIF9fS0VSTkVMX0RJVl9ST1VORF9DTE9TRVNUKCkgYXMKYSBjb21tb24g
ZGVmaW5pdGlvbiBpbiB1YXBpLgoKQWRkaXRpb25hbGx5LCBlbnN1cmUgaXQgYWxsb3dzIGJ1aWxk
aW5nIElTTyBDIGFwcGxpY2F0aW9ucyBieSBzd2l0Y2hpbmcKZnJvbSB0aGUgJ3R5cGVvZicgR05V
IGV4dGVuc2lvbiB0byB0aGUgSVNPLWZyaWVuZGx5IF9fdHlwZW9mX18uCgpSZXZpZXdlZC1ieTog
TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8gPG5mcmFwcmFkb0Bjb2xsYWJvcmEuY29tPgpUZXN0ZWQt
Ynk6IERpZWRlcmlrIGRlIEhhYXMgPGRpZWRlcmlrQGNrbm93LXRlY2guY29tPgpBY2tlZC1ieTog
QW5keSBTaGV2Y2hlbmtvIDxhbmRyaXkuc2hldmNoZW5rb0BsaW51eC5pbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxy
ZWdub0Bjb2xsYWJvcmEuY29tPgpTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNy
aXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgotLS0KIGluY2x1ZGUvbGludXgvbWF0aC5o
ICAgICAgIHwgMTggKy0tLS0tLS0tLS0tLS0tLS0tCiBpbmNsdWRlL3VhcGkvbGludXgvY29uc3Qu
aCB8IDE3ICsrKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMo
KyksIDE3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbWF0aC5oIGIv
aW5jbHVkZS9saW51eC9tYXRoLmgKaW5kZXggNmRjMWQxZDMyZmJjLi4xZThmYjNlZmJjOGMgMTAw
NjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvbWF0aC5oCisrKyBiL2luY2x1ZGUvbGludXgvbWF0aC5o
CkBAIC04OSwyMyArODksNyBAQAogfQkJCQkJCQlcCiApCiAKLS8qCi0gKiBEaXZpZGUgcG9zaXRp
dmUgb3IgbmVnYXRpdmUgZGl2aWRlbmQgYnkgcG9zaXRpdmUgb3IgbmVnYXRpdmUgZGl2aXNvcgot
ICogYW5kIHJvdW5kIHRvIGNsb3Nlc3QgaW50ZWdlci4gUmVzdWx0IGlzIHVuZGVmaW5lZCBmb3Ig
bmVnYXRpdmUKLSAqIGRpdmlzb3JzIGlmIHRoZSBkaXZpZGVuZCB2YXJpYWJsZSB0eXBlIGlzIHVu
c2lnbmVkIGFuZCBmb3IgbmVnYXRpdmUKLSAqIGRpdmlkZW5kcyBpZiB0aGUgZGl2aXNvciB2YXJp
YWJsZSB0eXBlIGlzIHVuc2lnbmVkLgotICovCi0jZGVmaW5lIERJVl9ST1VORF9DTE9TRVNUKHgs
IGRpdmlzb3IpKAkJCVwKLXsJCQkJCQkJXAotCXR5cGVvZih4KSBfX3ggPSB4OwkJCQlcCi0JdHlw
ZW9mKGRpdmlzb3IpIF9fZCA9IGRpdmlzb3I7CQkJXAotCSgoKHR5cGVvZih4KSktMSkgPiAwIHx8
CQkJCVwKLQkgKCh0eXBlb2YoZGl2aXNvcikpLTEpID4gMCB8fAkJCVwKLQkgKCgoX194KSA+IDAp
ID09ICgoX19kKSA+IDApKSkgPwkJXAotCQkoKChfX3gpICsgKChfX2QpIC8gMikpIC8gKF9fZCkp
IDoJXAotCQkoKChfX3gpIC0gKChfX2QpIC8gMikpIC8gKF9fZCkpOwlcCi19CQkJCQkJCVwKLSkK
KyNkZWZpbmUgRElWX1JPVU5EX0NMT1NFU1QgX19LRVJORUxfRElWX1JPVU5EX0NMT1NFU1QKIC8q
CiAgKiBTYW1lIGFzIGFib3ZlIGJ1dCBmb3IgdTY0IGRpdmlkZW5kcy4gZGl2aXNvciBtdXN0IGJl
IGEgMzItYml0CiAgKiBudW1iZXIuCmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvY29u
c3QuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9jb25zdC5oCmluZGV4IGI4ZjYyOWVmMTM1Zi4uYjdl
YjE3NmFhNmU4IDEwMDY0NAotLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvY29uc3QuaAorKysgYi9p
bmNsdWRlL3VhcGkvbGludXgvY29uc3QuaApAQCAtNTAsNCArNTAsMjEgQEAKIAogI2RlZmluZSBf
X0tFUk5FTF9ESVZfUk9VTkRfVVAobiwgZCkgKCgobikgKyAoZCkgLSAxKSAvIChkKSkKIAorLyoK
KyAqIERpdmlkZSBwb3NpdGl2ZSBvciBuZWdhdGl2ZSBkaXZpZGVuZCBieSBwb3NpdGl2ZSBvciBu
ZWdhdGl2ZSBkaXZpc29yCisgKiBhbmQgcm91bmQgdG8gY2xvc2VzdCBpbnRlZ2VyLiBSZXN1bHQg
aXMgdW5kZWZpbmVkIGZvciBuZWdhdGl2ZQorICogZGl2aXNvcnMgaWYgdGhlIGRpdmlkZW5kIHZh
cmlhYmxlIHR5cGUgaXMgdW5zaWduZWQgYW5kIGZvciBuZWdhdGl2ZQorICogZGl2aWRlbmRzIGlm
IHRoZSBkaXZpc29yIHZhcmlhYmxlIHR5cGUgaXMgdW5zaWduZWQuCisgKi8KKyNkZWZpbmUgX19L
RVJORUxfRElWX1JPVU5EX0NMT1NFU1QoeCwgZGl2aXNvcikoewlcCisJX190eXBlb2ZfXyh4KSBf
X3ggPSB4OwkJCQlcCisJX190eXBlb2ZfXyhkaXZpc29yKSBfX2QgPSBkaXZpc29yOwkJXAorCQkJ
CQkJCVwKKwkoKChfX3R5cGVvZl9fKHgpKS0xKSA+IDAgfHwJCQlcCisJICgoX190eXBlb2ZfXyhk
aXZpc29yKSktMSkgPiAwIHx8CQlcCisJICgoKF9feCkgPiAwKSA9PSAoKF9fZCkgPiAwKSkpID8J
CVwKKwkJKCgoX194KSArICgoX19kKSAvIDIpKSAvIChfX2QpKSA6CVwKKwkJKCgoX194KSAtICgo
X19kKSAvIDIpKSAvIChfX2QpKTsJXAorfSkKKwogI2VuZGlmIC8qIF9VQVBJX0xJTlVYX0NPTlNU
X0ggKi8KCi0tIAoyLjUyLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
