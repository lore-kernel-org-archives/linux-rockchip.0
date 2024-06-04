Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7D46C25B78
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 20:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OdkTMUPYQ6vTMqYVaHFjHKfdVcLcB7Bws+cReL+QwWY=; b=jhEcw1H4cwmh79vidP3SYlxVTf
	J0gkvgy21jnH61yOuhj5kT8knPcT3+ExWwNf/h8SfnwIgvjnsK1skS1ZsmodJD5tSRhQiZCbMtjLL
	ZEwgG27EUk1vUj8POblkt7ejLRDkapwFqb0BPYwJVcr4gSkoDXHCFGRoKJW2DeoZqEo+PVALKFfA0
	IqvKlQy1NFmEcUhCgP9DHD9k6SYdcn0fEzR9t+eYb+FH3vuq4B3cYu/G9gjCAzEigqAux9AQoxaaV
	KaoNKnFRJns/65WjDp6ec/Nvs4P2xwl7GspczsxLUmsuobgdbQyJia5H5DkczwMbt+kvSwElkFtpH
	Bj2qxOrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEb5E-00000003kmr-3qTm;
	Tue, 04 Jun 2024 20:48:40 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEb5A-00000003kmG-0pFn;
	Tue, 04 Jun 2024 20:48:38 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1717534112;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jaTzlawGlDcYRhQAm+R1AsWpCyayK2cAnVa+Y0OsHVQ=;
	b=AyEZbuQEG/qqS8hCg4QaBIOxBX5BDnlwIu08AMxosoc84FDiVVV5NnCCTRWyhFB4zo5xVV
	Mqf8T7Qr9+QUghlk4yVtaLV0HE9dLTRffsJyizkktmF01hfJTm8DXRaX92E2WANTcuw9qC
	w4A4pFK81Zc09M++1RkPeePFtqjojo5/EVcinZZBjENohmQv3PByt+ZdvBqTT4sIw3l9XQ
	0xixHMlzRPKwYzIJHUZ5J9El7sfvISr3oEKry2exmbn/eKp2SLdv/reoa0IGUazY4NSGwV
	ry6MW+Ao7vnlq9nEmfX+fJgg4lbEia7kzrfWlCJ4aCEfSCWSNDe2v0vQO34A5A==
Date: Tue, 04 Jun 2024 22:48:30 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, quentin.schulz@cherry.de, wens@kernel.org,
 daniel.lezcano@linaro.org, didi.debian@cknow.org,
 krzysztof.kozlowski+dt@linaro.org, viresh.kumar@linaro.org
Subject: Re: [RFC PATCH] arm64: dts: rockchip: Make preparations for
 per-RK3588-variant OPPs
In-Reply-To: <82db817a908b761d8c3d73ea04714314@manjaro.org>
References: <673dcf47596e7bc8ba065034e339bb1bbf9cdcb0.1716948159.git.dsimic@manjaro.org>
 <CABjd4YxD41DEkBCZfkznLboEY9ZVOfTCLcj4S_kkcsVswbANyQ@mail.gmail.com>
 <8f8623e29a479c4108141302e708dc3b@manjaro.org>
 <CABjd4Yy4RMg+6-4ygV0MSwJj5LReY-ymbctq4PPfVZ6L+c1tsw@mail.gmail.com>
 <166cc4e46f31644a50306625b2ab18a6@manjaro.org>
 <CABjd4YzDNQa45=KC_t0xnTDrH+g-oUrcpgP55oOj7JcAuu7uFw@mail.gmail.com>
 <82db817a908b761d8c3d73ea04714314@manjaro.org>
Message-ID: <75563ad3f6bf6b6c8b151ab0cc26b490@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_134836_724208_D6C1E513 
X-CRM114-Status: GOOD (  10.92  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Alexey,

On 2024-05-30 21:31, Dragan Simic wrote:
> I'm sorry for my delayed response, had some "IRL stuff" to take care 
> of.

[...]

> On 2024-05-29 16:05, Alexey Charkov wrote:
>> The problem I have with -common is that there are several layers of
>> "common" even among just the three of these chip revisions, and a
>> clear inheritance hierarchy between them (i.e. RK3588j and RK3588 also
>> have a sizeable chunk of their IP blocks that is "common" between
>> these two variants, in addition to those shared among all three
>> variants)
> 
> Hmm, I see, that's a rather valid concern.  How about using "-base"
> for what I called "-common", and "-extra" for what I called "-fullfat",
> for the lack of a better term?  Using "-extra" takes inspiration from
> the way Linux distribution package repositories are commonly named, so
> it should be rather familiar to nearly everyone.
> 
> Also, "-base" and "-extra" are rather short, so their shortness would
> also make them stand out in the directory listing as something that 
> isn't
> just another board .dts or .dtsi file, which can only help.

[...]

Since there were no complaints, I'll move forward with sending a "real"
patch that uses "-base" and "-extra".

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
