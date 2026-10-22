Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF66606A319
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 09:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aaNWY2+l;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=hb9N6rZC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Yb9fMieW087lkSNUKbUrvVmo3XAhmV3udm4Akz4kQHk=; b=aaNWY2+lJts5ZfjZFgSUd+Ly1z
	wgrZ36EWLjwdC3AUMzhqpuCdUlsQEJSknqIwjd0ZqQIT6tv9VZOpSdcZ7hoStwk0//v4lLocSFBws
	noqoN9IgGWF+Sh7eiGTR3/9oq2H4QSN5WTSkTH2p3ksvT7245AeMwU1pjt6+zHzqUS/jSQu5k35ng
	JjjTxgX8+zqqjIIaSBjS8z803zidjVdwfmJmvXAhVjWtaTcgxxwTWrYI97e/G14cbxSIrwKA6FMoC
	OXYXQdvAo8XOJDxM45PmB+ZQTyneqCWXCbrmaSgrW2zYwvR+cE7coHslzrFUeHxuZZlm+NpRz3KsT
	7zzlHuIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJpFa-0000000DqpW-03g7;
	Thu, 22 Oct 2026 09:38:18 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJpFX-0000000DqoX-0KLM
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Oct 2026 09:38:16 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-c40e30c26a4so105103166b.0
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Oct 2026 02:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792661893; x=1793266693; darn=lists.infradead.org;
        h=content-type:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Yzwu7Mo7blUPO2g2psRpJeiXJWtUOEqjjPI2Ak0wJ68=;
        b=hb9N6rZCCZZESe/FpfiXXEMvVlYCVWuJh/uCKldEZkTX9MrVoTgWjVNIsx8mm4CR9a
         f/nRyAmQnCvtDjbhc7GxOnAr+b6/uIQFx3Gqc966rm9c/03HrF8oyNXP1jFRqcQBgnmL
         iuOCdzBdCKYEoycqNHynG8rtf75yB+48q0/5b/OlY2N/TIkbrGvezdquNlfc0fgCSCup
         UnlJ1jMTz/Z5PFZvM7KrMkDccqty5ECMWqNuq0oWL7+N6Urp0VeDYDreeXxmGmTMSONz
         FjvsZbp9/sWDZLLcRORXdeUmoRh93O8z57NY4Kozb7agR31s0LMHtTkYnoZNUB5ocf6o
         bZaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792661893; x=1793266693;
        h=content-type:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Yzwu7Mo7blUPO2g2psRpJeiXJWtUOEqjjPI2Ak0wJ68=;
        b=yGm5g4MmUkl+8QnM3h6n81Rp9tUCgAebZ7X8Aoh8KjdRT2o3/I5Qp+VfuPc4m7vyiB
         g+OOjgHTqvZtHkjdAeaCudMCUnIvJF7dPpkQEMWRDSpVlRdMEHBpsZhcaq4wtokjogwe
         RF5QCmcGsl+JbnbbrqwtsJ1+ZYmq3ZE3O1eo+rT/+bXnV3kfhGnPeR9Sxe7Qx0/RL/6L
         lPFcMfmg2x3Od6MaDjBh2HPCTUGy+ZTc0qO8LSXLh9QSYNRE3v90kIe1z0tstl+mo/eA
         VAxmYt3x/U6rkwfDjDTaL5f0fXlYf0/ZXm6wMfYeza3T7aYWNroZ6k+HEUSiqlO5QdEu
         aSMw==
X-Forwarded-Encrypted: i=1; AKwUvBze66Dbyw56nYx2m+xTHmuTyedrGuMvwik/4tYudwV8KAhjCxfWA0OGqReJD+BDiVRiObHubKEmFYNzpVcq5A==@lists.infradead.org
X-Gm-Message-State: AFq9FYJbOgELWI24YQZKNTUHvi/jF/o65jGcU0gZ+nH95m18nM0Gl2t6
	EPvVe7zzeNf8m1DWR3VIYH7DmfTsAnUQpuUGo6uVJrAm7vNoDp229FmM
X-Gm-Gg: AYBFou3gdl+MMWQWMrU47mvxzsMvzvUbsv88+HnsRNLViImv2mh5Tz+81jN6TA4ucQG
	wDkk/yEa5djn5cztdeo0snElQQQlgjN1SWGDpFALhUOk30DOhEnHsS9kvXQUVkkI5LA/pENc76q
	OHmgaEOwLiDa1r2IMXGKQsGZhIY954iKSKvb9qSlYcX9I854oNL/n5MfNaI7LNHp9Qj5wGr81F/
	3vD+5KYSR3Mea11YIh8bifX/uka6o9+HnlNbttKhOfR8bwhry5BlbQyk0gRMir8CeLAvdamifoG
	374lJY7nxbtWGtYQNOiuRg06/1WTNJbe8cwY7bFYPJIeC2FPIGa9HKiRb/PS6eDzvW1WVnrGZPK
	JIxva7/TAfL/HumrO8vOUT9WdYp/IgQJxbqaAEi3doLOSS+/54kLihWWZrNjECXXFL2SSaXGbdr
	uahIo71AyNugh+7GWO40/YAplldA5MNa6ChCbNYvqo9wUiVAX4EwBXeGwO4hZmtEqoHbPWSCug+
	S+7r51ci9c4U+trZACar23T8bOH4GTzHnibCDEH+JNLvOIMAHDLefnZwj0wq9/H1+4=
X-Received: by 2002:a17:907:d18:b0:c2e:616b:6763 with SMTP id a640c23a62f3a-c468d5d92b9mr198921066b.3.1792661892804;
        Thu, 22 Oct 2026 02:38:12 -0700 (PDT)
Received: from hp-omen-16.localnet ([193.107.16.241])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c468a55c1c3sm87755766b.32.2026.10.22.02.38.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 02:38:12 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>,
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Dmitry Yashin <dmt.yashin@gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: net: rfkill-gpio: document reset-gpios
 property
Date: Thu, 22 Oct 2026 14:38:07 +0500
Message-ID: <W90ai6epRoWrikRmhqTrfA@gmail.com>
In-Reply-To: <20261019-aggressive-frigatebird-of-courage-9cc7d6@quoll>
References: <20261016-ok3568-c-v2-0-068d68430e6d@gmail.com>
 <20261016-ok3568-c-v2-1-068d68430e6d@gmail.com>
 <20261019-aggressive-frigatebird-of-courage-9cc7d6@quoll>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_023815_129647_C963655F 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
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

On Monday, 19 October 2026 11:49:17 +05 Krzysztof Kozlowski wrote:
> That's the same pin. This was sent multiple times, why is this time
> different?

Indeed I overlooked previous discussion on the same change. Thank you.
I did a few more tests with the wwan modem. And since this approach to
handle modem reset more like a workaround, I'll just drop this patch
with rfkill node from V3.

-- 
Dmt-Y




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
