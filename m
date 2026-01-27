Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38646CA6CAC
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 08:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K++U111uXTgpAYHKozlPlnn8rt7YqO7kKA4TtiD+Vmo=; b=IKaqGAPXgG94Do
	dqgzMjXi1AD7E/Dw2iiYRem2JByCpziigwjdtM2JsuBYLuL2Sdnz8JhGTQI2RMLaPFloB0/NEZon4
	ZX/oqko+aGgLbUtIuCxF4Ensh0hS4SyTA/tb9rAVn/yZ+NSUvobFHewEXzbDb2c53EraXIwaMjmYO
	MGYRhJNCpP7UwWyQyFt0CUmNvABVwhenTpV//KamQ88yVIsTGe1ap+5LTPPR+YHm8CzlAhCMLVWSH
	M5Z8i7ijLyl7BblkGD+UE3yDYexWQYNTODQCpI/d4rdsHdZLpr88vUMJMgjocPGAEVlHM4qww1N3A
	Zk0UfClziL3lJs+KzAJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkeho-0000000DrBq-1SrJ;
	Tue, 27 Jan 2026 08:45:48 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkehl-0000000Dr9b-3iRu;
	Tue, 27 Jan 2026 08:45:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1769503543;
	bh=LXx/D1nCkry29Rk9Vh351vGGsj2ZscF0eFlvEDYGTAo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=AF1AWMx284BUM9NkDMtHyeoHEbX5ukimC4znlO1N7PYE/il5x+lhlr36ASxseYS+b
	 61iYAYCoHzZykL2rrMUoA4UivT89gWproh36sS9/Jlv37DuDIozAgZV2ErM4uMiK6e
	 I5Ww8fa4m2bd7QSZ7G7RDGPbgfJrn/Okj2t2acDjJ53IVvbBrHNtGyo8z3rKnf/CYn
	 jFDOYw9t921/Nq179F+1lk0hBSE0MTntGTmLcfFN+ToSepRv4TNfOPfwkHiNl/I6mn
	 AVjriDv2EH0crKZiTXYfe3DD15r+5bF6eW5iEnjhjAqs2yHlYFUTnQhYCZIIC6blGT
	 4VsFvFu3PojDA==
Received: from localhost (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 62D5317E1352;
	Tue, 27 Jan 2026 09:45:43 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 27 Jan 2026 10:45:33 +0200
Subject: [PATCH v5 1/4] uapi: Provide DIV_ROUND_CLOSEST()
MIME-Version: 1.0
Message-Id: <20260127-rk3588-bgcolor-v5-1-b25aa8613211@collabora.com>
References: <20260127-rk3588-bgcolor-v5-0-b25aa8613211@collabora.com>
In-Reply-To: <20260127-rk3588-bgcolor-v5-0-b25aa8613211@collabora.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, 
 Haneen Mohammed <hamohammed.sa@gmail.com>, 
 Melissa Wen <melissa.srw@gmail.com>
Cc: Robert Mader <robert.mader@collabora.com>, kernel@collabora.com, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>, 
 Diederik de Haas <diederik@cknow-tech.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_004546_085255_275A5F29 
X-CRM114-Status: GOOD (  11.39  )
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
Ynk6IERpZWRlcmlrIGRlIEhhYXMgPGRpZWRlcmlrQGNrbm93LXRlY2guY29tPgpTaWduZWQtb2Zm
LWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29t
PgotLS0KIGluY2x1ZGUvbGludXgvbWF0aC5oICAgICAgIHwgMTggKy0tLS0tLS0tLS0tLS0tLS0t
CiBpbmNsdWRlL3VhcGkvbGludXgvY29uc3QuaCB8IDE3ICsrKysrKysrKysrKysrKysrCiAyIGZp
bGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2luY2x1ZGUvbGludXgvbWF0aC5oIGIvaW5jbHVkZS9saW51eC9tYXRoLmgKaW5kZXggNmRj
MWQxZDMyZmJjLi4xZThmYjNlZmJjOGMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvbWF0aC5o
CisrKyBiL2luY2x1ZGUvbGludXgvbWF0aC5oCkBAIC04OSwyMyArODksNyBAQAogfQkJCQkJCQlc
CiApCiAKLS8qCi0gKiBEaXZpZGUgcG9zaXRpdmUgb3IgbmVnYXRpdmUgZGl2aWRlbmQgYnkgcG9z
aXRpdmUgb3IgbmVnYXRpdmUgZGl2aXNvcgotICogYW5kIHJvdW5kIHRvIGNsb3Nlc3QgaW50ZWdl
ci4gUmVzdWx0IGlzIHVuZGVmaW5lZCBmb3IgbmVnYXRpdmUKLSAqIGRpdmlzb3JzIGlmIHRoZSBk
aXZpZGVuZCB2YXJpYWJsZSB0eXBlIGlzIHVuc2lnbmVkIGFuZCBmb3IgbmVnYXRpdmUKLSAqIGRp
dmlkZW5kcyBpZiB0aGUgZGl2aXNvciB2YXJpYWJsZSB0eXBlIGlzIHVuc2lnbmVkLgotICovCi0j
ZGVmaW5lIERJVl9ST1VORF9DTE9TRVNUKHgsIGRpdmlzb3IpKAkJCVwKLXsJCQkJCQkJXAotCXR5
cGVvZih4KSBfX3ggPSB4OwkJCQlcCi0JdHlwZW9mKGRpdmlzb3IpIF9fZCA9IGRpdmlzb3I7CQkJ
XAotCSgoKHR5cGVvZih4KSktMSkgPiAwIHx8CQkJCVwKLQkgKCh0eXBlb2YoZGl2aXNvcikpLTEp
ID4gMCB8fAkJCVwKLQkgKCgoX194KSA+IDApID09ICgoX19kKSA+IDApKSkgPwkJXAotCQkoKChf
X3gpICsgKChfX2QpIC8gMikpIC8gKF9fZCkpIDoJXAotCQkoKChfX3gpIC0gKChfX2QpIC8gMikp
IC8gKF9fZCkpOwlcCi19CQkJCQkJCVwKLSkKKyNkZWZpbmUgRElWX1JPVU5EX0NMT1NFU1QgX19L
RVJORUxfRElWX1JPVU5EX0NMT1NFU1QKIC8qCiAgKiBTYW1lIGFzIGFib3ZlIGJ1dCBmb3IgdTY0
IGRpdmlkZW5kcy4gZGl2aXNvciBtdXN0IGJlIGEgMzItYml0CiAgKiBudW1iZXIuCmRpZmYgLS1n
aXQgYS9pbmNsdWRlL3VhcGkvbGludXgvY29uc3QuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9jb25z
dC5oCmluZGV4IGI4ZjYyOWVmMTM1Zi4uNDcxODc3MzIyZjQ3IDEwMDY0NAotLS0gYS9pbmNsdWRl
L3VhcGkvbGludXgvY29uc3QuaAorKysgYi9pbmNsdWRlL3VhcGkvbGludXgvY29uc3QuaApAQCAt
NTAsNCArNTAsMjEgQEAKIAogI2RlZmluZSBfX0tFUk5FTF9ESVZfUk9VTkRfVVAobiwgZCkgKCgo
bikgKyAoZCkgLSAxKSAvIChkKSkKIAorLyoKKyAqIERpdmlkZSBwb3NpdGl2ZSBvciBuZWdhdGl2
ZSBkaXZpZGVuZCBieSBwb3NpdGl2ZSBvciBuZWdhdGl2ZSBkaXZpc29yCisgKiBhbmQgcm91bmQg
dG8gY2xvc2VzdCBpbnRlZ2VyLiBSZXN1bHQgaXMgdW5kZWZpbmVkIGZvciBuZWdhdGl2ZQorICog
ZGl2aXNvcnMgaWYgdGhlIGRpdmlkZW5kIHZhcmlhYmxlIHR5cGUgaXMgdW5zaWduZWQgYW5kIGZv
ciBuZWdhdGl2ZQorICogZGl2aWRlbmRzIGlmIHRoZSBkaXZpc29yIHZhcmlhYmxlIHR5cGUgaXMg
dW5zaWduZWQuCisgKi8KKyNkZWZpbmUgX19LRVJORUxfRElWX1JPVU5EX0NMT1NFU1QoeCwgZGl2
aXNvcikoCQlcCit7CQkJCQkJCVwKKwlfX3R5cGVvZl9fKHgpIF9feCA9IHg7CQkJCVwKKwlfX3R5
cGVvZl9fKGRpdmlzb3IpIF9fZCA9IGRpdmlzb3I7CQlcCisJKCgoX190eXBlb2ZfXyh4KSktMSkg
PiAwIHx8CQkJXAorCSAoKF9fdHlwZW9mX18oZGl2aXNvcikpLTEpID4gMCB8fAkJXAorCSAoKChf
X3gpID4gMCkgPT0gKChfX2QpID4gMCkpKSA/CQlcCisJCSgoKF9feCkgKyAoKF9fZCkgLyAyKSkg
LyAoX19kKSkgOglcCisJCSgoKF9feCkgLSAoKF9fZCkgLyAyKSkgLyAoX19kKSk7CVwKK30JCQkJ
CQkJXAorKQogI2VuZGlmIC8qIF9VQVBJX0xJTlVYX0NPTlNUX0ggKi8KCi0tIAoyLjUyLjAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
