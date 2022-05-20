Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2571BC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 May 2022 12:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vv6mjNnj69OGJ4gTD0EqMJlEfKRJM9S1dAcB//08/EE=; b=KjAU0VYBv8o3iI
	1+5PhqYl5BcJwD6VMNp5V/32UW10Dh04Lm0YGRS//5Or5Y/UXTGQSAraUB8iqeLXt44mgbKJYLpXg
	We68vcGXadpo1ezwRR0KLlhSRmtEA/pXwEEGdTuN87xbkLs4J5TXJcRsVY+38gpWHS2ckf2pS0dcc
	yhx8S/n88d30vBM75m+yCMKnmy7LUfeyVuOkwvZ8pt4kvz5UymFmddWKFWNxiyNPLMAM05JLTPux4
	NpC0wmDEaKarMyPaHTlO6P3I4aceY9J/QBh2a/mIrBxbrRtMpB0oS0K9fNlgzUaL50bDueRa++tUp
	pvk537lZkbolcxFlCXtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ns1Qt-00CFM8-NS; Fri, 20 May 2022 12:08:39 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ns1Qq-00CFLM-2u
 for linux-rockchip@lists.infradead.org; Fri, 20 May 2022 12:08:37 +0000
Received: by mail-wr1-x430.google.com with SMTP id e28so10635444wra.10
 for <linux-rockchip@lists.infradead.org>; Fri, 20 May 2022 05:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=o5HF6tE0A9hZV5uqp555c3BroFMC/aJ+EGKuqyLJpVg=;
 b=RY49bW4Sen7bZq2QSxrLSm7Lbm/m83AjvjOEzzs00aqp7l+TPSpteivwevfzd1Z7ze
 FrXWzoCG5EJYG4O0HaCXfe8eBpWcyDpnMkMRLhmPMPNQdQOi4yUB5uoRlH+NQPBfEDyW
 3jeFXA+3vtwOGImVbAL7A9tiaplg/RSISgj3FCqNwOphy5uSwGdP3/FlFFE/qsh5LLXx
 VidKM8TzLdWax1sulYH3Q0YFAtpJGpiXERcnu4IsOcY9ftsvFAc3lRIOC5HbfIdMtFds
 HQ/bbLH/gHBYvKzVqUXQEPjIcUFDKX4MYQ8VmwS3jEHsZB2HC2ysFHBGOJQqqxt77Ssv
 5EyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=o5HF6tE0A9hZV5uqp555c3BroFMC/aJ+EGKuqyLJpVg=;
 b=aU0R78LQu78XBjZxbZm6f2+E5LT0Uk3iSVundQxClZTCqsaYGNKSo9C25WRzlYp8ur
 e8BCej4ey/2mTUx86vCILQUnkRMX7IiZu3U9FGxAHcOdHqzIz3TPGiWf4GA/Q3CR5wRi
 aXy4uXugKy4+mCj31p+cWtKAV155G2eGfrccJfLlmSTkeTULA6DlndAe5wA0oQYFT0rm
 kErPNZk2tX6l+7CvYFgbT3qZmBJcx1PstmBuNF4LopaO0yL4JRGIwE3AlQxxDCkKosUQ
 KFoJ+nZ5ei2CqBzfGQqXniNSPL+HtkQz+TOlzur9T4eDgfpraADeH8ZrB0wYyQ8KJNki
 xRMw==
X-Gm-Message-State: AOAM531zSGGB2B9RUdRtN3PHsNqELKltexjKaNV6IsL2VZqZkLqHjUhr
 SwcII9YEeCdiZYIDDO7lt+gIzg==
X-Google-Smtp-Source: ABdhPJy1M3oBig5dhhlUe5LElOMWhZRzXErep0V49RbUgzjhLti0/RzqULL8Y5RK9eC3JHc/Scb2bw==
X-Received: by 2002:adf:e386:0:b0:20d:12c3:dfdb with SMTP id
 e6-20020adfe386000000b0020d12c3dfdbmr8203268wrm.570.1653048512317; 
 Fri, 20 May 2022 05:08:32 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net.
 [86.27.177.88]) by smtp.gmail.com with ESMTPSA id
 u6-20020adfc646000000b0020d0c48d135sm2428599wrg.15.2022.05.20.05.08.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 May 2022 05:08:31 -0700 (PDT)
Date: Fri, 20 May 2022 13:08:29 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 heiko@sntech.de, zyw@rock-chips.com, zhangqing@rock-chips.com,
 devicetree@vger.kernel.org, Chris Morgan <macromorgan@hotmail.com>,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] [RESEND, v5] dt-bindings: mfd: rk808: Convert bindings
 to yaml
Message-ID: <YoeEve6GwzcSF5vH@google.com>
References: <20220519161731.1168-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220519161731.1168-1-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220520_050836_241348_FE51497E 
X-CRM114-Status: GOOD (  14.99  )
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

T24gVGh1LCAxOSBNYXkgMjAyMiwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgoKPiBGcm9tOiBDaHJpcyBN
b3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IAo+IENvbnZlcnQgdGhlIHJrODA4IGJp
bmRpbmdzIGludG8geWFtbCBmb3JtYXQuIGNsb2NrLW91dHB1dC1uYW1lcyB2YXJpZXMKPiBpbiBt
YXhJdGVtcyBkZXBlbmRpbmcgb24gd2hldGhlciBvciBub3QgdGhlIGNsb2NrLWNlbGxzIGlzIDAg
b3IgMS4gRm9yCj4gdGhlIHJrODA1LCByazgwOSwgYW5kIHJrODE3LiBUaGlzIHByZXNlcnZlcyBi
ZWhhdmlvciB3aXRoIHRoZSBleGlzdGluZwo+IGRyaXZlciBoYW5kbGluZyBzZXR0aW5nIHRoZSBj
bG9jayBmb3IgdGhlc2Ugc3BlY2lmaWMgUE1JQ3MuIFdoZW4gdGhpcwo+IGRyaXZlciBpcyBjb3Jy
ZWN0ZWQgYW5kIHRoZSBkZXZpY2V0cmVlcyB1cGRhdGVkIHRoaXMgbG9naWMgY2FuIGJlCj4gcmVt
b3ZlZCAoc2luY2UgdGhlIHJrODA1LCByazgwOCwgYW5kIHJrODE3IG9ubHkgaGF2ZSBvbmUgYWN0
dWFsIGNsb2NrKS4KPiAKPiBOb3RlIHRoaXMgcGF0Y2ggd2FzIHByZXZpb3VzbHkgc2VudCBhcyBh
IHNlcmllcywgYWxsIG9mIHRoZSBwYXRjaGVzIGluCj4gdGhlIHNlcmllcyBleGNlcHQgdGhpcyBv
bmUgaGF2ZSBiZWVuIGNvbW1pdHRlZCB0byBtYWlubGluZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBNb3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IFJldmlld2VkLWJ5OiBSb2Ig
SGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IC0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5n
cy9tZmQvcms4MDgudHh0ICAgICAgICAgfCA0NjUgLS0tLS0tLS0tLS0tLS0tLS0tCj4gIC4uLi9i
aW5kaW5ncy9tZmQvcm9ja2NoaXAscms4MDUueWFtbCAgICAgICAgICB8IDIxOSArKysrKysrKysK
PiAgLi4uL2JpbmRpbmdzL21mZC9yb2NrY2hpcCxyazgwOC55YW1sICAgICAgICAgIHwgMjU3ICsr
KysrKysrKysKPiAgLi4uL2JpbmRpbmdzL21mZC9yb2NrY2hpcCxyazgwOS55YW1sICAgICAgICAg
IHwgMjg0ICsrKysrKysrKysrCj4gIC4uLi9iaW5kaW5ncy9tZmQvcm9ja2NoaXAscms4MTcueWFt
bCAgICAgICAgICB8IDMzMCArKysrKysrKysrKysrCj4gIC4uLi9iaW5kaW5ncy9tZmQvcm9ja2No
aXAscms4MTgueWFtbCAgICAgICAgICB8IDI4MiArKysrKysrKysrKwo+ICA2IGZpbGVzIGNoYW5n
ZWQsIDEzNzIgaW5zZXJ0aW9ucygrKSwgNDY1IGRlbGV0aW9ucygtKQo+ICBkZWxldGUgbW9kZSAx
MDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yazgwOC50eHQKPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQv
cm9ja2NoaXAscms4MDUueWFtbAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yb2NrY2hpcCxyazgwOC55YW1sCj4gIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJr
ODA5LnlhbWwKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9tZmQvcm9ja2NoaXAscms4MTcueWFtbAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yb2NrY2hpcCxyazgxOC55YW1sCgpB
cHBsaWVkLCB0aGFua3MuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClByaW5jaXBhbCBUZWNo
bmljYWwgTGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJj
ZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVy
IHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
