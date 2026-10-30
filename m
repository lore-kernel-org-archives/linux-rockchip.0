Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DE2606A31A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Yq1g302M;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=z3Yu72eG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7AKNBzt1XMfPd0TALTz7vnmj2b0/UiILwc5qX9z+3Ak=; b=Yq1g302MN4lFOigxBPZ/SKl17F
	11Hyb/CFXiUaVUk7dhGeW3TfBjJrJMi94h6kb96R4zWrLYlNBfXtwcn4rWwrD2omINVUdWK1pbhW0
	LDswcH8C3XN6UcxUHfyg/KKcOPBFC5u1pfIbzIjBuG8DeqY1bEgRiwCxYts2TOZtCNkWcv5pDD/o4
	4Py29iO1j9RKHRqBAT6La2v7xpO/+JZnVC09HvREHmx4avPMtveY7Xd/CeeANnvOFg1p6gatRDMrt
	J/vUZcVmaP8x2oS/aAE9bxc/l/rnHpm9eGaoeB0Mbym55VpMujVb6KMd4U6oihUyBoi4nAL4iJXUQ
	awkTyweg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnJP-0000000BqWI-0i2d;
	Fri, 30 Oct 2026 14:10:31 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnJK-0000000BqUx-29rh
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 14:10:29 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-48c45111bebso335852f8f.0
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 07:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793369422; x=1793974222; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nF6oG7qdYpsHcUJcCpTVAL6/z6SjIIvM80+qHFQC0Tc=;
        b=z3Yu72eGIENjaDbPog/0IiFbZKp8RxfWrWwpd5aeUbPoMDnuO1hFsxnRwtfsN0xmEO
         wrjzmgBLeJ6JISKBoyQCUGWrGsrxiavMykvg7MJZnhLSONP1Ki9jtBG4QHt7c8BQTDGr
         wHGtW6oqNrTO9hm9EO5++emueAsWgPVCN7XuhoCjPhW9nYFDb57k8TDFBDKMjsdq3ug8
         LY/i95BekL6K0QeEFBOXqT0z9R6EZ+xg36D6TRn5UaBi30fAOPrqRy1+1LjZV0b86F7H
         3Q2stXqAGL4WpB/ti2NR9bptAYC4qiYQNDAcEwujm2/nJ6LbZFDozij1KRcYfkk+YNto
         X9GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793369422; x=1793974222;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=nF6oG7qdYpsHcUJcCpTVAL6/z6SjIIvM80+qHFQC0Tc=;
        b=RVcBHv+ho7dwUJ1fz+CVjZMceLyHGD1VtdOweYEipQcCpsMrBkh36ytuBhR83tL/+C
         kaxYJaJIL3rrH/OhJKtWQptdTB7++zbGmgTZ0q4Jef0q+In9c/fJtKSQ6sd6TDg13gev
         CoQb4AvlmokgSyb993XYZfb1UzLRVBqOZC1wwVlv45gFRoQjAazWbTodlANprJ2RZXgM
         cU6XN8Om2HXjcegvM0pyV4GrrQebfrGDf5q3TAgg/tV7GbqCSxuT1mblEuzuCjtv8NxM
         AflJzsNKieFAqrruGjs94jzfldQU8kMR1JGEmZJEGaBxL+4WZdl3ga9TQ/LVFm7xgO/u
         CVdg==
X-Forwarded-Encrypted: i=1; AKwUvBzkOjzj4299tKNJZxVgXDYdcu5GgXfCVtGLf4Y8qGYkSNQytMejWdQCKxay5zsgm8RH/pas4Enbza4joqYPjg==@lists.infradead.org
X-Gm-Message-State: AFq9FYI1cN31dsxrKWx0rnWGd5Uk+Up8G90qRV/K83oRhGK2R48J8RdF
	1ixOpRIThDmkMKenY5kFrMG9psj6fnCjtg1x3XwLJR3nhgZOcpVAqgVB
X-Gm-Gg: AYBFou3iH0dlvcedjsA+XpDuhQIKfhbN08LndV8CIyQyZIc865a6nuBZjniqGem0gie
	XYmcDPvOh8nI/pKngJIpkXLSPWwa/i2ym2/BZlBLy6BTdB8zUirXOOcBlJ3GQ1IKh6NLhY6THiM
	zVTsjCtxbpTMQsbTUEIkyJLGOEHy3ASVRFGVnCQtr8/e8IZyym1U8NXGhPdQzHYk269BM1OYarA
	H9DJAip4NK9SZ/JZH6IeErs7Iq54wHbxUaX9NmMWiAsmAjD0Wz2hNgAIM3c1zf/S9S6+1DULfeh
	oOKiXOBblpO2sBlKQm+SGDUU5cEW2tJUFg/q/tm0YceuX06Um5Kkz3HRAPSM9JHa/pJXCIbRR2X
	BR8o/aOeLUvZbrFx2opLFAeyzn3yVYpXdKuaMEQ06OtVo++Wm6sDhN8CUxPCZl+9O+t0PFsYDSM
	0XCo4eL+7JcLqCOwIW8JwwLJytuKNHR9PDwKF1z8auLlbGqK73GvhOFWLQWHMYuyRTdMiRU6+Er
	883uyFdBLzqsC7uV18iGHKwAzyGxtLFhwkJt3CTc+cXBcAQwatmyS7f98J5u+jOUTR3g6fBZqyo
	LDvjrnhFzBK1P3RBlHuSG3Xk65P+PWS3USIeLCdDMEYT4K0C48MMNseUV7oUlXNXBoqNF3ALPe+
	mURJI0CL5
X-Received: by 2002:a5d:6f0e:0:b0:48d:ea67:79d4 with SMTP id ffacd0b85a97d-48e6e518c14mr5740707f8f.53.1793369421351;
        Fri, 30 Oct 2026 07:10:21 -0700 (PDT)
Received: from localhost.localdomain ([2001:861:39c2:e340:24ce:a263:4d8:38f1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71ba53d7sm5181973f8f.53.2026.10.30.07.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 07:10:19 -0700 (PDT)
From: Romain TISSERAND <romain.tisserand@gmail.com>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Romain TISSERAND <romain.tisserand@gmail.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Heiko Stuebner <heiko@sntech.de>,
	Liu Ying <victor.liu@nxp.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/bridge: dw-mipi-dsi: use the lane rate for lbcc when lanes run faster
Date: Fri, 30 Oct 2026 15:10:18 +0100
Message-ID: <20261030141018.3851266-1-romain.tisserand@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <9e3dc854-b2f5-459c-8267-55e88e87f5b5@rock-chips.com>
References: <20261025142639.3454322-1-romain.tisserand@gmail.com> <9e3dc854-b2f5-459c-8267-55e88e87f5b5@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_071026_570422_BD31990E 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.1 (-)
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
X-Spam-Status: No, score=-2.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Chaoyi,

On 10/26/2026 3:17 AM, Chaoyi Chen wrote:
> Adding different glue code for each implementation seems like a good
> idea.
>
> Maybe you should try to add a new callback in dw_mipi_dsi_plat_data ?

Makes sense. For v2 I've dropped the threshold and added an optional
get_hcomponent_lbcc() callback to dw_mipi_dsi_plat_data. The Rockchip
glue implements it from its lane rate, and the other glues keep the
current code since they don't set it.

I've retested on the GPD XD and will send it on November 1st.

Thanks,
Romain

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
