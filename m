Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D1B60A2604
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 08:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4RRSbcuI;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=jO6INF/3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dPm9/iW/FiH/2fOZDYH9lFIXWaXdBdlsoWRWvPkp6aQ=; b=4RRSbcuImjzUQHZxeH00yK/t+p
	uAmiCjhlOzlFkvrWmxcJEWc/MTfts5cQsE7rozrX7jngKEwuGeovE3kDBsN2r2W4ax70dj+imBzzL
	ADC0SxGepkJ1xt7cTe0M5BcAPLRrgIhnouhIRQf1lfNMb2v78T+YlplBROSakfG2SdhDuDSlmshst
	4aG1DSEiJPL8xlc6xZ9gZpJU9ebAShhohd1mel0LQ2y7OGPrFBmU0kluUw2AY9hvNWiEj+/Jv4dho
	332onEyyxuUJKcWvUB+2lx8v9MKYFCvqZZwTKTL/PAuB+vsDhDY7SW7bAkB9TSRTrAhkOwcZMiP77
	+VNeqSDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRmWd-0000000C0jj-2NWv;
	Fri, 13 Nov 2026 08:20:47 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRmWW-0000000C0h9-3wLZ
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 08:20:46 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5c14c0503dfso58039e87.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 00:20:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794558039; cv=none;
        d=google.com; s=arc-20260327;
        b=Mpnp4EYpOJnOz/MA0R6/J8uQqtByCUI4REbEWq/xJKHxPN+uTmG7GkQ8lywAmJXegs
         Oedeh7zmQAQP47CNV6X3MQwY9focVyF40xHFfAS0l2MKYfdU+mvr/cSsL5TKHA3N/pK9
         idEGbNCaNIQ2bZKygpAb2XQiW+06ZphFNyk0qOwj5FirQs0uP7nS/MvJe83UwJBBD4+T
         mziKEd1UzXG+tmLFyX29anbPT1zpq6fKFy+unDi+iw+4fUezwDBjT9ZZ+pSmwTmU5suS
         NeQJigrb+7lgaACanTdQMgKVcGFtf4CFpG08GT3fz1cA8DibAajbbYL/7LjzwIKCv5FD
         zHGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qfKfJJI7wxhAdDWtpsGEzNb54cWJZYAwY7eIBpXfiDk=;
        fh=lymAeTjTRd899SN69OAZrJWyLgN7GLS/ShArVyP3Ns4=;
        b=mUbhg/xOWrjJPSkjoLOGXOmVjEGqaMRYUTTBNX9Y4NohBUytPm4e3b9hHFflRwkzSp
         FxywEWt7dAqfaPdYT2eIbv45K6+fjF2NWFBYE2BObLv9AdRHpCssopMAlyzeBa3Q3oPx
         Gg4MOA+GNLAuyx+R1AzJJilKk6YzHgNcK3I/G1T7exCXkVQV+0aKVv6uutKVt4SO2wh0
         QnBu/M0/+xyq37yU7vPTApQsZNwHPUNKc+2NcTfX3kxojwy5J7w+KZsoRVKFOptNeV75
         k8osbNnMPLFbXvaKpvaGVUbxbQA8o329edlUIFMBa764MzNJUwVr6V0kDsiGz7ufvo4y
         QqwA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794558039; x=1795162839; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qfKfJJI7wxhAdDWtpsGEzNb54cWJZYAwY7eIBpXfiDk=;
        b=jO6INF/3/kqg02oMqn374kRS74DvTC4ukXAM+1vd15getnQXAKOLaUg+xE1d5q4p0w
         LhiHXRRkmU0vdlzOKGtVF6sIXiu5xg20BWdsW5d5Mx3SqQe/0JeLJJOeOZXXSVVdBWmW
         4rtz0iykdI938LfqLIwrOxI5DXVr3BvMwn/9gY+jjjQ/Qa98e5ZqlCUe5BqqXTSpb/FG
         uGhzSZa+4vFlxVfKu95jjK+qkvy++lQJLX2EGgPe1fr3aWq3r+W/uARZBjVR4bfMI8bV
         ZDbXqwU0clQ42ZvaTAao2a1vMBCZq8ZduFRROxxJJed8e/oVb/WhsUErTN1ohnqQbvMt
         RSdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794558039; x=1795162839;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=qfKfJJI7wxhAdDWtpsGEzNb54cWJZYAwY7eIBpXfiDk=;
        b=kiDkzs0Ch332TAleLs2z7G0gm5csMkX8hsm10HCDK0iJ31+z0c0q3+lNnSwF6M8UUd
         v5LaWFXkmTznFGS9iGBbxVM8KrjwX1z+UDu0Ykq9dv+22sxTm8wmZs5qy2pIXzlUTLmm
         lD1Z6+8G4aALTMY3PxeXPiLRk1TGl4YeTOTyejHrtKnxBgSdCbSpYetxBgld9JYnC6q2
         Th8AobNslnNcZ7oTwKp8RNBZZ0ymWYr+os1uWODFtxAYauPmL6UZIGyGKsalz5v/1Bvi
         53m292y3MG6rjLPkOnCGh9GQNivn51FdMzfjSBhQGDXtCyHx7L5RcOZxYU3RX3VTwnDV
         hxxQ==
X-Forwarded-Encrypted: i=1; AL+hErHKVF0DVPdqaHJPvY9QksjlSPH3F0+8mdKjeI0pCililkeu/pE43GEQccc15URFhFNUPBg9vms7n0kcmu1GKg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/PYSw0vp1azdat/xRi138sCnCkGq0fUdrb4VzoZmHMyhYrrxsi
	fOoK/nEYg/wP5R2UE9Z4xTAD5YCeHUJQ1B+OvG5qKLJLxCR5GAFK+iqp9py02ASAer8GMlXYHwU
	ACCAL3lCTaYltXG4qyIWHwT1ciOBqLo0=
X-Gm-Gg: AYBFou2S2/XTpllkTsMA2PZKp/jtDk6hWt18mLqGq3OCAatq71/OmWJCI/Hzh5X+NWB
	9jfD//oF1NkUC1H6Dw4LdUBKfavGM+QLXiOSGqDzkHS0iTW7pf4HhgKli+KLfKtxCRUani0ulUp
	ZnFqHLaUCyNofJnePWpjwsOIpzrOnMpM6DbtqbcLsUCUk2FCdLg7QtSfjoV0yOq+s943A6y0VvN
	TmNOELosm3Vr61FcPWHExigOSIvBoxct1kFT8WIFxGQ/ldTfFumsMDxW25nvmEUhZvZv0v2LmkR
	3aBEyqy/mEwLYPMIuli94xFzvq5HqxLwu1vzNC0YNawNHJSON04TYWk6JDXGrEzYT0QOXOFz90B
	eHX1/Ih+IgmSX61VeASG76d8V2csb69pwNdu+FQ+JomFxNK12ksVZ3wpGZiBdhA12r4gTVxs=
X-Received: by 2002:a05:6512:3e0d:b0:5bf:a66f:e5e with SMTP id
 2adb3069b0e04-5c17058b108mr849129e87.0.1794558038625; Fri, 13 Nov 2026
 00:20:38 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261110-usb-port-pairing-v1-0-9307e29d2ed2@gmail.com>
 <20261110-usb-port-pairing-v1-1-9307e29d2ed2@gmail.com> <CAGb2v65goAuKgYu-849171FGeCxZ8Cq3GUxQLDLaHLbhRTMmqA@mail.gmail.com>
 <CAEy9hNV9saBWyKxuMR5unmLjzBM2+S7u+FewEevuLV-6yo1ztw@mail.gmail.com> <CAGb2v64xjbc2t+fMegBUSptiwT5FQBqc8aqiVkLjwfaB+3FV0A@mail.gmail.com>
In-Reply-To: <CAGb2v64xjbc2t+fMegBUSptiwT5FQBqc8aqiVkLjwfaB+3FV0A@mail.gmail.com>
From: Arun Iyengar <aiyengar1990@gmail.com>
Date: Fri, 13 Nov 2026 00:20:26 -0800
X-Gm-Features: AclHuK8fPl6O1DLxtbIbOB_Tvsw2cAGJCYYC3mBqm8ET2-FLO8BbsLPv08rZzEo
Message-ID: <CAEy9hNXErDHYorhMp+xVz-A1tYs7JSEdFYApCK5AO1nMAFDqCA@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: usb: generic-ehci: Allow describing the
 root hub ports
To: wens@kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_002041_575235_68BDDCB3 
X-CRM114-Status: UNSURE (   9.41  )
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> It should definitely use the raw port number, since that is what is
> supposed to be used in DT (and what is used in ACPI).

Thanks. v2 crossed with your mail; v3 will use the raw port number.

> FWIW I'm also pushing a series to wire up USB on M.2 connectors [1].
> That also has some code that does OF graph lookup.

I'll look at it for v3 and reuse what fits.

Arun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
