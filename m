Return-Path: <SRS0=F3mh=KM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B822C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 00:55:43 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3D59D61159
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 00:55:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3D59D61159
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=tamnJ3Wkde1aXCXAXaRjLE/Wi8mmcCGXoOGSOQewGp4=; b=fH5PI6C0PL4VKYxepJyKygUUu
	yRSaJwcMI/2h7ZQktwr42lj0/JTRH0aMeFZOkNMkiEq1lJIurCTC6NDOwTpHhqlHYvSjDbkyFobQW
	OfBJlABH1mlGN4s6N1pFcg8Sh4PJFnxwJhkr9FgaRNu8ZqgkrNDlyMSC3EhhqhWWaLrr05YsVC7rq
	4+mNrixVTFtM8pqhFmI+vyELAgvJPxrWmjtFgy4LgWdhzgl0YL8vEhPgWcyD3kPpgaDe6HLK9IXd2
	GjoiVXy4COindJE6pCI37f8KYsb2UTIFeGiYVcDfq/NpyU1Gle6J80mBy1OpmhFhvhls9PDUMc7tk
	h1Cs+I1RQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liRXh-00DKPw-1x; Mon, 17 May 2021 00:55:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liRXQ-00DKOB-HL; Mon, 17 May 2021 00:55:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Message-ID:Mime-Version:References:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:In-Reply-To;
 bh=SeGyXB7vND/YPIhDBI0O8H3ZqJVwcE8pkgmH4dZ0/b4=; b=U/Dx2plu4TtmspjaL3hCbUAOx+
 EOYeB0Tm2ULymwORiQjuqBEW647Vi44xVgU0U1Kol1pJFO8brIW5VFyQonYrxZR7KnEwn9G5u3XpO
 NkJLGJc4I7eKjmoCYBE2y4xC446USNBcUcwogSQlQaWMCpnILv2bKIDbEyt61d++GrGzAp+z9jXQu
 e9XM0HLwPHcNcIC0wSNBz5Ml31uK2r/c20tkhq4S7qfn2o2BYRBIXhx8esJk+brvVQ5p343nV86ZC
 Ix5pIpfyMhoj4DX+89j1Xh88LRAJe1Zumgn4Auq/F6fB6z1fA5z2J+T+JuC2iKgxBOn52lMvkpnHF
 J7JvUFKg==;
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liRXM-00DOZP-6R; Mon, 17 May 2021 00:55:14 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id 3CDDD5F0;
 Mon, 17 May 2021 08:54:59 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from desktop-sg5v5ea (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P18566T140528154826496S1621212896428220_; 
 Mon, 17 May 2021 08:54:58 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <baf37e63b7c024d1f0a4538ae023d0e5>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 29
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Date: Mon, 17 May 2021 08:54:56 +0800
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
Message-ID: <202105170854564905124@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_175512_579629_7AA1E856 
X-CRM114-Status: GOOD (  10.61  )
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

SGkgSGVpa286CgotLS0tLS0tLS0tLS0tLQpqYXkueHVAcm9jay1jaGlwcy5jb20KPkhpLAo+Cj5B
bSBEb25uZXJzdGFnLCAxMy4gTWFpIDIwMjEsIDA4OjQ2OjA2IENFU1Qgc2NocmllYiBjbEByb2Nr
LWNoaXBzLmNvbToKPj4gRnJvbTogTGlhbmcgQ2hlbiA8Y2xAcm9jay1jaGlwcy5jb20+Cj4+Cj4+
IFRoZSBjbG9jayBwcm9wZXJ0eSBuZWVkIDIgaXRlbXMgb24gc29tZSByb2NrY2hpcCBjaGlwcy4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogTGlhbmcgQ2hlbiA8Y2xAcm9jay1jaGlwcy5jb20+Cj4KPnRo
aXMgcGF0Y2ggc2hvdWxkIGRlZmluaXRseSBtb3ZlIG92ZXIgdG8gSmlhbnF1bnMgZ3BpbyBkcml2
ZXIgc2VyaWVzLAo+YXMgaXQgaW50cm9kdWNlcyB0aGUgdXNhZ2Ugb2YgdGhlc2UgbmV3IGNsb2Nr
cy4KPgo+QWxzbyB3aGlsZSB0aGUgc2luZ2xlLWNsb2NrIHZhcmlhbnQgZGVmaW5pdGx5IGRvZXNu
J3QgbmVlZCBpdCwKPkkgdGhpbmsgd2UgbWF5IHdhbnQgY2xvY2stbmFtZXMgImFwYl9wY2xrIiwg
ImRlYm91bmNlLXJlZiIgZm9yIHRoZQo+Mi1jbG9jayB2YXJpYW50cz8KPiAKR290IGl0ICwgSSds
bCBwaWNrIHRoZW0gdG8gZ3BpbyBwYXRjaGVzIHNlcmlhbAoKQlIKPgo+SGVpa28KPgo+PiAtLS0K
Pj7CoCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3Bpby9yb2NrY2hpcCxncGlv
LWJhbmsueWFtbCB8IDUgKysrKy0KPj7CoCAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvZ3Bpby9yb2NrY2hpcCxncGlvLWJhbmsueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL3JvY2tjaGlwLGdwaW8tYmFuay55YW1sCj4+IGluZGV4
IGQ5OTNlMDAuLjBkNjJjMjggMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9ncGlvL3JvY2tjaGlwLGdwaW8tYmFuay55YW1sCj4+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL3JvY2tjaGlwLGdwaW8tYmFuay55YW1sCj4+
IEBAIC0yMiw3ICsyMiwxMCBAQCBwcm9wZXJ0aWVzOgo+PsKgwqDCoMKgwqAgbWF4SXRlbXM6IDEK
Pj7CoAo+PsKgwqDCoCBjbG9ja3M6Cj4+IC3CoMKgwqAgbWF4SXRlbXM6IDEKPj4gK8KgwqDCoCBt
aW5JdGVtczogMQo+PiArwqDCoMKgIGl0ZW1zOgo+PiArwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9u
OiBBUEIgaW50ZXJmYWNlIGNsb2NrIHNvdXJjZQo+PiArwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9u
OiBHUElPIGRlYm91bmNlIHJlZmVyZW5jZSBjbG9jayBzb3VyY2UKPj7CoAo+PsKgwqDCoCBncGlv
LWNvbnRyb2xsZXI6IHRydWUKPj7CoAo+Pgo+Cj4KPgo+Cj4KPgo+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
