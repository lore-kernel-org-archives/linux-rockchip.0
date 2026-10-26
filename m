Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C415C606A323
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 07:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uztreAld;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=sfgDtCOL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=E0w5Dyyi2vK/Y/Kfs1SmAOrCPwA5w9Ng566zSTXJytk=; b=uztreAldtQYn99tmoTdSVpWx+g
	r9jM3Oxj+z+oQ2F3e1e54fWmNAzTYIqQ8psdsHqYl9aFyPFfwfem+YcLQIGKOSjdTs8pGKQfN/Xfd
	/1d+FdKg3hszKA9+A2N1/kIDOcKwU2/PUeejGxUXJtqWB4qY7HB2YPgyAg+gOX53kzbAcEQk6J2+i
	D1OlD3U9pbuLSm4BeHKm8hhB6kxWrxIbJyJAIOHpbk55p2PnlimeDbGqxjd5AYnOpH9xlbGEilTqb
	77Zm+za9/H8aopBK9IHW4W/Kc7akZWHSzSVHdUN+nwSrulAg7DGeQcj09aBIm931RG8bHffbH40Oz
	E+f9/chA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLFc7-00000001ukB-3hto;
	Mon, 26 Oct 2026 07:59:27 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLFc5-00000001ujT-11Df
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Oct 2026 07:59:26 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-3acb1224533so338856a91.2
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Oct 2026 00:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793001564; x=1793606364; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5vbNRlDHh+WVWhm3sA999nt53xsF4EJNCqmMp50Sjyg=;
        b=sfgDtCOLge0UN67kb2gfkxYpP27oZGxtTSNeis6tVC5VBl4Hsehfnzea5kNEl1CLd+
         /UsZ3i9SRThmXpmdMXeziigDm+061lasK0rOT6oMfgSlfzUwf+kS1Cu4ClPWgWbcB035
         /zDKvaR95kMS5PvJ5a1r1n8z97H83uLNRrs1WF8ZOlUy7V7ArTZepF9Qjxg8cPaEv8p2
         6y2poWdRzPCG63paMzHnL7yDewe7wuKpbm8nHxzjyKdQWDQZu5TkbNgN+uY4ZcOGTR+D
         PEMyrFAt/8hLfS3+ZsegWtbjm8+Kscn1H0r5qrEWwBWWnFnel7VBwMry4k5Kfm7TcM+N
         qsWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793001564; x=1793606364;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=5vbNRlDHh+WVWhm3sA999nt53xsF4EJNCqmMp50Sjyg=;
        b=iOwCE3XYprepTU8jlQdzQwANHG7IZItjxweIcfR8eRzLHBSm/ztfS40aXT8eFWmdQ2
         ssjf6SiEUaUoGJcePHfLuSQDUGyLorMTd/jkvClGYYnUTiJIEyl/ZLaSkHuhy5Mq2Z+n
         ZWfVw+GjSTH2IwNYi8IaSe/ZI6rFdeP8ZB3Xku4rmKUiav+1Ml+8sY0UwerhI7BMVIbm
         Do/YBvTa5/YL6cornc5WqAWhjlGlymbjwKRJA14jIBOdhiOfqKf7q0svCrBF8+9JPx4y
         msWWsejWUPmJmpxLZuWt57GOmml3ahLJW1O5uWsgvJXijFFD1Vr5opybvaiEVjSQGU5w
         i7Zw==
X-Forwarded-Encrypted: i=1; AKwUvBzbCgdRiO9INJ63IolKf3941l1QhA2nvYuX91MCMquDbc0O5h2eYbbyRk33xZFJU1dgC409M4FjCmF1N6UjOQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYKAF/8n3IClhMPNYalC9+Ry7AuMtolkDV2eaWEe4qL3j3+v9x3c
	tM5HqgK5y6FEzyjQ14x4bG9Gg8zdDxdjMqpBSCTYKDRC7Rl+vxZpmVvi
X-Gm-Gg: AYBFou3rLAoPz2R5f563lK0pcTbMaLL4UjoemIc43Bzb8JINz7xGEP4NzgG+vJRtZcS
	yQuGmyeg9QJ3v23kY7ElYbDjUgWpVTWNQ2Y7YseC+fAOwOYm9EObYBd28c88g7kzGSqpdsUsy40
	BnGmVczndgecw5bX33epJfX9r+xzmqrKr1SJ3q5FKOOr9umaeWMWI5u3qt5hSQKvlH+O5F/wvKW
	RU7K14T70Z3Jq0KT1TPvMzHIgZ9WIc8etI31gFQKSIl2TubQCIXAgJiw0rZifAHjIGCoA+HszK8
	QNcZWKU6aBi91pv8H6ICyp0CtXGnmLF42mKJgczmyQW6/nCgVRDmG6i04Mo++YB6/kb/XdouGjh
	hl2Q8IohUquJWioqgXOmsA7F/yvdTTGOlc8AmOC0EAu7buIGmd9gXL5OlnCWQi136Xt//r/+m65
	Xuadgb0Em3wanrDYOfad/a6gzdXJ9+QNAA7OLZr4YgVnPKpj7N9Sdj2iKm7koAUjERXR5YYNSEd
	PFNtM8l0pWd6FG17ZiludyN1xXOd97sOiHkGT98ipPQG53u5KtFqE4Mcau0OBBfqGTP9CyJu+A4
	uqWo
X-Received: by 2002:a17:90b:2d84:b0:3a8:736e:c19b with SMTP id 98e67ed59e1d1-3adeaf9ce48mr9020240a91.4.1793001563928;
        Mon, 26 Oct 2026 00:59:23 -0700 (PDT)
Received: from localhost.localdomain ([240e:36d:b08:2bc0::a60])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3adebfa4102sm7490258a91.12.2026.10.26.00.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 00:59:23 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: krzk@kernel.org
Cc: HystericalDragons@proton.me,
	amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	hrushirajg23@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	macromorgan@hotmail.com,
	michael.opdenacker@rootcommit.com,
	naoki@radxa.com,
	robh@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add ArmSoM Sige7s
Date: Mon, 26 Oct 2026 15:59:14 +0800
Message-ID: <20261026075915.203854-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261026-luminous-traditional-gazelle-0e3bb3@quoll>
References: <20261026-luminous-traditional-gazelle-0e3bb3@quoll>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_005925_309932_474B303E 
X-CRM114-Status: UNSURE (   8.88  )
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
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Krzysztof,

On 2026-10-26  7:08 UTC, Krzysztof Kozlowski wrote:
>> The ArmSoM Sige7s is an RK3588S-based single-board computer which
>> shares its hardware design with the CoolPi 4B.
>
>How different devices from different vendors can share design?
>
>
>What is exactly is shared and how did you verify that?

I confirmed this with ArmSoM. They purchased the original CoolPi 4B
hardware design from CoolPi and confirmed that no hardware design
modifications were made for the Sige7s.

So the Sige7s uses the same hardware design as the CoolPi 4B, rather
than being independently designed.

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
