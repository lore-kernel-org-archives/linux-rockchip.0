Return-Path: <SRS0=Ew1P=DU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5160C433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2020 06:40:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1BD7F2064C
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2020 06:40:58 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="eUdVWPKs"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1BD7F2064C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=lzqXyoFewe3Ocd4Csi5qBwcrQ7/CNGGq/G5pTdp+vc8=; b=eUdVWPKsop05z6nRkkWgk3Cba
	k04zYsNotUY/TuHOwU23GJiSP+01ijcUGf3SYaTrMSLKTi4ZhEAH/Q92vJp+yoionHa4SclZT6N8u
	RPciSQZS0zq85KRCaZg5V3hBggSiWVYwLNtcZ9zfhlkOzuu2FIobmKC94DS30j4AiI5ICDPMC7aKT
	QS0TIZHJuAlEAbX6OO6txLRq6PsnjAXCx0GmaiKqrmrjXHHPPNzAHIc0qttSdQqbYJqNT7FYJQ0q3
	2t2wckFHTSJ5bD6Exzaxk19SJl1xG0ej1RYEcKlhiXxN58ccBAfQd/gAGcWOGd1ptAhexZBNwDCqm
	FvEqKu/Vg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSDzR-0007uQ-RB; Tue, 13 Oct 2020 06:40:53 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSDzQ-0007tm-Dn
 for linux-rockchip@lists.infradead.org; Tue, 13 Oct 2020 06:40:53 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 9CA4B11C6;
 Tue, 13 Oct 2020 14:40:48 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from jianqun-pc (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P30217T139798165583616S1602571248138252_; 
 Tue, 13 Oct 2020 14:40:48 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5ba8c1c7360008fb64b95412a085cae9>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Date: Tue, 13 Oct 2020 14:40:47 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: "Linus Walleij" <linus.walleij@linaro.org>, 
 =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>
Subject: Re: Re: [PATCH 2/2] pinctrl: rockchip: make driver be tristate module
References: <20200907025927.9713-3-jay.xu@rock-chips.com>, 
 <20200914003847.10341-1-jay.xu@rock-chips.com>, 
 <5373086.oXRXx9yCqB@diego>, <7244527.mGzxE9Z0Hj@diego>, 
 <CACRpkdYAxpyB+y88eC4iuvHRqttPSFdaMHAZdr6y8jfTr0Qong@mail.gmail.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.18.95[cn]
Mime-Version: 1.0
Message-ID: <202010131440473168632@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201013_024052_777296_CAF7281F 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RGVhciBXYWxsZWlqIGFuZCBIZWlrbwoKVGhlIHBhdGNoICJbUEFUQ0hdIHBpbmN0cmw6IHJvY2tj
aGlwOiBwb3B1bGF0ZSBwbGF0Zm9ybSBkZXZpY2UgZm9yIHJvY2tjaGlwIGdwaW8iIGhhcyBiZWVu
IHJlbW92ZSBvdXRvZgp0aGUgcGF0Y2hlcywgc2luY2Ugd2UgaGF2ZSBhIG5ldyBwYXRjaCB0byBt
b3ZlIGdwaW8gcmVsYXRlZCBjb2RlcyB0byBhIHNlcGFyYXRlZCBkcml2ZXIuCgpTbyBwbGVhc2Ug
aWdub3JlIGl0IGZvciBub3cuIHRoYW5rcyB2ZXJ5IG11Y2guCgotLS0tLS0tLS0tLS0tLQpqYXku
eHVAcm9jay1jaGlwcy5jb20KPk9uIE1vbiwgU2VwIDIxLCAyMDIwIGF0IDEyOjE4IEFNIEhlaWtv
IFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+Cj4+IEl0IHNlZW1zIEkndmUgcmV2
aWV3ZWQgYWxsIHBhdGNoZXMgb2YgdGhpcyBzZXJpZXMgbm93LCBidXQgSSB0aGluawo+PiB5b3Ug
bWlnaHQgd2FudCB0byByZXNlbmQgdGhlIHNlcmllcyBhIGZpbmFsIHRpbWUgYXMgdjMgaW4gYSBj
bGVhbmVkIHVwCj4+IHN0YXRlIChkcm9wIHBhdGNoMSBhbmQganVzdCBwb3N0IHBhdGNoZXMgMi01
IGluIGEgZnVsbCBzZXJpZXMpIHNvIHRoYXQKPj4gd2UgZG9uJ3QgY29uZnVzZSBMaW51cyB0b28g
bXVjaCB3aXRoIHRoZSByZXBvc3RlZCBwYXRjaGVzIHdlIGN1cnJlbnRseQo+PiBoYXZlLgo+Cj5Z
ZXMgcGxlYXNlIHNlbmQgYSB2MyBsaWtlIHRoYXQgc28gSSBjYW4gYXBwbHkgaXQhCj4KPllvdXJz
LAo+TGludXMgV2FsbGVpago+Cj4KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
