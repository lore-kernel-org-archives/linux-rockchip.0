Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3331BC0219D
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Feb 2025 12:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0rSu5Aiuu+EZl4/acErdi3WJ7AN0hJPbTarJudVokMY=; b=C/rzdYDKdL2wVR
	ntLNz9X2mq3R2aiARGNgShy1YN3ubBEkKel89li4Hrp9w5B6kAN4LOMsSM9hKG+cBThCWVCnuXp4v
	itc8Tb/bMUbPXLJwA5o/GfOmZTA5tg3Ipr+QTLtSbBrIoa8y+B62/dKpftuCTzrfjtolU5ZZArXjV
	GTtBfSReQgsb0ittQ+5jIev2FwoCp1QYLo4rsoisjTgfi9BNx4NxhzAzwjh5jEOZGXZaa2ERFhWCZ
	roAjmt09voiKXUwL4XtxFb0jI5VksaHTOZHcDFkIVEDyFAjfxO8uiB1aCz25DELax8KE4PJ5s6gFt
	lqRk8eqUABbkskBLL8LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thTHP-0000000HSUY-1F1m;
	Mon, 10 Feb 2025 12:52:51 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thTFy-0000000HSBO-1Cix
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Feb 2025 12:51:24 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-2fa48404207so3538456a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Feb 2025 04:51:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1739191881; x=1739796681; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+Yb0AWSvzWper++L7lRsz3UWuqSaAyKs/rjQB9+IZrI=;
        b=GGxhMaDxYBRgpetZuyJFahKMqQxIOOM5oVIjIiQq9Cnj5u5QosP4ietzPb4AjjgUCt
         lqeGw7nVaeR1SKq2KuQlMC3NU5HBRYbsKHVFUfRDjBfSF1KbjlPKzWc5sruabQbW72NT
         XsgIHHV4JTrc7maNDMtc0LWFKhfHmBPEgqk9I/Olws8dTkQ9fVeEZ58WlIi/Fw4fF5aK
         aRhBMEYFv9EGwamZjOL2ekUl113nlerybNtXOmikXm/IcgTPkd5cipMhdOEhF7Zyc5t4
         EhNS/c4FdyIxTnifOwVWNYcIRCpMpRyKtwwy5iJulDI3TuHSKF0FgONDckAn39DtYOcL
         socw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739191881; x=1739796681;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Yb0AWSvzWper++L7lRsz3UWuqSaAyKs/rjQB9+IZrI=;
        b=nf5oeCDukqpJOrSh5DpBFaVvzdHki4/atsQl8o91yauSCoFJf1c8/Iap6MxByoUAoW
         J24Fd7fRUjRrR4eG8BhpDt7UQEwh6JuGX2bcsAdjUKU/il8dQAMDoXJlVxprNV5ycMOv
         5zH8h2KibSV+79/wwdngoL1egF8Qv3p+iDO8raOLIuCCRbxfxdjZZ5D5Pw7qCCLSNGil
         nPZHYjL1pFiWdn/9t/r3yi+zjGZWuTDTeOA+pbltTfDaOqfnlncfHKNHg4gmKKKyXRrY
         /wRApkyG70dpYjIa0eH4ccqkkbuYn/2c9E5hMDOTTrd7At745oLlbFhDYMNAO5l8DXpj
         cKkg==
X-Forwarded-Encrypted: i=1; AJvYcCWST0kxi3/EB3MtaT1wbWzq+6T771zMS7wSlqMZDIcVue3Lo8tY6qHzCue9sVHUCjsBmBbrgtX8GFwsXOrGBg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0i/CweI99pBD96ax/2XzkjuOtzuBVZ5i9FxGr2nx7s4KF7h7k
	/aGut1LW+3bXwQeCjfR/bBHd6vaAnw3Ix38/r14rJiy4K7BW1d/6uJHdhkKpXnvhNx4A/YsvL2E
	EBrBgXbSgI6sxaT9pozUeajB751ETLtmKLusbig==
X-Gm-Gg: ASbGncsdGCRPTHqfgeHTSoMCjboDFDZwGEnqkIQaDcjV0BHodUSuXrbq/Y/XSqLnXnU
	7QrJHjCgh86F5anuhZ982Z+P57KybagEI6rxS66GUKwgaq03zQJbMgQwRF3CLIkwse+wefTI=
X-Google-Smtp-Source: AGHT+IH/HUfs/WQDH9q7eIfT/iv1s0BqbEiijgGJB+xtMIiqfoSqIhTiQ5xQmT4IYeIt4YgSchZ2PjkqSmXBwPFV2cU=
X-Received: by 2002:a17:90b:19d8:b0:2f9:9e64:37b1 with SMTP id
 98e67ed59e1d1-2fa243e9f80mr20290354a91.28.1739191880824; Mon, 10 Feb 2025
 04:51:20 -0800 (PST)
MIME-Version: 1.0
References: <20241227132936.168100-1-jagan@edgeble.ai>
In-Reply-To: <20241227132936.168100-1-jagan@edgeble.ai>
From: Jagan Teki <jagan@edgeble.ai>
Date: Mon, 10 Feb 2025 18:21:07 +0530
X-Gm-Features: AWEUYZnHRH8l6chZJLn_I2J6MTRIWUy3X4w0l00WsZj1is2NYfhDUvOTFAqvwXA
Message-ID: <CA+VMnFwHEXWP=d_X0T0E9fHFDCkXHxpvgML6jAHNfh9ikXTZWw@mail.gmail.com>
Subject: Re: [PATCH V2] arm64: dts: rockchip: Enable HDMI1 out for
 Edgeble-6TOPS Modules
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_045122_585073_09B6B7A5 
X-CRM114-Status: UNSURE (   9.13  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,

On Fri, 27 Dec 2024 at 18:59, Jagan Teki <jagan@edgeble.ai> wrote:
>
> Edgeble-6TOPS modules configure HDMI1 for HDMI Out from RK3588.
>
> Enable it on Edgeble-6TOPS IO Board dtsi.
>
> Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v2:
> - Rebase on top of Cristian's series
> https://patchwork.kernel.org/project/linux-rockchip/cover/20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com/
> - Update hdptxphy1

Cristian's seems merged, please queue this as well.

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
