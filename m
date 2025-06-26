Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA638C7EE33
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jun 2025 22:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Message-Id:MIME-Version:Subject:Date
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MwRLem/oYlOdx0gTPZJhuwSJDpgSe0LxlrCIEZfhBoQ=; b=vErggc31sCCAfV
	H6RlFhu3T5xEngfizHYcA85MuKm2qtgyGz/EM9IGhj+0QU1z+pdvUGFC/9/lVHO76rMb0V1QROnbr
	+YeuTvtqgUqQeCmujQCGxtpRV4mClqNH9/Dw88lYl6gELuPqZg6WEwBIeDFgfmx6d0NcVDMzJawOv
	8Pv2qngf+6t48tAqIeAS9xuUgpviDF4wpYWv8PCzVCGFsCU2f4hu3pb7NMv74OJWx5AUGDiiJp+Cy
	mfGQQ3KtjnSfBZreBdTAcwPyMHda3T5trcgeUZeSAQpuSHERvCQPEKL5Mc9Nlbt/6ogye6bly6XW2
	R2O436Whdmb67yPBYaPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUvTw-0000000D01W-3haj;
	Thu, 26 Jun 2025 22:54:12 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUtPm-0000000Cl8I-3BHI;
	Thu, 26 Jun 2025 20:41:48 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750970492; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Xzuv5RIGJbAVtnPxiaF9JBXuk3JuHEIA512h8aWZ6kjfjB1WsIe3/cJ8IVmpNBFTjyGBSWDFTNvESEKRSXOVKHNodapUmg/3a0+vGJNMc/Ux0FJdiNaj40ffrxCZwSYgpSoYUeFP4VurFtquyspaUEZTba+dfp9xcEWBMvfZQJw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750970492; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=dkvlEaVeP24Afh8UAYlk8YS7UckDMj2JtAwIeCxutOA=; 
	b=jntwHK50ZZRME1c42JClO/uA2ru7WBxeFi1mgEl0k+KfRI/HC27xjCLn8tGUlEUoqxMH+IhcXc2msu1+tQ4zE63wxjJ44QS8nXVw27ySszSXWHw3Q+B/WNymm/4/BRT609Jy6EQO/jVfqi2tginAPnOuORkqMfBaUbLOsriIZWM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750970492;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:To:To:Cc:Cc:Reply-To;
	bh=dkvlEaVeP24Afh8UAYlk8YS7UckDMj2JtAwIeCxutOA=;
	b=a8VAvy4UjAVxhsR9otGCvjC585gT6fWSrFuPTIik2klmIicNuSdas/2kkoVhUDci
	A4/TNyi2qEmtRrD29OGcwHbdNA+3dycLB468F4kUCfzO33rXBtI2e8yQaYY3GXQ+uWQ
	WNwfiOw749nJ16eMQ30dpAByi5mNGkZRGmMzpGQ0=
Received: by mx.zohomail.com with SMTPS id 175097049056113.876333104436412;
	Thu, 26 Jun 2025 13:41:30 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 26 Jun 2025 22:41:18 +0200
Subject: [PATCH v2] arm64: defconfig: enable further Rockchip platform
 drivers
MIME-Version: 1.0
Message-Id: <20250626-rk3588-defconfig-v2-1-ae6720964b01@collabora.com>
X-B4-Tracking: v=1; b=H4sIAG6wXWgC/3WOQQ6CMBBFr0JmbQ0tFJCV9zAsSplCI7TaVoIh3
 N0KcenyTfLenxU8Oo0e6mQFh7P22poI7JSAHITpkeguMrCU8bRgBXH3jFcV6VBJa5TuSUk5ZqX
 qOM8lRO3hUOllT96agx0+X7EcjiO0wiORdpp0qBODSyC/OnyFQftg3Xt/aaa78X99poSS7CLoR
 eRU0opepR1H0VonznECmm3bPittv47lAAAA
X-Change-ID: 20250626-rk3588-defconfig-715e37fd554c
To: Heiko Stuebner <heiko@sntech.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_134146_862355_823C066A 
X-CRM114-Status: GOOD (  10.21  )
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
Cc: =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RW5hYmxlIHRoZSByb2NrY2hpcC1kZmkgZHJpdmVyIGFzIGEgbW9kdWxlLCB3aGljaCBpcyB1c2Vk
IG9uIFJLMzU4OCBhcwp3ZWxsIGFzIFJLMzU2OCBhbmQgUkszMzk5IHRvIG1lYXN1cmUgbWVtb3J5
IGJhbmR3aWR0aC4gRm9yIHRoaXMsIHdlIGFsc28KZW5hYmxlIFBNX0RFVkZSRVFfRVZFTlQsIHdo
aWNoIGlzIGEgcmVxdWlyZW1lbnQgZm9yIHRoaXMgZHJpdmVyLgoKQWxzbyBlbmFibGUgdGhlIHJv
Y2tjaGlwLXJnYSBkcml2ZXIgYXMgYSBtb2R1bGUsIHdoaWNoIGlzIHVzZWQgb24KdmFyaW91cyBS
b2NrY2hpcCBTb0NzLCBpbmNsdWRpbmcgUkszNTg4IGFuZCBSSzMzOTksIHRvIHByb3ZpZGUgMmQK
YWNjZWxlcmF0ZWQgaW1hZ2UgdHJhbnNmb3JtYXRpb25zIHRocm91Z2ggYSBWNEwyIGludGVyZmFj
ZS4KClN1Z2dlc3RlZC1ieTogTsOtY29sYXMgRi4gUi4gQS4gUHJhZG8gPG5mcmFwcmFkb0Bjb2xs
YWJvcmEuY29tPgpTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJh
dHRhcm9saUBjb2xsYWJvcmEuY29tPgotLS0KQ2hhbmdlcyBpbiB2MjoKLSBEcm9wIGV4cGxpY2l0
IFJvY2tjaGlwIEhhbnRybyBlbmFibGVtZW50LCBhcyB0aGlzIHNob3VsZCBhbHJlYWR5IGJlCiAg
YXV0b3NlbGVjdGVkIGFzIHRoZSBLY29uZmlnIG9wdGlvbidzIGRlZmF1bHQgaWYgSGFudHJvIGlz
IGVuYWJsZWQuCi0gQWxzbyBlbmFibGUgUE1fREVWRlJFUV9FVkVOVCwgd2hpY2ggaXMgYSBwcmVy
ZXF1aXNpdGUgdG8gcm9ja2NoaXAtZGZpLgotIE9yZGVyIHRoZSBkZWZjb25maWcgb3B0aW9ucyBh
dCB0aGUgY29ycmVjdCBsb2NhdGlvbnMsIGFzIHBlcgogIGBzYXZlZGVmY29uZmlnYC4KLSBMaW5r
IHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwNjI2LXJrMzU4OC1kZWZjb25m
aWctdjEtMS0zOWExOWE0MWMxODFAY29sbGFib3JhLmNvbQotLS0KIGFyY2gvYXJtNjQvY29uZmln
cy9kZWZjb25maWcgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgYi9hcmNoL2FybTY0L2NvbmZp
Z3MvZGVmY29uZmlnCmluZGV4IGUwNzFmOGY0NTYwN2RiZmQ4ZTAwYjkxNWIyNzk5OTk0OWVlMGZj
ODguLjkwNGI4YTMzMmY4Y2ViZDJmNWVlMGZlMjRkMGFhZjhiMTg2MGJmYzYgMTAwNjQ0Ci0tLSBh
L2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcKKysrIGIvYXJjaC9hcm02NC9jb25maWdzL2Rl
ZmNvbmZpZwpAQCAtODY3LDYgKzg2Nyw3IEBAIENPTkZJR19WSURFT19SRU5FU0FTX0ZDUD1tCiBD
T05GSUdfVklERU9fUkVORVNBU19GRFAxPW0KIENPTkZJR19WSURFT19SRU5FU0FTX1ZTUDE9bQog
Q09ORklHX1ZJREVPX1JDQVJfRFJJRj1tCitDT05GSUdfVklERU9fUk9DS0NISVBfUkdBPW0KIENP
TkZJR19WSURFT19TQU1TVU5HX0VYWU5PU19HU0M9bQogQ09ORklHX1ZJREVPX1NBTVNVTkdfUzVQ
X0pQRUc9bQogQ09ORklHX1ZJREVPX1NBTVNVTkdfUzVQX01GQz1tCkBAIC0xNTIwLDYgKzE1MjEs
OCBAQCBDT05GSUdfVElfU0NJX1BNX0RPTUFJTlM9eQogQ09ORklHX0FSTV9JTVhfQlVTX0RFVkZS
RVE9eQogQ09ORklHX0FSTV9JTVg4TV9ERFJDX0RFVkZSRVE9bQogQ09ORklHX0FSTV9NRURJQVRF
S19DQ0lfREVWRlJFUT1tCitDT05GSUdfUE1fREVWRlJFUV9FVkVOVD15CitDT05GSUdfREVWRlJF
UV9FVkVOVF9ST0NLQ0hJUF9ERkk9bQogQ09ORklHX0VYVENPTl9QVE41MTUwPW0KIENPTkZJR19F
WFRDT05fVVNCX0dQSU89eQogQ09ORklHX0VYVENPTl9VU0JDX0NST1NfRUM9eQoKLS0tCmJhc2Ut
Y29tbWl0OiA3ZTVlZTE1ODg4NmJiN2MyNDRhMzQ2MjNkZTZhNDEwYjYyMDIzZDYwCmNoYW5nZS1p
ZDogMjAyNTA2MjYtcmszNTg4LWRlZmNvbmZpZy03MTVlMzdmZDU1NGMKCkJlc3QgcmVnYXJkcywK
LS0gCk5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
