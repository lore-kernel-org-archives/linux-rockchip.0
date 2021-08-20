Return-Path: <SRS0=iF3C=NL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00A9BC432BE
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 14:41:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C004D610FF
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 14:41:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C004D610FF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qWZAKHnGkOKEnv32nDpWR3+gi7AxyC9SNpoOo19yLkY=; b=1eVVr6GcTrt8VaW2Qs6EgEXE0g
	Ar6F+QNQBvFRphIWouRDYp5HDTrzJAwi7NwvYmplpomZXiCz06SMjczNkGXi9TI7JT8DFxULAqfR7
	1T/A1ewbXKGlwJ6R2EdhxmxVxmzXLktTJLpvE3U1XrRbpBK48+WBJIUc32crByw7uftUAt8yV98Gt
	w+h4MvBM2DRnTM0XZ4sl2gIEi3JMUvrRnntyrrdNGVJKI3bcAX0WFtdijZQyasqrvuI0u7l6rsso4
	1Hhglt07U41Ghj7QMN1SChKRV4cJgoEtI6t0hjVcMgojS7TMSjkzHZKsWJvpDAuFm8nNODQeweMEk
	oLRX/BdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mH5iF-00BP5F-6F; Fri, 20 Aug 2021 14:41:39 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mH5iC-00BP4H-EA; Fri, 20 Aug 2021 14:41:37 +0000
Received: by mail-ej1-x62e.google.com with SMTP id gt38so20605228ejc.13;
 Fri, 20 Aug 2021 07:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jJFscCgcBFTLxpC7110pUXSQKuAyqr9YiU5cPNgkLRY=;
 b=PHs1V6/5TbGtl/MKEsu/3csKKfnoqF9GCmVV2zWsJRqVDFrausf+7VEbHkw81dPDQd
 r+OSc4sHzlm0shGTcElQhEfpYg2GA4jQw5JhrZzEdSDOXIw1WLplB4Zsf2d/GtLAtsrx
 Wk6+UUSC6HTjoq4Ur8U6FkgaW7jvmjTY3iyh9WVYdcteQ0vbEXq+hoXgtqBN3jXI1XNP
 f0rW1DnXLmYSvgYu5/w9uYKjEo5o8N1dnJqKMch+VZ7STZPBtOGf6UDtqJaIvaF/6ChG
 hQufFqf8WQwv4U2zKBbJaY0FgEl6wpWzEADYDLch9d0EgZ+GRAaXOTd8F2xpvoUcwkZG
 3wvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jJFscCgcBFTLxpC7110pUXSQKuAyqr9YiU5cPNgkLRY=;
 b=bZV03SX9beXMubz/roS+4/zanDqoFvQ6WHybqPoe8wKdO3aSa8k4qd1XWctOx+FhdC
 jcLA4AGB9Ic1MUbyYPM1JfQf70L2lbv09U7ZkpvN74Jz0fY9BO5A2D64kUwEo8LP+zgD
 lwdW+tgjghdVR96SvoN/ZLFiItySf1MyY3Mfdaw9N+AmONnW1Cnsj56LBYgFLIRS/Upd
 Npd8/xpLwv7ScQD8/7B3sS/y1QimSBObnKBrY40OFi7chRVkQZul78tHmER0VzRZCDyv
 QflSa+Hy3bVPAOw/gkaiEwm7qrwUEAUbK3zI3HkrgAAM1q8G0gTbsb04j5dvUpwMZvH7
 guuw==
X-Gm-Message-State: AOAM533MnYnA16hxzPaJ/L7yqo2sCymErbrm5L8VJnGxeM3lyc7QVyjD
 CSFTACzQ1+CanDI+X9hcvI0=
X-Google-Smtp-Source: ABdhPJyBSABg1n6G0NysIs53gBRpj6qZ8LmORkIhGcyVpwNkvinR5Vptfj+Woq115GaynGnkh7Cdzg==
X-Received: by 2002:a17:906:7d0:: with SMTP id
 m16mr22423561ejc.105.1629470494603; 
 Fri, 20 Aug 2021 07:41:34 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 u9sm3690373edt.60.2021.08.20.07.41.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Aug 2021 07:41:34 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: rockchip: remove cap-mmc-highspeed property
 from mk808 &mmc0 node
To: Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, paweljarosz3691@gmail.com
References: <20210820131920.1831-1-jbx6244@gmail.com>
 <bf6cba99-da3b-a6fe-4e4b-f4ea6e3c6e63@arm.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <c52b4cf0-d018-f6b4-8728-41551b8bf62b@gmail.com>
Date: Fri, 20 Aug 2021 16:41:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <bf6cba99-da3b-a6fe-4e4b-f4ea6e3c6e63@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210820_074136_533768_F24C7281 
X-CRM114-Status: GOOD (  18.87  )
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

CgpPbiA4LzIwLzIxIDQ6MTcgUE0sIFJvYmluIE11cnBoeSB3cm90ZToKPiBPbiAyMDIxLTA4LTIw
IDE0OjE5LCBKb2hhbiBKb25rZXIgd3JvdGU6Cj4+IE9uIHRoZSBNSzgwOCBvbmx5IGEgbWljcm9T
RCBzbG90IGlzIGNvbm5lY3RlZCB3aXRoIHRoZSBTRE1NQyBIb3N0Cj4+IENvbnRyb2xsZXIsCj4+
IHNvIHJlbW92ZSB0aGUgY2FwLW1tYy1oaWdoc3BlZWQgcHJvcGVydHkgZnJvbSB0aGUgJm1tYzAg
bm9kZS4KPiAKPiBXaHksIGRvZXMgaXQgZG8gYW55IGhhcm0/IAoKSGFybSBub3QuIEV4YW1wbGUg
cmszMDY2IHUtYm9vdDoKCj4+Pj5zZF9zZWxlY3RfbW9kZV9hbmRfd2lkdGgKc2QgY2FyZDogd2lk
dGhzIFs0LCAxLCAICF0gbW9kZXMgW01NQyBsZWdhY3ksIFNEIEhpZ2ggU3BlZWQgKDUwTUh6KSwg
VUhTClNEUjEyICgyNU1IeiksIFVIUyBTRFIyNSAoNTBNSHopLCAICF0KaG9zdDogd2lkdGhzIFs0
LCAxLCAICF0gbW9kZXMgW01NQyBsZWdhY3ksIE1NQyBIaWdoIFNwZWVkICgyNk1IeiksIFNECkhp
Z2ggU3BlZWQgKDUwTUh6KSwgTU1DIEhpZ2ggU3BlZWQgKDUyTUh6KSwgCAhdCnRyeWluZyBtb2Rl
IFNEIEhpZ2ggU3BlZWQgKDUwTUh6KSB3aWR0aCA0IChhdCA1MCBNSHopCgpJIHdvdWxkIHNheSBv
bmx5IGFkdmVydGlzZSBob3N0IGNhcGFiaWxpdGllcyB0aGF0IGFyZSB1bmRlciBub3JtYWwKY2ly
Y3Vtc3RhbmNlcyBvY2N1ci4gSG93IHJlYWxpc3RpYyBpcyBpdCB0byB1c2UgYSBURi9NaWNybyBT
RCBUTyBTRCBDYXJkCkV4dGVuc2lvbiBDYWJsZSBBZGFwdGVyIChnaWdnbGUpIGZvciBhIGRlcHJl
Y2F0ZWQgbW1jIGNhcmQ/CgpKb2hhbgoKSXQncyBwZXJmZWN0bHkgcG9zc2libGUgdG8gY29ubmVj
dCBhCj4gZnVsbC1zaXplZCBjYXJkIHRvIGEgbWljcm9TRCBzbG90IHdpdGggYW4gYWRhcHRlci4g
SSBjYW1lIGFjcm9zcyBteSBvbGQKPiBTRElPIFdpRmkgY2FyZCBhIHdoaWxlIGJhY2sgYW5kIHRy
aWVkIGl0IHRoYXQgd2F5IGZvciBhIGdpZ2dsZSwgYnV0Cj4gdW5mb3J0dW5hdGVseSBpdCB0dXJu
ZWQgb3V0IG5vdCB0byBiZSBhIGNoaXBzZXQgc3VwcG9ydGVkIGJ5IGFueQo+IHVwc3RyZWFtIGRy
aXZlci4KPiAKPiBSb2Jpbi4KPiAKPj4gU2lnbmVkLW9mZi1ieTogSm9oYW4gSm9ua2VyIDxqYng2
MjQ0QGdtYWlsLmNvbT4KPj4gLS0tCj4+IMKgIGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzA2NmEtbWs4
MDguZHRzIHwgMSAtCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yazMwNjZhLW1rODA4LmR0cwo+PiBiL2FyY2gv
YXJtL2Jvb3QvZHRzL3JrMzA2NmEtbWs4MDguZHRzCj4+IGluZGV4IDk3OTBiYzYzYi4uYjY3ZjVj
YjUxIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9yazMwNjZhLW1rODA4LmR0cwo+
PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9yazMwNjZhLW1rODA4LmR0cwo+PiBAQCAtMTIzLDcg
KzEyMyw2IEBACj4+IMKgIMKgICZtbWMwIHsKPj4gwqDCoMKgwqDCoCBidXMtd2lkdGggPSA8ND47
Cj4+IC3CoMKgwqAgY2FwLW1tYy1oaWdoc3BlZWQ7Cj4+IMKgwqDCoMKgwqAgY2FwLXNkLWhpZ2hz
cGVlZDsKPj4gwqDCoMKgwqDCoCB2bW1jLXN1cHBseSA9IDwmdmNjX3NkPjsKPj4gwqDCoMKgwqDC
oCBzdGF0dXMgPSAib2theSI7Cj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
