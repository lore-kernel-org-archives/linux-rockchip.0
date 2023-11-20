Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59D1DC54E76
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 12:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3gJsbKbdjB33K0aUPnMtqexIQOPuabcRNIchL0t4cEU=; b=JM12HKyevA7o1L
	8gzkBKJSWObpbTdba0gHXkif1dW1jIir87nbWyRpXE1AZndnIVKiUCcJ5xtJH2Z43Ufp1qLMyn4oT
	noyUAAwnwvaxNx8ejdXNE6m/rRJqTRhkdeMWB3dHH6V3lrqPowOjzQm4J6HuJWC2S58bZK7dZER4R
	2iFsU20FLn1lAxF27wDlP68DC8eMrabyOuot1UUeTxd+ycmtq3BXkMUHAOKhOkfzwo/5BGdCtO5Yt
	jjm9xt4W5eL/YRKAscKxFlCCLcGkKCJKL57vZg+Vt1kFnKrUz0WJj27xGBAYKajQBqrNnKXhmOZ/i
	3dM8+VW9PcpnjA4nND8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r53ZG-00C1Yp-38;
	Mon, 20 Nov 2023 12:40:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r53Xw-00C19h-1M
	for linux-rockchip@bombadil.infradead.org;
	Mon, 20 Nov 2023 12:38:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=9MtZgtFfOW9dCjelkNp5f9hbzEUUDFSn3SDGb/3syhU=; b=JgxpZYSOmoLQ+vRXqfiSOrMrMq
	pV0DQwlnocneSmn1TwlqSVBuNlwe071dCvfohcm9ayG20oaP7cFBwzJSdOC+5HhG7Z2khuMUvB2fu
	i4T3jU6mbIjhusKpWME3bkhlYbXG+ipBG0nN9U4eCoMjUU/TBjrne0CdqfrKFsQf19B2wRdpLpes3
	kjHW9cOXdxkJCIGHRHGbLkuCrGix9ImQgBvwfIdTZpDk+gtK4zVLVD3LIUuze3uq3jwZFqyEhZlo1
	s1OcJZF3yxEfpCULxiOgnHVmZI842TsSa6eFjxxA2K+wwfRKEYyqJXMrKEPZJ4dToleVRuvbY63aJ
	ujpBmC/Q==;
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r53Xo-00AxOY-07
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Nov 2023 12:38:32 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-32d895584f1so3093586f8f.1
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Nov 2023 04:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700483906; x=1701088706; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9MtZgtFfOW9dCjelkNp5f9hbzEUUDFSn3SDGb/3syhU=;
        b=0+lEMNwtbpOd1g2uz4lNZ1IoM5urShe4PVd8a3toGtgCRaPNe0X+P/gJ/r4MqMnyFJ
         MXnbEWLtrkra89jR8rocVuYTusGity6TLmePxaQew5+ZyNK7gCMPun29b9cm6tc2yXzy
         L6/Vdwyaz0L9z0LdKBWZKzMmrP4QD4AUC8MvBCmAdIpKYNrSFZs/bBgFZBf93cAFs7ch
         RoZA979vx4OMjGOkuawRQQDbPvIgIO1bkTZhtU8mBg1ZzTPFC92VU2hY9nDykJBDHxPQ
         LrOXR4kOlwUYP87prvU3W/+/nv5C/QF0GaTJ+jVjmjLf0aMBFVLu0eSsdmI5o0/0O596
         o+FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700483906; x=1701088706;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9MtZgtFfOW9dCjelkNp5f9hbzEUUDFSn3SDGb/3syhU=;
        b=ElGM3pj+eSv+x7pIHU+YqnR2v3D/j9lMWYBrDvPlcE8ud+HHnjLsdOOpTsAimobL3x
         XUYFwsVYDVanwvRsdZ0HySXnO/LSTIg0tZCpJxCn8ENWcAApwYeSWSIlfz8OJrCfUklu
         fhyrIsJXIhsQAJ0KSlhvzD4k9WmSdC+nGmsV6FCXlNapCjfFW8za84Zj+zGDHkXON43T
         gMQeUuNgi4gKWENQLOLiZM2MGdd7vmx4iC/Peez11yJw7W/j9V2PPbwjHHUlWLkeM/US
         gGvUqnUUKBOVbL5Okk6fljeKkxrjxUheNin3n/DkyBHyOG7Nr921xg7dQbmuSRyHNBxo
         aDkw==
X-Gm-Message-State: AOJu0YxRVSNl3wh/MPXn3BL457e1V+8N4JSM50r8w2onF1TPLxhKlx+a
	kBm+RrMqYuiBWNXmaUXNaAaP0A==
X-Google-Smtp-Source: AGHT+IFBvsTa2GSHGKkTsseOa/qkg4gJuMlmlQOUdsnpNZgSMmS2I++Q4cVF9eZfL01E5phYNEjRpw==
X-Received: by 2002:a05:6000:1acc:b0:331:762e:6b0c with SMTP id i12-20020a0560001acc00b00331762e6b0cmr4534497wry.19.1700483905834;
        Mon, 20 Nov 2023 04:38:25 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id g23-20020adfa497000000b0032fb7b4f191sm11289700wrb.91.2023.11.20.04.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 04:38:24 -0800 (PST)
Date: Mon, 20 Nov 2023 13:38:21 +0100
From: Corentin LABBE <clabbe@baylibre.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: davem@davemloft.net, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
	p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org,
	ricardo@pardini.net, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/6] ARM64: dts: rk3588: add crypto node
Message-ID: <ZVtTPUoOtiiS2CuO@Red>
References: <20231107155532.3747113-1-clabbe@baylibre.com>
 <20231107155532.3747113-4-clabbe@baylibre.com>
 <10382065.T7Z3S40VBb@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10382065.T7Z3S40VBb@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_123828_414795_7B53C5A6 
X-CRM114-Status: GOOD (  10.49  )
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

Le Tue, Nov 07, 2023 at 04:59:42PM +0100, Heiko St=FCbner a =E9crit :
> Hi,
> =

> Am Dienstag, 7. November 2023, 16:55:29 CET schrieb Corentin Labbe:
> > The rk3588 has a crypto IP handled by the rk3588 crypto driver so adds a
> > node for it.
> =

> please follow other commits in the subject line, i.e.:
> =

> "arm64: dts: rockchip: add rk3588 crypto node"
> =

> =

> Thanks
> Heiko
> =

I will do it
Thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
