Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD6DBC53219
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 05:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XyQyfqQRCccH1mEtMre4Rr3Ovn4Jjj1YuKduUMnm85w=; b=3JHvMzuj1UbhLx
	lxwHv8n/BFxHZtZIkZlUi8/+anUECRoKWunk7lwMJyH3D3/ZbH8JXaUG4/Shi7hmmhrMogXEImZWw
	/d51xo/DshAtUki+zOIu88zIl/YZ84jTBwDrQcMo06seo+94XtAEEmYxUP0FSrYbAPYuWHCf0yqOH
	vV5SSUzL1zZhtOMPYx2raqry2wkvAqzERGYtHO/ZuTGmzgJAEoFbD4aFEuq5gHe0SkFJ8/t+bW1ls
	aQHvhniP/z0BOH6MDOalHWDxxn5Z12lv43cgtQqfl1Y+1wb54s06rf2CFlOFS9O6/OwBePAKwJHXZ
	abMnpM9Wa8eICrpvt+MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woxKP-00000006yTf-28JZ;
	Wed, 29 Jul 2026 05:59:41 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woxKM-00000006yTK-0i19
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 05:59:39 +0000
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-92ed3993c1eso37796485a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jul 2026 22:59:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785304776; cv=none;
        d=google.com; s=arc-20260327;
        b=o+ru27qQciEvWRlbfnSX77ZLu3Nq0gQepCvSI7uPsBjZNwJz/HpGQat+2gyDi2F+wT
         gNhOdogufnVbRhcft4xzW7hmML+DL4XOPfHo5egPxtI6VyQ5AoK4hfXGBci2a439bkjK
         x6TICnf3p2u8L9JaGM5LjqRtPa1RgVNHL+BwbdLKAk+8lphkhBtcq7ItkW7EvJVgf913
         7+U/rDNQKgl/WwoE1nSNfEBmVNTxFUO8y1gpVgqQwRk06hyu+Aotr894dEUXdKIT1tYQ
         EeiC9KLAfuROTnTVzoso1kLYmdy00oTjoteVXVJ7fvbQbkJIh6oCMA+/P9MbgshLmYzJ
         IsvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zhXBz4WAC575BvE7Vbqo971rsQ7lB6pJ8jeY23ztt2M=;
        fh=mYvl1JfqQns1wYGpzxnePPIxT2bGdcvRRs8XuLNtlsc=;
        b=eMrydNqjwMPjjMuy8HeaFP7sp3kPl+aFCLs02hWTp26hUrCXr+3D1Mu0r0FqFHTEcE
         Yv98wO45nd05NQoVXvKSDC8gd3pUCsbcghyJuYgxFuM8KfvsEjeZYUlJgOTaaDr6th98
         PpHUV3jG3Vh+D7lu5Rl43yhobVorpNsxf3spnRdcWFgnG276+6w9G97STP6k9G8mpGnn
         K61+bxZUlHGLtKA6EgwDhsCq2SDjvU6Wh2So+JnE29aORnqciG577XXXP/fW1QwGrSv6
         9kG7pilmSLjjPbxID43eMcO7VbrfSpwOgoll1qAyM2vb1TaANXeXsLvo5qPvDFC/15nQ
         3/mQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785304776; x=1785909576; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zhXBz4WAC575BvE7Vbqo971rsQ7lB6pJ8jeY23ztt2M=;
        b=tAuulZBiQpUAjKu43ECQlxLmBMgvp+7qJHc/ThwF/e1lTh6N0XpU86IvNlhXk7Bm4P
         RoLozrSmPtaKpv0rKnWwaFqSJuJjqZlpsYgUydTBl3TPUkY1e+bgrzclGunp63wrPCG+
         MmGiNEhXOI/2uTMXU1iA4N3S5PRNR9HwXMFWH6KQp1sSTLVCESNmIpQ3s4+x1bgn7xCH
         9Vjm21pbdLcbqcBmX8tmQr7WIx9ctTgJntJJNtQORkR8yBQc7c7uRKfS3SMfSk82/0lh
         hJtmgBN7TLnuEmFSp9jNTNfqqihh/syOMVUNrJU6N4Und0FUidDuuaBNqSrT7sQFps+z
         SfiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785304776; x=1785909576;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=zhXBz4WAC575BvE7Vbqo971rsQ7lB6pJ8jeY23ztt2M=;
        b=hlATfxLr2bx2PjD9vkDsvU2hre4yB2ruFAl3vbtbnV/L8cvLgmr13b1z6rTPO7l1rr
         WZ7uBTAk/lWfQSq4PBezrXbWI5Vh5mgoFex7wOY6zMsNBZVeikVpLAsman4TRHnwUZts
         jGTPQzxDf+z2e57CNRimHjNUQqXYwlSGEBkUvd+rN7ILrsU8cNNWV0MJ6pqteACPVpHg
         s1zaoZu+0cKMoFiKw4YGno53+bWTnhRcqyIHCeuLeY/B9UKQ8yMh3uCwF101yl68Vavn
         8dtNlCcDx7Uv6CS4ckhAaNUI00mflK7JfCuRFDEI7QNX6g3YjFgm5b8BRU8otjMRCagk
         +cSQ==
X-Forwarded-Encrypted: i=1; AHgh+Rrtx34rf/x2As8X507DD43rW1mcxxrE4vKse7zTzT+VMNM9VJt47G23a6qpbLkdXRb1IzFbsrlPWiYwN6ylwQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyjQ71Yl35ST0g0u0/cAUgfW1jgimr/lAW3UltsYjD9GsnzgpMv
	Xk1GB1ZKLJmZFz0R0e5STCCdAG2ltUywivltVEAk9iH5LkZaPOombTt5GtE5MI6tRx3GQCfXx79
	vwxTOhCAgjFSrZN4n1Qy05S18bAh+iiM=
X-Gm-Gg: AR+sD13SHqMXpyAnxyPg0M9s2t3BhKJiuOu/ma35gJOqdRN8YGK8oixiBYpleaoxldL
	TjmYgdc6uMLu18iNLaO9ys1YGiix8UzDZ69K6ycPyULIsnJP87j4ZofwU8wS9eW6ET5yDsAbeWf
	nhgkiHxqWZklO5KvZaVxksakKUv8P1DU31qe5IVmS8PmPY4o4AZXR9oHZphcJpwxmyu8BKKhvti
	STQYqPpqrb8Zxo590P1mb5W8t6A/HY93zjJpAXT+ZCLd+O0dOYAIp7RXfbvHoo0veLjSdaTejt0
	SM7VFiXc9KOJxRw1ApVSh/IIQpjWjLeTXvLQDaysjAR2l69TpuoET1WVQb7BB4rr8yl4/6JISja
	ILC7ZcBnZdPbKDj4oBV8Uj1nl0YhMSE+UzupQ
X-Received: by 2002:a05:620a:3727:b0:932:de52:319e with SMTP id
 af79cd13be357-9330266599fmr539914385a.23.1785304776005; Tue, 28 Jul 2026
 22:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <20260724131208.2315-1-tharitt97@gmail.com> <20260726024243.730-1-tharitt97@gmail.com>
 <amjQafSHo5cjCTnW@SMW015318>
In-Reply-To: <amjQafSHo5cjCTnW@SMW015318>
From: Tharit Tangkijwanichakul <tharitt97@gmail.com>
Date: Wed, 29 Jul 2026 12:59:23 +0700
X-Gm-Features: AUfX_mxSFTIscdoxIwMB9WODihAf5JMiVEABEJSCWkuwnn3lbw2GW_-l9aNNhSk
Message-ID: <CACak8wPrYOmHKCBP2R7udaFyx0mW1z3f_A9ivaGb5ATNgqujhQ@mail.gmail.com>
Subject: Re: [PATCH v3] media: hantro: release runtime resources when
 device_run fails
To: Frank Li <Frank.li@oss.nxp.com>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Hans Verkuil <hverkuil@kernel.org>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-kernel-mentees@lists.linux.dev, skhan@linuxfoundation.org, 
	me@brighamcampbell.com, jkoolstra@xs4all.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_225938_266804_392E84FF 
X-CRM114-Status: UNSURE (   8.60  )
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

> You need sperate patch to remove this. simple remove this here may cause
> build error or warning at NO CONFIG_PM config
>
> I suggest use following patch do below thing
>
> 1. Remove CONFIG_PM
>
> 2. Use DEFINE_RUNTIME_DEV_PM_OP()
>
> 3, Need update
>
> .pm = pm_ptr(&hantro_pm_ops),
>
> Frank

Thanks for the suggestion and the patience walking me through. I will
send the v5 series as suggested.

Best,
Tharit

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
