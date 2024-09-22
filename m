Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99AADCF9C6C
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Sep 2024 10:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=snQZJuKJfTurRsYJ88SDwxeOcvEba1ofhaSDn6YJIGo=; b=IwB5SpWSKoHSFf
	WTTjWx1k013THqL0HB8qImRsRHIjLcGLumz31NqxAGvzbz8Urk8Dl20wAuDdJsQqYyluBMuiJRKsD
	FTGegfjBGInR0+lYOZ8xsXr0DJt/U1PO2/6PW5TLcbuFfIktJG9kYTTvbXOKDHjc4DEf/9drYghSk
	/IgL6e6tFuND2EBx8qB7XCBX5rIS+0gEzhyOCY3Qq0T+0lpY1aIJr+h6yta3jZEI4zGcl65S28SvJ
	m9qIf7Gn0xwZzuG9SkZV7YjhvcQAc5Ayga+TWCgDIy1nRY4Vk94X2veSvXW0zeYOCniTTCn7pksHs
	GfaiIrZcbtoKL55r3Bcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssJjG-0000000Eyrv-2dXl;
	Sun, 22 Sep 2024 10:22:10 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssJi7-0000000Eygr-3apK;
	Sun, 22 Sep 2024 10:21:01 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-205909afad3so40563985ad.2;
        Sun, 22 Sep 2024 03:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727000458; x=1727605258; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RdphpHCR8aVbgwIQ4xKroiJuMuvQa/f/rPNkLNXJpng=;
        b=iyDXxGubyNVa+UkwMyNOdHaNMtwHGWYnyDxs0EfckfzM2HE4ioLsPvTWv7M1rzVJUZ
         ohXC8kd3vGN5dArvgJdt8F3zPuoMEBPQ5LY1wjEyHnT8OfnYej6pbwo5dXnypswHlKOh
         GgPCJtYcJMLRRz+FEIu/AcACUL13L2GqVlftT+As7NpsUntoVY5GmbocmCH+VyZITzG9
         JtF6RlErRp3YiEXYBkW5jmbwBj202OLpfoVmzTj2vjLS1+HVdPJPWxJvoENaxGEuHbxu
         tuEiCJwkafgzVDztc4U2blT722KEgE75OlQov1JNOh9TZP3FN2GHCvNaLPo5nRfcW4YO
         Hi2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727000458; x=1727605258;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RdphpHCR8aVbgwIQ4xKroiJuMuvQa/f/rPNkLNXJpng=;
        b=QJqJW0GcH5a+cneBemJHzN7070Y5IWmMz6lqbIiPi/d2gLfFiexb8rCUTZ7APHPPme
         N8305ChIFjwzwfvovAI91nh9BFjdDtjfQCMr6sWg5ywSJyvFxQY5o8jvjAAD5jlYZiSW
         mnEDlCDsENWnTLIUIyFFYDJW3i2OspgBfDBOvIwEc3c5aCpEbYeQTUlcYsodimCL6zWh
         QNMDM7PjDxA2AHZpqMFYG5n9SHXBKfYg6ishkI/hnfqCdYH7MMXTeYSOMjcJyudhY++1
         45Smk5RInf9ijDw24ROT196UUmoGaP+65Bi2UoUC0tHPSdYxL+CELn974DPAJk9RfGVz
         BshQ==
X-Forwarded-Encrypted: i=1; AJvYcCVt138wf2GU/VT12Ti2CJiCfjOtk08IqPAVoM2N+gQKYrOEgPEZZI2WqeJAqvvdm/J/Je4NDCc8+SjxuVXVfAQ=@lists.infradead.org, AJvYcCWniOzuSAdrsBFWkfotyEPRuZT927WTr1E2MZMz60kPY4w41usvUz3U1i1UikBnUsDGLpneH+UPhqPk4JBtinJW@lists.infradead.org
X-Gm-Message-State: AOJu0YyOJkgyUdlWz59pe0NKUQCXjLThVQ9SmKJsFy6ut44I3mI2CrSf
	oVX8c//F5wsWki4l9B98VNy1kCRgFXByfmhMEWADwsyS9L9mNnuO
X-Google-Smtp-Source: AGHT+IHJFkRgYfEyGcG2xVh86zCa2dDUxlM9NiNctUcc86+jKhYpj9NQ0sCDUu7kuXl6CrzEV+ZQ+g==
X-Received: by 2002:a17:902:cf05:b0:208:d857:1014 with SMTP id d9443c01a7336-208d8573fb1mr110231715ad.28.1727000458325;
        Sun, 22 Sep 2024 03:20:58 -0700 (PDT)
Received: from localhost.localdomain (111-240-85-119.dynamic-ip.hinet.net. [111.240.85.119])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-207946f3558sm118619615ad.183.2024.09.22.03.20.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Sep 2024 03:20:58 -0700 (PDT)
From: Min-Hua Chen <minhuadotchen@gmail.com>
To: andyshrk@163.com
Cc: andy.yan@rock-chips.com,
	conor+dt@kernel.org,
	derek.foreman@collabora.com,
	detlev.casanova@collabora.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	hjc@rock-chips.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	minhuadotchen@gmail.com,
	robh@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH v3 06/15] drm/rockchip: vop2: include rockchip_drm_drv.h
Date: Sun, 22 Sep 2024 18:20:32 +0800
Message-ID: <20240922102032.564-1-minhuadotchen@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240920082122.6742-1-andyshrk@163.com>
References: <20240920082122.6742-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240922_032059_915440_87B1B0E5 
X-CRM114-Status: UNSURE (   5.94  )
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

>Move rockchip_drm_drv.h in rockchip_drm_vop2.h to fix the follow
>sparse warning:
>
>ARCH=arm64 LLVM=1 make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'
>mrproper defconfig all  -j12
>
>drivers/gpu/drm/rockchip/rockchip_vop2_reg.c:502:24: sparse:
>warning: symbol 'vop2_platform_driver' was not declared. Should it
>be static?
>
>It is also beneficial for the upcoming support for rk3576.
>
>Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
>Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>Signed-off-by: Min-Hua Chen <minhuadotchen@gmail.com>

Reviewed-by: Min-Hua Chen <minhuadotchen@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
