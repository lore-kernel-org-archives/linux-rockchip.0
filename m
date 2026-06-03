Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 680B9CD6E55
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jun 2026 13:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRYWXGkHbPSK+6T+RNXfSfZg6f5hGDd17PFgjfZz4sw=; b=RShHE1kWUVngic
	kUo3Iw6nF6aEheUBh+2G37E9jRrx4DmH5tYl6d2HsZuKusgVWw1YmlR999fOynCeCpfqkZtF1M+eh
	sOqOaUohmx1rYahv/Tf9Q4/CVliOAuuCFGL50UgT71HLHm1zaiJL0nJ9VGORF31+RLVHAddi6RHR3
	Bh2sgQ/CquIoLBmSuDTjK+faWjS6igj6AHozrCGAtnL5evWgJBSLJxjmOCa246TxKp67XOCJ9+ZDT
	vBJhhr5F29aedwzsDSHCN8/+VIWJEEV8Tbb8FCB4GRKe7Oc4psBZZw4KasYqGcAIU2kBeVvvkVOD0
	OquI3BV6Z4AkPssBlRnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlG3-0000000F6zL-2rB4;
	Wed, 03 Jun 2026 13:03:43 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlG1-0000000F6yi-1xo3;
	Wed, 03 Jun 2026 13:03:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=zfDd761s+X3hyIoj3B1q+1h4o7T39matEyS3iUvoXWk=; b=G
	8FYbKl+e7W8KCNBdbS38gnRZSEtGUeus8M1UyVPOmodqCJCgB/yyUaYatY4gQ7Vy
	ESdseUJAIOQWNlhtDAcBjDhTvydSX9WqlDY/GEQWjQ4+JakOu6H2BjYPKb5TR+VB
	ODGnQHpp/R4ruR1wNX2x6qjwb7jvn41LVQZzzQ2+GQ=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-120 (Coremail) ; Wed, 3 Jun 2026 21:01:52 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Wed, 3 Jun 2026 21:01:52 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: "Sandy Huang" <hjc@rock-chips.com>,
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
	"Andy Yan" <andy.yan@rock-chips.com>,
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>,
	"Maxime Ripard" <mripard@kernel.org>,
	"Thomas Zimmermann" <tzimmermann@suse.de>,
	"David Airlie" <airlied@gmail.com>,
	"Simona Vetter" <simona@ffwll.ch>,
	"Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>,
	"Dmitry Baryshkov" <lumag@kernel.org>,
	"Andrzej Hajda" <andrzej.hajda@intel.com>,
	"Neil Armstrong" <neil.armstrong@linaro.org>,
	"Robert Foss" <rfoss@kernel.org>,
	"Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>,
	"Jonas Karlman" <jonas@kwiboo.se>,
	"Jernej Skrabec" <jernej.skrabec@gmail.com>,
	"Luca Ceresoli" <luca.ceresoli@bootlin.com>, kernel@collabora.com,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re:[PATCH v4 2/3] drm/rockchip: dw_dp: Add missing newline in
 dev_err_probe() message
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20260403(27802f6d) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260601-drm-rk-fixes-v4-2-c3f3f123e1da@collabora.com>
References: <20260601-drm-rk-fixes-v4-0-c3f3f123e1da@collabora.com>
 <20260601-drm-rk-fixes-v4-2-c3f3f123e1da@collabora.com>
X-CM-CTRLMSGS: qZbwZXBsdXM9MTc4MDQ5MTcxMjIxMF9kZjVlMTMwOTYzYmNkMmEzMGMxMzFhZ
 jZiNzM5MWRkNQ==
X-NTES-SC: AL_Qu2TAviSvk8q5CScY+kfmUgWjuw/WsG1v/Ul1YBSP556jDLp4yQsdlhFB13k6v+RMTGlqAieVTxg0OFXWa1WfaYteoTY/kK5PpuPMPGk3cYYuA==
MIME-Version: 1.0
Message-ID: <3db55ac2.a5b3.19e8d9377c6.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: eCgvCgDnD_XAJSBqVsQBAA--.17746W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7QAcemogJcBl+QAA34
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_060341_968204_3D6370F9 
X-CRM114-Status: UNSURE (   6.77  )
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

CkhlbGxvIENyaXN0aWFu77yMCgpBdCAyMDI2LTA2LTAyIDAwOjEzOjQ1LCAiQ3Jpc3RpYW4gQ2lv
Y2FsdGVhIiA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+QWRkIHRo
ZSBtaXNzaW5nIHRyYWlsaW5nIG5ld2xpbmUgdG8gZGV2X2Vycl9wcm9iZSgpIGNhbGwgaW4KPmR3
X2RwX3JvY2tjaGlwX2JpbmQoKS4KPgo+Rml4ZXM6IGQ2OGJhN2JhYzk1NSAoImRybS9yb2NrY2hp
cDogQWRkIFJLMzU4OCBEUFRYIG91dHB1dCBzdXBwb3J0IikKPkZpeGVzOiAyNmNiM2UyNmVmYTcg
KCJkcm0vcm9ja2NoaXA6IGR3X2RwOiBTaW1wbGlmeSBlcnJvciBoYW5kbGluZyIpCgoKSnVzdCBv
bmUgRml4ZXMgdGFn77yfCgoKPlNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jp
c3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4tLS0KPiBkcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvZHdfZHAtcm9ja2NoaXAuYyB8IDIgKy0KPiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKPgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9kd19kcC1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2RwLXJv
Y2tjaGlwLmMKPmluZGV4IDMyYmM3M2ExZDVlNC4uZjEzN2Y2OTk3MzdjIDEwMDY0NAo+LS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2RwLXJvY2tjaGlwLmMKPisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9kd19kcC1yb2NrY2hpcC5jCj5AQCAtMTA5LDcgKzEwOSw3IEBAIHN0
YXRpYyBpbnQgZHdfZHBfcm9ja2NoaXBfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBk
ZXZpY2UgKm1hc3Rlciwgdm9pZCAqCj4gCWNvbm5lY3RvciA9IGRybV9icmlkZ2VfY29ubmVjdG9y
X2luaXQoZHJtX2RldiwgZW5jb2Rlcik7Cj4gCWlmIChJU19FUlIoY29ubmVjdG9yKSkKPiAJCXJl
dHVybiBkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUihjb25uZWN0b3IpLAo+LQkJCQkgICAgICJG
YWlsZWQgdG8gaW5pdCBicmlkZ2UgY29ubmVjdG9yIik7Cj4rCQkJCSAgICAgIkZhaWxlZCB0byBp
bml0IGJyaWRnZSBjb25uZWN0b3JcbiIpOwo+IAo+IAlyZXR1cm4gMDsKPiB9Cj4KPi0tIAo+Mi41
NC4wCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
