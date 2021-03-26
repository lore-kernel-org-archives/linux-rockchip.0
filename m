Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16467C433C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:40:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 906B161A32
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:40:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 906B161A32
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=awz7DWqpVgoX+0ldIx9ikXfxxZXFHFP8o1xjxyngZgU=; b=JQlFr0HJp368u4X1RgNSqu9iM
	OGCzd8HHxZ+6+d+7/wh/Du6PhaxS7QbTWpNSZOiNbz7e8TAsycoiyocgN3kusWNcoKvWXQMfhGVny
	KXHRrK4sYZdw1eliYSwiH8nbRcE+edAuxuCX55qbLFWgQD0VMo2MMYBwK3m6VNNcsM5wdQ+zawVcm
	EagNysIY5iDS8CCcEg6vNF+D9ZfeIS1wKEp3H6MMQxtwXNM0koTzy+bq7jJ5VWWoXE1NlUsfFPS1p
	rNFpy/15I2AYfFL3BpEQA3lxIQMzqcGcR7QKgYA0J6RcUP0E+nBh+iETRlLCw2wtZ/zdZmt4dhapj
	bAs1e8L1A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPix7-003BMX-TO; Fri, 26 Mar 2021 09:40:25 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPiwx-003BL0-7m; Fri, 26 Mar 2021 09:40:17 +0000
Received: by mail-oi1-x22a.google.com with SMTP id w70so5188285oie.0;
 Fri, 26 Mar 2021 02:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IfjukbAFWE1p+V33R5APqijfZfzXo6Lv0BemEcQj2cM=;
 b=cWVDouGokuJ/Zr+T9ljGEEvKkNiIGZQSlhxG5QXXbQFytg2GgjaZXxKJDKmulPug6x
 6OzhseclyQc20g9S08LXbPKFg9Y84/WypYuW3QQ7keWhcqIMa6XbaqmqtbvWL1eyHxSk
 MQH4oDdb11FFrq/YcVHVgAM9aCsFCIVc2cpbZS0YvLBsZMuwpg8R2/2juHatsRKbVLGj
 gKa2X6oMJ2yMq+nO5uApHUNRbnMdj25bGC+JjjH1LYr1ukVdb5mAltgnaDiBphGssuKi
 fBLLh/eRh7HluGEpq4QH3oQxOh6F2cCIAEZ4Wj3DKNqz+E02c9yDQOPnmU9YgM6lFq2R
 d5wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IfjukbAFWE1p+V33R5APqijfZfzXo6Lv0BemEcQj2cM=;
 b=Ov+dnIgeiJaGeWEAnEhod+iHY5BrEL6r2XrrXYz5gjhGPREwGhmqMB4fneggPFlOxz
 yDQsCtHVoPlM60nQra160ZQ9aNO/kbOmHhG7JQfX/QVTHdxvWwzsxAhYIfj0JNgbm/TU
 AOad2ZrolNhItllxSaDJ+jH3B5zzrUCltO39U2vmKWQEh+jjMNabbQzXRlZNG1NI8oqz
 IwHaApsleaC7HIWp6zc7E/9ZgNYeLMStxM7RnIMJzk7raE1xI0ulpjDaoyPs435410cy
 m/Y/fjBietoJ/0wQ9/luOW2gickOLRTHY6Qt8H4jZ3ezXutri3tr3PPZMJgYcGSfjY65
 TxvQ==
X-Gm-Message-State: AOAM531ABTxJpr8LNbU/hLxfR1dk+yo1WMUJHHup3+JHxkFv1yLUFsE8
 v4cLmkP7GTJhYBBFYMkXx+SuFeqZWYziErdom4AEguiBZoU=
X-Google-Smtp-Source: ABdhPJzLkCAiEv8O3PoSMO3z2TH6i5wP/HkVGgZ7n3cKdrzj2qhvnOOLbEazs9E/qPiiK3X9eW41ernr9TzL3NsVaTk=
X-Received: by 2002:aca:d514:: with SMTP id m20mr9143934oig.47.1616751613911; 
 Fri, 26 Mar 2021 02:40:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210326091547.12375-1-zhangqing@rock-chips.com>
 <20210326091547.12375-2-zhangqing@rock-chips.com>
In-Reply-To: <20210326091547.12375-2-zhangqing@rock-chips.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Fri, 26 Mar 2021 10:40:01 +0100
Message-ID: <CAFqH_51gSiBMMKovNmLi5msz9HKaJU0JSvFidg5Q6c0eN_rgEg@mail.gmail.com>
Subject: Re: [PATCH v5 01/11] arm: dts: rockchip: Fix power-controller node
 names for rk3066a
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>, cl@rock-chips.com,
 huangtao@rock-chips.com, 
 kever.yang@rock-chips.com, tony.xie@rock-chips.com, 
 finley.xiao@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_094015_402923_2B1DACF7 
X-CRM114-Status: GOOD (  13.51  )
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

aQoKTWlzc2F0Z2UgZGUgRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+IGRl
bCBkaWEgZHYuLCAyNiBkZQptYXLDpyAyMDIxIGEgbGVzIDEwOjE3Ogo+Cj4gVXNlIG1vcmUgZ2Vu
ZXJpYyBuYW1lcyAoYXMgcmVjb21tZW5kZWQgaW4gdGhlIGRldmljZSB0cmVlIHNwZWNpZmljYXRp
b24KPiBvciB0aGUgYmluZGluZyBkb2N1bWVudGF0aW9uKQo+Cj4gU2lnbmVkLW9mZi1ieTogRWxh
aW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogRW5yaWMg
QmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KCj4gLS0tCj4g
IGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzA2NmEuZHRzaSB8IDYgKysrLS0tCj4gIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vYm9vdC9kdHMvcmszMDY2YS5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMDY2YS5k
dHNpCj4gaW5kZXggMjUyNzUwYzk3Zjk3Li5iYmMzYmZmNTA4NTYgMTAwNjQ0Cj4gLS0tIGEvYXJj
aC9hcm0vYm9vdC9kdHMvcmszMDY2YS5kdHNpCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmsz
MDY2YS5kdHNpCj4gQEAgLTc1NSw3ICs3NTUsNyBAQAo+ICAgICAgICAgICAgICAgICAjYWRkcmVz
cy1jZWxscyA9IDwxPjsKPiAgICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4KPiAt
ICAgICAgICAgICAgICAgcGRfdmlvQFJLMzA2Nl9QRF9WSU8gewo+ICsgICAgICAgICAgICAgICBw
b3dlci1kb21haW5AUkszMDY2X1BEX1ZJTyB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcmVn
ID0gPFJLMzA2Nl9QRF9WSU8+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwm
Y3J1IEFDTEtfTENEQzA+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY3J1
IEFDTEtfTENEQzE+LAo+IEBAIC03ODIsNyArNzgyLDcgQEAKPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICA8JnFvc19yZ2E+Owo+ICAgICAgICAgICAgICAgICB9Owo+Cj4gLSAgICAg
ICAgICAgICAgIHBkX3ZpZGVvQFJLMzA2Nl9QRF9WSURFTyB7Cj4gKyAgICAgICAgICAgICAgIHBv
d2VyLWRvbWFpbkBSSzMwNjZfUERfVklERU8gewo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJl
ZyA9IDxSSzMwNjZfUERfVklERU8+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9
IDwmY3J1IEFDTEtfVkRQVT4sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZj
cnUgQUNMS19WRVBVPiwKPiBAQCAtNzkxLDcgKzc5MSw3IEBACj4gICAgICAgICAgICAgICAgICAg
ICAgICAgcG1fcW9zID0gPCZxb3NfdnB1PjsKPiAgICAgICAgICAgICAgICAgfTsKPgo+IC0gICAg
ICAgICAgICAgICBwZF9ncHVAUkszMDY2X1BEX0dQVSB7Cj4gKyAgICAgICAgICAgICAgIHBvd2Vy
LWRvbWFpbkBSSzMwNjZfUERfR1BVIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8
UkszMDY2X1BEX0dQVT47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjcnUg
QUNMS19HUFU+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIHBtX3FvcyA9IDwmcW9zX2dwdT47
Cj4gLS0KPiAyLjE3LjEKPgo+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
