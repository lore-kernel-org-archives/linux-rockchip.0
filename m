Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7534D59F6C
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Dec 2025 06:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMNf0VfdUG8Hz/nwgI8Fm/URgd56PFI9o43giieJKnk=; b=1XKmSMWEYHQRdT
	w0Pk/ArAjZ8XRATbEXbHjgDPH/nj8tE+uVb4hfHd9K+u1fR7raxaHvsxWbVk9A9k0lUCrVkqJOp9Q
	ZDaNZp5UJM5W5ny9HOlCqi50BJ9DnDU4WWIgzfaL1FAvSXdPBOdB2Gm9BDwUTQlGGdP6AOCInFUy1
	g4mW9iTNsRL5DbRO5xjRfDRkCZEhG7r0/0z3rHhClbBg7zck1fUwSrmNPhMn0vxVhJJtF38lhsfkq
	P8BnN2Df5beTBdt2wgZlsVu9dDlK2CFZa3tHsL/nLE7GdOsXpoM3ykDM6TD9oQR2HoKmpBy4vdb1A
	x5d0Y6SYZGcJhe5U2iXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vUIfn-00000001RHd-1Wn8;
	Sat, 13 Dec 2025 06:00:07 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vUIfj-00000001RGc-1xf8
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Dec 2025 06:00:05 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-34ab8682357so179588a91.2
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Dec 2025 22:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765605602; x=1766210402; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+rwfO26Bv4zxCBRJtW1ytHBz6MhNx4VrLDIQaPsUAv8=;
        b=MI8rR0GQjsuAtIr92mdKDSzx/89pkuU/Wy21Axul6DM1Hj5EnyJ5yqu3KUJzYMUTg6
         rpCbrHcC2Sm0isdCNuIA9j2lol9I1i2I+8FzuCzEH5F/CHPZinj7H1oQLAN3+Bk2MdAQ
         gqySk54hag+iTG+zJmHWO+9ruAqo41hWaqdVyC4m+E12cemLqinrMettWMw+NZ8bFW+D
         sKMoVLyQxumXXaafeWSDsrRcElvYdQjSzdj6l68EKvdwfCcOBkp5EQ71mawF92rX98BA
         HZ06qkGC7wSkW8Bhzja5rSP+7JahKJ8et5hYtUbZahH0u4wbw77KZyelNuXeHn3AWriD
         Mrsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765605602; x=1766210402;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+rwfO26Bv4zxCBRJtW1ytHBz6MhNx4VrLDIQaPsUAv8=;
        b=toBRrtHs9LWun8OV7j+dNXrqgPr4dWoABiWxIwPhY44t+mfJU3+yksCtKSF1a0Waj1
         fy0QHOV9wRxTv3Xcw/b4Bzbn8mnjgPeZFWTCzPoDx3s1vRvOyqzHyvLZaF6waER1pOf/
         HNjbd78xXWkBLtTskALoi71CyvYRij3ibT8UdU7+IlmQ51XBtuqTnlfQl8Sgrvpd/YdT
         facV+vMnD0FmXXA0AX/VInmyVlqW2uzu4/nHQM1rmBJZYdSjZPT+lM14p7N+PmDzAu00
         QILGoqU1r+QkM4/9lMGARXjiuJ5xQbWpgHzQGdq07jbIJ6BWDnbO4kaG/NyKXDCocr8k
         2SCA==
X-Forwarded-Encrypted: i=1; AJvYcCXhUmWkIUWhx2wrkIGgXnla5HWJyy7jfabP/davy+ZcxwNbCb+yYIjPvXvwEMLGZP2q5Nut5r32aObRp0ElpQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyGnRgudoStaO0MOHSBNl/xcCZiXoQsdnuPy5GKjbV1M08P50kO
	HdzDdMZU8lX6fw0f7FgO0GqLrGWP0rJ5A67sIMZQ8rbLoWVF7m3kQHuP
X-Gm-Gg: AY/fxX7z1Jhc2YIBsGkF+U8C1CAJB7bRbWA4kniZuJziv1QflAmCMrb6j8fnQYLerX8
	7ttjm/FeKji38qJEfymTqXMrKoGENmjKbuCz6A4Ztu1b5p5D+MkNprBScNNrO9tX9TghkSV2rcL
	bD9Gsld0SeQdzZzcYEq6vLYvN/V6o3jRhDYvhiH5n2hcH/s3BIx6lgh/0UKoxOS8WnAfVwFPWsG
	Wf434X4g9u1VIq48RJs69nldo2TFSwu4+bp7yzSHpMHKJflvmHHe0tNinGXwFoE0cSxCqYCEU2i
	QBF7BDIKuhwOBkXXioy3yfmoFU3+nXxu3x0sFbWY4YvhkNlfo7fMqKTbkfvCZ4RijJOiSx8wi9W
	FrsX+uXG0ddfzZAk8tIRdmhB2YNBXKx0PK4jFfO6vnA8lr5FK4FGY5F5cIVyaS99OJCFfcBbz6Y
	bt05vBo4gzfMX3mG+eZq3zpQ==
X-Google-Smtp-Source: AGHT+IGcN/Y+jGJuMAQROSfnsb/2OTBPCk4orf4q1OT3ssFfpsTYdLd+1aqhMRXyMqSoRRC74QwrIA==
X-Received: by 2002:a17:902:cccb:b0:2a0:879c:ed37 with SMTP id d9443c01a7336-2a0879cf44bmr16150795ad.2.1765605601660;
        Fri, 12 Dec 2025 22:00:01 -0800 (PST)
Received: from rock-5b.. ([45.32.55.39])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea06b49csm72038125ad.95.2025.12.12.21.59.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 22:00:01 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: nicolas.dufresne@collabora.com
Cc: detlev.casanova@collabora.com,
	ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de,
	hverkuil@kernel.org,
	jonas@kwiboo.se,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	mchehab@kernel.org
Subject: Re: [PATCH] media: rkvdec: set ctx->image_fmt in rkvdec_s_capture_fmt
Date: Sat, 13 Dec 2025 13:59:42 +0800
Message-ID: <20251213055942.3046647-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <8f24c8204984a46bad7d0bb24b78c8115906f748.camel@collabora.com>
References: <8f24c8204984a46bad7d0bb24b78c8115906f748.camel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_220003_531267_070C854D 
X-CRM114-Status: UNSURE (   9.52  )
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

Hi,

On Fri, 12 Dec 2025 12:53:53 -0500, Nicolas Dufresne wrote:
>I'm reading you here, and reading the spec again [0], and you are saying the
>Chromium isn't following the initialization process. That means, it should be
>impossible to allocate 10bit capture buffer, since the SPS in place specify the
>color depth. Other parameters in other codec can influence the reference buffer
>size, so you could endup with the wrong allocation.

Chromium does follow the spec when decoding 10bit videos[1], but that is
still limited to hevc and vp9. For h264 and 8bit video chromium thinks
this is unnecessary.

>You cannot accept a format that falls against the color depth in the SPS
>control, and rkvdec does not do color conversion implicitly. This can otherwise
>lead to letting the HW overrun the buffer (forcing 8bit with 10bit content). Can
>you check with Chromium dev if they can perhaps adhere to the spec instead ?
>This is all news to me, but I probably never had to test 10bit playback in
>Chromium outside of MTK (which might not be less strict, hopefully done the
>right way).

I will try to fix chromium to follow the spec. Since rkvdec driver is the
only driver related, I didn't check the stateless spec.

[1]https://github.com/chromium/chromium/blob/145.0.7577.2/media/gpu/v4l2/v4l2_video_decoder.cc#L648-L650

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
