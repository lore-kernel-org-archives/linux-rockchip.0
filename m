Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60BA3C56205
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 16:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6muIgIrWPKB6Udf075DkUtwThzERB02Xwbb8q1jAnSc=; b=miSmFPSJ+NCear
	ifLedqjL5PxjV1bBi20dPJf6V2WgMURZLijNNm1BcM2N2VXsu5oQkbSpjC3AFY8rmBs0c2FTQ0mWk
	SMm1YFrQx+Dirfq/sINVCMt+he7grKqc/7Her4y4/uIN7HPK+uQfbtFVJ5Kv9/KP55KGa9oB74OhE
	PgIYLu1aeDMsndkHbf2FxV3HL/YPL24YlXlNCm3JcVRW9qBAWsxHJVvoOmOs5oYwPeLtcaKEvF+Vr
	CqguTlDyW/Tz94gPBQ62Xtto7DaLuVRMDe4hfbK3dZ393Fwm6MvIX/ycWjBhi60Y+/mNjxqf1XvuH
	1xaSkugEaiOkbwAILRzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0jT-00000006BIo-3WDy;
	Thu, 06 Aug 2026 16:14:11 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0jQ-00000006BHB-48fy
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 16:14:10 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4980dc26022so23598065e9.1
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Aug 2026 09:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1786032846; x=1786637646; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=tXxkSVa+2eu05dZjUDlR4s5Kc7ssR4Aj7dZF9elDO2E=;
        b=Km1yso2zg5iV7C9xhh3PhRiJelF4SCzfzAgFp5R1Ug224sOkQS5Z0X+urZKIFbWf1I
         3WPzbE1oRl7IWovRgoFQTc4N+d+vNANJqiJq2LNhIa6RuRxNs4TcAz9uMqx5QT3PgjJC
         W872uBtjByDW+ejf0jaslXcKDvaOd82a50VFZfpNfxkVCPtHrweY5C5XAyPe9c0NPxM6
         y8W+tg/KkgwBdIWoaFhHlt8NnSKz6VaSvLm0ARfYamSLSAQDpCotD+dnUAgQTQKpv3EU
         FcccuyBjLZeQV59awNqBSjzetFhyoFU4gQIZ4n5Hq7ezY04NUCJ0nKRVgGfr/7yb5eD0
         uNMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786032847; x=1786637647;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tXxkSVa+2eu05dZjUDlR4s5Kc7ssR4Aj7dZF9elDO2E=;
        b=m7YIsXHeyleDltLRbjnOmtTisD35aKE5JrKP4GtYO+zttjTOQw+jnvaHQWkDTwRRsF
         j2WLNtne6sbr6+PfaJ3YNeOX78tnRs7y34lIjklp3OHVw9GM8tVYtK23SEiihzQDaWY6
         46Bkximq1BTJIa4BPp0vt6gubCjQt3Q2Fkzpw541aZ3vz6gVToAzfx60rYWeFNgQSWRE
         up/9LrNiaNmHnavIgtXsvn6J2v7JOmyF6H/U2K2gv54CniYRLVJur1wju3hoO+t+7oB7
         I90KfshRuJd2Q/gt/HFGa7tw39OJOcEqDVccwQNhfvhD2TTmTc5+VVrPYtRRdcgn6tX3
         CEGQ==
X-Forwarded-Encrypted: i=1; AHgh+RogZjUQJpOUetPQ7ECZ5FITnqWo2h6P497d+2NMjAtl85Vw2xd1/0uw4MSYwFa3VPeB0juMTm+CZyoxm5F4Ow==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1S1j1G/KVKfNhnxhyLxuUfK9wVnj4COCLk7nNEZOhRlY292tS
	pqV+Hnr37emkrGNsTbgv9agumbCPsyMF5cHaacdTiX+L1dj3InQtxA2bNfjiUlieFrk=
X-Gm-Gg: AR+sD10R3Iwl3ybh0sC1PnxeB2xlnLQMmkl58vYZlmqafBNgZWMItVYWJ6ZqJMRG0+G
	0Lf+U7WTuX8L0w3VZgE2GucWecIfRRMGQgjscx9U7YzXpszvn4w3QTcDnjwkWkZNycH8nu2p+1H
	JIicfs1hyr37zWgyS5CxZ1CO3wdvPB6nCI8PCEckvuCUxQb98i8TY4UySmYvkPA9Tkn+1L+KzKb
	ev2ioFpq76cAUODVIXRhvFtS/j8lGhnyUWWyOy5Y9pP6HvQvATL+7aHBGm5oG7/yw21gVIF3VMR
	8aRfD8uGjC/RzGJ4AcN4dgQ26wbDXYGC/tqYS2si+00/LvTZYLdaI4yA3BCM2ZezWv5HCpuzJdk
	0f6KbqeRg22d7rOqkt9EcCYw6+G4tQoTs8hk34/ejVvLVo6uSz8X8WtiIbOVI98d4BidOCej2eE
	kshoVcec72AX7FNP2rs2ruSeiLnYQBXJkyAg/vkqJgeF7WxoyS3Ubgat3kytJZcL6afD/xVCpFK
	Q==
X-Received: by 2002:a05:600c:4ba2:b0:493:b6ee:fcb7 with SMTP id 5b1f17b1804b1-4994e7d3434mr142978515e9.14.1786032846564;
        Thu, 06 Aug 2026 09:14:06 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.115.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4995421b198sm84909005e9.7.2026.08.06.09.14.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Aug 2026 09:14:06 -0700 (PDT)
Message-ID: <ccf41669-685c-4657-9ffa-7053719bd539@linaro.org>
Date: Thu, 6 Aug 2026 17:14:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: rockchip,rk3588-mipi-dcphy:
 support per-direction phys
To: jason98166@gmail.com, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260726-dcphy-rx-v1-v2-0-cf9cc34a412a@gmail.com>
 <579EMzIB4QpX971YyewFrke7qDRTnb7VISWtBI86oM2PJpls9AOXn5nKFyv8PA9EiZWOiczXm9LbDAO8XTkrig==@protonmail.internalid>
 <20260726-dcphy-rx-v1-v2-1-cf9cc34a412a@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20260726-dcphy-rx-v1-v2-1-cf9cc34a412a@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_091409_035716_80F933E4 
X-CRM114-Status: GOOD (  11.95  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 26/07/2026 15:55, Jason Yang via B4 Relay wrote:
> From: Jason Yang <jason98166@gmail.com>
> 
> The Samsung MIPI D-/C-PHY block on RK3588 drives a MIPI DSI transmitter
> and, on the same PHY, can receive a MIPI CSI camera. Describing both as
> independent consumers of one PHY requires the direction to be expressed
> in the devicetree.
> 
> Allow "#phy-cells" to be 1 or 2. The existing single-cell form still
> selects the PHY type and refers to the transmitter, so shipped DSI
> device trees stay valid; bumping the cell count unconditionally would
> invalidate them. A second cell adds the direction, letting a DSI (TX)
> and a CSI (RX) reference the same PHY node as separate consumers.
> 
> Add include/dt-bindings/phy/rockchip,rk3588-mipi-dcphy.h for the
> RK_DCPHY_DIR_TX and RK_DCPHY_DIR_RX direction constants.
> 
> Signed-off-by: Jason Yang <jason98166@gmail.com>
> Assisted-by: Claude:claude-opus-4-8
LGTM

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
