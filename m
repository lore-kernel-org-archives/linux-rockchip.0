Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E37F9C3DA49
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Jul 2024 06:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGo7rGyOCXhjwDPAVeBT8kho2KntKZH4WAJJlii+Kcg=; b=iFH/apMKrqPMzi
	UjLyZ0aVVkes1hAdOKCkNqADRX6d7+S/zSWsPE1tdxR4v2eM2g0QhT0qHlOuGPP+jgYBJSGsJuwfK
	FMMNNZ/VxZniP2yZ7rIU7Nit4vnCxXT5IK6qBpnZnDgQbs2KW3TFY5ow1sEuyXJxH+oNnG24FJAEq
	Am1V0agwNqi5nBBm4y/3uCkTquhECSH7tqZmR8yNAUYBmAclrNrKivRJJvNRDwmD7vB/PhAZnZIR0
	/zqdMNw9nLSLEkZ8iRlcvIxtDN2A27oyJUSN9qEYp0RRz2kPliLPJgMVWg3KePbGb5Iy9SI/QpDgG
	o6+VV2ZjuKiHCguiVdCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXx1h-00000007zcQ-13be;
	Sun, 28 Jul 2024 06:05:01 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXx1G-00000007zY8-20SD;
	Sun, 28 Jul 2024 06:04:36 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-5d5bb03fe42so1367367eaf.3;
        Sat, 27 Jul 2024 23:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722146672; x=1722751472; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qozs986pYe80DxeGUOBNFbNUmy45JcIGCK1M5NpYoy8=;
        b=F3TJLl14Fjg675/6B7Bvbz6IXIQAkBYk3Gn7C2T1ZCcBct1eQIYWI+6egU/MdKdgu0
         6em1QXhfcAh39L8I3o8PvKBdV7n2lrKGLaSov2qHDQF48gLJY4fW86bxZoP6Psk9F1QK
         kIHseF+3tLCOiF+VGvBNy6WNexUG87DQekTiKPoh7FcLLnSq95Ydl+DDh7KgxuJmnN/R
         waFdr5PhjEhn232OCwgyOkEJCuRjBgAPwr+WWgvjHUAvHSRLLFK/Nt0+8CGoKOLDJ6s7
         qkE86TOM/wRdfx1ZJbdsRYaQzSLhqNwTVXS85YrwLXE+S/m9urRv3VnAWS4il2nDSHeK
         Z9SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722146672; x=1722751472;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qozs986pYe80DxeGUOBNFbNUmy45JcIGCK1M5NpYoy8=;
        b=CBMMfYuT+NvIR34IGiiPUGeYYPgODX6aRqmQRpwQdrxQPcIBToOLLStZQvaZDYEEL4
         Jv2mnasqKQeEe6FNiZmzG1FRwO8241erCgNhr/GDl8gdMIfEzw7ZEHJeeLMzje6ieMB4
         V52RXP32OK3tSON3fp+sysipdVAR1Y/ZsEej/N15hohIJiN7A/grzH6L3uQyKariF1mH
         r3zGQGBd30zE+JRYkHnSVTD45fMYuO/iTkyUDItzDyKKyAUqjLzMNXEQ0wf8xZbbybJk
         WLpl0HmIAjrWn/UO81rMvsYfw6Vry1qIMPoh4Z4D3FxJApsYM85xBqgwxvc1GYPeG75t
         NxiA==
X-Forwarded-Encrypted: i=1; AJvYcCXNx+6T+O85mrbyFK89S8sLfeEP8YhQWQfHXVoJiXvt6b3FRwshCjqWh4cLQnGvVVdk7XleBeMcZ8EQ8DIddc0mNzhUxaSfw7SqPR1bYRtqmJtQSyPrDVq3UfpCdahq1znPyRkWTQWC3D/1BPcwFIMMoqze49+0hCo=
X-Gm-Message-State: AOJu0YyVoykwWs3Jkjs/tO+jGtr6Lot48N4KMvMLMWfrLFN0rpOyH6pZ
	MezfwNRDBEgoonTtttRo1Q8Bs7kRVWXoNPjThNVNgKkz7FvrNG/LeCFe8PDvxxhgHR0uz2n30d/
	08u2YJdK5uTzNWhxpE5HudW4fi8/cvA==
X-Google-Smtp-Source: AGHT+IFUx0cj5stss3upvImOUQ3NbPuipyGA5McUfIrrMjRS6EZCNe5+Sj1wmVYTsz8K0LwOQKI88RKQsJ32OvkTHcY=
X-Received: by 2002:a05:6820:2229:b0:5ce:6671:de2f with SMTP id
 006d021491bc7-5d5d0d8d1bbmr4523858eaf.2.1722146672567; Sat, 27 Jul 2024
 23:04:32 -0700 (PDT)
MIME-Version: 1.0
References: <20240726110050.3664-1-linux.amoon@gmail.com> <af63314cbac4cae4ffc84606024f9795@manjaro.org>
In-Reply-To: <af63314cbac4cae4ffc84606024f9795@manjaro.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sun, 28 Jul 2024 11:34:17 +0530
Message-ID: <CANAwSgRUeHm+LrCdgwjENB_wEPs9ftCm75Ezap=hUE5kCWRCnQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] arm64: dts: rockchip: Add missing pinctrl for
 PCIe30x4 node
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240727_230434_539595_7B99E4D2 
X-CRM114-Status: GOOD (  20.54  )
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

Hi Dragan,

On Sat, 27 Jul 2024 at 21:23, Dragan Simic <dsimic@manjaro.org> wrote:
>
> Hello Anand,
>
> On 2024-07-26 13:00, Anand Moon wrote:
> > Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
> > signals. Each component of PCIe communication have the following
> > control
> > signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to
> > generate
> > high-speed signals and communicate with other PCIe devices.
> > Used by root complex to endpoint depending on the power state.
> >
> > PERST is referred to as a fundamental reset. PERST should be held low
> > until all the power rails in the system and the reference clock are
> > stable.
> > A transition from low to high in this signal usually indicates the
> > beginning of link initialization.
> >
> > WAKE signal is an active-low signal that is used to return the PCIe
> > interface to an active state when in a low-power state.
> >
> > CLKREQ signal is also an active-low signal and is used to request the
> > reference clock.
> >
> > Rename node from 'pcie3' to 'pcie30x4' to align with schematic
> > nomenclature.
>
> I wonder why the three patches in this series cannot be squashed into
> a single patch, because they target the same thing for the same board
> dts file?  I don't think that having these three separate patches may
> help with possible regression tracking in the future, for example.
>

Ok, I will merge this in a single patch.

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
