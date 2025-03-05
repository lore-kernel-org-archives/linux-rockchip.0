Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75FE0C87FD1
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 10:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fDzOltS8Grfhw8EzLpuXFIc0T6HF8ZELv/c6e9jSFt4=; b=FRrDmrG3uRn3SM
	COqExaqOJeUFmcz5VVpCktZa7fMIq4soA3W5jPcckow9XVRiuavb//IfNbqFswJp4KPBC+B04weKJ
	MK1+rgOHO3Dktx2B7owuXTbPjnSMNlYl6u0rOi/6Xu1J4kOWS+qsQgE5dwRJik5aGPop7JsF5oBZu
	VBbUUhXJKXCglk9S30fscHv5mh5rgoe5Xq0DOEasKh+mqV8mGBW/nm6GiGzlhIwaT2gANDUao8pQ5
	HDdd1u9TKeS/qX7Bh/jp1092rAGuWC/3l0TVietw/FBkIcOiKI4sHtx7SygNXHk7Rytt+DoZGS/QP
	CskN2tv+KyBg7m83qawA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbc9-0000000EviI-0GpV;
	Wed, 06 Aug 2025 10:43:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpenh-00000006pa5-30tY;
	Wed, 05 Mar 2025 02:48:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Message-ID:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=VFHlaOkps4gELsNG93bMey9hkOJsRA3mqrGKinS7NNw=; b=fDhPnK7lUBS349Jpa5huRZ5gfv
	C0LhkdKwQ6/dmNbaYhplyryS2YGMJlkq1oJ4cSOqKZsbukDnqywKUdRUVcOPPkgVKgspF65FVJ4iu
	lhgxT705ukZcZ3S/Zxsi8Uq7flzuJcf6sxWJpjNqVbpr9uJQAH3qs34R4ZbhY7ZVZ3fXaWZ0rf3Ri
	o5Q1LkcAcKqFJF7HxBMdJWMh6EJR7gfEuXwDPWCoOu8e74/1dsR/8bo4r8Ux5S6iW52+sWCEFsl4y
	PhBZ1wJuaV5ldb46je6GvqpdhFHHNeMu/5VGIQGhi/k77BPC0DnlET8lHskQJ9xdQewhQzo4XAefH
	SGJaCTag==;
Received: from m16.mail.163.com ([220.197.31.5])
	by desiato.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpenc-00000000KN2-0gCb;
	Wed, 05 Mar 2025 02:48:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=UOhnFF01l7HOjYg5x6uMcW+B9fbrcWjnbUnMIBSb6g4=; b=o
	TDXhF0ao8rGr8j8jqZSvZyPwCn4bRtMbMUqolB3b0d33NLVtg8Do+zE4hoqyKSPc
	zOJuUqn0UDL/56pNMjEk7XWHy1TvHLbfex2UCxGVCdwMmtrpxuop+RhsFVrPw0Fo
	ipgMP4wcY2oyQyyBZFmm/QVjGPIMLLCZxeuxv5CPHg=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-118 (Coremail) ; Wed, 5 Mar 2025 10:30:55 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Wed, 5 Mar 2025 10:30:55 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Piotr Oniszczuk" <piotr.oniszczuk@gmail.com>
Cc: heiko@sntech.de, neil.armstrong@linaro.org,
	sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
	hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, yubing.zhang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	"Andy Yan" <andy.yan@rock-chips.com>, krzk+dt@kernel.org,
	robh@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re:Re: [PATCH 0/6] Add support for RK3588 DisplayPort Controller
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
X-NTES-SC: AL_Qu2fA/2fvkAu4yiaZukfmkcVgOw9UcO5v/Qk3oZXOJF8jDDp2ycwUUJSDXLaweO0FQ+OmgmGXTtC9/R7f4VTVaQNuZe6Rui3nVzOCdmFQHxStA==
MIME-Version: 1.0
Message-ID: <25401bfa.291d.19564244e54.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: digvCgD3Xw5ft8dn2jd2AA--.4215W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBkAMHXmfHsp5IAwACsP
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_024757_301458_429E8488 
X-CRM114-Status: GOOD (  10.05  )
X-Mailman-Approved-At: Wed, 06 Aug 2025 03:42:49 -0700
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

CkhpIFBpb3RyLAoK5ZyoIDIwMjUtMDMtMDQgMjE6MTI6NTDvvIwiUGlvdHIgT25pc3pjenVrIiA8
cGlvdHIub25pc3pjenVrQGdtYWlsLmNvbT4g5YaZ6YGT77yaCj4KPgo+PiBXaWFkb21vxZvEhyBu
YXBpc2FuYSBwcnpleiBBbmR5IFlhbiA8YW5keXNocmtAMTYzLmNvbT4gdyBkbml1IDEgbWFyIDIw
MjUsIG8gZ29kei4gMTM6MjQ6Cj4+IAo+PiAKPj4gSGkgUGlvdHIsCj4+IAo+Pj4gCj4+PiBpcyBp
dCB3b3J0aCB0byBwbGF5IHdpdGggdGhpcyBvciBpdCBpcyB0b28gZWFybHk/Cj4+IAo+PiBJIHRo
aW5rIHlvdSBjb3VsZCBnaXZlIGl0IGEgdHJ5IGlmIGl0IHVzaW5nIHRoZSBTdGFuZGFyZCBEUO+8
iG5vbi1BTFQgbW9kZe+8iSBwb3J0IGZvciBvdXRwdXQuIAo+PiBTaW5jZSBJIGRvbid0IGN1cnJl
bnRseSBoYXZlIGEgZGV2ZWxvcG1lbnQgYm9hcmQgd2l0aCBEUDEgb3V0cHV0IGF2YWlsYWJsZSwg
SSBoYXZlbid0IGJlZW4KPj4gYWJsZSB0byB0ZXN0IGl0IHlldC4gQXMgZm9yIHRoZSBUeXBlLUMg
QWx0ZXJuYXRlIE1vZGUgb3V0cHV0LCBzb21lIHBhdGNoZXMgYXJlIHN0aWxsIHJlcXVpcmVkIAo+
PiBJJ2xsICBzZW5kIGl0IHdpdGggVjIgdG9tb3Jyb3cgb3IgbmV4dCB3ZWVrLgo+PiBGZWVsIGZy
ZWUgdG8gbGV0IG1lIGtub3cgaWYgSWYgeW91IGVuY291bnRlciBhbnkgaXNzdWVz44CCCj4+IAo+
Cj5BbmR5LAo+SSBhZGRlZCBkcDEgZW5hYmxlbWVudCBpbiByb2NrNSBpdHggbGlrZSB0aGlzOiBo
dHRwczovL2dpc3QuZ2l0aHViLmNvbS93YXJwbWUvYmRkZjc1OTEyMTkzZjU3NzI0YzQ5MjE2ZDVk
ODVkNGEKPlVuZm9ydHVuYXRlbHkgaXQgbm90IHdvcmtzLgo+Rm9yIC9zeXMva2VybmVsL2RlYnVn
L2RyaS8wL3N0YXRlIC0gcGxzIHNlZSBhYm92ZSBsaW5r4oCmCj5J4oCZbSBub3Qgc3VyZTogZG8g
aSBtaXNzZWQgc29tZXRoaW5nIGluIGR0IG9yIHJhdGhlciBpc3N1ZSBpc3N1ZSAgaXMgaW4gZHAg
Y29kZS4uLgoKSSBvbmx5IHNlZSB0aGUgSERNSSBjb25uZWN0b3IgZnJvbSB5b3VyIGRyaS9zdGF0
ZSA7IHNvIGl0IGFwcGVhcnMgdGhlIERQIGRyaXZlciBoYXNuJ3QgYmVlbiBzdWNjZXNzZnVsbHkK
aW5pdGlhbGl6ZWTvvIhJIHRoaW5rIGtlcm5lbCBkbWVzZyBjYW4gdGVsbCB0aGF077yJLiAKSGF2
ZSB5b3UgZW5hYmxlZCBDT05GSUdfUk9DS0NISVBfRFdfRFAgPyBUaGlzIGlzIG5lZWRlZC4KCgo+
Cj5GWUk6IHNjaGVtYXRpYzogaHR0cHM6Ly9kbC5yYWR4YS5jb20vcm9jazUvNWl0eC92MTExMC9y
YWR4YV9yb2NrXzVpdHhfdjExMTBfc2NoZW1hdGljLnBkZgo+Cj4KPgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
