Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CFE8C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jan 2024 16:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ppP9P7WxDLE+4XhXwbTgbJzCBgAwl/24EcJGU36kIGM=; b=CuWAjZFX47zomO
	4r3gcdIFCm9HtgvoIN7jeLbXb4L7R7JRcXap+BDc21XFP40Mo4W1y4mzQpYCdaHw5AaTFvxLSg6Qa
	+ibE8mRhItNrMZOO33QOcgsEvSVXY3Jm4DKR6M/eWB1Y53TqlLXxKuqX1yLw/wsj9kuO+PqftxZF9
	Z08stiAMVg9iqat7xa390Qpoc2jiNhTyw2989zmO9u2b0h93g5kh1JuvmK55HejqkqEhQf+Kjn6Qy
	3YlbOj9JnxvngwE1L7qn+6i+22pc/VjphXnX4celdhmD84nlAgSzEtxEVj3JEwk5A49iiLJKRKxMw
	yw+RGsiLYPV2kS6fxA8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLnM1-00HM3K-13;
	Fri, 05 Jan 2024 16:47:29 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLnLy-00HM2P-2u;
	Fri, 05 Jan 2024 16:47:28 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-55739500b39so605631a12.0;
        Fri, 05 Jan 2024 08:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704473243; x=1705078043; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8GhoWygouKwNF/i+Ar+uHKGYE9ZPPakZhcuyJ3HA+yM=;
        b=XvHCE4NCVK1N90wPXru2fukxzIeHS6XBQ7AxSIjqPGuxJDdNaZ8cLsZzArh5+9wbvJ
         NoYfxSK6o5kdCB2TgZkPEJms3NwGLCvfpgxjfR1R0smJzAUfAyD0ajS6zhvXKdxkAPlu
         0buQKiGbC5Y1XS6JoeIXehCcie2g76XCXeaKtJNGjD+Q1GY9NFkV1W56N3yNbvVEtZ9a
         rVq+yHN81gR2BhoTS7SsgaA5MKvo/RSkblcvKffOyDL71Wz46y2XzkO6kf269wHV1x59
         MkpZWVOUmAsXs2xlBqXNeQjfDlbUte3bqrEj86Qw2a7M0pNyPCu5aOPsT+JIR06nonFg
         6VhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704473243; x=1705078043;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8GhoWygouKwNF/i+Ar+uHKGYE9ZPPakZhcuyJ3HA+yM=;
        b=PoNliAXWiqNFccn9J08Gw6RIe/mYarIPTDhi2EiIWDgs6wwgbfOoK3rZebpagZiCDl
         QHL4+albSYqDVhYV5u1wsyZnEHFyLlLCnzdSzTSLSygLJEzNN1DLloAAwHzpQ/bypcGJ
         ZlTEDnuV4wSAVfa8urxBwuhkoodNJNfLceeBY+WAnfK6tHRjytf0JpO9zuUy/IQMhkrB
         X/xRRkM2Nj1KPvP2w+Q1E3l6cJHF5sqwntIGlEG60Q5fE8/lR/cObxm5BZRecjIaGHj9
         TAc+Oar6L4j+ALq6QBiSdamxHKEUbX2QWsVIY6oJDrop/an3Dzwi98KqIjPUWGHDB2U+
         toYQ==
X-Gm-Message-State: AOJu0YycfnyitV8G3I7Vi/8n7g+pvHBJg8KpbFcGe6IGyJuAIw6MSZCx
	6xKFKf3IzP+qkenJpJf7gQ==
X-Google-Smtp-Source: AGHT+IEmqVeHlv3hQC7rMHa0U1jc6f1uX/xyuXiZ6rLuFGn1h9XpROfBTFyH9I651Ze1bS12LJUPyw==
X-Received: by 2002:a17:906:2853:b0:a27:a258:f340 with SMTP id s19-20020a170906285300b00a27a258f340mr1240311ejc.65.1704473243418;
        Fri, 05 Jan 2024 08:47:23 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:890b:36c3:934f:6f56? ([2a02:810b:f40:4300:890b:36c3:934f:6f56])
        by smtp.gmail.com with ESMTPSA id r11-20020a1709062ccb00b00a26aa845084sm1064504ejr.17.2024.01.05.08.47.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jan 2024 08:47:23 -0800 (PST)
Message-ID: <3e7aa9f2-6e37-44c3-9361-5fa7c4ef203d@gmail.com>
Date: Fri, 5 Jan 2024 17:47:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v4 00/29] Add HDMI support for RK3128
Content-Language: en-US, de-DE
To: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 David Airlie <airlied@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Sandy Huang <hjc@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>
References: <20231222174220.55249-1-knaerzche@gmail.com>
 <170435598418.3166964.9367277671989164237.b4-ty@sntech.de>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <170435598418.3166964.9367277671989164237.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_084726_940333_B4344587 
X-CRM114-Status: GOOD (  15.41  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,


Am 04.01.24 um 09:14 schrieb Heiko Stuebner:
> On Fri, 22 Dec 2023 18:41:51 +0100, Alex Bee wrote:
>> This is version 4 of my series that aims to add support for the display
>> controller (VOP) and the HDMI controller block of RK3128 (which is very
>> similar to the one found in RK3036). The original intention of this series
>> was to add support for this slightly different integration but is by now,
>> driven by maintainer's feedback, exploded to be a rework of inno-hdmi
>> driver in large parts. It is, however, a change for the better.
>>
>> [...]
> Applied, thanks!
>
> [23/29] drm/rockchip: inno_hdmi: Add variant support
>          commit: 5f2e93e6719701a91307090f8f7696fd6b3bffdf
> [24/29] drm/rockchip: inno_hdmi: Add RK3128 support
>          commit: aa54f334c291effe321aa4b9ac0e67a895fd7b58
> [25/29] drm/rockchip: inno_hdmi: Add basic mode validation
>          commit: 701029621d4141d0c9f8b81a88a37b95ec84ce65
> [26/29] drm/rockchip: inno_hdmi: Drop custom fill_modes hook
>          commit: 50a3c772bd927dd409c484832ddd9f6bf00b7389
>
>
> For reference, Rob has applied the rk3128 compatible in
> https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?id=21960bda59852ca961fcd27fba9f92750caccd06
thanks for keeping track on this.

Is there any reason the DT paches aren't merged yet? From what I can see
they should be fine to be merged in your v6.8-armsoc/dts32 branch which is
6.7-rc1 based. There was only a txt-binding at this point and it's very
likely that both the rockchip,inno-hdmi.yaml-conversion and the rk3128
additon will both land in 6.8 (they are both in linux-next). Linus' 6.8
merge-window will open earliest next week.
I'm really not pressuring here and I'm fine if they land in 6.9 - it's just
for my understanding for further submissions.

Alex

>
> Best regards,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
