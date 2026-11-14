Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B23606A32E
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 04:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YomfFWvB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=LuNi5PEo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZnRUbMl9/es+hDTbIga92LboEhkm2rzzwJadmbwlu4w=; b=YomfFWvBSVn3gqoW3SKS042w67
	CV0FVO8Eb8oIdYz0vz1fPIkTdz2VLe/KY7HsNg+GIL01XY9W0iRIcI+w8nt20bv2Hovv4PdAmeZ+u
	Rzl0DqBfmASS/NKxbkc+7oMmZklW5ZSM1JXKcYitsIWvZpVL/eaBCUhxVCEMcJyGBs3e6Bw/xldHa
	vtnNrmhz1O5KUD2TpHpjbXflXyE6jp/wR4FXzHIpwKLC9e6NAm83JWQQALJzhs+V6n9mLHolqD+De
	R6MBHY7yjnDmV6BRv68WLg/6sBuxlRXLKQTjFE/nhhIpbxkXuJvqRggduEE1URfaTlSqOo9nkY8nt
	ODCZzGTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS5ia-0000000FPoo-4422;
	Sat, 14 Nov 2026 04:50:24 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS5iS-0000000FPlG-3gix
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 04:50:18 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-3b1bb072438so165475a91.1
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 20:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794631816; x=1795236616; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:message-id:date
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fl1s83XUSSgJEmjMrzHDXuBkyCkMWW9Bq4zRv3Gu3C8=;
        b=LuNi5PEorFVVzFzcEjm6Gduh3EuxNqRFxbAGKiJ0bEb/BIyY6sOxW3+SghdRTlDNv3
         hZzBiL5gM/KAqQHOeh5/mVkjDGiWthbIvk5cMzos1HsQKQIf5m0wNNocw5L4UcUFgDMT
         SrP3Kxmiwoljo1eKhX6TRxIGuYPDMNl0Np2v+/PkojYx7w1fPc7QBRGenZkmrBf7xBD6
         lxTUEVr5fsM3TSxejppRmtOlEURotlcWgtjI7wzJs/73cLUQUizrGQ3mAllktPAsUmKH
         SdmKc1CJtJvF8+vABZl2+XisdwsHzrSBVuF1JPDaPfR2ULw8GoXpVrOsOz5lHcrvkdxD
         oOCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794631816; x=1795236616;
        h=mime-version:content-transfer-encoding:content-type:message-id:date
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fl1s83XUSSgJEmjMrzHDXuBkyCkMWW9Bq4zRv3Gu3C8=;
        b=rrwrtScH+QNwMYvXOIw1Xh3cjhRE4KdZBeEcmPpIYvx/C8qptrMYdUXt0yT4vB8oQt
         k7JlCCqqCUp4VVwyLT9TtZG1HHQ/GqJ4Eg5kIEGUW0jypfviDyyCVNXXKKP2hVrBuAda
         wBNOi45fEvNPEhT/yhEHLM+fr5lY8swPhkTpcuShc/gOyjBYbbG2aUME1OHphHZFHfGE
         i0EmmcFhTgcOvPhH9rwlqSiJWr9JFn0XAZisUgiAyuO4BaB/Lfbo1CNPesomXYjDOlEd
         mr214aY5F07k0POOTLs9EsuYu4m5NYTl6IXbUuTWVjGwl3NGmOqvk/5Gn/fllz5vsxoO
         GyRA==
X-Forwarded-Encrypted: i=1; AL+hErGP4/YPIa+5mFW1lQkfT1t8ZSa+i3G7MVmGytBdXeFeg9TSjR4bxaPvbWXRacx+HmCHmJH0uS4MT9+ROObc5w==@lists.infradead.org
X-Gm-Message-State: APuU4Z/TRHxldIcWEIdyoZx6NhquIwA5f6UpLQ5AG/9JW9IZCgUUtIW1
	39oWLFw8BklGnX3p/XcFkcC7tkduilwmoKCQR3P3FjMRmmQVe6dzn6nL
X-Gm-Gg: AYBFou2tis20egtRdRLEfQDH3aSdXX2Waxc1JzETz6OH2S7hs7z4Dpmv17tZMrS/lYs
	XSG2X1GVZVUeSNtYwqWiJvrAHmypDWfXdtJg/+26NNEAWiN8wtp7ctEaKqQ9ETXyrhaNnzfx+Sn
	D36Gl3DUIInsnGel1JGq6bsjJQftSp7J+66EjSELFDkZ7mDvsTXfEUI0izg9RR+a7JFNBKCmAD3
	2GdBJ1zfQWahTqGlhzWnDGR3Vfoni5LVSSuNWE6Kz+aau2b2DwMLF1qqyyHpbG5JCGf2m+5twtp
	ii/VBOFjE2PIJaf8mIgfKtjcIMj7IBqe5kX25FBMzFQR6RrSeDfqq0egEXHeRavx0oHRI5aRZ46
	L/M+ApZxf4WYuXzcRx0Mq7lNWdM59obyi4cAud+9eHyy/uU18it7d4YBRy9UIIxxKxny4ytDGNR
	nKEJXJBdsB/U3GuaPrbWpdGC431HP3np/H87cwVtKzqpGg2rH9P72n25NYz8QCw9ZLfnsXMQrvL
	AungSbRhjgXEhNNAOai+sDzgvtZXth1MH1YKrPHKzd+r1Ox856X6qC6/kfOR62j83I3KoTbD+Gc
	+A4wQbf7YQHSvVv80hydT+flZgWxP6weHYk/ehFiXQv4fOF7HEChTvfaNBqFPLxT4KIeIsgFncy
	q3m/OEA==
X-Received: by 2002:a17:90b:1d47:b0:3ac:9e76:aa96 with SMTP id 98e67ed59e1d1-3b1b09f966bmr6902083a91.3.1794631815820;
        Fri, 13 Nov 2026 20:50:15 -0800 (PST)
Received: from claudebox.iyengar.cloud ([50.39.139.68])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b197d04336sm12649072a91.7.2026.11.13.20.50.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 20:50:15 -0800 (PST)
From: Arun Iyengar <aiyengar1990@gmail.com>
To: Sven =?utf-8?q?P=C3=BCschel?= <s.pueschel@pengutronix.de>
Cc: Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>, lgs201920130244@gmail.com,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Subject: Re: [PATCH v2 00/17] media: rockchip: rga: Add multi-core support
In-Reply-To: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
Date: Sat, 14 Nov 2026 04:50:12 -0000
Message-ID: <179463181227.3521962.17897555296763209132@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_205016_982230_71F73FC0 
X-CRM114-Status: UNSURE (   6.24  )
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

Hi Sven,

Tested on an Orange Pi 5 (RK3588S), v7.3 with rga/ and rkvdec/ synced
to the 7.4 merge window, all 17 patches, together with Detlev's rkvdec
multi-core v2 on top of your two v4l2-mem2mem patches. Both RGA3 cores
bind into one video node, and 4 parallel NV12 to BGRx jobs complete
with interrupts on both cores. rkvdec runs parallel jobs on both
cores through 06 and 07 (2 parallel 4K HEVC streams: 202 fps against
111 on one core, bit-exact). No IOMMU faults or timeouts.

One cosmetic thing: the core bound first prints "HW Version: 0x00.00",
probably because the version is read before that core is powered.

Tested-by: Arun Iyengar <aiyengar1990@gmail.com>

Arun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
