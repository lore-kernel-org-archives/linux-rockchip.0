Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B488606A88E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 20:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=u+d0RPgq;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=iz909RmF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=E9ldTqeFsqtpiXZ+tH71A4uwlaogjWg1MA4nXUTI8lM=; b=u+d0RPgqcMAy9tJQiDT74TigtV
	P+29PVSQSnjr2axkIG7lLJHk0ECb58BiiGGProZ3FyU4Ms6E6/oUjLGHw8ciYJ5J+lrw5b6YYZmEi
	4FsjQMl/iNSaCaZovl2uoLgt6/ke4zn6WWTb7xnb1Gfnpoj6JPfluuDV4ZO5X+UZv+f9rKc4nfuIP
	sm1OfTDpRz0cyHCHWJrzNr2Krto/jTXga+8ZZl2OACLTIk82iXqfv1+vzGa+XfCtbjW7K3KK3onfB
	Rrb24RxM0ygw0Rnt63W0vtM4ISdIcJC59kDAKmitdsoVjpqXiI4QspEYSAVJS4d0KgvJR3zLBGQsr
	CNsxOfBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxxR-0000000EQTz-0qsk;
	Fri, 13 Nov 2026 20:33:13 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxxO-0000000EQST-3GGs
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 20:33:12 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-3ad47c246f8so187977a91.0
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 12:33:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794601990; x=1795206790; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:message-id:date
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9nMyN0VEnSPNDMOw40qCksgSnlqSB2G4sRnpFPXnQgk=;
        b=iz909RmFsce1uJieMK4Tr6fCBnkBE+iXNecd76EPNXs1xLsws5yqdqh4jngYjVVWmd
         0d+gB0Iorhu9f000vTBhDqCM2lr6aONHQ/xzdBXs6BI+3Pe1AoUtSpCQrxpbOU7WLDqW
         hu4qGs/TW8dLn3kPdHAW+EtiyPaCMfvDvrmnLsqn6F1fgPeQHl/UyfEtzPGTy8DQ4Qqh
         AscBd6F6OzXOXy+WXF4CmCGwvu9QIKiN0kimDSFBfPnc6M3qaywzg4ynHnBBQTN/yk9/
         4EEjE2kjGoO+DRX07BquM2zi+Eelnm5HWAimXzZeSSKHAkN9SoL8AuhmBLgWIj7hc+qq
         O7CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794601990; x=1795206790;
        h=mime-version:content-transfer-encoding:content-type:message-id:date
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9nMyN0VEnSPNDMOw40qCksgSnlqSB2G4sRnpFPXnQgk=;
        b=sW+VdWQGW2xU/g/MENnhldm0z4K6S/hbnLpl5VNpxhZnAGIxcnUazYhZmf3sxB6M2j
         C+sH+K0pIQZ5/wj7c+6eLLFmwkwk9G+Acd75QHul1LPPGDY0OLt22G7Vix4dF9mCuaR7
         F8SWHZ7GA/+qL628FhMJ44oCNCC/DxjwZslhhvOszOq/y5FnkQN8XyoQUGENdvn1rcav
         VWwBW4/5fBuXdbGM2FxISj+LR0DOAOgE7W99PzGj+c/zncXYQgChi820zo+wRIgrLfFz
         /UcuYfakErK/4HZ/zMH7sPxli8djcBlpB5NSORmnlybzzlgxLpKrZw126kor6NZu2Hlu
         j1sg==
X-Forwarded-Encrypted: i=1; AL+hErFMcZraJap3VL94w3xXVxLxO9YlDahsZjUSqDy7OzYazPqH/6tv/b3qr3m6Q31EvdqngT6O7WicrihxzcspWQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z/POPcaFuDv7tJSJcZMGVH3dgF9ko8IpRd78Yxzeq4qnS2miKn3
	aCReGA13BSPQf7DUYF0/03mAz+SooQV5imwmYLf1yxBDnAz8/HP10s5Q
X-Gm-Gg: AYBFou3FBSrbWol5+6y7gO6ljp+xYNsPYGp2qZYyGu3Ul35taervYbpBaazIXjDazOu
	mGNgfcwsE5nyY69e5FrChXEz6fcYeAePd6jDCrIhbz72LWUw3+SfWl1fe9MF3z+jpoOPUEQhVmC
	ROOGAchBRi7GdIFriQ4ymTmwcVlHlXE//PCu2b9Fvrlr0t5jbAZPNe5HoYSDeM2yFqJP64+qCrV
	PxIJ9T/ynwBn9pf3eu7QnSKyfW8hLVXMplCAPMJH2483MFrw6tX6HsC9YYjY0qB3exhJ/s7zmHN
	rHfY5Zu8253QycxyioLBm6INBTIBUqRZjggyeE4jWbeN0HuytyN1mLYWWG8qbFRs7s3Bi/dWK+V
	afCTq48w1C/YR+KRSTbYXxm4HMCp/mHeBAruv9VUnt4Q/OL1UwXmnqYEhGqKNSnO4GbslKXzQbL
	C5CTO4KjjSjrLROOsmtOhhYA/rQMXDX83EYC4Eo0QJMl+lNjN6/FC7LF48PX/Me348Nvqq4TJ4T
	kdf8FbS77Q3CZjGnR7C/axgSNn5p7jPdDpWCvbhERNV3ES3zdb5jt2r7rntE78Zf0Mn7igaWSy7
	6xNfdjNAiTa90OLswir2YfO9DF/qD6sWLN69wbaSvq0PoWh64rggIDhRhdVsIhrr/pwj44KEPRp
	gELLiS6gpdRIEsLAKsjN6l6qxloU=
X-Received: by 2002:a17:90b:4d05:b0:3a0:c1b1:45fb with SMTP id 98e67ed59e1d1-3b1b05aabb5mr4604273a91.0.1794601989766;
        Fri, 13 Nov 2026 12:33:09 -0800 (PST)
Received: from claudebox.iyengar.cloud ([50.39.139.68])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b197d0f6e0sm11168256a91.9.2026.11.13.12.33.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 12:33:09 -0800 (PST)
From: Arun Iyengar <aiyengar1990@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Paul Kocialkowski <paulk@sys-base.io>,
 Sven =?utf-8?q?P=C3=BCschel?= <s.pueschel@pengutronix.de>,
 Hans Verkuil <hverkuil@kernel.org>, Jiaxing Hu <gahing@gahingwoo.com>,
 Daniel Almeida <daniel.almeida@collabora.com>
Subject: Re: [PATCH RFC 00/12] media: rockchip: Add a VEPU580 stateless
 H.264/HEVC encoder driver for the RK3588
In-Reply-To: <20261110-rkvenc-v1-0-ea8b47122d8c@gmail.com>
References: <20261110-rkvenc-v1-0-ea8b47122d8c@gmail.com>
Date: Fri, 13 Nov 2026 20:33:08 -0000
Message-ID: <179460198852.187691.10732168634380090377@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_123310_826926_E73BE438 
X-CRM114-Status: UNSURE (   9.12  )
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

I'm withdrawing this RFC; please don't review it. It depends on my
H.264 follow-ups RFC, which I have dropped. The cover also should have
said that Detlev is already writing a driver for this block, as Nicolas
explained in the VEPU510 thread it links; I don't want to push a second
uAPI for the same hardware.

Detlev, three things from the bring-up on an Orange Pi 5, in case they
save you time:

- HEVC wider than 4096 came out corrupted with the external line buffer
  (H.264 is fine with it, tested to 16384x2048). Tile columns of at most
  4096, one hardware pass each, as MPP does, work (tested to 16384x2048
  and 8192x4320).
- MPP's "TU depth 1" is max_transform_hierarchy_depth_inter/intra = 0
  in the SPS. With 1, decoders misparse the residual.
- Two streams, one per core, with both cores in one IOMMU domain and no
  dual-core handshake, ran at about twice the single-stream rate with
  the same output as single-stream runs.

Arun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
