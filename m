Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A2D5C54FC6
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Sep 2024 06:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhoTWv84EeUp3cojxFt8eM7UOTjR3jJ0ZAc3n52URCM=; b=pJbDikvEPkOKqH
	Vr45tD+gqSuTZvTD4N4WUI6xLa6MdyAVBlzOQ1gSOVU3FepHKm69b30tL+zjT4TAAdDuxLbX7u5gX
	+5/sFKggm680swdsKBbENaN9fIF6l4yTOvlaohZJTClUnvX14x2gY/ujKLOMmv58gGxiqIsQrnUNv
	ih5KernPS+XG7argOP0nfmb5am8AMHZuSud1c7bBtnMPrMmVjyCnmGbd32j8A1A8kIl3jUQ9POc65
	pLxFdb2gHt4ladvHljpLEj9+QfDiPfSJmNwujHx5EAsPcFT1HSvwrE2xBrSznwWASiUDjt9ez+tUq
	JBQ666oM7efY+j1BYI1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skeHn-0000000B3id-3VJ2;
	Sun, 01 Sep 2024 06:42:07 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skeGt-0000000B3ej-36HF;
	Sun, 01 Sep 2024 06:41:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=Q5ie0SU+rwJ8jZQS1JdOylihEKeHaFZ4ykRjrQITKug=; b=l
	3vcwnRoBWRUzCkGn/19gO5ySTDgk9W04z8Ei5qzntoESm9m3SLeXlxEpfBMYv4zs
	SL/225Q302prANSPQ9MEA23OuZd1aIphORJNsADyne8KNqXYU1a+PyU19Ms3QBDi
	XwFTZXRRdj2VOcEdMuF0x7LVgQ8ve56z3PFqGV+jOk=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-139 (Coremail) ; Sun, 1 Sep 2024 14:40:11 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Sun, 1 Sep 2024 14:40:11 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	"Krzysztof Kozlowski" <krzk@kernel.org>, 
	"Andrzej Hajda" <andrzej.hajda@intel.com>, 
	"Neil Armstrong" <neil.armstrong@linaro.org>, 
	"Robert Foss" <rfoss@kernel.org>, 
	"Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>, 
	"Jonas Karlman" <jonas@kwiboo.se>, 
	"Jernej Skrabec" <jernej.skrabec@gmail.com>, 
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, 
	"Maxime Ripard" <mripard@kernel.org>, 
	"Thomas Zimmermann" <tzimmermann@suse.de>, 
	"David Airlie" <airlied@gmail.com>, 
	"Daniel Vetter" <daniel@ffwll.ch>, 
	"Sandy Huang" <hjc@rock-chips.com>, 
	"Andy Yan" <andy.yan@rock-chips.com>, 
	"Rob Herring" <robh@kernel.org>, 
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>, 
	"Conor Dooley" <conor+dt@kernel.org>, 
	"Mark Yao" <markyao0591@gmail.com>, 
	"Sascha Hauer" <s.hauer@pengutronix.de>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, "Alexandre ARNOUD" <aarnoud@me.com>, 
	"Luis de Arquer" <ldearquer@gmail.com>
Subject: Re:Re: [PATCH v5 1/4] dt-bindings: display: bridge: Add schema for
 Synopsys DW HDMI QP TX IP
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <aee7b364-39df-4eb4-a823-4e734f104982@collabora.com>
References: <20240831-b4-rk3588-bridge-upstream-v5-0-9503bece0136@collabora.com>
 <20240831-b4-rk3588-bridge-upstream-v5-1-9503bece0136@collabora.com>
 <57wj2vwjv7eehlix2bmvbm3z4agv5fsyp6vmwwqzotkdsadx7n@azqg2kkaeuxz>
 <10210346.L8ug28u51p@diego>
 <aee7b364-39df-4eb4-a823-4e734f104982@collabora.com>
X-NTES-SC: AL_Qu2ZB/2cvUAq5yKcYekZnEobh+Y5UcK2s/ki2YFXN5k0iSXP6y49RXxAF1DJy86vNx+nsxutfgFs+9V0RJlGc6mmbkMBNI9l1TypHVSjQ64B
MIME-Version: 1.0
Message-ID: <610d9bc3.159c.191ac5005f5.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: _____wD3f6dLDNRmuANTAA--.37424W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gpNXmWX0FcfugACsZ
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240831_234112_165073_88092C8C 
X-CRM114-Status: GOOD (  16.53  )
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

Ckhp77yMCgrlnKggMjAyNC0wOS0wMSAwNTo1MzozOe+8jCJDcmlzdGlhbiBDaW9jYWx0ZWEiIDxj
cmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4g5YaZ6YGT77yaCj5PbiA4LzMxLzI0IDQ6
NTggUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBIaSwKPj4gCj4+IEFtIFNhbXN0YWcsIDMx
LiBBdWd1c3QgMjAyNCwgMDg6MTY6MjYgQ0VTVCBzY2hyaWViIEtyenlzenRvZiBLb3psb3dza2k6
Cj4+PiBPbiBTYXQsIEF1ZyAzMSwgMjAyNCBhdCAxMjo1NToyOUFNICswMzAwLCBDcmlzdGlhbiBD
aW9jYWx0ZWEgd3JvdGU6Cj4+IAo+Pj4+ICsgIGNsb2NrczoKPj4+PiArICAgIG1pbkl0ZW1zOiA0
Cj4+Pj4gKyAgICBtYXhJdGVtczogNgo+Pj4+ICsgICAgaXRlbXM6Cj4+Pj4gKyAgICAgIC0gZGVz
Y3JpcHRpb246IFBlcmlwaGVyYWwvQVBCIGJ1cyBjbG9jawo+Pj4+ICsgICAgICAtIGRlc2NyaXB0
aW9uOiBFQVJDIFJYIGJpcGhhc2UgY2xvY2sKPj4+PiArICAgICAgLSBkZXNjcmlwdGlvbjogUmVm
ZXJlbmNlIGNsb2NrCj4+Pj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEF1ZGlvIGludGVyZmFjZSBj
bG9jawo+Pj4+ICsgICAgYWRkaXRpb25hbEl0ZW1zOiB0cnVlCj4+Pgo+Pj4gV2hhdCBpcyB0aGUg
dXNlZnVsbmVzcyBvZiBhbGwgdGhpcz8gSG93IGNhbiB5b3UgZXZlbiBiZSBzdXJlIHRoYXQgZWFj
aAo+Pj4gaW1wbGVtZW50YXRpb24gb2YgdGhpcyBjb3JlIHdpbGwgaGF2ZSBleGFjdGx5IHRoZXNl
IGNsb2Nrcz8KPj4+Cj4+Pj4gKwo+Pj4+ICsgIGNsb2NrLW5hbWVzOgo+Pj4+ICsgICAgbWluSXRl
bXM6IDQKPj4+PiArICAgIG1heEl0ZW1zOiA2Cj4+Pj4gKyAgICBpdGVtczoKPj4+PiArICAgICAg
LSBjb25zdDogcGNsawo+Pj4+ICsgICAgICAtIGNvbnN0OiBlYXJjCj4+Pj4gKyAgICAgIC0gY29u
c3Q6IHJlZgo+Pj4+ICsgICAgICAtIGNvbnN0OiBhdWQKPj4+PiArICAgIGFkZGl0aW9uYWxJdGVt
czogdHJ1ZQo+Pj4+ICsKPj4+PiArICBpbnRlcnJ1cHRzOgo+Pj4+ICsgICAgbWluSXRlbXM6IDQK
Pj4+PiArICAgIG1heEl0ZW1zOiA1Cj4+Pj4gKyAgICBpdGVtczoKPj4+PiArICAgICAgLSBkZXNj
cmlwdGlvbjogQVZQIFVuaXQgaW50ZXJydXB0Cj4+Pj4gKyAgICAgIC0gZGVzY3JpcHRpb246IENF
QyBpbnRlcnJ1cHQKPj4+PiArICAgICAgLSBkZXNjcmlwdGlvbjogZUFSQyBSWCBpbnRlcnJ1cHQK
Pj4+PiArICAgICAgLSBkZXNjcmlwdGlvbjogTWFpbiBVbml0IGludGVycnVwdAo+Pj4KPj4+IElm
IHRoZXNlIGFyZSByZWFsIHBpbnMsIHRoZW4gdGhpcyBzZWVtcyBtb3JlIHBvc3NpYmxlLCBidXQK
Pj4+IGFkZGl0aW9uYWxJdGVtcyBkb2VzIG5vdCBtYWtlIG1lIGhhcHB5Lgo+PiAKPj4gU28gd2hp
bGUgbm90ICJwaW5zIiwgdGhlIGludGVycnVwdHMgYXJlIHNlcGFyYXRlbHkgc3BlY2lmaWVkIGlu
IHRoZQo+PiBTb0MncyBsaXN0IG9mIGludGVycnVwdHMgaW4gdGhlIEdJQzoKPj4gCj4+IFJLMzU4
OCBoYXM6Cj4+IAo+PiAyMDEgIGlycV9oZG1pdHgwX29hdnAKPj4gMjAyICBpcnFfaGRtaXR4MF9v
Y2VjCj4+IDIwMyAgaXJxX2hkbWl0eDBfb2VhcmNyeAo+PiAyMDQgIGlycV9oZG1pdHgwX29tYWlu
Cj4+IDM5MiAgaXJxX2hkbWl0eDBfaHBkCj4+IAo+PiBhbmQgYW5vdGhlciBzZXQgb2YgYWxsIG9m
IHRoZW0gZm9yIGhkbWl0eDEKPj4gCj4+IGFuZCBSSzM1NzYgdXNpbmcgdGhlIHNhbWUgaGRtaSBJ
UCBoYXM6Cj4+IAo+PiAzNzAgIGlycV9oZG1pdHhfb2F2cAo+PiAzNzEgIGlycV9oZG1pdHhfb2Nl
Ywo+PiAzNzIgIGlycV9oZG1pdHhfb2VhcmNyeAo+PiAzNzMgIGlycV9oZG1pdHhfb21haW4KPj4g
Mzk5ICBpcnFfaGRtaXR4X2hwZAoKVGhlIGZpcnN0IGZvdXIgaW50ZXJydXB0cyBhcmUgZXhwb3J0
IGZyb20gdGhlIERXLUhETUktUVAgSVAgY29yZeOAggpUaGUgZmlmdGggSFBEIGludGVycnVwdHMg
aXMgYSByb2NrY2hpcCBkZXNpZ27jgIIKCj4+IAo+PiBzbyBJIGd1ZXNzIHRoZSBmaWZ0aCBpbnRl
cnJ1cHQgaXMgbWVhbnQgdG8gYmUgdGhlIGhvdHBsdWc/Cj4KPlllcCwgdGhhdCdzIGZvciB0aGUg
aG90cGx1ZyBkZXRlY3Rpb24uCj4KPj4gVGhvdWdoIEkgZ3Vlc3MgdGhpcyBzaG91bGQgYmUgc3Bl
Y2lmaWNlZCBpbiB0aGUgbmFtZS1saXN0IHRvby4KPgo+TXkgdW5kZXJzdGFuZGluZyBmcm9tIEFu
ZHkgd2FzIHRoYXQgSFBEIGludGVycnVwdCBpcyBSb2NrY2hpcCBwbGF0Zm9ybQo+c3BlY2lmaWMs
IGhlbmNlIEkgbWFkZSBpdCBwYXJ0IG9mIHJvY2tjaGlwLHJrMzU4OC1kdy1oZG1pLXFwLnlhbWwu
Cj4KPj4gRnJvbSB0aGUgU29DJ3MgbWFudWFsIGl0IGxvb2tzIGxpa2UgdGhlIGNvbnRyb2xsZXIg
aXMgc2V0IHVwIGZyb20KPj4gZGlmZmVyZW50IG1vZHVsZXMuCj4+IExpa2UgQVZQIGlzIHRoZSBh
dWRpby12aWRlby1wYWNrZXQtbW9kdWxlLCB0aGVyZSBpcyBhIE1haW4gYW5kIENFQyBNb2R1bGUK
Pj4gYXMgd2VsbCBhcyBhIGVBUkMgUlggY29udHJvbGxlciBpbnNpZGUuIEknZCBndWVzcyBpdCBt
aWdodCBiZSBwb3NzaWJsZQo+PiBvdGhlciBTb0MgdmVuZG9ycyBjb3VsZCBsZWF2ZSBvdXQgc3Bl
Y2lmaWMgbW9kdWxlcz8KPj4gCj4+IAo+PiBUTDtEUiBJIHRoaW5rIHRob3NlIGNsb2NrcyBhbmQg
aW50ZXJydXB0cyBhcmUgZGVwZW5kZW50IG9uIGhvdyB0aGUKPj4gSVAgY29yZSB3YXMgc3ludGhl
c2l6ZWQsIHNvIGZvciBub3cgSSdkIHRoaW5rIHdlIGNhbiBvbmx5IGd1YXJhbnRlZQo+PiB0aGF0
IHRoZXkgYXJlIHRydWUgZm9yIHJrMzU4OCBhbmQgcmszNTc2Lgo+PiAKPj4gU28gSSBndWVzcyB0
aGV5IHNob3VsZCBtb3ZlIHRvIHRoZSByb2NrY2hpcC1zcGVjaWZpYyBwYXJ0IG9mIHRoZSBiaW5k
aW5nCj4+IHVudGlsIHdlIGhhdmUgbW9yZSBoZG1pLXFwIGNvbnRyb2xsZXJzIGluIHRoZSBmaWVs
ZD8KPgo+SWYgdGhhdCdzIHRoZSBjYXNlLCB0aGVuIHdlIHNob3VsZCBzaW1wbHkgZHJvcCB0aGUg
Y29tbW9uIGJpbmRpbmcKPmFsdG9nZXRoZXIgZm9yIG5vdy4KPgo+VGhhbmtzLAo+Q3Jpc3RpYW4K
Pgo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
