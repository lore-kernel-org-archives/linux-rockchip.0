Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E995C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 06:50:51 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0467C619E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 06:50:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0467C619E0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=daIqn+nVMH6KqXNQWjU4J6C8Ts2P1RijdmzG1EBUu3U=; b=Z1xYy5dizM4ACecepsWNRaSF0
	gilHvzp3bKLChxFuVT0R1TYYd/ZWSMNetkIaoXJQE0XfTBIbALLqc5Y1OXjSApub6EN1RQbNuQZvU
	bEk4hHGD5zfXK099eur6qo8G7Q1mHgpN2MOSxCD/8PyuYcMIph0BjUdw7OIYDPNCV4S4xtrFzeLZy
	GW9TEHvV/GUAIrUgSTYQ5zQzbKiSAXTwC7T8jbeq7e8WkLYgN1ohVa+2d+BWsRqhMK8GF1KjzHmcP
	fkQX4I0GnvEdsfMIXePgEsVeMnqUvUcQh7AXQ7XuJe5Xhm5TaOv+wfPt2eaDnZugJSe/XangjUwjZ
	8OMiTw4NQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOxLn-00GRK0-DC; Wed, 24 Mar 2021 06:50:43 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOxLg-00GRJM-Gn
 for linux-rockchip@lists.infradead.org; Wed, 24 Mar 2021 06:50:40 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id C248C556;
 Wed, 24 Mar 2021 14:50:30 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from desktop-sg5v5ea (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P24304T139684921460480S1616568629027815_; 
 Wed, 24 Mar 2021 14:50:29 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4364d0d3bd60dc464c6010413030266f>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: jay.xu@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Date: Wed, 24 Mar 2021 14:50:29 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: =?utf-8?B?6K645YmR576k?= <jay.xu@rock-chips.com>, 
 "Tao Huang" <huangtao@rock-chips.com>, 
 =?utf-8?B?5p2o5Yev?= <kever.yang@rock-chips.com>, 
 "Linus Walleij" <linus.walleij@linaro.org>, 
 =?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
 bgolaszewski <bgolaszewski@baylibre.com>
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "Linux Kernel Mailing List" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH RESEND 0/7] gpio-rockchip driver
References: <20210324064541.949630-1-jay.xu@rock-chips.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <202103241450286417142@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_065038_009218_2AD0E8F7 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
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

SSdtIGZvcmdldCB0byBzZW5kLXRvIGluY2x1ZGUgQmFydG9zeiwgSSdsbCByZW1lbWJlciBpbiBu
ZXh0IHZlcnNpb24KCi0tLS0tLS0tLS0tLS0tCmpheS54dUByb2NrLWNoaXBzLmNvbQo+U2VwYXJh
dGUgZ3BpbyBkcml2ZXIgZnJvbSBwaW5jdHJsIGRyaXZlciwgYW5kIHN1cHBvcnQgdjIgY29udHJv
bGxlci4KPgo+SmlhbnF1biBYdSAoNyk6Cj7CoCBwaW5jdHJsL3JvY2tjaGlwOiBzZXBhcmF0ZSBz
dHJ1Y3Qgcm9ja2NoaXBfcGluX2JhbmsgdG8gYSBoZWFkIGZpbGUKPsKgIHBpbmN0cmwvcGluY3Ry
bC1yb2NrY2hpcC5oOiBhZGQgcGluY3RybCBkZXZpY2UgdG8gZ3BpbyBiYW5rIHN0cnVjdAo+wqAg
Z3Bpbzogc2VwYXJhdGUgZ3BpbyBkcml2ZXIgZnJvbSBwaW5jdHJsLXJvY2tjaGlwIGRyaXZlcgo+
wqAgZ3Bpby9yb2NrY2hpcDogdXNlIHN0cnVjdCByb2NrY2hpcF9ncGlvX3JlZ3MgZm9yIGdwaW8g
Y29udHJvbGxlcgo+wqAgZ3Bpby9yb2NrY2hpcDogc3VwcG9ydCBuZXh0IHZlcnNpb24gZ3BpbyBj
b250cm9sbGVyCj7CoCBncGlvL3JvY2tjaGlwOiBhbHdheXMgZW5hYmxlIGNsb2NrIGZvciBncGlv
IGNvbnRyb2xsZXIKPsKgIGdwaW8vcm9ja2NoaXA6IGRyb3AgaXJxX2djX2xvY2svaXJxX2djX3Vu
bG9jayBmb3IgaXJxIHNldCB0eXBlCj4KPiBkcml2ZXJzL2dwaW8vS2NvbmZpZ8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgOCArCj4gZHJpdmVycy9ncGlvL01ha2VmaWxlwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4gZHJpdmVycy9ncGlvL2dwaW8tcm9ja2No
aXAuY8KgwqDCoMKgwqDCoCB8IDc1OCArKysrKysrKysrKysrKysrKysrKysrKysKPiBkcml2ZXJz
L3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5jIHwgOTA5ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCj4gZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcm9ja2NoaXAuaCB8IDI4NiArKysrKysr
KysKPiA1IGZpbGVzIGNoYW5nZWQsIDEwNzIgaW5zZXJ0aW9ucygrKSwgODkwIGRlbGV0aW9ucygt
KQo+IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jCj4gY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tjaGlwLmgKPgo+LS0K
PjIuMjUuMQo+Cj4KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
