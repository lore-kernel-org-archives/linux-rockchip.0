Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 551EDEDEBEC
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 19:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJGfZZ7t+keos6tXO1T2N7vjgl9sxCm9NqRxImIdg2k=; b=VMkADqI8MxnLHf
	4hskXLvPXcViu7+eKUycpGDnxmQp7WyoBmdOEsWy09IuqxSg6hd1rh2rziJwKRWHCQtiqB6QqlVTn
	WF0wuhuFxdPF/eO+FMSdnR/Gi8Xcxw9TQ/t1A8L7kHube2EC/BbRKIYn5Q6BnWUrbJbpOnL5pguwT
	CNLFWLSpGU1oDlQ0e6gI3gSutq89vrM72Ty3M+338t1EttorYnv8XhuVBNOI6+VtjEn6VdR/EoQDo
	2v6ufd7qDKh2xIZoKHNFrKmSZDplzdJTjthgB3AMHx1JkD/rnTxacuX2jAW6wse0YCSiNsdj3L3oZ
	tB0ZSzbAwmIiIt404tnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxVMX-0000000Fmgg-3Sn7;
	Tue, 03 Mar 2026 19:24:57 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxVMU-0000000FmdY-1NAS;
	Tue, 03 Mar 2026 19:24:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772565891;
	bh=ObnLGgpAvxvftcOTxiIiuCKnlmTs5dcqu1LLAjcfrVY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=PPx1q1yQE8jGykpanZWq/6V1OK/sJ8v5PBQxDMT6QBrvnh/m2/PdnhvXYa1Kg8G9E
	 wh9JJhkngnJzf/CakR6Js/drx6RpiuXbE0Hip1xnE2EM26cIzvYJjdpIeFMBpaFCPe
	 EcOZU+W1ggkFVklS/+unnB9h9SZoaAd5rYM24cfnKSKfNsBi4RLt9DRbb5eBKQcHu7
	 Y6SGUfj+ZiSHGBudScfAs8r6Ml+V+mEtdJaCxZvnZ3zqcjx+of6/9yRXR2eNvyatca
	 JrFgstieDSt3oTr//9ekEsXpK7n3McRU7F4UvG53JHLfUCsj1aORFAno/RUK3vtftC
	 oQIqft3qM4ugQ==
Received: from localhost (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7AD1517E0EA3;
	Tue,  3 Mar 2026 20:24:51 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 03 Mar 2026 21:24:19 +0200
Subject: [PATCH v8 3/4] drm/vkms: Support setting custom background color
MIME-Version: 1.0
Message-Id: <20260303-rk3588-bgcolor-v8-3-fee377037ad1@collabora.com>
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
 Diederik de Haas <diederik@cknow-tech.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_112454_511171_33EF0F45 
X-CRM114-Status: GOOD (  12.58  )
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

TWFrZSB1c2Ugb2YgdGhlIEJBQ0tHUk9VTkRfQ09MT1IgQ1JUQyBwcm9wZXJ0eSB3aGVuIGZpbGxp
bmcgdGhlCmJhY2tncm91bmQgZHVyaW5nIGJsZW5kaW5nLiAgSXQgYWxyZWFkeSBkZWZhdWx0cyB0
byBzb2xpZCBibGFjay4KClNpbmNlIHRoZSBpbnRlcm5hbCByZXByZXNlbnRhdGlvbiBvZiB0aGUg
cGl4ZWwgY29sb3IgaW4gVktNUyByZWxpZXMgb24KMTYgYml0cyBvZiBwcmVjaXNpb24sIHVzZSB0
aGUgbmV3bHkgaW50cm9kdWNlZCBEUk1fQVJHQjY0X0dFVHtSfEd8Qn0oKQpoZWxwZXJzIHRvIGFj
Y2VzcyB0aGUgaW5kaXZpZHVhbCBjb21wb25lbnRzIG9mIHRoZSBiYWNrZ3JvdW5kIGNvbG9yCnBy
b3BlcnR5LCB3aGljaCBpcyBjb21wbGlhbnQgd2l0aCBEUk1fRk9STUFUX0FSR0IxNjE2MTYxNi4K
Ckl0J3Mgd29ydGggbm90aW5nIHRoZSBhbHBoYSBjb21wb25lbnQgaXMgaWdub3JlZCwgaGVuY2Ug
bm9uLW9wYXF1ZQpiYWNrZ3JvdW5kIGNvbG9ycyBhcmUgbm90IHN1cHBvcnRlZC4KClJldmlld2Vk
LWJ5OiBOw61jb2xhcyBGLiBSLiBBLiBQcmFkbyA8bmZyYXByYWRvQGNvbGxhYm9yYS5jb20+ClRl
c3RlZC1ieTogRGllZGVyaWsgZGUgSGFhcyA8ZGllZGVyaWtAY2tub3ctdGVjaC5jb20+ClJldmll
d2VkLWJ5OiBMb3VpcyBDaGF1dmV0IDxsb3Vpcy5jaGF1dmV0QGJvb3RsaW4uY29tPgpTaWduZWQt
b2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS92a21zL3ZrbXNfY29tcG9zZXIuYyB8IDEwICsrKysr
KysrLS0KIGRyaXZlcnMvZ3B1L2RybS92a21zL3ZrbXNfY3J0Yy5jICAgICB8ICAzICsrKwogMiBm
aWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS92a21zL3ZrbXNfY29tcG9zZXIuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS92a21zL3ZrbXNfY29tcG9zZXIuYwppbmRleCBjZDg1ZGU0ZmZkMDMuLjgzZDIxNzA4NWFkMCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmttc19jb21wb3Nlci5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS92a21zL3ZrbXNfY29tcG9zZXIuYwpAQCAtNDc1LDggKzQ3NSwxNCBAQCBz
dGF0aWMgdm9pZCBibGVuZChzdHJ1Y3Qgdmttc193cml0ZWJhY2tfam9iICp3YiwKIHsKIAlzdHJ1
Y3Qgdmttc19wbGFuZV9zdGF0ZSAqKnBsYW5lID0gY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lczsK
IAl1MzIgbl9hY3RpdmVfcGxhbmVzID0gY3J0Y19zdGF0ZS0+bnVtX2FjdGl2ZV9wbGFuZXM7Ci0K
LQljb25zdCBzdHJ1Y3QgcGl4ZWxfYXJnYl91MTYgYmFja2dyb3VuZF9jb2xvciA9IHsgLmEgPSAw
eGZmZmYgfTsKKwl1NjQgYmdjb2xvciA9IGNydGNfc3RhdGUtPmJhc2UuYmFja2dyb3VuZF9jb2xv
cjsKKworCWNvbnN0IHN0cnVjdCBwaXhlbF9hcmdiX3UxNiBiYWNrZ3JvdW5kX2NvbG9yID0gewor
CQkuYSA9IDB4ZmZmZiwKKwkJLnIgPSBEUk1fQVJHQjY0X0dFVFIoYmdjb2xvciksCisJCS5nID0g
RFJNX0FSR0I2NF9HRVRHKGJnY29sb3IpLAorCQkuYiA9IERSTV9BUkdCNjRfR0VUQihiZ2NvbG9y
KSwKKwl9OwogCiAJaW50IGNydGNfeV9saW1pdCA9IGNydGNfc3RhdGUtPmJhc2UubW9kZS52ZGlz
cGxheTsKIAlpbnQgY3J0Y194X2xpbWl0ID0gY3J0Y19zdGF0ZS0+YmFzZS5tb2RlLmhkaXNwbGF5
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmttc19jcnRjLmMgYi9kcml2ZXJz
L2dwdS9kcm0vdmttcy92a21zX2NydGMuYwppbmRleCBiYTJmZjM1M2UxYTkuLjM1ZGRjNTUzYTVl
NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmttc19jcnRjLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL3ZrbXMvdmttc19jcnRjLmMKQEAgLTQsNiArNCw3IEBACiAKICNpbmNsdWRl
IDxkcm0vZHJtX2F0b21pYy5oPgogI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPgor
I2luY2x1ZGUgPGRybS9kcm1fYmxlbmQuaD4KICNpbmNsdWRlIDxkcm0vZHJtX21hbmFnZWQuaD4K
ICNpbmNsdWRlIDxkcm0vZHJtX3ByaW50Lmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9wcm9iZV9oZWxw
ZXIuaD4KQEAgLTIyNyw2ICsyMjgsOCBAQCBzdHJ1Y3Qgdmttc19vdXRwdXQgKnZrbXNfY3J0Y19p
bml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHN0cnVjdCBkcm1fcGxhbmUgKnByaQogCiAJZHJt
X2NydGNfZW5hYmxlX2NvbG9yX21nbXQoY3J0YywgMCwgZmFsc2UsIFZLTVNfTFVUX1NJWkUpOwog
CisJZHJtX2NydGNfYXR0YWNoX2JhY2tncm91bmRfY29sb3JfcHJvcGVydHkoY3J0Yyk7CisKIAlz
cGluX2xvY2tfaW5pdCgmdmttc19vdXQtPmxvY2spOwogCXNwaW5fbG9ja19pbml0KCZ2a21zX291
dC0+Y29tcG9zZXJfbG9jayk7CiAKCi0tIAoyLjUyLjAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
