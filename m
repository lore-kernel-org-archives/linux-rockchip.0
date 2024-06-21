Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7F7FC2BA1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 09:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZY+54WVGpnWkoSmoFyDTpqX3aLYjbp1z07Zyi/DlELI=; b=W/y/71X4KQocA9
	oTzAXSdphdPHJOgJbB3+3Tlfr7dRs8pIynIZ5TYDHwZgJwEGsghle1g9oDQ6yNqPM0kimX90IC80C
	eD5BwVV4UJKurpiX7lvbpKq+B90qVXfm3M3pc6Wojb6Ec/NSDkN1Zip1iKYpk/ZtmxMBayKcLmRC8
	4cpI63BytKBB2tA53/fT0ALOYTh1L6Gt5r+iSF31ED2xfxp1Wj7xWiNpUtQV7IyjZf/O5oYBy8F9i
	9G6jvQOKcDADiv+nBjtqV4G2tMKTcyb6pVQ/mbhpHs/V/Mx4F0ogrKWXfeEON8EpKKamd1X7uSXIP
	xgXpHozp2kHvFkXCtwqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKaTl-00000008Wfn-42Ua;
	Fri, 21 Jun 2024 09:22:45 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKaTi-00000008WeJ-3wGo
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jun 2024 09:22:44 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1f47f07aceaso14347655ad.0
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Jun 2024 02:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718961762; x=1719566562; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0DChm4oZFs0LJKI90R8W/14zMUVHY5Ac9kAsA7OIYR4=;
        b=k4Lspzb1hrtW/awZeCNZhjvLFcKZZ9xn9H2fKlU7nVsQuCEPVAago4nNU/litkv5nB
         oabV49MInSYXkPv8szdb7wZ0PK5BPx2hA8LjdwYb7z1BZ9fTlQQcxEf0GXYEWrHBGLbS
         F7CUvjR0XWQ0Dr995WRd3D5/BO5i/wsa0KnNq15a/GCM7jxExZ396mb2PzMHwKy19YId
         BUJbT/SdfTDuvtLxYJOPdjPqm/zq5+GTLOsBJBvdQvyUnWVqxu6xbGd6ddgwVU/GvNYK
         p+Bl/eSwSo439FBnSOk1Qkq3+QOg/brJ0M/w2aklN7KzWg++fvHk8B/y4i37ilfpNnK6
         u8Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718961762; x=1719566562;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0DChm4oZFs0LJKI90R8W/14zMUVHY5Ac9kAsA7OIYR4=;
        b=T+D7cArOLjoPjUV4GC2SjEWpiRX4CQ8hdnILss0MgDlYErGQpL0bNscCQWPkea+O7Y
         fMx6g95NTwut0lN16Os3Y8XvKCgUol2qsR3rmcYetGOZtRXzqK3JIWG4+lGYED7BP9k4
         xzgr8S6AnaGFwky3RGuK9gPPa6vnzndeZXIZ+8r7YMxiTgzD2CWJyh6O9UB8J+B09ynw
         xH3TsuLKnxcGiY28rO/KFNX1vENb7WMbC821NSbPO4htTdQMUkxWYnUhfGYs3RxzYu3m
         WeS8NvsRQH/10sF3PiF5BjYfY1ie6R46NdKK3exQU5tstJb/1UUS+ULbJPQCFXMOk3dE
         xRbg==
X-Forwarded-Encrypted: i=1; AJvYcCXTRMuIdU/8BhRXZezkdasTTh4+dNtQnV4HJeqZCGbR+BngG82vDoJD2KqVGgr9+WNOCZE/CFbG9KCtgw3Vjie4flKp78XsjCGfXrAAlHba1MiG
X-Gm-Message-State: AOJu0YyZMYjMc/uiYKhy8YxB2yBknQ+hVweuzuyfnzB5H20kzKRRPtbT
	sZCQ+Ntix3btGCA8EYjmfTzumAORUxAWcFjIUmiNfBiCTqJkej6OTXjzp2K0zzo=
X-Google-Smtp-Source: AGHT+IEapwoXM3TE/uZjttS5wEj6FJq1+Ictg80vAM9P5mq/tKCuoOcx6e+5kChf/aTCKpsl/dBlgg==
X-Received: by 2002:a17:902:e808:b0:1f7:1a9:bf09 with SMTP id d9443c01a7336-1f9aa458609mr89974475ad.51.1718961761807;
        Fri, 21 Jun 2024 02:22:41 -0700 (PDT)
Received: from localhost.localdomain ([221.220.128.96])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9eb3c5bf9sm9761485ad.122.2024.06.21.02.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 02:22:41 -0700 (PDT)
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
	robh@kernel.org,
	sigmaris@gmail.com,
	detlev.casanova@collabora.com
Subject: Re: [PATCH v7 6/6] arm64: dts: rockchip: Add VPU121 support for RK3588
Date: Fri, 21 Jun 2024 17:22:34 +0800
Message-Id: <20240621092234.280171-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240618183816.77597-7-sebastian.reichel@collabora.com>
References: <20240618183816.77597-7-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_022243_000295_1FC06B6A 
X-CRM114-Status: UNSURE (   7.34  )
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

Detlev is working on rkvdec2 and gstreamer can't deal with two h264
stateless decoders. So it's better to disable h264 decoding feature of
this vpu121, just like what we have done for rk3399. If your multicore
patch can handle the jpeg enc node at fdb50000 with other VEPU121 nodes
properly, we can just use compatible string "rockchip,rk3399-vpu" instead
of "rockchip,rk3568-vpu".

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
