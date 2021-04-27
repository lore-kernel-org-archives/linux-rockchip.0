Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19852C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 03:45:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9ACEF610FA
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 03:45:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9ACEF610FA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KyxaoEcJlWNbxLIGBLznvCxcWSt9MQluhBn3U3hWhUU=; b=NPm4k9w4hwUIGsUook+Onf7Ja
	FLBH+WuYkrm0RlzbEkfVVuDJAcuAa1l/gI4Hbn7hAlwygIiobBl8V0MonyRRt8qfq42e4QWgdwUih
	TL9LuXeCNDsRwhNUM9oeOHyHEFMmMA6+A4XFq5hGcKi+AvHxIuFf09dRZXEq8EnNCW1A79W6hNGkz
	1Ydxg3ebSCV12l1MUXylEaxmu8LRVtrh3baFG1Zfvig78sT3jRmY5aHpaChPiU5YcmmzZJECwOx+/
	5MxOWgVV+2lyB2yTiLu8ok1FVltENbQik0GbVCn3YuWjQ6x0IEHXKnJtHDQjoiZJ0Gwn91PrJ0wJW
	U2fM9CsKw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbEfK-000bDJ-Rv; Tue, 27 Apr 2021 03:45:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbEf3-000bBw-Gc; Tue, 27 Apr 2021 03:45:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=2fXyzEUnAk4BSfEd80IQaaI5lwB+kBD5Yu8M9hhJRsk=; b=MWTbTdI6aXIRytKZzQwN2ttkI1
 E2kb07zBM5B7Yrr1k222sc17qkt+iWKROF8SGfFkcVYkl74lDjTrujfaoW1j24yXrxZzCv8q+ESmN
 ASQnRVApcWiItXshbaWefMmh5cZoBvi+RHfuBGdOAiDL3S2c0qAXezl/vOQhUhAH+gfdytUO30E0B
 aFOotCfELh+khlEYMR/ZhDK7zAfDSwA3JfxiR8MQEVINXF4+d4n/q29ukpCWcwNH+4uPmLGVfTpEj
 TT/N/4GKyzhw3sWCnLi4EckuKOrXZ/704KlB0xRZEmLobQNxdPwBH5MXmDs5WyRRJCw1V3H1vIMVH
 ADcv0RBg==;
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbEf0-00GPT9-CD; Tue, 27 Apr 2021 03:45:19 +0000
Received: from localhost (unknown [192.168.167.172])
 by regular1.263xmail.com (Postfix) with ESMTP id C28E3821;
 Tue, 27 Apr 2021 11:45:06 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.120] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P18449T140669945366272S1619495102882982_; 
 Tue, 27 Apr 2021 11:45:04 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <22259d9076cbe0cb39d4db175022df51>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-watchdog@vger.kernel.org
X-RCPT-COUNT: 29
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 6/7] arm64: dts: rockchip: add core dtsi for RK3568 SoC
To: Johan Jonker <jbx6244@gmail.com>, cl@rock-chips.com, heiko@sntech.de
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 wim@linux-watchdog.org, linux@roeck-us.net, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org
References: <20210425094216.25724-1-cl@rock-chips.com>
 <20210425094439.25895-1-cl@rock-chips.com>
 <3d584cdc-020e-5aae-cae3-59ef45e64a9f@gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <c2e96d99-3af5-3f22-78de-f6eff18b9c24@rock-chips.com>
Date: Tue, 27 Apr 2021 11:45:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <3d584cdc-020e-5aae-cae3-59ef45e64a9f@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_204518_592858_4029C3D9 
X-CRM114-Status: GOOD (  12.13  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSm9oYW4sIEhlaWtvLAoKT24gMjAyMS80LzI2IOS4i+WNiDg6MTYsIEpvaGFuIEpvbmtlciB3
cm90ZToKPiA9PT0KPgo+IGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4IjsKPiBNYXliZSBh
ZGQgdGhpcyB0b2dldGhlciB3aXRoIG90aGVyIHJrWFhYWCBTb0NzIHRvIHJvY2tjaGlwLnlhbWwg
b24gdG9wCj4gb2YgYm9hcmQgbGlzdCA/Pz8KPiBQbGVhc2UgYWR2aXNlLgpUaGlzIHJvY2tjaGlw
LnlhbWwgaXMgbm93IGRlc2NyaWJlIGJvYXJkcyB3aXRob3V0IGFueSBzb3J0LCBpdCB3b3VsZCBi
ZSAKYmV0dGVyIHRvIHJlZmFjdG9yIGFuZCBzb3J0IGluIHR3byBsZXZlbDoKLSBzb2MgbGV2ZWwK
LSBib2FyZCBsZXZlbCBiYXNlIG9uIHRoZSBzYW1lIHNvYy4KClRoaXMgd2lsbCBuZWVkIGEgc2Vw
YXJhdGUgcGF0Y2ggdG8gZG8gdGhlIGNsZWFuIHVwLCBtYXliZSBnb2VzIGFmdGVyIHRoZSAKcmsz
NTY4LmR0c2k/CgoKVGhhbmtzLAotIEtldmVyCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
