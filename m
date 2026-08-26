Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7098EC61DBD
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Aug 2026 08:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8k+QYdYj6cIdKMYC2jTWCnU3zdVigfteklVfULUUWg=; b=WLmLWIUMFmQY5R
	47xkxJhjkVUJfYrZ+tMQk8CRZW/9v6Fn09CYbSuB091eMHbekacPMIUV2HJeN7Klm3b/BifFENMo4
	B2jVTVgmFtgGTUffjpVPt7I7oT7k2jfPiPWRWLOuO0cfxrddaA9Q2M+9gCYvcgvd9U8b4GmEBJiZg
	w7w4JvcAjtf3qajTWazCZDk70enhAAVx0MVRwc+Qkxjz1kb9vSUVP4hkJzwBJSFpNhjFIUTq4vEkI
	oaR0XC75x4eFrKWrRM1xM74iT1ciH4pmdcxM+X3GnHTKlaJZF340o95suCGGQJbxbfhMg5YH1pPVx
	dJrk0wDMgyTY7AmND2aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz8kT-000000023st-2Rlg;
	Wed, 26 Aug 2026 08:12:41 +0000
Received: from mail-yx1-xb134.google.com ([2607:f8b0:4864:20::b134])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz8kR-000000023rZ-0YNn
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Aug 2026 08:12:40 +0000
Received: by mail-yx1-xb134.google.com with SMTP id 956f58d0204a3-66d2529310aso610928d50.3
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Aug 2026 01:12:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787731958; cv=none;
        d=google.com; s=arc-20260327;
        b=qWkcipjKinRrvNK7spDRuSLqARoMSigc/bzC6hJpvvapUQVIfNVQyRzVqLlBj86z/K
         ZwFZX1zth4eKiuC7Zdi5rbmkPDbl39nczPM6K5bhukm3bvRwVPrQIpwi/sUqj3DiITA/
         q0Hp9RMZa1g4oKYRBjAha0y3YCRjI2KCfDq2VDoj6cuLz2rOVWpjLlt+GCcaoRZfJkWt
         eQKQMwtW84J1YFgsT3d1/bk3djgLolk8cFWlr7X+AxarpMsVFAq4yZHBAw7s2A4ZlALu
         sBymS3KRnSx2serKPLgRBeIdLxsth6xTavgGkl+iqobwKYaeH0Mdljt1XEV4lJsZjtUK
         NYTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uWjL7Zpc1RbXxYUhrkjehswpmSWh1RaKUZDsqI6aoKw=;
        fh=z3sNnKqR5vvuPqTTgoO8zQFyuy+NrzG6Pj5szSVahXo=;
        b=ShrYhsUitgssYDdEPWMmnIALSGvZS9zIiwR3gCuCufxruxulnqcK19b2wNJzQLta0S
         Ff84i9lX4CIqzyGIwGX802l1++YWVU/Bpnd4MmmWceCW1rbBtMKMfuavz5Bgo9lU2bMo
         +uC2MRQLOpclXxPAQRTFxPYjCv+msCThBAQSmashrzjdxLttVelBIt/zgOU06JhRqmRt
         936aHCT+rhzc/ULPTkBv3CSheBllpHAUbhvCdDZBTZ6WSh5d4FJ9JsV30H65NkMWhlz0
         4i3Wk/gvyVBxr1RrYl9U7Ag56NHeDlWYx4odxlZbJIbHOYE/kqrk+BhQJ6yDOh2JXtG9
         J/4Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787731958; x=1788336758; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uWjL7Zpc1RbXxYUhrkjehswpmSWh1RaKUZDsqI6aoKw=;
        b=Z9kQP24wS2y+aeTcYlQcvc4jNWZVmPXLBTomwk1Js5UhEWJvAnsr5pRTgMhkl5uWx+
         PJBnPKXjm/fdqOGDKtwYUTR2l4A+/2aK8tKzNdGDzXDq1Cy+kMTTMy3YoOJn1xjZgqJo
         9SIKK1991sERWMu4u/9M7nzsyQF3w7eFWWzMa/JYymLfdfhmxVnqBlJF9Elp9TDiepId
         mJ0cgZcvZLKa93QKZyaYDZwU4/xmC/otY5p46qEDekBoaX44YdYhg5Q7VIl96KzmkjRG
         QfIKtknzrbOUkp9ZzUC+2Bf5qQ6ElOtNINl0vfQiuY5j4ZuUmE2OEN6u9hg/EHe9HYTG
         DIvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787731958; x=1788336758;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=uWjL7Zpc1RbXxYUhrkjehswpmSWh1RaKUZDsqI6aoKw=;
        b=jIDDgtkLRd24NE1U3x3Nm6s4VfXdv2ppB4d2RRMwepLqxocC4x6Lzl4ndD6FkNLpgV
         8SlzxBtBiWQ398WM9wQpbvi2kqr0pE2LtC3H7y4Gtu0/aRMZ1oTBHZPHAmLiRlJJT/0b
         C/GuKOufu3MqM+sKs5kNzG0TC4LI3YHdgQcuDnHROfs4ne2NtTLoWh8TPJBoMoRtwagn
         qhUSBsWn5IOxeW4zgpuqojvtCwwWjPGFIQ+yJWkVi8Uc2Oaavkv+6mdGgUbTbMp2tam9
         LRv39R6gDiLaOQaOQaTRpOQCMb4TAuz9S+MnTdFrW2MyESZlQZAMCHe4tSKfVpJvfHpK
         6LWA==
X-Forwarded-Encrypted: i=1; AHgh+RobwkipxKSgVGEm8NVD4kIFGb0+G1PsT+7LbXn6g91kOb4T+YnnDg3VA2vbiaDNQrO/WQFJmbFPhpEM3Z3unw==@lists.infradead.org
X-Gm-Message-State: AFuF++mBjbhP3+xVndjHRmmBSJOf7D5oicVNdnGAoRAuQkRHwTNsSjNl
	ddKmHgj76TbjNBPW/4oIzsjN0fczv7v/K+V7mmUg6Krhlp1f5U+0td3uVJQ2exuERL/va3qqx4H
	lOU6dKJsSI0Rr+VorKsKP39yPoqDDdTU=
X-Gm-Gg: AR+sD10TZ4DHVyFu46Kd+gt9l7zYDLvqLwtjdTewsVoQ/nqCYk9LzNL5hD4MQsQtjTF
	MyGghh6hpvmlBNLclFTBxab0gFw4j+AMbv2wf4aPnAmswRYjeKukQe0+RRJABO3UdrlGqLoUWij
	O4dweJ/BMryRRUAw+YYuzs0S7EYOfSFNT0JL7Em89/CsFyIJhir7I4MyADTYVg1zUvYoNWSOZlH
	44lDGtH499i4+sKa850xPt+MJs6duQyXX+Yq2DAapeN3h7IEoxbpMk0MF+t+jvcKV1c5/8n86O1
	jRlcteIWpEm+AwIeC5yiNRH0KkBFQ4JKwe6gHtBWDG/jt9c=
X-Received: by 2002:a53:d00e:0:b0:66c:fb45:77e2 with SMTP id
 956f58d0204a3-66d2575a752mr1255819d50.28.1787731957855; Wed, 26 Aug 2026
 01:12:37 -0700 (PDT)
MIME-Version: 1.0
References: <20260808093016.2738659-1-lgs201920130244@gmail.com> <218fb204-ad8d-4005-a995-6ae931fa9942@kernel.org>
In-Reply-To: <218fb204-ad8d-4005-a995-6ae931fa9942@kernel.org>
From: Guangshuo Li <lgs201920130244@gmail.com>
Date: Wed, 26 Aug 2026 16:12:25 +0800
X-Gm-Features: AcwNN1VIwYHf-K-salUzkbrUObzNrM3k5T8nRh7TzSvSmg4UxobHgtjT9MejMlA
Message-ID: <CANUHTR8Mp2d16Va2uxrnwSw5ro353T9czc8vMvzUvn61Pa9eaw@mail.gmail.com>
Subject: Re: [PATCH] crypto: rockchip: fix autosuspend cleanup during teardown
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Corentin Labbe <clabbe@baylibre.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
	"David S. Miller" <davem@davemloft.net>, Heiko Stuebner <heiko@sntech.de>, John Keeping <john@keeping.me.uk>, 
	linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_011239_235880_A8FA7063 
X-CRM114-Status: GOOD (  19.44  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Krzysztof,

On Thu, 20 Aug 2026 at 22:49, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 08/08/2026 11:30, Guangshuo Li wrote:
> > rk_crypto_pm_init() calls pm_runtime_use_autosuspend(), but the
> > autosuspend setting is not undone if pm_runtime_set_suspended() fails
> > or when runtime PM is later torn down by rk_crypto_pm_exit().
> >
> > If the autosuspend delay is set to a negative value while autosuspend
> > is enabled, the runtime PM core increments usage_count to prevent
> > runtime suspend. Without calling pm_runtime_dont_use_autosuspend()
> > during cleanup, this reference is not dropped and usage_count remains
> > unbalanced.
> >
> > Undo the autosuspend setting when pm_runtime_set_suspended() fails and
> > in rk_crypto_pm_exit() before disabling runtime PM.
> >
> > This issue was found by manual code inspection.
> >
> > Fixes: a216be3964c1 ("crypto: rockchip - introduce PM")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
> > ---
>
> You sent vast amount of patches, all separate, making it very difficult
> to track and respond in efficient way. Do not do that.
>
> Group your work per subsystem.
>
> You were asked to clarify and respond to incorrect fixes statement. I do
> not see how you clarified and responded at all.
>
> Best regards,
> Krzysztof

Sorry about that. I should have replied to the earlier review comments
explicitly, and I also should not have sent so many separate patches.

I will group future patches by subsystem and make sure to respond
clearly to review feedback before resending.

Thanks for pointing this out.

Best regards,
Guangshuo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
