Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88EA4C54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 19:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltC0P2iMOAyKmAzup1/HyfhccNy2cipyQ7Yhh3eXrlg=; b=fVVo99MdlgM2Jt
	n4bKjoAPS70aSw4ARi63AgWnqMllGyQv96FMb/kiKnUJr7VYdC0AoEniP9cYei7PAgR2XRedjnNqE
	bZkAzj8EM5tK0RyLn6ijrzSwKZGof5c7riBpaypMhKxAmClC3nAI9CRoE2m9KK72pssMrW5MYHIK+
	Rl/8Ypb5AqX16gurNhC2M65iVo8Zx9o0P6sZLZbcz1x5Tlam8AANRmygGh31M0R8RGPUbttkODqee
	+IWhMG5O57NwywgINwheT3q0Wpcft9/XnQtXltJcgqz+utbh9gL3Hf+TM/R+Jlknq/9F3nJB8JNVU
	ctgZ0AZPj9vRpaCO8R0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKCA-008GLX-5s; Tue, 10 Jan 2023 19:22:02 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKC7-008GIk-G9
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 19:22:00 +0000
Received: by mail-wm1-x336.google.com with SMTP id ja17so9548738wmb.3
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 11:21:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SMPBm7XtkGVF6xVWVkDxzofUywhGoCk80IYnR0yXaIs=;
        b=yh6/x9xf5trCOeKXwe9hG1tDLZUWt5S5xlZSNpZQyu1maJ1XYrDUq/X81N2xFHks2N
         MQfSfkBLLUXlnfeg//QhFeIZKvhPVXJzJ0/YGsISxI8KOqHN5RlNAZgI2lNVAxp+WsCu
         dxtdxQM1lCalwIyRqW4TwKDhVGhKeK0avTK00dpeZsuFC37gdLlFs9/bQtH4tJDmmSGN
         Ili1eUnWF6io/PfdwqvV5mWf/FFYUBJToC3cAGBeGT61h6G6vsbH8aaiqXL8E2f8jMid
         pe7T2oh9ugRrPJHBZ1Yah2O8Qo1cPKLs+9NOJgDaJYn517pFbUIdtFUAmORjl22/cxCF
         kYGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SMPBm7XtkGVF6xVWVkDxzofUywhGoCk80IYnR0yXaIs=;
        b=bT92wKycJRZLRi90PxMh0ELJMiZ6Lra0OyheA2JDHD3Y4r/FLsX/syfhTr2PAvQWp2
         JvRWbcXshewxjnA3JGG+ihW6z50SaHkg+s00hHUt6UwvQtMn8rvhb5BcRr8Bz3D2B1Dd
         tmcKon7Q8SEBwuL6D4oM7zXDG1RDKLqySuCX2wyBNLon3d43k6XWEl+GyxV5QEg8PmXG
         yB+LJjpTSyQAvSUgv2gCS/4DDlNHG+Xp+cmsk7gQB+h7Hn7qi9rGids8EV+IUEoCB6j8
         R/4roQf+FGyYzu9Iet2rVWm3ReLjqgKsN5NVGUgFxAHBl30BMUfjVjr/gTA8SGHLgzCZ
         JKww==
X-Gm-Message-State: AFqh2krUEmwE2NUGNHDYrAjZ6D4JKYL6D7bIaj1N4abEvY/UjEmfzHVL
	GxxZQJFPBk+ZYv/C24C5w1h/sw==
X-Google-Smtp-Source: AMrXdXviZUCkRjV2mpiDuqBAO+kHieMZ8dMRos9EVEF5bSwzCgyCceHXL2XMDrXDfDKeNsK8wtLalw==
X-Received: by 2002:a05:600c:c0d:b0:3d9:7667:c0e4 with SMTP id fm13-20020a05600c0c0d00b003d97667c0e4mr41777322wmb.31.1673378515542;
        Tue, 10 Jan 2023 11:21:55 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bh13-20020a05600c3d0d00b003d358beab9dsm15702372wmb.47.2023.01.10.11.21.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 11:21:54 -0800 (PST)
Message-ID: <615a84c8-0b5a-8f3f-517b-af1feea6d005@linaro.org>
Date: Tue, 10 Jan 2023 20:21:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v1 1/3] arm64: dts: rockchip: Update sdhci alias for
 rock-5a
Content-Language: en-US
To: Christopher Obbard <chris.obbard@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230110155252.189300-1-chris.obbard@collabora.com>
 <20230110155252.189300-2-chris.obbard@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230110155252.189300-2-chris.obbard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_112159_576125_81BEF8F0 
X-CRM114-Status: UNSURE (   9.28  )
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

On 10/01/2023 16:52, Christopher Obbard wrote:
> In the previous version, the sdhci alias was set
> to mmc1: an artifact leftover from the port from
> vendor kernel. Update the alias to mmc0 to match

Please wrap
commit
message
according
to
Linux
coding style / submission process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
