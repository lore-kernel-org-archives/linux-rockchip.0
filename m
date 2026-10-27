Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59771606A31B
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 08:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NTWyXjXa;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=PS/dU3L9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GhGh2luufGtsM8Pr3dx/wt09J00NMJHxYiVxHRvLAYM=; b=NTWyXjXatCyCFdo7do+aT+GIzq
	sVY+ZvsuVGKch/KRBO2rt5yFOxL93Ba6aDHahJzgQJoAJHFmtGv/ZrvIfMCwzbDIXl63kAwhXVCi9
	+shmhr2q6H3QxCMQbDMKMIN7GOvAExe4dAHsDSyeaHptNVlnT4EnqZqt3ibRBubGzygG6oK5wegw8
	XjWdkWRNMPJRhWEYh034qW8pJSHHB63Q3gJbpt6qR1YryFpUXEa2Lc6chu8bN56okq4sCBxeAQPAO
	/hA2ONyXRcG1y1WO8kOEUxn2W36TaPVJrM6uTSdWeuocp7q3wKVJNGTePbCzwRs6tKw2zKirW9ex3
	COTZ7uZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLczG-000000046om-1quN;
	Tue, 27 Oct 2026 08:56:54 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLczD-000000046nN-2Ak7
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 08:56:53 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-2e83d2cc8a2so5851465ad.0
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 01:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793091410; x=1793696210; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sOH1HE42SviJbPJezzX4tQBmmbjpayWa7pABk2ZxVhU=;
        b=PS/dU3L9VB3RAPeScmiOHekx874iP8F2ERGb6VtSIRm8XufUqOrAvnFIwatAx7Kd9+
         YSuNFKGGT86stOLCbaBOQUYP7Exw9lEn/0CcsJCua7avCQbJ1xhFHg4fhxUyn27vFzL6
         CJ5nhdFswax67vNC80rOLmABUrm9qKgM3wCmPgWb9KjSymmVgd6dAjrFWc8j9byBHjvc
         ud9WWMCJyDUJvn43Ex/dNZCLGfkMV9ld75Oq1M3QbaTXcLkKN6bogSDDUr/JxRvJHv03
         u8AgO7QD+/+Od6vNAYL0AqpFYvqNwOUttDmoVa8YHkeYkqdyqeu6N2hPp2SfZDFYtMAl
         yL+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793091410; x=1793696210;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=sOH1HE42SviJbPJezzX4tQBmmbjpayWa7pABk2ZxVhU=;
        b=P5sCDb8CttINhuvVr8LQ+yHdCZcWVWgr5D25dpi4DqWfcqrWqqCmAABrWq2IZ0L/yh
         3hE/02IeYQKKtzYKOJFj8oaKIemIym274cEAro3aCrhPKGbDUMbMTmYkVoNwIer+B1T8
         d7G2PRrYdAQngyhIEvxmY+Gx+6bNz2YVOIjrlGXX3FzujOzVC1HFIffggZnV53UlDjU/
         9HC6SGsg8Ddocc/8X0qt3Z6hOSExX3WcEi3+aubQQXsS5H+HXhbTTVNWuBR1wWqx3HMY
         nYGQNKpr68qdWr/9J/V0Z/HXeLaYwIBRGby6D78gvZczLIk85CR4QkTSxnmZ877g3DYW
         /GDQ==
X-Forwarded-Encrypted: i=1; AKwUvBzXxOtJlOu4rmSe+wDmuGJayo/XGftBCTRGJ9DGVtp+2CnSRcNy4JMQuREBPjp2HXxtlizItaFNNvU+Pgqu2w==@lists.infradead.org
X-Gm-Message-State: AFq9FYKNP37J5+Q0Eso88U8FSu02nL7zWUSsVZu//Q6CNSR7bH9s8GPr
	M+oWWsXz1D51zYVQBpkPnHF6nobgAx/oQNFTBDodQ08NNjVqHQ0zpAQL
X-Gm-Gg: AYBFou0ff1OFOvSuAWGye8i6ZvGmNG3pvdfs3bAe+cBT2eVf7ih+JAuhmABu0keYheK
	3uC6woqlWVi3BMPT2PVpwzvyZ9JUPs6vHd7tLDGgyZ3yKgBHlUNGX/ecJNJCSoWQuCZYiuQHZhj
	KuqSqJBb4z9unFVBGHuW8GJSsGNR01He9OY7Tl4C8ojO9T8LE3s9yPQqyJYhNdaUitR9rBr9LNX
	DQBbu2kcYl7m1JlljDRRMLGRtXbvxxG8A7n2E+daJsl3MBAw0SSPfRUBpbVbi7dRou2H3akSuCy
	BwFjieCy9AJAfdb4Df68Rimke8bTwcFwtiZSFnXT9qT1IYf4wPODEtp3r0McvG2ibDyO+oMi2xk
	bHJ1RANbS2Q3D/KtrIwxhIM9CuvolV70jypti9nRrECFd//qMyNEPlifqwej9SCZRM2Iyfi2FWt
	/IsWTaK9Ob13+ZPE2zuAhlsHiJcscgqH7KuY6n+bruItkKbxodoagHKw1Kpr3lEqWMh2vdtdXXX
	tUJ6ae97K6D1uEagcJY7L/fz5wbWmEJbLEkGmveyJ4pYfYYaQ9TVs0Lk0pKXHI4sUyePYFX1jg3
	yHW99w==
X-Received: by 2002:a17:902:f70b:b0:2e9:4175:306b with SMTP id d9443c01a7336-2ea9c08b095mr121636605ad.1.1793091410353;
        Tue, 27 Oct 2026 01:56:50 -0700 (PDT)
Received: from localhost.localdomain ([240e:36d:b08:2bc0::a60])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eae6c91e1bsm5623875ad.59.2026.10.27.01.56.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 01:56:49 -0700 (PDT)
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
Date: Tue, 27 Oct 2026 16:56:34 +0800
Message-ID: <20261027085634.380872-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027-angelic-caribou-of-wonder-02ccc8@quoll>
References: <20261027-angelic-caribou-of-wonder-02ccc8@quoll>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_015651_559886_2932F24C 
X-CRM114-Status: GOOD (  11.50  )
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

On 2026-10-27  7:48 UTC, Krzysztof wrote:
>Maybe just install the DTB under new name if they are identical?

Thanks for the suggestion.

Installing the existing CoolPi 4B DTB under a different filename would
solve the DTB naming issue, but the model and compatible properties would
still identify the device as a CoolPi 4B.

This is my main concern. Users running Linux on a Sige7s would still see
"RK3588S CoolPi 4 Model B" in /proc/device-tree/model, even though they
purchased an ArmSoM Sige7s.

I agree that we should avoid duplicating the hardware description, since
the boards are identical. However, I think preserving the correct board
identity in the device tree is useful, especially for a product that is
still being manufactured and will receive ongoing upstream support.

Would it be acceptable to share the entire hardware description while
keeping separate model and compatible properties for the two boards?

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
