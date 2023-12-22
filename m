Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DA98C46CD2
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 22:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oyQI+5lejCIVEp/ngnNaidzKi0Osy43FfuKG1Cu2HbI=; b=p7LGE6gfBC2PdG
	MJbFWskW2Yb80ArB/RZkKDVwEfwNnzdoe4FWog2vT5aBVH7P7btadly0BhUK74cVp3OKv1RJI4nPk
	H3bmig4iidGQUCRuLXCywjnkCd2xipQNJajZ6JIsIlu00e1YgY/MgQ5s0FcdUxEO7rjjij3Qlbd3U
	Bf3dnDicAimH6CWGN/5HQN+nF1LO2IMDG0cgx3LFuqKGwnWeWW83y4sQxauY2TGk8L38BCeUBBQWs
	yaBCmDrY849K7rFMYMcbhBN8HE2fl6CM0vc2+FemlDCSWmA0E5rcDj+KoMiY1XLMoP3Ts1r0/B/dc
	RRng4OR5EPElEPUsIVjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGo2n-006vzP-0v;
	Fri, 22 Dec 2023 22:31:01 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGo2j-006vxG-1s
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Dec 2023 22:31:00 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6dbbde63b73so1022305a34.3
        for <linux-rockchip@lists.infradead.org>; Fri, 22 Dec 2023 14:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703284254; x=1703889054; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WwejgOu3CLIEy7WBg6DtMDhgjRDGncrbITb/o+9tVKM=;
        b=kfYrK6NH9AnhmDWYl4Eq32bXqvCDSlFsu2sfEuppvRjkEVTIdiIbs7ypvln13GtDeo
         C+xZ5T5GLSpWLtJLsf/V57E6RmwuJTZpSVy3RYyySrsWrn/QKMAL62zi1Llj1RF7U9R7
         ckJ6Ao9yi9xKHvIphrjf45q34Z9E9GnWVf6cM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703284254; x=1703889054;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WwejgOu3CLIEy7WBg6DtMDhgjRDGncrbITb/o+9tVKM=;
        b=oHAAWLq5XJHDfCVXrTTUs9ycqo2Zu5TdEVDJa30/LZvAqcyCePVm0LD1RuTg9RBmsz
         UHinig4w8LJ2VQUt1PuUaskzEB+lvRKPdn9ZGzbSJnATWstjJRT1cMZogJPCoC8yVVrv
         miPeO7/VBeF8tincHENkeH5VoBxulAT8jx2rM5lRTy0rnLU2WxgEn4B0ayzryPyMWNiO
         /3Izj8yOziRgO+qbDbYY8dBlhU0M6MGUonO3svNi7mkyrJcRb7UQyUTel2Ea/9L5owOb
         3iY9giorYexrlHW/QAvwHm6E8+vkHP3rMa0xNw6U99Nlptbb942Kp91lKHrYgDwG1VbP
         Fstw==
X-Gm-Message-State: AOJu0YzsbVkhnlB8OwJK06pq86MeS+6Vri1IPetV6onLHsrlqoOi251L
	xOWIl66wHFJfDfveUjz4viNYjf7dSubVuwMUsp/AvutwN9GFMWi20Y7p4o/LIR6Q
X-Google-Smtp-Source: AGHT+IER1bh8jMPP1/3cXJs8YlZWz0DMEgd5cLDf4OrRRbTGp5gF9dbStw6xbzqvzSRoXTPBelayfBgYtrmw0We3VHY=
X-Received: by 2002:a05:6830:97:b0:6db:c040:b5e9 with SMTP id
 a23-20020a056830009700b006dbc040b5e9mr1589627oto.51.1703284254400; Fri, 22
 Dec 2023 14:30:54 -0800 (PST)
MIME-Version: 1.0
References: <20231220235459.2965548-1-markhas@chromium.org> <ZYRAuY1LGdD8_u5K@smile.fi.intel.com>
In-Reply-To: <ZYRAuY1LGdD8_u5K@smile.fi.intel.com>
From: Mark Hasemeyer <markhas@chromium.org>
Date: Fri, 22 Dec 2023 15:30:43 -0700
Message-ID: <CANg-bXDw+bYNTu-HFaNAPb4e+_oKt2ExR6PehWR_==vpboKGaw@mail.gmail.com>
Subject: Re: [PATCH v2 00/22] Improve IRQ wake capability reporting and update
 the cros_ec driver to use it
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: LKML <linux-kernel@vger.kernel.org>, chrome-platform@lists.linux.dev, 
	cros-qcom-dts-watchers@chromium.org, devicetree@vger.kernel.org, 
	linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-i2c@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_143057_614907_581821E5 
X-CRM114-Status: UNSURE (   5.60  )
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

> Just wondering if you used --histogram diff algo when preparing patches.

Not knowingly. I use patman which uses 'git format-patch' under the
covers with some added options:
https://github.com/siemens/u-boot/blob/master/tools/patman/gitutil.py#L308

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
