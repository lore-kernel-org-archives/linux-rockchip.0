Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FEBAC43458
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Jul 2026 08:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zd6feP1K5BGo2wlHs/o55sGCvJmLiTiiFfTJKDS2/cE=; b=HtFBIU5+7MWk5u
	xtOiftP1CghRpA5pRSO5SvoXve55Pn0y7aqkkPx/ruCeR3scftBJsmAXD0gXH9aoc1b32SY3r1yLC
	jXNoUV1ZviPnsV6L0rV2DxTEc//l7xt28f6DHCnIBXLiKgAednT5aswCu/BDbI9D4LJVKLj2vUz1B
	7uOh8pE4W/4BqtJzIJsf/guPFuKGWmdGkLjL6K7CTCP1xJpEE2FKhNggVqH9RpWLP680EAEH7tlrB
	rwh76TAEjNh7zKVv9xrfDxrBoGW4GNv2yZ5L4nG+wFtsiOq+KCHs8twaT8TQY7dhm5r8dmn6cLYlw
	f0C17pQRmiM3oZzIGjKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfw0i-00000008Iij-2wlO;
	Sat, 04 Jul 2026 08:46:04 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfw0h-00000008Ii7-04wa
	for linux-rockchip@lists.infradead.org;
	Sat, 04 Jul 2026 08:46:04 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-7e9eaf04bfaso288030a34.1
        for <linux-rockchip@lists.infradead.org>; Sat, 04 Jul 2026 01:46:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783154761; cv=none;
        d=google.com; s=arc-20260327;
        b=FFLi2U+hbz3zmz0tBeJhNS19U3NNpbkcuxYGQTE7dkuZ3I0tBBcVePR4l6TKayEw9n
         c6tIKObTGH5faUAa65nFzDiERScs9NZABGyhPGKPBwL9bpYSGcdJE/HZ7TQj8SjNNKHx
         loOTJQslQbfIOShQdFr8HLWdtc6nlQwwGtOEbEHLMi2j/kq/6weU0GSGOaopt7dFlqrR
         2RVaUqvmZxBo8r4rQ98nmEdmP1BUn90PYW8s9I/YEy85kQjpUkanFglW9USa/6Zy5njm
         sPbayK/jkxgjEgkfGwOtQEoFL8lZa4pPDi0T1UzY3VTukWGT23zCh+LFWJHUqWJ3GKQG
         kpDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HdAowFH9jipDKejyM813D662CypK8NeENF8iZZGVI+I=;
        fh=lmj5yNIiLg0UechYNaFIE576vwK3c+QtCqynbsZG1dA=;
        b=ej7hs76RZt+ujWF3YD2s6a1Dn/+7jWtbIwuAlZMD/bXvywKYcy1VeyDMB5L83wcbK7
         KqLkrCejAARwtYJIS0VcRwEJRQKO6gc/XIDO9X8WB8lExShV4VWtCitWdt4SLv0B7DdE
         4UfC1tBmBQx/t0Ab8AweP11N2LS01sQv6B3wDyIxq9mQEX9e1fEnUmjC+4VcoQ2UXoHl
         zsuG9e/ldx82LaM1y9k+ojvSfxPGrBnVjlv19rUpK6bV+qANkJ5AqcQFBZgsQ0B+alkn
         iDj09aKgz8bidIp4DAFBkZN0xmvoQSNG6MOW20UvIX/lFTgyqqGxWTx/oCZXVWU4ARMK
         Ro9A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783154761; x=1783759561; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HdAowFH9jipDKejyM813D662CypK8NeENF8iZZGVI+I=;
        b=XoFUl+QRM3niNGE06p/8VtnG7ZA1DHK/6NSyLS6FuWx785HFGKSZmNSl+w3v1EhnKK
         xlRS8Jbc6TVGiQaiFPpAbjVXAE0jBF2NShXXekGKjNCx/6V6eITaJySfu6nsM/0C0EkG
         3RU8fAJxMo2ieQhTSkT/Qablx4W7peIpikL9Mg0tpnO43L9SXH6Iu9IVJHmrHq1jUuxo
         glqzv2FeOhEPxWxZg3X3SQFrvthTl9taGZdnlN5tyFNHqUIbvk6RhGGgKlODaCtfMwBN
         w4s9EZ/PCG7dP+4cGyGtpCw+Gxi8X12IJqt+d5LGH2L+qM3/3yW0t5j5DIxXH6w08iX1
         HD5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783154761; x=1783759561;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HdAowFH9jipDKejyM813D662CypK8NeENF8iZZGVI+I=;
        b=DmF56tIxRwXT+aUDbQT/a9XNGUGNFi/VVnR8AYB7c130dQcl8FNAmK5zM6aB0L9ZQN
         bHBkuhVPjVnKRjBRAcNA8sifokoeZrLyjAu+PqzYbM8+HqbPbNSJ/LJajhzYCGMs3sca
         L5xaqohnGmt4SjkYNdC9680vTYCp1qKubhKT0OpcO6OZXA7Tji1VzrUv9VaLACqN+f/x
         d0WMLQA1PtTGYtnNSO0T95Ef89NVCT1hQ0FdsBP8Yrc3F6R6JJTrXFrzphKNXbmf4tHH
         anFGJdFIIQ1qGKlVmXmygb2fvHIfdxV8t1Lg5DzvZvKspqz5A25n5A6m4OVr9Gc9BaXo
         IHKA==
X-Forwarded-Encrypted: i=1; AFNElJ+oi3AbqKg0ovEXaRo8KpASJ3YVqqtAY+2GXMPYHJtyVCJeSUKJ9n2KEsYpEOLrrvmgxzb0lisSTKZ9+Oz59Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyf9dnF20O0gDgmNrEwH/gcnBf6tJgYQ5I9T96BwtypVP5ridFh
	p2ghmsg9oBHWva+ktBP/D7g4wqnrwz8jTfDgdKDSvAiZ9MwJgZoFqM8o8ES/rM8p/Udt+1SzjDR
	Aor0c7cebZVbot0mjlOZQDjmpxPnKTkY=
X-Gm-Gg: AfdE7ck8dV5ILoE/F80RQL0NdU9x6/q9c24QtBwkFVSqC7c53Wh3bC4RxEoXzqxDQcI
	IRfqaAN+OfmOkrc97SaROnJ+1d9oLYMnK+P6/h16RYUQ1EeWp2Il4gcIKCpQtpYsQp6wJxbc1qT
	bJ+TX8w98+Ejukyu1jczSX4xS7tXBQRQevu/mLueJbuLlpmB/tMRSEiXuO+7t85CnVaKUAdqDhW
	xiZRD9REhePECpVS35eVTl4gpFcZ/3qqAQXusYbGFDDYEVm5mzo9kc/Md0lnhyIP3/FOXX78Q==
X-Received: by 2002:a05:6830:67d9:b0:7e9:b4d0:53aa with SMTP id
 46e09a7af769-7eb7fef3ae3mr1509892a34.27.1783154761285; Sat, 04 Jul 2026
 01:46:01 -0700 (PDT)
MIME-Version: 1.0
References: <20260608124018.480365-2-diogompaissilva@gmail.com>
 <CAJpoHp6DnspnA0rirGb6E=A9wCS3eaDn=eFaqmae98Q+39b1PA@mail.gmail.com>
 <CAJpoHp489qKfkfLOX-XPLpOWo86gibZB=NM_dXPbv0yDGmxysg@mail.gmail.com> <2837071.mvXUDI8C0e@phil>
In-Reply-To: <2837071.mvXUDI8C0e@phil>
From: Diogo Silva <diogompaissilva@gmail.com>
Date: Sat, 4 Jul 2026 10:45:50 +0200
X-Gm-Features: AVVi8CdYOU8UFgiMqZSy_kqF2cXiTqFa8qXPulo_pHpnNo2bmATQgxO9Gfh9jAk
Message-ID: <CAJpoHp4cRALQTDkBevaYu1=v8iOi=4UYZ+9iXHjsLwg+DCb05g@mail.gmail.com>
Subject: Re: [PATCH v4] drm/rockchip: Remove dependency on DRM simple helpers
To: Heiko Stuebner <heiko@sntech.de>
Cc: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, David Airlie <airlied@gmail.com>, 
	Maxime Ripard <mripard@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	linux-arm-kernel@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, "javierm@redhat.com" <javierm@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_014603_064458_CCF63F65 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
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

Hi Heiko,

> the tool you're using to send patches seems broken.
> In the patch all the places that should be tabs are replaced as spaces.
> This of course does not apply.
>
> Ideally use git send-email or b4 for sending patches.

Sorry, I think it broke due to re-sending with gmail. I will stick to
b4 now. Thanks!

> Also, please don't send new versions as replies to previous ones.
> Tooling can get confused by this, so please start a new thread for
> the next version.

Noted, thanks!

BR,
Diogo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
