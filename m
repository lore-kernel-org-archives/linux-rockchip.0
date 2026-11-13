Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA379606A335
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 07:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=o3cTtZc5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=HL9Gmjkk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LBDe2BqiX5iKyrxBUz4Vr2RY5yzPOqv+tchR2sxo9CI=; b=o3cTtZc5CNK40kalcW0sy3tfkP
	YFnyF9nae4cItzRMspjXwlTECJo25dvd4wh2udbRnoabqDaGCZnd67hfUwII7nloWQwtLSaE39cLX
	3peGsHLTnNcsM0In6Itxhedt2FWokaLicQIoSRALUDZ2/BLFM5c3sRVOxr59XHjCSWOEgdFJEe+Jm
	GzMCms+zGNxIF89Y28oZUXyaM+kmVKma35RDnqQo1yXZKDfeCak/Z0KJazGBeXaFFsTPjw4k9VTI7
	ZceZeaQETVAAOuC/Zu9qbYTi8zL87Ujvb6rKPjWAG+Dbu0uu5GXV7cVyW7iJiQt+vU8UUtyDk+r8m
	K4lQX27Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlyF-0000000Bw6F-0DdB;
	Fri, 13 Nov 2026 07:45:15 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlyC-0000000Bw5Q-0BXo
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 07:45:13 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5c0ea47f5b8so96262e87.3
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 23:45:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794555909; cv=none;
        d=google.com; s=arc-20260327;
        b=FVUojFGtoZFO/+TjiRcONXNT6zliqKBWIeL03cL0qJC9HN0uTTF0Uvr4jpjHHm7Kfy
         pk03bq/aZ0SA/SLa6UY/BNWCX6eRwyqXngw7i865MVFrLhKveYTRlvol7VY6u8DDmpX3
         3mcb/LCRhE/Sx2lDJy4dJZ1W/Ywa3YLpVvcgQnjvoG09Y1x6yrB6GCErt9DnKBxBRPOB
         0AugLauIXLSvTQPM/DjektbvTljnaEHF1SW5Sn/8UBrvN5Q8WSP+B2JIq+jKSJpakqUA
         KDGkNepYJtWTTwdXmVoBW54HmLfExkiVac7M/trsFZ7OI0zAL7JBJjEIDOxfdsSWIOdM
         zhGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uQFAlRBHBpTrKEbc1EEKL9YBp7MmZvjWg94AE+sNfOM=;
        fh=3ww/WND9FsjzmnpFavY22gDfCveGTjQB6uM3wDfafFg=;
        b=BGNoCnqNAfpltLVJIGmdAyyiyLDwFUMyyFekeBEIGi/V5aSCPRLpGILsYkJZaXZ36U
         0MDYPKyGca3dG+3aCRj2FqlG3+Wc9U7k4tsQAUBgH3OKDwHr9p2kGOHaAB0d8Tdqbx+W
         jMPNYxHuQkBV++6NwlbvOIqf7YHNSoAMMCLtwTlyCA84Qhn2x+DHgQ2F/FlIotGPhsWV
         PDOy6Fw3IBOYgfR5DOLJGiDW/LZLNevjUqg9mc/xQhJ/LL7vYX3FZNz39VCXi8HWX3FI
         qJRU46lp4NcmThloXyZm6ktPEfGOui7NOcpRVVnhzv1BjQYHvIU5hZJpi2ybjij9V8ic
         PQyw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794555909; x=1795160709; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uQFAlRBHBpTrKEbc1EEKL9YBp7MmZvjWg94AE+sNfOM=;
        b=HL9GmjkkbCf+hftsZMf1rU264z9Fs+BbGX/0sJ7mqa4HkMeCPa3RzZO1xnHWg4IRft
         UyTEED2wQCJiCpIvsDGmgQl+hXrgedyP671r0AWsItsWMWq0OKWVOs4NU2nkbDfcWBMl
         DgtiG0LGd4YKPuaRjY3hLC5WZs0+QTzAa3LzDtkV1fB2NFp8lbYD5M2vTAguBTiMoEH3
         CB32EcBH6U9wtDxrr8qBiXhh0XUVS9pETuoaGqoNxZvZ2coceEoG49iDIOtXkVaD+yX+
         UpGZ9vibHCX3uFTE3pHpOdGVEhIxPIIE1oJSBH24t9nWtD/W7zF8u5zb/k3I4I7tDZ2E
         FWGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794555909; x=1795160709;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=uQFAlRBHBpTrKEbc1EEKL9YBp7MmZvjWg94AE+sNfOM=;
        b=jzUvgTTJStpjZT8EtNsddF6ZMo7qGzZYWOJp1SX3m/LYlSxPqY0Wq5kE5WkP65QuCZ
         je5L5YDC/U6ACRoW4C63HW4jnK1xSQvI+4rgUYTGFCVSl4uiCGiJe4cA8U2UfYxGF/Uv
         vZvU+qm2UoBD2nGWqZ2o3FwgMpDN+BNk1GEXtxdkibqVmmzjF7vWifta8nChnuCJoYJC
         +NcJNb7agSh9+/0RlKuXLLWFJqwx4Vxy+VkvcAJ9T5AcnHGUA1V5kSdBPy48pWWMtLmo
         2ilw7z3famgxXTToCnDOwLiczZ0xCmThn0UeFo/ihKbQ8LZTT9n+WLzZdU2IAmcLfW/I
         o6Lw==
X-Forwarded-Encrypted: i=1; AL+hErEUFjPrM2aokR2htwZrt6zRkEKM6bKFlDI8LHkbf26BMU+OjFn0GgvC3cAQ27yqDDOS32LGfE4rgBzirAtvpQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z/qXfd1KfJ7oEb3Zof59eOHyMwqjHC9JqE/zG0QrsyfuYUIHEhz
	5vKAFlxUM/LzYyJkYXcA++bfgMfIlJsdSXSY2q1QCB51CCVSWPEATYvnmrng1oelzet5w0+07aH
	UV3yg0H2iLUhEjhB4+NtlKorTZD678Ak=
X-Gm-Gg: AYBFou1PEzMWeLqG6sSJrlpOAV5NHyLrVcPx80H5tQ2PDTioZD+jMIYtHFD1l+KHMLU
	lE/1XgMx6Q/g/WcXiCXGD1OSKtSrsh3oFiFQsC86rWQEh53FMDUgWAs6Cga+SiISFP0djA2PQMD
	mzk24M1u2jqjJes+pEzvxiBsIp7og7kuhfSCa6CAJCz6TerGECY/bEiPDgL1mPOK2sNhrsFTzgw
	uQ0VbMwCO8U+1Ph/hfKWkag/Cg8FWVrjglmdNCAvUv2IZPEf+nvAqZM7wfs+wquH1vZZ3q4Gdl3
	wKbyMnsGzy3Olm9hq/c/xrt66z4w7YHyseTXmyv1+IlcxfPTrCikuHN2yDgbdVrGygFaRyaxOXR
	rMhak0+9NkoZpw6of4rhyF41NzYt+KOd1nfl7By6LrbU2JIQNAWKvSFm6nIUYKRd2QNRk85qv4X
	DMFo+iN0Jb0K6hzpjeHg==
X-Received: by 2002:a05:6512:3d0f:b0:5bf:e6a1:3115 with SMTP id
 2adb3069b0e04-5c170771fabmr758264e87.2.1794555908550; Thu, 12 Nov 2026
 23:45:08 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261112-opi5-typec-self-powered-v2-1-751906d65b70@gmail.com> <lAAxUnzGTXWSlQTm8PmFcg@sntech.de>
In-Reply-To: <lAAxUnzGTXWSlQTm8PmFcg@sntech.de>
From: Arun Iyengar <aiyengar1990@gmail.com>
Date: Thu, 12 Nov 2026 23:44:56 -0800
X-Gm-Features: AclHuK-px0U6hKw50ELPgjTts3juNb6KJSAEdMlgQ9nDhQ9zdUWQkc1yUvT3LMY
Message-ID: <CAEy9hNXiBRaj-JtjOAy4de_BQV1jAKUjUCkYzSpksu605HTNZw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Mark the Orange Pi 5/5B Type-C
 port self-powered
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_234512_105413_33113B3C 
X-CRM114-Status: GOOD (  10.45  )
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

> As you describe this as fixing a stale state accross reboots, does
> applying this before the tcpm patch degrade current functionality of
> the device?

I don't expect it to, but I have not run this patch on its own, only
together with the tcpm series.

Without the tcpm patch the tErrorRecovery wait at boot ends after a few
microseconds, so CC is only open for a moment and boot should behave as
it does today. A later error recovery opens CC for tErrorRecovery,
which is what a self-powered port is supposed to do. The warm reboot
with a DP cable attached often fails today, and I expect that to stay
so until the tcpm series is in.

If you prefer, hold this one until the tcpm patch is applied.

Arun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
