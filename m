Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CF41CA0FF2
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Aug 2025 12:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXdpZGDDQeVqLM4hmP3n28ra4hnFFnGv/00xuTQ+5Y0=; b=aJmQqx6WpG3/b1
	azxhv/S+tbUAuz9rwaAVqXgyIwG6mrQ2kEFCJXnx0YzZpJCtd8xT/0n88XE5gk3waqlWBjVyLuy98
	nZeiscGoRnfxf2IczGJuZ7R2iIMZr1G4dcKVlh//bVV6LmUorSspxC39+cpy8uPyyAiFGoOGE7t8u
	Rgu0/dUebHwemPNfEd4EUQeOlauhKqqKGtl9oZIJT+HkqaKzTuTqjTfJhjMkUJZxBD7ECASfUPTI4
	tu152QFcC5x1XfKNed8gIIhas6+bNO+QIfb9N9Q3oVb6EsvZkQ25+j6KuaRwU8lX7NaShOzv0LLE4
	Sdojat6woyQD3AYiC1jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ush3t-0000000A9Mg-38VW;
	Sun, 31 Aug 2025 12:21:33 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usgvt-0000000A8jy-41CZ;
	Sun, 31 Aug 2025 12:13:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=F7GUQd1kZpglV52vKxF3lBrT7DCXnSp1/ypCqZo5gQ8=; b=Q
	u292NPNlFPfN6v1LxIbA2gwTGGgaZaP4jauzeh6HOuhjnk9Whh4LOvnXb6iLQzh2
	e60d4ati97F1a7kHzHBCbMMyVCQNKXqq1MEe6jGhigj4A0SoMh/b2HbGyNGnPfGL
	456ChX2S+uJVQvUvuVAJE0ly9Wy+k6mt+OlC5c7Scw=
Received: from andyshrk$163.com ( [103.29.142.67] ) by
 ajax-webmail-wmsvr-40-127 (Coremail) ; Sun, 31 Aug 2025 20:12:36 +0800
 (CST)
X-Originating-IP: [103.29.142.67]
Date: Sun, 31 Aug 2025 20:12:36 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Maud Spierings" <maud_spierings@hotmail.com>
Subject: Re:Re: [PATCH v7 00/10] Add support for RK3588 DisplayPort
 Controller
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20250519(9504565a)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <AM7P189MB1009B9BCECE97040CFD3DBA0E33AA@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
References: <20250822063959.692098-1-andyshrk@163.com>
 <AM7P189MB1009B9BCECE97040CFD3DBA0E33AA@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
X-NTES-SC: AL_Qu2eBPqfvUsu4CSZZukfmUgWjuw/WsG1v/Ul1YBSP556jA/pwQIqT3RSBmf2ye60Fj2tmgmGcjZp09VaeKdkXp4Q15ojZ1N9shTuO1xVkiOUJg==
MIME-Version: 1.0
Message-ID: <3e2e87f3.21ca.199000b2cc1.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: fygvCgCnl740PLRoEGAlAA--.1025W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEhy6Xmi0NLeDDAABs7
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250831_051318_362566_3821B5BB 
X-CRM114-Status: GOOD (  11.76  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, mripard@kernel.org, sebastian.reichel@collabora.com, heiko@sntech.de, neil.armstrong@linaro.org, stephen@radxa.com, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkhlbGxvIE1hdWTvvIwKCkF0IDIwMjUtMDgtMzAgMDg6NDY6MTQsICJNYXVkIFNwaWVyaW5ncyIg
PG1hdWRfc3BpZXJpbmdzQGhvdG1haWwuY29tPiB3cm90ZToKPkhlbGxvIEFuZHksCj4KPj4gVGhl
cmUgYXJlIHR3byBEVyBEUFRYIGJhc2VkIERpc3BsYXlQb3J0IENvbnRyb2xsZXIgb24gcmszNTg4
IHdoaWNoCj4+IGFyZSBjb21wbGlhbnQgd2l0aCB0aGUgRGlzcGxheVBvcnQgU3BlY2lmaWNhdGlv
biBWZXJzaW9uIDEuNCB3aXRoCj4+IHRoZSBmb2xsb3dpbmcgZmVhdHVyZXM6Cj4+IAo+PiAqIERp
c3BsYXlQb3J0IDEuNGEKPj4gKiBNYWluIExpbms6IDEvMi80IGxhbmVzCj4+ICogTWFpbiBMaW5r
IFN1cHBvcnQgMS42MkdicHMsIDIuN0dicHMsIDUuNEdicHMgYW5kIDguMUdicHMKPj4gKiBBVVgg
Y2hhbm5lbCAxTWJwcwo+PiAqIFNpbmdsZSBTdHJlYW0gVHJhbnNwb3J0KFNTVCkKPj4gKiBNdWx0
aXN0cmVhbSBUcmFuc3BvcnQgKE1TVCkKPj4gKiBUeXBlLUMgc3VwcG9ydCAoYWx0ZXJuYXRlIG1v
ZGUpCj4+ICogSERDUCAyLjIsIEhEQ1AgMS4zCj4+ICogU3VwcG9ydHMgdXAgdG8gOC8xMCBiaXRz
IHBlciBjb2xvciBjb21wb25lbnQKPj4gKiBTdXBwb3J0cyBSQkcsIFlDYkNyNDo0OjQsIFlDYkNy
NDoyOjIsIFlDYkNyNDoyOjAKPj4gKiBQaXhlbCBjbG9jayB1cCB0byA1OTRNSHoKPj4gKiBJMlMs
IFNQRElGIGF1ZGlvIGludGVyZmFjZQo+PiAKPj4gVGhlIGN1cnJlbnQgdmVyc2lvbiBvZiB0aGlz
IHBhdGNoIHNlcmllcyBvbmx5IHN1cHBvcnRzIGJhc2ljIGRpc3BsYXkgb3V0cHV0cy4KPj4gSSBj
b25kdWN0ZWQgdGVzdHMgd2l0aCBEUDAgaW4gMTA4MHAgYW5kIDRLQDYwIFlDYkNyNDoyOjAgbW9k
ZXM7IHRoZSBBTFQvVHlwZS1DCj4+IG1vZGUgd2FzIHRlc3RlZCBvbiBSb2NrIDVCCj4KPklzIHRo
ZXJlIGFuIGV4YW1wbGUgb2YgdGhpcz8gSSB3YW50IHRvIGltcGxlbWVudCBpdCBmb3IgdGhlIHVz
Yi1jIHBvcnQgCj5vbiB0aGUgb3JhbmdlcGkgNSBwbHVzLCBidXQgSSBjYW4ndCBxdWl0ZSBmaWd1
cmUgb3V0IHdoZXJlIEkgd291bGQgaGF2ZSAKPnRvIGxpbmsgdGhlIERQIG91dHB1dCBlbmRwb2lu
dCB0bz8KPgo+VGhlIHVzYi1jIGVuZHBvaW50cyBhcmUgYWxsIGRvbmUuIElzIGl0IHRvIGFub3Ro
ZXIgZW5kcG9pbnQgaW4gdGhlIAo+dXNiZHBfcGh5PyBUaGUgb25seSBlbmRwb2ludHMgdGhlcmUg
c2VlbSB0byBiZSBvdXRwdXRzLiBPciBpcyBpdCAKPnN1cHBvc2VkIHRvIGJlIGxlZnQgdW5jb25u
ZWN0ZWQgZm9yIHRoZSBBTFQvdHlwZS1DIG1vZGU/Cj4KPkkndmUgdHJpZWQgcmVhZGluZyB0aHJv
dWdoIGFsbCB0aGUgcmVsZXZhbnQgZHQtYmluZGluZ3MgYnV0IGNhbid0IGZpbmQgaXQuCgoKSSBo
YXZlIGEgIHRlc3QgYnJhbmNoIGZvciBBTFQvVHlwZS1DIG1vZGUgb24gUm9jayA1QiBoZXJlWzFd
CgpbMV1odHRwczovL2dpdGh1Yi5jb20vYW5keXNocmsvbGludXgvY29tbWl0cy9yazM1ODgtZHAt
dXBzdHJlYW0tdjYvCgo+Cj5LaW5kIHJlZ2FyZHMsCj5NYXVkCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
