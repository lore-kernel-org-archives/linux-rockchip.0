Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A4D3C27C53
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 02:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCAGtr0QGFmetHWTBCCbyC2HQEir96xfkG2+l7EA1Og=; b=tNU7J+MdBrdEgt
	M3wkztx5ODyMlXcTLkfcnAQn/WfO1QVm3QLgTrYDYiH0St+C9Z98PROkkKkzKGwxD9ZfviDSu5/dx
	BE/FHebV3+q66MFUV/mimPa06mwTLqZbTyfF2jEeu2QWlkCFg0n9KU+eCyYoO/pERa6RexYMMMuZD
	RXEwYbTfnWjfC1b0ZIp5THx8oFvksqdLLXxLKb8x6J5XpVoRhJcuoYnimneKDQpn7QyM/AX192TyA
	+/d/D4OtqnQ11bbeB//AiKKzRn9IWGOwAcRC8Cr77f+Ikf6DKuPGiz1Y6lScXjX/D6o38PmdxqHKb
	kLMI7DdaAwO7Oi86KE9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ2S3-00000008ubz-0W0C;
	Mon, 17 Jun 2024 02:50:35 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ2S0-00000008ub4-1xRb
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jun 2024 02:50:34 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-6bce380eb9bso2189251a12.0
        for <linux-rockchip@lists.infradead.org>; Sun, 16 Jun 2024 19:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718592630; x=1719197430; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UEfmh+UhYErjeX4G/Jd3OXS7keiXjtHnmVo/kB1jbTk=;
        b=JJyoNpHBAtN4zGQ45DC7xCT4bFZVXuNVdFDAdXwYIeiv2wMkq+w2O/s/1+CGkcrbuc
         0mU1hJaL+ZNlMOjmhv4QTgoEGyNTEK67ZPFciKK7bCdGz3prrlPM7SdU4iQDbaSVl28D
         0APzeCUas+JUCVW0c0Etcqs5mC96ms/9kOOQwXE5yTVbNxpwbJzYgdIgBTagwjb5X+Zf
         Z7MlAfchCXsVDtJ4+2Tbl84Kg7QshB49mNv6N99YjaQaQOB1DFw1ppauYOaEz2bbM2hp
         D9dnxgP3gzuKSXyt4wwKBpDVP2sGZdQFm7vvJSuFx3UtMo9yJbvo7DWCUU32eQCnWOKK
         B+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718592630; x=1719197430;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UEfmh+UhYErjeX4G/Jd3OXS7keiXjtHnmVo/kB1jbTk=;
        b=XWfRleaKA0oKqRPMs47b7TgYQzKl9NRSg+aQeUd4uH9qTG3MjT1UUJmnt38VWCpu66
         zFP0YWMynMqY3gtzm35sIoCV9dl4rL9k2S3bvShiZSkynSwgU+dDOLX0w6AAEGUHjmGK
         8P+zY5EhzomLN0p+De7RvmR+VBiTL5pYaBoZJpXIeYjqMCn7fQw4MzJcnxv01qlZSMc+
         NXUAHoyOu7Dy33wU6+tnVP2rd57uHDPQIv8a/MuMV+8GvAIsaoZtpWc1rIpTf239/iSR
         pck671ThLv9eCQKevQB1Xf2p8HeApxmmQ9HBBGRZK5ZiSZa/JK6V+BWEdGk4OZAVsmS9
         eaAw==
X-Forwarded-Encrypted: i=1; AJvYcCVMQdmSq/m9LR1MeRhltNY9KlLwzwsAjaYzyye2Bv/gkDDl0hmYC4MJf5JzlMSGrttNGHg8q1SAGTK0EJInj4bjFAI9BASJt31NDtRbSibgP1Zj
X-Gm-Message-State: AOJu0Yy4cbd7KTiDrA2WrpTp4KVt0ZogPj4tOeS5LIso5C3NQ7US23WU
	SJSHqGQSr4X9PkBea/WKqu/QiK1c0pJPZSF3WEV1DIzv69ZvJjfa
X-Google-Smtp-Source: AGHT+IEGfRwVa5MSLr1eYFoByCcIg5X0Bst0NaiZt7jnT5Mp2Yjkzz4qXhYn2DIEX1E5DorkdQIOAg==
X-Received: by 2002:a05:6a21:9994:b0:1b4:b4af:6045 with SMTP id adf61e73a8af0-1bae7eadf3dmr10737143637.18.1718592629778;
        Sun, 16 Jun 2024 19:50:29 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.99])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855efea73sm70067895ad.182.2024.06.16.19.50.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jun 2024 19:50:29 -0700 (PDT)
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
Date: Mon, 17 Jun 2024 10:50:22 +0800
Message-Id: <20240617025022.25122-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240613135034.31684-5-sebastian.reichel@collabora.com>
References: <20240613135034.31684-5-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240616_195032_601199_A5007280 
X-CRM114-Status: UNSURE (   4.48  )
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

Hi Sebastian,

Thu, 13 Jun 2024 15:48:45 +0200, Sebastian Reichel wrote:
>+	{ .compatible = "rockchip,rk3588-vepu121", .data = &rk3568_vpu_variant, },

rk3568_vpu_variant is decoder's data, typo?

Regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
