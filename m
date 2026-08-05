Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D72FCC55ABA
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 16:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvWHMGxz/W7HxMEbOYwxqBdzUSQcPJq7VwYKx7sRoWA=; b=e18JYHV2p6j4Qg
	8QsqWcQShuT2Fbi8R+x8y7EA2JADbR+PfNmT2I8UiTxvh5oPWFiF9hi++HMBpkYDBYfkzMTYocmOd
	LA7ct/Jd+nOPNuUbM51zTNuNw07RJ2Odrgp4DCYYYvWJ5SIVFgW2PPsUzEH7mj7K2iUfjA8heVi5n
	fE0imtIklWNICptLMmOZpEeocYCAvGNdGQlBri37jF3LETzZPwIxDopK0MTXLQ2NRE6i3yv9wxDwu
	KIG3iOV+6AiJqJ3lphJpRpgj1gWi8Ab2pCre2PDwlZgMv6ohqeEaWt1UgwN+0bFSqXlHNVx8uXLZa
	c1knWDwdH0ujpEYTkKKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wresj-00000004IZZ-3NxP;
	Wed, 05 Aug 2026 16:54:17 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wresh-00000004IYv-3UkG
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 16:54:17 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-4731f5ffa74so84114f8f.1
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 09:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785948854; x=1786553654; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=s0lx5fgW992e5Cz/cU4YqatMbomgvYAN8oH/xxnURBY=;
        b=s4V5bxzNDyDIW63n+dfj5m6G0SbFlEbkoM9TXqgW1BWpJH3LW+Fnqatv5bmZZaljFO
         z4zpbAMgbpUBXIT4PI+bHaQUcuuFkomQnYe0YHS0R662YQgYuETjgEcB0KqfO/KS8Hna
         ruUF9oNW92dxHQgAyToOGtUaoKvTbGWcFtiZes8UV7QkHklm6ZYIsmJeBwQ1OzMgOhTQ
         tKHJuq82dEhEw8EP07atawVu+ncgvBgjzsq92BS96TvLU8wEO0o4j1h0do3P1XMfop0L
         pNjkicynefzbV8lFrsV6WGpWwIt9An4oeh0ZYOn3+lHBT/wZ8As0+ZUCRD4dMmOLhVSa
         XStA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785948854; x=1786553654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=s0lx5fgW992e5Cz/cU4YqatMbomgvYAN8oH/xxnURBY=;
        b=pg1rObg2Mgs/F8SSLGmF2wScrmvJSFnNXtFUFWI4LAwMQh2TKvjExcS6nhhVNaj+g7
         Gw8zhs79IlaejRYEg1BWxAyYjdGXm2JluhX+xMWkY5CRGbLPj00GwWCIm6lqOv7eZ+Zu
         cRONyW4u5JekMNafMpFITK5sIeL86lZTH7jLyNCnwDZV58LlmsRGBDH0eWDx6PB0JPcg
         QLfB4ggT59MbDZv0Iw8e2klqSkpGWRd4uKAQI4F0iTypeXC2FLpaqNbqCxpnO0mUBhv1
         lmyTul2vA32uO79Qlcj3b1hUrVzkwsBXJMDW2oB/1ndtCvcsG3zzklzCGiXLUFcu7uxV
         o4pg==
X-Forwarded-Encrypted: i=1; AHgh+RqoMgN+MNLdreOSc3a9e3NBrmPv4+gQObZ+JwfqTznvANHBa50j/KHHGFIPwtO5z9ZqybXIjFaJHPNtWwrKWQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxCMYD7k1En3zsgYa+c78l7BBTfcPzvmXtMyhdsVy0a7xXoIH2Z
	+MUBT7v0uf4GDAF7wMW4/ahgI8KzOahfDTpkGDnQIvfEuo0iJSCqN0xH
X-Gm-Gg: AR+sD11df0M92QSVqf/+uPOX2rG6ZZ/2fZrDQ6V+VUXUypPqo7E3O72IVeYt8Ibe9J6
	VePovybOQCplrBGUH8CMtRZ+ShOU53UkRtsyc7hW6S+vY6QPb31I4zjZXdn0Zqz6qXB9LN2bBPW
	ZL52m585EDasnxdRFb+xQKFXmK/KMcNO8vOQPbfl5yafKXiHZcDChJ1Y2wowNrH6REJ0cC4iUWY
	kEGfyEgQlWQ6bSmWAL+ThS8B9cs9TeK/LHaltvSPupCyS5YbWkePhWg80Y+gZ1ugW2ypGUx0L0o
	vrqv8tmFym2bhKLqCV/Pd5EsH3Lp8Xl7s1HUd4GstrabSj5KniciGQ0g9/eh30SlhH88gz6Nt4l
	7eJmA4dsAyvCjmTFHNc5s7RXz1RMIf8aR48DhVa5OurUCswTPe6XlHlPRQP/LNMwV5J0AvHBArB
	v3cEgMnD7DItUpLXpW8HVxlYIUMB6mK5FnRXXHs4IO80xe+hSIv9qhQt4fbPME5TRjVrB8RNzA5
	yjewT/UFLx2kF7I7j2PCrYrezAp3R3y6+f2Ix9mocDtPiwkYNZLwa9HKs6IRM7ilFcJL5NndIUg
	+hc=
X-Received: by 2002:a05:6000:200f:b0:46f:7d90:8124 with SMTP id ffacd0b85a97d-47fec528a60mr6555260f8f.2.1785948853795;
        Wed, 05 Aug 2026 09:54:13 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B86F10001BE789C6EE938EE.dsl.pool.telekom.hu. [2001:4c4e:1b86:f100:1be:789c:6ee9:38ee])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47febfda0d7sm9829057f8f.2.2026.08.05.09.54.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 09:54:13 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Daniele Briguglio <hello@superkali.me>
Cc: Ricardo Pardini <ricardo@pardini.net>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH] clk: rockchip: rk3588: don't disable unused I2S MCLK output gates
Date: Wed,  5 Aug 2026 18:53:47 +0200
Message-ID: <20260805165350.14710-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <6cc68287-ee87-4db6-8f40-531ec2d92fb2@pardini.net>
References: <6cc68287-ee87-4db6-8f40-531ec2d92fb2@pardini.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_095415_882066_4AE720BD 
X-CRM114-Status: UNSURE (   8.36  )
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

Hi,

Independent reproduction and a Tested-by for this fix, on a third board
family: Orange Pi 5 Plus (rk3588, es8388 clocked from I2S0_8CH_MCLKOUT).

On v7.2-rc6 without this patch the analog codec is completely dead in
both directions - playback silent, capture records exact digital zeroes -
because clk_disable_unused() closes the new i2s0_8ch_mclkout_to_io GRF
gate at the end of boot: SYS_GRF SOC_CON6 reads 0x7c7 (bit 0 set) while
the clock tree shows i2s0_8ch_mclkout enabled for the codec and
i2s0_8ch_mclkout_to_io with an enable count of 0. Re-opening the gate by
hand over /dev/mem brings the codec back the same second, and with the
gate held open the board plays and records normally.

Tested-by: Igor Paunovic <royalnet026@gmail.com>

On scale: grepping v7.2-rc6, every rk3588 board DTS that clocks its
codec from an I2S MCLKOUT still references the plain id rather than the
_TO_IO one - I count 21 files (es8316/es8388/es8323/rt5616/nau8822
across the Orange Pi 5 family, ROCK 5A/5B/5B+/5T/5C/ITX, NanoPC-T6,
CM3588, ArmSoM, CoolPi, the EVBs, QuartzPro64, Gameforce Ace and
Firefly) - so all of these ship with broken analog audio if v7.2 goes
final without this fix. Is anything still blocking it from going in
with the next -rc?

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
