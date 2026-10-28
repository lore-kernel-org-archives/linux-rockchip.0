Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA01606A31A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 01:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U6OJkf+N;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=b3ojDiQL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XLWPfHI18yUiv4Td4+fmaIiYIfdmfABG3Tia8tlHZT8=; b=U6OJkf+NJpDmjpTjc+m1C/NV0k
	LOVfQ5moOOiQ4KlQWyOBkf7Loyb26uh0sn4/u7/jvkyjhV9xHqdsB6sIzludE9klWbzcHz5dKwb6U
	Sy9lHC/lhvo1Qzccv1vHu6JEtFcPnku65YqABvDU/dUEhfFcehAr7/zfDNEYmFo5TCIGJXJx+q6kK
	kUoiOZR7gWpRiPSjmrJFBs4xnO7zZfzuX1WZrm/iw4784IA6SfYRZ3mGqD4o7rs5GwtU8uZGUxuTy
	KupxPPETbi5ignuPgAuaPnzNaWdRvpoiqsbqYHzmsSUAUMd9I116/+f+8JUBGcsOuDaRyPwZzMcz/
	+U+DGorQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLsop-000000063ct-1TzW;
	Wed, 28 Oct 2026 01:51:11 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLsom-000000063c3-1Yoh
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Oct 2026 01:51:09 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2e74a32a07fso562685ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 18:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793152267; x=1793757067; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MeEhGL9p74hRILnxnbLIZTyexKrQv0qHFAgQnNnxF4A=;
        b=b3ojDiQLXYNYMBZMO0jCyRiJOoSj6QsK9ETXxKZAmHV3BD8iYMvUMKLWivTLnOaYjv
         pXtYy/VX9q/W3iQQDa5jnKDygdcgZykqzVoU+CD0c5ogSQIGJyS3xpVHfwnNNjDc3wCN
         DW7SwxOFogC27ddCyOGXyqZZ9ayJH00bqfHTzta+NkuMc05mG+VNCMLj+wykWc1yg2Ae
         a21FQLtzM9FWivJFQh8dYj2syRXbDw8Ll8FIy1xncaxaP+ZmMVJMYdQgqQ3juPjcD167
         pEeiZ5LY3JsDqz9p7d0s/5ZyG3lSFnp9lJ9DWs69scDqRESgcN/slTFI7PJdEQlW3AYT
         Gt1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793152267; x=1793757067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=MeEhGL9p74hRILnxnbLIZTyexKrQv0qHFAgQnNnxF4A=;
        b=SwEvC/6W+HW9N+S83uU9zQnAreBdbZ8CUQwXuCBgmdEOOoYXa/TJov3Vps57qc/7JU
         Zt4yDJudRFJc0xJrE6agQ/9NByFoVJ61Lak142/EnHA4iAQmLD15NOrF7k6VNF8AqnnK
         znodFuYA3Cbz2ARJ4kXJ96vnvUXSkeoSW9aTO5foqCMUmeO8s7rIy1/SRP5YuRPx4zD0
         wPOSonP58m9HcT/pNqJ/mX79CPxSq7B0DcLzOhalYwuFbsQ8ws+BGV4lyppco5gQjzTt
         WT80G8hV7V7VRAPJKyLijGr8jSZJ9/xc0Hkj3V9ofArmJzEfuDXB7eYr7MUBnIAvG+iK
         jY5g==
X-Forwarded-Encrypted: i=1; AKwUvByw63mTPCp7mM2dmJf07Li9DwAyC9y9aPiNVt7Sq1VVoVnRr8eaFSvT9P2iS9yUrWiESO3pTf2Ze2NwhTNYvg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJJ+2zp55Tp1HEIi8KPn7Fw9h0DvyL1cah+EAAbHC+Xezifyydv
	SjAhSgg10l2xYC2W1AQDquPqxXqj39/U2YFIhqvPdSgd0YZ1ydcla5zX
X-Gm-Gg: AYBFou1YLshCSW11kPCC6nTBUGNRjr3eiD5aS2RhOZSZEbTWWOnGgEM99joVlObFZho
	aMJEfolEqcecwDvOyB1uxVu9NFJPksneWHffYeDidhw+RcZE+0o04C0Mo+MQsYVwggfsi1ofXfQ
	wGChyYVopk9vg4TJzRfilMviBGMid8+dck2y6//mseWNZSjGT29F//gSh6qY2ioak2zTsFPBE/s
	2DVs0OqCWiGuSJXs4Apm6uhQXvFnp8rrWttEgvVSE8/ehfA9sPV26pI2z4DMaLtQwy7OJvfBk+t
	y6qBM/jYpTCCpc2GwvACFUq93zovF+k9kWKtbafTK332p3G8AEdLqAKRyL3lgw81oNiCvAA7Ayo
	/y9696nmt/guaaIhX6kCgBc7y2Y/H/WEHVxw5iGp19lo0swJwT8EH9K0dV96QqMOKgP5hKUgVPx
	BfzljaCBQlEQGOGRvFkg27mbgQf4MztvlsA5+IeoEjeB1iWZbWCKNOqTJQF6ehWuWEf5fJLsmVj
	BVOib7bUCIcdXpR7S31lojM233Ip0yyySqcA2e/bQs7MdUdL8FN1M9QHqNnmvN8aadKr9rY4Vff
	nFvQX70W56p1ia879sdfvTs1i5/IHLjUQQ==
X-Received: by 2002:a17:902:cf10:b0:2e9:65bd:62c7 with SMTP id d9443c01a7336-2eaffb17f6emr16531855ad.0.1793152267434;
        Tue, 27 Oct 2026 18:51:07 -0700 (PDT)
Received: from localhost.localdomain ([240e:36d:b08:2bc0::a60])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eae6c33917sm16066835ad.48.2026.10.27.18.51.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 18:51:06 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: quentin.schulz@cherry.de
Cc: HystericalDragons@proton.me,
	amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	hrushirajg23@gmail.com,
	krzk+dt@kernel.org,
	krzk@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	macromorgan@hotmail.com,
	michael.opdenacker@rootcommit.com,
	naoki@radxa.com,
	robh@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add ArmSoM Sige7s
Date: Wed, 28 Oct 2026 09:50:58 +0800
Message-ID: <20261028015058.11163-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <2a1c33c9-8971-4054-a463-60f3ceddd627@cherry.de>
References: <2a1c33c9-8971-4054-a463-60f3ceddd627@cherry.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_185108_416580_644F2A4A 
X-CRM114-Status: GOOD (  11.32  )
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

Hi Quentin,

On Tue, 27 Oct 2026 17:03:02 +0100, Quentin Schulz wrote:
> From U-Boot's perspective, I would have preferred there be a simple 
>difference we can detect at runtime and based on that decide which 
>device tree to load between coolpi-4b and armsom-sige7s.

Maybe we can ask ArmSom to write some OEM strings into the OTP of SoC.
So we can use one defconfig for two boards. I will check this method
with ArmSoM and current OTP support in u-boot.

>I don't know Heiko's or Krzysztof's opinion here, but I think it would 
>better reflect the actual context to NOT use a dtsi and simply have 
>arch/arm64/boot/dts/rockchip/rk3588s-armsom-sige7s.dts include 
>arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts and update the model 
>and compatible properties.

Thanks for the suggestion. I checked the existing mainline DTS files and
found similar examples, such as stm32mp157c-ev1.dts including
stm32mp157c-ed1.dts directly, and the ARM Juno SCMI variants including
their base board DTS files.

I agree that directly including rk3588s-coolpi-4b.dts would better reflect
the relationship between the two boards and avoid unnecessary changes to
the existing CoolPi DTS.

I'll use this approach in v2 unless Heiko prefers otherwise.

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
