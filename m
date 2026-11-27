Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C33606A338
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 09:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PWw+P7OO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=yNzjhTCt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=rInubtFUic8IlN3VLmcKYaMp8+GP44Lndf3aFC/iCGQ=; b=PWw+P7OOCMun5Y4xSbzU8D91sh
	fpvbhUWPXmtPyofq4iIfFD+8uindGsDqZQbmv/0ca2xaB775CLLQyabcnUjVeIocOvPKz2SR1st/E
	NtylA7XuJ/EKuFEbZmr/9izO5372yzYKNOzUjwrLkay0ugpb8Moao8K735t+gvjuRptRSd7ntxVED
	UKipMWZEnlMgNN3jlUvk7DxkWt1EJOUgBadb+yPsL3dVxEPORA94L63QQaOYfI1mSG7h7K/OXChVd
	UtKyLO2KhjZqV7n4cRwkpPvSD9UjquhXKHcjCst6aSqP2U5FGBDYD2c20tevOq3FDB04PR4jTnHMs
	Nvwr6nww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsgU-0000000FUPh-1rCa;
	Fri, 27 Nov 2026 09:56:02 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsgR-0000000FUO3-3ppl
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 09:56:01 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4bb72b44a97so67671855e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Nov 2026 01:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795773358; x=1796378158; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4DMcsVBCyuxSJxnBHMXvc5HVYKbb1XH0m0g8E3RsK/8=;
        b=yNzjhTCt/mX3HDRRUpd2DtPpbCQs3f9eTYNTVQJKmlBOZf53zDH20TE8rxWmEJwa1k
         wa6U6UIE5dqWQHNYOR2iJhHLffzbRbXn4p0yi+ZwKqj3idLsnzC7DSIGMBUWYVP1+e9H
         LMvc7E1YZqwpS2Jim3bTlt/XlCqTXh0BxXLnNhbU4h+I6+i1kIK0itAekYNHBTNP8OTR
         nl7YSbQ5hI7RY2ukwFXMB6M8ivW4H1K3mc81vFWP1lU63/qhOxwIq7LEoQUcFJ9GuUsc
         yRcUWEzz+jQbVSoD0W830obT8LnRzGMgRS590SUDSVzVR8qkFy+7iYXUQLtXtHNGjZT6
         EO4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795773358; x=1796378158;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=4DMcsVBCyuxSJxnBHMXvc5HVYKbb1XH0m0g8E3RsK/8=;
        b=Dj3/RbjhUzHYZ39apZLXBkH7tUuYb2joGukAZVHwNmRXahckcIdzD7CxWF6mWQ+qQd
         iMYKmeBGANU3Is9Bev0PvrB37olvG7mL95vznf6sEQLNWSWgcVYLFKoHBgZ5ztF7rNvD
         sKdZALau+kXchtoBCm6OT5ZLhGz4ppUMxFtQtfPGY29m/j6iHxds0d3mlZ2c1NhvAEEy
         LawLjWrGmlqa9YBXzs7j/N2OeVudApIeCnsOzsfTs+D2A4P//V27q/X/xyiriFITK0og
         82eiKVAb9cFnzSi8CeaZvCcuFiVXYHKxGEcRRQ4VvBTcc2Kpgt4rXRsxBHAezC99YoLu
         9cRA==
X-Forwarded-Encrypted: i=1; AL+hErG9AkfxlRAxxa2It+I8LLj5TfWi9NirZi5WLKKKYjj7lIlEWcY/d97F9owUCtl6xCL85BuAJQ6Ky32R8RJCHg==@lists.infradead.org
X-Gm-Message-State: APuU4Z9cL4P3aORzB3Kmccb0vjn7WAtw7Qzb6FnjBTkkL8kuBWajHpNp
	wlAu7QQquYe9ZiH9BTioZXetjpg9Q4VdfM8pgdwkMd1KNnZh90jHaVlk
X-Gm-Gg: AZFdTZcBKiwKc9Ee031WqN1QRnhVXnPbJptYlF9kOkmS3l6h6DSDGEf+oa9ZrLVU87Q
	zKwrvQ6jJioshl5iH1O3JqCJ49ZI0hSm0cBXldVPqawRmzU3m42yv8dEin4FHq+fD+zC+aFduO9
	ijEfhsfU5dESgU1iZPeLe+LTfsjYV2EkkH/WmIuAPyhZlLynni4OEJ2VsH/ro0WYyqWfELMlp2u
	luxtMZq6+XfAaqoW6LTcTs1BSsOgVvbzZxonxUeyccmjhGhprAWnrimSly5gRXXLm7JUUHXORE9
	o/UwYXV4lCvmyWnuMLJ/Xyaza62MzIlyKzj2AmJtquwuY9fHMMYozdbz3hWzylxPLQdT8s0WbTd
	jcqDKucNoWUAQalkXSl6wB5RIWGilqUz/KreBZfhSyoC9COQYMyWO/x5EhXvG2vsOTkZsfrv/BN
	RMNELQ7dd/QxVpprTxzh3b+aakAShhN0iAj3ADGCnyA7vnHM+YUqBtcC0u0OPXFxDs/MHEasXCz
	vfqb6f04x9YlyYbp9yo3T1Ji2+JnDk+UzDcuk6ENv32PHpLj7E9WGmUFKd2ye/BL0K52sNiwfr6
	sglf28HxlOb3LRxuXbWfrzH7GsbIgQXdLB4SuWh4MODG7o3yFmXlEvffc7NLVrYpY0GFoxkNTta
	6lfr4DiGOnB4z0ePo/rToaz1gPHQTvNari2XiW8sOdYfZCg==
X-Received: by 2002:a05:600c:1549:b0:4bb:741d:ea8 with SMTP id 5b1f17b1804b1-4bb8880ad4amr455477665e9.7.1795773357686;
        Fri, 27 Nov 2026 01:55:57 -0800 (PST)
Received: from romain-ThinkPad-P14s-Gen-5-AMD.tail433d9c.ts.net ([2001:861:39c2:e340:1432:1241:93b7:7b4b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb853a1e8bsm560192195e9.9.2026.11.27.01.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 01:55:57 -0800 (PST)
From: Romain TISSERAND <romain.tisserand@gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Liu Ying <victor.liu@nxp.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Icenowy Zheng <zhengxingda@iscas.ac.cn>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] drm/bridge: dw-mipi-dsi: let the glue compute the hcomponent lbcc
Date: Fri, 27 Nov 2026 10:55:56 +0100
Message-ID: <20261127095556.1794628-1-romain.tisserand@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261101143031.880389-1-romain.tisserand@gmail.com>
References: <20261101143031.880389-1-romain.tisserand@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_015559_977924_8ACCD761 
X-CRM114-Status: UNSURE (   6.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

Gentle ping on this one, sent four weeks ago. It still applies as is on
today's drm-misc-next.

It fixes the garbled picture of non-burst DSI panels behind the Rockchip
glue (GPD XD here), and v2 follows the reviews of v1 (Chaoyi, Sashiko).
Is the get_hcomponent_lbcc() callback in dw_mipi_dsi_plat_data the shape
you want, or should I rework it?

Icenowy, Cc'ing you as you are working on dw-mipi-dsi for TH1520; the
two series touch different parts of the file.

Thanks,
Romain

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
