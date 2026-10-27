Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6023A606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 02:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=F9SwvwEr;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=lIVzvVf7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=h6oJUAcls0OFH0alE90yydhwadcNk4MX1SM8RAwv3I0=; b=F9SwvwEr7BAR90a3FZKiMVvggY
	vhJP+ojiJv5O7MRBgl5YlugCtTbO/KVWG108AT+FQ5LzUfegresi7P/8PTnkATNtHlUiKk61TouOR
	mm9QfHl6fBzWbV1DMus+ivQZSGLo9ETZO9Ssx8NKo4UhNjSCfv1AgvGCYqW1ioz4Tfo9seeKvYo6f
	X6wF3JVDCD/HnWBfSv9lDXcIXfWhZwc06U+tuBmHzsIEBaz8pLdttNx3pW7dIZS4NTSTIftb3Plsl
	w5Gv9HJ8L9OjC8CXtzBTZuH2iMZRl4pVfqbyxUoomNMBl3vJbNtG7W18n6Pt+RGOapme2ZJoFrI3f
	XQ1WFn8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLWv9-00000003dl9-01uD;
	Tue, 27 Oct 2026 02:28:15 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLWv5-00000003dk6-1Vee
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 02:28:13 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-3ae1a9e187aso220808a91.3
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Oct 2026 19:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793068090; x=1793672890; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/WcSLowB0b2pojOqzb24H45+MS/MsdePMGuj0DzePaw=;
        b=lIVzvVf7SRtMsKuL9rwlpOTUD5gBPdpmb58UkvyoPjVzx9wcEFDQIY/4MjS+k/NY0J
         SEyu5lp2JYg3D3ar41D8Ev8LOIA/ZhT0BGI9HWxOt5WfD3MzCvoH2eDscWN80y9Y6RwF
         5MV3H1s1VcAQqYZfhyUOI1dPSGgQEckj3Z0FLP7i4m+dY5HMVddjUiNeaAwcyOIHQHe/
         WqN4kTzNfTBh805G805V03ifZ+PUYuvuca57PC7/XrosoI6wTwRRa18xkydx9rYP8yXa
         bL5Ty/QG5VPsp7n8HzI2gzpV+KELWjJ5euX2oNfq9tnws/5AyCIVfacwbzK40ABvqxh0
         hpsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793068090; x=1793672890;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=/WcSLowB0b2pojOqzb24H45+MS/MsdePMGuj0DzePaw=;
        b=VNpqM2vm8g18ZEcmduLyhgTWZ9mk26zKekaAkqYgKymK1r8j8B+c1GxMrDSWbzb1i6
         yNuJ+hvFzeWjT9qIEeZVN/BNU8DkigsH3Vwx/I+NEkvfF6UT6Hx5hYwgm302d7kQyFXd
         SrSHoG4ZLkL1KAommnQqQmMs1W22zR80CadM2ZkJMBb1966TOUqP+/e8KFtVMj7qoDaN
         T8QMfTT/tX4nciXeNtWRkp8pqNs2aIIjwApp67EsYOd7EGCUjvAdYEOfcdplBRgai5Ab
         AJLTaBN9Bc8uiXg4wAShjM1KDQDW13q0jqm4ZB0kxoy6gfY8CzUP6bUWq1YYO93LhBvS
         rV1w==
X-Forwarded-Encrypted: i=1; AKwUvBxOpMgBEZFnAA7cMTc88REgjH8eUNr66hdamTgKJu2b0wGFZyOIS74Gznamm8yCqsp2+dIZCZhoraF91kCxAg==@lists.infradead.org
X-Gm-Message-State: AFq9FYIuRgyewXKum44GRMj4udA3m1dP5o/3vcWkIB1EbDlpDEQl2XVF
	oSULpavAO2xgxIZEm7vXx83V9nqDqd4VRp4DJpyQmm2mmL8aRqvX+NtN
X-Gm-Gg: AYBFou0/kTn3H46sRPT1s5ZGD8dpHJ3eHiFOKXaB8x+NxYFIpm65b63jb8Wsb0DTbqA
	jfi9rbQ51shpyBig7sewX6oESrU7X1pb03/+gdbAksDWU3607QpemWCiOR0DVd9CaLlZGbcMDXl
	+T7ADDJ6CE4gI3B3kC7sNhhgpXEjS+TFw7hjINyyvk48OM80eyY30lqq/ETa7qn2Dm917Vijt7o
	DY22hMw7GkTSMu1X1G+Ja5vVitX4IAbgxuynBZ6MMqW8VNwvOrWbipw/L4YDqBDCqhaxAWTyOou
	JxoJeZPvSQyxajX2By4OdErf0jO1DytbwlpyU0jlGjiStlAm/+2s79AB6EwV7KrekQThvSbuaVc
	KHDSdBclifKGQXFZXXgUeV351nrtvFjCXqowhEhuj6QwMmRvULdA5L8gZiPD8TNQ0gXv5Z+u3K3
	GSPhNgkvcMPTHY7t634og92USifED2C1q+YMRJ30MfMGcKUrWOmzACnErMOayLY6P5FUZ/oOc5W
	AoSuWWRPqhYVqKCUe9OBSNWmcs8PWuuob3g2wiDfURHVDFG/TEpWP3REhHX1kvEoUn0CCKIOYgg
	WMMDfkk8ygdmAxhDN+yhYngOgbRSMOv2
X-Received: by 2002:a17:90b:3dd0:b0:3ad:a84b:df1e with SMTP id 98e67ed59e1d1-3adea1af8bfmr12128791a91.1.1793068090331;
        Mon, 26 Oct 2026 19:28:10 -0700 (PDT)
Received: from localhost.localdomain ([240e:36d:b08:2bc0::a60])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3adeba38910sm6823109a91.1.2026.10.26.19.28.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 19:28:09 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: heiko@sntech.de
Cc: HystericalDragons@proton.me,
	amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
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
Date: Tue, 27 Oct 2026 10:28:01 +0800
Message-ID: <20261027022801.377819-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <5520293.6fTUFtlzNn@phil>
References: <5520293.6fTUFtlzNn@phil>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_192811_407871_2E28FD9C 
X-CRM114-Status: GOOD (  13.81  )
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

Hi Heiko,

On 2026-10-26 11:43 UTC, Heiko Stuebner wrote:
>> I confirmed this with ArmSoM. They purchased the original CoolPi 4B
>> hardware design from CoolPi and confirmed that no hardware design
>> modifications were made for the Sige7s.
>> 
>> So the Sige7s uses the same hardware design as the CoolPi 4B, rather
>> than being independently designed.
>
>if it's the completely same board, just with a different print on
>the board, why does it need an empty devicetree. When it's completely
>unchanged, what's speaking against just re-using the original one?

The existing CoolPi 4B DTB does work on the Sige7s, and I agree that there
is no hardware difference requiring a separate device tree.

My main reason for adding a separate DTS is to preserve the Sige7s board
identity for long-term upstream support.

The CoolPi 4B appears to be discontinued and is no longer readily available
through the purchase channels listed on its official website
(https://www.cool-pi.com/buy/). In contrast, ArmSoM is actively selling the
Sige7s and has committed to producing it until at least January 2034.

I'm also planning to add mainline U-Boot support for the Sige7s and
integrate it with Stubble-based UEFI booting.

While U-Boot could update the model and compatible properties before
booting Linux, Stubble may replace the firmware-provided DTB with one
bundled with the kernel. Having a Sige7s-specific DTB would preserve the
correct board identity throughout this process without requiring additional
distribution-specific modifications.

This would also avoid confusing users who purchase a Sige7s but find their
system identified as a CoolPi 4B.

The shared dtsi ensures that we do not duplicate the hardware description,
with the two board DTS files differing only in model and compatible.

Would this be a reasonable justification for keeping a separate board DTS?

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
