Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7C3606A333
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 04:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4cz8xESy;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Ec+L+orn
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=W3vNA6M585z4LjyJucwKXRyA2IbcnaVfJlSMG7+CNvY=; b=4cz8xESywfVzUSOcxKVSUModDv
	kKG9Ctw32SiPOfOXTBOHCpgxcm7sxo/0ihhqlKVNcXJeaA2nxd8H/cbCBlH/tRN5HJPJ/Catw6Hpl
	bScL8m7LlvxjOY+jyM1DIwCmp9dLZ8W9OZn8LYNCN44FAlIiFl9WqUSXetSTF9Ck/PptVLJsmI3dn
	gZTwTrEafY2uR7DXolzWJu6ffvYmJHvN56BO6CSuh232YGyaBkAeIsQwvg84RmqGGi91VjQTqFoGJ
	OKgKshXI2zKIyxZFYSRa+SLM5N2WmlYEKpIRXgqUMCkZsZQaiXxYqZY67z3NOEwYEcEVHQoqWrNHU
	ocsJIH3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS5iV-0000000FPmX-2UTk;
	Sat, 14 Nov 2026 04:50:19 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS5iR-0000000FPkp-3kYO
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 04:50:17 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-3b0b8b5d28cso216026a91.1
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 20:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794631815; x=1795236615; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:message-id:date
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jlWU+LetvIC/3AgkoO5NcAsGhswOcH4rtrYp5MfQMCg=;
        b=Ec+L+ornYA9V4I7YJmj0WU69C+g/sIH+PbCx7aXPOUQWBpA9Z77bjwT1yqoj5ZIAn/
         tSgwPiDUtVQZL8wdI1O2Fwf34sJSK/1iOI9jgZGDq2wdXXZzZlcn7kDk0ElcuBgyl1N3
         lbaLm08f3hTY34C1+KzjQKlE73zEmBbUVczRDpqu6vQX6L6kU2vQIEbWQtiqoBV6E/vn
         7Fmk1j4VCZXNFrUg7WGUcJ8UFgUhM2C6bwCcm9LqdcFT/XF/PVJrDbq5jjh10B0hfvr0
         R7vOVvVG8UtmQDtHY6Ny0b8cGXU8P3C8JwcJ6gsAr9gkiOGlqpPDpfn55YbTix9DCJAE
         oogQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794631815; x=1795236615;
        h=mime-version:content-transfer-encoding:content-type:message-id:date
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jlWU+LetvIC/3AgkoO5NcAsGhswOcH4rtrYp5MfQMCg=;
        b=Db1cK5fiYazM8L3NBQVQUJSLBmYfmyCge4tGut0WtV3LlryeLJqpkRVa83KMLI3uTl
         TkMORSpn7jN2ZnvjhTR5CrCnYoTwVROUGMyUD9a9Xhi+saTLi/W7NMY173+0UrnoIOSx
         PRKQSpe+/utTJoiww+gAENIyz/B8Vnx0Tj8LrJMN2Cf8hl2JWR54oJJlxekWvrJIrISF
         hNA2rsXQsGuPqFXpxyosGjl5NRFp+YRNKaGBht1kLgk0CXOjEqRXC9iGbHpLeHF1Q7/I
         ZxOpK4DBILUMqMeXPynO00G0G8650BEWZuEzABEdYKvTd4GEkm2Bc9QFSrRv481k4bhj
         XVPA==
X-Forwarded-Encrypted: i=1; AL+hErEx+JEC7LJoYiWcebQDaeMLWbNlKVzvFI9FC+itdaM14Y+7Hu2my4LgE6SntL5NyEjwWTkPTi/9uyn9MZzEVQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z9CHp0iinfdhlsupZGAoqlF1QXBkmvGvDAOE0Y0gJeSjUQaOgCq
	x15vpcTNr+9cHB5buIcLicUIz18XYoaagGraVEzQdq84Y0rQvwMB0vpg
X-Gm-Gg: AYBFou2tSBr2boYGVzw2RDbU2jS4Vi8f5JMeAJiavcPZ+yuHY14tTtsDzHVB5rZGuwe
	4b2TEbYZpkA+7DNEN9VlubkraLJ+vaVfLJvChyef8997MIVakKCoGbT8iLuEMsp9zNXZH13eV9/
	ezzEzcFAs+T3eVMd0WOTNbKWZ8IWtBl9fsE3GtxmMn+pcq6MDKbajpv8GLLD1TPhnB+O6BHTuHY
	CESRJyHvpAcLaEyQjzshAhe6zYNWNfpwv5RcMbMv7SKapof6mgkOSm+lDEW+1wCxzwvcTNcbFB1
	5Qrqgw9/F7CRy596tbfWRT2vDPRaMlerqALVYH5mVPn2zZAwC9miIPwDvSGyH4LDq8jTqenkySQ
	ZKusFNZOcj0y93KKa4QJE5nJXLIVxtv01CYrM1jWUFaD3uzwF/oEYiJEupKk70gxEZBtn5J8frY
	tyE+KklCQCPstdjUmlHPDed+8WRA4WZ98UUZM/4CBTwgnF6k2bcfam2rx6J14mVT2C2pHcwSOs4
	ymtjFatPNYPN2mfchPWbktwphb2GQktEVCzTvVuZnsoEvKCWCJPFWmXUmyzfDSwoujnSkyOQWJE
	mvamglau6FAz2nMPAWiw6gXw9c2/QUkFFkZJrxuxAzY5MH1K+CKSD4kbnHGEchfm2Iv9NcZ16IA
	U1XzPS2I=
X-Received: by 2002:a17:90b:3dc7:b0:3b0:9e2f:cfc5 with SMTP id 98e67ed59e1d1-3b1b0826e52mr8146982a91.1.1794631814909;
        Fri, 13 Nov 2026 20:50:14 -0800 (PST)
Received: from claudebox.iyengar.cloud ([50.39.139.68])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b197d04336sm12649072a91.7.2026.11.13.20.50.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 20:50:14 -0800 (PST)
From: Arun Iyengar <aiyengar1990@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Heiko Stuebner <heiko@sntech.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, hverkuil+cisco@kernel.org,
 Jonas Karlman <jonas@kwiboo.se>,
 Sven =?utf-8?q?P=C3=BCschel?= <s.pueschel@pengutronix.de>,
 kernel@collabora.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/5] media: rkvdec: Enable multi-core support
In-Reply-To: <20260810-rkvdec-multicore-v2-0-986f89d22cdc@collabora.com>
References: <20260810-rkvdec-multicore-v2-0-986f89d22cdc@collabora.com>
Date: Sat, 14 Nov 2026 04:50:12 -0000
Message-ID: <179463181227.3521962.172866405609790742@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_205015_935085_822310DF 
X-CRM114-Status: UNSURE (   5.84  )
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
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Detlev,

Tested on an Orange Pi 5 (RK3588S), v7.3 with rga/ and rkvdec/ synced
to the 7.4 merge window, together with Sven's RGA multi-core v2 (whose
patch 7 already carries the export of your 3/5; your 4/5 needed a
small hand merge there). Decode-only, 4K HEVC streams in parallel:
1/2/4 streams 105/202/206 fps total (single core: 105/111/129).
4 parallel 4K HEVC and 2 parallel 4K H.264 streams are bit-exact
against FFmpeg's software decoder, and both cores take interrupts.
v4l2-compliance is unchanged, with no IOMMU faults or timeouts. Not
tested: 8K, long runs, runtime PM idle cycling, unbind under load.

Tested-by: Arun Iyengar <aiyengar1990@gmail.com>

Arun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
