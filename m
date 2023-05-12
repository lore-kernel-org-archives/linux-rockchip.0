Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27098C77B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 May 2023 11:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C5lzBGVBolZof3x4x87yNYtpeXd3jMFyblY9VceFTUM=; b=FCu5HvkTCJKZd3
	00mduXN4suwB/yZWB/FwXqKjnNk1AUKNScfCEhLV/dHXCpvi5JO//0+bMsEunueROGkbx8aJfk52B
	zXPX+Iz0Gi/aOeophaKWhts28YaQYhevErrsJyH8IPoLzgCO7UKG9kZhBr9sORrSRQAxxuI78HzHm
	DzFb0wBVDFV/1Hjfflv7qGlTwIMjvdBEfCokCEz3Z1WsChcwyJ06QMl1g+gt6thhKXpmqVfU83FRU
	e3Bbt5ak1aSZDMpD1JESzP5ckN2PqhVYsY2yk1jX+8JxpZjQ3kjBZloi4Fntz1KVBI+fKqMvwGGhJ
	2SgYnCM5X0sUfUtPSr7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfv-00Bkjw-1l;
	Fri, 12 May 2023 11:11:03 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfV-00BkB5-2u
	for linux-rockchip@lists.infradead.org;
	Fri, 12 May 2023 11:10:39 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3078aa0b152so4881103f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 12 May 2023 04:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683889836; x=1686481836;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y+KMJ/AizzmjvBDK75pfKIoc8C4iUMG5GzBQw5S3Y2M=;
        b=To5ik1sgCmInqKXB4yESoh9/JmeHZvBWQH71Auy6YaptnepzOFlI4JBQAfvyX4SyGj
         mm//7gMKmNi+3Jj2rp/Ip1dWRSJCnjgC/TjUT/O2aYtCfBAzu0D+/zYprvSTvC/ecZUg
         HvrA/QjIo0BQE7hoLZgZywdAwXnM3Gm/0rVVkvyHzeHp6m7USOd6TF0mIRsu8Jua/rul
         jzqknHbBMghUjYQasJYknqevf61bHs8hT/RkIclnljhMvqPvgO59aekaRusb/xChPBxA
         913UVIBXWKtluXmK2G++P2onRnMXrczvu9BFDQPfVZ2Fb3ArtoXlXhft7FBKTMhQV3gh
         nCsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683889836; x=1686481836;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y+KMJ/AizzmjvBDK75pfKIoc8C4iUMG5GzBQw5S3Y2M=;
        b=Mr9VPLkeyNhzCo+At5e3qP+ZSD5KSPQCLyIT2+shvUnghqJ7xvuf6Jtl470XkP7Jzw
         bjqMyZERDf14c2Xgy0BBj08XBPyy9HKLRRhMfgdL6fmkDYBg81vJNxrDc4hWB40YACfh
         Qbya3ZYyv5Yc9WsCO5aFWXiafUfEOSJwdXRRBHDvHeeBn9NWa2KeeFzc0gHDP2D7np4d
         I4N2k85mGxXHDnsDdJXphZp1ugZzju63YtSeQQ+3mwOb+D8f8kGuI/Xq4IeWrWLaGgOt
         YyhAVzCSUlfIWagmHOs8p6lDXW+HV4TsQqHDb47ev9mjryScLTx56QElJA6iBYKL+edj
         mHsQ==
X-Gm-Message-State: AC+VfDyaPlPB2zf7TnxrWmHHJr1YQGCqp2dy/vkvENJer44DfpFVIi/t
	080UZofSMjkNwG/wbN7nhAbjAQ==
X-Google-Smtp-Source: ACHHUZ6BySf4RTOA+DCTnNPHluussWs1MosyuGdp8wA/aRAU7GBrsacrdRgCwVTXFnSsCvVg9uzYJA==
X-Received: by 2002:adf:ee0c:0:b0:306:2c16:8359 with SMTP id y12-20020adfee0c000000b003062c168359mr18084867wrn.39.1683889836235;
        Fri, 12 May 2023 04:10:36 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id p8-20020a056000018800b002f28de9f73bsm23471755wrx.55.2023.05.12.04.10.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 04:10:35 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Shreeya Patel <shreeya.patel@collabora.com>, 
 Kever Yang <kever.yang@rock-chips.com>, 
 Finley Xiao <finley.xiao@rock-chips.com>, 
 Vincent Legoll <vincent.legoll@gmail.com>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com
In-Reply-To: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
References: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
Subject: Re: (subset) [PATCH v2 0/8] Add RK3588 OTP memory support
Message-Id: <168388983496.54762.17098900405456249991.b4-ty@linaro.org>
Date: Fri, 12 May 2023 12:10:34 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_041037_995437_A2F217AA 
X-CRM114-Status: GOOD (  11.31  )
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


On Thu, 04 May 2023 23:06:40 +0300, Cristian Ciocaltea wrote:
> This patch series adds OTP memory support for Rockchip RK3588 SoC,
> while also providing a few improvements to the existing rockchip-otp
> driver, in addition to converting the bindings to dt-schema.
> 
> Changes in v2:
>  - Renamed rockchip-otp.yaml to rockchip,otp.yaml and removed clock's minItems
>    in PATCH 1/8, according to the review from Krzysztof
>  - Updated commit message in PATCH 2/8, per Heiko's suggestion
>  - Renamed rockchip_data's clocks to clks in PATCH 3/8, per Heiko's review
>  - Preserved clocks order/names from older SoC variants in PATCH 2/8, according
>    to Krzysztof's review; updated accordingly patches 7/8 and 8/8
>  - Added Tested-by tags from Vincent
>  - Added Reviewed-by tags from Heiko
>  - v1: https://lore.kernel.org/lkml/20230501084401.765169-1-cristian.ciocaltea@collabora.com/
> 
> [...]

Applied, thanks!

[1/8] dt-bindings: nvmem: Convert rockchip-otp.txt to dt-schema
      commit: 5dede99d255a14e4819e74ee0e8710b96a354b99
[2/8] dt-bindings: nvmem: rockchip,otp: Add compatible for RK3588
      commit: cdaa055cdc739c5c38b7e1ede59718e8d817c2fb
[3/8] nvmem: rockchip-otp: Add clks and reg_read to rockchip_data
      commit: 71f1b0883907d4f3604a169e8b8750138b8ae302
[4/8] nvmem: rockchip-otp: Generalize rockchip_otp_wait_status()
      commit: da5c9b4fcf324f57b045e9eb5dd1df95784a8609
[5/8] nvmem: rockchip-otp: Use devm_reset_control_array_get_exclusive()
      commit: e86fba9eb891e375e1f7c9d935fa2687cba9b4c8
[6/8] nvmem: rockchip-otp: Improve probe error handling
      commit: 17baab60780b6801bc94f50c5fb12b9c3c262ceb
[7/8] nvmem: rockchip-otp: Add support for RK3588
      commit: 3a0134e21d90ab0389359a1908a3ea21dd01d661

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
