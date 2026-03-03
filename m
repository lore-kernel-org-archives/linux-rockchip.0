Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B8ECEDEBEE
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 19:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2DOdCPx7xlOgEpsa5Ds4ymgJB0e/s60fcQ5LbTuHEM=; b=dgUKF8Q4ieD4wH
	FlVCs8ehe7CL2+qP9zgmij1U7W5UJ6rUGdE12P4dIEbljWhvQFFwrI4JTnHNZ8+USc+AIgzLw+1G/
	e/JFLEy5T4Ut0g+luUHe+Svmno5nMIj7XgldD17/aWNnBV+CmgJtPX2X5PeZpJQWGmBfa0BwKZzDQ
	PzsgyPfxco/L1QXhkInsv/V4Etoqe7wfznnsagGhkcJWzjcE53L+0jUYOFbCJVrfjHE1/s/LvaQ8v
	S8QG0UpQmb1QtvLz1iFxdsbesBXW5PjcLxLlIy3RpT1cKF99clQGAWwsI6XOH1u9RqEe1C+jxcSU8
	BUjhptu36zaOwvVBmTKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxVMV-0000000FmeZ-19FK;
	Tue, 03 Mar 2026 19:24:55 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxVMS-0000000Fmd1-0FJt;
	Tue, 03 Mar 2026 19:24:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772565889;
	bh=xeVIe8cmrntR0enuK392UB2SXROYBNmtYamPiBlWwyw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hDTgpViRIzjWpaz1Mps9ZjamKCPPNQHP0C88T3U0lWKkoj9BA8x1d3Rajzzdr3Lvl
	 LkhuzDgvqNhUgpOmmK9kxRLhJpybSLauyctDOMNvEP3LdphzPkiHfvHv0l9EOfL9q0
	 z9iHtlv6l236IN/NSmesqHI9VEYLYuhX90Ocu4beSlF9BexmHg29ncS986NLQcBOLx
	 +d4uvye0w6FzKiM8S56yQjxiQU1l4yNcrI1+nF81YSnVDuctygRNwfyyv7hC/GrkBQ
	 eszX/23EeXOgdt+bj63HRn5UlZhnXw63izI3VR69LgFknCzdyxRlu3fTSjwuEEpJXB
	 RqLxk9vtr04uQ==
Received: from localhost (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B0A7417E0EB2;
	Tue,  3 Mar 2026 20:24:49 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 03 Mar 2026 21:24:17 +0200
Subject: [PATCH v8 1/4] uapi: Provide DIV_ROUND_CLOSEST()
MIME-Version: 1.0
Message-Id: <20260303-rk3588-bgcolor-v8-1-fee377037ad1@collabora.com>
References: <20260303-rk3588-bgcolor-v8-0-fee377037ad1@collabora.com>
In-Reply-To: <20260303-rk3588-bgcolor-v8-0-fee377037ad1@collabora.com>
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
X-CRM114-CacheID: sfid-20260303_112452_268433_07D72CE0 
X-CRM114-Status: GOOD (  11.34  )
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
aCB8IDE4ICsrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25z
KCspLCAxNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21hdGguaCBi
L2luY2x1ZGUvbGludXgvbWF0aC5oCmluZGV4IDZkYzFkMWQzMmZiYy4uMWU4ZmIzZWZiYzhjIDEw
MDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L21hdGguaAorKysgYi9pbmNsdWRlL2xpbnV4L21hdGgu
aApAQCAtODksMjMgKzg5LDcgQEAKIH0JCQkJCQkJXAogKQogCi0vKgotICogRGl2aWRlIHBvc2l0
aXZlIG9yIG5lZ2F0aXZlIGRpdmlkZW5kIGJ5IHBvc2l0aXZlIG9yIG5lZ2F0aXZlIGRpdmlzb3IK
LSAqIGFuZCByb3VuZCB0byBjbG9zZXN0IGludGVnZXIuIFJlc3VsdCBpcyB1bmRlZmluZWQgZm9y
IG5lZ2F0aXZlCi0gKiBkaXZpc29ycyBpZiB0aGUgZGl2aWRlbmQgdmFyaWFibGUgdHlwZSBpcyB1
bnNpZ25lZCBhbmQgZm9yIG5lZ2F0aXZlCi0gKiBkaXZpZGVuZHMgaWYgdGhlIGRpdmlzb3IgdmFy
aWFibGUgdHlwZSBpcyB1bnNpZ25lZC4KLSAqLwotI2RlZmluZSBESVZfUk9VTkRfQ0xPU0VTVCh4
LCBkaXZpc29yKSgJCQlcCi17CQkJCQkJCVwKLQl0eXBlb2YoeCkgX194ID0geDsJCQkJXAotCXR5
cGVvZihkaXZpc29yKSBfX2QgPSBkaXZpc29yOwkJCVwKLQkoKCh0eXBlb2YoeCkpLTEpID4gMCB8
fAkJCQlcCi0JICgodHlwZW9mKGRpdmlzb3IpKS0xKSA+IDAgfHwJCQlcCi0JICgoKF9feCkgPiAw
KSA9PSAoKF9fZCkgPiAwKSkpID8JCVwKLQkJKCgoX194KSArICgoX19kKSAvIDIpKSAvIChfX2Qp
KSA6CVwKLQkJKCgoX194KSAtICgoX19kKSAvIDIpKSAvIChfX2QpKTsJXAotfQkJCQkJCQlcCi0p
CisjZGVmaW5lIERJVl9ST1VORF9DTE9TRVNUIF9fS0VSTkVMX0RJVl9ST1VORF9DTE9TRVNUCiAv
KgogICogU2FtZSBhcyBhYm92ZSBidXQgZm9yIHU2NCBkaXZpZGVuZHMuIGRpdmlzb3IgbXVzdCBi
ZSBhIDMyLWJpdAogICogbnVtYmVyLgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L2Nv
bnN0LmggYi9pbmNsdWRlL3VhcGkvbGludXgvY29uc3QuaAppbmRleCBiOGY2MjllZjEzNWYuLjU2
NWYzMDliOWRmOCAxMDA2NDQKLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L2NvbnN0LmgKKysrIGIv
aW5jbHVkZS91YXBpL2xpbnV4L2NvbnN0LmgKQEAgLTUwLDQgKzUwLDIyIEBACiAKICNkZWZpbmUg
X19LRVJORUxfRElWX1JPVU5EX1VQKG4sIGQpICgoKG4pICsgKGQpIC0gMSkgLyAoZCkpCiAKKy8q
CisgKiBEaXZpZGUgcG9zaXRpdmUgb3IgbmVnYXRpdmUgZGl2aWRlbmQgYnkgcG9zaXRpdmUgb3Ig
bmVnYXRpdmUgZGl2aXNvcgorICogYW5kIHJvdW5kIHRvIGNsb3Nlc3QgaW50ZWdlci4gUmVzdWx0
IGlzIHVuZGVmaW5lZCBmb3IgbmVnYXRpdmUKKyAqIGRpdmlzb3JzIGlmIHRoZSBkaXZpZGVuZCB2
YXJpYWJsZSB0eXBlIGlzIHVuc2lnbmVkIGFuZCBmb3IgbmVnYXRpdmUKKyAqIGRpdmlkZW5kcyBp
ZiB0aGUgZGl2aXNvciB2YXJpYWJsZSB0eXBlIGlzIHVuc2lnbmVkLgorICovCisjZGVmaW5lIF9f
S0VSTkVMX0RJVl9ST1VORF9DTE9TRVNUKHgsIGRpdmlzb3IpCQlcCisoewkJCQkJCQlcCisJX190
eXBlb2ZfXyh4KSBfX3ggPSB4OwkJCQlcCisJX190eXBlb2ZfXyhkaXZpc29yKSBfX2QgPSBkaXZp
c29yOwkJXAorCQkJCQkJCVwKKwkoKChfX3R5cGVvZl9fKHgpKS0xKSA+IDAgfHwJCQlcCisJICgo
X190eXBlb2ZfXyhkaXZpc29yKSktMSkgPiAwIHx8CQlcCisJICgoKF9feCkgPiAwKSA9PSAoKF9f
ZCkgPiAwKSkpID8JCVwKKwkJKCgoX194KSArICgoX19kKSAvIDIpKSAvIChfX2QpKSA6CVwKKwkJ
KCgoX194KSAtICgoX19kKSAvIDIpKSAvIChfX2QpKTsJXAorfSkKKwogI2VuZGlmIC8qIF9VQVBJ
X0xJTlVYX0NPTlNUX0ggKi8KCi0tIAoyLjUyLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
