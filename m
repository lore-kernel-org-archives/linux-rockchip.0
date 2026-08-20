Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4F47C5DF82
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 18:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0783LVio9xPbvJZeW0UA5BpN3R4avAZX9nuPZL5ooQg=; b=bp0t7z4K7/Ocxo
	tnDQbfgSxl5XFqih6FGft4Fgzf6ls/T2cSVT8DKXk7YjQNs0ij9eSWspt+HQkFFnSgBs1l7B3t0Gy
	16BhErcp7UXSLyng0kTVDvOi68B0gwAwXnUX76iA4as82gXM3doTKaLbjRWJcSfOSYm2Zsvh1V5lf
	96EWFBWJcnsAhq9npXnq8aRGz5yytjPUM2PmBTS7iYCGQB/n/3undryhfr8CJoJa67Q8lnm2EyaAR
	wAUVvHpGoyHP0THJL3tvZFIaRRmtFf++cGPETi34ERglitqbIXJsL+uSuVa5krAe98hSuGar1TwKb
	v2Puf0Hj5LE+4VhSrTtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx7rH-0000000C4b0-3Jkm;
	Thu, 20 Aug 2026 18:51:23 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx7rE-0000000C4aH-45SY
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Aug 2026 18:51:22 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-481595afa73so26546f8f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 20 Aug 2026 11:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787251878; x=1787856678; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Pp5J0jgzAEL526K8MSIBx0JpzYWE+QXYN3SwjN7BJQ0=;
        b=J95u215XqUuZ68zVRhDHiYkJAP9LaUSF+lZBkih6tAnIgTijZwsdFws1XE6JXzbHpL
         JxrffoGdXRpJ79g4+cissV2bnXu3vDCqroETaw5Xs+L6bIhUft0cva8DVL1YziX1Az9B
         Gxo/2aXBost7BWgOUn+Hc9f8TeZsmu5udy1ri5iU24afuDRImY4b5Xyri7WNELIpvMeY
         55Mr0dkeLUqYUHh982FMWZItm87dGVRenb7dqfIwkxkb6k3SqBmF78ALNFhkpdVhGrLW
         Io+3NMAOWNqZg3bNU1DbYd4Z2uX3x6wmf0S6k+ktlbHEOz7+wkRiHgY/UiP/3E6SP+8Z
         DqfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787251878; x=1787856678;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Pp5J0jgzAEL526K8MSIBx0JpzYWE+QXYN3SwjN7BJQ0=;
        b=HRqfM1H/0VdQIvXXTcsak08eqeWMrLvmVX4DdW+KRiZ7RWn9/DBJJLxeaRQfBupF6v
         8SOXsmGBgMZwl2tIMvsacbmYh93e++ULEZiNngQnBb7z7nV/LVeyioq/vsgymYnGGAyy
         LA7lpHufPZTBBSJEp/NeGPx6gKDHsDugPIzjBb6+zKdXOoObhnFBoK2lMHKs1c69S4lo
         5R0U/5zQscXaAoCYfTf71vqtSrtCgN2gCe2tJ4TukiOhyJqMflTROF0rt+bMlO/nwzor
         Tm/MxARZFW560LI6amDnu3wPNp5TGiVWszyktBDW+a8tI7rotjG3ZErfrHS8q7Gc3blM
         WfVQ==
X-Forwarded-Encrypted: i=1; AHgh+RoIGUGC4E0zvrXZboHJv60hkF/rrUHqmeObesl2FMp88q+8OSFF9HOUeqcrp8UKgm05Ty+FiWRmD0dHsOWa1g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyb/awvodOC3SBRYox6C2ffOCqJe1KXXxFhUbhDaQRFLrABpkrG
	TZIOModmykaeGIxckZm2E1R2fd8vlQyzwpXOnVYG319hZM1KcYyze38a
X-Gm-Gg: AR+sD11aSbGqk8vMW9ZVgGUcvgMTsXA6gVByFpYlRwWhbyCJtfOCc22eKUulKx9XJIn
	WdAqEjHUweQ74nYe2FkhsPrtbLuoVtPCOP07wpNhXuzoauF4r1CDBW+dXyeLogeKVjfytLv+ipi
	1qTxlX3M+h8wmSmYij4gTsvBtiwoSvjWX69LpldxEvDV8vON52MuM2HUVnIleV+ni0bMPsMKutN
	dGb/DgI58abspgTWgOr9LeIC25byEa+aPLS3Qlt4ysGpwMHjlg6HZW33DO1c2pMRPTs1dP79PGa
	8eFq0cdJ++tA9auZsn/AI1KQWSQYjHDDijszvIN2Ot1ZJlKZckqmsahucvpSBC3CfjCG+OWIELm
	Q7kRFLnKpUhmRU5DkeXTPbFe/KTdLnjFBXgdkct4UxSYuft4W6iJvjjVqhkGzc1yiNkh2g7B/qO
	Td/reFwpY7oMKfCz4nRO2nVnYTpWGR9wr0JNx+TGrMyKQJ1k971V/SBRKewvYfaAo/gWTc7w==
X-Received: by 2002:a05:600c:548c:b0:499:5b0f:72b with SMTP id 5b1f17b1804b1-499b835251emr9349565e9.1.1787251878389;
        Thu, 20 Aug 2026 11:51:18 -0700 (PDT)
Received: from OrangePi5-Plus ([2a06:63c4:9102:701:512e:da32:b75b:2535])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499b91173c4sm684915e9.2.2026.08.20.11.51.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2026 11:51:17 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 08/10] accel/rocket: add RK3576 NPU (RKNN) support
Date: Thu, 20 Aug 2026 20:50:55 +0200
Message-ID: <20260820185056.20643-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260820100715.750660-1-gahing@gahingwoo.com>
References: <CAEWPSH7ETfw2TDjUfOvcVtDm19FC43x2vP=Lh7m+XPOGptnPWA@mail.gmail.com> <20260819105723.632029-1-gahing@gahingwoo.com> <20260819154634.7584-1-royalnet026@gmail.com> <20260819184838.6723-1-royalnet026@gmail.com> <20260820100715.750660-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_115121_037666_A03E9F2F 
X-CRM114-Status: GOOD (  13.93  )
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

Hi Jiaxing,

Thank you for running the sweep, and for the shape of it - one field at
a time with the other four held, three baselines with no drift, and the
honest reading of RESERVED_0's score printing after its timeout. That
table is worth more than the five lines it occupies.

On SIZE_E_1: I would keep it at 0, and I would not shrink the diff.

My reasoning, for what it is worth from someone without the hardware:
your sweep just demonstrated that the traced value is load-bearing in
four of the five fields, failing in three distinct ways. That gives the
trace as a whole its authority. A register built from the trace with one
field swapped to upstream's value is a configuration that no silicon has
ever run end-to-end - not your RK3576 (which ran 0) and not RK3588
(which runs a different register entirely). Keeping 0 keeps the value
honest to its source, and your comment saying it was measured not to
matter on these two shapes preserves exactly what is known and no more.

One question in the same direction: by the SIZE_E semantics you derived
on the 17th (SIZE_E_n + 1 = the number of 16-channel atoms in the last
bank), would different output channel counts exercise different SIZE_E
fields? If so, two shapes cannot rule out a shape that leans on
SIZE_E_1 specifically, which would make 0-as-traced the conservative
choice as well as the honest one.

And thank you for being exact about the tags - 1/13 carrying, 2/13
dropped because it is no longer the patch I tested. That is the right
call, and saying it on the thread when v9 posts is better than either of
the quiet options. The re-run offer for v9 on RK3588 stands; the harness
is set up and travels well.

The trip went fine, thank you - I am answering from the countryside,
with the same board on the desk.

Best regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
