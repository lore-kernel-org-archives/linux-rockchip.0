Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0E12CA1004
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 15:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJnYEpE892V4MntKIPKLua7L/8W7Fvt27SvK8dQQ440=; b=SEgxQwcHoeqsJ2
	L+iWRo4xcRZESO4bfWkcq8dt7dQPMvMK2xYOrvAZn5BAG66io8AZlWpo1It1FPEhrSrXfoiVDijRi
	868JeErMox+yl7yfzehaCgQBAhfXd0h1KReWmyKfzOwOwuLWQiCecQhH34uFO6wIbghNhr1rvz6IN
	u87G8c0LqVP+PQbFHPqV1bv4/sZoUNHLV59zspXWleMyRTBduRWOffy1DQlBh2Y0AU6umBHBR0uDi
	bGDsXNgQuGHBADy9W9Bc2eYEURPMtvMfLRaLjGXaUntR/eCUy/7iWnSQ3X+RLEDzPWTCFbdn3xFGD
	77aoVuV4LYxHERRCYXBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk3dS-00000006pf0-3yua;
	Fri, 30 Aug 2024 15:34:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk3dH-00000006pb1-1Asw;
	Fri, 30 Aug 2024 15:33:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=gRLVDlLtYtEHFRW+z5u3RzqQq8Otkw4nKdbnkHz4B9k=; b=P3cg65vBdVCOU7BmT6ocV53Ync
	0/0SwzkjcdpJqP5e2jlX7g7Y1B/t9oZQF3RmoipcVpnjNfluSrprC1foFCPM2SdUQBOG3aBvmSdF7
	5Y82ixZy+xd9EHB0yHBg+qnTkwHMDvn0HgdhgSfck5Zcz8Jlsui8XDhLAF2PV2tZUsgOjdlDM07Jm
	oxysDeywFiX61Ip+geLI0gtcEeoSpGqIQ6vRxItrLl66wHVV5+4AluHX4ICE2nqNT4bX6tUAUdKBT
	XPpBLJrwYB+joyWRigBO1OdArKlZwbugH6P1KDB4WCMjRq6YiBIOU9hAngqje0WhK0J0vCwKlmiG2
	l+gnzpcw==;
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk3dC-0000000Bhmz-3QnZ;
	Fri, 30 Aug 2024 15:33:49 +0000
Received: by mail-io1-xd30.google.com with SMTP id ca18e2360f4ac-82a1dadc2d2so75805639f.1;
        Fri, 30 Aug 2024 08:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725032023; x=1725636823; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gRLVDlLtYtEHFRW+z5u3RzqQq8Otkw4nKdbnkHz4B9k=;
        b=aOPpLU5j+hw/u9vZcez729O2nq1/Qj+p+hXHVQbWZqgnKFgmGZeoblLl04DdPNLS5A
         s+rmwpqB0kk1eVJYrBIN9Q4Q6g04xOwGLu1Cv1kPdJ2PZUviogIKMSgyCP6tgM3CPGhG
         bFpCI7L4LlLVgdM/HBmQpQisRgsl2SKOy49xQKzJlDJKC9uzzXbXX+y4R7wweUht0/qL
         I7cuxkBKGfKhhqod19/5dR183aFaA3i0A+b2QNXGZAzJweQxFN7p+j0CjVk3ToCszBpd
         rq4SD08Op6tlfYp2Me0Bir48F8OLATOgcC7HgmrGodGBfLMiAOn/rn1sIHkHvlWUW5Me
         kVEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725032023; x=1725636823;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gRLVDlLtYtEHFRW+z5u3RzqQq8Otkw4nKdbnkHz4B9k=;
        b=fzII7bNDjRcEaQrJ+Oaa16Uvzh5777ivdlma8NDsmQPHftAhhyPm9Oyri8ZTOFg8FS
         bvsTVqaaEv2q7DK0gEy8E7Tpo3QQbUFOeGWseyoGqAjcbdZrbm2jWqm9OAXcEyj4WmCh
         Z9zTmYxVsXPN6NWeIlr5fOn4VGkYVpWIramkjEcU9oyLa93lsCcBy54zeN2t37Za9lwF
         YMKdYSN5qJiQc305aHVElAchp5LSGTJuhMXGULaFuA+577Rlu3OE/Cxp84SiJ4i/ZV+2
         M0uyJQWq4lh8gobJuLtkh7F7WKK6qcp365pkPxtNovlGpXSUyDDmJ6BtdUk68DphzanN
         TDVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSqbwZuSotnSXJtx0ra4YMYCxT+oFQU0QaL2smeiqfoPjp7bTaqa+GGTidqvybLHJGrbk5iiuv3mVGYIYWbms=@lists.infradead.org, AJvYcCXZB0IWoRp/SUFwG7vn1gYiSngUX5ff4tfV/OTpQybIk4KjLUOnKeVCwxi1qfSV+wVf8VzJ6FLwehzHykNUDktT@lists.infradead.org
X-Gm-Message-State: AOJu0YxOya3Df8mXBtubZlOQAMjDQSGi3va8UWgvv6iWR2s0SUWQtHcT
	FYqZQ0XpiXTT/WpyZ7y/H0wejPq8f/TCJfp4hu88aVJOqQBPXo+H
X-Google-Smtp-Source: AGHT+IG2cWkWM/nBFDX7DVTMBeL0INFhcJoxGS1vmbMD0g+wj0qZPDln60G5qlg6TvjRsKkG7WqZgQ==
X-Received: by 2002:a05:6602:6d0f:b0:824:d9d1:e67b with SMTP id ca18e2360f4ac-82a110478d8mr615310639f.8.1725032023266;
        Fri, 30 Aug 2024 08:33:43 -0700 (PDT)
Received: from localhost.localdomain (174-20-195-90.mpls.qwest.net. [174.20.195.90])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4ced2e96209sm781045173.91.2024.08.30.08.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 08:33:42 -0700 (PDT)
From: Shimrra Shai <shimrrashai@gmail.com>
To: shimrrashai@gmail.com
Subject: Re: [PATCH v5? 0/6] Tweaked basic Synopsys DW HDMI QP TX driver for Rockchip RK3588
Date: Fri, 30 Aug 2024 10:33:29 -0500
Message-ID: <20240830153329.9170-1-shimrrashai@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240830152132.8894-1-shimrrashai@gmail.com>
References: <20240830152132.8894-1-shimrrashai@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_163347_017961_27A4850A 
X-CRM114-Status: UNSURE (   5.19  )
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
Cc: algea.cao@rock-chips.com, heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, robh@kernel.org, rfoss@kernel.org, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, ldearquer@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org, tzimmermann@suse.de, jonas@kwiboo.se, s.hauer@pengutronix.de, aarnoud@me.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, markyao0591@gmail.com, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, daniel@ffwll.ch, andy.yan@rock-chips.com, krzk+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Geez, my email system seems to have screwed up this submission by
duplicate-sending messages for some reason. Just FYI.

Shimrra

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
