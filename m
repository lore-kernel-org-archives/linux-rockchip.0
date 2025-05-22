Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 377D2C54E65
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 May 2025 08:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqqptMvGjrimazKWdiCTOvbZLchwnvtbeiw/svbBBZE=; b=LYZE4gfsj1pe9g
	NLDz5fz+5Wd2i9e3R3ILFVCuDmfWsjDo/HMlZoQ2bJ3AA1/UCLz2AHQVvu0LEoYnXR7ldChWcXHoC
	okIy8/QzaAACjs3/7lVBYuo31OLUc79QiDTfAZRauCVXYujW6VAgMeu9u2Iz8znn5IBHUDR2i/s/S
	da6KnM0x2gcUUXb0eUZ+796fOzUMyqVRgC7n/XA33Ea6dWuFEkoAbqwhRWx3MLwhuqOHrz4eDm8iF
	u0rcWqsroFZ5p6hXWLYYSHx0vaqHa+WUdtwPFWw92XIBRaJkIfsmYE7bxnmfyC9f6CunOX/wUcSdL
	DQpcfFGU68DpBfFX+OTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI1PX-00000000IsI-0MJn;
	Thu, 22 May 2025 08:36:19 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI13v-00000000FUV-08O1
	for linux-rockchip@lists.infradead.org;
	Thu, 22 May 2025 08:14:00 +0000
Received: by mail-io1-xd32.google.com with SMTP id ca18e2360f4ac-86135af1045so914101839f.1
        for <linux-rockchip@lists.infradead.org>; Thu, 22 May 2025 01:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brighamcampbell.com; s=google; t=1747901637; x=1748506437; darn=lists.infradead.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c8fveunfssaG8fltpv/kYgW4QFBaP5Z1Q9jmR2Ucz+w=;
        b=NvxXZblG3Ie8PvQ4QDKHzMbGE85bs0m8Ilozo9XSADAAWE5uxKmFYDxi6RaGhBnWD4
         HtlbO/sIMVR3xrloRBc0MUlOdHeHK9FiSVLnGmvyUJTr+zqSsAQqwQ05ql2y1hoU/Uda
         pkqsjHxlmqiGMrd4/Eo1bSC/ezUWH0+Oa9FGyEk3fPQRMbS48TrCbQ8RWQAqwDR1z7GW
         8qNOqxEEIF1CedMlMLCRHcIdOG3kyR8fV8nEs3haTjmPhXbOE/4Z5f8dAnAPSMKng/+v
         JDq3Tg5PNAW43pvksl3K2pDqEbmTkflUz2R5f6maCUePfHvJAqehSUKLncbNf5P6sjac
         +CMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747901637; x=1748506437;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c8fveunfssaG8fltpv/kYgW4QFBaP5Z1Q9jmR2Ucz+w=;
        b=jpMgD7IZjGuoaeuQSCodQDyIDxMkgPUgfT6GjmyvJZTlxRddM27lDUL4VrBDtCekdk
         4QCSufMfgsL0GN3uF6Az9HHDZpFYc/HR7SdNzdB3C4y8FRd5CAxYlHm9hojefFRE0BUd
         BAQpg4hU6/paJFWohmeOxAwWPX+Hst+DVLU2YwhUjjbD7ZK4pJE/erOV5v1U6Li+fDAz
         Tam7jMq5PeCmrGWzSPUsntoVvPdO5fa2W8Dq6mZVIW75md50OuCsylhoI7bhQ2zbexgO
         KoLQDdFb8b6unO8DYbZLY/T7QpylCTZDywSSGuiADzjdutAjcAMrZWsqYoyMWsK1/UnT
         GbVw==
X-Forwarded-Encrypted: i=1; AJvYcCWnWhHYdMH/8/mFhVLLOdsCyezMdPLpgXEPHKo+0/zQmZ3dQBDGxPex8+AakilBaoadtDePtPyRMilErb+e5g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxvsIG3q0lk7u89hSqxYgNN6xiZQY/nP3QTMeV0uNppgMeqi7os
	FYzNSyVhcHk2pK9A1n9udqNKMv00RtMzu1kEK4heYrqSJmKhIsHZIbeYbzzLm3i7QAE=
X-Gm-Gg: ASbGncvKWLTVdUavnvJboOKnqg9T1siNUsM6iSlNsHH+IB17qsvUAoPMG0YlceN+mL3
	OFeeyLl28ZQgvbsVoPytGypqcBgaiMmJzoWLFyL9sJ+OFo9IgftIsaE8nuyCcBht41k6CFtcGH9
	r9Z/+mRJHOabaj3YXUSeJFze41ATTBr3QO5EEh7YhZGaDXGdQ7wIqya6JAo+DQS16JfZyA4W1rj
	1j2q7yOEmk0igWcUEJV/WfhEYGT3bh1jMWLR3RB8lWKECuYGOVNpUTU6UOe8waTQTN0+kVZmaDi
	XEgHrJSRWunOkOcY9Qw5SsKk0tFPxiS68ARdz7rKK88Ww65E
X-Google-Smtp-Source: AGHT+IGjlgR+V6jDNuVgn2VgB5uR3ziTvMUlyMDL1h3fTHRWO4bCzJmoSqf3GPL+uFJjXhgZZKrRUw==
X-Received: by 2002:a05:6602:4808:b0:867:6680:8191 with SMTP id ca18e2360f4ac-86a2306ee1cmr3484870639f.0.1747901637427;
        Thu, 22 May 2025 01:13:57 -0700 (PDT)
Received: from localhost ([64.71.154.6])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4fbcc4ea5d9sm3017587173.141.2025.05.22.01.13.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 01:13:56 -0700 (PDT)
Mime-Version: 1.0
Date: Thu, 22 May 2025 02:13:55 -0600
Message-Id: <DA2JF2BN2EX1.221D1WL4QHH8B@brighamcampbell.com>
Subject: Re: [PATCH 1/1] Fixing a minor typo in YAML document
From: "Brigham Campbell" <me@brighamcampbell.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Jihed Chaibi"
 <jihed.chaibi.dev@gmail.com>
Cc: <heiko@sntech.de>, <briannorris@chromium.org>,
 <devicetree@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-kernel-mentees@lists.linux.dev>, <skhan@linuxfoundation.org>,
 <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <20250517020552.737932-1-jihed.chaibi.dev@gmail.com>
 <62bd6757-c4d0-42c1-a76d-abea18a8a55e@kernel.org>
 <CANBuOYpRQNx+n6BjpAF0LufpUqRA3wU-GzSNygeWurohXYNF6A@mail.gmail.com>
 <5f7f8cbc-6501-459f-906a-250be5443d0e@kernel.org>
In-Reply-To: <5f7f8cbc-6501-459f-906a-250be5443d0e@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_011359_082716_FF988E3E 
X-CRM114-Status: UNSURE (   7.43  )
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

On Sun May 18, 2025 at 4:34 AM MDT, Krzysztof Kozlowski wrote:
>                        If you do not Cc maintainers, how is it supposed
> to be picked up by these maintainers?

While I understand that Jihed made an egregious error in not Cc'ing
everyone listed by get_maintainers.pl, I also appreciate the irony in
the subsystem maintainer complaining that this change isn't going to be
picked up by the subsystem maintainer.

How _did_ you catch this patch without being Cc'ed? Care to explain to
the uninitiated?

Thanks,
Brigham

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
