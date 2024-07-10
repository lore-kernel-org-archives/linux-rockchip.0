Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C5EFC3DA41
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4G9wrA8cAhFM9fVE+tmpJUWGGg12dCfT+AnFvVUrfz8=; b=YMm2PYdWFx49hj
	KfCRxR0dryfYJHtwQWYk0c03v5EFyDEUkK/SN3/UaK7v9i3bhBGY9IdhJZMagRRRx70xHLMfU6Ruy
	cpX3dwJ9bFUJQqGIZ+mK7Z8Z/UfcWg27/dAflAGoEw+zOdoTKHKpDuBluV0cwTWOlghkdv8Ek3/Fg
	8Kv6sGDRlDzKDjZ09lhb9wUnf2lcVYlWqwc/UxqzEHGWT9JlOPI9AtOdELKoh8BHR78eKshxmV3MI
	/R0urH6n2RdO0fh4ZY8JpPBGnbZsrfuEP+3tKtZ3RcKhXH1bESgN8LmnAIkCMS9Kogi3KEkqQGFXL
	VI1Lu2da2EYM5dPNzDbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRaDz-0000000BAc1-4C1y;
	Wed, 10 Jul 2024 16:31:24 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRaDY-0000000BAXT-1uu4;
	Wed, 10 Jul 2024 16:31:07 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-250ca14422aso2235fac.0;
        Wed, 10 Jul 2024 09:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720629055; x=1721233855; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S3of+HDJjh5kl7ec4aH1qHWgLGXlG5vPNgwyZbImeHQ=;
        b=f2znu230gtApX7vcnJm22WYOUBB6jPROWdYh9s3N6xHuk+XMUpx7V4YCzjrF/dV6c4
         HffcEZyhycJzbhahXQ8OU2dhqwLs11h3OHzgpZMffg936UlGZ/r7cdAaB9VZxUY27J/9
         zpP8E5LZ69t35W3bhsIATSikL2gPC5KiGvpAsYszFj7QOV4Tuh4Kaar1LxcIVIJHr8sj
         BAeLJZGMfLqJG/v0GnIZhUyOT03RC4XaftBYbFhvbMD56vl4bQb76P9ZcJv+L8IkNw+1
         dw2+eEHC0vKJbUhfAfpK5VdOXCxbjUCuCAMU7V9QwGnb4Naegj4MEbQiFV4Fa5CL0cgN
         F/Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720629055; x=1721233855;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S3of+HDJjh5kl7ec4aH1qHWgLGXlG5vPNgwyZbImeHQ=;
        b=EloasXM5r9x2kdzc+YPf0sWFWtvw0m9lsUrqmCOJzcyPRIotDWnqaEzl7G5K9e1lDn
         1G5BJnO3im/6j6McQdiq0mAnhlujiLtgmG+kKtnqIM8qlNoPlze/WYpq0DAvhflA1KiX
         Q0XD7MyW0S15nqsbtqBl4sFCOsH+Ek+EaV83nrV/Un61AbMU4b6Uryq2CrRGSSzdqzff
         jhwLGyM+eYFel098jcw5YVxsvXAdbHVfpM5eHBLwnvkr4n1UwINRKiHZ5GbTkK2wEyJ+
         idRdye6CM8X+WJA+RQ1kEdELbeboYfQAK1U7GGgDiP7G3V/dK4vUZoqP7tZ027iyJUQ8
         hK8A==
X-Forwarded-Encrypted: i=1; AJvYcCV5bsgDnd5USIhfkjSutCNgpX4e1AlACjCWnRnmeIt26xOISPtBkNd+YawpGCOEx4/kkPuhdgdvMgS0do7nmwLUtSCJgU1hosZj0/irYEp+6O/XmWGfxsGZzn828EwSYub1DQstO65Eb/aAjobBPQDjQ0l0J8EkyGc=
X-Gm-Message-State: AOJu0YwL0+un/jvaXr38WcvIfvVZPhcsewrY6yBpuzGk4vrls0FE6Yzz
	tLnsaYRpoJEJrIJJ2vXXFN6T6kQTNcfZT7zSSxVnqg2jpoVWbKOcJkVY7hYg/BAsO3FvApx8Riw
	H9Z9ehW2TEhpWEePrcVJvtQFRVbijxlsk
X-Google-Smtp-Source: AGHT+IFllFzBSLtYIygpzYXOS1tTlREEsgiErb3y8wRUZPYiDBvsVSVWStLRJgoIkFCG6rS9/YbWpW1kWqBlgQ6VSSw=
X-Received: by 2002:a05:6870:f723:b0:254:c08d:cb55 with SMTP id
 586e51a60fabf-25eae755dd6mr4955639fac.5.1720629055139; Wed, 10 Jul 2024
 09:30:55 -0700 (PDT)
MIME-Version: 1.0
References: <20240710142001.7234-1-linux.amoon@gmail.com> <2356091.ECZNHGQPT7@diego>
In-Reply-To: <2356091.ECZNHGQPT7@diego>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 10 Jul 2024 22:00:37 +0530
Message-ID: <CANAwSgTRW1zQcZBb+8Yzu2hgqPxVopG+8c4Ng+QNrcGjBXOC8g@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4 node
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_093056_522617_31B92719 
X-CRM114-Status: GOOD (  25.26  )
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

SGkgSGVpa28sCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3IGNvbW1lbnRzLgoKT24gV2VkLCAxMCBK
dWwgMjAyNCBhdCAyMDoyNCwgSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6
Cj4KPiBIaSwKPgo+IEFtIE1pdHR3b2NoLCAxMC4gSnVsaSAyMDI0LCAxNjoxOTo1NiBDRVNUIHNj
aHJpZWIgQW5hbmQgTW9vbjoKPiA+IEFkZCBtaXNzaW5nIHBpbmN0cmwgc2V0dGluZ3MgZm9yIFBD
SWUgMy4wIHg0IGNsb2NrIHJlcXVlc3QgYW5kIHdha2UKPiA+IHNpZ25hbHMuIFJlbmFtZSBub2Rl
IGZyb20gJ3BjaWUzJyB0byAncGNpZTMweDQnIHRvIGFsaWduIHdpdGggc2NoZW1hdGljCj4gPiBu
b21lbmNsYXR1cmUuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQW5hbmQgTW9vbiA8bGludXguYW1v
b25AZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1y
b2NrLTViLmR0cyAgICAgIHwgMjAgKysrKysrKysrKysrKy0tLS0tLQo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAxNCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4gPiBpbmRleCAyZTc1
MTI2NzZiN2UuLmE5YjU1Yjc5OTZjZiAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+ID4gQEAgLTMwMSw3ICszMDEsNyBAQCAm
cGNpZTMwcGh5IHsKPiA+Cj4gPiAgJnBjaWUzeDQgewo+ID4gICAgICAgcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKPiA+IC0gICAgIHBpbmN0cmwtMCA9IDwmcGNpZTNfcnN0PjsKPiA+ICsgICAg
IHBpbmN0cmwtMCA9IDwmcGNpZTMweDRfcGVyc3RuX20xICZwY2llMzB4NF9jbGtyZXFuX20xICZw
Y2llMzB4NF93YWtlbl9tMT47Cj4gPiAgICAgICByZXNldC1ncGlvcyA9IDwmZ3BpbzQgUktfUEI2
IEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gICAgICAgdnBjaWUzdjMtc3VwcGx5ID0gPCZ2Y2MzdjNf
cGNpZTMwPjsKPiA+ICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+IEBAIC0zNDAsMTQgKzM0MCwy
MiBAQCBwY2llMl8yX3JzdDogcGNpZTItMi1yc3Qgewo+ID4gICAgICAgICAgICAgICB9Owo+ID4g
ICAgICAgfTsKPiA+Cj4gPiAtICAgICBwY2llMyB7Cj4gPiAtICAgICAgICAgICAgIHBjaWUzX3Jz
dDogcGNpZTMtcnN0IHsKPiA+IC0gICAgICAgICAgICAgICAgICAgICByb2NrY2hpcCxwaW5zID0g
PDQgUktfUEI2IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+ID4gLSAgICAgICAgICAg
ICB9Owo+ID4gLQo+ID4gKyAgICAgcGNpZTMweDQgewo+ID4gICAgICAgICAgICAgICBwY2llM192
Y2MzdjNfZW46IHBjaWUzLXZjYzN2My1lbiB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgcm9j
a2NoaXAscGlucyA9IDwxIFJLX1BBNCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiA+
ICAgICAgICAgICAgICAgfTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgcGNpZTMweDRfY2xrcmVx
bl9tMTogcGNpZTMweDQtY2xrcmVxbi1tMSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcm9j
a2NoaXAscGlucyA9IDw0IFJLX1BCNCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD47Cj4gPiAr
ICAgICAgICAgICAgIH07Cj4gPiArCj4gPiArICAgICAgICAgICAgIHBjaWUzMHg0X3dha2VuX20x
OiBwY2llMzB4NC13YWtlbi1tMSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcm9ja2NoaXAs
cGlucyA9IDw0IFJLX1BCNSBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9kb3duPjsKPiA+ICsgICAg
ICAgICAgICAgfTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgcGNpZTMweDRfcGVyc3RuX20xOiBw
Y2llMzB4NC1wZXJzdG4tbTEgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlwLHBp
bnMgPSA8NCBSS19QQjYgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfZG93bj47Cj4gPiArICAgICAg
ICAgICAgIH07Cj4KPiBJJ20gbm90IHN1cmUgd2hhdCB5b3UncmUgZ29pbmcgZm9yIGhlcmUsIGJ1
dCBkZWZpbmluZyB0aGVtIGFzIGdwaW8gbWFrZXMKPiB0aGVtIGVzc2VudGlhbGx5IHVudXNlZD8g
U2hvdWxkbid0IHRoZXkgZ28gdG8gdGhlIHBjaWUgY29udHJvbGxlcj8KPgoKT2ssIEVhY2ggY29t
cG9uZW50IG9mIFBDSWUgY29tbXVuaWNhdGlvbiB0byBoYXZlIHRoZSBmb2xsb3dpbmcKY29udHJv
bCBzaWduYWxzICNQRVJTVCAjIFdBS0UgYW5kIENMS1JFUSBmcm9tIHJvb3QgY29tcGxleCB0byBl
bmRwb2ludC4KCj4gRnJvbSB3aGF0IEkgZm91bmQgZm9yIGV4YW1wbGUKPiBUaGUgUEVSU1QjIHNp
Z25hbCBpcyB1c2VkIHRvIGluZGljYXRlIHdoZW4gdGhlIHBvd2VyIHN1cHBseSBpcyB3aXRoaW4g
aXRzIHNwZWNpZmllZCB2b2x0YWdlIHRvbGVyYW5jZSBhbmQgaXMgc3RhYmxlLgo+CgpQRVJTVCBp
cyByZWZlcnJlZCB0byBhcyBhIGZ1bmRhbWVudGFsIHJlc2V0LiBQRVJTVCBzaG91bGQgYmUgaGVs
ZCBsb3cKdW50aWwgYWxsIHRoZSBwb3dlciByYWlscwppbiB0aGUgc3lzdGVtIGFuZCB0aGUgcmVm
ZXJlbmNlIGNsb2NrIGFyZSBzdGFibGUuIEEgdHJhbnNpdGlvbiBmcm9tCmxvdyB0byBoaWdoIGlu
IHRoaXMgc2lnbmFsIHVzdWFsbHkKaW5kaWNhdGVzIHRoZSBiZWdpbm5pbmcgb2YgbGluayBpbml0
aWFsaXphdGlvbi4KCj4gQXQgbGVhc3QgeW91J2xsIG5lZWQgdG8gZXhwbGFpbiBtb3JlIGluIHRo
ZSBjb21taXQgbWVzc2FnZS4KPgpPaywKV0FLRSBhbmQgQ0xLUkVRIHNpZ25hbHMgYXJlIHVzZWQg
dG8gdHJhbnNpdGlvbiB0byBhbmQgZnJvbSBsb3ctcG93ZXIgc3RhdGVzLgpXQUtFIHNpZ25hbCBp
cyBhbiBhY3RpdmUtbG93IHNpZ25hbCB0aGF0IGlzIHVzZWQgdG8gcmV0dXJuIHRoZSBQQ0llCmlu
dGVyZmFjZSB0byBhbiBhY3RpdmUgc3RhdGUKd2hlbiBpbiBhIGxvdy1wb3dlciBzdGF0ZS4KQ0xL
UkVRIHNpZ25hbCBpcyBhbHNvIGFuIGFjdGl2ZS1sb3cgc2lnbmFsIGFuZCBpcyB1c2VkIHRvIHJl
cXVlc3QgdGhlCnJlZmVyZW5jZSBjbG9jay4KPgpJIHdpbGwgd29yayBvbiBhbmQgdXBkYXRlIGlu
IHRoZSBuZXh0IHZlcnNpb24uCj4KPiBIZWlrbwoKVGhhbmtzCi1BbmFuZAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
