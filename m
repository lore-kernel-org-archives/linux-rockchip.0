Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE529FD006D
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Mar 2026 14:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7F6qJTuQIvHELisGyLXQZull6k3XFvUvjg9PbtmIbc=; b=lekIfochuB0XTG
	8tbrkpxVXpsb0cA/SLMy9JX33uhyfZgtJX/G5pHAtOnrAxrfODgpJndiRxRTofon8mcEovlGvcTxl
	Qr98dEgRMceOmfi/eVL48Ep6U7gR4RryTd9RP6jofl0E+NDj9CMQPoVnC3IRJGnOh5eKEMXV093Vb
	YHK4rTA4Ptvq+irAWsQb7J3IMg+ejfYjGH5t8H0yH6jxy+gon2+blvBlBDeZEuVAdag7+bisnZtxX
	i3j/u52HRt0UbH1p4GOSxUvSOH4/6bUxGThfKY0wXf9ST8AIz/d5sr1flHJqAtWQzy4KeqTlV1fXG
	/7ka8/zucP+GFqb+ZdUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwiGO-0000000Bazv-2Yo1;
	Sun, 01 Mar 2026 14:59:20 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwiGL-0000000BazF-39P4
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Mar 2026 14:59:19 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-483bd7354efso50023915e9.2
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Mar 2026 06:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772377155; x=1772981955; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kvxfwv9YItCl98F/UgZP9Kytwk2UIr78C0lNmMRlKt8=;
        b=SMYDVzweZ8T84hxhOzO10+0MbCRTUYp+yjab9xpDV3BlGK8oHoUONgHwC3AoakTlb9
         6yp0neoxE/U3DtYe4S3dPAz7ejg/irMHihC7wTXovLeXK3LP52QioXR17YzIqKjk3dXR
         MLJSiTVjMpCpe57eLRkgdpPUIokG+k18gIGg08ZVnjH3kcpCobjpN8o0W/ZiDxGaQuRD
         Jpm/Tkkn1tbnLN8cJbgyiYl3UWULoFi6jnOEEnTQmyCgi396pnflIxz5yApIHT5jCVpq
         NUzofsxEHA94p3QScZFnocxYVm7zl61KMiUASz9YAKwLNVzl64K2EFAFhD5kogfcpbc6
         tQQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772377155; x=1772981955;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kvxfwv9YItCl98F/UgZP9Kytwk2UIr78C0lNmMRlKt8=;
        b=uEFx/tTQFFtNYNacDBK0P+dFPAJLXnH0zLDLIcReEwdOH93r4co8SfHS/FxLVJPAaY
         m2wEkBttsTTm3E20/qH4zYzxUFRrYsVyrETC9A0L65+XmWNiqnoPp/m3w2VtBmFnp7ew
         DwnigNY8/K31GdtgHdbCf1pHiasf20jyL+LA91lhTlrDHWuWM7rE2MpJajsTCKPdwJfX
         z/7fwvC3b67bVj9eQHWgwhTp+DO9nkQ7QVslWEQuqqQzMOKbMQ139o8xLlGzuuYOSLNb
         JwxSsNq+mpL1JNvNN1LzsbxKDPKGZk8xuZ8JkT1x82heiYZCn04vzJsu2vt++3MMc8dd
         HYvw==
X-Forwarded-Encrypted: i=1; AJvYcCVHfVHhehvkzlwLeQIBUofq3RyziIurkSKoRkoucaMwwyOzA3JwztfvhVPi0Afu+XU2QrGsl4e2lJ+z2ynxgQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxGbmybaoqyp2DzejNZkxrxG0/bTsFXczT6bQJGjCjSXb4DnyCI
	aNLUt2UUmhNun/oRpAbNCZSQ/NiW/iWYmv9HSULQTSIONwZ2sXQC2vss
X-Gm-Gg: ATEYQzykHabcaBBmea+tS6TIBXvDQvRcVw63n+Dd4XbeinW9NEMbSMhCF5TFYQdB1dk
	dmSY0y3DnlvzEi5mRMsSMEzUIt5fIytDIr+9ruxT+R2swaFLWmoDdDUWWGJerqnIfqSflRaOx8u
	rR1AKfjFU3ohuMPP1OcqRJee8QaVfXM+r4990VXVTcwezmh2WoxMwge90DhOKp/J06MyNkpSTFq
	5Ab67pQmswA+1bR0kwAqTK0s5p/XFdoOW5wafPhVMkFDggQdINWk/4a+9bj8qDSqiejHpxE3/F6
	J3U7sADI5hYa9YoXhQSxC9CrOkxo0D94p2L/SuFhr0vEGq5TFN4N0gquCbpI+o9rIr3Z0s21rqf
	NvEXeN2gNHV6SGnuPaE+6SZbEbRKue6x+1MB1EYEN/+1Z6cr1UdCGf+RZfNdrINscmCb7tbYFBa
	tSJqZPOiESEQJQA3+ySrzr
X-Received: by 2002:a05:600c:4e09:b0:483:a21:7744 with SMTP id 5b1f17b1804b1-483c9bc574cmr150778635e9.26.1772377155124;
        Sun, 01 Mar 2026 06:59:15 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a55:9af1::1002])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd7031f3sm309080845e9.6.2026.03.01.06.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 06:59:14 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: sashal@kernel.org
Cc: devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	jerrysteve1101@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	pbrobinson@gmail.com,
	stable@vger.kernel.org
Subject: Re: FAILED: Patch "arm64: dts: rockchip: Do not enable hdmi_sound node on Pinebook Pro" failed to apply to 5.10-stable tree
Date: Sun,  1 Mar 2026 22:59:05 +0800
Message-ID: <20260301145905.41164-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260301020101.1728010-1-sashal@kernel.org>
References: <20260301020101.1728010-1-sashal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260301_065917_805511_1EFBAA5F 
X-CRM114-Status: GOOD (  22.97  )
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

> The patch below does not apply to the 5.10-stable tree.
> If someone wants it applied there, or to any other stable or longterm
> tree, then please email the backport, including the original git commit
> id to <stable@vger.kernel.org>.
I have manually tested the commit b18247f9dab73 ("arm64: dts: rockchip: 
Do not enable hdmi_sound node on Pinebook Pro") and found that executing
`git cherry-pick b18247f9dab73` applies successfully on the linux-stable 
branches 5.10.251, 5.15.201, 6.1.164, 6.6.127, and 6.12.74. 

Could there be other reasons that cause the patch to fail to apply?

Best regards,
Jun Yan
> 
> Thanks,
> Sasha
> 
> ------------------ original commit in Linus's tree ------------------
> 
> >From b18247f9dab735c9c2d63823d28edc9011e7a1ad Mon Sep 17 00:00:00 2001
> From: Jun Yan <jerrysteve1101@gmail.com>
> Date: Fri, 16 Jan 2026 23:12:53 +0800
> Subject: [PATCH] arm64: dts: rockchip: Do not enable hdmi_sound node on
>  Pinebook Pro
> 
> Remove the redundant enabling of the hdmi_sound node in the Pinebook Pro
> board dts file, because the HDMI output is unused on this device. [1][2]
> 
> This change also eliminates the following kernel log warning, which is
> caused by the unenabled dependent node of hdmi_sound that ultimately
> results in the node's probe failure:
> 
>   platform hdmi-sound: deferred probe pending: asoc-simple-card: parse error
> 
> [1] https://files.pine64.org/doc/PinebookPro/pinebookpro_v2.1_mainboard_schematic.pdf
> [2] https://files.pine64.org/doc/PinebookPro/pinebookpro_schematic_v21a_20220419.pdf
> 
> Cc: stable@vger.kernel.org
> Fixes: 5a65505a69884 ("arm64: dts: rockchip: Add initial support for Pinebook Pro")
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> Link: https://patch.msgid.link/20260116151253.9223-1-jerrysteve1101@gmail.com
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> index eaaca08a76018..a6ac89567bafe 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -421,10 +421,6 @@ &gpu {
>  	status = "okay";
>  };
>  
> -&hdmi_sound {
> -	status = "okay";
> -};
> -
>  &i2c0 {
>  	clock-frequency = <400000>;
>  	i2c-scl-falling-time-ns = <4>;
> -- 
> 2.51.0





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
