Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B91F2C27C6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 08:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9az5ZbZbeJ+fWFDBdrpWrqkKLFi29ZRn2n2aL4CUII=; b=lEQIf15sPJWm4o
	iSx8+eTJj5MyoAvwqnP48o0xYx/fSWXHsJV+HvzNE4H7KiFNvFXvPxNImbgm4vNXA8GFHz+yr8CMv
	kiE1jOtZImQqKOAOkKaPzFHXr+YfuSbD/UBFxLmbcFJezKVCv/0AoIqwe++5ZYvc9hxTc5ZZOujki
	Ltj3jdQLbKD2+TOCroKDBK6Kr+7GWMpLgIvNqENwrJjSxGiCD1dam8gslNrCRyA2vhNbHgfEu4eLR
	WD5hTEndwn2V9VekWnbigTT69j77W7wAslkPdsGz8JDAqIb+YKYXdNkV++xKcQxFMnwUkkVwjdGzE
	lZKklD2vQr4ZKS2iwxBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ7sS-00000009t5P-0uDq;
	Mon, 17 Jun 2024 08:38:12 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ7sP-00000009t4R-0oxv
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jun 2024 08:38:10 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-52bc274f438so4422699e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2024 01:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718613487; x=1719218287; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ad+DEAJ96q3Mb3dlvrA9VWDHz1PLJ9uuY9NHcvPv2lQ=;
        b=qYsJF3a1PgMinfL8D0O1NH/9Fh7V80ewCebI4DTo0oa/uW0lisdaMOhGcRN1L50gZ6
         ogJp1ND2VOGCRStXDpSZB3drqbgZ/6IWUUPldXP1xQ1rUS6V/2IdPKYIGSASG5tUDkvX
         foMMo/6RRsZJshyU6yXGhYZejjV1nRQCE6Gq+oU/Wokdj/Z8PmxZ9qUbsyNSNhW65urP
         YqDzRyUbcP7CNFQxsoQOCBx7CS2V717pdPSJEwYo+S1OEmE0FJJuaK4BSuaTH6nkC4u3
         o/6DuvkvzCtbcQVy1CAJ7KALE8+R8rulFofO8rgBvX0MEUBlq9lUo0nejoY1IBerWnjw
         9McA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718613487; x=1719218287;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ad+DEAJ96q3Mb3dlvrA9VWDHz1PLJ9uuY9NHcvPv2lQ=;
        b=ZIp+SkVw4JL3mwqVhBHkWCuw1zLPbiTcC+AyFjHuAcotdmgsXP30Tbr7sCvhVe2Huz
         qgs5jfhGEv9kNdULy9lOrKVoeXZMYuVH+Py/QYWl9tOXKPzy3DOiOERQZK3uU2qw7HPC
         KS9ajEkBm64bvzHlmsBVrrtATFBw/eeRFj5qOQ8PsyOAfuimsQIC1c5a55hwT7eAHeTR
         A6kYF/c8NDlQCASqMrBA3jvc4JHAsl+3O3tFHUQGbaJIA3JEo45Qvs2o6tMclescYnMS
         4BvfmrIMPNmX9yg0B60BxpQzIMuj048FCIExxMd4ItRLUWro6Scm8nhw3Y+hFMw9rapI
         OnIA==
X-Forwarded-Encrypted: i=1; AJvYcCVwzDPrVBGZtaLFORdQ/LQ4hLp7H6SK3DmzetzTl1DAF1hvsTjlXFfFHLIZoyX4zxq2eITRERWTmVV8a9PAiIKW+wb+gJCtMggWf55wxsQUCg1C
X-Gm-Message-State: AOJu0YxFijRD9BW7920Iwa6dIFB1xYCvIE9KfxvoFF8ymRdiZRE5F+yT
	Ura+5zwIfsTj/9CDLFbqyZPeFI0hv8vPpieyF7/VY3P+8pV0/s8MEBojCHei9RJmR9Q65VM0UdO
	YXiV5LFB2FrEevcZug/rp2xuALOXVNtjOQts4vw==
X-Google-Smtp-Source: AGHT+IFutrW6UzBgAviJa/d7uO/iq8C5wSF7SgFGox1gHdBAGL1yUWbpxRacXxzbupfXHiyhG6WNRXED7ADEqQ0l7ZA=
X-Received: by 2002:a19:c515:0:b0:52c:8479:21fb with SMTP id
 2adb3069b0e04-52ca6e64c25mr6506284e87.27.1718613486857; Mon, 17 Jun 2024
 01:38:06 -0700 (PDT)
MIME-Version: 1.0
References: <20240606125755.53778-1-i@eh5.me> <20240606125755.53778-2-i@eh5.me>
In-Reply-To: <20240606125755.53778-2-i@eh5.me>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 17 Jun 2024 10:37:56 +0200
Message-ID: <CACRpkdYv3DTqJD1dtgLO7rxn-34ZpyfXCygwvgeJpEFWhyKQrg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] pinctrl: rockchip: fix pinmux bits for RK3328
 GPIO2-B pins
To: Huang-Huang Bao <i@eh5.me>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_013809_272672_C43432E3 
X-CRM114-Status: UNSURE (   4.71  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Huang-Huang, Heiko,

all four patches applied for fixes!

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
