Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0275606A326
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 19:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UDKrAIhd;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=hlNgVOf4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=mcO4UuLvN9jzjYjj5b2XJMSMVkr1TtHq0axZ5vmjxYc=; b=UDKrAIhdRLfrxeunRk1eCY+0WJ
	dcw3hKx3N1HOxzdpxDyN9bbMZCbEo8gSOOIMEuvrRjlraJz95tyEdbQYz28rQeAs2Yw2pNuGhXX0c
	rnzo1roTRAmbC5rOG4sKrJcMyVjFfQ6GEJaOQsEJ/hsX/wSCt9pyDefqqWmYYl5owK9OOr/J6vrQq
	g53msVBI8O5y4uS+v5hcuGL7b+BoErQHudSQFRNaP2kjpu3MHiiZ9gHFb2GnjGQmSKvy+NZEGCFPE
	QuCYls4iRfExb+11jblD4s9dPNq5XD6lfArD8Ccpftlt0IYXL5w3wwzPkf2cTggw4oqHBNoLNu0tr
	T74U1GaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOK6f-00000003WC2-2gnE;
	Tue, 03 Nov 2026 19:23:41 +0000
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOK6d-00000003WAL-05QU
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 19:23:40 +0000
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-6f74f6b46abso2621456eaf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2026 11:23:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793733818; x=1794338618; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=2bf+ycJ31FjWROHBLtqJsAsms5ifHfK4LcWycDMaIZM=;
        b=hlNgVOf4LwHxfMvj+F77+boQ2d7wxGb/nRc0ngxMjnJLq3D9gbCmmBYjHD0jV8MjFR
         wBPanNwWq0lJWMgbkp18WiquEXHbPpQ+q12OMaJYC4u7lf7D3nAWNXb8laj6wNBAx3YO
         oAl/FNvfhkiJ+uywmBaL8Qu9Vx/1B7q0qMhcoRmR7tMeuuVUqj+9vvRI7SzjXaP0s+ZO
         biKsVXaO0EqnCkEQQI3pTsuNTlMrdjW7y/gxGX9BvZYzaO0JKQ17orJjzdyoexFm5Cmr
         lo9PkSrM74o5boIc6DVi9w1CLmviL9/OyGzM/rGOKuXumzupwg1SYJYamsg132MIZKVJ
         4t5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793733818; x=1794338618;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2bf+ycJ31FjWROHBLtqJsAsms5ifHfK4LcWycDMaIZM=;
        b=LaVLlrAe5ek7gxhPujPerDLn9lEYMiWRgxn5+mxA+KJExVz2a2xVFELcw45phPZQK9
         /9967Lm9ijphzxIH4lcJmiFV/yrkKd/4JElDoJj7GO9jp5/v/qFXLS1FJc5gBI7xzz7b
         3ijkXuU4R1KmV9UFyN6MkGd6qK2y41+35YkGxG7T4ssCnL/gIA8WiD88qhydhvgMCHEx
         Uv4n2O8xv9Fmv4ChGl34TuZYIobuTs2po1r8DKE0VXf8m3I79EhnXYBwaK14GwGCKMou
         Hmt0bR80emO4NJrUSDt6k1fLpc+c2NJHdU8yQLOHEB+xdKyhTA1NpFRKyFcicoqkm79j
         ldvg==
X-Gm-Message-State: APuU4Z9OirtrVwlTmibGqXEbDnaRqmxLJGzQqxxsAk9Xkh5+pzlz4trN
	dJAqR7ox8naYYB1Ha0ZyqWVjYvSeIJ+1SSwRrSXc1pMUusGAGAcvxjR8qYSMKs4x
X-Gm-Gg: AYBFou2LR0eFVIO12nR/fXPfK0KvDJlwvysfHqEt1ecvArzFPTdTIca/spc2HVorb/8
	27CfVltrzWAR/HLBNbavliK2Dab/qSioYpWLXwlQQ2qj3lH1lOiXsTd8cGqSN/Zb4VwBq2naAUb
	rEPiSD9fHiTERSLXwxUZmEBpz/94mY8xj+TovAcTq7gxQM4aUgqfMoHblL2t2rKG9Gu/okjMhkb
	9U5MeUuKlVUhkb7rbOvo0Ga0uRkNt3OLBgQudNRdXEs11ZWrqkdrACtUR85B6ViU/IN05C0LUD0
	sjT/s3U0dWHgN/2UFMCkCDy1KesyIQLYDxOajZY8BFjs6B9QpFIg0cteODdC/nefR1wvO8zHGfx
	HkaDgsQwZkex+m0bAfqjXoDkzBhPXL/Cb0gtGpMNDZQZNNGZa6qPpkAQxav5pdwLy217bb65lAm
	GsZ1P3f8+yD6q1gOmWZHubEpJXxtZF362zt7m3kW932OH0Bx74G6I1sMV+9Vsfjem3LTtd91Gzu
	avWEezefsLLbc01AGCASjfQ7WXZIrihi9CZBDVsIKUGmMdfdJ8GPvmMqkWHDd4qPifwpttc5KQg
	GkhDQOVfcqnStQOsQJgt08NxKZHVZ3vFtULuNbRQJE1eX5CG+4Ef
X-Received: by 2002:a05:6820:4612:b0:702:f890:e113 with SMTP id 006d021491bc7-714f242df26mr6473969eaf.9.1793733817847;
        Tue, 03 Nov 2026 11:23:37 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-85ef3e16ef1sm43323a34.14.2026.11.03.11.23.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 11:23:37 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	david@ixit.cz,
	detlev.casanova@collabora.com,
	maz@kernel.org,
	michael.riesch@collabora.com,
	diederik@cknow-tech.com,
	shawn.lin@rock-chips.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tglx@kernel.org,
	daniel.lezcano@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] Add rockchip-timer for RK356X
Date: Tue,  3 Nov 2026 13:23:29 -0600
Message-ID: <20261103192331.394489-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_112339_084827_A6BD50DE 
X-CRM114-Status: UNSURE (   9.84  )
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Add the rockchip-timer to the RK356x SoC. The timer for the RK356x is
register compatible with the rk3288. Address range taken from BSP
device tree and confirmed with rk3568 technical reference manual.

Resending since I left a few key people off, sorry about that.

Chris Morgan (2):
  dt-bindings: timer: rockchip: Add rk3568 compatible
  arm64: dts: rockchip: Add timer node for rk356x

 .../devicetree/bindings/timer/rockchip,rk-timer.yaml      | 1 +
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi             | 8 ++++++++
 2 files changed, 9 insertions(+)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
