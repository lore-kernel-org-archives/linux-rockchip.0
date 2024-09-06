Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02095CE7AA5
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 00:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GpH1+nyekR8hhMBBk6zJH2k34Qf4Oup0/t7w1PaYB48=; b=iN8dRupL6Ff+uV
	sW6By3KJ4BIW46XnKklWuBP8ehG9KZsfNuk/EQyPQ6taiNIvDAdu5DG0H6/YuYM2SA7wvoGBhYpmQ
	pzOjWWSk4q4srAuP4giLj0Oxb85kItSr79Ez+gqiEpFetNQRqUfXjUTD+MPgMRFcFjoqT28JxDWqp
	LCRCQ7Iv3QtnT7RxnGL9BASHkjWvAY5K0GEmB42EUmxx8DZExWow/u6/hLRnkIqkhOLhzJPf84g0H
	Idh1yLXqAV+BDYtw1mqSaJMTZMK5kyNOD3ZooMIClhOj54Ds50+9ZgXjmx6/bN3DXGR00begMrOaN
	HRloViMVPIOM3edgc1zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smN5J-0000000ADhp-0aMo;
	Fri, 06 Sep 2024 00:44:21 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smN4J-0000000ADZK-3xS4;
	Fri, 06 Sep 2024 00:43:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=sWKETyqbCy/oU45Avlbw42IlnMoezBn1N7HKMujWHB8=; b=k
	lXiBzH2S1mGIO5ZZxNawojacfCxB5NSZKiQRJg0curicGTespE6vt/mZWQ0lXU96
	lO8nKFpOcQjdXbMm7+BR8ZNLn1ruRCo3VKrW9Zd88I1Ui2yy0s4hI0QC6C7PJlpZ
	TsbcQKL5VH3xWf8KdpSZq58ccRzDRJQr+aZigBpE0I=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-129 (Coremail) ; Fri, 6 Sep 2024 08:42:41 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Fri, 6 Sep 2024 08:42:41 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Min-Hua Chen" <minhuadotchen@gmail.com>
Cc: "Sandy Huang" <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	"Andy Yan" <andy.yan@rock-chips.com>, 
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, 
	"Maxime Ripard" <mripard@kernel.org>, 
	"Thomas Zimmermann" <tzimmermann@suse.de>, 
	"David Airlie" <airlied@gmail.com>, 
	"Daniel Vetter" <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re:[PATCH] drm/rockchip: include rockchip_drm_drv.h
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <20240905223852.188355-1-minhuadotchen@gmail.com>
References: <20240905223852.188355-1-minhuadotchen@gmail.com>
X-NTES-SC: AL_Qu2ZB/mTvEst5ymeYOkZnEobh+Y5UcK2s/ki2YFXN5k0mCTU0SYHcVtZP2PS1cyiLhihlDywfDNM9slef49ob7AfQ5yEURwOay+wzTF7eCuj
MIME-Version: 1.0
Message-ID: <6f07603.7f9.191c4c887b1.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: _____wD3H70CUNpmYjNOAA--.33708W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMxJSXmXAnqv04QACsq
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_174320_391819_996A4972 
X-CRM114-Status: UNSURE (   6.12  )
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

CkhpICBNaW4gSHVh77yMCiAgIFRoYW5rcyBmb3IgeW91ciB3b3JrCgpBdCAyMDI0LTA5LTA2IDA2
OjM4OjUwLCAiTWluLUh1YSBDaGVuIiA8bWluaHVhZG90Y2hlbkBnbWFpbC5jb20+IHdyb3RlOgo+
SW5jbHVkZSByb2NrY2hpcF9kcm1fZHJ2LmggdG8gZml4IHRoZSBmb2xsb3cgc3BhcnNlIHdhcm5p
bmc6Cj4KPmRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3AyX3JlZy5jOjUwMjoy
NDogc3BhcnNlOgo+d2FybmluZzogc3ltYm9sICd2b3AyX3BsYXRmb3JtX2RyaXZlcicgd2FzIG5v
dCBkZWNsYXJlZC4KPlNob3VsZCBpdCBiZSBzdGF0aWM/Cj4KPk5vIGZ1bmN0aW9uYWwgY2hhbmdl
IGludGVuZGVkLgo+Cj5TaWduZWQtb2ZmLWJ5OiBNaW4tSHVhIENoZW4gPG1pbmh1YWRvdGNoZW5A
Z21haWwuY29tPgo+LS0tCj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcDJf
cmVnLmMgfCAxICsKPiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPgo+ZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3AyX3JlZy5jIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcDJfcmVnLmMKPmluZGV4IDE4ZWZiM2ZlMWMw
MC4uYzY3OGQxYjBmZDdjIDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX3ZvcDJfcmVnLmMKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF92b3AyX3JlZy5jCj5AQCAtMTQsNiArMTQsNyBAQAo+ICNpbmNsdWRlIDxkcm0vZHJtX3ByaW50
Lmg+Cj4gCj4gI2luY2x1ZGUgInJvY2tjaGlwX2RybV92b3AyLmgiCj4rI2luY2x1ZGUgInJvY2tj
aGlwX2RybV9kcnYuaCIKPiAKCldlIGFscmVhZHkgaGF2ZSBhIHBhdGNoWzBdIGluY2x1ZGUgcm9j
a2NoaXBfZHJtX2Rydi5oIGluIHJvY2tjaGlwX2RybV92b3AyLmgKClswXWh0dHBzOi8vcGF0Y2h3
b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hpcC9wYXRjaC8yMDI0MDkwNDEyMDIz
OC4zODU2NzgyLTMtYW5keXNocmtAMTYzLmNvbS8gCgo+IHN0YXRpYyBjb25zdCB1aW50MzJfdCBm
b3JtYXRzX2NsdXN0ZXJbXSA9IHsKPiAJRFJNX0ZPUk1BVF9YUkdCMjEwMTAxMCwKPi0tIAo+Mi40
My4wCj4KPgo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwo+aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
