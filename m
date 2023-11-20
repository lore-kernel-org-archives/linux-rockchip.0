Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3FB2C54E76
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 12:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKdbHN10xepj7zwrqiz0r6ISuoeOpajlBhYWMXfns5g=; b=LFVP4cBsG4ycm+
	AP8qxslT+gRX1mRbute6h8/cj/KNAOworVQczPysQEthKp7VyJFTuGeN+0veSYU87XE6IzSvVmWHP
	uWJWmIwqEtJ7m9XOL5SfffP2rbP3/hLEjC3ORL3bF1ywW/GqTmKG4LGYayz+S07e++w+v3IiLL4gw
	NOa3Y8bDPe5ERZb8eaxEYaY4KCrpETd3ep/trHRdsURr1cwLzKu4ubVHNIHmLklP3yNCKVBaWMmEl
	Cw+Q2e/G4zbrrOC2ZXGltwINBnw33IrAIJ8aXzH/z1ERrLu8c7Bt9YBxe9nheg9IvQM7VI+wwXs31
	oTwdydMWQCzc3k0KxQ5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r53ZF-00C1Xi-0z;
	Mon, 20 Nov 2023 12:39:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r53XL-00C136-1f
	for linux-rockchip@bombadil.infradead.org;
	Mon, 20 Nov 2023 12:39:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=4atkjwStmvZxjHp5SDNM/cbMwICPzQFU+wT6vfftIs8=; b=hdcAdH/+prUDtKawipUkkTYJZn
	71j5lihcaEgJoOXMxFhJgY+7u76/nfdY3BMe9SFn3Vh27Q6Eu5SNAzXY0k2d2fYcagKUC7fQpOLxh
	2f7pZuvwUfAZfk9Vu6neO7Jv2qNUjG0IMFBWFe0i4QHhitHeo9eBHwJoG+pcbD0CQoJ0iiUYRTwzT
	ATy/Ru2C4ZUZsGqVvvbcHp0lm9sOz/12LSb4RxjvNXc/Mg72b+oYvF41yZd6CnhZvHUK0NruYIAoD
	mpdogq81Ee5im6+4QKt5vsPdkGjtcVwCrXV+UlT2XveL1HNI4z1qQRrGZ9QjC0HjTlxyzsPmfgvKx
	m4GXLXMA==;
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r53XG-00AxJk-04
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Nov 2023 12:37:58 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40a4d04af5cso12819205e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Nov 2023 04:37:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700483870; x=1701088670; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4atkjwStmvZxjHp5SDNM/cbMwICPzQFU+wT6vfftIs8=;
        b=qZ/xZ2GQ0JlhNOlFERJhoCodo1Rl1RBYAJ4+xUnClS6xYYWlAy4ONE7I7PPixIwkhQ
         7uVrZm7dzSW3pnQ2zutTyMPUSq41GSlRQBizkQYujxQmcjFmTjxnvQTdqgndEKtCvO07
         QlrujNl1EQOf1eDnwmhyE+LpS1g82WVt4eXEG3HRB+ciougFvigFfWEFdtp/q3nukmCL
         ub8FI48PiaVAzoRciBBiMRgyIqq+iCQueKmHB7jptitowyP9kfS9PNy3BcOBy65yI2nY
         ++r8TMmOYNne2QzVJqcwAEtIQsVL0n4RXrxMyzRxng6Oqng5yykq+ryG48OPZrGMHbMF
         KPyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700483870; x=1701088670;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4atkjwStmvZxjHp5SDNM/cbMwICPzQFU+wT6vfftIs8=;
        b=CM0odgM/XsGy9ycCIaMsOrLJQGwDibiieQy7dhdDHm2Z1eBYs6xWB7gcN0Kjl5j8Nw
         nu6+3EGpKsYfw9Yih28Jn8YLQpRf72ceuUmAH+pQj5m5JbGgCGqFCnrzpKhwbJZd6oX8
         Rm2BpRw6hpLawlWVTHSBt1Owqk4eqL/f2LNSjE4JLKjcfo+rJaYVctHS5wONfGItgGyJ
         ZIL01yZ4YgcvKzRhRQQd8uwEiui/PXbvKnNzekHEQbXoQNyANSxhp7uakhgh/TmTjsf0
         1UYWkoAZhR/zNHs5PAq2r6WQ3rz+RGxdMrcvf4BE3xgc7iLSerUPuw5O4N7/1p2J48FJ
         +wpA==
X-Gm-Message-State: AOJu0Yx2cGo6Av1ci83puPIB8Y3NiZfRcP/BIn5i4vR0LMMCld62b0KH
	J7Ix9iWZxyXAzSsJESCoi1lXsQ==
X-Google-Smtp-Source: AGHT+IEs5lAuavrkwKGpRZ5AkeCSKymW/RWPSADLBndhDv2LJ9rELvqHNmj4T3wJSogI6J0K/0ehDA==
X-Received: by 2002:a5d:47ab:0:b0:332:c514:641f with SMTP id 11-20020a5d47ab000000b00332c514641fmr2915054wrb.13.1700483870457;
        Mon, 20 Nov 2023 04:37:50 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id q15-20020adff94f000000b0033169676e83sm11203792wrr.13.2023.11.20.04.37.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 04:37:49 -0800 (PST)
Date: Mon, 20 Nov 2023 13:37:48 +0100
From: Corentin LABBE <clabbe@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
	p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org,
	ricardo@pardini.net, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/6] MAINTAINERS: add new dt-binding doc to the right
 entry
Message-ID: <ZVtTHEr-zVZFuvHT@Red>
References: <20231107155532.3747113-1-clabbe@baylibre.com>
 <20231107155532.3747113-3-clabbe@baylibre.com>
 <6ba4585a-b7a1-46f9-ba89-a1e605cbdda3@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6ba4585a-b7a1-46f9-ba89-a1e605cbdda3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_123754_257395_5A4B0D3D 
X-CRM114-Status: GOOD (  12.43  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Tue, Nov 07, 2023 at 05:20:46PM +0100, Krzysztof Kozlowski a =E9crit :
> On 07/11/2023 16:55, Corentin Labbe wrote:
> > Rockchip crypto driver have a new file to be added.
> > =

> =

> It does not have sense patch to be separate commit. It's not like you
> add new entry. New file is introduced in a patch? Then this patch
> touches maintainers.
> =

> Best regards,
> Krzysztof
> =


I will do it
Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
