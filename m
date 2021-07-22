Return-Path: <SRS0=0DM3=MO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F78C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 20:28:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F1A9860EB1
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 20:28:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F1A9860EB1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ed004pXR5tblpVwiHo0rL8RjkuqmWIdf/fRi4Q3xtpI=; b=LL42z7k7vCYemg
	dVTiVRVVl8dU0qx76/fpXgjlA0cj3JNPPeZkXNRm/wsUu8jI0oHHOQ5gHTiif+xouufoU6LiiRvyS
	JvOTUg4lvjB8uK/b43J/ZsbjSqdOqwS6Av0ntiV7lgeLbNJjXrLQJm+fy3BgZH4zPJs7eOFbQ+9Ub
	flSMBezE3iQboW0w+9HkSB9XgahvBUCNCM8TN3i7lonS/eKOPQuMziZOUCCUOfxwAOwnxrMj6Gzjt
	pKWaoJAzGqKSnw5L2v5xRcEVECTaFtWj3jMmPTpp65kUrPoBhp4bSH1kN94WzKW/Zbsl8KHybRZnu
	nsygLGasnDbV3FkLzjAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6fIi-002hSK-IC; Thu, 22 Jul 2021 20:28:12 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6fIf-002hRf-No; Thu, 22 Jul 2021 20:28:11 +0000
Received: by mail-yb1-xb33.google.com with SMTP id i18so10178651yba.13;
 Thu, 22 Jul 2021 13:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JShzBsE1gslUcj6DK5RqtL+x9Drx5IU2YuOFiHBfDHw=;
 b=IRLteODQGte94LrMcF8c6DvMU7ZpPp+nfht8VwL5H+Msw9FsWAt2ml94EZfghfSv28
 U0IoQu7i35gxNE6BG1lGutxLT+Nt1aZGCZQ4VXzbjjE0poS7Geq/72XLhwJEYPvlQ499
 sUee252QaP8wAZj7qZzW+4Euk3W6gGjBoTS6M46PB6PRuuP/tTpQHdjcVRRWhKKlnVKg
 A/f25qcxsUfeHoOBuCOLN+BQbyRGqAY06URrRck/SlVSv0ls/AC6U6ZREzRY82q6PGXj
 y3aSuy5EC8SCX/9BebCa92Z7Qx1Ly1ozMZEI0aVr/MLgI2HlHrz9aeGynJUg9Y4qCjla
 3pPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JShzBsE1gslUcj6DK5RqtL+x9Drx5IU2YuOFiHBfDHw=;
 b=hrQJQU0QdB6szfjqkZ0mY0De/FGBXGW6FtCl+CqzJ779pUNmfgwm16V1XZbOof7rvB
 Eed03F8kb96sREGrfYJBqCtUgiF5U/WLqpPBaUJfxFGwPqjCDkD16SjN9miNDmAQmJl9
 O/70JSnOFGsf7dSOtx8m0oa/vlH+ZFGcPkhtqQYbdPKMznm1f4US532xGxiSbxgOAfnX
 H6zKDIh2S6emwSrBmTQaA4z/23GyGUbJqRFXwrcMbbFccxXubQwEy/+0afgtdTr5vZtY
 2lWaO7voOh+hJQt6DYWYY95hFi+OH+H0Tj/lbNGKGBcqZX5GlDy+Ol/UIajDZRY+bpQB
 5TMA==
X-Gm-Message-State: AOAM533vkQcLTZx24Jn8jk7R9/QLG2CNTZyreyvacnFDtiNSiTPMGg9D
 Fs4/Z/heN4ER1CFFtY8ycmm2jAaFSOJY7UyLWeU=
X-Google-Smtp-Source: ABdhPJwWOfW0irKxoybP4rg4Plpb/H2/VmYLX+xlDoqLALk8hNOKmcJ40S5hZXcreYjK5mns0JSKeOyV3z3LsStAMac=
X-Received: by 2002:a25:ad62:: with SMTP id l34mr1810562ybe.457.1626985688015; 
 Thu, 22 Jul 2021 13:28:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210722191430.28203-1-macroalpha82@gmail.com>
In-Reply-To: <20210722191430.28203-1-macroalpha82@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 22 Jul 2021 16:27:53 -0400
Message-ID: <CAMdYzYp3W2NGN+VHZAC__hutmtGcUTHeQ=tDo+OAeygUQ5kXTw@mail.gmail.com>
Subject: Re: [RFC 0/4] power: supply: Add Support for RK817 Charger
To: Chris Morgan <macroalpha82@gmail.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-pm@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, maccraft123mc@gmail.com, 
 sre@kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>, 
 lee.jones@linaro.org, Chris Morgan <macromorgan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_132809_820574_5F01FF1F 
X-CRM114-Status: GOOD (  21.35  )
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

On Thu, Jul 22, 2021 at 3:15 PM Chris Morgan <macroalpha82@gmail.com> wrote:
>
> From: Chris Morgan <macromorgan@hotmail.com>
>
> As this is my first charger driver, I'm submitting it as an RFC so I
> can get input from the community on what else is needed to make the
> driver consistent with the quality upstream expects.
>
> This series is to add support for the Rockchip rk817 battery charger
> which is present in all Rockchip RK817 PMICs. The driver was written
> as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
> myself Chris Morgan <macromorgan@hotmail.com>.
>
> The driver requires some basic parameters be described about the
> battery in the devicetree such as the maximum capacity, the minimum
> and maximum voltage for the battery, the maximum charge current, the
> maximum charge voltage, and the value of sample resistors and sleep
> currents.

Excellent work!
A quick test on the quartz64 model a shows expected values.
I'll do some long term testing as well.

>
> Chris Morgan (4):
>   dt-bindings: Add Rockchip rk817 battery charger support
>   mfd: Add Rockchip rk817 battery charger support
>   power: supply: Add charger driver for Rockchip RK817
>   arm64: dts: rockchip: add rk817 charger to Odroid Go Advance
>
>  .../devicetree/bindings/mfd/rk808.txt         |  35 +-
>  .../boot/dts/rockchip/rk3326-odroid-go2.dts   |  26 +
>  drivers/mfd/rk808.c                           |  16 +-
>  drivers/power/supply/Kconfig                  |   6 +
>  drivers/power/supply/Makefile                 |   1 +
>  drivers/power/supply/rk817_charger.c          | 927 ++++++++++++++++++
>  include/linux/mfd/rk808.h                     |  87 ++
>  7 files changed, 1095 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/power/supply/rk817_charger.c
>
> --
> 2.25.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
