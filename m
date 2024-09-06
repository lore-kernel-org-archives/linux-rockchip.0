Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4349FCE7AFB
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 10:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSZ4GvwMbTf7aPmrOMSRPBGUvbmoVAw9QsXBgfPycbs=; b=Snbjn+eQ7Dkcm0
	ppfPn1SWgikI6KbP0IDF7lLpPa+9DmpOfaXZcZVh2wYnu05jta+1/N+wbZyeowrIVvQx7G6Xp1u46
	zIJDsEGWLf5yEpKr4SiH4s6o9pGfH9Z4aByC0rol6UTGhuZ1/3BWmupkl2NFmR+WwF6/jIo5HodMD
	xeFjNww/xDgL8+coUmqzjb0oHltm4je7wHVU9Mb4Y7zn8dwJlmhQOlS1cn/yUsLGcsjnxmqKLtoFS
	R3XSxe2QO3sFEIbw94ZfV0dau9CvteH0lO9/Vly5RUedvjqcX9PBoJFH408wqL8/v3MLrcXSSzXqD
	etmG8lM7WgO8KUu94o2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVuT-0000000Bh1Y-0iVp;
	Fri, 06 Sep 2024 10:09:45 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVcN-0000000Bbti-1NqY;
	Fri, 06 Sep 2024 09:51:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=yXeAZMqnPEUw1nGJDqQeQa/1NXUi1sfFmoPDpYDmFng=; b=N
	6FGj/mAXCrJKUfSF27rqnnZGudV4uz315L8d7iECTQF8BTkxxqogAN+6mOCJanti
	yAps4Kw4THUbfjD3VGnt18q4PbxavzuQJKB6OYePKzRZrFCRu2iccQX2P0eZwdhz
	Ya8l6CiRf3QVvWcuyP527ghR0ZMQjqLLjiiVSgluW4=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-129 (Coremail) ; Fri, 6 Sep 2024 17:50:20 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Fri, 6 Sep 2024 17:50:20 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Diederik de Haas" <didi.debian@cknow.org>
Cc: "Min-Hua Chen" <minhuadotchen@gmail.com>, "Sandy Huang" <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	"Andy Yan" <andy.yan@rock-chips.com>, 
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, 
	"Maxime Ripard" <mripard@kernel.org>, 
	"Thomas Zimmermann" <tzimmermann@suse.de>, 
	"David Airlie" <airlied@gmail.com>, 
	"Daniel Vetter" <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re:Re: [PATCH] drm/rockchip: include rockchip_drm_drv.h
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <D3Z3FN6GARPI.197HD3V38X81T@cknow.org>
References: <20240905223852.188355-1-minhuadotchen@gmail.com>
 <6f07603.7f9.191c4c887b1.Coremail.andyshrk@163.com>
 <D3Z3FN6GARPI.197HD3V38X81T@cknow.org>
X-NTES-SC: AL_Qu2ZB/qauUop5iCYZukZnEobh+Y5UcK2s/ki2YFXN5k0mCTU0SYHcVtZP2PS1cyiLhihlDywfDNM9slef49ob7A0xWS+vmLZ6I6POgSZgSD1
MIME-Version: 1.0
Message-ID: <e4ca4ac.a3fb.191c6bde766.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: _____wD3P7tc0NpmWd4jAA--.24907W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gtSXmWX0Naz1wADsG
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_025103_806680_B4EEAFC6 
X-CRM114-Status: UNSURE (   8.73  )
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

CgpIae+8jApBdCAyMDI0LTA5LTA2IDE3OjI4OjMzLCAiRGllZGVyaWsgZGUgSGFhcyIgPGRpZGku
ZGViaWFuQGNrbm93Lm9yZz4gd3JvdGU6Cj5PbiBGcmkgU2VwIDYsIDIwMjQgYXQgMjo0MiBBTSBD
RVNULCBBbmR5IFlhbiB3cm90ZToKPj4gQXQgMjAyNC0wOS0wNiAwNjozODo1MCwgIk1pbi1IdWEg
Q2hlbiIgPG1pbmh1YWRvdGNoZW5AZ21haWwuY29tPiB3cm90ZToKPj4gPkluY2x1ZGUgcm9ja2No
aXBfZHJtX2Rydi5oIHRvIGZpeCB0aGUgZm9sbG93IHNwYXJzZSB3YXJuaW5nOgo+PiA+Cj4+ID5k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfdm9wMl9yZWcuYzo1MDI6MjQ6IHNwYXJz
ZToKPj4gPndhcm5pbmc6IHN5bWJvbCAndm9wMl9wbGF0Zm9ybV9kcml2ZXInIHdhcyBub3QgZGVj
bGFyZWQuCj4+ID5TaG91bGQgaXQgYmUgc3RhdGljPwo+PiA+Cj4+ID5ObyBmdW5jdGlvbmFsIGNo
YW5nZSBpbnRlbmRlZC4KPj4gPgo+PiA+U2lnbmVkLW9mZi1ieTogTWluLUh1YSBDaGVuIDxtaW5o
dWFkb3RjaGVuQGdtYWlsLmNvbT4KPj4gPi0tLQo+PiA+IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF92b3AyX3JlZy5jIHwgMSArCj4+ID4gMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspCj4+ID4KPj4gPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfdm9wMl9yZWcuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3Ay
X3JlZy5jCj4+ID5pbmRleCAxOGVmYjNmZTFjMDAuLmM2NzhkMWIwZmQ3YyAxMDA2NDQKPj4gPi0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3AyX3JlZy5jCj4+ID4rKysg
Yi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfdm9wMl9yZWcuYwo+PiA+QEAgLTE0
LDYgKzE0LDcgQEAKPj4gPiAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPgo+PiA+IAo+PiA+ICNp
bmNsdWRlICJyb2NrY2hpcF9kcm1fdm9wMi5oIgo+PiA+KyNpbmNsdWRlICJyb2NrY2hpcF9kcm1f
ZHJ2LmgiCj4+ID4gCj4+Cj4+IFdlIGFscmVhZHkgaGF2ZSBhIHBhdGNoWzBdIGluY2x1ZGUgcm9j
a2NoaXBfZHJtX2Rydi5oIGluIHJvY2tjaGlwX2RybV92b3AyLmgKPj4KPj4gWzBdaHR0cHM6Ly9w
YXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXJvY2tjaGlwL3BhdGNoLzIwMjQwOTA0
MTIwMjM4LjM4NTY3ODItMy1hbmR5c2hya0AxNjMuY29tLyAKPgo+TWF5YmUgSSdtIG1pc3Npbmcg
c29tZXRoaW5nLCBidXQgdGhpcyBwYXRjaCBzZWVtcyB0byBmaXggYW4gYWxyZWFkeQo+ZXhpc3Rp
bmcgYnVnICh3aGljaCBzaG91bGQgaGF2ZSBhIEZpeGVzIHRhZz8pLCB3aGljaCBBbmR5IGFsc28g
Zml4ZWQKCj53aGlsZSBpbXBsZW1lbnRpbmcgYSBkaWZmZXJlbnQgKGFuZCB1bnJlbGF0ZWQpIGZl
YXR1cmU/CgoKSW4gZmFjdCwgSSBkb24ndCBrbm93IGhvdyB0byByZXByb2R1Y2UgdGhpcyBjb21w
aWxhdGlvbiBpc3N1ZS4KV2hpbGUgaW1wbGVtZW50aW5nIG15IGZlYXR1cmUsIEkgaGFwcGVuZWQg
dG8gZmluZCB0aGF0IEkgbmVlZCB0byBpbmNsdWRlIHJvY2tjaGlwX2RybV9kcnYuaCBpbiByb2Nr
Y2hpcF9kcm1fdm9wMi5oCgoKCj4KPkNoZWVycywKPiAgRGllZGVyaWsKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
