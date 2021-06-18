Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F05F1C48BE8
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 06:42:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7A39D610EA
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 06:42:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7A39D610EA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=XRTwNx2v0uxC4XhIsb1WhpLsVoLrvbvL29UKgdEIKYo=; b=IOW9gFw3L+ARVv
	e/NSNmE3lcRCY410Qox94F9Lw/7T9XGa8Wanpic6xCbIJyh+pmUaZBLqoXPLmIy1pn4WbTMgtM2WY
	4aUJ0e9/qzmn/4bv3qSyH4Q+FGgLaRLAaB3SD/jZ8p8XA5s7ndVG7L0HCpZlixWLiaa8LZblbBBVu
	/1erMPCOiw3u0BZryr5P8DzyeR6TvvhXFvK7km2EFOMJ3JyTmaqF6dDQlkzXwUHRLkmeYp9M3DC4c
	/4OUommILA38xyyps6C+/5NWyKySBZmXL6qgtyaPvHkyjR7TJBVv3x4tgv1MPl4rGHSu9uiB4NSE1
	8hlpPt0HJHRUzOJstsjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lu8Cc-00Ct6I-L9; Fri, 18 Jun 2021 06:42:06 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lu8CO-00Ct2b-Jb; Fri, 18 Jun 2021 06:41:54 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 7FB7B1B47;
 Fri, 18 Jun 2021 14:41:49 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from desktop-sg5v5ea (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P16483T139918862960384S1623998505071549_; 
 Fri, 18 Jun 2021 14:41:47 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9ea1904fb6a8db6a9a01adf5a1436a8f>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 29
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Date: Fri, 18 Jun 2021 14:41:45 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: =?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, cl <cl@rock-chips.com>
Cc: robh+dt <robh+dt@kernel.org>, jagan <jagan@amarulasolutions.com>, 
 wens <wens@csie.org>, uwe <uwe@kleine-koenig.org>, 
 mail <mail@david-bauer.net>, "Johan Jonker" <jbx6244@gmail.com>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "Linux Kernel Mailing List" <linux-kernel@vger.kernel.org>, 
 jensenhuang <jensenhuang@friendlyarm.com>, 
 michael <michael@amarulasolutions.com>, cnsztl <cnsztl@gmail.com>, 
 devicetree <devicetree@vger.kernel.org>, 
 ulf.hansson <ulf.hansson@linaro.org>, 
 linux-mmc <linux-mmc@vger.kernel.org>, 
 gregkh <gregkh@linuxfoundation.org>, 
 linux-serial <linux-serial@vger.kernel.org>, 
 linux-i2c <linux-i2c@vger.kernel.org>, 
 =?utf-8?B?5p6X5rabKOW6leWxguW5s+WPsCk=?= <shawn.lin@rock-chips.com>, 
 =?utf-8?B?5ZC06L6+6LaF?= <david.wu@rock-chips.com>, 
 zhangqing <zhangqing@rock-chips.com>, 
 "Tao Huang" <huangtao@rock-chips.com>, cl <cl@rock-chips.com>, 
 wim <wim@linux-watchdog.org>, linux <linux@roeck-us.net>, 
 jamie <jamie@jamieiles.com>, 
 linux-watchdog <linux-watchdog@vger.kernel.org>, maz <maz@kernel.org>
Subject: Re: Re: [RESEND PATCH v4 06/10] dt-bindings: gpio: change items
 restriction of clock for rockchip, gpio-bank
References: <20210429081151.17558-1-cl@rock-chips.com>, 
 <20210513064606.18397-1-cl@rock-chips.com>, 
 <5026524.44csPzL39Z@phil>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2021061814414460293612@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210617_234153_006394_0EE4D7D8 
X-CRM114-Status: GOOD (  12.17  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgSGVpa28KCi0tLS0tLS0tLS0tLS0tCmpheS54dUByb2NrLWNoaXBzLmNvbQo+SGksCj4KPkFt
IERvbm5lcnN0YWcsIDEzLiBNYWkgMjAyMSwgMDg6NDY6MDYgQ0VTVCBzY2hyaWViIGNsQHJvY2st
Y2hpcHMuY29tOgo+PiBGcm9tOiBMaWFuZyBDaGVuIDxjbEByb2NrLWNoaXBzLmNvbT4KPj4KPj4g
VGhlIGNsb2NrIHByb3BlcnR5IG5lZWQgMiBpdGVtcyBvbiBzb21lIHJvY2tjaGlwIGNoaXBzLgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBMaWFuZyBDaGVuIDxjbEByb2NrLWNoaXBzLmNvbT4KPgo+dGhp
cyBwYXRjaCBzaG91bGQgZGVmaW5pdGx5IG1vdmUgb3ZlciB0byBKaWFucXVucyBncGlvIGRyaXZl
ciBzZXJpZXMsCj5hcyBpdCBpbnRyb2R1Y2VzIHRoZSB1c2FnZSBvZiB0aGVzZSBuZXcgY2xvY2tz
Lgo+Cj5BbHNvIHdoaWxlIHRoZSBzaW5nbGUtY2xvY2sgdmFyaWFudCBkZWZpbml0bHkgZG9lc24n
dCBuZWVkIGl0LAo+SSB0aGluayB3ZSBtYXkgd2FudCBjbG9jay1uYW1lcyAiYXBiX3BjbGsiLCAi
ZGVib3VuY2UtcmVmIiBmb3IgdGhlCj4yLWNsb2NrIHZhcmlhbnRzPwo+IApPa2F5LCBJIHRoaW5r
IGl0J3MgdmVyeSBnb29kIGlkZWEsIApidXQgaXMgaXQgcG9zc2libGUgdG8gcG9zdCB0aGUgcmVn
LW5hbWUgcGF0Y2ggYWZ0ZXIgdGhlc2UgZHRzIHNlcmlhbCBhbmQgZ3BpbyBzZXJpYWwgcGF0Y2hl
cyA/Cgo+Cj5IZWlrbwo+Cj4+IC0tLQo+PsKgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9ncGlvL3JvY2tjaGlwLGdwaW8tYmFuay55YW1sIHwgNSArKysrLQo+PsKgIDEgZmlsZSBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL3JvY2tjaGlwLGdwaW8tYmFu
ay55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vcm9ja2NoaXAs
Z3Bpby1iYW5rLnlhbWwKPj4gaW5kZXggZDk5M2UwMC4uMGQ2MmMyOCAxMDA2NDQKPj4gLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vcm9ja2NoaXAsZ3Bpby1iYW5r
LnlhbWwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vcm9j
a2NoaXAsZ3Bpby1iYW5rLnlhbWwKPj4gQEAgLTIyLDcgKzIyLDEwIEBAIHByb3BlcnRpZXM6Cj4+
wqDCoMKgwqDCoCBtYXhJdGVtczogMQo+PsKgCj4+wqDCoMKgIGNsb2NrczoKPj4gLcKgwqDCoCBt
YXhJdGVtczogMQo+PiArwqDCoMKgIG1pbkl0ZW1zOiAxCj4+ICvCoMKgwqAgaXRlbXM6Cj4+ICvC
oMKgwqDCoMKgIC0gZGVzY3JpcHRpb246IEFQQiBpbnRlcmZhY2UgY2xvY2sgc291cmNlCj4+ICvC
oMKgwqDCoMKgIC0gZGVzY3JpcHRpb246IEdQSU8gZGVib3VuY2UgcmVmZXJlbmNlIGNsb2NrIHNv
dXJjZQo+PsKgCj4+wqDCoMKgIGdwaW8tY29udHJvbGxlcjogdHJ1ZQo+PsKgCj4+Cj4KPgo+Cj4K
Pgo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
