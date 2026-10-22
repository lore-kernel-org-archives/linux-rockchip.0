Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F60606A31A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 02:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=D0mkXga3;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=XOY4eqH/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+QsBIYM9c1vK5kZ5Vbmiy+MdSugsoO9vvEJ4GIe/rk=; b=D0mkXga38fZIAX
	FYPNpl2CCwc0zL36bsv85P2Vfmh0eTzGwnzeGscPhLSkBan6YO2VGpjbeVGknFT6Wa+DTesH/M56o
	swlOYGfwrs3oO44feb+5NRgzeMERDCTBu6Sp3CUKFsgH5yDrkhepbrTDRf5T16C5gBUL4j9vVcu4I
	z+iY2ZZaP8j0d1c+WzebTBfMBsvx4ycaCeBUfRiYkdVP1Cx9eVMaYwacEaJZ+2Guat62gWEFuj9hY
	DTk5RrKnXX1IQQI3LqbvVlk9t29w8sKkNwidbocShyQbPKue8qcjU1IFEhhBsUv79BTCStiKNPWt5
	B/iKHszvOMl5NN2Zps+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJibk-0000000DDLF-3pJ9;
	Thu, 22 Oct 2026 02:32:44 +0000
Received: from mail-ej2-x09.google.com ([2a00:1450:4864:34::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJibh-0000000DDKC-3ddM
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Oct 2026 02:32:43 +0000
Received: by mail-ej2-x09.google.com with SMTP id a640c23a62f3a-c3ff043bce9so38195166b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Oct 2026 19:32:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792636359; cv=none;
        d=google.com; s=arc-20260327;
        b=PEmtqO4pM7z71QYpzQI3otfcVS1AR0gv9llJ1xt4A4KOK0cvi+nGPRbTOc3PZmynyv
         +LxXgK/lWHtDMrAOqug5A7prPM5FF7qIg329KXJCCms46xXmP7s59CF3JBUJym6UswVf
         8F/fYWvvOgbthd565W+vlMeK1J3vP4J4TpTK6OljloGLwhaYBWIA4aofGgv3xFBtYYB9
         xQzogZuimWRjA0W5SDEq/YGvILxg1g8yUbF+hrStApExmyUx9Y8FGLN9Xd/TLivmKjrO
         KQRbobxKxg8zFV7J4YYfKxjCC8z1VXW/oksprAs6Te2MPK7jlpj5HApb1opEOncgv4j0
         +ScA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Q+uH7LfbW9ctIqeI5N5cYZFPbAGWdBnqHFnNZQRtHCo=;
        fh=udn2jge/dVEiJUvlaFFr7r2LLAW0utR2wuIKgWZxr4w=;
        b=ZMDsXdsxrYA162iIo4ScnfLF8rOYkSEcCkvSURuchLmNXh6jJH+aCZ9rAsWpNoVZo4
         FqvEAhb4ENJRvoL4c4Po95EsB20+wH09QENTYzoGpctuG6o2hnskoYc3vclWx88Bbumf
         SKSCB+setQCmb5NSub7RQdWs4R+5YBxUSg6f1n4vAsnURbJJ7C+zHrnkZI3+CwbPe1Sj
         Z9dVIROQ8XWXNysJgvmczt3xMfJ4xCqTjgzfshHIp7rNTcT+XFPWpKONVpdbsFioFqHp
         hH0Fkmstux9ifKUeM/sh6xhOgHOpBq3sKD+iNYGP/E/pnFAP5blfMMZ8963G6qW4aR9l
         NDmQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792636359; x=1793241159; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Q+uH7LfbW9ctIqeI5N5cYZFPbAGWdBnqHFnNZQRtHCo=;
        b=XOY4eqH/IfU5D85cqXWL2UUzIQCHh/cAJZBy0REQijcPdHKUIM3vsCya4h71xLp7S7
         VGP9a7qF7m/VDqgujVtKw8F6280O9TFAnjMNV5Cpz0HFG9bvi072SDUooDP4XFWefcvq
         4e7Vw6HfTs6L7H984sY5SiPVfWq6qAscbjuJf6r4ciqm9kTGkMvxMWIDfaIMj2PDrtlP
         3mByJUQCDguoreAyNhBeFG+4drT8m4QI6A6oi9klcIgGf9Xx0qgME6tTTXdDM2YS8H54
         JwVLENpQyXZJa44CrVtyA8pgC75bqasDUcYQOZ4WS8ZW39YmKctngUE52rtUxct8l0Vk
         TnVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792636359; x=1793241159;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Q+uH7LfbW9ctIqeI5N5cYZFPbAGWdBnqHFnNZQRtHCo=;
        b=c2WVpEoXALlfWypvO6CXVpYVFsUW+Teq+bgXbowt7dyaJY/UYK5cf7x2GIsc/PeN/7
         9LEomZXaxTE4XDpHI+YDwmuMhbEV+1k+klJKHAD+Wrr8oCZ8kiJPMJLJkRJMJJbypFSy
         ObE1ropnYGtCTCF8hMOE36o88Mk/7LQBKG1Fi+v5pLiDbry2zS9kc69e2A/eIzwctJkc
         tYoGiVd1A2gsdCunV1EgT6/tDWvfW+PZI93ij57x1R5JhP5H3OLlfCsm0bjJTI2c3Hyr
         DwjaUU9jm1cfBio3GnfubV6MhcJ1SEvGFleTFWc+p4h5fQnc7UvrsUaQCJYQ4BTPvTWy
         2uUw==
X-Forwarded-Encrypted: i=1; AKwUvByyI2WaS8GmQ+jqR79cuv5OZ5FffcWRzNxDA3WzMCBDf3OcWfio1fEEWCugvzjjKDq8M2h+yRDHQKu8X1qH1g==@lists.infradead.org
X-Gm-Message-State: AFq9FYKB6AaghiQGn+UFWby/E1eTKUzXb825mk3YJOWx+gALeeZbsPHa
	HkoHhY3KqSQcqMnXQhdaunyFUjU0IhwLH3qHgeGOcyE9ZYrpoH3kG1ovOc+jZUzjXheke69AemG
	DzDIHssJ6vfONVe02YZqvgb/Om4HxQ3c=
X-Gm-Gg: AYBFou2wY3MOVVqWnPdvy5qMUYaudOPtVtxiRKKBmn1GK+mF6g58IwPn8xvLY0H+bhn
	w5hOydGUVlcxRETairdke8yVpUUSsPsOX0RN616i3zmlEI/vO/9VAfdcyWzy+M9ouxZXHVnBcxF
	i5zXc+6iUiOi81HIlZfF5GHgcOiPQh7nW7GdPBlTxRtbMiAKEqvI1KdXjy1am0Gjx7BN8zKou/u
	3PriUbrNtLNlJLA9yFFo8wS4UkzzDQENPYv59s51pZo93gnKLLIlcW8y3tfDP9JDBCUkkmcGpL+
	g8HYxKWvFaDBUGB9E0y3ifmTsp1PAz4a4An4Oyt7kauTfmdc8KD4qY8jbKLHi7M0YL6sounwiIU
	LBB2W0vYTbGzaYQB85Kp4zJSwtuIIgo5AACIU0lCuw+881ENBbv0lZ/bGO3O+
X-Received: by 2002:a17:907:9347:b0:c2e:4f16:fbf with SMTP id
 a640c23a62f3a-c4679797086mr354694766b.31.1792636359268; Wed, 21 Oct 2026
 19:32:39 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261006162807.2843858-1-coiaprant@gmail.com> <20261006162807.2843858-3-coiaprant@gmail.com>
 <ac2a4e80-6d35-457a-bdc5-ee8511198bec@rock-chips.com> <CALj3r0gQ_U2ZUJkRgF4NdB1Gd3A8ZT3T6qjLhwGZPg=VUXLsrQ@mail.gmail.com>
 <CALj3r0hSyVpn4Upbun4DOk5hdOH+fzEFG2E3LpfvS2YUXH8twA@mail.gmail.com>
In-Reply-To: <CALj3r0hSyVpn4Upbun4DOk5hdOH+fzEFG2E3LpfvS2YUXH8twA@mail.gmail.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 22 Oct 2026 10:32:27 +0800
X-Gm-Features: AclHuK9kgEi-QHylQHY7HMeWPzlEQ4T2NynHaEv25TGkNX-ohXQB3EsA_FVqaQo
Message-ID: <CALj3r0jg5Ht9UUJGryuNdJdegBkPQgSTPSE6amjCr0g0PE7i6Q@mail.gmail.com>
Subject: Re: [PATCH v13 2/2] phy: rockchip: naneng-combphy: add SGMII MAC
 selection for RK3568
To: Vinod Koul <vkoul@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_193241_927663_0EDBCE3C 
X-CRM114-Status: UNSURE (   7.32  )
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
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Vinod,

Gentle ping on this series.

The net-next parts (XPCS glue, dwmac-rk SGMII) are now in linux-next:
https://git.kernel.org/netdev/net-next/c/5e91edfb0e45

The DTS changes are waiting on this PHY binding and driver to land before
they can be sent. Is there anything you'd like changed, or is it just
queued?

Thanks,
Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
