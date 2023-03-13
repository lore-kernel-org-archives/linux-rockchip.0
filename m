Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 208F7C6FD19
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiMoan+A9EhUf6EJrTSoDXV5pmjXZsD6jlYZh8rVVOA=; b=gHnJcb0gbBOXoa
	n+kw7VKm5alYv1km93pEcYZG5pu9iEoEgPyzQmx4nMwUUFvBBIdZN1Ghkwl+xVSzaNGdNMXQUkcu+
	ynB8bLOQhpEKVwHzXzLaWGjwWd62N7oZ9JI13hqtYWaFxeCq+t6fA9FttKZ80pZAz++p8gS147eaS
	Y4Smb1hLEzQ05LYjSxAnFxJr426FxDm5gtbZPq5JoB0JHXmkvQfWBd/u3b8wsl8xPYqyWf14hcmvI
	q33T9jxwK0GwC1/2frYvms/9jewU18X14aDl4xVHNI1p9vFJrLAtGTEGBES0I3on4Rc7/aj22bukS
	2pno/ylY00ZuxY37fXUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbi3v-005qZT-5w; Mon, 13 Mar 2023 13:18:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbi3r-005qXe-MF
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 13:18:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3DD146125A;
	Mon, 13 Mar 2023 13:17:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7135C433EF;
	Mon, 13 Mar 2023 13:17:56 +0000 (UTC)
Message-ID: <7f9796d2-1885-a6f2-b9e3-d6ea58524033@xs4all.nl>
Date: Mon, 13 Mar 2023 14:17:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] media: hantro: fix use after free bug in hantro_release
 due to race condition
Content-Language: en-US
To: Zheng Wang <zyytlz.wz@163.com>, ezequiel@vanguardiasur.com.ar
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 hackerzheng666@gmail.com, 1395428693sheep@gmail.com, alex000young@gmail.com
References: <20230307153542.1178065-1-zyytlz.wz@163.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20230307153542.1178065-1-zyytlz.wz@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_061759_806452_9B3C1169 
X-CRM114-Status: GOOD (  24.16  )
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

T24gMDcvMDMvMjAyMyAxNjozNSwgWmhlbmcgV2FuZyB3cm90ZToKPiBJbiBoYW50cm9fcHJvYmUs
IHZwdS0+d2F0Y2hkb2dfd29yayBpcyBib3VuZCB3aXRoCj4gaGFudHJvX3dhdGNoZG9nLiBUaGVu
IGhhbnRyb19lbmRfcHJlcGFyZV9ydW4gbWF5Cj4gYmUgY2FsbGVkIHRvIHN0YXJ0IHRoZSB3b3Jr
Lgo+IAo+IElmIHdlIGNsb3NlIHRoZSBmaWxlIG9yIHJlbW92ZSB0aGUgbW9kdWxlIHdoaWNoIHdp
bGwKPiBjYWxsIGhhbnRyb19yZWxlYXNlIGFuZCBoYW50cm9fcmVtb3ZlIHRvIG1ha2UgY2xlYW51
cCwKPiB0aGVyZSBtYXkgYmUgYSB1bmZpbmlzaGVkIHdvcmsuIFRoZSBwb3NzaWJsZSBzZXF1ZW5j
ZQo+IGlzIGFzIGZvbGxvd3MsIHdoaWNoIHdpbGwgY2F1c2UgYSB0eXBpY2FsIFVBRiBidWcuCj4g
Cj4gVGhlIHNhbWUgdGhpbmcgd2lsbCBoYXBwZW4gaW4gaGFudHJvX3JlbGVhc2UsIGFuZCB1c2UK
PiBjdHggYWZ0ZXIgZnJlZWluZyBpdC4KPiAKPiBGaXggaXQgYnkgY2FuY2VsaW5nIHRoZSB3b3Jr
IGJlZm9yZSBjbGVhbnVwIGluIGhhbnRyb19yZWxlYXNlLgo+IAo+IENQVTAgICAgICAgICAgICAg
ICAgICBDUFUxCj4gCj4gICAgICAgICAgICAgICAgICAgICB8aGFudHJvX3dhdGNoZG9nCj4gaGFu
dHJvX3JlbW92ZSAgICAgfAo+ICAgdjRsMl9tMm1fcmVsZWFzZSAgfAo+ICAgICBrZnJlZShtMm1f
ZGV2KTsgfAo+ICAgICAgICAgICAgICAgICAgICAgfAo+ICAgICAgICAgICAgICAgICAgICAgfCB2
NGwyX20ybV9nZXRfY3Vycl9wcml2Cj4gICAgICAgICAgICAgICAgICAgICB8ICAgbTJtX2Rldi0+
Y3Vycl9jdHggLy91c2UKPiAKPiBTaWduZWQtb2ZmLWJ5OiBaaGVuZyBXYW5nIDx6eXl0bHoud3pA
MTYzLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50
cm9fZHJ2LmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5j
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKPiBpbmRl
eCBiMGFlZWRhZTdiNjUuLmNmMDBjY2FhNzgyOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4gQEAgLTYwMSw2ICs2MDEsNyBAQCBz
dGF0aWMgaW50IGhhbnRyb19yZWxlYXNlKHN0cnVjdCBmaWxlICpmaWxwKQo+ICAJICogTm8gbmVl
ZCBmb3IgZXh0cmEgbG9ja2luZyBiZWNhdXNlIHRoaXMgd2FzIHRoZSBsYXN0IHJlZmVyZW5jZQo+
ICAJICogdG8gdGhpcyBmaWxlLgo+ICAJICovCj4gKwljYW5jZWxfZGVsYXllZF93b3JrKCZ2cHUt
PndhdGNoZG9nX3dvcmspOwo+ICAJdjRsMl9tMm1fY3R4X3JlbGVhc2UoY3R4LT5maC5tMm1fY3R4
KTsKPiAgCXY0bDJfZmhfZGVsKCZjdHgtPmZoKTsKPiAgCXY0bDJfZmhfZXhpdCgmY3R4LT5maCk7
Cgpkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYzogSW4gZnVu
Y3Rpb24g4oCYaGFudHJvX3JlbGVhc2XigJk6CmRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNp
bGljb24vaGFudHJvX2Rydi5jOjYwNDozMDogZXJyb3I6IOKAmHZwdeKAmSB1bmRlY2xhcmVkIChm
aXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiDigJhmcHXigJk/CiAgNjA0
IHwgICAgICAgICBjYW5jZWxfZGVsYXllZF93b3JrKCZ2cHUtPndhdGNoZG9nX3dvcmspOwogICAg
ICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+CiAgICAgIHwgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBmcHUKZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9o
YW50cm9fZHJ2LmM6NjA0OjMwOiBub3RlOiBlYWNoIHVuZGVjbGFyZWQgaWRlbnRpZmllciBpcyBy
ZXBvcnRlZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVuY3Rpb24gaXQgYXBwZWFycyBpbgoKWW91IGNs
ZWFybHkgZGlkbid0IGNvbXBpbGUgdGhpcyBwYXRjaCEKClJlZ2FyZHMsCgoJSGFucwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
