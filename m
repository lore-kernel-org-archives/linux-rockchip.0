Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B108FC47DDB
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 09:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AuZpbnSFrpxQgk60DnNynqhIYr9qdxedkfZC3NipW9g=; b=DNeBI7OflxND11
	D1ou5EsgNVdkksg4gO8LtT7w6DmdrWZ7AnEAWj+T37H16aLasU3J2K4YqlGLi4gQD2MbIZY1tZ9Cf
	TIe3ZhXXgVNjSlz/czAkzcC/wo1j974N6ODwsAntQSq0MX5wGbPyKXDSpmBlVnlrZ5pndwiUxuKyE
	XeWRmDuEMTXUFmU7vWxCWUmI5yGwYvTwUULDfcrzeqVlPSkGBTu+r8PYowKOed8U3AUeGxuOsOrcr
	4gAlJkQ8rPbH+hDZORldJB0dA0VoAHG6oE/MjD1PaXExpf6+oe0IpL/tiwIO0MRKDX/mUcq51lGdw
	Sv329GpSOyo3DvHtaiGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTfIP-00000007IkY-0nDf;
	Sat, 27 Jan 2024 09:48:17 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTfIM-00000007Ik5-35hw;
	Sat, 27 Jan 2024 09:48:15 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40ee418e7edso17557865e9.2;
        Sat, 27 Jan 2024 01:48:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706348892; x=1706953692; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=K1/0KcZ7chpIg7ZK67GGgrTgsakAyIEydKof3WPwPz4=;
        b=OxC4YxNiRRNUB+uIZqd0i809+TIsFZVqLcv1qaxcJsDWht3uNBZ/3srIWVdt5RjS9S
         4hX/RpyMwXPY184NXsIaIAVTYNEso2oCGhob/KCshVsGSx3hHljVmzX7bijgz7mtFnJ5
         7PpVcAfJVvHGXN9vMnB2q+D+QX+rvvuBAjDjey2141vunk58LtygUn5rDaFzjqMhGw39
         SIA5+GJkR3SBWRIUPzsM52cUIkTYWTEvd/jPPHrJfksIgiKpApC+34rh1txrPt9GFBKj
         XSVDPD7sx71aP/kNF8m9eF0apuDRpwbv0ug3RPJpq+9w+STV5TEB91B1zo2EFwJSyiiy
         wVBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706348892; x=1706953692;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K1/0KcZ7chpIg7ZK67GGgrTgsakAyIEydKof3WPwPz4=;
        b=h1PtxE/YS016S49LdsyVAc8TuAm3KdcZFa5DWyw3SYxjLuSdvFOBrC3PZ9YUJKdOmc
         evPd7x7LdKzLJJCEX3hZGZNKK5DvmME/Too8n6CP8LhpysAUFOzVewe0I06GEECKGF8v
         D1lGSBbTLfM/sjKvaW1ThVJzQhC2/JAc7M/M01JHi2KDH6NPDpcWHzZC4SYlGVstQK0Q
         SvuOemTDvQo++U3UPwwB4/yVqAAF7e+wh+omX7sXO1rhRQtWTpzts2Zrs9vAYdM7eTvN
         uisq7+/V9fY170kAo6O+4qyvx3OINE38G9dxwlIO1bhTIH+k0B21MSx6bNLtVSEFiiAr
         Xb7A==
X-Gm-Message-State: AOJu0YxvF+TZVZL8sjlrE2+dyNvq1KhUv8JexD425hnz9sw53JhrsCWF
	9ixTEI7OmRi6KD0AP077WTr5TeZS0nnMBuaVB885d7ry7ze7C3Sj
X-Google-Smtp-Source: AGHT+IGn/64q9Da4qhAUIbiYIXYmy+UOZee6/cIS9YywQm0IGIQe0SJY7U+xFJgA77ud3L/I5i7ORA==
X-Received: by 2002:adf:ecc5:0:b0:33a:e4ba:16f5 with SMTP id s5-20020adfecc5000000b0033ae4ba16f5mr429857wro.3.1706348891904;
        Sat, 27 Jan 2024 01:48:11 -0800 (PST)
Received: from [192.168.0.5] (cm-83-97-153-254.telecable.es. [83.97.153.254])
        by smtp.gmail.com with ESMTPSA id p13-20020a05600c468d00b0040eaebc4e8fsm8120643wmo.1.2024.01.27.01.48.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 01:48:11 -0800 (PST)
Message-ID: <ef65935fac5c09c9eccb89604fc8af504c886f5d.camel@gmail.com>
Subject: Re: [PATCH 3/3] spi: spi-rockchip: Fix unused chip select line when
 using gpio cs
From: Luis de Arquer <ldearquer@gmail.com>
To: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org,  Robin Murphy <robin.murphy@arm.com>,
 luis.dearquer@inertim.com
Date: Sat, 27 Jan 2024 10:48:00 +0100
In-Reply-To: <fc9519de1d278c3f0f0ba8a9640b0499ae2bedca.camel@gmail.com>
References: <fc9519de1d278c3f0f0ba8a9640b0499ae2bedca.camel@gmail.com>
User-Agent: Evolution 3.44.4-0ubuntu2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_014814_794942_65C89A46 
X-CRM114-Status: UNSURE (   6.99  )
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

On Fri, 2024-01-26 at 20:47 +0100, Luis de Arquer wrote:
> This change allows the DT to use native c1 for a device while leaving
> native cs0 reserved for allowing gpio cs operation
> 
Actually, I think this comment is the other way around -reserve cs1 and use cs0 for device.
Before, it was using cs0 for gpio operation always.

> 
> -			ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER, 1);
> +			ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER, ctlr->unused_native_cs);

s/ctlr->unused_native_cs/BIT(ctlr->unused_native_cs)/

I mixed up cs numbers and bitmask, sorry.
I'll fix for v2

Luis

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
