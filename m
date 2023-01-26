Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B0A7C54E94
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 13:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMLzIaiTBDANx/iUkdGI8COC/QeKM+yviyUGctrZARg=; b=2QwJXhlVzWkahd
	4AtMTPnIaybUBEv5shIgn/f4Fj1SkPNNy8pgbOkm05thm5vtMKaEKtuxLb8MUJ2A8gcd2A/D8Tse2
	d/lGqEKGH+KLfiZwEtWN2QzJWz6q2CK8qf+TfohLQWxzlkTYlxW9/mx1J4Qt+q1HHZ6yn9NS2yHXf
	tdvowiPvgQspwKO3Ann+ivUXUKe4r0fkwUd/hhmHj48IW7a13j02oM2LSLGXXA60bvsXzOgQQ9H/3
	ad/D/a+tvrdKDnhHQmY3q+dDkrrFTbfXm3FbYuAqkwdbKMxF3QDW+s4C9lFzwRjjduaO4qmH4KIcr
	ifiNha4YxmHyjRGXbGTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2bQ-00B0vI-Ia; Thu, 26 Jan 2023 13:47:44 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2bD-00B0rQ-Ls
	for linux-rockchip@lists.infradead.org; Thu, 26 Jan 2023 13:47:33 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-4c131bede4bso23305697b3.5
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jan 2023 05:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aaX7G6f2mcRR6P8FNP02PxE5OsxrexcPBPFfvEKEKAs=;
        b=CHFI1Z8taQTug7Pk8J6v67+NNDDUaqZu+KuW0124FDvfAkkoV1Q7Na8nGKz6mDwUtb
         7nWBCg2Eo243/6intxFzS+g+BiHEOLi0Y5chAzu06TfCJRj6Md7+LVhuu+cZcbu5GX5A
         kKBrdE0U0/g3bDVSTy6cltLs15C95L45A2m+74EG9DlflDa0zdDPdYYSoDuHaQPjfSCG
         d22Rbf6ksG7ucpQoVGEEH9nreV3e+WxbXFTZ5WstKksg2FEOxYlQoK+pIbiahKJMZM1W
         5yqmU8RB2q87t2lesencDlMt23hJFnwiZgfxM3bUHMgY/SydiG0WLVoWY2BWTTlHlXLY
         vmuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aaX7G6f2mcRR6P8FNP02PxE5OsxrexcPBPFfvEKEKAs=;
        b=vgA7Q25tMxRntwnoREloptYmv6r5kcaeVli9yatsbUlhOPgyjpBSmKL4Y17tH5mcFg
         BSYoa3JzGZb0ILWoczLO58EulfOPSmbPxFHT5KfY1SFfPqHVfXhWif/uh64Kql4EyP3g
         LjmfnLCLKzFfNVIz0R5cJVHWB18V4P/FABXCQhVZNPYDFuY9IsJ4LWZxWphhYiWzHTZO
         adQVrs+UmxaCN+Tz4GhpW9wFTL5MRHh+nPerufj4PG8NcmvbmDOarhB+vj91jJggNbCQ
         DjtV8sqfzunr8r/ATA37VBIKbpS03UxuNRHTD0ptLDnIHO3e1jIwCImumfm3rgsrY3Uj
         9wcw==
X-Gm-Message-State: AO0yUKUVMeqKL/H1EY0P6OMeC4R9zhA+DJjYtcrQSXy6II1Bqgi9jPJs
	jJEikEOfpF3z89T2I0Hoay2TiTJQKq4PAe8GtoneMw==
X-Google-Smtp-Source: AK7set/2tg+jIXr3a4eARZbcDPJNeIExb1q3XkFjEhWcElv/xkALJatdRGrpFAl9l/Bv3zRXMlFGMwmhvN+PIeLAKzg=
X-Received: by 2002:a81:784f:0:b0:506:651b:cd0 with SMTP id
 t76-20020a81784f000000b00506651b0cd0mr925288ywc.273.1674740848566; Thu, 26
 Jan 2023 05:47:28 -0800 (PST)
MIME-Version: 1.0
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com> <890be9a0-8e82-a8f4-bc15-d5d1597343c2@gmail.com>
In-Reply-To: <890be9a0-8e82-a8f4-bc15-d5d1597343c2@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 26 Jan 2023 14:47:17 +0100
Message-ID: <CACRpkdai9tcGNbk_oQ8TbHzk7rfiiSRJyxAukqZ1BH9LsiuguA@mail.gmail.com>
Subject: Re: [PATCH v2 3/8] gpio: gpio-rockchip: parse gpio-ranges for bank id
To: Johan Jonker <jbx6244@gmail.com>
Cc: brgl@bgdev.pl, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	heiko@sntech.de, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org, 
	philipp.tomsich@vrull.eu, john@metanate.com, 
	quentin.schulz@theobroma-systems.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_054731_737533_139A955A 
X-CRM114-Status: UNSURE (   7.81  )
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

On Sat, Jan 21, 2023 at 12:08 PM Johan Jonker <jbx6244@gmail.com> wrote:

> Parse the gpio-ranges property in Rockchip gpio nodes to be
> independent from aliases and probe order for our bank id.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

I guess there is no pretty way to do this.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
