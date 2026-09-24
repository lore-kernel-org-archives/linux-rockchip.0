Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7FBCC98310
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 07:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sv2R7nVXbD+VIsfAX1ummfA1LPAXf7jcxwZ68N4isjk=; b=jABpdXUIAcuQ0p
	EFHzPybXOtz3U44/BvWnc6m+0d4nPBRwV6iGRtruael7vW9+8jKNhjQ7E3qzC8X5EKkeCmc2Rpicm
	l201tLSHeUVSTLDfYj6LCNZGJB6yyP9hvx8b4PqEtdk/uKXx12WXsDxnjy7n8RMtjY7t5jhzxEb8Q
	k+D2VPNu5XgN4Wvvsw8ZNG6PT9UuCMh3ObZp6kAH8Vx6VN4mdvhUnrFJosqLO+E/0tvNm5VFb+KhK
	Eu5zSDZ/pMaj+LS1Hs9DwvKUh3bcLmn7Eh3f7YJKMQFk/qJQ+B7xGn8XTzaxoseP+NOoCCtrvfNAf
	TTljB+jEf2FrF98n5Gkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9e0O-0000000AIwb-0QyL;
	Thu, 24 Sep 2026 07:36:32 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9e0K-0000000AIvP-4AsL
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 07:36:30 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4843178b1c8so216377f8f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 00:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790235387; x=1790840187; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pQGSUWP+wqeItZ/eyVbalLMbvY0OTH5QJikLeqmKP+Y=;
        b=s5yp9WHMbFp/bIFmeTKzqfgUyXN7+/yplotK42P+uTG/jXoBDf5FuRlx1zhAyeQjPC
         d8K8vleLML6SnAujQaYRLAWMjQdzqEI2qNy4ePMVR2Ffbk0Fr+jkPfAqKGwBxTwm8fJL
         FigGpkC3Qt0upLNjqcbo+8H7JqGo7L8SQIkgwek83ZF73CBTlaswGDXhKBJ4ALFG3tVl
         LQK4cp9HvScISgH6g80UXrKO0FtZQFOPGTLAtV954XjpV79/dKyaxvaIsd6oPfWQXmZh
         Fnb1U6WMvFwKGpYQK7TiOdvHMf1kOf/23H3QjHQ5LSymbX+fkyIr3RjNvV3WdPwWMaU4
         SNVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790235387; x=1790840187;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=pQGSUWP+wqeItZ/eyVbalLMbvY0OTH5QJikLeqmKP+Y=;
        b=x29vA5TfoR5e2RtRlAU1DF1jFHOz1nrQP1IajZPHiGa4/+PCqF61msQhl1riFOtvXg
         i35Z3szcr0MXC7MEObjuedYHQUFpd0SHN7+uF2jSaVWsGze7D4KCd0GkA0ogqXlGpXnL
         fH0MVxtTBFbkdw3LhHB520hSf2BO3a/ueR+mSJAVjBETpX1s5TTH2aM4BSuUGpGxiq7r
         RpnrOFUEUXPtmQrRH5mDd9LqhBIXGDPaSvVTV7JfaqVpAMLAQCGYNvzlnGlSbPSKxgq1
         SEx2ZRquHxvV42gScDbJmEwZOKQSYHFTeDezzmQz4kkNIGuFzyBAPEWxgThmcW2UD8gB
         hNWQ==
X-Forwarded-Encrypted: i=1; AKwUvBwz5J5zmcMT5MIZ3MusaGncSMmoP+JiKWJg1nlp6SC9cJP1zZPHSCkZ+z0T11Uu27mbzJhBFt+gn5sCMyV4yg==@lists.infradead.org
X-Gm-Message-State: AFuF++mtf9UXdNLIy+WZDrneG2Ewm3fQyTEJ7iz9+aCpRSFP/AGey9ED
	awRs9Znry+yZiQd/F8yu+ynpI+YTzHi4wN6mn+2EvuB+usxF1i0tbjvc6xk/gQlL
X-Gm-Gg: AYBFou0Ozg52vMPumaDQW5Unhm3euxvAQKXVs7/j03vt/z3c/8oLlNIke1U99t5DdrH
	dGAMGu8l5nVSfm+oVfgVQF1yI9o/9hHa5+sYmktiynPnFYsR0p3xSVERis+2tfyZzc8F60BcH5C
	+W3BKJrL4x4hqYhzaZOH4guwD4z8QljoGWnN5uwyQA3qkVFuf0fM5GQ8vvX5YjjP5DRSRHeTwP/
	+cCd8EZFasQ3qBbQLdrB7zrOwecko97S0vo5Ug+KQolbrO/zXn+nuiHKIhxhyxANwHsCLhw1QkD
	/q1QQ1rFjA1ci/hTw8tfwfIHyYtOUAHqSgz92/JMND6QYycKyQsmDjAqy0kuHNllFQeN1itGXQe
	QXw269IJvlwrPmm4+G4xPp7Doyp5PikM06BRHdvVM2TVdBFY6m2vJffzfYLOkKpRqqYWhllPMs3
	yhtGuzFKSWzUMtDBgrMMLSTjaaxuPH1WOa29R7eyq5u3j98twvKPLxNsehc2A/76mCCjetiMQ4/
	XoUV2ijxWAkjLFuNMl+JZEaLzekcrDvm2UDlf+B0DIs1dX16dFiuUsFaJkChVjfHeNUsryPiJ+H
	JBw=
X-Received: by 2002:a05:6000:25ee:b0:487:342:d145 with SMTP id ffacd0b85a97d-488716c8044mr2252224f8f.2.1790235386830;
        Thu, 24 Sep 2026 00:36:26 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B90C500C183EA9C12FF3B42.dsl.pool.telekom.hu. [2001:4c4e:1b90:c500:c183:ea9c:12ff:3b42])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4886877970fsm12839361f8f.24.2026.09.24.00.36.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2026 00:36:26 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Robert Foss <rfoss@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	=?UTF-8?q?H=C3=BCseyin=20BIYIK?= <boogiepop@gmx.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 00/11] accel/rocket: DVFS for the RK3588 NPU
Date: Thu, 24 Sep 2026 09:36:06 +0200
Message-ID: <20260924073606.45849-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <CAPsqS2SC1GvzALUdf2xsHZDpNjDO7BXrmzk19OYTF6YopQc8iw@mail.gmail.com>
References: <20260922080114.44662-1-royalnet026@gmail.com> <9cc5365470490b4b66364e60fb614ccda7e86c6f.camel@ndufresne.ca> <CAPsqS2SC1GvzALUdf2xsHZDpNjDO7BXrmzk19OYTF6YopQc8iw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_003629_052305_EB4877E5 
X-CRM114-Status: GOOD (  10.99  )
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

On Thu, Sep 24, 2026 at 07:37:04AM +0200, Tomeu Vizoso wrote:
> I will go a bit further and recommend you to not let the LLM write any
> text at all that is to be consumed by humans. If you don't feel
> confident in your English, you can ask it to correct and improve your
> text. Or write it in your mother language and ask it to translate.

Thank you, Tomeu and Nicolas.

Yes, it is true that reading and writing in English is hard for me
(speaking is a little better than reading and writing). I understood
your message, and thank you for the advice. I have already applied
it to this reply: I wrote it in my mother language, and an LLM
translated it into English and corrected it.

In future replies I will always say when an LLM or Google has
translated my text and corrected my grammar and spelling mistakes.

Thank you, and kind regards,
Igor Paunovic

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
