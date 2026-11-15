Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB348606A327
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 08:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=decSf5Jp;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=OnA1xoy1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HPyN3U8DaBsMrymJZRaAhzT9g1ypta4sQ8E418WPLVY=; b=decSf5JpLGg1c6NvcekB8q5BrK
	wQEBMtOr8gYRPhxZkH3nQFgn7NFBQ5VPYs0A1h4DDzcHCWMuP/hQ67Wtp4RpKMZFmPdqaGjotLaku
	nJm5Ge+IQZwP70VFl86DWR/pWCuJh0d3bfSrRG1cT1CcslsaLVkDzEyK8XPIma8+hj1TRt1hoMevX
	kVExVmWNylZ+XtiH0Vd9dDvLxMm2jcSzD58z3IvtUio7yFoBo/hmjm1aEd042MGke5CTFjJpeKKZz
	dBas4s5+B1zVue68I/aWwdjrnIEDxmGJqS82Y9iSsILZaLfn24Oe8O+HAH0wO3t7UfTCOCfjGFAmM
	ZVUk4Elw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVAb-0000000HCjL-15uj;
	Sun, 15 Nov 2026 08:01:01 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVAY-0000000HCi0-1Dl3
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 08:00:59 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-3b18bae2d56so387390a91.1
        for <linux-rockchip@lists.infradead.org>; Sun, 15 Nov 2026 00:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794729657; x=1795334457; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:message-id:date
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wvcPZqOydbJbZA93vSX5EHd5IDhKbwwDJ1uTA6X1prk=;
        b=OnA1xoy1KQdumG7nLPEXXq77sJSf+QmmBanzSIwSVzGLEv9VOsDyvitiwilro3rqZV
         oKDZTi82hZRnUmhX0lpo3GyZpRLScK7PMCzyi0wbN1/RGaJ/Wdwskeqr1lk7c+VWEc8z
         Wo6+zHQH1MICURsSoVm+InXO8M7tcXSw1oa4CPJqTl2wcuySX/m+i9Vw3bKgZPDNPG48
         aArAQ+IFivDF0ANDoJa7Ivi+v1gYpi+qXpfAgFNlIF9YU/YBWY4ziKhY+XPCnY+T/xgE
         Z8Msy0JDCBp2Ge5dpM5EB23fxEFByXP4CJ3P+aQzovwzFMoC3TgI/OEwvjUmopr8Oak0
         sS7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794729657; x=1795334457;
        h=mime-version:content-transfer-encoding:content-type:message-id:date
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wvcPZqOydbJbZA93vSX5EHd5IDhKbwwDJ1uTA6X1prk=;
        b=ijJKKev03BGliWA2ohMJ0l3sT7xBEkqH6kG6GCgnhtb0kdCKmt4fIX1pmqVng/oTQm
         W5j8gwivgqwppU4dziHofUCNF8PSUMc+oL7Ovn9yHUTpb6YjOvnSkPQdbjmkrJXK+z+Q
         KOXdZsZo0OBwargkiwZzN5/9nTf7ldJgRBGQTPoAGl1LHvTF+jAurMhmZEyzJ4xNZNyL
         HVXh1SYEJVpd0t9Ff7laCMvWFq924GujY8EQZKu+chUlYxXnwuXDAtV5AIcgU+gH/bGf
         aEjomGOmhUCvWber0PhuGt92D/p6WQvWftkRerky++qmRWY7YX9DUWzYBB4kZmAS3n/q
         5Wmg==
X-Forwarded-Encrypted: i=1; AL+hErGJBpbAm28wDjZ39N0bGMNXY/gHWEAcQeIiD10Tv6b9adUrKODtynldK1q1Ik7cxfKXhI5cMPldrM0aYQCFLg==@lists.infradead.org
X-Gm-Message-State: APuU4Z9IwFAv4N2XR10JvpavHjZWwEh+MRR7fr+c0EKdT3skXM5oDd0m
	HBTW00Q1YhG1Tg5N8unzX2eH9KOZZKFd5KxDxEwfPq6Qtq0FilcPSPYS
X-Gm-Gg: AYBFou2bn32roz2D2rjaAmCshzu73PXgC49841bs326RC9GpvikfietwpG1F+ELfxE7
	Ee8Hg+OZbYiG9K/RJmIhyvor7MPEsKlu6iyzKeOcRpKDB7WNgnf6pkGCOhB05lqzGJCoHoC9bZt
	+FYeDi4Lf8k7OWIdDVGqGDAPJ1BKK0bs5vgWu4QcULPLYR3yMxuuIAqFZyI4XkEJIuJAo/xpUhV
	91XNoiSwVo8qUXjCBTPdQGhVdPnYT09hKD3Yl0ryzPdBs3O4DbySbzt7aoTkJ7LpoU3zAf9H/12
	7bvp4ZPLK9xhJFgUCn1dRN5dm1stKrz/FEiSxiyLqfm3UncTw0H1B373Sbedatk2H8KJOL+EM/V
	QLf+8GLzFi9z6k4IX6IcumX6fCS3SFwR4WJhRaX+339m25GkP/n4yqZy5l7NVxI+xfJS7dLCyGk
	zC9Ow0360O0CbgG3cMWsbpNrqa8P+s7uNVPA9RNjuzQZ7ETLpOJhO+CgLb5sjAZpNunoiGFkdxJ
	sThmUud0leTBC1lw+2VjBQLRJAekoAb7uDQXY1xDgQXmui2+APUPoE0duyRA1q+DZlcvJ2sPq81
	+EOxRsmR5ck4bNdAVSDivMwdSqyhi8u9uZOEoxIxWYLgjUZQC2l/8WmpNIyIfa8eXnmNUtqzNDi
	FZXZsyg==
X-Received: by 2002:a17:90b:5844:b0:3ac:a7ee:6785 with SMTP id 98e67ed59e1d1-3b1b081cd6amr12270088a91.1.1794729656691;
        Sun, 15 Nov 2026 00:00:56 -0800 (PST)
Received: from claudebox.iyengar.cloud ([50.39.139.68])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b1aeb179fasm11795937a91.4.2026.11.15.00.00.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Nov 2026 00:00:56 -0800 (PST)
From: Arun Iyengar <aiyengar1990@gmail.com>
To: Venkata Atchuta Bheemeswara Sarma Darbha <vdarbha0473@gmail.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Heiko Stuebner <heiko@sntech.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, hverkuil+cisco@kernel.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/4] media: rkvdec: Add VP9 support for VDPU381 variant
In-Reply-To: <20260726-b4-add-rkvdec2-vp9-vdpu381-v1-0-180fb2d1f10c@gmail.com>
References: <20260726-b4-add-rkvdec2-vp9-vdpu381-v1-0-180fb2d1f10c@gmail.com>
Date: Sun, 15 Nov 2026 08:00:55 -0000
Message-ID: <179472965541.3841740.13087399923892139638@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_000058_329049_E6E8FAFC 
X-CRM114-Status: UNSURE (   5.69  )
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

Tested on an Orange Pi 5 (RK3588S), media next 48fe5a7834cc with this
series, KASAN on, GStreamer 1.28.6: fluster VP9 224/305 as in your
cover, Profile 2 output md5-identical to FFmpeg and libvpx, HEVC
unchanged at 146/147, v4l2-compliance 0 failures, no KASAN or IOMMU
fault. Not tested: 8K, long runs.

Tested-by: Arun Iyengar <aiyengar1990@gmail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
