Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DC19C52D7B
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 03:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H3IaoL4/HTQMOJrvMf+dVOZ1fdIiDxVWs9Mzy4tzLaM=; b=P0QIMSpby6FRAV
	BTRun/l6QRynu1t94AKjzzuPeD8TJjOV8yLZ6I+c8vG/LFojoSTGi7rKwsKdH/PYN6x1rM9+pmy/w
	SYXWb71YHj3JQZuCsZOWRIXFopUwT4L8mThB07XE11lPfW06YAJCNsxkHzxmoTdYSABof/kE7f4j/
	Me4pzB6coYbyBzv3NEEzbdMYfTlTqf9w6B/Vivabsig2tkMre4FEQggWqtyNEyImq2n6iexZNUm5w
	5ezBzNeWEJw4hfeju/z4Lmi10yeRbHIjniZdFa5PoCn/M/zqEp93rD+Sk7gXevlX1bbT7u8jdFVBf
	mro81qAslmacG0EbHrXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdLlD-0000000GnYr-3gE1;
	Mon, 12 Aug 2024 03:30:19 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdKaS-0000000GgES-0wge;
	Mon, 12 Aug 2024 02:15:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=mAnLqpnosHJncWBPEzaGSYLYh9RjlL7gR1RI+PKKMlQ=; b=F
	KAQFJvM3hoo81UX2+KWY0KcSe9VwN2ccw2ypUgHzYJHBQzfid3OZNhme56HlA87K
	Emf67jsfjE+Zd4vvG53S5mlvZ8+cq3gjNo0PaUHO24+oUe5xJnnCfER8qpVML1Q6
	2DTWHmvBOxt2CbICrEs0bA/1FQLu5SxtFimgwSgntI=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-140 (Coremail) ; Mon, 12 Aug 2024 10:14:22 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Mon, 12 Aug 2024 10:14:22 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: "Sandy Huang" <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	"Andy Yan" <andy.yan@rock-chips.com>, 
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, 
	"Maxime Ripard" <mripard@kernel.org>, 
	"Thomas Zimmermann" <tzimmermann@suse.de>, 
	"David Airlie" <airlied@gmail.com>, 
	"Daniel Vetter" <daniel@ffwll.ch>, 
	"Sean Paul" <seanpaul@chromium.org>, 
	"Jeffy Chen" <jeffy.chen@rock-chips.com>, 
	"Andrzej Hajda" <andrzej.hajda@intel.com>, 
	"Mark Yao" <markyao0591@gmail.com>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re:[PATCH RESEND] drm/rockchip: Unregister platform drivers in
 reverse order
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <20240808-rk-drm-fix-unreg-v1-1-c30d9a754722@collabora.com>
References: <20240808-rk-drm-fix-unreg-v1-1-c30d9a754722@collabora.com>
X-NTES-SC: AL_Qu2ZAfiZt0At5CSaZOkXn0kXhec2W8Czvvgg34JRP5k0hyXh4w84enhsBWX50cSJNTCNtx+ebhV8+Ol2d45bUpoZ+ngIvVGIHVjhi9ZGMi7K
MIME-Version: 1.0
Message-ID: <3649004a.1f69.191445d79dc.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: _____wD331_+b7lmxr8VAA--.36231W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hM5XmWXzphY4gACs6
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240811_191508_654723_82D8ABDE 
X-CRM114-Status: UNSURE (   8.50  )
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

CkhpIENyaXN0aWFuLAoKQXQgMjAyNC0wOC0wOCAxOTo1ODowMiwgIkNyaXN0aWFuIENpb2NhbHRl
YSIgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPiB3cm90ZToKPk1vdmUgcm9ja2No
aXBfZHJtX3BsYXRmb3JtX2RyaXZlciB1bnJlZ2lzdHJhdGlvbiBhZnRlciBpdHMgc3ViLWRyaXZl
cnMsCj53aGljaCBlbnN1cmVzIGFsbCBkcml2ZXJzIGFyZSB1bnJlZ2lzdGVyZWQgaW4gdGhlIHJl
dmVyc2Ugb3JkZXIgdXNlZAo+d2hlbiB0aGV5IHdlcmUgcmVnaXN0ZXJlZC4KCldvdWxkIHlvdSBw
bGVhc2UgcHJvdmllZCBzb21lIGRldGFpbCBpbmZvcm1hdGlvbiBhYm91dCBob3cgdG8gcmVwcm9k
dWNlIHRoaXMKaXNzdWUgdGhpcyBwYXRjaCB0cnkgdG8gZml477yfT3Igc29tZSBrZXJuZWwgbG9n
IHdoZW4gdGhpcyBpc3N1ZSAgIHRyaWdnZXJlZOOAggo+Cj5GaXhlczogODgyMGI2OGJkMzc4ICgi
ZHJtL3JvY2tjaGlwOiBSZWZhY3RvciB0aGUgY29tcG9uZW50IG1hdGNoIGxvZ2ljLiIpCj5TaWdu
ZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJv
cmEuY29tPgo+LS0tCj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYu
YyB8IDMgKy0tCj4gMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygt
KQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9k
cnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMKPmluZGV4
IDQ0ZDc2OWQ5MjM0ZC4uY2E3YjA3NTAzZmJlIDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYwo+KysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX2RybV9kcnYuYwo+QEAgLTUyOCwxMCArNTI4LDkgQEAgc3RhdGljIGludCBf
X2luaXQgcm9ja2NoaXBfZHJtX2luaXQodm9pZCkKPiAKPiBzdGF0aWMgdm9pZCBfX2V4aXQgcm9j
a2NoaXBfZHJtX2Zpbmkodm9pZCkKPiB7Cj4tCXBsYXRmb3JtX2RyaXZlcl91bnJlZ2lzdGVyKCZy
b2NrY2hpcF9kcm1fcGxhdGZvcm1fZHJpdmVyKTsKPi0KPiAJcGxhdGZvcm1fdW5yZWdpc3Rlcl9k
cml2ZXJzKHJvY2tjaGlwX3N1Yl9kcml2ZXJzLAo+IAkJCQkgICAgbnVtX3JvY2tjaGlwX3N1Yl9k
cml2ZXJzKTsKPisJcGxhdGZvcm1fZHJpdmVyX3VucmVnaXN0ZXIoJnJvY2tjaGlwX2RybV9wbGF0
Zm9ybV9kcml2ZXIpOwo+IH0KPiAKPiBtb2R1bGVfaW5pdChyb2NrY2hpcF9kcm1faW5pdCk7Cj4K
Pi0tLQo+YmFzZS1jb21taXQ6IDFlYjU4NmE5NzgyY2RlOGU1MDkxYjlkZTc0NjAzZTBhODM4NmIw
OWUKPmNoYW5nZS1pZDogMjAyNDA3MDItcmstZHJtLWZpeC11bnJlZy05ZjNmMjk5OTZhMDAKPi0t
IAo+Q3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4K
Pgo+Cj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+TGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj5MaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCj5odHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
