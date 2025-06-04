Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3198C5B559
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 12:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6cX0hLSbp0Zj9VOe2vei+GHO2/GIHH7RCZ9Gx47xGW8=; b=rfqMs17Q5TIOuc
	MXmRt6HJ+Ir3ZOBEM+13Q09nLFpXTSqGnMmxVZVSmJqdwWM+4GwQ6d5t/yxo5PIsS/JjcEAIFAJFw
	wcDYmEuxfKd1fdm0Fq/M2QWO908TzW4Mbje0PvmT6CKnB7wF3NGwtq5FbqupULxV2+3Y0XVQGpCL7
	xlPUllJ4uXxUzcyh4T53gh61ltHFwboP5uYE1dYPRAyncMfyYtCITjqOAmkLYaCb62Hg3QlcRAvJm
	lgSlLpd+bnuVvcnE30gWaFxxuoZrvpIye0NVFYUD18yVJRM4Dq1Y5uBkQTejOI1kJPVVHNgTpfuxV
	l/7+lMN+NUOchRH5+ULg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMn7r-0000000DJiw-0Zmc;
	Wed, 04 Jun 2025 12:21:47 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMn7p-0000000DJiK-0UdW
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Jun 2025 12:21:46 +0000
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-4a43972dcd7so80859551cf.3
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Jun 2025 05:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1749039703; x=1749644503; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yaZTpWyg0hpKHYyjrUj3+OP2gwR0EFDPrHBmPT8RlVM=;
        b=QNi1j0MFG+BjmwpbxXEkK8oTEbNwciyEcJPELgh2KTLGXoNdfeuPWGiP/XAaWYCl8s
         G0uVcf5TppCujgpPS4UOvvQGs5pOh/bxbMA7yquAKUARJK/3eblt4nc+EEvo6/qkaIm9
         jg+Xg8bnHFplQm4501nKmlEjvxEf/7KXi1XC1h46/vsfuadkggwHLjb++H/tVfdICQMa
         Ra3ck5wv11OBU3OjtWFLPsAjmvJvzaUH4ckwz795YZlJG8lkSG2G6WNk4wk8j6c94f24
         1SI9Q5C3NlUCHX45CH68lOJa5hR7DA5kgPhVAhjvFgP+WmAMI5slCiFkGBeOP3GvRWTV
         bQbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749039703; x=1749644503;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yaZTpWyg0hpKHYyjrUj3+OP2gwR0EFDPrHBmPT8RlVM=;
        b=n9YKmIEz2Q4NqTJna8GwrtzEOcBmGbH3OcRdbdVi1ZNlCWj1gIHvICeE8rd99A36Pn
         Xd9KCel9BKgqJr6Puu/yNEHQsJ8uAGlP5r5gj9VNdR/1rDeC2DC6exHzeQdoytGS/hRO
         heu+qw1ZDx4jA04ZUuVerkpEETXL8x2HpW6ZDuMV5r9xoQtVDJoP6RLUAXcclZi6qvMZ
         /j5VKKXGpegDKFkglGc24nswmcPPY39ozWx1VxgzCkBQ/Dbt+XVGP6nRJKf1Z9tvr8PS
         ifyki8ufhPh1uJdLywrKdQkBGoTic6CW0Z7RluEOqHjJEEjWwcWzJbY9E9Pt1LLAAuiS
         2H6A==
X-Forwarded-Encrypted: i=1; AJvYcCUxN0p7M1ybawd7sqFaXn/uz0jRkk+UaCkvfAj10Tw4DyCiANvxMsE2zUBr6G+IFfh81S3ttx9ilASYG7ZS1Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwcCE1wKOwUnYkBNUmSM/c9YJLAjB27rl9lZlPMYEnkUe9spEZ8
	UiJgTyUwIgPuWzsq7GKsF06rLBvF7NT2RB0Z8li2p6U/M5UF3XTA2FqScqgvHdpH1eP6Sx91DYX
	tGh7NEfWIuQwzMAqwVCeev1U7zDnqAOgGRd/mF2PVSqCIg4Gd9LPWmNY=
X-Gm-Gg: ASbGncv/iKVgqse6X7qvIePmS/0YD1EXN+KxNozcgafSOIf7/Ht4Gby9xN1nCtmXmi4
	cg45Gd1LBriyBoW8yYWtImZ0f/te/vJsyuNXdFT1Od6tWy3dx52SfT97Bhbv/fgZITB62ZxPjsV
	xgDlbFnfNOcQCuiIYe4UzfFh5wM2ZY9g==
X-Google-Smtp-Source: AGHT+IGBhb9oN9Dnm4FiGYp7zAjk8KUthNG2jfK6LDnEP2PSQ1B7bbxENdlAigbtFAXPzwkkLJkzP6CGB7NZEJFpiUw=
X-Received: by 2002:a05:622a:5806:b0:4a4:2fad:7cdd with SMTP id
 d75a77b69052e-4a5a585f07cmr36560661cf.24.1749039703440; Wed, 04 Jun 2025
 05:21:43 -0700 (PDT)
MIME-Version: 1.0
References: <20250604090054.7070-1-mail@etehtsea.me>
In-Reply-To: <20250604090054.7070-1-mail@etehtsea.me>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 4 Jun 2025 13:21:31 +0100
X-Gm-Features: AX0GCFuX5NY6Hf5wXDs-Pk8QnTYrnxwjGyh7lfIG_jr6I0hdBynp5Y1APmOGjzA
Message-ID: <CAPj87rMU9qcdEmAVuH7E7ENkHCn5zveKA-Sk2bvCB=6BwxR4Ug@mail.gmail.com>
Subject: Re: [PATCH V5 RESEND] drm/rockchip: Reject AFBC for res >2560 on rk3399
To: Konstantin Shabanov <mail@etehtsea.me>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Dan Callaghan <djc@djc.id.au>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_052145_147473_EE61BE82 
X-CRM114-Status: UNSURE (   6.90  )
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

On Wed, 4 Jun 2025 at 10:01, Konstantin Shabanov <mail@etehtsea.me> wrote:
> As it isn't supported by rk3399. From the datasheet[1]
> ("1.2.10 Video IN/OUT", "Display Interface", p. 17):
>
>   Support AFBC function co-operation with GPU
>     * support 2560x1600 UI
>
> Signed-off-by: Konstantin Shabanov <mail@etehtsea.me>
> Reported-by: Dan Callaghan <djc@djc.id.au>
> Closes: https://gitlab.freedesktop.org/mesa/mesa/-/issues/7968

Acked-by: Daniel Stone <daniels@collabora.com>

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
