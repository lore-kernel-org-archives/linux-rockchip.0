Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A07A4C67861
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Apr 2024 10:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBLUmp/BKEQ9AWcJq5zSFaoXQ68SMZy+n00w6qF6k0w=; b=Y+neSLIPx9/5Ad
	/XwDd2KkZ96An43gBXA6JvMSB953nCMS0tHBNEe15sC9UiGqC4H9k9r8Wzqg94s2UhVblKkLiiRzo
	qQ3e9jCRjC3EzzH4dcmrfJucyOu2ylCGaO0LW277PjHdeFvZKfawrpeGiutKBAYei5+PyBXvoAR9z
	o+fmqjSBDiK7M1AEz60Zga593Be2cIkGo+7k3U9fpLlkD2eTzpoJR4xvbkB+16eZ22SMj/GLzs1bX
	TjyA17VPGr4uBOXoKm9jLYJ1zCznjQQYt7VhTCWPFjs3IaWJSk7VHBOiN/VR5NbP/oaX7xrCzJ51S
	RHtxt4slxzAEtVOJtj7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ru8mz-00000001TiA-2Su2;
	Tue, 09 Apr 2024 10:33:17 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ru8ms-00000001Tai-1biQ;
	Tue, 09 Apr 2024 10:33:14 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-2a53a4a283eso1267491a91.0;
        Tue, 09 Apr 2024 03:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712658772; x=1713263572; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IfKFDBLlzi9VPnikm5bTXrOl3CHU8r8CdsogC4TOvLA=;
        b=Qj13IL2nFLlvmNU+A3kc5S6lfedXS5CDlfLO8jff2+Iv+BkEkrH5DZVqC4LV5iBk9V
         bRNdST+0uLiBJiocu9GKvrI8j1oAROY8km3S+PxJ+/+yowf3D9vrRjt1RZ9aUUBAy3YP
         zjQbrI3rrQD9s+swHyy7ovgxPzw1wCBGS2zO6GcMr/b/HM2v0hRGg390TkcRqTtFBnjj
         2qDdlTsHYTsmDxUahO8l1B0NmYLpDjJfuBN7V2aIltP6bG2vl3Aw3N7gVPBSeuXnOC81
         YtGPbw6pgPoW5G6aJxQHD5efqicRBc4kGnlVxsv4eNlwTOYp0xtW0PW533j9NrivanuI
         tNIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712658772; x=1713263572;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IfKFDBLlzi9VPnikm5bTXrOl3CHU8r8CdsogC4TOvLA=;
        b=tDVaP/n38msg6BEG4uQjC6d4xjiN+6y8bJV4eiGLhIDlBgUDBeDQGHEMq+PY7rqzJU
         5dxg0lnHfH2A8kXAVS0w64tQ8SQWCVcu/ZQzXsh03ZhGM4APKHD0/GB2TitLRSudLi0/
         JxWbEkTR8POcvkoBWhzhkYEbBUOrpQLme5bXm0Tpqj3DLsQ2jQXEhiZlBv1zKoEWewu7
         ztTiQQYE6aKR0LhUsaFYozfRLYktY2+4pO8Rsy5iSKPu+M3t4XSL4Uo1yNK9DW/00qvr
         t9LsuDVUNQwAHkepwPeUqQMul+uq7S7L24TNt2HlaRRU98jDCAyd/BIbQZA1tWAf9EUj
         ROTg==
X-Forwarded-Encrypted: i=1; AJvYcCXTTZac+m7Vt35Sj7rJktZFstlc5e27W9Ij7ZHLiJYQ65fbI2RNtcU3ioP6EDsfBKWURNGvlfD83yV3oybfSviWNjJN4pn0fxPhPRJbqkUYSIrts49o+IaBoBLZE5UJN+VdGELhXlayyKycAEgv7YvOSjgZ0CnOceM=
X-Gm-Message-State: AOJu0Yy7wfHtyELumsypPQoFxmN0Xs8EdrYgdQbZ2S9aWBpJh4PPnURY
	36yW0QMoRaWShHSfi+73BLiKv4oPBpBFZrRHPXBPQc6Gr/6hoWVwj+VFGVIBPh4MBPfK
X-Google-Smtp-Source: AGHT+IFquuwc8TpE2J4AXzmuDJ/293GQ1bZRzsZtYME1+K8tbEzMq456Hq3Ygvoa4KWXJJ7e96ErWA==
X-Received: by 2002:a17:90a:ac0e:b0:2a4:d43d:1617 with SMTP id o14-20020a17090aac0e00b002a4d43d1617mr6609927pjq.37.1712658772217;
        Tue, 09 Apr 2024 03:32:52 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id ge22-20020a17090b0e1600b002a574ab7f5esm956337pjb.53.2024.04.09.03.32.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 03:32:51 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: liujianfeng1994@gmail.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	sfr@canb.auug.org.au
Subject: Re: [PATCH] arm64: dts: rockchip: remove startup-delay-us from vcc3v3_pcie2x1l0 on rock-5b
Date: Tue,  9 Apr 2024 18:32:44 +0800
Message-Id: <20240409103244.47813-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240401081302.942742-1-liujianfeng1994@gmail.com>
References: <20240401081302.942742-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_033310_536064_77658D49 
X-CRM114-Status: UNSURE (   7.24  )
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

After removing this property I still meet the wifi card missing issue
today. So this fix doesn't hit the root cause. But this property from
rockchip's sdk kernel will definitely make the situation worse.

Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
