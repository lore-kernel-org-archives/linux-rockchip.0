Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AED6C5479D
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Jan 2023 01:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVmRwOcjQTJP2g/LQjhshX52c54k5s0Vp32e6mFSkHk=; b=oltfybsKeB9iej
	SXivFYKAWrnOb731NdnwKpjHwKA/T9vnic/007A57AhbhIGEmmEhPOC0J3VO0OOPd9IpV3r8MrvKz
	2xBI0mXe+r5UvTmK9fLMakTyBzmGWENYRQxRFXYcLlgcmD8QzIKb4a6njFmz/N3ljGaCr5/eu0VLz
	zf+Nmb3Gxg6I36VQCh7jpuotK7/+t9A2SxE9+S/HNa94r1MMvDYMPSUsZBNyavZpHLzjJo+SoceN2
	D0OUqBFwZAvLgN1ABDDqf6bNK4A8uRr+DTPT3RK/XqdDka1ZtYpynn4Px6FqQ93WKdyL/lnpnaFqq
	6zNd3mdjiERCDVeMw+Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDy00-00GIf7-R0; Sat, 07 Jan 2023 01:27:52 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDxzw-00GIdF-L6
	for linux-rockchip@lists.infradead.org; Sat, 07 Jan 2023 01:27:50 +0000
Received: by mail-qt1-x833.google.com with SMTP id jr11so3621384qtb.7
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Jan 2023 17:27:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YZmW57ZvRkRR4S/DXyoGDrnsp4/+X8umxttq9HRE8mw=;
        b=ZT39AOGH4oWdTOUwUMNz1C/sCmOKV8oI3/I+ZIQIT65hOVRjnbTbx/NqCGL+AD/Mmy
         sQkvFtaeUPVtoEvyIZClUSmQaI+xyqEBUWRiMC+ooXyWWVt6mZDnEw2yBYnZYKjn0OY3
         FxETHbWF0lc/oVngvKSRSXim4a5bVSRjedJ+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YZmW57ZvRkRR4S/DXyoGDrnsp4/+X8umxttq9HRE8mw=;
        b=Y8hmzyQaNEuylqMyNAgH89mHBRbtJad8eK/NGuLYOwBAhyUdV6D5uAaeQFh91OzZAf
         661rvoCjr/OYEp6C/rG7vNMw8Svozm6DjOrWzXYJVGqKzgMRMPr+zLDsGR6DmBq0nQtg
         fM16FFI1Lk3tO3kMm4R5umYoPDD5XYQaZU24KQ1Vfo1lnrgdAtqtTIOdb23jmJgP/Dz+
         gWaNbgckqawhIe8oY3ht+ubtBGRXZwPQrFE3fHybl6bJaPFbrWE3Sm8EQRoNngyCYhmq
         sVHjXz+wa0kSAJbf860I9asxbVoP8DFD1TjvOFow338Mj+dnB0gk9Ahv1nZ06G9gsTxQ
         RPRw==
X-Gm-Message-State: AFqh2koUEckgzAJSPkoZccZ2PMi6PQN6vJUq3ioD1CksWKkUAQCwVJOa
	FKemllXX0R6NpsTIgG9yGnHijlPQAxFqW+79
X-Google-Smtp-Source: AMrXdXtjNkYwtqsDGXv+KDZJKU7Oia9KN3hiui473Eiaxv7wFu/iU6VttdfXMc2vMAxzMLiLr/JYOw==
X-Received: by 2002:ac8:7354:0:b0:3a6:a699:3cd8 with SMTP id q20-20020ac87354000000b003a6a6993cd8mr75895524qtp.57.1673054866186;
        Fri, 06 Jan 2023 17:27:46 -0800 (PST)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com. [209.85.128.173])
        by smtp.gmail.com with ESMTPSA id 7-20020ac85647000000b0039cc82a319asm1265708qtt.76.2023.01.06.17.27.45
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 17:27:45 -0800 (PST)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-476e643d1d5so44520437b3.1
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Jan 2023 17:27:45 -0800 (PST)
X-Received: by 2002:a0d:d912:0:b0:36a:d4df:c6b6 with SMTP id
 b18-20020a0dd912000000b0036ad4dfc6b6mr752702ywe.18.1673054864827; Fri, 06 Jan
 2023 17:27:44 -0800 (PST)
MIME-Version: 1.0
References: <20230106172310.v2.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
In-Reply-To: <20230106172310.v2.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
From: Brian Norris <briannorris@chromium.org>
Date: Fri, 6 Jan 2023 17:27:33 -0800
X-Gmail-Original-Message-ID: <CA+ASDXNBDkzz_xRDbE9gNZZN5kSfxksh0EN01_CxNgyog_BZOg@mail.gmail.com>
Message-ID: <CA+ASDXNBDkzz_xRDbE9gNZZN5kSfxksh0EN01_CxNgyog_BZOg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] drm/atomic: Allow vblank-enabled + self-refresh "disable"
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Daniel Vetter <daniel@ffwll.ch>, Sean Paul <seanpaul@chromium.org>
Cc: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>, 
	Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_172748_751597_424771A9 
X-CRM114-Status: UNSURE (   8.77  )
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

On Fri, Jan 6, 2023 at 5:23 PM Brian Norris <briannorris@chromium.org> wrote:
> v2:
>  * add 'ret != 0' warning case for self-refresh
>  * describe failing test case and relation to drm/rockchip patch better

Ugh, there's always something you remember right after you hit send: I
forgot to better summarize some of the other discussion from v1, and
alternatives we didn't entertain. I'll write that up now (not sure
whether in patch 1 or 2) and plan on sending a v3 for next week, in
case there are any other comments I should address at the same time.

Sorry for the noise,
Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
