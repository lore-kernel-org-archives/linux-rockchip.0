Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E346606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 11:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3lE6/ro2;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=SLb0PxfJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Tc5ZwoD+XzHZTwCA3jcaOw6WwnsrTKguqiG1ASZXGYE=; b=3lE6/ro2+r0sxUD4UE0FnK3zJP
	upFIDKtv/4plt2eM/zewTHhaNPgmQ6vrkFsIjBXE3cj6e2BIo5AlmcsGjCyVrmbEfxTMSxVb32vZo
	aRSlBUhhTpmeXcQ2rOR4hgeBUzGvg8LMzaX120fdJJTE5pFTOrjfGI8rGHtp+X4XmAq2aFY5QsePM
	NfonmmITMre+c4TaEH2Q8JApMJZHXM1DIr1L4BZae0exvxT9ND52MxPSE/mnVHuO8yeqxKNi4XqZw
	lE96/KF/hBV0tqQlkswRDKbk3IHfgAm97InPGutf19b660QHlqI/I6JQHonitfadiHFdHGp7Bb8lS
	S2j4Ue4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVp1i-00000006QER-3Mj9;
	Tue, 24 Nov 2026 11:49:34 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVp1T-00000006Q80-3s8d
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 11:49:28 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4bb77a462c6so40121865e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 03:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1795520958; x=1796125758; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=J1NeJEfZebfbcpy8hj3dQLRnIcpIwRmtjjuLE6tESEc=;
        b=SLb0PxfJaSEehDCG29EP87znubKzT8rU1Jh+I65GQAtPUbY9zq3vhfhoq30n/zr9PZ
         IAQO6GdSX+1wOYky0j7KakgQQiTO7Sa/ZQvBt3/8OtkLG4j9OHgcKwCxGKvKg9I7SC/W
         mTj2CwH8N2IVBSeQ6rZp5/NoE4Y+wa+dTEq1W9bIEjws60LJzTPy4YHR5CvQAsm8Qsht
         Y1AkcM1eYM1eXhueLM/7cMMMIYEXdxcQfJQZXQcaxMeBXfSPcjLr3ql3eVjMBs3pUggA
         5LyxqnkftHCHGK+kAO6vi4B+CX/lcta4qg07BBFzRyNRf83SzHVgzNgpxCWTWjrk8/LG
         Gn1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795520958; x=1796125758;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=J1NeJEfZebfbcpy8hj3dQLRnIcpIwRmtjjuLE6tESEc=;
        b=SuRaE8NEHx9BA++ZumSNO6zbIEJpCQXi1yahfqjGoVyd5AkTgYgVu04o1ZZOO9eNIo
         xSKHDky1z/pM05HI28s0hZNyq2qmzicDcgGqi2YoUw1/F2s4P8BIIU4Dusn5klXWtf4M
         yXy8bui5zMWGC0dDz19ZWV/WUlOvjPhuDbAdmYrLMX1hQ2UGjR/WgjRDVSYHoWgcYJvj
         RqW9ShBsX8MGqSyyAv2lIwg/3lFU3ts12JGN0sAZfJ+1W+VDz5YqYah/xR3CtpV2ae/q
         x7S3P2KwVaTwL+Y9i0uGEdLoM1+b9CS747cEOYV00hfjJCwkJqrW9u0PmL8Cs9fCYIJU
         MDuQ==
X-Forwarded-Encrypted: i=1; AL+hErFFZz6q2HGeT3j30Vx/zPR5RyGkm1kFkYi4WRwksTCvdUhaCXyuMBaL6AAmibtkuMHNA1xeZ0XlEDEtTC2qrg==@lists.infradead.org
X-Gm-Message-State: APuU4Z991qzXpkyGCZWFOiP6d9ecdyXhR1f74AoPMbAKkdruA+QfQPjB
	0dbrFJ+n+agOsFp3dYeBgPVJOkutVvrMvGSRO8rgLHjrclGugx1c/6rmrmfKZXz8hUk=
X-Gm-Gg: AZFdTZdTBmnmYfbsDaPlRv9Jn0GdR6w3u5cfamUjX5hJWYXq/4w8n9wrnSOaNPdttWK
	84hRVf1Zhas3KS/Z+UaYvbBtlrCG6su3/RjFACkjOrLI8FTVx3ZJ7MmTyBGcEgSO2DfZDpC6CMI
	WwVjky0EAuU51Pp1C0691fmrU0Nan/sZixzYVpEcdAYgwONw4pfjnCkRpr6tbRFGq9bKuESH/G3
	pYOlFSKoUP2RqX3KRWZSWP3/PeQj1xPhfHx9ryXnEp4CL2N8X2LKcaDI+HgeOWdtGGHnTR1nKBv
	A4PwOUAww2agoKe5mJgFbDEtC/VQ2Z4EdmIVlfa5WJuROooe+gQ8CwycSB3dGJ8l+i1hNu1gGqN
	eMcRORClpSz9LNGbr1+qKuqCKmotyr2xc6/ukBNMfEkVW8ewIp6AfbDh7vI4ayDqX04BGDAhi9w
	3DDvFxfmM1LdM3zkDa9PHCv2mLagFOV8C8mmCGuw6S6NEwEiqm3LLQp0VMiuV9ehsgPdhhOF+Aw
	h4XBhOMDIOCIFtWgRsKT0L2iv6a/lWmdTc15OdDLYt/2Wu2Sm/MHDlPwBwYL/BBu6+5sz9s/Nf1
	X/T+pXMwJ4OnX/22AGemIwGztESiV1h8MQBP2NfnRQLGUOLFJSv2uauIxJqHdeo25cvarEJ3vbh
	0j2hfIpJr657YOtWFTuY50xA=
X-Received: by 2002:a05:600c:b8a:b0:4a0:20b4:ba93 with SMTP id 5b1f17b1804b1-4bb88818156mr290637705e9.16.1795520957605;
        Tue, 24 Nov 2026 03:49:17 -0800 (PST)
Received: from ?IPV6:2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183? ([2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb884a3a3dsm416542295e9.10.2026.11.24.03.49.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2026 03:49:17 -0800 (PST)
Message-ID: <99f6fa65-33f1-4865-9745-c092fff2e032@baylibre.com>
Date: Tue, 24 Nov 2026 11:49:14 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v18 7/8] arm64: dts: rockchip: add NPU (RKNN) nodes to
 rk3576
To: Jiaxing Hu <gahing@gahingwoo.com>, tomeu@tomeuvizoso.net,
 heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 p.zabel@pengutronix.de, ogabbay@kernel.org, zhangqing@rock-chips.com
Cc: royalnet026@gmail.com, sidong.yang@furiosa.ai,
 ulf.hansson@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
 sebastian.reichel@collabora.com, chaoyi.chen@rock-chips.com,
 shawn.lin@rock-chips.com, finley.xiao@rock-chips.com,
 diederik@cknow-tech.com, alchark@flipper.net, leonard@lausen.nl,
 vlwwwwww@gmail.com, jeff.hugo@oss.qualcomm.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1795478392.git.gahing@gahingwoo.com>
 <f1d20ec832e10a80dc813aa10697632e8024a685.1795478392.git.gahing@gahingwoo.com>
Content-Language: en-US
From: Daniel Drake <ddrake@baylibre.com>
In-Reply-To: <f1d20ec832e10a80dc813aa10697632e8024a685.1795478392.git.gahing@gahingwoo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_034920_818418_E4973B69 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 24/11/2026 00:01, Jiaxing Hu wrote:
> Add the two NPU cores and their IOMMUs, disabled by default. Core 0 is
> in PD_NPU0, core 1 in PD_NPU1. Label PD_NPU so that boards can give it
> the NPU supply.
> 
> Set CLK_RKNN_DSU0 to 594 MHz. Nothing scales the NPU clock or voltage in
> mainline, and the boot rate of 786 MHz at the boot voltage of 750 mV is
> outside the vendor OPP table and gives wrong results; that table runs
> up to 600 MHz at 725 mV.

I still struggled to understand this (particularly the choice of 594
MHz) even with your notes, but I think I got it now. Suggested rewrite
that will hopefully make it easier for others:

---
Set the DSU0 clock to 594 MHz for now. Radxa ROCK 4D boots with the DSU0
clock at 786 MHz with a voltage of 750 mV, however this gives wrong
results and the vendor OPP table suggests this voltage is only workable
up to 700 MHz. The rocket driver does not control the voltage yet, so
594 MHz (GPLL/2) is selected as the highest rate that we can select for
this operating point. Voltage and frequency scaling could be implemented
in future to more closely match the vendor driver behaviour.
---

Please tweak something along those lines, you can add my reviewed-by.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
