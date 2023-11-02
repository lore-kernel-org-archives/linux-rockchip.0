Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6A8FC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Nov 2023 13:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KH2dCYiyCY6ak46wZ+UTbx+wE4Aoy8QLbCRFT7z7j8A=; b=yvOtKUmU3Pf8sl
	0i5QKjcjXTb3cmDRBpqWDBPbHS+jQmXT6eEKRZQ/SCTHDZ4SwDaRkEa40B1wTQWqFha31knvpgsTs
	9w6I6gU0CJGLYHPFr0rgCnYHec8FzEYGaZ96yr88rGYOjMRQr5Oj1mAx30bVVki6stpQHc2f6HRhi
	2gMM/EBMbHAJvas6B1s+85ouXa3QtBEmdesI5ACzbPjXaxv5kOTonTNeq6Nag5u3/OPD1yZUS+z+S
	KgEWoWozDcl8J3mF4j2MoP730uhVsZnrSloGUk3Th6dIEKGUBKGyJG2I0Hht0I90y2coyOEd+g4ss
	IxuZaYkzn/IzVuXotZTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qyXvr-009YCB-34;
	Thu, 02 Nov 2023 13:40:23 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qyXvo-009YA3-1p;
	Thu, 02 Nov 2023 13:40:21 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5409bc907edso1526895a12.0;
        Thu, 02 Nov 2023 06:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698932416; x=1699537216; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=faV8A47tvgpZ5h+iJVem6LTeAncvTfPtpMsFTDEMTl8=;
        b=WJpFYPNn+t420mOrsqHBUzV57SUrqdjvBViOFrugeldqbFiDusaHjxf5XiKozf3eqc
         YoiwVstWUfXtQSrt69A/Td0VOnwUBlCE90Z09MvEIaMZDFBntngiJcN1s6sn6Uz3kktM
         R2Yr67PyfhJKhA/q5Ib2s+KUDBx5RV4rd99ElrXXjq53tY5PkW2MaWN8amvdzuUplr8K
         4Bnx5uQqUIiMNMXfhnuBJuka6THGvGaHGRAHXnZlBf47jCAwcJug5wA77/+Kn579OxgP
         f+FsJHo2PZASPRyRc6EFdh4PJvAXDAz16/P9sI70yU3Ts7Wya86I11eCS7WkqKFJIEuk
         vMmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698932416; x=1699537216;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=faV8A47tvgpZ5h+iJVem6LTeAncvTfPtpMsFTDEMTl8=;
        b=FlDEz7bitlAFjMgipIpO0yIsIN1js9r2o5bNKNoT/PuvrN4Q/zbJzhoGo4AbNkMzxF
         EuimD7l1CsdOlUZY5BZAUYC05JC8SLEccJ/DylwNmTwzuxk02/0UMtaRW47YfmtjPYBS
         8QGfNtPNwoTuFxbHXGAj3m58BNJyq/HuOE/TcaKCrzUMo0thrBAVznik6KtgbnGQtN8J
         2tTG1x7pqH/zCglUOj5DAEnC/OTCUsXdbpV4K9t6OC1XlwE4zHsjxG9q4zWgax/Gk1gW
         geYy71NaOn5xxQaUwlhpQNLcGn2LBL5rCGHwgtEQpRezGbLfcurgacHVLT5/xqIqh4fe
         ts1w==
X-Gm-Message-State: AOJu0YzLfG+MqbM7eILAy/PGEZbv0kcrhRXhaosoMA9eUwM9I16tXDs+
	dEPWBqd4ODI76eT6nHXd4fg=
X-Google-Smtp-Source: AGHT+IFA82hBDVCIm4Aa4h6VWAi5ZV1plROwqOjG/ow5zKHaqtmNWt9drLjQQDuwmHB8X+Kcs1OKAw==
X-Received: by 2002:a05:6402:28b3:b0:540:118:e8f with SMTP id eg51-20020a05640228b300b0054001180e8fmr15039013edb.24.1698932415678;
        Thu, 02 Nov 2023 06:40:15 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id u1-20020aa7db81000000b0054366251e04sm2287357edt.94.2023.11.02.06.40.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 06:40:14 -0700 (PDT)
Message-ID: <cda574be-4f33-b66d-eb14-92c2b31d241e@gmail.com>
Date: Thu, 2 Nov 2023 14:40:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 0/4] Rockchip rk3066_hdmi update
To: hjc@rock-chips.com, heiko@sntech.de
Cc: airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231102_064020_603791_EC10A754 
X-CRM114-Status: UNSURE (   7.96  )
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

Update the Rockchip rk3066_hdmi driver in a somewhat similar way
to what is proposed for the inno_hdmi driver.

Johan Jonker (4):
  drm/rockchip: rk3066_hdmi: Remove useless mode_fixup
  drm/rockchip: rk3066_hdmi: Switch encoder hooks to atomic
  drm/rockchip: rk3066_hdmi: Remove useless output format
  drm/rockchip: rk3066_hdmi: Remove unused drm device pointer

 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 66 +++++++-------------------
 1 file changed, 18 insertions(+), 48 deletions(-)

--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
