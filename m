Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C497C88E56
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Sep 2026 06:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBnK6UhVxev7MSFUkKX0KZ91T4NFO/BbIs5UH+BcA1Y=; b=WM1ly2ttnMB06J
	d0/7glmLW/+GGEgOBduybjt949+joXP3C/AIXN/DI5tOAf7j1krlNQkIGrp3TTjM98u9uClR9rqWh
	YkrPKHNzjxYW57vVKlJwc92Llr2EZevz1aOOvuoXiGDgTIR2UCujAGOK3EJqT7j6uye9STVaNkmEF
	rmorWjy0cfqOx1mhj7dVgRBxluSU+uOUCTnoUKzj1hkcfDk3G8R+Xe/oMTwxW18nedm+DcMIC4Zdi
	DohaoPuqeiaKFaNLJn8plBZHP+azc97mTpIO9tmXT1m67Cfd8rzcL0nIvqg2s4swx6+TRZlCT0x0q
	IYDx9RZIaVXpmacTGgfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5dWs-00000001SBT-3USt;
	Sun, 13 Sep 2026 06:17:30 +0000
Received: from mail-m128212.netease.com ([103.209.128.212])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5dWm-00000001SAs-3V0Q;
	Sun, 13 Sep 2026 06:17:28 +0000
Received: from [127.0.0.1] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4d8d80e68;
	Sun, 13 Sep 2026 14:17:08 +0800 (GMT+08:00)
Message-ID: <5f5a3210-44e1-4d56-ab44-aea2fe3cabae@rock-chips.com>
Date: Sun, 13 Sep 2026 14:17:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] drm/rockchip: dsi: Add maximum per lane bit rate
 calculation
To: Heiko Stuebner <heiko@sntech.de>
Cc: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Chaoyi Chen <kernel@airkyi.com>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260812073002.328-1-kernel@airkyi.com>
 <20260812073002.328-2-kernel@airkyi.com> <9674763.CDJkKcVGEf@phil>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <9674763.CDJkKcVGEf@phil>
X-HM-Tid: 0aa09969941d03a7kunm769b3eaa96f912
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCTEsfVhlCTUkZSh4dH05LGlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=GAJ5dMwy21VmCnJabb1L9TQt7b2IDU9Uq/uVBCd3W1ZJPdjMZOkOHgn5LiqAgg3GA0pHy4C3q4EUx4G7Hz1skBBdZLC9AW8rueILzdxDsEfhB5+YqQqTqewhPSW77CuWLWUJinCQ0Gmq7MLqHcATbjzdyKYT8nT+8AEEL8AngmA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=XE0FAIY1dIyIhNWdzfvXZWvPYm623Zb2EGWRdg2QQio=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260912_231726_297337_B87AEA88 
X-CRM114-Status: UNSURE (   9.40  )
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

SGkgSGVpa28sCgpPbiA5LzEyLzIwMjYgODozMiBQTSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4g
QW0gTWl0dHdvY2gsIDEyLiBBdWd1c3QgMjAyNiwgMDk6MzA6MDAgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBDaGFveWkgQ2hlbjoKPj4gRnJvbTogQ2hhb3lpIENoZW4gPGNo
YW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+Pgo+PiBEaWZmZXJlbnQgY2hpcHMgaGF2ZSB2YXJ5
aW5nIHN1cHBvcnQgZm9yIHRoZSBtYXhpbXVtIGJpdCByYXRlIHBlciBsYW5lLgo+Pgo+PiBBZGQg
Y2FsY3VsYXRpb24gZm9yIHRoZSBtYXhpbXVtIHBlciBsYW5lIGJpdCByYXRlIGZvciB2YXJpb3Vz
IGNoaXAKPj4gcGxhdGZvcm1zLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaGFveWkgQ2hlbiA8Y2hh
b3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4gCj4gWy4uLl0KPiAKPj4gQEAgLTU3Myw2ICs1NzQs
NyBAQCBkd19taXBpX2RzaV9nZXRfbGFuZV9tYnBzKHZvaWQgKnByaXZfZGF0YSwgY29uc3Qgc3Ry
dWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUsCj4+ICAJdW5zaWduZWQgbG9uZyBfZmJkaXYsIGJl
c3RfZmJkaXY7Cj4+ICAJdW5zaWduZWQgbG9uZyBtaW5fZGVsdGEgPSBVTE9OR19NQVg7Cj4+ICAK
Pj4gKwltYXhfbWJwcyA9IGRzaS0+Y2RhdGEtPm1heF9iaXRfcmF0ZV9wZXJfbGFuZSAvIFVTRUNf
UEVSX1NFQzsKPiAKPiBBcyB0aGUgdmFsdWUgaXMgY2FsbGVkIG1heF9iaXRfcmF0ZV9wZXJfbGFu
ZSwgSSBndWVzcyBTYXNoaWtvCj4gaXMgY29ycmVjdCBpbiB0aGF0IHRoZSBtYXhfbWJwcyBjaGVj
ayBzaG91bGQgdXNlICI8PSIgPwo+IAoKVGhhbmtzIGZvciBwb2ludGluZyB0aGlzIG91dC4gSSds
bCBmaXggaXQgaW4gdjUuCgo+IAo+IEhlaWtvCgotLSAKQmVzdCwgCkNoYW95aQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
