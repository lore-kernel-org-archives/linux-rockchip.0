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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 184D3C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:53:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B438961A32
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:53:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B438961A32
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=afB1/VPXjXx7UJrzsyD9V7rEZwSNFct4QOeEGzWZiBU=; b=LObfGYkf0HSoesRml4OXao/x6
	Wne0pUJxSd0oNsPbO8XyKgOrWZo0lJUP7IgCOAgZrMxDSP4ltb0jxJuDvyf2cVmpVv+aET1HNJar+
	mF6eHod2WYaNBfmFBx2cv3Kl/IUUIIyYY0YfRridAcSOlThiShDTW7UKdcoWETC7IKO+6DctDoeov
	XTGqRtqUfnI4zbcXw4lqj5Pf5trdvGDGwSmhQrBNtqNXEw7O8k09sTBdVK9nvwkzOCSdpLttSETUU
	tJ2WOgM4MBkB2S6V6HigKgfT79ZT13O7SHaH3xqQul9IofFVTIlhDuvHZWmcdaCcFKV/UbTMColGe
	rciFl6dDg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPj9h-003FI9-8I; Fri, 26 Mar 2021 09:53:25 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPj9J-003FAI-K4; Fri, 26 Mar 2021 09:53:04 +0000
Received: by mail-oi1-x22f.google.com with SMTP id f9so5161869oiw.5;
 Fri, 26 Mar 2021 02:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OQNUcud1zkYdzkIjaa5FtppgaPtwU3jTgTAIM5VSySU=;
 b=pm3MyKP3SbvYm32JdhQ6HJDzD10Clg4f0qoDUA8sBQ1aQX4BQz7YmfLKQdIYARfKXg
 JmftkdKPLaa8VxOv/0j2sE43VvZP0fgnwa5mhPJ3TisRdQf9XTPkZjb0ENtVppXIGlD0
 qgup1Ov1sAGaEwUUuaBYpsf3b3q30s17ZcpPV2nGmQGgu50GhRs8GT4D+yPHQ0SxTSNZ
 cXJvyoXfnNaNZ/yfgXjB9qQtBUxH0eam2kV0+wb8yOXF0sPGB4M4pHP9A2AI3TLZuCVP
 /1GJd2s+sgGdU+A/cDab/7UKtU+8OUTDm2mXy9OjQbPNcV7rbt0/5crs76FH7qVaPuH9
 Asfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OQNUcud1zkYdzkIjaa5FtppgaPtwU3jTgTAIM5VSySU=;
 b=mmYvzf7ZxE5DS+jMGGQQrWbq7PSxa1wYIJnTwad+jazKqDChOtuyJwxI1K5uFncf4S
 rNgof9X9rctmreD9JkdfSzA49W/VEbSeS5aAh7yQbVqgqfl6YmU2Jhoon5KOkoneDBXC
 Mlj0mDBs4yrMxg/qUZ1jmZUd7h705g1rwVeEOIsMbPevG8yvEjsL7o99A7XnoxbXRIKh
 3SQNNtqOGgIHBRQqqVw3WINbTlvGrjoYmrMPYl1//I5DM3Tm26pljfRI/y3yFHqlp4Je
 zc7GhqrS7icI1/8CMcEFj0ChC2Svwa9Ah9F0qVXn0lgwfUNckoUzZMpoCOQ4ISD31f0a
 dU6g==
X-Gm-Message-State: AOAM530LOXTa/ydRLd64doyQ+PJ3YcXXpWgwzNrJdcrea3wRFcXp+Jd2
 zR3D/+hzINxO014EiCmNrugbN4UdqorYqNKud1s=
X-Google-Smtp-Source: ABdhPJzdEVG0jo5Gcp8tmM5tdCotj+i2e2qmLokrLAy/Utb7KG07+qLNMUoYlzSNG3+kzUP5N4EGFupD+rN9R5RQ7CU=
X-Received: by 2002:a05:6808:bd6:: with SMTP id
 o22mr9251981oik.129.1616752380497; 
 Fri, 26 Mar 2021 02:53:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210326091547.12375-1-zhangqing@rock-chips.com>
 <20210326091751.12637-1-zhangqing@rock-chips.com>
In-Reply-To: <20210326091751.12637-1-zhangqing@rock-chips.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Fri, 26 Mar 2021 10:52:48 +0100
Message-ID: <CAFqH_53qnWdRQ01kRxVAKRWZnimW+gyNO=pv+ET4xFQB5QGOtA@mail.gmail.com>
Subject: Re: [PATCH v5 08/11] dt-bindings: add power-domain header for RK3568
 SoCs
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
X-CRM114-CacheID: sfid-20210326_095301_924495_EAE92036 
X-CRM114-Status: GOOD (  13.33  )
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

TWlzc2F0Z2UgZGUgRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+IGRlbCBk
aWEgZHYuLCAyNiBkZQptYXLDpyAyMDIxIGEgbGVzIDEwOjE4Ogo+Cj4gQWNjb3JkaW5nIHRvIGEg
ZGVzY3JpcHRpb24gZnJvbSBUUk0sIGFkZCBhbGwgdGhlIHBvd2VyIGRvbWFpbnMKPgo+IFNpZ25l
ZC1vZmYtYnk6IEVsYWluZSBaaGFuZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3
ZWQtYnk6IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNvbGxhYm9yYS5j
b20+Cgo+IC0tLQo+ICBpbmNsdWRlL2R0LWJpbmRpbmdzL3Bvd2VyL3JrMzU2OC1wb3dlci5oIHwg
MzIgKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzMiBpbnNlcnRp
b25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL3Bvd2VyL3Jr
MzU2OC1wb3dlci5oCj4KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9wb3dlci9y
azM1NjgtcG93ZXIuaCBiL2luY2x1ZGUvZHQtYmluZGluZ3MvcG93ZXIvcmszNTY4LXBvd2VyLmgK
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uNmNjMWFmMWE5ZDI2
Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3MvcG93ZXIvcmszNTY4
LXBvd2VyLmgKPiBAQCAtMCwwICsxLDMyIEBACj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBHUEwtMi4wICovCj4gKyNpZm5kZWYgX19EVF9CSU5ESU5HU19QT1dFUl9SSzM1NjhfUE9XRVJf
SF9fCj4gKyNkZWZpbmUgX19EVF9CSU5ESU5HU19QT1dFUl9SSzM1NjhfUE9XRVJfSF9fCj4gKwo+
ICsvKiBWRF9DT1JFICovCj4gKyNkZWZpbmUgUkszNTY4X1BEX0NQVV8wICAgICAgICAgICAgICAg
IDAKPiArI2RlZmluZSBSSzM1NjhfUERfQ1BVXzEgICAgICAgICAgICAgICAgMQo+ICsjZGVmaW5l
IFJLMzU2OF9QRF9DUFVfMiAgICAgICAgICAgICAgICAyCj4gKyNkZWZpbmUgUkszNTY4X1BEX0NQ
VV8zICAgICAgICAgICAgICAgIDMKPiArI2RlZmluZSBSSzM1NjhfUERfQ09SRV9BTElWRSAgIDQK
PiArCj4gKy8qIFZEX1BNVSAqLwo+ICsjZGVmaW5lIFJLMzU2OF9QRF9QTVUgICAgICAgICAgNQo+
ICsKPiArLyogVkRfTlBVICovCj4gKyNkZWZpbmUgUkszNTY4X1BEX05QVSAgICAgICAgICA2Cj4g
Kwo+ICsvKiBWRF9HUFUgKi8KPiArI2RlZmluZSBSSzM1NjhfUERfR1BVICAgICAgICAgIDcKPiAr
Cj4gKy8qIFZEX0xPR0lDICovCj4gKyNkZWZpbmUgUkszNTY4X1BEX1ZJICAgICAgICAgICA4Cj4g
KyNkZWZpbmUgUkszNTY4X1BEX1ZPICAgICAgICAgICA5Cj4gKyNkZWZpbmUgUkszNTY4X1BEX1JH
QSAgICAgICAgICAxMAo+ICsjZGVmaW5lIFJLMzU2OF9QRF9WUFUgICAgICAgICAgMTEKPiArI2Rl
ZmluZSBSSzM1NjhfUERfQ0VOVEVSICAgICAgIDEyCj4gKyNkZWZpbmUgUkszNTY4X1BEX1JLVkRF
QyAgICAgICAxMwo+ICsjZGVmaW5lIFJLMzU2OF9QRF9SS1ZFTkMgICAgICAgMTQKPiArI2RlZmlu
ZSBSSzM1NjhfUERfUElQRSAgICAgICAgIDE1Cj4gKyNkZWZpbmUgUkszNTY4X1BEX0xPR0lDX0FM
SVZFICAxNgo+ICsKPiArI2VuZGlmCj4gLS0KPiAyLjE3LjEKPgo+Cj4KPgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
