Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D80DFC369A2
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 00:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwXpEZ+l66t0Y8d3/8RbSVJU6zVRS51Urwqd1+o91X0=; b=Oob1TyIDeUIlS/
	hg7VQ5O9jEKEpC1PNhCXmErx93I3uqdvdIZaSQ2CY9tbkkp9mdFpQnn4JkHVOfp4iOF4OHDcTl/nr
	+o457iTUuj/3yJ51Dk3kulHyh0wUCAnfybkKeOL0xWX+Zn6863m1RsMVBmS6ZMF0n/GDJXudjLwVq
	T7bvvVbYTssBzFZ5LIZgPwp2yFtZfPsXG/iQhR4A9xerlkhLqbYIEcVZ6kIytP6ohfVnnufZZNoYT
	Vvz2C9Pq9/2hbq028nY3cGhLatBoIoQTX+SPPGwzUTH1c5j2H4vIIdCmLbfmWhQGt1vyqu/+BJk87
	8kGhufQbdLaJe1aekEmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2flg-00000008prM-2Lly;
	Thu, 10 Apr 2025 00:27:44 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2fld-00000008pqj-0z3P;
	Thu, 10 Apr 2025 00:27:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=FU89nmJGK3MmjRRDkrqt7x0SrwcewmRIp34YsV8rY2I=; b=J
	MHP1iYrpD0s/uF5ggxfuUkGoVU9GPlmMFACuKSEnJP4OEXl3kzWhCAJ3OcjU+Rl6
	cQsdzCuDmiR2E21CY5nYOZ2v6ukQVTvwMVylRbtCSqqSblSTLoEvaayxLC7NxNgg
	NMvO+LrrCZy/Zs5frNwUgrcG42olsWYYWUJl1jRGeg=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-131 (Coremail) ; Thu, 10 Apr 2025 08:27:16 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Thu, 10 Apr 2025 08:27:16 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Nicolas Dufresne" <nicolas.dufresne@collabora.com>
Cc: "Benjamin Gaignard" <benjamin.gaignard@collabora.com>,
	"Philipp Zabel" <p.zabel@pengutronix.de>,
	"Mauro Carvalho Chehab" <mchehab@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re:[PATCH] media: verisilicono: Enable NV15 support for Rockchip
 VDPU981
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <20250409-b4-hantro-nv15-support-v1-1-7e11e47fd0c9@collabora.com>
References: <20250409-b4-hantro-nv15-support-v1-1-7e11e47fd0c9@collabora.com>
X-NTES-SC: AL_Qu2fBv6fu0Ao4CWfYelSzDJG5Lh7O6vv+JRShMQdW/AxqTHp1CMpUFZ4O3zE3sliJbM7Es2CSj5lxTzXEBWW
MIME-Version: 1.0
Message-ID: <7b70a71a.448.1961d1808e5.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: gygvCgDnT3lkEPdne_CRAA--.25738W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAkqXmf3AWfu2wABsX
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_172741_588963_C112C8B3 
X-CRM114-Status: UNSURE (   6.80  )
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

CkhpIE5pY29sYXPvvIwKICAgICAgVHlwbyBpbiBzdWJqZWN077yfIHMvdmVyaXNpbGljb25vL3Zl
cmlzaWxpY29uLyAgICAgIAoKQXQgMjAyNS0wNC0xMCAwMzozMDowOSwgIk5pY29sYXMgRHVmcmVz
bmUiIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+VGhpcyBpcyBhICJj
dXN0b21lciIgZm9ybWF0LCB0aG91Z2ggb24gUm9ja2NoaXAgUkszNTg4IGl0IGhhcyBiZWVuCj52
ZXJpZmllZCB0byBiZSBOVjE1IGZvcm1hdCwgd2hpY2ggbWF0Y2hlcyB3aGF0IHRoZSBHUFUgYW5k
IGRpc3BsYXkKPmhhbmRsZXMgaGFzIDEwYml0IHBpeGVsIGZvcm1hdHMuCj4KPlNpZ25lZC1vZmYt
Ynk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KPi0t
LQo+IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYyAgICAg
ICAgICAgfCAgMSArCj4gLi4uL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9o
d19hdjFfZGVjLmMgICAgICB8ICA0ICsrKysKPiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL3JvY2tjaGlwX3ZwdV9ody5jICAgICAgIHwgMTQgKysrKysrKysrKysrKysKPiAzIGZp
bGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKPgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYyBiL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+aW5kZXggMmJjZTk0MGE1ODIyN2MyYmZl
ZjJiYzMzNDM5OTJlNDU4OGFiMzZhNC4uN2MzNTE1Y2Y3ZDY0YTA5MGFkZmI4ZDhhZmYzNjhmOWE2
MTdmOGM4YSAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
aGFudHJvX3Y0bDIuYwo+KysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9o
YW50cm9fdjRsMi5jCj5AQCAtNzcsNiArNzcsNyBAQCBpbnQgaGFudHJvX2dldF9mb3JtYXRfZGVw
dGgodTMyIGZvdXJjYykKPiAJc3dpdGNoIChmb3VyY2MpIHsKPiAJY2FzZSBWNEwyX1BJWF9GTVRf
UDAxMDoKPiAJY2FzZSBWNEwyX1BJWF9GTVRfUDAxMF80TDQ6Cj4rCWNhc2UgVjRMMl9QSVhfRk1U
X05WMTU6Cj4gCWNhc2UgVjRMMl9QSVhfRk1UX05WMTVfNEw0Ogo+IAkJcmV0dXJuIDEwOwo+IAlk
ZWZhdWx0Ogo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
cm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYwo+aW5kZXggNjliNWQ5ZTEyOTI2
ZmI0MDhjMDhmOGJhMjEzOWQwNWJhNDQzODliNy4uZTQ3MDNiYjZiZTdjMTc1YTg5YzBiODg2OGNm
MmVhZmI4NGE4NzJlZCAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNp
bGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYwo+KysrIGIvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jCj5AQCAtMjIw
Miw2ICsyMjAyLDEwIEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3ZwdTk4MV9wb3N0cHJvY19lbmFi
bGUoc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPiAJY2FzZSBWNEwyX1BJWF9GTVRfTlYxMjoKPiAJ
CWhhbnRyb19yZWdfd3JpdGUodnB1LCAmYXYxX3BwX291dF9mb3JtYXQsIDMpOwo+IAkJYnJlYWs7
Cj4rCWNhc2UgVjRMMl9QSVhfRk1UX05WMTU6Cj4rCQkvKiB0aGlzIG1hcHBpbmcgaXMgUksgc3Bl
Y2lmaWMgKi8KPisJCWhhbnRyb19yZWdfd3JpdGUodnB1LCAmYXYxX3BwX291dF9mb3JtYXQsIDEw
KTsKPisJCWJyZWFrOwo+IAlkZWZhdWx0Ogo+IAkJaGFudHJvX3JlZ193cml0ZSh2cHUsICZhdjFf
cHBfb3V0X2Zvcm1hdCwgMCk7Cj4gCX0KPmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdV9ody5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHVfaHcuYwo+aW5kZXggOTY0MTIyZTdjMzU1OTM0Y2Q4
MGViNDQyMjE5ZjZiYTUxYmJhOGI3MS4uZjdjNGExNzYxNjdiNDBmZTc5ZWM1YTY3NTlkZmY4YTc3
ZTg0OWFlMyAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
cm9ja2NoaXBfdnB1X2h3LmMKPisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGlj
b24vcm9ja2NoaXBfdnB1X2h3LmMKPkBAIC05Miw2ICs5MiwyMCBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGhhbnRyb19mbXQgcm9ja2NoaXBfdnB1OTgxX3Bvc3Rwcm9jX2ZtdHNbXSA9IHsKPiAJCQku
c3RlcF9oZWlnaHQgPSBNQl9ESU0sCj4gCQl9LAo+IAl9LAo+Kwl7Cj4rCQkuZm91cmNjID0gVjRM
Ml9QSVhfRk1UX05WMTUsCj4rCQkuY29kZWNfbW9kZSA9IEhBTlRST19NT0RFX05PTkUsCj4rCQku
bWF0Y2hfZGVwdGggPSB0cnVlLAo+KwkJLnBvc3Rwcm9jZXNzZWQgPSB0cnVlLAo+KwkJLmZybXNp
emUgPSB7Cj4rCQkJLm1pbl93aWR0aCA9IFJPQ0tDSElQX1ZQVTk4MV9NSU5fU0laRSwKPisJCQku
bWF4X3dpZHRoID0gRk1UXzRLX1dJRFRILAo+KwkJCS5zdGVwX3dpZHRoID0gTUJfRElNLAo+KwkJ
CS5taW5faGVpZ2h0ID0gUk9DS0NISVBfVlBVOTgxX01JTl9TSVpFLAo+KwkJCS5tYXhfaGVpZ2h0
ID0gRk1UXzRLX0hFSUdIVCwKPisJCQkuc3RlcF9oZWlnaHQgPSBNQl9ESU0sCj4rCQl9LAo+Kwl9
LAo+IAl7Cj4gCQkuZm91cmNjID0gVjRMMl9QSVhfRk1UX1AwMTAsCj4gCQkuY29kZWNfbW9kZSA9
IEhBTlRST19NT0RFX05PTkUsCj4KPi0tLQo+YmFzZS1jb21taXQ6IDlkZGMzZDZjMTZlYTI1ODc4
OThhMzE1ZjIwZjdiOGZiZDc5MWRjMWIKPmNoYW5nZS1pZDogMjAyNTA0MDMtYjQtaGFudHJvLW52
MTUtc3VwcG9ydC0wN2RlZjRlN2E1MzcKPgo+QmVzdCByZWdhcmRzLAo+LS0gCj5OaWNvbGFzIER1
ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cj4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
