Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEBC606A33F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 06:12:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LL4lXfYR;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=bdMeXh9t
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=IBQsTB/rVG/3thOZ0T3I/KD6jVxQs8Lmv7ME0Drd+NI=; b=LL4lXfYRcMNE4VClyU0IjOZygd
	K4DTX8rCaZRUXzg8R8pOq9omr8Bwmj+Cn3870UFRgWZjer50fR5JzN2se7tSO8KfXaLleHS+DouhA
	n7X3wk1ZjfcykApBOWu1jBZlE6hrwZmpiNqPCXw4yxJbDcuDX6KwfLkRvc0fIdQCJM+YDe5ScwWN2
	58pD4hwJheX5acn9SU0DL+ALTSGPsH8io1JDGpfHTe+sKfIvAIfZ9/U+2SPFPo7DdBqHx3Rck//2H
	PVY6eM9t6RX4kvTjUMo3kiFVYEcPQ0WLO7ADosCayDCIJ9BIS8Exg9QQ/gAD9TdlTTvF2rE/kRTGE
	MznPLSNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO7kk-00000001CJp-0QsK;
	Tue, 03 Nov 2026 06:12:14 +0000
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO7kc-00000001CJ3-07iI
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 06:12:12 +0000
Received: by mail-pj2-x04.google.com with SMTP id d9443c01a7336-2e831901331so29362535ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 22:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793686325; x=1794291125; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=kbCkmRLiacqgEr0yA1tZg4DGh3TnytEQLj8xoSVFM2w=;
        b=bdMeXh9tC0Fbw3gMWb33fANaMO2/4iaQPKrDH1G0/EFzktSyc9pr+kiqT4iDajKfxL
         2NoZuLSVDHZV/xnZYvnFNqGIPfyYxJ3N89ifOoXnXluIzn4AQFs6Sopmy7HklM9Tl3E1
         qzc/Dw1y1Gd/3nCIptbc+Ke/uXEs22I9CvAgVGo2DqyQfbEpkncRQ7I458LjCUtFgixZ
         Afr0/HAPIwhAC0DvKHMvl02tC8Id0xG5CoCkT35D/Bsw8UR+AMKrrtaV4EpZyMAli5tn
         tRKerHCDOhs4we7XhnrNLvENEX1R7NhMRzTHTezMoXPNVu2SC/4khgSBhY6Px+jnZ9I9
         OetA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793686325; x=1794291125;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kbCkmRLiacqgEr0yA1tZg4DGh3TnytEQLj8xoSVFM2w=;
        b=VXMM/zYxFKEzkdGuqVGt2lK82vDDQYZWn3IfyszTzH+M57iUj4onRRkgqv1hxpEbW4
         Fj4r0ydIcEuJ0VcBy9wikWe9asRed4E5N7Dc0qZKpuxJJHb2zOi7JJilQ3s7R1iz3BJF
         pZAsXgsowvbECKISBa2ORl2pjmKuOMPacU7Yf0r2kFb/JVe4qeuJ2a1I63XlBGnKGTL1
         TEz+NpyPd1G8kNjYhd6rTdrLBZVvAamSbc+bOwwyqzBgsvZzVZS+t/xUlyR0Wx5SUSGX
         FtBv//V+1aAosrNuTyzBBB4zzCplCfG1Mc62yrVb4b6qXpOs0ttD9V4lqIqnN1NVSefz
         hy9A==
X-Forwarded-Encrypted: i=1; AKwUvBw0jBojWSZvC71QJUcRLwqTkPCCtY/dLpiU4nnkKHNhzwsf+cea/uhbpgVNhN73kq4OaRZs+1295YNPrk7mPQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z9Wy1GdxSQVQLZ3y3WKKPIirVv+rIUPi/OXp2v+ep15Y+xpK9l2
	q8NozDzyaleUK6Ai6fNuNxYu/R7adLDt0LPv4RgbfFx58Yl7kAOtF7EP
X-Gm-Gg: AYBFou1o6pbUqyTJx/p3Is32Cm7hYC9Wavx3lTD18PJS3j8lM6irxOYgOzDXieavOkB
	RDcgqGV9eLFUH/rq4NWub1TzcGnLvLRhyo8CMAsskHCGV0jvSdHqcIyKPWWxxYp0eyjASGRGqJi
	KQM7xqV5SOaC9rzkh4ZoV0nQVNiQjpdS2jls18jMSXIqUHl4wy3aZINh+gMfT4jR3V0ud2H4MxL
	aarE5qQFD8MEweeGvAbuNxWxVxXRJHIUxYG9YGed7cwWVG5zyUb6i+vYSh2mUTF0JI/T8VX+Cao
	WteyvYVdtmymZCrTF61e75VQmw0eIuFI4LYNYzUWre+UKEIStZApxA4Qx39Z3ZtCJgPdKL8IfED
	dtj2DYo+deLrsS+yqkIQb35sCyzpn7aPNbd1mvJoc4KPpm/cdJz+VnL4shWDKscgkHI1Qyw3TKO
	wd1qZr09J63Z+4YJ6ys3v8O94OzpawrWjNYbLZPfbWmdtNjxaCCsAS2Zvh3aEPcMEX8D7iAfL2J
	dgk4tJ3OpsAQwIdiD695Fs/KA9XrBfr2th9TW6K1kVX8QPlQW/c1BSbOQT3ZcNakNoTKlZhX9ba
	+eykger3WPjElub2HdQX+kjUS5IHMkMA26k6GKs=
X-Received: by 2002:a17:90b:534b:b0:3ab:4f1:4f76 with SMTP id 98e67ed59e1d1-3ae898127f4mr10100410a91.24.1793686325004;
        Mon, 02 Nov 2026 22:12:05 -0800 (PST)
Received: from ehlo.thunderbird.net ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b07c627260sm2564063a91.8.2026.11.02.22.12.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2026 22:12:04 -0800 (PST)
Date: Tue, 03 Nov 2026 14:11:59 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Jakub Kicinski <kuba@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net] net: pcs: xpcs-rk: limit advertised interfaces
User-Agent: K-9 Mail for Android
In-Reply-To: <48cb8a9d-622f-497c-a13e-bc679c764ce0@lunn.ch>
References: <20261029094916.3127193-2-coiaprant@gmail.com> <c5fc86f9-3c43-4aee-8d88-92e8f88c6d5d@bootlin.com> <1B8D463D-1295-4BF0-972D-859C342E49F5@gmail.com> <48cb8a9d-622f-497c-a13e-bc679c764ce0@lunn.ch>
Message-ID: <27E466B0-72FD-47BA-B952-68BF4A817A04@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_221206_406575_2CC8031B 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On November 3, 2026 10:54:57 AM GMT+08:00, Andrew Lunn <andrew@lunn.ch> wrote:
>> Hi Maxime,
>> 
>> You're right that for modes the PCS does implement, the limit belongs
>> on the MAC side. The complication is that the compat table describes
>> the whole Synopsys IP set, while a given XPCS instance only implements
>> a subset of it. That is a historical design issue in pcs-xpcs: the
>> table mixes C73, C37, 2500BASE-X and 10GBASE-X entries, but different
>> integrations implement different subsets.
>> 
>> On RK3568 the XPCS instance is wired up for the C37 SGMII path only.
>> 1000BASE-X is part of the same C37 core, but I don't have a PHY to test
>> it against. QSGMII is not implemented in this core. 2500BASE-X and
>> 10GBASE-X are separate modes the shared table carries, and neither is
>> implemented on this SoC. C73 is not wired up either.
>> 
>> Trimming the mask is not limiting the PCS, it is cutting the shared
>> table down to what this instance actually implements. A
>> platform-specific glue is the right place to do that.
>
>Are there any registers which describe how the PCS was configured at
>syntheses time?
>
>	Andrew

Hi Andrew,

Yes, looking at the `xpcs_identity` code, the core does probe different
MMDs to get the rough type: PMA/PMD MMD for C73 and VEND2 MMD for C37.

However, even if we determine it's a C37 or C73 block, that only gives
us the rough family, not the exact feature set. For example, a VEND2
(C37) block might not implement 2500BASE-X, and a PMA/PMD (C73) block
might not implement 10GBASE-R. The MMD ID itself doesn't tell us which
of these sub-modes were actually synthesized and wired out.

Since I only have the Rockchip RK3568 PCS documentation, I don't want
to blindly touch the global compat[] table in the core, as it could
easily break other platforms (Intel, NXP, etc.).

That's why intersecting the platform mask with the core mask in the
Rockchip glue is the safest approach for now.

As a bit of context on where this is heading: currently, the PMA layers
for wx, fbnic, and nxp are separate source files but are compiled into
the generic core module, relying on a shared compat table. In a
follow-up net-next series, I plan to split them into actual independent
modules using an abstraction layer and their own xpcs_xxx_create()
functions.

This will allow other platforms (including Rockchip) to do the same
mask intersection and PMA-specific setup without bloating the generic
core with more and more platform quirks. Right now, dwmac-intel seems
to be the only platform that completely relies on the generic core
without a specific PMA module. So keeping the core generic and doing the
narrowing in the glue is a safe, self-contained step that aligns with
that future direction.

Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
