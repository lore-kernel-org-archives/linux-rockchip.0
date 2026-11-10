Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D3E60A2619
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 14:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MoQFnDRX;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=jOgLSzER
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SL4c7VcGA1VcqKlrPdWLx+vu1kYbazlcYmUm/tamCNA=; b=MoQFnDRX0e4j5CwK4YiBwri21X
	Vw5kKzaFBt/lzx5yOI+A3J2a2dN5R9mK94lilVVb1SZs4IjiR++YH9ItTq9Fg1Z9qiEH1p9yTwh2L
	I/bugmcf1/jEW1oa9kyVr4z9dSGM0fr8NgVjDAtUPoKUtDzFXOSaw8xXsSY3/AmVw7u+c/MqSTgFj
	etW12TFZZhdgm7XgNmhWyWlMyTZmW59xrwnDltCTeYWNYhjL9air5hRkNG7WlSuAiDhF7VdkF3Vdm
	zoJR6h065BrOUzcQT4ozFGlOT0I1/VhK/MLYIBXLRw/lR4dmIe4jLqOVjHM/QiV8zjCJO/RYzhZ2P
	/rO9yi2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQn2I-00000004F4x-3UdQ;
	Tue, 10 Nov 2026 14:41:22 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQn2F-00000004F2v-1Nnd
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 14:41:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1794321677;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=e6tmUSbTA8kI3wpkqOhoSuw/zjQHagh6vk2l/7Qyg7s=;
	b=jOgLSzERd38dEI697TiSGkguueuN07KUmXgvFVSJ83v+g48ei1eHvUa+SiF/IrAlUj2sPI
	rc1RnfGlgmG3ZIpnibqB4ULGp98moBl8J3Lo0ERgD8o2gzTa7bPCRXyhnAJaQEjNCN/jlr
	A0ssqkWsXOawwx5uWa9yOokLHq1Drbs=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-609-gypikIHBNimHopcO6olgEQ-1; Tue, 10 Nov 2026 09:41:16 -0500
X-MC-Unique: gypikIHBNimHopcO6olgEQ-1
X-Mimecast-MFC-AGG-ID: gypikIHBNimHopcO6olgEQ_1794321675
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-4a214a5f8a1so21434665e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 06:41:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794321675; x=1794926475;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=e6tmUSbTA8kI3wpkqOhoSuw/zjQHagh6vk2l/7Qyg7s=;
        b=ivr+NvYNiBnlWf5lprcL7L7hCt2IkfWb9/69X1l3UJh1kye63VnDHDI0uhuPlErBAS
         z9V0vd01/XBaWJzLEB/VOfUIsM7pRhmxi7faa4947yqcjqVVm9aFXAynrmYSnVqVdY4j
         D9mB2w5vCeaWAR9iB2qwhatoyUI3EV4PLA/y0C/22ZMCq5/5LdU6B4KjNsJYWNG25sUD
         A2ep0Z29BuqAz/LmNY4s7T4Hme9qGcC6bBphlC2MiENrDdg2CPCvB57IV2A9IdytIJ56
         yC8RniOjnDoyXMBU4jBkth4hnW3IqMfGFIMluLHMqPq33u/1285rei4nNbZiKFiC4kOO
         pd+w==
X-Forwarded-Encrypted: i=1; AL+hErGyLpcXPFSwXKNBiBsJUZ47+Z8ZcKmpBkc0ggPQaW6iG33nX7mIjdbKqbvzCk8hqpO3rLjfOfMDAKLnIg8UJg==@lists.infradead.org
X-Gm-Message-State: APuU4Z9Y2mTEb5vqsN1OCb4cvtPGLTlqe/vikRDQxtzr4Je6B5QlqZ5V
	AcXMQL00y4ryaUdZvDTjJyqBHzS89lX+fKxEUuo7F5CVvbzYzZq6vWc7gQWmg67NvLqAvrlfCeK
	+WTi0sTKhmuy6Qtz3kz5rhxC1mVzkYpbqlbCswEyJB1H2jE96E9m9aQkZMFKBKzp7etkDlTu3+A
	==
X-Gm-Gg: AYBFou2JvDmZYFMwRHopvwWKa+el3vzjc5Kh34qLWyI47kBwqZfkc5sd9zJHlr7IPFY
	tgHmJxupFQHTnFROOIfWYbtAO/0aQFl1mAD6h6/sgrscZk893KKa6tD9HlIAI+c+WxXjFMLIyE9
	gNj0wreSc53l5dAjL3ww66JVLtwaBgTV2dR7hZKGLLzy8nx0+LP4vJ6Z8ExO9OjW6XkTxzmHXvr
	I/sHYvzRPbMsZW1SDvkMv3lrYXXj43ENjiCRsVRlofhwj3C6mPWbbHbTIiJQ84nIeuBnCXqlUnO
	Tgo3BIwUwwzBc3qKCBIfwg11VTiAkaUiFKgKWCVPcTSTMyqxU8hAZFrOfA34Yr7a4fskgvMAhe2
	QrL44mHJmUmlrIPpgOQK23XQnEbfcHi2BYsPkquQouZiP+b4J2IjLFW+MxPVy/qs2D6gLCY410p
	pEWDEpZjujeq2j0qGwg4jRHx5BnNzn9QSHSvKOyq5z+biw
X-Received: by 2002:a05:600c:190f:b0:4a1:f99e:f22d with SMTP id 5b1f17b1804b1-4ba02336807mr53183205e9.6.1794321675174;
        Tue, 10 Nov 2026 06:41:15 -0800 (PST)
X-Received: by 2002:a05:600c:190f:b0:4a1:f99e:f22d with SMTP id 5b1f17b1804b1-4ba02336807mr53182425e9.6.1794321674505;
        Tue, 10 Nov 2026 06:41:14 -0800 (PST)
Received: from [192.168.88.30] (ip231-128-192-82.pool-bba.aruba.it. [82.192.128.231])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4ba01fe9357sm78127275e9.9.2026.11.10.06.41.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2026 06:41:14 -0800 (PST)
Message-ID: <1754e4c8-3b6e-4983-a7fb-d3444c1156c1@redhat.com>
Date: Tue, 10 Nov 2026 15:41:12 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net v3 2/2] net: pcs: xpcs: make supported_interfaces
 authoritative
To: Coia Prant <coiaprant@gmail.com>, Jakub Kicinski <kuba@kernel.org>
Cc: Jiawen Wu <jiawenwu@trustnetic.com>,
 Mengyuan Lou <mengyuanlou@net-swift.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Fabio Baltieri <fabio.baltieri@gmail.com>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20261102212506.3348537-1-coiaprant@gmail.com>
 <20261102212506.3348537-4-coiaprant@gmail.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20261102212506.3348537-4-coiaprant@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: dM_myOiE7az1pstTdJUa5WcQmFjPKm4VYuiTtOLLU1E_1794321675
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_064119_448714_66E0CE7A 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/2/26 22:25, Coia Prant wrote:
> diff --git a/drivers/net/pcs/pcs-xpcs-rk.c b/drivers/net/pcs/pcs-xpcs-rk.c
> index 6f0a110e32d2..25fdc9c6b72c 100644
> --- a/drivers/net/pcs/pcs-xpcs-rk.c
> +++ b/drivers/net/pcs/pcs-xpcs-rk.c
> @@ -483,6 +483,7 @@ struct dw_xpcs *xpcs_rk_create(struct device *dev, struct device_node *pcs, int
>   	struct platform_device *pdev;
>   	struct dw_xpcs_rk *pxpcs;
>   	struct dw_xpcs *xpcs;
> +	DECLARE_PHY_INTERFACE_MASK_ZERO(supported_interfaces);

Please respect the reverse christmas tree order above.

>   
>   	if (!of_device_is_available(pcs))
>   		return ERR_PTR(-ENODEV);
> @@ -536,6 +537,15 @@ struct dw_xpcs *xpcs_rk_create(struct device *dev, struct device_node *pcs, int
>   		return xpcs;
>   	}
>   
> +	/*
> +	 * The RK3568 XPCS supports 1000BASE-X, SGMII and QSGMII.
> +	 */
> +	__set_bit(PHY_INTERFACE_MODE_1000BASEX, supported_interfaces);
> +	__set_bit(PHY_INTERFACE_MODE_SGMII, supported_interfaces);
> +	__set_bit(PHY_INTERFACE_MODE_QSGMII, supported_interfaces);

Sashiko thinks this last statement is a no op:

https://netdev-ai.bots.linux.dev/sashiko/#/patchset/20261102212506.3348537-1-coiaprant@gmail.com

I don't think this is 'net' material, I suggest resubmitting for
net-next.

/P


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
