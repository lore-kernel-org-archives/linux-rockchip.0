Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC56EC46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Dec 2023 10:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EPleMvqdvI9iGryoJfs3szCHDssBRkf7iP45CeJJ44=; b=uXXcHTN6CqKla3
	Qm/f8MNyCwbBd3DNab71D00j80o/3B1e3A24ixDY7JJCOZGK6G+FIyx+/yVRu3whp2R4bV304j/hl
	GHyDgWm9VwdZ/0CZS+t60ZlCodvP0W+hoJovXWbPhwyDeLuhriv+Mfn365zScDFSJXSWN3CRP3tWE
	QP6EMuhk8A4JeSj1aVn1ifFxuFmOagV2qpoX6eS+oZ6o7bvQtxB/xm5GPXFq14zezgA9zNLaeiHlL
	/9jB/DCZ5fKrMpE5jm0oMWR/uc/eJA8tnLEeCkrfjjZMmTdc6bS1KWLHHnxSIXi+ycbZk0YYFj1EF
	ddi/91aRTZ80KPyeKVyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJWSO-002Wob-37;
	Sat, 30 Dec 2023 10:20:40 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJWSM-002Wo4-2A;
	Sat, 30 Dec 2023 10:20:39 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1d4a2526a7eso4106875ad.3;
        Sat, 30 Dec 2023 02:20:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703931637; x=1704536437; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4XaXtsrgSXYum/vGa7ZpC/g8Y8EoPoiL6Ss51LA99lM=;
        b=iaeJ1Cf5hCEiJhckZOD29DkO7Qt+mWXJoEUrpbB8ytilKD2g8Ulw1p9bzw0K6LrHMj
         PevhrNg5ljRBVWQr9OFrF/YtjM7N2SbS2jHAm6AwT/47v2eomHNB9Z+JZFSdrncBLXWH
         tsvE9NAsRru2ymLW3QKEcYiaWHWNEDgluS4XtobnZBaTx1SJrX0iiaRm52sUDaHtcQWT
         G1GXIvj9U4qRgYjm6oJ8WCsjokArjbL8GXMNfq67zK7uQHKqNRYVg25P7TXY8nsr1tgl
         ErSfH2Xf8FVSstrLomzPKpY5FgshNgg/7pb3dC57Jlj2dV+QaMMM05IWPYb+jvN1W4EQ
         I/Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703931637; x=1704536437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4XaXtsrgSXYum/vGa7ZpC/g8Y8EoPoiL6Ss51LA99lM=;
        b=ouFxawQtnl8yq31/AaOQYweeL5/yRftLauHUaVz1qQxBecbOWJj8kl3ujBwrwRVfWC
         KSOmCO9xg6wtNdTMwTb+SMmG7hX+QL602eqvbavlIEXI6WkyvMblHTPKT8dsRdoFUpyN
         wQWOe/xVVUEN6kRl5goh+rxHgKLkdfqin0iIzE6OsqG9rcmyTaij0163iCxKJhddbvnx
         8kN3NThJ+DuXJ3TC1t8eltTM20nSNZzCsL6TaJhg24/sk4CNYGp9dz8uS330f0v3aAwV
         GnX3aRy0Ec4/9STVFzEqe6BRfAfRT8oOc5b94CZslJBa4SGoIKPpW42spUPAIbmdjGN8
         gSug==
X-Gm-Message-State: AOJu0Ywx/Ekxz/wlquWTlpGE0FBH3GA2es39lVPZgafNSvxrtErMHyI/
	QH9bvI5SVupyOpWnJsrvVrg=
X-Google-Smtp-Source: AGHT+IHtd3W1hmJqeHzjse7BNVqjjzNfPExVuEDemRsdmZbWPy4wmQhiPx0NDD/Ifvyn7rdVCRojUw==
X-Received: by 2002:a17:90b:101:b0:286:6cc1:2cce with SMTP id p1-20020a17090b010100b002866cc12ccemr4180950pjz.88.1703931637268;
        Sat, 30 Dec 2023 02:20:37 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:23b7:4d83:3222:c5dd])
        by smtp.gmail.com with ESMTPSA id ok13-20020a17090b1d4d00b0028aea6c24bcsm22160649pjb.53.2023.12.30.02.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Dec 2023 02:20:36 -0800 (PST)
From: amazingfate <liujianfeng1994@gmail.com>
To: sigmaris@gmail.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	mchehab@kernel.org,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sfr@canb.auug.org.au
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
Date: Sat, 30 Dec 2023 18:20:25 +0800
Message-Id: <20231230102025.3740749-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <CAAXNxMRkpM+dSV3azDFgm07ygJrXyS=Htz_h8Z_WMmeG0YZ+ig@mail.gmail.com>
References: <CAAXNxMRkpM+dSV3azDFgm07ygJrXyS=Htz_h8Z_WMmeG0YZ+ig@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_022038_732707_A4C6300B 
X-CRM114-Status: UNSURE (   6.96  )
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

On Fri, 29 Dec 2023 11:02:08 +0000, Hugh Cole-Baker <sigmaris@gmail.com> wrote:
>The node name should be video-codec@fdb50000 to match the reg address.

Hi,
Thanks a lot for youre review, I will change the node name in v3.

Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
