Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2205CD6E68
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jun 2026 01:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DAZsFKdlbjkuriGuBCL3eUbm5EHFl9APlz92NelhDp4=; b=3cWe8PBlxNpdcb
	H4Sa5MxXySze9dS8IaLbGQ/8rF3s1Ny7U0++sXXbdk5pwvGohpGNk9ll7u7L/ZuruPXChTAfwIBWq
	yPoaDzmgzkI+S8dzGfTLfpad4UYFOgIeQqT0ZPqjcYj2qBilyHDHdAGBkOxkly7tB48HMf2l8IMIv
	ghUP8qIAVpEASaD5rQxll6PYFw8O/peMd+bxrLtPFZyTQqwooJX440S+FVyd/V6vv9Jja96KuWHgS
	BMXktC3Q/cvJLclV62gWCB8IS2OtAY0BbSZixNDS/72ItxkqwzPr0POt1aZNJ+uVaKXD76MlDF1EF
	xrNyy3RJUNP3penJpPRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUaVB-0000000E3HL-18I9;
	Wed, 03 Jun 2026 01:34:37 +0000
Received: from mail-m128113.netease.com ([103.209.128.113])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUaV7-0000000E3Go-443X;
	Wed, 03 Jun 2026 01:34:35 +0000
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 40d4cc4e8;
	Wed, 3 Jun 2026 09:34:29 +0800 (GMT+08:00)
Message-ID: <a473c5a2-b1f9-4cf8-85bb-d3ec1572cbe8@rock-chips.com>
Date: Wed, 3 Jun 2026 09:34:27 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/rockchip: dsi: Add dphy_get_timing support for
 multiple PHY types
To: Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Guochun Huang <hero.huang@rock-chips.com>, Chaoyi Chen <kernel@airkyi.com>
References: <20260324085838.90-1-kernel@airkyi.com>
 <20260324085838.90-2-kernel@airkyi.com> <7091445.e8TTKsaY2g@phil>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <7091445.e8TTKsaY2g@phil>
X-HM-Tid: 0a9e8b1e272b03a7kunm90780f18321e8e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCSE8dVkNMTR9DSUNMGkxMSFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=gzwYSJAZtEjsJiFDXTJx3X3klY2kxyRngymRyZO/CboKLZ4h8irwxcCEeGyX/4ik7HcJIYhtzRcN48RWubO1+CNdphs94VR4/HiD0dJq7ShOOng0FAHP3mmqLCnuMneIWFjfLaJ6qckQdBgFJ7eHVyPbITPJ1a+LXjFeJvoGu9M=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=/YTKzn8x+ScPY0xOlbOt0GetCsCtokkL6paqigkGfsw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_183434_236553_43781A90 
X-CRM114-Status: GOOD (  16.65  )
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

SGkgSGVpa28sCgpPbiA2LzMvMjAyNiA1OjAyIEFNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBB
bSBEaWVuc3RhZywgMjQuIE3DpHJ6IDIwMjYsIDA5OjU4OjM4IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgQ2hhb3lpIENoZW46Cj4+IEZyb206IENoYW95aSBDaGVuIDxjaGFv
eWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPj4KPj4gQ3VycmVudGx5LCB0aGVyZSBhcmUgZ2VuZXJh
bGx5IHR3byB0eXBlcyBvZiBEUEhZIGZvciBSb2NrY2hpcC4gT25lIGlzCj4+IHRoZSBEUEhZIHVz
ZWQgYnkgUkszMjg4L1JLMzM5OSwgd2hvc2UgdGltaW5nIGlzIGRlc2NyaWJlZCBieSBUYWJsZSBB
LTMKPj4gSGlnaC1TcGVlZCBUcmFuc2l0aW9uIFRpbWVzIGluIHRoZSBkYXRhYm9vay4gVGhlIG90
aGVyIGlzIHRoZSBEUEhZIHVzZWQKPj4gYnkgUFgzMCBhbmQgaXRzIHN1Y2Nlc3NvcnMuIElmIGl0
cyB0aW1pbmcgaXMgc3RpbGwgZGVzY3JpYmVkIHVzaW5nCj4+IFJLMzI4OC9SSzMzOTksIGl0IG1h
eSBub3QgcGVyZm9ybSBjb3JyZWN0bHkgb24gc29tZSBEU0kgcGFuZWwuCj4+Cj4+IEFkZCBkcGh5
X2dldF90aW1pbmcgZm9yIGRpZmZlcmVudCBELVBIWSB0eXBlcyB0byBhZGFwdCB0byB0aW1pbmcK
Pj4gZGlmZmVyZW5jZXMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENoYW95aSBDaGVuIDxjaGFveWku
Y2hlbkByb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+ICAuLi4vZ3B1L2RybS9yb2NrY2hpcC9kdy1t
aXBpLWRzaS1yb2NrY2hpcC5jICAgfCA0NSArKysrKysrKysrKysrKysrKystCj4+ICAxIGZpbGUg
Y2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jIGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLXJvY2tjaGlwLmMKPj4gaW5kZXggZDNi
YWNmYWUxNzRlLi4yZDFjOWU1NGZmODUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jCj4+IEBAIC0yNDcsNiArMjQ3LDcgQEAgZW51
bSB7Cj4+ICAJQklBU0VYVFJfMTI3XzcsCj4+ICB9Owo+PiAgCj4+ICtzdHJ1Y3QgZHdfbWlwaV9k
c2lfcm9ja2NoaXA7Cj4+ICBzdHJ1Y3Qgcm9ja2NoaXBfZHdfZHNpX2NoaXBfZGF0YSB7Cj4+ICAJ
dTMyIHJlZzsKPj4gIAo+PiBAQCAtMjYyLDYgKzI2Myw5IEBAIHN0cnVjdCByb2NrY2hpcF9kd19k
c2lfY2hpcF9kYXRhIHsKPj4gIAl1MzIgbGFuZWNmZzJfZ3JmX3JlZzsKPj4gIAl1MzIgbGFuZWNm
ZzI7Cj4+ICAKPj4gKwlpbnQgKCpkcGh5X2dldF90aW1pbmcpKHN0cnVjdCBkd19taXBpX2RzaV9y
b2NrY2hpcCAqZHNpLCB1bnNpZ25lZCBpbnQgbGFuZV9tYnBzLAo+PiArCQkJICAgICAgIHN0cnVj
dCBkd19taXBpX2RzaV9kcGh5X3RpbWluZyAqdGltaW5nKTsKPj4gKwo+PiAgCWludCAoKmRwaHlf
cnhfaW5pdCkoc3RydWN0IHBoeSAqcGh5KTsKPj4gIAlpbnQgKCpkcGh5X3J4X3Bvd2VyX29uKShz
dHJ1Y3QgcGh5ICpwaHkpOwo+PiAgCWludCAoKmRwaHlfcnhfcG93ZXJfb2ZmKShzdHJ1Y3QgcGh5
ICpwaHkpOwo+PiBAQCAtNzIxLDggKzcyNSw5IEBAIHN0YXRpYyBzdHJ1Y3QgaHN0dCBoc3R0X3Rh
YmxlW10gPSB7Cj4+ICB9Owo+PiAgCj4+ICBzdGF0aWMgaW50Cj4+IC1kd19taXBpX2RzaV9waHlf
Z2V0X3RpbWluZyh2b2lkICpwcml2X2RhdGEsIHVuc2lnbmVkIGludCBsYW5lX21icHMsCj4+IC0J
CQkgICBzdHJ1Y3QgZHdfbWlwaV9kc2lfZHBoeV90aW1pbmcgKnRpbWluZykKPj4gK2R3X21pcGlf
ZHNpX3BoeV9yazMyODhfZ2V0X3RpbWluZyhzdHJ1Y3QgZHdfbWlwaV9kc2lfcm9ja2NoaXAgKmRz
aSwKPj4gKwkJCQkgIHVuc2lnbmVkIGludCBsYW5lX21icHMsCj4+ICsJCQkJICBzdHJ1Y3QgZHdf
bWlwaV9kc2lfZHBoeV90aW1pbmcgKnRpbWluZykKPj4gIHsKPj4gIAlpbnQgaTsKPj4gIAo+PiBA
QCAtNzM4LDYgKzc0MywzMiBAQCBkd19taXBpX2RzaV9waHlfZ2V0X3RpbWluZyh2b2lkICpwcml2
X2RhdGEsIHVuc2lnbmVkIGludCBsYW5lX21icHMsCj4+ICAJcmV0dXJuIDA7Cj4+ICB9Cj4+ICAK
Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZHdfbWlwaV9kc2lfZHBoeV90aW1pbmcgZHBoeV90aW1p
bmdfcHgzMCA9IHsKPj4gKwkuY2xrX2xwMmhzID0gMHg0MCwKPj4gKwkuY2xrX2hzMmxwID0gMHg0
MCwKPj4gKwkuZGF0YV9scDJocyA9IDB4MTAsCj4+ICsJLmRhdGFfaHMybHAgPSAweDE0LAo+PiAr
fTsKPiAKPiBzbyBqdXN0IHRvIG1ha2Ugc3VyZSwgdGhlIHRpbWluZyBvbiB0aGUgcHgzMCAoYW5k
IGxhdGVyKSB2YXJpYW50IGlzIHRoZQo+IHNhbWUgZm9yIGFsbCBsYW5lIHNwZWVkcz8KPgoKTW9y
ZSBwcmVjaXNlbHksIGl0IGFwcGxpZXMgdG8gdGhpcyBmaXhlZCB2YWx1ZSBmb3IgSU5OTyBQSFkg
dXNlZCBhZnRlciBQWDMwLgoKPiBQbGVhc2UgaW5jbHVkZSB0aGF0IGJpdCBpbiB0aGUgY29tbWl0
IGRlc2NyaXB0aW9uCj4gCgpJIHdpbGwgYWRkIG1vcmUgZGV0YWlscyBpbiB2Mi4gVGhhbmsgeW91
IQoKLS0gCkJlc3QsIApDaGFveWkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
