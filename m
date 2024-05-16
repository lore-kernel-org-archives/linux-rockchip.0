Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05A11C25B74
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 May 2024 12:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GMx/8RTBmNTsrz28pyohvVh/Z9rLbTDB5vTaq7djAc=; b=FMb7FZuTAWv62K
	/LBXWTkHQObhUczpv6/eVIaQ2i3aA+YlqtbcZKlIg56vJ/WVfIvPDLhwCgVDKhU3U4KJcQrriekBj
	HbyJmw0GcqncKVzJAnxeYw4OlYpb+dBdnxo5t3FN7DSYAZZYtn/e+NhpTGx5+8MzX6sDlNGETIZvS
	aV4d0S5RYbt6TshfyJ/sBmM63xYAOAsTy4XP07wZ36vim4YVsTeZl+RliW3ibAY/BppOqvvIAxvYS
	7myOHV+srzygRC9+vkwHyZDspCPf2A2ldPIUHZDPnaGoYl0pDmABmlykPwEWPo3Tia7uQrgPMs08u
	1Qt6+cRzxqy5BxUSBASQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Zsw-00000004iAR-3kxe;
	Thu, 16 May 2024 12:06:58 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Zss-00000004i82-2DqK;
	Thu, 16 May 2024 12:06:56 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2e0a34b2899so9458411fa.3;
        Thu, 16 May 2024 05:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715861209; x=1716466009; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=d/+iOXfE5JhcsldrJn15mneL9tsGrRwJenKZ7TfkMY0=;
        b=bvSeOHmmrDwSVIh4w0PR2lEcSZgrz8hZ9zjEhQ7bZtAZ3E0Nyr5ds6j0JizrccRUtO
         clo3LMV030rANDTSrcyoNLVQUQjYi9C85pnvXIvUkEySnC0q1qdnoOhIzv2QIKf3xV0w
         zDL8UA1F6g8pSahbcX2jiYfemOkGFrcY4rkKIRxOwirZ4HVDlRFveuyWRZYrtYImDILx
         KROaArFpOBuwQO+ZdD5Dpq1SkLGV+yzu7eCPtHU44GL1QjcTcp7BtYjV5J2Cz5iIl8Gd
         +R4xkY1Fru88Eq3XLG4tHxoXlLR9GwdgaxV8ml2y2KZlz2Ll3Q4nhEkdEwZJKQGw3HW+
         D5Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715861209; x=1716466009;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d/+iOXfE5JhcsldrJn15mneL9tsGrRwJenKZ7TfkMY0=;
        b=q0vmsNAKjjDIOzLJ0/pa/aXrLAusb/+Ty29sNDV3Eo6HMsJE7iwgJiHdlV1YXiEy7j
         8vHlolzwwB9QxOC06wjRYqrO44bvPiqQDPg2mbDJIu8XIhURkxJp5U+YGfw3ZYayzK3Y
         n5tN24mTorGduM8IxGIYrKqd+QYMJCYEAceMcgWStaLN/DHfN0O6nRD2VEF4+7+y4zTs
         gzs3TddVYO0ezBnJfZSM/aAWjX1JS7jNXLj8MY9MzauDun0Llm7xGkZJjIL8CtgO16F5
         MklK3DjPDK66GhWsWoeoW0kU0HvJ/AI82rlEoLq9hnuKDZd1UBhl4368zclSblMtfhEK
         nOCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNOHntfCmuWEO0FOms3dGYofpi2P6Qd0ECQkIA4tegzuJVr4iTb4qRtpfjCip0siI5Kzb/wltFvTNjvOri3SJ8bcW3Ifbp4ecNS+wxN3wpGuT2E8wU++1jXJJKm04AMD3pVW9voF0aVE3Xi9pOmd1V6IpuA6pQ+wk=
X-Gm-Message-State: AOJu0YxVACq0fbnzC6FysHwIZqSa+URy132S5Ly+/LDLO32VHKVov2Np
	mSzMTBbLAB9P7OZ1Bp9BxK4lYnbrw7Bgdg0zJibEz/qf6KyXRWSi
X-Google-Smtp-Source: AGHT+IGRXdu4e46HW+sJ65tDSzWCXInDmL+maJuMRLPwnyxExOFx8EFCPUqneDMLyHGHRnj5Mj8LLA==
X-Received: by 2002:a05:651c:546:b0:2df:1e3e:3280 with SMTP id 38308e7fff4ca-2e51ff5da7dmr204135241fa.28.1715861208838;
        Thu, 16 May 2024 05:06:48 -0700 (PDT)
Received: from [192.168.0.107] ([91.90.219.38])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e4d15155fdsm24154071fa.83.2024.05.16.05.06.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 May 2024 05:06:48 -0700 (PDT)
Message-ID: <81aa0e4e-a3c7-41d1-8cd2-4d060730b37a@gmail.com>
Date: Thu, 16 May 2024 17:06:46 +0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Dmitry Yashin <dmt.yashin@gmail.com>
Subject: Re: [PATCH 3/3] pinctrl: rockchip: add rk3308b SoC support
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Jianqun Xu <jay.xu@rock-chips.com>, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dmitry Yashin <dmt.yashin@gmail.com>
References: <20240515121634.23945-1-dmt.yashin@gmail.com>
 <20240515121634.23945-4-dmt.yashin@gmail.com> <20240515182954.03c4a475@booty>
Content-Language: en-US
In-Reply-To: <20240515182954.03c4a475@booty>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_050654_607900_1991EA77 
X-CRM114-Status: GOOD (  12.06  )
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

Hi Luca,

On 15.05.24 21:29, Luca Ceresoli wrote:
> I'm skeptical about this being bound to a new DT compatible. As far as I
> know the RK3308 and RK3308B are mostly equivalent, so it looks as the
> pinctrl implementation could be detected at runtime. This would let
> products to be built with either chip version and work on any without
> any DT change.


Thanks for your feedback.

Indeed, these SoC's have a lot in common, but as I can see the rk3308b
has more blocks, like extra PWM's (rk3308 datasheet 1.5 [0] shows only
1x PWM 4ch, when rk3308b and rk3308b-s have 3x PWM 4ch), 1-wire and
CAN controller (mentioned in the TRM, but dropped from rk3308b
datasheet for some reason).

So, in my view, it really makes sense to add rk3308b.dtsi, where extra
PWM's, pinctrl compatible and its pin functions can be moved. And if
its not worth it, then I will try to adapt the entire series to runtime
config based on cpuid like you suggested.

Additional thoughts on this would be appreciated.

[0] https://rockchip.fr/RK3308%20datasheet%20V1.5.pdf

-- 
Thanks,
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
