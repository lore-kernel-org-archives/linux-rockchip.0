Return-Path: <SRS0=Bn3x=DG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F93FC4727F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 13:21:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EA25B20757
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 13:21:20 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="jH6NytmK";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BY7TTFgS"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EA25B20757
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T9TVWeM5DZMMmeJNF+HNGj7K9SUwR4OWfIR9wULelQc=; b=jH6NytmKNcbgnbvCoLKO0wRy8
	I0EjSW/ZRkCMBJDAr4mgxtz6cLehaKOjTHgF7rEnCXHjmqpVlLQal18sr5C5qqyAOZxCNVTvrR/Wk
	wVfbGwfr3p4eU6VgxKXb4hsoZmZnPKpFTIorncfqjvqSUk6mvzF9PWmYbFeXb7Gi5P8HQmxPD4/ky
	uaOfrZydoNn5xw+wPRc3Gl07sPEK0HD3plq7EkmLSJF2xYt1YNbAwkFRF7ZzmUPvWcSlZ64IhTzXg
	00oP6j8hE7Jf48IV3zG1tuetSsiDwZBa0/MexxOlauyZhlkrm1UB8XkkHYUhpc+qGs5W/GCl/ZW0P
	OKMmPZadQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNFZD-0007Yd-KU; Tue, 29 Sep 2020 13:21:15 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNFZA-0007Xy-UV
 for linux-rockchip@lists.infradead.org; Tue, 29 Sep 2020 13:21:14 +0000
Received: by mail-lf1-x144.google.com with SMTP id w11so5504758lfn.2
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2020 06:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GI4Au8HNgydrHkFYfCOOBRMzO30t6Rvii7RP3gaHfYQ=;
 b=BY7TTFgSdO4pektZ06bqcNuRWZcl2fl67OsMeAWmBlrSzLaYO1ar/ipey6z1peIH1R
 6qpkI47lOJQ/EVZm9BGf6bVFUXLwmHrLqD2osNWTTUKjISuc7jfmUpr+uJvAlDa1bKVM
 NgiAY0zEHrkBkjRg9o+tnJ1na0aJfHawc2W+oAspRFbqDnfGwu+pC+fbhSiqcfQNHzEL
 28CBRn39hWS3ZvphliGjL5AJgiLMHwdCe2VJ/w8W5PQTMlkxraFYQypnl3oArvNOuSR5
 HXDXaECiOgaq3VP5YF3tQnr/fQ303RRNt7BQlJoQijq/AlqGs7shGKN7w0KAFLvLOfLU
 igNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GI4Au8HNgydrHkFYfCOOBRMzO30t6Rvii7RP3gaHfYQ=;
 b=IOpYHVySRqNl0/uFWu9dYtjWkAx49bd51VZ84aKImcDwQ9l6rlDzis4SWeDkVsoiRY
 u5Wot+Wi1WrvnyFTUYcuadKEskOZriTvFoLQas+ioGQVt5fjzUuy6ysyFbzP9BS+UXFS
 Yr2liF30sVdTEAyno2VmTlurgIaLSbMxWGy9TAjg0spgrsuqyFfq1mxkNrZJSfC77wSy
 R1Dq+66KCf4qBdGwIkCDk8O1EZBBMVFgAfmvCNRSR/IJuWbdJBLgd6mqeEYx0bhNs7p/
 ZnLmBL0ZnB/rdRZhZXbKYxe4vEWKNVZU8QUdoW/jVVT7CNN5RuBh2BYesyz3H3nRlpqi
 SNag==
X-Gm-Message-State: AOAM533ZUMUGb58vKy+vnkq7DD3aiOUTOIQNdDZ0OGXjUlJuRuQ0waj6
 eFvbAgVbdXp1H0MrHaRec4hN1NP0eZZ2vsls7qLF3g==
X-Google-Smtp-Source: ABdhPJzarkzRwPkBBa9BbWZJ6AWXbapY3ZMmRZddaMoA60g5JXWhuytPgpaen9owcVGF4VsPdPKFJLK5+HPavYp0lSU=
X-Received: by 2002:a05:6512:20c3:: with SMTP id
 u3mr1117636lfr.572.1601385671684; 
 Tue, 29 Sep 2020 06:21:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200907025927.9713-3-jay.xu@rock-chips.com>
 <20200914003847.10341-1-jay.xu@rock-chips.com>
 <5373086.oXRXx9yCqB@diego> <7244527.mGzxE9Z0Hj@diego>
In-Reply-To: <7244527.mGzxE9Z0Hj@diego>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 29 Sep 2020 15:21:00 +0200
Message-ID: <CACRpkdYAxpyB+y88eC4iuvHRqttPSFdaMHAZdr6y8jfTr0Qong@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: rockchip: make driver be tristate module
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200929_092113_287542_6CDABACA 
X-CRM114-Status: UNSURE (   9.14  )
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
 Jianqun Xu <jay.xu@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBTZXAgMjEsIDIwMjAgYXQgMTI6MTggQU0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cgo+IEl0IHNlZW1zIEkndmUgcmV2aWV3ZWQgYWxsIHBhdGNoZXMgb2Yg
dGhpcyBzZXJpZXMgbm93LCBidXQgSSB0aGluawo+IHlvdSBtaWdodCB3YW50IHRvIHJlc2VuZCB0
aGUgc2VyaWVzIGEgZmluYWwgdGltZSBhcyB2MyBpbiBhIGNsZWFuZWQgdXAKPiBzdGF0ZSAoZHJv
cCBwYXRjaDEgYW5kIGp1c3QgcG9zdCBwYXRjaGVzIDItNSBpbiBhIGZ1bGwgc2VyaWVzKSBzbyB0
aGF0Cj4gd2UgZG9uJ3QgY29uZnVzZSBMaW51cyB0b28gbXVjaCB3aXRoIHRoZSByZXBvc3RlZCBw
YXRjaGVzIHdlIGN1cnJlbnRseQo+IGhhdmUuCgpZZXMgcGxlYXNlIHNlbmQgYSB2MyBsaWtlIHRo
YXQgc28gSSBjYW4gYXBwbHkgaXQhCgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
