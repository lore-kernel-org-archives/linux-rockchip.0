Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94CE606A881
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 08:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yXs9CnBx;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=EsLmvRlr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=l4JhyrdHBS6dIKj+pkDBAsHlWCiSptf/K+zJYwaOwmM=; b=yXs9CnBx4yeqvl6Km508D3vanT
	E7wf6/x7wbUtqlgHKI80BTxzYaJRUgTlh0WCOgazzLCtWUN8WwqGqo1De9FdV1dXMyX4qoy40otNE
	TVSgmxqoE/38A3O2ZrkRxKmX4u2HQw15wvnxnWs+bg9WuWDX1i00fE6F/FiljmAIpvaVwaVXc2pIa
	PQFo2jpMJ0GqGA5UYHW371olZL3jgXRcUK4pOnx1FOkqBDrB7rXpeQR6979H/QpnBUa/NARB3oNrU
	pLQN/OVx/IbFcgraotzLaoZTG8WqloF0t23L2fRTlNZO7Y2Wl0IxPWD8qIlv2SD+SgpaTVyr2Du/a
	l5cgrCWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVZQ-0000000HEPU-1vXo;
	Sun, 15 Nov 2026 08:26:40 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVZK-0000000HEMx-2sdS
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 08:26:39 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-3b1bb072438so259028a91.1
        for <linux-rockchip@lists.infradead.org>; Sun, 15 Nov 2026 00:26:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794731194; x=1795335994; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:message-id:date
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AEWA9iOD08SFA/zlaE7wGAZjLwI2QLYLqoPd1RCuPRs=;
        b=EsLmvRlrq/KdtO75lYMgS4gzX8S7SFT94fx5iEgDUKp6Q5w4D6zpWVmOAepppDMbEf
         e0w7juWYQ/rp9IOBFgFIebxDSG/jfGF2q1cNVj+FM+TU+dnAkGrnHjpjG561GCqEklW0
         LbtFxJ1gi5mmpantHZ4Z+EJKqxytkoI1IHuoC2kte47oCmJ6wdICpm/qaKjDKfD1TYm/
         wt/C9i5+J+OV1mDa1yRyHlmoxFgiaOmXCqHcySEyEhp8xGy2RkTfRoOvQHS1F49fXB+r
         kWPAyJ5UdeZojUIoWjMRkTx9fUD0xHHZ9tQG+TmbW1f7AejPLyqZsGqCBS+PtQhtfhjm
         cLSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794731194; x=1795335994;
        h=mime-version:content-transfer-encoding:content-type:message-id:date
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AEWA9iOD08SFA/zlaE7wGAZjLwI2QLYLqoPd1RCuPRs=;
        b=kLWJeyHZ6fhO25c6IQFNnvBiIJNSCRr4lYb8Zar3twqr/04fX4RigBkk+pfbTNhVCm
         ASye+bssp754qZBP2GhEccd4wCLHe+wp/udlMm1BhGgExMQylfa3vTyjN0hrOEQ8YMCJ
         YtA51VUyntGHJAZX0rRYSzxyR8ZTguZVgwuWI31w2GS3olLbKBNALZCA25/4eexRQShU
         vcgQANxOisEkd3kdYZpjurRf7Vf6SEUQM8O8PFmhNLBagrc3aveTnR6wZp+wG2L7BNJ6
         74FboD3XYGcqmm6qlcYnkTyzhk1X2NazjNxPKF4GBpZIqLgWVp4I3FoJ+AAYbs0pqALI
         M5Lw==
X-Forwarded-Encrypted: i=1; AL+hErHmH2uxyrGdEAAVImAnDwf8umI0JKoQXY36G3VGOn5T/yaxflJ9Gnh7Xnf3P00rHHOrn0yuKjgjgH5ddoeHyA==@lists.infradead.org
X-Gm-Message-State: APuU4Z84la9sKsPXRt85Aw5c/QOjkduX1tya4ASYiH9STCRZUBt2mikI
	2lbAt3d1gjes7yH93qp/ogbiWSOO835DvZAEc/Aoweg2uginibZx2XJj
X-Gm-Gg: AYBFou15dNQDOlYrfHxq8cl7XrmgOpOfIdLx7dAWUkfoZwLJa2COAM+WeV3PzFYRv5k
	d7cqVb/bqrM1ihUG901Z/SziIAaD5Y0nI89cXsl+6HTBTv7PXghyqaY8wZHdxNXeXJ4w75ECUOL
	9VSmvSWx26vdhM3btUxC5Tnhba6coN0ZmBwmU0vGYQWntBpSVFtYi0m/eaN8XA9yhyKBuIP4V5y
	y7AE5p2DMcZUWjdWZacULI7rLpfYDkDCQw92t8ANo52rYIdmeZdtR/fvAI3d2XkDC+eJ8ev8gXZ
	2Rz/xNtYdK62xxvAO8x1AIZLjdhGb2hTtUh8EPugp/g+cyfi8lAUoaIYKj4kuCk+GmWCRtajptK
	8Xn+87EHaX0GJfRRhI7MQaDfETw/qDUgsW0Y0dtVrZpkxw3uUtMsDCP2W9xF0qvHk6G4rUdYxk6
	uHir1wOwSZCiRW0BWKZFu7qb5X7NfIdXIoipW2iME1mv4QiBXdDKso5m/4Us7DSCRUKHDeblTFW
	k2BhnKsHpgmxY5WmExjxWKUc9Exeg3ueKvkKDoTTMIaFyrLTjDjmwRkf8w01GwsmJVYolsmRy9G
	ypZXUC3HQBx/1Mc7keBLPOAOA43sz/hlG4tXyEKpiH86VNj13dDTdmuPKJ2LW3WE4E7blX2EalL
	xlUgk8g==
X-Received: by 2002:a17:90b:568b:b0:3a6:e61f:749d with SMTP id 98e67ed59e1d1-3b1b0815b27mr11488600a91.1.1794731193623;
        Sun, 15 Nov 2026 00:26:33 -0800 (PST)
Received: from claudebox.iyengar.cloud ([50.39.139.68])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b1aec622b6sm12961779a91.11.2026.11.15.00.26.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Nov 2026 00:26:33 -0800 (PST)
From: Arun Iyengar <aiyengar1990@gmail.com>
To: Alex Kazinsky <a.kazinsky@ideco.ru>
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 lvc-project@linuxtesting.org
Subject: Re: [PATCH v3] media: rkvdec: Handle interrupts without a current context
In-Reply-To: <20261113102456.4155237-1-a.kazinsky@ideco.ru>
References: <20261113102456.4155237-1-a.kazinsky@ideco.ru>
Date: Sun, 15 Nov 2026 08:26:32 -0000
Message-ID: <179473119253.4041300.13173694154528880101@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_002635_902312_63A8714E 
X-CRM114-Status: UNSURE (   5.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Tested on an Orange Pi 5 (RK3588S, VDPU381): 7.3-based kernel with media
next's rkvdec, this patch and my watchdog fix [1], KASAN on, 4K HEVC and
H.264 decode with the watchdog cut to a few ms: 5955 timeouts, no NULL
dereference or KASAN report. I did not check that a timeout actually
raced the IRQ handler.

Tested-by: Arun Iyengar <aiyengar1990@gmail.com>

[1] https://lore.kernel.org/r/20261115-rkvdec-wdt-stop-v1-0-59e687c6cc63@gmail.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
