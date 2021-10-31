Return-Path: <SRS0=beqN=PT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43D76C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Oct 2021 19:40:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D5BC1608FE
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Oct 2021 19:40:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D5BC1608FE
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AiDtnZSZ+yEey8BSeRFmEpp2exZCWn+Eu9llTZ/joS8=; b=GYgm6cxcpd2/LZ
	ih4Lo6FtdddkhxR+KO3XjVrOPFW0uHa5ZvSfmvnN9DlqbmnraqItJv1ZqxUymdAc1CyXY3fz+4kxz
	SNqp/1xZb/Dk11ZS7dvtHUJo7OacABTavxj0hTYZfnyXRZdswQ9pJFwxjYRryXdH4kXR9N6RtE+x9
	z5ZLMI1BFUNAXiYPXZejsjwmAVHhdy95J9NQN4mUTWexTn2Ui1z69JatTTWRx78190TTxLWxrLYZT
	FhzN6kPIeWRQCQ5oOeljSC1f4nU8XscMFK4JjzjBsNZF2hoZy7q6jtHLrT/WKjlOw7MmcEkg2eErM
	nrYScis9HMYEZSmTzAhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhGgV-00EdfB-VY; Sun, 31 Oct 2021 19:40:03 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhGgJ-00Edcu-Mt; Sun, 31 Oct 2021 19:39:53 +0000
Received: by mail-ed1-x531.google.com with SMTP id z20so57826900edc.13;
 Sun, 31 Oct 2021 12:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L7Um4mUV79LuOrqozwijQdh04ZeZMr8lNOl1Ry7Klkc=;
 b=JBmPnOGFYpfbPwmjvMZ4yx4s6/ckgRAi2dKY5isYV+ClnaBBViS5BJ29bmz7iPqdbO
 DnUd+xlIjWZvYCE5Bv67PU5hRIo2ulTAMJ/8Azo6A17TKXd6Wpvq6mrqGT2mPNemm/T3
 Afl/zmDHNsHjBWTRCSC0C7MjR+fo2JyKgb9SG8y8oDYDa0YNUEQt0Sp8xJSIT4jJz63+
 8Khlw0kMKmCtka19DRKq/2Fld0194KQQk2MaRZfSYydEyiikr21CQvyG7gRaPnWirnHe
 PMYFs+xBe1mbUvhrYKI3VJvDQ9jUbRO6OXVjxgLk3GyBhpGyC2u5iqOFeKVswbjgpKer
 1r4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L7Um4mUV79LuOrqozwijQdh04ZeZMr8lNOl1Ry7Klkc=;
 b=VLorP2bbtp6f+SMja5vlmFAb6tRFBpMfffZBLzddwmba6SfRa/N6YlL+8ODFYsyCTh
 obaVKMHPOyhoRIygNUvCKm4P82VUM7WfEn8D++vIWEvDefBaThmoTlL6USvAYwhqzQSE
 lepg0tapt3KVO83zGqvQYyzXE3Czx74my/Cpf1beauJ/uNbWn8yT8VnPA26quQwHh8q/
 OHW6yQF7WvEsZ2DDxEhRhOkQTAE3GDQZOLBRaCSNvd8oRsibg/8Het6JzdcVI7H0DEgZ
 Z1PiKBenD8A5FSEiP7lzr6JUpD2P75YD1XEFl8FgCoQQWyXaensvSWY/Lqicu5o8CR1h
 y8og==
X-Gm-Message-State: AOAM533vAaRA5F9Cmcsnfx7LZ3rwskFytShLitS3Ci+8d4xHgLAtIb+r
 +uAScv3SYHqqBXlzeWlveONxHu/CdVCjw8+QJ6U=
X-Google-Smtp-Source: ABdhPJzZRpzEZC58TA6BZt5J3AJla2LE886DnrZUGf+xPMtbZrcWc5+cvzmXAdYOLXVy5P3t9lPPq4NCKMpEhMPm0dk=
X-Received: by 2002:a50:da0a:: with SMTP id z10mr33926433edj.298.1635709190027; 
 Sun, 31 Oct 2021 12:39:50 -0700 (PDT)
MIME-Version: 1.0
References: <20211029114948.41841-1-david@ixit.cz>
 <20211029114948.41841-2-david@ixit.cz>
In-Reply-To: <20211029114948.41841-2-david@ixit.cz>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 31 Oct 2021 20:39:39 +0100
Message-ID: <CAFBinCBVXNYG62jKABhJJt0m61+vQKqEyC4Mk5Ljg7htN-brTA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: make dts use gpio-fan matrix instead
 of array
To: David Heidelberg <david@ixit.cz>
Cc: Rob Herring <robh+dt@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, 
 NXP Linux Team <linux-imx@nxp.com>, Heiko Stuebner <heiko@sntech.de>,
 ~okias/devicetree@lists.sr.ht, 
 phone-devel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211031_123951_865056_1AE431A2 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Oct 31, 2021 at 5:51 PM David Heidelberg <david@ixit.cz> wrote:
>
> No functional changes.
>
> Adjust to comply with dt-schema requirements
> and make possible to validate values.
>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts | 9 +++++----
for meson-gxm-khadas-vim2.dts:
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
