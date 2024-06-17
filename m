Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FAD6C2BA15
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 15:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZRFbxEXxOUTtD9Z+eL8mCPiwxSTEMtMdF7LZly3XkA=; b=niXX6OJFuXj+T6
	Uq36sD5Ng2ajV7dWQ4YE4wdeNF92Ra4oap4r2/E/H9/u27JcZE8q5lu27EZDYMo6gHKuDkmHrSMNt
	SF0wtp7B2HXQP+x+ihYOwnGlTYFEwbGnLbUGMwBiy4oWqC9/0l1roCQQVDHFd+9IN+Oj+40UZnNnv
	P1E1GPQUKLdLChCMm9JqxJfvZwlRaZ1QTQtXhRPWTtWdCfwSw/lz3UlZctf7lYixgT3Kpbfbdfjb7
	yZM2ke3dZCISg08ometrt71vQK31cvrSA/1BMMbItW+5zTK21w71CuHa8HKZA7SzvmkocqDGfvrr1
	adprl3NfB6FbzbvZVOgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJDxf-0000000BMvm-2LZc;
	Mon, 17 Jun 2024 15:07:59 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJDxc-0000000BMuJ-1CA7
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jun 2024 15:07:57 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1f480624d0dso36094265ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2024 08:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718636875; x=1719241675; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wvq7JB2dJkIxaCc+ZHbqsZ5qCkHja7eq8kCPglPhfzI=;
        b=XwU1E+SHYWzwGhxOHrdrKPQVp2Z4c8wvOw1GqXhxqzB+A4KP7Fa34CCkWRx/jy0YxC
         kcchQXCda5TWaWW4lTNmTgipswRf7q2thEbUhF1ttGPWmjUxMKyZXI8CUDIGnZPxMi7Z
         W4Y6d2P6ljPYjGIqM/X0Ja36urzcHARN29HOnmie/rVK5X4HnCLJriNDg0E3MQ2P4z+j
         xOj4VXDHmeCGSpmN5LvnKEukV2jDMlmNPZO3OM62ziEoLT8k+toVjduvdMHBupCC4kQl
         7IFnfusyScm/8+pjE0kuPMlBEya8ZYDKOvHN662lVSQvVvOsGIBHA2X2sOeHkgDT8OXz
         MzwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718636875; x=1719241675;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wvq7JB2dJkIxaCc+ZHbqsZ5qCkHja7eq8kCPglPhfzI=;
        b=u+k8rOpCDsZWRm3qjmHuZTsPai97CsXFAWnIuTKlRgKGTnGj5ROvGrfwP9OU+yaTqc
         qj7pYEeI2Nr3MIvYY8euKZ4Xn6wYNxxOeqjre8Exgcpfh2V9qp16pg/vQIQbOVctqbCP
         q3r0QR4hBz1BMlEvqLeQjbSzQ4mL61GCJVc6tZF8EbCJS0BcMS8fP8wWjXL/RUrXyEal
         4rH0KnmBkA5einngZK7oKNPfatWSM0OQAed1aM+N1RMSs9SwsbdWdGjxcrY+JGZg9dT2
         r45Oexmh3vEq+4MHeYStrmuwYLPzp/53LPJOJjtmhTAAxcImZ5ngHBcga88tKZ3YSeRa
         nOkg==
X-Forwarded-Encrypted: i=1; AJvYcCXJtdX2CUH2PdBSd874tOIpJXpxss3xZKCBICC5UZUU4zMLwG2FONABvENghjjU+yQ80CjhCQxNR3M1bS3jr0loQS10dZsa1eEb+WbuVm2v9jNI
X-Gm-Message-State: AOJu0YzJpK0Xf3xHrnHyfUHpFkCwgcHR+rsfyFvdy02cBN7fxzr5/fTB
	ZqBzc5VcbHh/NGqNKfLkWMC4/hmDRUZQA5wEvpbfdDB0oX4YLQts
X-Google-Smtp-Source: AGHT+IHkOj1mqBJ6M3NCIXSRb5efgDKM2OF6jZQG2tUY2qPdc4XHOeJfP5NrohBZfsLvlXiRw32fzw==
X-Received: by 2002:a17:903:41ce:b0:1f6:3721:bca with SMTP id d9443c01a7336-1f8625ce609mr140905675ad.15.1718636874744;
        Mon, 17 Jun 2024 08:07:54 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.99])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855ee81a6sm79939815ad.148.2024.06.17.08.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 08:07:54 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: sebastian.reichel@collabora.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	ezequiel@vanguardiasur.com.ar,
	frattaroli.nicolas@gmail.com,
	heiko@sntech.de,
	kernel@collabora.com,
	krzk+dt@kernel.org,
	linkmauve@linkmauve.fr,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	robh@kernel.org
Subject: Re: [PATCH v6 4/6] media: hantro: Add RK3588 VEPU121
Date: Mon, 17 Jun 2024 23:07:43 +0800
Message-Id: <20240617150743.30382-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <o6iccgurpi7sraq7plxaccz37i44te4jaqicnp2nqbke2qtskh@4kboulg3zywx>
References: <o6iccgurpi7sraq7plxaccz37i44te4jaqicnp2nqbke2qtskh@4kboulg3zywx>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_080756_360367_5837EEE6 
X-CRM114-Status: UNSURE (   6.92  )
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

Hi,

On Mon, 17 Jun 2024 13:30:52 +0200, Sebastian Reichel wrote:
>> rk3568_vpu_variant is decoder's data, typo?
>
>See first sentence of the commit message.

I know you want a different compatible string for this VEPU121 beacause
of multi cores. But rk3568_vpu_variant is data for VDPU121. I applied this
patch and from output of command:
v4l2-ctl -l -d 3
I see h264/vp8 decoder, which is wrong. vtl2-ctl output of this device
should be JPEG endoer.

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
