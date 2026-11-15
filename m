Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA96606A31E
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 08:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0VoXXZrG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=MVpe4YVq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=YzhGY3syzOKi46aOIsfEcunoXb0seY+lhNxTrMpRbsU=; b=0VoXXZrGSj7G9wRDKKpmT4adOZ
	ZCN6tfuPptwlsXrck0EciqBaCy2YRmmnMScckGl0r7nvz9k6E0FN+NaEVSPRcWqi2R9IpYGiQXcu/
	ej4QIhnF3/jrt4VE+JRpmBFUad+I7R/EU8vu/qno1QR/J/4PergJB0kErS4bRrLBgUn7ql9+Z0iUh
	EJLKsiKQc9wX5/WTha/fYpZyRblsgvtCMgKdsGnWx2ZBFRYgv8W+NjXRHCY8wgMwaV/W3rlWDx+/1
	ERNJiZL1gkCY2C5nlfD12ys17tMipZ1fkCXGDfiv1nnoYdN0T0cuSSqh6+hEuFsRrQQJJZJrBMfF/
	BgVhBj3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVBI-0000000HCqt-2T8s;
	Sun, 15 Nov 2026 08:01:44 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVBF-0000000HCpw-43Ji
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 08:01:43 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-3b0b8b5d28cso340107a91.1
        for <linux-rockchip@lists.infradead.org>; Sun, 15 Nov 2026 00:01:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794729701; x=1795334501; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:message-id:date
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=80dMFC0Ro/jAPdAujll83Boy4CMrv8kmaX2kTiPJvwU=;
        b=MVpe4YVqPaLS/jHe/eMejyrjXk760Rd51J7IDVU+DErEA4bThVYAGM9oPMHhNbTdRI
         KvFlupkxbqGDfiJJSMbLeKA3EkvZZjJfORi8khBZ//zkh6Hgy3GoH1K/HEKirYZar7ET
         iO7EuNT2fuFSi3yE/T9k0GCo4MoGJo0fFR/49w1axtxZyoyjt2SoMgc9gtgMcKLh+9FM
         mXzrY8spXh64ZbAJ6QCMw3WLT7QV7futd7vb0F0anhaKCimdCO+sreppl8zXx8J2bcwQ
         1YSN9WbnbJQByPPU8aPwAIgI75R+k+JCe8ZvtKO67FKQAq+7xXZOgbQJCO12vm5Fqg0D
         wAVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794729701; x=1795334501;
        h=mime-version:content-transfer-encoding:content-type:message-id:date
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=80dMFC0Ro/jAPdAujll83Boy4CMrv8kmaX2kTiPJvwU=;
        b=mHz80WNImXwvYmC1weNRAm57Rk9CTvIeRPUQ2OdeOEmHQLhCVADiJTUWQTeO7fV6gN
         GAwvnyTOxTUBjzoWABVk6jigLHMrKTouX/ulJeL0SW0WuuwW0eSSB/y+mV3afMpSqKXM
         0/c4yQOi9J6NpkMCFPBxZRpsZILXYiI0AsH4IXZDakuFZkC4j/dLpBDJZKVKMUYjBFfn
         +zlcxd4EMXEkY3o17r51vEa8aVemgEngNhXIjGDPkLbVpObJtnN/wQN8xooxwcoOYupO
         iG5ufwv2EGAalgDOghRFG5X1epGHDVjSdRDVXgQp5KAuksyekUe7ZPNZ4KWvJ+Ybl+dT
         e7Iw==
X-Forwarded-Encrypted: i=1; AL+hErHqJeI624UjhuNyYIEq8MKBU3fYPx9fn2RGKBtLNyW80cNmbFYOrc4OU+8HIxGIgFcAnD1GnxkbEuSKqgbWCQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+6qbNyl+8stjPR7OPlySx1aARpiS+Hyj6bRYolXF+A61a3vmdy
	dZ/vz6PvVlbHShswJ3o+Jpv7ZaPVvB2/9cynawdTBHBIfKM1WQ3QlXF1
X-Gm-Gg: AYBFou0nkuuT6bHfO7+/Sisfbcxv5zNd2c36e2K+7+cM6dDhmTQ/56veAZTdVkeA6xU
	B6c7+RaHnXMWzBk8GVmBNB9aUaWwlxsAGrQuGhYC/EHQL0IkAX9fsmesEIQz1sPtjUVczGsxfUt
	J32E1MaKgW5slTF57s2sCh1ZDK1epWUAv7kMcvvWItaM5dCY/BZkAUzzfC1tUUwLAXCqt8SSb3a
	eJIxFW/LLVeZZ2C4CNpaMgCTDsVw7urATVP0Hmev+/K/RnPhOQaK19aD75Gb3jfJZlikbI9D94G
	OUx87CPWANSAMXlCDJCBJf/CGijCR+a0Ga+PfEGxZuiW2lOxcSFtDTu2cDCtTckt4YHeTPatNRS
	rKjwqatikAMOE22czkcFTpeEttR+iAAANyvXuAKCzJQCXN6YDJ8I9jJx9Bm5OFxYBjxhnKS4wFG
	/zYq+sselVet2GuDBPp0JWntxaQHXPecLPUpJUvdqPf4iCCeQ5OChtYn/QJ0UG60v/7vggeMNCf
	fYVKAvWSkE5dlb5GeCJdSGAaaV7ezJUaz/q6TJq9yp8n88d8aiCvL5UqtF7zNBa6L5GSavuWiHl
	stoKkQB/RVUNp1vZOyhpczXQY8Dw70J7PBWuDg8MRUEyD6uMfkbKpw2lMKw2fMpyNC9pF1ib8Ee
	63pCPCiM=
X-Received: by 2002:a17:90a:e7c2:b0:3ac:73c7:9c07 with SMTP id 98e67ed59e1d1-3b1b0608b39mr11786795a91.0.1794729701017;
        Sun, 15 Nov 2026 00:01:41 -0800 (PST)
Received: from claudebox.iyengar.cloud ([50.39.139.68])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b1b3a21769sm6224118a91.4.2026.11.15.00.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Nov 2026 00:01:40 -0800 (PST)
From: Arun Iyengar <aiyengar1990@gmail.com>
To: Lukas Splavec <lukas.splavec@puresig.cz>
Cc: detlev.casanova@collabora.com, ezequiel@vanguardiasur.com.ar,
 mchehab@kernel.org, heiko@sntech.de, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: rkvdec: Use dma_map_resource() to map RCB SRAM buffers
In-Reply-To: <20261114094916.28744-1-lukas.splavec@puresig.cz>
References: <20261114094916.28744-1-lukas.splavec@puresig.cz>
Date: Sun, 15 Nov 2026 08:01:39 -0000
Message-ID: <179472969996.3843098.1159119154248532841@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_000142_030736_577D1E10 
X-CRM114-Status: UNSURE (   4.87  )
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

Tested on an Orange Pi 5 (RK3588S), rkvdec from media next with this
patch, KASAN and lockdep on: all RCBs in SRAM now use IOVAs, no IOMMU
fault or splat, fluster HEVC and H.264 results unchanged.

Tested-by: Arun Iyengar <aiyengar1990@gmail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
